package com.sec.internal.ims.config.adapters;

import android.content.Context;
import android.net.Network;
import android.net.TrafficStats;
import android.os.Process;
import com.sec.internal.constants.ims.cmstore.ScheduleConstant;
import com.sec.internal.helper.HttpRequest;
import com.sec.internal.helper.header.AuthenticationHeaders;
import com.sec.internal.helper.httpclient.HttpController;
import com.sec.internal.helper.os.Debug;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.interfaces.ims.config.IHttpAdapter;
import com.sec.internal.log.IMSLog;
import java.io.BufferedInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.UnsupportedEncodingException;
import java.net.ConnectException;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookieStore;
import java.net.HttpCookie;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes.dex */
public class HttpAdapter implements IHttpAdapter {
    protected static final String CHUNKED = "chunked";
    protected static final String GZIP = "gzip";
    protected static final String LOG_TAG = "HttpAdapter";
    protected static final int MAX_CHUNK_SIZE = 512000;
    protected static final long MAX_TIMEOUT = 30000;
    protected static final int MIN_CHUNK_SIZE = 61440;
    protected static final String SSL_PROTOCOL = "TLS";
    protected static CookieStore sCookieStore;
    protected int mPhoneId;
    protected StringBuffer mUrl = null;
    protected URL mURL = null;
    protected URLConnection mURLConn = null;
    protected HttpURLConnection mHttpURLConn = null;
    protected Network mNetwork = null;
    protected final Map<String, List<String>> mHeaders = new HashMap();
    protected final Map<String, String> mParams = new HashMap();
    protected String mHttpMethodName = "GET";
    protected State mState = new IdleState();

    protected interface State extends IHttpAdapter {
    }

    @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
    public void setMethod(String str) {
    }

    static {
        CookieManager cookieManager = new CookieManager();
        CookieHandler.setDefault(cookieManager);
        sCookieStore = cookieManager.getCookieStore();
    }

    public HttpAdapter(int i) {
        this.mPhoneId = 0;
        this.mPhoneId = i;
    }

    @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
    public boolean open(String str) {
        return this.mState.open(str);
    }

    @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
    public boolean close() {
        return this.mState.close();
    }

    @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
    public void setHeaders(Map<String, List<String>> map) {
        this.mState.setHeaders(map);
    }

    @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
    public void setParams(Map<String, String> map) {
        this.mState.setParams(map);
    }

    @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
    public void setContext(Context context) {
        this.mState.setContext(context);
    }

    @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
    public void setNetwork(Network network) {
        this.mState.setNetwork(network);
    }

    @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
    public Network getNetwork() {
        return this.mState.getNetwork();
    }

    @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
    public IHttpAdapter.Response request() {
        return this.mState.request();
    }

    protected class IdleState implements State {
        @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
        public boolean close() {
            return false;
        }

        @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
        public IHttpAdapter.Response request() {
            return null;
        }

        @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
        public void setContext(Context context) {
        }

        protected IdleState() {
        }

        @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
        public boolean open(String str) {
            if (!HttpAdapter.this.configureUrlConnection(str)) {
                return false;
            }
            HttpAdapter httpAdapter = HttpAdapter.this;
            httpAdapter.mState = httpAdapter.new ReadyState();
            return true;
        }

        @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
        public void setHeaders(Map<String, List<String>> map) {
            HttpAdapter.this.mHeaders.clear();
            HttpAdapter.this.mHeaders.putAll(map);
        }

        @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
        public void setMethod(String str) {
            HttpAdapter.this.mState.setMethod(str);
            HttpAdapter.this.mHttpMethodName = str;
        }

        @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
        public void setParams(Map<String, String> map) {
            HttpAdapter.this.mParams.clear();
            HttpAdapter.this.mParams.putAll(map);
        }

        @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
        public void setNetwork(Network network) {
            IMSLog.i(HttpAdapter.LOG_TAG, HttpAdapter.this.mPhoneId, "setNetwork: " + network);
            HttpAdapter.this.mNetwork = network;
        }

        @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
        public Network getNetwork() {
            IMSLog.i(HttpAdapter.LOG_TAG, HttpAdapter.this.mPhoneId, "getNetwork: " + HttpAdapter.this.mNetwork);
            return HttpAdapter.this.mNetwork;
        }
    }

    protected class ReadyState implements State {
        @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
        public Network getNetwork() {
            return null;
        }

        @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
        public boolean open(String str) {
            return false;
        }

        @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
        public void setContext(Context context) {
        }

        @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
        public void setHeaders(Map<String, List<String>> map) {
        }

        @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
        public void setNetwork(Network network) {
        }

        @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
        public void setParams(Map<String, String> map) {
        }

        protected ReadyState() {
        }

        @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
        public boolean close() {
            HttpAdapter.this.mHttpURLConn.disconnect();
            HttpAdapter httpAdapter = HttpAdapter.this;
            httpAdapter.mState = httpAdapter.new IdleState();
            return true;
        }

        @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
        public void setMethod(String str) {
            HttpAdapter.this.mHttpMethodName = str;
        }

        @Override // com.sec.internal.interfaces.ims.config.IHttpAdapter
        public IHttpAdapter.Response request() {
            HttpAdapter.this.tryToConnectHttpUrlConnectionWithinTimeOut();
            String stringBuffer = HttpAdapter.this.mUrl.toString();
            HttpAdapter httpAdapter = HttpAdapter.this;
            int resStatusCode = httpAdapter.getResStatusCode(httpAdapter.mHttpURLConn);
            HttpAdapter httpAdapter2 = HttpAdapter.this;
            String resStatusMessage = httpAdapter2.getResStatusMessage(httpAdapter2.mHttpURLConn);
            HttpAdapter httpAdapter3 = HttpAdapter.this;
            Map<String, List<String>> resHeader = httpAdapter3.getResHeader(httpAdapter3.mHttpURLConn);
            boolean equalsIgnoreCase = HttpAdapter.this.mHttpMethodName.equalsIgnoreCase("POST");
            HttpAdapter httpAdapter4 = HttpAdapter.this;
            return new IHttpAdapter.Response(stringBuffer, resStatusCode, resStatusMessage, resHeader, equalsIgnoreCase ? httpAdapter4.getPostResBody(httpAdapter4.mHttpURLConn) : httpAdapter4.getResBody(httpAdapter4.mHttpURLConn));
        }
    }

    protected boolean configureUrlConnection(String str) {
        this.mUrl = createReqUrl(str, new StringBuffer(str), this.mParams);
        if (!openUrlConnection()) {
            return false;
        }
        setUrlConnection();
        IMSLog.i(LOG_TAG, this.mPhoneId, "configure httpUrlConnection based on urlConnection");
        this.mHttpURLConn = (HttpURLConnection) this.mURLConn;
        return true;
    }

    protected StringBuffer createReqUrl(String str, StringBuffer stringBuffer, Map<String, String> map) {
        IMSLog.i(LOG_TAG, this.mPhoneId, str);
        if (stringBuffer != null && map != null && map.size() > 0) {
            if (this.mHttpMethodName.equalsIgnoreCase("GET")) {
                if (stringBuffer.charAt(stringBuffer.length() - 1) == '/') {
                    stringBuffer.deleteCharAt(stringBuffer.length() - 1);
                }
                stringBuffer.append("?");
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    stringBuffer.append(entry.getKey());
                    stringBuffer.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
                    try {
                    } catch (UnsupportedEncodingException unused) {
                        IMSLog.e(LOG_TAG, this.mPhoneId, "UnsupportedEncodingException occur. use plain string");
                        stringBuffer.append(entry.getValue());
                    }
                    if (entry.getValue() == null) {
                        stringBuffer.append("&");
                    } else {
                        if (entry.getValue().contains("%")) {
                            stringBuffer.append(entry.getValue());
                        } else {
                            stringBuffer.append(URLEncoder.encode(entry.getValue(), "utf-8"));
                        }
                        stringBuffer.append("&");
                    }
                }
                stringBuffer.deleteCharAt(stringBuffer.length() - 1);
            } else if (this.mHttpMethodName.equalsIgnoreCase("POST")) {
                StringBuilder sb = new StringBuilder();
                if (stringBuffer.charAt(stringBuffer.length() - 1) == '/') {
                    stringBuffer.deleteCharAt(stringBuffer.length() - 1);
                }
                stringBuffer.append("?");
                for (Map.Entry<String, String> entry2 : map.entrySet()) {
                    if (sb.length() != 0) {
                        sb.append('&');
                    }
                    sb.append(entry2.getKey());
                    sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
                    try {
                        if (entry2.getValue().contains("%")) {
                            IMSLog.e(LOG_TAG, "already encoded. use plain string");
                            sb.append(entry2.getValue());
                        } else {
                            sb.append(URLEncoder.encode(entry2.getValue(), "utf-8"));
                        }
                    } catch (UnsupportedEncodingException unused2) {
                        IMSLog.i(LOG_TAG, "UnsupportedEncodingException occur. use plain string");
                        sb.append(entry2.getValue());
                    }
                }
                stringBuffer.append(sb.toString());
            }
            IMSLog.s(LOG_TAG, this.mPhoneId, stringBuffer.toString());
        }
        return stringBuffer;
    }

    protected boolean openUrlConnection() {
        try {
            URL url = new URL(this.mUrl.toString());
            this.mURL = url;
            Network network = this.mNetwork;
            this.mURLConn = network != null ? network.openConnection(url) : url.openConnection();
            return true;
        } catch (MalformedURLException e) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "wrong url address");
            e.printStackTrace();
            return false;
        } catch (IOException e2) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "cannot open url connection");
            e2.printStackTrace();
            return false;
        }
    }

    protected void setUrlConnection() {
        if (this.mURLConn instanceof HttpsURLConnection) {
            setSocketFactory();
        } else {
            removeOldCookies();
        }
    }

    protected void setSocketFactory() {
        try {
            SSLContext sSLContext = SSLContext.getInstance(SSL_PROTOCOL);
            sSLContext.init(null, null, null);
            SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
            IMSLog.i(LOG_TAG, this.mPhoneId, "get socketFactory for HTTPS");
            setSSLSocketFactory(socketFactory);
        } catch (KeyManagementException | NoSuchAlgorithmException e) {
            throw new Error(e);
        }
    }

    protected void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "set sslSocketFactory for HTTPS");
        ((HttpsURLConnection) this.mURLConn).setSSLSocketFactory(sSLSocketFactory);
    }

    protected void removeOldCookies() {
        try {
            URI uri = this.mURL.toURI();
            Iterator<HttpCookie> it = sCookieStore.get(uri).iterator();
            while (it.hasNext()) {
                sCookieStore.remove(uri, it.next());
            }
            IMSLog.i(LOG_TAG, this.mPhoneId, "remove old cookies for HTTP request");
        } catch (URISyntaxException e) {
            throw new Error(e);
        }
    }

    protected void tryToConnectHttpUrlConnectionWithinTimeOut() {
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        TrafficStats.setThreadStatsTag(Process.myTid());
        long j = 30000;
        while (this.mState instanceof ReadyState) {
            if (j < 30000) {
                try {
                    URL url = new URL(this.mUrl.toString());
                    this.mURL = url;
                    Network network = this.mNetwork;
                    this.mURLConn = network != null ? network.openConnection(url) : url.openConnection();
                    setUrlConnection();
                    this.mHttpURLConn = (HttpURLConnection) this.mURLConn;
                } catch (MalformedURLException e) {
                    e.printStackTrace();
                } catch (IOException e2) {
                    e2.printStackTrace();
                    this.mHttpURLConn.disconnect();
                    j = Calendar.getInstance().getTimeInMillis() - timeInMillis;
                }
            }
            setHttpUrlConnection();
            addReqHeader(this.mHttpURLConn, this.mHeaders);
            this.mHttpURLConn.connect();
            j = 30000;
            if (j < 30000) {
                sleep(UtStateMachine.HTTP_READ_TIMEOUT_GCF);
            }
            if (j >= 30000) {
                return;
            }
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "NOT ReadyState");
    }

    protected void tryToConnectHttpUrlConnection() {
        TrafficStats.setThreadStatsTag(Process.myTid());
        try {
            setHttpUrlConnection();
            addReqHeader(this.mHttpURLConn, this.mHeaders);
            this.mHttpURLConn.connect();
        } catch (IOException e) {
            e.printStackTrace();
            this.mHttpURLConn.disconnect();
        }
    }

    protected void setHttpUrlConnection() throws IOException {
        HttpURLConnection.setFollowRedirects(false);
        this.mHttpURLConn.setConnectTimeout(30000);
        this.mHttpURLConn.setReadTimeout(ScheduleConstant.UPDATE_SUBSCRIPTION_DELAY_TIME);
        if (this.mHttpMethodName.equalsIgnoreCase("POST")) {
            this.mHttpURLConn.setRequestMethod("POST");
        } else {
            this.mHttpURLConn.setRequestMethod("GET");
        }
        this.mHttpURLConn.setChunkedStreamingMode(0);
    }

    protected void addReqHeader(HttpURLConnection httpURLConnection, Map<String, List<String>> map) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "+++ request header");
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            boolean z = true;
            for (String str : entry.getValue()) {
                if (z) {
                    httpURLConnection.setRequestProperty(entry.getKey(), str);
                } else {
                    httpURLConnection.addRequestProperty(entry.getKey(), str);
                }
                displayReqHeader(entry.getKey(), str);
                z = false;
            }
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "--- request header");
        if (Debug.ALLOW_DIAGNOSTICS) {
            StringBuilder sb = new StringBuilder();
            String format = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss.SSS", Locale.US).format(new Date());
            sb.append(httpURLConnection instanceof HttpsURLConnection ? "HTTPS " : "HTTP ");
            sb.append(this.mHttpMethodName.equalsIgnoreCase("POST") ? "POST\n" : "GET\n");
            for (Map.Entry<String, List<String>> entry2 : map.entrySet()) {
                for (String str2 : entry2.getValue()) {
                    sb.append(entry2.getKey());
                    sb.append(": ");
                    if (entry2.getKey().equals(HttpController.HEADER_HOST)) {
                        str2 = this.mUrl.toString();
                    }
                    sb.append(str2);
                    sb.append("\n");
                }
            }
            ImsRegistry.getImsDiagMonitor().onIndication(1, sb.toString(), 100, 0, format, "", "", "");
        }
    }

    protected void displayReqHeader(String str, String str2) {
        IMSLog.i(LOG_TAG, this.mPhoneId, str + ":" + str2);
    }

    protected int getResStatusCode(HttpURLConnection httpURLConnection) {
        int i;
        int i2 = 0;
        try {
            try {
                return httpURLConnection.getResponseCode();
            } catch (IOException e) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "getResStatusCode: fail to read status code");
                if (e instanceof SSLHandshakeException) {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "SSLHandshakeException: response code define 800");
                    i = 800;
                } else if (e instanceof SSLException) {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "SSLException: response code define 801");
                    i = 801;
                } else {
                    if (!(e instanceof ConnectException) && !(e instanceof InterruptedIOException)) {
                        if (e instanceof SocketException) {
                            IMSLog.i(LOG_TAG, this.mPhoneId, "SocketException: response code define 803");
                            i = 803;
                        } else if (e instanceof SocketTimeoutException) {
                            IMSLog.i(LOG_TAG, this.mPhoneId, "SocketTimeoutException: response code define 804");
                            i = 804;
                        } else {
                            if (e instanceof UnknownHostException) {
                                IMSLog.i(LOG_TAG, this.mPhoneId, "UnknownHostException: response code define 805");
                                i = 805;
                            }
                            e.printStackTrace();
                            return i2;
                        }
                    }
                    IMSLog.i(LOG_TAG, this.mPhoneId, "ConnectException: response code define 802");
                    i = 802;
                }
                i2 = i;
                e.printStackTrace();
                return i2;
            }
        } catch (Throwable unused) {
            return i2;
        }
    }

    protected String getResStatusMessage(HttpURLConnection httpURLConnection) {
        try {
            try {
                return httpURLConnection.getResponseMessage();
            } catch (IOException e) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "getResStatusMessage: IOException: " + e.getMessage());
                return "";
            }
        } catch (Throwable unused) {
            return "";
        }
    }

    protected Map<String, List<String>> getResHeader(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getHeaderFields();
    }

    protected byte[] getContentLengthBody(byte[] bArr, HttpURLConnection httpURLConnection, int i) {
        try {
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                int i2 = i * 2;
                try {
                    byte[] bArr2 = new byte[i2];
                    byte[] bArr3 = new byte[i];
                    int i3 = 0;
                    while (true) {
                        int read = bufferedInputStream.read(bArr2, i3, i2 - i3);
                        if (read == -1) {
                            break;
                        }
                        i3 += read;
                    }
                    if (i != i3) {
                        IMSLog.i(LOG_TAG, this.mPhoneId, "getContentLengthBody: wrong http header(header:" + i + ",actual:" + i3 + ")");
                    }
                    System.arraycopy(bArr2, 0, bArr3, 0, i);
                    bufferedInputStream.close();
                    return bArr3;
                } catch (Throwable th) {
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (FileNotFoundException unused) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "getContentLengthBody: no body");
                return bArr;
            } catch (IOException e) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "getContentLengthBody: fail to read body");
                e.printStackTrace();
                return bArr;
            }
        } catch (Throwable unused2) {
            return bArr;
        }
    }

    protected byte[] getTransferEncodingBody(byte[] bArr, HttpURLConnection httpURLConnection) {
        boolean z;
        try {
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                try {
                    byte[] bArr2 = new byte[512000];
                    int i = 0;
                    int i2 = 0;
                    do {
                        try {
                            i2 = bufferedInputStream.read(bArr2, i, 61440);
                            if (i2 > 0) {
                                i += i2;
                            }
                        } catch (IOException e) {
                            IMSLog.i(LOG_TAG, this.mPhoneId, "getTransferEncodingBody: error reading chunked input stream" + e.getMessage());
                            z = true;
                        }
                    } while (i2 >= 0);
                    z = false;
                    if (i2 == -1 && i > 0 && !z) {
                        bArr = new byte[i];
                        System.arraycopy(bArr2, 0, bArr, 0, i);
                        IMSLog.i(LOG_TAG, this.mPhoneId, "getTransferEncodingBody: chunked response length [" + i + "]");
                    } else {
                        IMSLog.i(LOG_TAG, this.mPhoneId, "getTransferEncodingBody: chunked body empty or error");
                    }
                    bufferedInputStream.close();
                    return bArr;
                } catch (Throwable th) {
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e2) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "getTransferEncodingBody: fail to read body");
                e2.printStackTrace();
                return bArr;
            }
        } catch (Throwable unused) {
            return bArr;
        }
    }

    protected byte[] getResBody(HttpURLConnection httpURLConnection) {
        byte[] bArr = null;
        if (httpURLConnection.getHeaderField("Content-Length") != null) {
            int parseInt = Integer.parseInt(httpURLConnection.getHeaderField("Content-Length"));
            IMSLog.i(LOG_TAG, this.mPhoneId, "getResBody: Content-Length " + parseInt);
            if (parseInt <= 0) {
                return null;
            }
            bArr = getContentLengthBody(null, httpURLConnection, parseInt);
        }
        if (!CHUNKED.equals(httpURLConnection.getHeaderField(HttpRequest.HEADER_TRANSFER_ENCODING))) {
            return bArr;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "getResBody: Transfer-Encoding");
        return getTransferEncodingBody(bArr, httpURLConnection);
    }

    protected byte[] getPostResBody(HttpURLConnection httpURLConnection) {
        int parseInt;
        String str;
        StringBuilder sb;
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2 = null;
        if (httpURLConnection.getHeaderField("Content-Length") == null || (parseInt = Integer.parseInt(httpURLConnection.getHeaderField("Content-Length"))) <= 0) {
            return null;
        }
        int i = parseInt * 2;
        byte[] bArr = new byte[i];
        byte[] bArr2 = new byte[parseInt];
        try {
            try {
                bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                int i2 = 0;
                while (true) {
                    try {
                        int read = bufferedInputStream.read(bArr, i2, i - i2);
                        if (read == -1) {
                            break;
                        }
                        i2 += read;
                    } catch (IOException unused) {
                        bufferedInputStream2 = bufferedInputStream;
                        IMSLog.e(LOG_TAG, "fail to read body");
                        if (bufferedInputStream2 != null) {
                            try {
                                bufferedInputStream2.close();
                            } catch (IOException e) {
                                e = e;
                                str = LOG_TAG;
                                sb = new StringBuilder();
                                sb.append("Error closing input stream: ");
                                sb.append(e.getMessage());
                                IMSLog.e(str, sb.toString());
                                return bArr2;
                            }
                        }
                        return bArr2;
                    } catch (Throwable th) {
                        th = th;
                        bufferedInputStream2 = bufferedInputStream;
                        if (bufferedInputStream2 != null) {
                            try {
                                bufferedInputStream2.close();
                            } catch (IOException e2) {
                                IMSLog.e(LOG_TAG, "Error closing input stream: " + e2.getMessage());
                            }
                        }
                        throw th;
                    }
                }
                if (parseInt != i2) {
                    IMSLog.e(LOG_TAG, "wrong http header(header:" + parseInt + ",actual:" + i2 + ")");
                }
                System.arraycopy(bArr, 0, bArr2, 0, parseInt);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException unused2) {
        }
        try {
            bufferedInputStream.close();
        } catch (IOException e3) {
            e = e3;
            str = LOG_TAG;
            sb = new StringBuilder();
            sb.append("Error closing input stream: ");
            sb.append(e.getMessage());
            IMSLog.e(str, sb.toString());
            return bArr2;
        }
        return bArr2;
    }

    protected void sleep(long j) {
        try {
            Thread.sleep(j);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
