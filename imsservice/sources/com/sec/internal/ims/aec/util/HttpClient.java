package com.sec.internal.ims.aec.util;

import android.net.Network;
import android.net.Uri;
import com.sec.internal.log.AECLog;
import java.io.IOException;
import java.io.OutputStream;
import java.net.CookieHandler;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import okhttp3.internal.tls.OkHostnameVerifier;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class HttpClient {
    private static final String GET = "GET";
    private static final String LOG_TAG = "HttpClient";
    private static final int MAX_CHUNK_SIZE = 512000;
    private static final int MAX_CONN_TIMEOUT = 30000;
    private static final int MAX_READ_TIMEOUT = 30000;
    private static final int MIN_CHUNK_SIZE = 61440;
    private static final String POST = "POST";
    private final int mPhoneId;
    protected HttpsURLConnection mHttpsURLConn = null;
    protected JSONObject mPostData = null;
    protected Network mNetwork = null;
    protected String mHostName = null;
    protected Map<String, List<String>> mHeaders = null;
    protected Map<String, String> mParams = null;

    public HttpClient(int i) {
        this.mPhoneId = i;
    }

    public void setHeaders(Map<String, List<String>> map) {
        HashMap hashMap = new HashMap();
        this.mHeaders = hashMap;
        hashMap.putAll(map);
    }

    public void setHostName(String str) {
        this.mHostName = str;
    }

    public String getHostName() {
        if (this.mHostName.indexOf(58) > 0) {
            String str = this.mHostName;
            return str.substring(0, str.indexOf(58));
        }
        return this.mHostName;
    }

    public void setParams(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        this.mParams = hashMap;
        hashMap.putAll(map);
    }

    public void setPostData(JSONObject jSONObject) {
        this.mPostData = jSONObject;
    }

    public String getPostData() {
        return this.mPostData.toString().replaceAll("\\\\", "");
    }

    public void setNetwork(Network network) {
        this.mNetwork = network;
    }

    private HttpsURLConnection openURLConnection(String str) throws Exception {
        HttpsURLConnection httpsURLConnection;
        URL url = new URL(str);
        Network network = this.mNetwork;
        if (network == null) {
            httpsURLConnection = (HttpsURLConnection) url.openConnection();
        } else {
            httpsURLConnection = (HttpsURLConnection) network.openConnection(url);
        }
        if (httpsURLConnection != null) {
            httpsURLConnection.setHostnameVerifier(new HostnameVerifier() { // from class: com.sec.internal.ims.aec.util.HttpClient$$ExternalSyntheticLambda0
                @Override // javax.net.ssl.HostnameVerifier
                public final boolean verify(String str2, SSLSession sSLSession) {
                    boolean lambda$openURLConnection$0;
                    lambda$openURLConnection$0 = HttpClient.this.lambda$openURLConnection$0(str2, sSLSession);
                    return lambda$openURLConnection$0;
                }
            });
        }
        return httpsURLConnection;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$openURLConnection$0(String str, SSLSession sSLSession) {
        OkHostnameVerifier okHostnameVerifier = OkHostnameVerifier.INSTANCE;
        boolean z = false;
        try {
            AECLog.s(LOG_TAG, "HostNameVerify: " + this.mHostName, this.mPhoneId);
            boolean z2 = false;
            for (Certificate certificate : sSLSession.getPeerCertificates()) {
                try {
                    z2 = okHostnameVerifier.verify(getHostName(), (X509Certificate) certificate);
                    if (z2) {
                        return z2;
                    }
                } catch (SSLException unused) {
                    z = z2;
                    AECLog.e(LOG_TAG, "SSL Exception with HostNameVerify Fail", this.mPhoneId);
                    return z;
                }
            }
            return z2;
        } catch (SSLException unused2) {
        }
    }

    public Response getURLConnection(String str) throws Exception {
        try {
            AECLog.i(LOG_TAG, "[HTTP GET] " + str, this.mPhoneId);
            HttpsURLConnection openURLConnection = openURLConnection(appendQueryParams(str, this.mParams));
            this.mHttpsURLConn = openURLConnection;
            setRequestHeader(openURLConnection, this.mHeaders);
            this.mHttpsURLConn.setConnectTimeout(30000);
            this.mHttpsURLConn.setReadTimeout(30000);
            this.mHttpsURLConn.setRequestMethod("GET");
            this.mHttpsURLConn.setChunkedStreamingMode(0);
            this.mHttpsURLConn.connect();
            return getResponse(this.mHttpsURLConn);
        } catch (IOException e) {
            closeURLConnection();
            throw new IOException("getURLConnection IOException: " + e.getMessage());
        } catch (Exception e2) {
            closeURLConnection();
            throw new Exception("getURLConnection Exception: " + e2.getMessage());
        }
    }

    public Response postURLConnection(String str) throws Exception {
        try {
            String str2 = LOG_TAG;
            AECLog.i(str2, "[HTTP POST] " + str, this.mPhoneId);
            CookieHandler.setDefault(null);
            HttpsURLConnection openURLConnection = openURLConnection(str);
            this.mHttpsURLConn = openURLConnection;
            setRequestHeader(openURLConnection, this.mHeaders);
            AECLog.d(str2, getPostData(), this.mPhoneId);
            this.mHttpsURLConn.setConnectTimeout(30000);
            this.mHttpsURLConn.setReadTimeout(30000);
            this.mHttpsURLConn.setRequestMethod("POST");
            this.mHttpsURLConn.setUseCaches(false);
            this.mHttpsURLConn.setDoOutput(true);
            this.mHttpsURLConn.setDoInput(true);
            OutputStream outputStream = this.mHttpsURLConn.getOutputStream();
            try {
                outputStream.write(getPostData().getBytes(StandardCharsets.UTF_8));
                outputStream.flush();
                outputStream.close();
                return getResponse(this.mHttpsURLConn);
            } finally {
            }
        } catch (IOException e) {
            closeURLConnection();
            throw new IOException("postURLConnection IOException: " + e.getMessage());
        } catch (Exception e2) {
            closeURLConnection();
            throw new Exception("postURLConnection Exception: " + e2.getMessage());
        }
    }

    public void closeURLConnection() {
        HttpsURLConnection httpsURLConnection = this.mHttpsURLConn;
        if (httpsURLConnection != null) {
            httpsURLConnection.disconnect();
            this.mHttpsURLConn = null;
        }
    }

    protected String appendQueryParams(String str, Map<String, String> map) {
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        if (map != null && map.size() > 0) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getValue().contains(",")) {
                    for (String str2 : entry.getValue().split(",")) {
                        buildUpon.appendQueryParameter(entry.getKey(), str2.trim());
                    }
                } else {
                    buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
                }
            }
            AECLog.s(LOG_TAG, buildUpon.toString(), this.mPhoneId);
        }
        return buildUpon.toString();
    }

    protected void setRequestHeader(HttpURLConnection httpURLConnection, Map<String, List<String>> map) {
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            for (String str : entry.getValue()) {
                httpURLConnection.setRequestProperty(entry.getKey(), str);
                AECLog.i(LOG_TAG, entry.getKey() + " : " + str, this.mPhoneId);
            }
        }
    }

    protected Response getResponse(HttpURLConnection httpURLConnection) {
        return new Response(getResStatusCode(httpURLConnection), getResHeader(httpURLConnection), getResBody(httpURLConnection));
    }

    protected int getResStatusCode(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException unused) {
            return 0;
        }
    }

    protected Map<String, List<String>> getResHeader(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getHeaderFields();
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:27:0x0035
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1179)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10, types: [int] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [int] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.io.BufferedInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.sec.internal.ims.aec.util.HttpClient] */
    /* JADX WARN: Type inference failed for: r7v1, types: [int] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [com.sec.internal.ims.aec.util.HttpClient] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [com.sec.internal.ims.aec.util.HttpClient] */
    /* JADX WARN: Type inference failed for: r7v7, types: [int] */
    protected byte[] getResBody(java.net.HttpURLConnection r8) {
        /*
            r7 = this;
            java.lang.String r0 = "failed to close input stream"
            java.lang.String r1 = ""
            java.nio.charset.Charset r2 = java.nio.charset.StandardCharsets.UTF_8
            byte[] r1 = r1.getBytes(r2)
            r2 = 512000(0x7d000, float:7.17465E-40)
            byte[] r2 = new byte[r2]
            r3 = 0
            java.io.BufferedInputStream r4 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L42 java.io.IOException -> L44
            java.io.InputStream r8 = r8.getInputStream()     // Catch: java.lang.Throwable -> L42 java.io.IOException -> L44
            r4.<init>(r8)     // Catch: java.lang.Throwable -> L42 java.io.IOException -> L44
            r8 = 0
            r3 = r8
        L1b:
            r5 = 61440(0xf000, float:8.6096E-41)
            int r5 = r4.read(r2, r3, r5)     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L40
            if (r5 <= 0) goto L25
            int r3 = r3 + r5
        L25:
            if (r5 >= 0) goto L1b
            r6 = -1
            if (r5 != r6) goto L31
            if (r3 <= 0) goto L31
            byte[] r1 = new byte[r3]     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L40
            java.lang.System.arraycopy(r2, r8, r1, r8, r3)     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L40
        L31:
            r4.close()     // Catch: java.io.IOException -> L35
            goto L52
        L35:
            java.lang.String r8 = com.sec.internal.ims.aec.util.HttpClient.LOG_TAG
            int r7 = r7.mPhoneId
            com.sec.internal.log.AECLog.e(r8, r0, r7)
            goto L52
        L3d:
            r8 = move-exception
            r3 = r4
            goto L53
        L40:
            r3 = r4
            goto L44
        L42:
            r8 = move-exception
            goto L53
        L44:
            java.lang.String r8 = com.sec.internal.ims.aec.util.HttpClient.LOG_TAG     // Catch: java.lang.Throwable -> L42
            java.lang.String r2 = "failed to read input stream"
            int r4 = r7.mPhoneId     // Catch: java.lang.Throwable -> L42
            com.sec.internal.log.AECLog.e(r8, r2, r4)     // Catch: java.lang.Throwable -> L42
            if (r3 == 0) goto L52
            r3.close()     // Catch: java.io.IOException -> L35
        L52:
            return r1
        L53:
            if (r3 == 0) goto L60
            r3.close()     // Catch: java.io.IOException -> L59
            goto L60
        L59:
            java.lang.String r1 = com.sec.internal.ims.aec.util.HttpClient.LOG_TAG
            int r7 = r7.mPhoneId
            com.sec.internal.log.AECLog.e(r1, r0, r7)
        L60:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.aec.util.HttpClient.getResBody(java.net.HttpURLConnection):byte[]");
    }

    public class Response {
        private final byte[] mBody;
        private final Map<String, List<String>> mHeader;
        private final int mStatusCode;

        public Response(int i, Map<String, List<String>> map, byte[] bArr) {
            this.mStatusCode = i;
            this.mHeader = map;
            this.mBody = bArr;
            debugPrint();
        }

        public int getStatusCode() {
            return this.mStatusCode;
        }

        public Map<String, List<String>> getHeader() {
            return this.mHeader;
        }

        public byte[] getBody() {
            return this.mBody;
        }

        private void debugPrint() {
            AECLog.i(HttpClient.LOG_TAG, "[HTTP " + this.mStatusCode + "]", HttpClient.this.mPhoneId);
            Map<String, List<String>> map = this.mHeader;
            if (map == null || map.size() <= 0) {
                return;
            }
            for (Map.Entry<String, List<String>> entry : this.mHeader.entrySet()) {
                StringBuilder sb = new StringBuilder();
                sb.append(entry.getKey());
                sb.append(" : ");
                Iterator<String> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    sb.append(it.next());
                }
                AECLog.i(HttpClient.LOG_TAG, sb.toString(), HttpClient.this.mPhoneId);
            }
        }
    }
}
