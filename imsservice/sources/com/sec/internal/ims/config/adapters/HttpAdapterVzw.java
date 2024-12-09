package com.sec.internal.ims.config.adapters;

import android.net.Network;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.ims.config.adapters.HttpAdapter;
import com.sec.internal.interfaces.ims.config.IHttpAdapter;
import com.sec.internal.log.IMSLog;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes.dex */
public class HttpAdapterVzw extends HttpAdapter {
    protected static final String LOG_TAG = "HttpAdapterVzw";
    protected static SSLSocketFactory mSocketFactory;

    public HttpAdapterVzw(int i) {
        super(i);
        this.mState = new IdleState();
    }

    protected class IdleState extends HttpAdapter.IdleState {
        protected IdleState() {
            super();
        }

        @Override // com.sec.internal.ims.config.adapters.HttpAdapter.IdleState, com.sec.internal.interfaces.ims.config.IHttpAdapter
        public boolean open(String str) {
            IMSLog.i(HttpAdapterVzw.LOG_TAG, HttpAdapterVzw.this.mPhoneId, "open urlConnection");
            if (!HttpAdapterVzw.this.configureUrlConnection(str)) {
                return false;
            }
            HttpAdapterVzw httpAdapterVzw = HttpAdapterVzw.this;
            httpAdapterVzw.mState = httpAdapterVzw.new ReadyState();
            return true;
        }

        @Override // com.sec.internal.ims.config.adapters.HttpAdapter.IdleState, com.sec.internal.interfaces.ims.config.IHttpAdapter
        public void setNetwork(Network network) {
            String str = HttpAdapterVzw.LOG_TAG;
            IMSLog.i(str, HttpAdapterVzw.this.mPhoneId, "setNetwork: " + network);
            HttpAdapterVzw httpAdapterVzw = HttpAdapterVzw.this;
            httpAdapterVzw.mNetwork = network;
            if (network == null) {
                IMSLog.i(str, httpAdapterVzw.mPhoneId, "setNetwork: reset mSocketFactory");
                HttpAdapterVzw.mSocketFactory = null;
            }
        }
    }

    protected class ReadyState extends HttpAdapter.ReadyState {
        protected ReadyState() {
            super();
        }

        @Override // com.sec.internal.ims.config.adapters.HttpAdapter.ReadyState, com.sec.internal.interfaces.ims.config.IHttpAdapter
        public IHttpAdapter.Response request() {
            IMSLog.i(HttpAdapterVzw.LOG_TAG, HttpAdapterVzw.this.mPhoneId, "connect httpUrlConnection");
            HttpAdapterVzw.this.tryToConnectHttpUrlConnection();
            String stringBuffer = HttpAdapterVzw.this.mUrl.toString();
            HttpAdapterVzw httpAdapterVzw = HttpAdapterVzw.this;
            int resStatusCode = httpAdapterVzw.getResStatusCode(httpAdapterVzw.mHttpURLConn);
            HttpAdapterVzw httpAdapterVzw2 = HttpAdapterVzw.this;
            String resStatusMessage = httpAdapterVzw2.getResStatusMessage(httpAdapterVzw2.mHttpURLConn);
            HttpAdapterVzw httpAdapterVzw3 = HttpAdapterVzw.this;
            Map<String, List<String>> resHeader = httpAdapterVzw3.getResHeader(httpAdapterVzw3.mHttpURLConn);
            HttpAdapterVzw httpAdapterVzw4 = HttpAdapterVzw.this;
            return new IHttpAdapter.Response(stringBuffer, resStatusCode, resStatusMessage, resHeader, httpAdapterVzw4.getResBody(httpAdapterVzw4.mHttpURLConn));
        }

        @Override // com.sec.internal.ims.config.adapters.HttpAdapter.ReadyState, com.sec.internal.interfaces.ims.config.IHttpAdapter
        public boolean close() {
            IMSLog.i(HttpAdapterVzw.LOG_TAG, HttpAdapterVzw.this.mPhoneId, "close httpUrlConnection");
            HttpAdapterVzw.this.mHttpURLConn.disconnect();
            HttpAdapterVzw httpAdapterVzw = HttpAdapterVzw.this;
            httpAdapterVzw.mState = httpAdapterVzw.new IdleState();
            return true;
        }
    }

    @Override // com.sec.internal.ims.config.adapters.HttpAdapter
    protected void setSocketFactory() {
        if (mSocketFactory == null) {
            try {
                SSLContext sSLContext = SSLContext.getInstance("TLS");
                sSLContext.init(null, null, null);
                mSocketFactory = sSLContext.getSocketFactory();
                IMSLog.i(LOG_TAG, this.mPhoneId, "get socketFactory for HTTPS");
            } catch (KeyManagementException | NoSuchAlgorithmException e) {
                throw new Error(e);
            }
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "set sslSocketFactor for HTTPS");
        ((HttpsURLConnection) this.mURLConn).setSSLSocketFactory(mSocketFactory);
    }

    @Override // com.sec.internal.ims.config.adapters.HttpAdapter
    protected void setHttpUrlConnection() throws IOException {
        super.setHttpUrlConnection();
        this.mHttpURLConn.setRequestProperty("Accept-Encoding", "gzip");
        this.mHttpURLConn.setRequestProperty("Keep-Alive", CloudMessageProviderContract.JsonData.TRUE);
    }

    @Override // com.sec.internal.ims.config.adapters.HttpAdapter
    protected int getResStatusCode(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "getResStatusCode: fail to read status code: " + e.getMessage());
            return 0;
        }
    }

    @Override // com.sec.internal.ims.config.adapters.HttpAdapter
    protected byte[] getContentLengthBody(byte[] bArr, HttpURLConnection httpURLConnection, int i) {
        InputStream gZIPInputStream;
        InputStreamReader inputStreamReader;
        String contentEncoding = httpURLConnection.getContentEncoding();
        boolean z = contentEncoding != null && contentEncoding.equals("gzip");
        IMSLog.i(LOG_TAG, this.mPhoneId, "encoding: " + contentEncoding + " isNeededGZIPInputStream: " + z);
        try {
            gZIPInputStream = z ? new GZIPInputStream(httpURLConnection.getInputStream()) : new BufferedInputStream(httpURLConnection.getInputStream());
            try {
                inputStreamReader = new InputStreamReader(gZIPInputStream);
            } finally {
            }
        } catch (IOException e) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "fail to read body");
            e.printStackTrace();
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                }
                bArr = new byte[sb.toString().length()];
                System.arraycopy(sb.toString().getBytes(), 0, bArr, 0, sb.toString().length());
                bufferedReader.close();
                inputStreamReader.close();
                gZIPInputStream.close();
                return bArr;
            } finally {
            }
        } finally {
        }
    }
}
