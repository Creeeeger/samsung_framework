package com.sec.internal.ims.config.adapters;

import com.sec.internal.ims.config.adapters.HttpAdapter;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.interfaces.ims.config.IHttpAdapter;
import com.sec.internal.log.IMSLog;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes.dex */
public class HttpAdapterChn extends HttpAdapter {
    private static final HostnameVerifier DO_NOT_VERIFY = new HostnameVerifier() { // from class: com.sec.internal.ims.config.adapters.HttpAdapterChn.1
        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    };
    protected static final String LOG_TAG = "HttpAdapterChn";

    public HttpAdapterChn(int i) {
        super(i);
        this.mState = new IdleState();
    }

    protected class IdleState extends HttpAdapter.IdleState {
        protected IdleState() {
            super();
        }

        @Override // com.sec.internal.ims.config.adapters.HttpAdapter.IdleState, com.sec.internal.interfaces.ims.config.IHttpAdapter
        public boolean open(String str) {
            setNetwork(null);
            if (!HttpAdapterChn.this.configureUrlConnection(str)) {
                return false;
            }
            HttpAdapterChn httpAdapterChn = HttpAdapterChn.this;
            httpAdapterChn.mState = httpAdapterChn.new ReadyState();
            return true;
        }
    }

    protected class ReadyState extends HttpAdapter.ReadyState {
        protected ReadyState() {
            super();
        }

        @Override // com.sec.internal.ims.config.adapters.HttpAdapter.ReadyState, com.sec.internal.interfaces.ims.config.IHttpAdapter
        public IHttpAdapter.Response request() {
            HttpAdapterChn.this.tryToConnectHttpUrlConnectionWithinTimeOut();
            String stringBuffer = HttpAdapterChn.this.mUrl.toString();
            HttpAdapterChn httpAdapterChn = HttpAdapterChn.this;
            int resStatusCode = httpAdapterChn.getResStatusCode(httpAdapterChn.mHttpURLConn);
            HttpAdapterChn httpAdapterChn2 = HttpAdapterChn.this;
            String resStatusMessage = httpAdapterChn2.getResStatusMessage(httpAdapterChn2.mHttpURLConn);
            HttpAdapterChn httpAdapterChn3 = HttpAdapterChn.this;
            Map<String, List<String>> resHeader = httpAdapterChn3.getResHeader(httpAdapterChn3.mHttpURLConn);
            HttpAdapterChn httpAdapterChn4 = HttpAdapterChn.this;
            return new IHttpAdapter.Response(stringBuffer, resStatusCode, resStatusMessage, resHeader, httpAdapterChn4.getResBody(httpAdapterChn4.mHttpURLConn));
        }

        @Override // com.sec.internal.ims.config.adapters.HttpAdapter.ReadyState, com.sec.internal.interfaces.ims.config.IHttpAdapter
        public boolean close() {
            HttpAdapterChn.this.mHttpURLConn.disconnect();
            HttpAdapterChn httpAdapterChn = HttpAdapterChn.this;
            httpAdapterChn.mState = httpAdapterChn.new IdleState();
            return true;
        }
    }

    private static class miTM implements TrustManager, X509TrustManager {
        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }

        private miTM() {
        }
    }

    @Override // com.sec.internal.ims.config.adapters.HttpAdapter
    protected void setSocketFactory() {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{new miTM()}, ImsUtil.getRandom());
            SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
            IMSLog.i(LOG_TAG, this.mPhoneId, "get socketFactory for HTTPS");
            setSSLSocketFactory(socketFactory);
        } catch (KeyManagementException | NoSuchAlgorithmException e) {
            throw new Error(e);
        }
    }

    @Override // com.sec.internal.ims.config.adapters.HttpAdapter
    protected void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        super.setSSLSocketFactory(sSLSocketFactory);
        ((HttpsURLConnection) this.mURLConn).setHostnameVerifier(DO_NOT_VERIFY);
    }

    @Override // com.sec.internal.ims.config.adapters.HttpAdapter
    protected void setHttpUrlConnection() throws IOException {
        super.setHttpUrlConnection();
        this.mHttpURLConn.setInstanceFollowRedirects(false);
    }

    @Override // com.sec.internal.ims.config.adapters.HttpAdapter
    protected int getResStatusCode(HttpURLConnection httpURLConnection) {
        try {
            try {
                return httpURLConnection.getResponseCode();
            } catch (IOException e) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "fail to read status code");
                e.printStackTrace();
                return 0;
            }
        } catch (Throwable unused) {
            return 0;
        }
    }
}
