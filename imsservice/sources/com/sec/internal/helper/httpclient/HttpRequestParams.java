package com.sec.internal.helper.httpclient;

import com.sec.internal.constants.ims.cmstore.ATTConstants;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.log.IMSLog;
import java.io.IOException;
import java.net.Proxy;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.SocketFactory;
import okhttp3.Dns;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class HttpRequestParams {
    private String mBsfUrl;
    private HttpRequestCallback mCallback;
    private byte[] mCipherSuite;
    private int mCiphersuite;
    private long mConnectionTimeout;
    private Dns mDns;
    private boolean mFollowRedirects;
    private Map<String, String> mHeaders;
    private boolean mIgnoreServerCert;
    private int mIpVersion;
    private Method mMethod;
    private String mNafUrl;
    private String mPassword;
    private int mPhoneId;
    private HttpPostBody mPostBody;
    private Proxy mProxy;
    private HttpQueryParams mQueryParams;
    private long mReadTimeout;
    private boolean mRetryOnConnectionFailure;
    private boolean mReuseConnection;
    private SocketFactory mSocketFactory;
    private int mToken;
    private boolean mUseForcedProtocol;
    private boolean mUseImei;
    private boolean mUseProxy;
    private boolean mUseTls;
    private String mUserName;
    private long mWriteTimeout;

    public interface HttpRequestCallback {
        void onComplete(HttpResponseParams httpResponseParams);

        void onFail(IOException iOException);
    }

    public enum Method {
        GET,
        POST,
        PUT,
        DELETE,
        TRACE,
        HEAD,
        OPTIONS
    }

    public HttpRequestParams() {
        this.mMethod = null;
        this.mNafUrl = null;
        this.mBsfUrl = null;
        this.mReuseConnection = false;
        this.mQueryParams = null;
        this.mHeaders = null;
        this.mCallback = null;
        this.mPostBody = null;
        this.mConnectionTimeout = 30000L;
        this.mReadTimeout = 30000L;
        this.mWriteTimeout = 30000L;
        this.mFollowRedirects = true;
        this.mSocketFactory = null;
        this.mPhoneId = 0;
        this.mDns = null;
        this.mUserName = null;
        this.mPassword = null;
        this.mCipherSuite = null;
        this.mUseTls = false;
        this.mIgnoreServerCert = false;
        this.mRetryOnConnectionFailure = true;
        this.mIpVersion = 0;
        this.mProxy = null;
        this.mUseProxy = false;
        this.mUseImei = false;
        this.mToken = 0;
    }

    public HttpRequestParams(Method method, String str, Map<String, String> map, HttpRequestCallback httpRequestCallback) {
        this.mBsfUrl = null;
        this.mReuseConnection = false;
        this.mQueryParams = null;
        this.mPostBody = null;
        this.mConnectionTimeout = 30000L;
        this.mReadTimeout = 30000L;
        this.mWriteTimeout = 30000L;
        this.mFollowRedirects = true;
        this.mSocketFactory = null;
        this.mPhoneId = 0;
        this.mDns = null;
        this.mUserName = null;
        this.mPassword = null;
        this.mCipherSuite = null;
        this.mUseTls = false;
        this.mIgnoreServerCert = false;
        this.mRetryOnConnectionFailure = true;
        this.mIpVersion = 0;
        this.mProxy = null;
        this.mUseProxy = false;
        this.mUseImei = false;
        this.mToken = 0;
        this.mMethod = method;
        this.mNafUrl = str;
        this.mHeaders = map;
        this.mCallback = httpRequestCallback;
    }

    public HttpRequestParams(Method method, String str, String str2, Map<String, String> map, HttpRequestCallback httpRequestCallback) {
        this.mReuseConnection = false;
        this.mQueryParams = null;
        this.mPostBody = null;
        this.mConnectionTimeout = 30000L;
        this.mReadTimeout = 30000L;
        this.mWriteTimeout = 30000L;
        this.mFollowRedirects = true;
        this.mSocketFactory = null;
        this.mPhoneId = 0;
        this.mDns = null;
        this.mUserName = null;
        this.mPassword = null;
        this.mCipherSuite = null;
        this.mUseTls = false;
        this.mIgnoreServerCert = false;
        this.mRetryOnConnectionFailure = true;
        this.mIpVersion = 0;
        this.mProxy = null;
        this.mUseProxy = false;
        this.mUseImei = false;
        this.mToken = 0;
        this.mMethod = method;
        this.mNafUrl = str;
        this.mBsfUrl = str2;
        this.mHeaders = map;
        this.mCallback = httpRequestCallback;
    }

    public HttpRequestParams(Map<String, String> map) {
        this.mMethod = null;
        this.mNafUrl = null;
        this.mBsfUrl = null;
        this.mReuseConnection = false;
        this.mQueryParams = null;
        this.mCallback = null;
        this.mPostBody = null;
        this.mConnectionTimeout = 30000L;
        this.mReadTimeout = 30000L;
        this.mWriteTimeout = 30000L;
        this.mFollowRedirects = true;
        this.mSocketFactory = null;
        this.mPhoneId = 0;
        this.mDns = null;
        this.mUserName = null;
        this.mPassword = null;
        this.mCipherSuite = null;
        this.mUseTls = false;
        this.mIgnoreServerCert = false;
        this.mRetryOnConnectionFailure = true;
        this.mIpVersion = 0;
        this.mProxy = null;
        this.mUseProxy = false;
        this.mUseImei = false;
        this.mToken = 0;
        this.mHeaders = map;
    }

    public Method getMethod() {
        return this.mMethod;
    }

    /* renamed from: com.sec.internal.helper.httpclient.HttpRequestParams$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method;

        static {
            int[] iArr = new int[Method.values().length];
            $SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method = iArr;
            try {
                iArr[Method.GET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method[Method.POST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method[Method.PUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method[Method.DELETE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method[Method.HEAD.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method[Method.OPTIONS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method[Method.TRACE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public String getMethodString() {
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method[this.mMethod.ordinal()]) {
            case 1:
                return "GET";
            case 2:
                return "POST";
            case 3:
                return "PUT";
            case 4:
                return HttpController.METHOD_DELETE;
            case 5:
                return HttpController.METHOD_HEAD;
            case 6:
                return HttpController.METHOD_OPTIONS;
            case 7:
                return HttpController.METHOD_TRACE;
            default:
                return "";
        }
    }

    public HttpRequestParams setMethod(Method method) {
        this.mMethod = method;
        return this;
    }

    public String getUrl() {
        return this.mNafUrl;
    }

    public String getBsfUrl() {
        return this.mBsfUrl;
    }

    public HttpRequestParams setUrl(String str) {
        this.mNafUrl = str;
        return this;
    }

    public HttpRequestParams setBsfUrl(String str) {
        this.mBsfUrl = str;
        return this;
    }

    public HttpRequestParams setReuseConnection(boolean z) {
        this.mReuseConnection = z;
        return this;
    }

    public boolean isReuseConnection() {
        return this.mReuseConnection;
    }

    public HttpQueryParams getQueryParams() {
        return this.mQueryParams;
    }

    public HttpRequestParams setQueryParams(HttpQueryParams httpQueryParams) {
        this.mQueryParams = httpQueryParams;
        return this;
    }

    public Map<String, String> getHeaders() {
        return this.mHeaders;
    }

    public HttpRequestParams setHeaders(Map<String, String> map) {
        this.mHeaders = map;
        return this;
    }

    public HttpRequestCallback getCallback() {
        return this.mCallback;
    }

    public HttpRequestParams setCallback(HttpRequestCallback httpRequestCallback) {
        this.mCallback = httpRequestCallback;
        return this;
    }

    public HttpPostBody getPostBody() {
        return this.mPostBody;
    }

    public HttpRequestParams setPostBody(HttpPostBody httpPostBody) {
        this.mPostBody = httpPostBody;
        return this;
    }

    public HttpRequestParams setPostBody(String str) {
        this.mPostBody = new HttpPostBody(str);
        return this;
    }

    public HttpRequestParams setPostBody(JSONObject jSONObject) {
        this.mPostBody = new HttpPostBody(jSONObject);
        return this;
    }

    public HttpRequestParams setPostBody(JSONArray jSONArray) {
        this.mPostBody = new HttpPostBody(jSONArray.toString());
        return this;
    }

    public HttpRequestParams setPostBody(byte[] bArr) {
        this.mPostBody = new HttpPostBody(bArr);
        return this;
    }

    public SocketFactory getSocketFactory() {
        return this.mSocketFactory;
    }

    public HttpRequestParams setSocketFactory(SocketFactory socketFactory) {
        this.mSocketFactory = socketFactory;
        return this;
    }

    public long getConnectionTimeout() {
        return this.mConnectionTimeout;
    }

    public HttpRequestParams setConnectionTimeout(long j) {
        this.mConnectionTimeout = j;
        return this;
    }

    public long getReadTimeout() {
        return this.mReadTimeout;
    }

    public HttpRequestParams setReadTimeout(long j) {
        this.mReadTimeout = j;
        return this;
    }

    public long getWriteTimeout() {
        return this.mWriteTimeout;
    }

    public HttpRequestParams setWriteTimeout(long j) {
        this.mWriteTimeout = j;
        return this;
    }

    public HttpRequestParams setPostParams(Map<String, String> map) {
        this.mPostBody = new HttpPostBody(map);
        return this;
    }

    public boolean getFollowRedirects() {
        return this.mFollowRedirects;
    }

    public HttpRequestParams setFollowRedirects(boolean z) {
        this.mFollowRedirects = z;
        return this;
    }

    public int getPhoneId() {
        return this.mPhoneId;
    }

    public HttpRequestParams setPhoneId(int i) {
        this.mPhoneId = i;
        return this;
    }

    public Dns getDns() {
        return this.mDns;
    }

    public HttpRequestParams setDns(Dns dns) {
        this.mDns = dns;
        return this;
    }

    public String getUserName() {
        return this.mUserName;
    }

    public HttpRequestParams setUserName(String str) {
        this.mUserName = str;
        return this;
    }

    public String getPassword() {
        return this.mPassword;
    }

    public HttpRequestParams setPassword(String str) {
        this.mPassword = str;
        return this;
    }

    public boolean getUseTls() {
        return this.mUseTls;
    }

    public HttpRequestParams setUseTls(boolean z) {
        this.mUseTls = z;
        return this;
    }

    public boolean getIgnoreServerCert() {
        return this.mIgnoreServerCert;
    }

    public HttpRequestParams setIgnoreServerCert(boolean z) {
        this.mIgnoreServerCert = z;
        return this;
    }

    public boolean getRetryOnConnectionFailure() {
        return this.mRetryOnConnectionFailure;
    }

    public void setProtocol(boolean z) {
        this.mUseForcedProtocol = z;
    }

    public boolean getForcedProtocolVersion() {
        return this.mUseForcedProtocol;
    }

    public int getIpVersion() {
        return this.mIpVersion;
    }

    public HttpRequestParams setIpVersion(int i) {
        this.mIpVersion = i;
        return this;
    }

    public Proxy getProxy() {
        return this.mProxy;
    }

    public HttpRequestParams setProxy(Proxy proxy) {
        this.mProxy = proxy;
        return this;
    }

    public boolean getUseProxy() {
        return this.mUseProxy;
    }

    public HttpRequestParams setUseProxy(boolean z) {
        this.mUseProxy = z;
        return this;
    }

    public void setUseImei(boolean z) {
        this.mUseImei = z;
    }

    public boolean getUseImei() {
        return this.mUseImei;
    }

    public void setCipherSuite(byte[] bArr) {
        this.mCipherSuite = bArr;
    }

    public byte[] getCipherSuite() {
        return this.mCipherSuite;
    }

    public void setToken(int i) {
        this.mToken = i;
    }

    public int getToken() {
        return this.mToken;
    }

    public HttpRequestParams setCipherSuiteType(int i) {
        this.mCiphersuite = i;
        return this;
    }

    public int getCipherSuiteType() {
        return this.mCiphersuite;
    }

    public String toDebugLogs() {
        StringBuffer stringBuffer = new StringBuffer();
        Map<String, String> map = this.mHeaders;
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, String> entry : this.mHeaders.entrySet()) {
                if (entry.getKey().contains("x-att-") && !entry.getKey().contains(ATTConstants.CommonHttpHeaders.DEVICE_ID)) {
                    stringBuffer.append("\r\n        " + entry.getKey() + " : " + entry.getValue());
                }
            }
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String toString() {
        HttpPostBody httpPostBody;
        String checker;
        StringBuffer stringBuffer = new StringBuffer();
        Map<String, String> map = this.mHeaders;
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, String> entry : this.mHeaders.entrySet()) {
                stringBuffer.append("\r\n        " + entry.getKey() + " : ");
                if ("Authorization".equalsIgnoreCase(entry.getKey())) {
                    String value = entry.getValue();
                    Matcher matcher = Pattern.compile("username=\"[^\"]*@[^\"]*\"").matcher(entry.getValue());
                    if (matcher.find() && (checker = IMSLog.checker(matcher.group())) != null && !checker.contains("username")) {
                        value = value.replaceAll("username=\"[^\"]*@[^\"]*\"", "username=\"" + checker + CmcConstants.E_NUM_STR_QUOTE);
                    }
                    Matcher matcher2 = Pattern.compile("uri=\"[^\"]*[^\"]\"").matcher(entry.getValue());
                    if (matcher2.find()) {
                        value = value.replaceAll("uri=\"[^\"]*[^\"]\"", IMSLog.numberChecker(matcher2.group()));
                    }
                    stringBuffer.append(value);
                } else if ("X-3GPP-Intended-Identity".equalsIgnoreCase(entry.getKey())) {
                    stringBuffer.append(IMSLog.numberChecker(entry.getValue()));
                } else {
                    stringBuffer.append(entry.getValue());
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("HttpRequestParams[\r\n    mMethod: ");
        sb.append(this.mMethod.name());
        sb.append("\r\n    mNafUrl: ");
        sb.append(IMSLog.numberChecker(this.mNafUrl));
        sb.append("\r\n    mBsfUrl: ");
        sb.append(IMSLog.numberChecker(this.mBsfUrl));
        sb.append("\r\n    mQueryParams: ");
        HttpQueryParams httpQueryParams = this.mQueryParams;
        String str = "";
        sb.append(httpQueryParams != null ? httpQueryParams.toString() : "");
        sb.append("\r\n    mHeaders: ");
        String str2 = stringBuffer;
        if (IMSLog.isShipBuild()) {
            str2 = toDebugLogs();
        }
        sb.append((Object) str2);
        sb.append("\r\n    mConnectionTimeout: ");
        sb.append(this.mConnectionTimeout);
        sb.append("\r\n    mReadTimeout: ");
        sb.append(this.mReadTimeout);
        sb.append("\r\n    mWriteTimeout: ");
        sb.append(this.mWriteTimeout);
        sb.append("\r\n    mFollowRedirects: ");
        sb.append(this.mFollowRedirects);
        sb.append("\r\n]\r\n    mPostBody: ");
        if (!IMSLog.isShipBuild() && (httpPostBody = this.mPostBody) != null) {
            str = IMSLog.numberChecker(httpPostBody.toString());
        }
        sb.append(str);
        sb.append("\r\n]");
        return sb.toString();
    }
}
