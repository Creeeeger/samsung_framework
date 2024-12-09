package com.sec.internal.ims.util.httpclient;

import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.Mno;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.StrUtil;
import com.sec.internal.helper.header.AuthorizationHeader;
import com.sec.internal.helper.header.WwwAuthenticateHeader;
import com.sec.internal.helper.httpclient.DigestAuth;
import com.sec.internal.helper.httpclient.DnsController;
import com.sec.internal.helper.httpclient.HttpController;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.helper.os.Debug;
import com.sec.internal.helper.parser.AuthInfoHeaderParser;
import com.sec.internal.helper.parser.WwwAuthHeaderParser;
import com.sec.internal.ims.gba.GbaException;
import com.sec.internal.ims.gba.GbaUtility;
import com.sec.internal.ims.gba.params.GbaData;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.ss.UtUtils;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.imslogger.IImsDiagMonitor;
import com.sec.internal.interfaces.ims.gba.IGbaCallback;
import com.sec.internal.interfaces.ims.gba.IGbaServiceModule;
import com.sec.internal.log.IMSLog;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Predicate;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public class GbaHttpController {
    private static final String TAG = "GbaHttpController";
    private static volatile GbaHttpController sInstance = new GbaHttpController();
    private IGbaServiceModule mGbaServiceModule = null;
    HttpRequestParams mNafRequestParams = null;
    Map<String, LastAuthInfo> mLastAuthInfoMap = new ConcurrentHashMap();

    protected static class LastAuthInfo {
        public String btid = null;
        public String gbaKey = null;
        public HttpResponseParams lastNafResult = null;
        public DigestAuth digestAuth = null;
        public String nextNonce = null;
        public String etag = null;
        public String LifeTime = null;

        protected LastAuthInfo() {
        }

        public void reset() {
            this.btid = null;
            this.gbaKey = null;
            this.lastNafResult = null;
            this.digestAuth = null;
            this.nextNonce = null;
            this.etag = null;
            this.LifeTime = null;
        }
    }

    private GbaHttpController() {
    }

    public static GbaHttpController getInstance() {
        return sInstance;
    }

    public void clearLastAuthInfo(int i) {
        final int subId = SimUtil.getSubId(i);
        IMSLog.d(TAG, "clearLastAuthInfo: phoneId:" + i + " - subId:" + subId);
        this.mLastAuthInfoMap.entrySet().removeIf(new Predicate() { // from class: com.sec.internal.ims.util.httpclient.GbaHttpController$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$clearLastAuthInfo$0;
                lambda$clearLastAuthInfo$0 = GbaHttpController.lambda$clearLastAuthInfo$0(subId, (Map.Entry) obj);
                return lambda$clearLastAuthInfo$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$clearLastAuthInfo$0(int i, Map.Entry entry) {
        return ((String) entry.getKey()).contains("-subId" + i);
    }

    public void execute(final HttpRequestParams httpRequestParams) {
        this.mNafRequestParams = httpRequestParams;
        LastAuthInfo lastAuthInfo = getLastAuthInfo(httpRequestParams.getUrl(), httpRequestParams.getPhoneId());
        try {
            final URL url = new URL(httpRequestParams.getUrl());
            if (isValidAuthInfo(lastAuthInfo)) {
                sendRequestWithAuthorization(url, httpRequestParams, lastAuthInfo.lastNafResult, lastAuthInfo.btid, lastAuthInfo.gbaKey, false);
                return;
            }
            HttpRequestParams makeHttpRequestParams = makeHttpRequestParams(httpRequestParams.getMethod(), httpRequestParams.getUrl(), httpRequestParams.getHeaders(), new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.util.httpclient.GbaHttpController.1
                @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
                public void onComplete(HttpResponseParams httpResponseParams) {
                    if (httpResponseParams == null) {
                        IMSLog.e(GbaHttpController.TAG, "execute(): onComplete: response build failure");
                        httpRequestParams.getCallback().onFail(new IOException("okhttp response build failure"));
                        return;
                    }
                    GbaHttpController.this.loggingHttpMessage(httpResponseParams.toString(), 1);
                    int statusCode = httpResponseParams.getStatusCode();
                    IMSLog.c(LogClass.UT_HTTP, httpRequestParams.getPhoneId() + ",<," + statusCode);
                    if (statusCode == 401 && GbaHttpController.this.useGba(httpRequestParams)) {
                        handleAuthenticateWithGba(httpResponseParams, statusCode);
                    } else {
                        IMSLog.i(GbaHttpController.TAG, "NO GBA process");
                        httpRequestParams.getCallback().onComplete(httpResponseParams);
                    }
                }

                private void handleAuthenticateWithGba(HttpResponseParams httpResponseParams, int i) {
                    if (GbaHttpController.isNeedCSFB(i, httpRequestParams.getPhoneId())) {
                        IMSLog.i(GbaHttpController.TAG, "Special case: TIM operator requires CSFB for 401.");
                        httpResponseParams.setStatusCode(403);
                        httpRequestParams.getCallback().onComplete(httpResponseParams);
                        return;
                    }
                    GbaHttpController.this.storeLastAuthInfo(httpResponseParams, httpRequestParams);
                    WwwAuthenticateHeader wwwAuthenticateHeader = GbaHttpController.this.getWwwAuthenticateHeader(httpResponseParams);
                    if (wwwAuthenticateHeader == null) {
                        IMSLog.e(GbaHttpController.TAG, "execute(): onComplete: missing header: WWW-Authenticate");
                        httpRequestParams.getCallback().onComplete(httpResponseParams);
                        return;
                    }
                    String realm = wwwAuthenticateHeader.getRealm();
                    if (realm.contains("3GPP-bootstrapping")) {
                        if (httpRequestParams.getIpVersion() > 0) {
                            DnsController dnsController = (DnsController) httpRequestParams.getDns();
                            dnsController.setNaf(false);
                            httpRequestParams.setDns(dnsController);
                        }
                        GbaHttpController.this.mGbaServiceModule = ImsRegistry.getServiceModuleManager().getGbaServiceModule();
                        IGbaServiceModule iGbaServiceModule = GbaHttpController.this.mGbaServiceModule;
                        HttpRequestParams httpRequestParams2 = httpRequestParams;
                        iGbaServiceModule.getBtidAndGbaKey(httpRequestParams2, realm, httpResponseParams, GbaHttpController.this.getGbaCallback(httpResponseParams, httpRequestParams2, url));
                        return;
                    }
                    IMSLog.i(GbaHttpController.TAG, "HTTP digest without GBA");
                    GbaHttpController.this.sendRequestWithAuthorization(url, httpRequestParams, httpResponseParams, httpRequestParams.getUserName(), httpRequestParams.getPassword(), false);
                }

                @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
                public void onFail(IOException iOException) {
                    IMSLog.c(LogClass.UT_ERROR_HANDLE, httpRequestParams.getPhoneId() + "," + IMSLog.numberChecker(iOException.getMessage()));
                    httpRequestParams.getCallback().onFail(iOException);
                }
            }, httpRequestParams);
            if (httpRequestParams.getPostBody() != null) {
                makeHttpRequestParams.setPostBody(httpRequestParams.getPostBody());
            }
            IMSLog.c(LogClass.UT_HTTP, makeHttpRequestParams.getPhoneId() + ",>," + makeHttpRequestParams.getMethodString());
            HttpController.getInstance().execute(makeHttpRequestParams);
            loggingHttpMessage(makeHttpRequestParams.toString(), 0);
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRequestWithAuthorization(final URL url, final HttpRequestParams httpRequestParams, HttpResponseParams httpResponseParams, final String str, final String str2, boolean z) {
        String str3;
        String path;
        String str4 = TAG;
        IMSLog.d(str4, "GBA: sendRequestWithAuthorization()");
        WwwAuthenticateHeader wwwAuthenticateHeader = getWwwAuthenticateHeader(httpResponseParams);
        if (wwwAuthenticateHeader == null || wwwAuthenticateHeader.getRealm() == null || TextUtils.isEmpty(wwwAuthenticateHeader.getQop())) {
            IMSLog.e(str4, "sendRequestWithAuthorization(): missing header: WWW-Authenticate");
            httpRequestParams.getCallback().onFail(new IOException("Invalid WwwAuthenticateHeader"));
            return;
        }
        String[] split = wwwAuthenticateHeader.getRealm().split(";");
        final String realm = wwwAuthenticateHeader.getRealm();
        int length = split.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                str3 = "";
                break;
            }
            str3 = split[i];
            if ((str3.contains("uicc") && z) || (!str3.contains("uicc") && !z)) {
                break;
            } else {
                i++;
            }
        }
        String str5 = str3;
        LastAuthInfo lastAuthInfo = getLastAuthInfo(url.toString(), httpRequestParams.getPhoneId());
        String[] split2 = wwwAuthenticateHeader.getQop().split(",");
        String str6 = lastAuthInfo.nextNonce;
        if (str6 != null) {
            wwwAuthenticateHeader.setNonce(str6);
        }
        DigestAuth digestAuth = lastAuthInfo.digestAuth;
        if (url.getQuery() != null) {
            path = url.getPath() + "?" + url.getQuery();
        } else {
            path = url.getPath();
        }
        digestAuth.setDigestAuth(str, str2, str5, wwwAuthenticateHeader.getNonce(), httpRequestParams.getMethodString(), path.isEmpty() ? "/" : path, wwwAuthenticateHeader.getAlgorithm(), split2[0]);
        HttpRequestParams.Method method = httpRequestParams.getMethod();
        HttpRequestParams.Method method2 = HttpRequestParams.Method.PUT;
        if (method == method2) {
            digestAuth.setBody(new String(httpRequestParams.getPostBody().getData(), StandardCharsets.UTF_8));
        } else if (SimUtil.getSimMno(httpRequestParams.getPhoneId()) != Mno.XPLORE) {
            digestAuth.setDigestURI(url.getPath().isEmpty() ? "/" : url.getPath());
        }
        String authorizationHeader = AuthorizationHeader.getAuthorizationHeader(digestAuth, wwwAuthenticateHeader);
        HashMap hashMap = new HashMap();
        hashMap.put(HttpController.HEADER_HOST, httpRequestParams.getHeaders().get(HttpController.HEADER_HOST));
        hashMap.put("User-Agent", httpRequestParams.getHeaders().get("User-Agent"));
        hashMap.put("Authorization", authorizationHeader);
        hashMap.put("Accept", "*/*");
        hashMap.put("Accept-Encoding", getAcceptEncoding(httpRequestParams.getPhoneId()));
        if (httpRequestParams.getMethod() == method2) {
            hashMap.put("If-Match", lastAuthInfo.etag);
            hashMap.put("Content-Type", httpRequestParams.getHeaders().get("Content-Type"));
        }
        if (!TextUtils.isEmpty(httpRequestParams.getHeaders().get(HttpController.HEADER_X_TMUS_IMEI))) {
            hashMap.put(HttpController.HEADER_X_TMUS_IMEI, httpRequestParams.getHeaders().get(HttpController.HEADER_X_TMUS_IMEI));
        }
        if (!TextUtils.isEmpty(httpRequestParams.getHeaders().get("X-3GPP-Intended-Identity"))) {
            hashMap.put("X-3GPP-Intended-Identity", httpRequestParams.getHeaders().get("X-3GPP-Intended-Identity"));
        }
        HttpRequestParams makeHttpRequestParams = makeHttpRequestParams(httpRequestParams.getMethod(), httpRequestParams.getUrl(), hashMap, new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.util.httpclient.GbaHttpController.2
            private boolean handleRequestSuccessWithGba(HttpResponseParams httpResponseParams2, LastAuthInfo lastAuthInfo2) {
                Map<String, List<String>> headers = httpResponseParams2.getHeaders();
                List<String> list = headers.get("Authentication-Info");
                if (list != null) {
                    try {
                        String nextNonce = new AuthInfoHeaderParser().parseHeaderValue(list.get(0)).getNextNonce();
                        if (!TextUtils.isEmpty(nextNonce)) {
                            lastAuthInfo2.nextNonce = nextNonce;
                        }
                    } catch (IllegalArgumentException e) {
                        IMSLog.e(GbaHttpController.TAG, "onComplete: unable to parse authInfoParsedHeader : " + e.getMessage());
                        e.printStackTrace();
                        return true;
                    }
                }
                List<String> list2 = headers.get(HttpController.HEADER_ETAG);
                if (list2 != null) {
                    String str7 = list2.get(0);
                    if (!TextUtils.isEmpty(str7)) {
                        lastAuthInfo2.etag = str7;
                    }
                }
                return false;
            }

            private void handleRequestWithAuthenticate(HttpResponseParams httpResponseParams2) {
                GbaHttpController.this.storeLastAuthInfo(httpResponseParams2, httpRequestParams);
                WwwAuthenticateHeader wwwAuthenticateHeader2 = GbaHttpController.this.getWwwAuthenticateHeader(httpResponseParams2);
                if (wwwAuthenticateHeader2 == null) {
                    IMSLog.e(GbaHttpController.TAG, "sendRequestWithAuthorization(): onComplete: missing header: WWW-Authenticate");
                    httpRequestParams.getCallback().onFail(new IOException("AuthenticateHeader null"));
                    return;
                }
                if (wwwAuthenticateHeader2.isStale()) {
                    IMSLog.i(GbaHttpController.TAG, "Stale is true. Reuse same username..");
                    GbaHttpController.this.sendRequestWithAuthorization(url, httpRequestParams, httpResponseParams2, str, str2, false);
                    return;
                }
                String realm2 = wwwAuthenticateHeader2.getRealm();
                if (realm2.contains("3GPP-bootstrapping")) {
                    IMSLog.i(GbaHttpController.TAG, "Retry GBA authentication...");
                    if (httpRequestParams.getIpVersion() > 0) {
                        DnsController dnsController = (DnsController) httpRequestParams.getDns();
                        dnsController.setNaf(false);
                        httpRequestParams.setDns(dnsController);
                    }
                    IMSLog.i(GbaHttpController.TAG, "onComplete: 401 Unauthorized. reset GbaKey");
                    GbaHttpController.this.mGbaServiceModule.resetGbaKey(realm2, httpRequestParams.getPhoneId());
                    IGbaServiceModule iGbaServiceModule = GbaHttpController.this.mGbaServiceModule;
                    HttpRequestParams httpRequestParams2 = httpRequestParams;
                    iGbaServiceModule.getBtidAndGbaKey(httpRequestParams2, realm2, httpResponseParams2, GbaHttpController.this.getGbaCallback(httpResponseParams2, httpRequestParams2, url));
                    return;
                }
                IMSLog.i(GbaHttpController.TAG, "HTTP digest without GBA");
                GbaHttpController.this.sendRequestWithAuthorization(url, httpRequestParams, httpResponseParams2, httpRequestParams.getUserName(), httpRequestParams.getPassword(), false);
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams2) {
                if (httpResponseParams2 == null) {
                    IMSLog.e(GbaHttpController.TAG, "onComplete: the response of 2nd time naf request build failure");
                    return;
                }
                GbaHttpController.this.loggingHttpMessage(httpResponseParams2.toString(), 1);
                int statusCode = httpResponseParams2.getStatusCode();
                IMSLog.c(LogClass.UT_HTTP, httpRequestParams.getPhoneId() + ",<," + statusCode);
                LastAuthInfo lastAuthInfo2 = GbaHttpController.this.getLastAuthInfo(url.toString(), httpRequestParams.getPhoneId());
                if (statusCode == 200 || statusCode == 201 || statusCode == 202) {
                    if (lastAuthInfo2 != null) {
                        lastAuthInfo2.btid = str;
                        lastAuthInfo2.gbaKey = str2;
                        if (handleRequestSuccessWithGba(httpResponseParams2, lastAuthInfo2)) {
                            httpRequestParams.getCallback().onFail(new IOException("AuthInfoHeader is invalid"));
                            return;
                        } else {
                            GbaHttpController.this.mLastAuthInfoMap.put(GbaUtility.generateLastAuthInfoKey(url.toString(), httpRequestParams.getPhoneId()), lastAuthInfo2);
                        }
                    }
                } else {
                    if (statusCode == 401) {
                        handleRequestWithAuthenticate(httpResponseParams2);
                        return;
                    }
                    IMSLog.e(GbaHttpController.TAG, "onComplete: The response status code of 2nd time naf request is not 200");
                }
                httpRequestParams.getCallback().onComplete(httpResponseParams2);
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.d(GbaHttpController.TAG, "The Second time naf request onFail: " + iOException.getMessage());
                if (GbaHttpController.this.mGbaServiceModule != null) {
                    GbaHttpController.this.mGbaServiceModule.resetGbaKey(realm, httpRequestParams.getPhoneId());
                }
                LastAuthInfo lastAuthInfo2 = GbaHttpController.this.getLastAuthInfo(url.toString(), httpRequestParams.getPhoneId());
                if (lastAuthInfo2 != null) {
                    lastAuthInfo2.reset();
                }
                httpRequestParams.getCallback().onFail(iOException);
            }
        }, httpRequestParams);
        if (httpRequestParams.getMethod() == method2) {
            makeHttpRequestParams.setPostBody(httpRequestParams.getPostBody());
        }
        if (httpRequestParams.getDns() != null) {
            if (httpRequestParams.getIpVersion() > 0) {
                DnsController dnsController = (DnsController) httpRequestParams.getDns();
                dnsController.setNaf(true);
                httpRequestParams.setDns(dnsController);
            }
            makeHttpRequestParams.setDns(httpRequestParams.getDns());
        }
        IMSLog.c(LogClass.UT_HTTP, makeHttpRequestParams.getPhoneId() + ",>," + makeHttpRequestParams.getMethodString());
        HttpController.getInstance().execute(makeHttpRequestParams);
        loggingHttpMessage(makeHttpRequestParams.toString(), 0);
    }

    public void sendBsfRequest(String str, int i, String str2, String str3, String str4, byte[] bArr, byte[] bArr2, boolean z, HttpRequestParams httpRequestParams) {
        String buildUrl = buildUrl(httpRequestParams.getPhoneId(), httpRequestParams.getUseTls(), str, i);
        if (this.mGbaServiceModule == null) {
            this.mGbaServiceModule = ImsRegistry.getServiceModuleManager().getGbaServiceModule();
        }
        HashMap hashMap = new HashMap();
        hashMap.put(HttpController.HEADER_HOST, str);
        StringBuilder sb = new StringBuilder();
        sb.append("GBA-service; 0.1; ");
        sb.append(z ? "3gpp-gba-uicc" : "3gpp-gba-tmpi");
        hashMap.put("User-Agent", sb.toString());
        hashMap.put("Authorization", AuthorizationHeader.getAuthorizationHeader(str2, str4, "/", "", ""));
        if (httpRequestParams.getUseImei()) {
            hashMap.put(HttpController.HEADER_X_TMUS_IMEI, str3);
        }
        HttpRequestParams makeHttpRequestParams = makeHttpRequestParams(HttpRequestParams.Method.GET, buildUrl, hashMap, getBsfRequestCallback(str, str2, str3, bArr, bArr2, z, httpRequestParams, buildUrl), httpRequestParams);
        if (UtUtils.isBsfDisableTls(makeHttpRequestParams.getPhoneId())) {
            IMSLog.i(TAG, "sendBsfRequest() Bsf disable Tls");
            makeHttpRequestParams.setUseTls(false);
        }
        IMSLog.c(LogClass.UT_HTTP, makeHttpRequestParams.getPhoneId() + ",>," + makeHttpRequestParams.getMethodString());
        HttpController.getInstance().execute(makeHttpRequestParams);
        loggingHttpMessage(makeHttpRequestParams.toString(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendBsfRequestWithAuthorization(String str, String str2, WwwAuthenticateHeader wwwAuthenticateHeader, String str3, String str4, byte[] bArr, byte[] bArr2, boolean z, HttpRequestParams httpRequestParams) {
        HttpRequestParams.HttpRequestCallback anonymousClass3;
        String str5 = TAG;
        IMSLog.d(str5, "GBA: sendBsfRequestWithAuthorization(): username: " + str2);
        GbaData password = this.mGbaServiceModule.getPassword(wwwAuthenticateHeader.getNonce(), z, httpRequestParams.getPhoneId());
        if (password == null) {
            gbaFailCallbacksDeQ(httpRequestParams.getToken(), new GbaException("GBA FAIL akaKeys null", 3));
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(HttpController.HEADER_HOST, str3);
        StringBuilder sb = new StringBuilder();
        sb.append("GBA-service; 0.1; ");
        sb.append(z ? "3gpp-gba-uicc" : "3gpp-gba-tmpi");
        hashMap.put("User-Agent", sb.toString());
        if (httpRequestParams.getUseImei()) {
            hashMap.put(HttpController.HEADER_X_TMUS_IMEI, str4);
        }
        String password2 = password.getPassword();
        if (password2.startsWith("dc")) {
            IMSLog.i(str5, "sendBsfRequestWithAuthorization - AUTH_SQN_FAIL, akaPassword = " + password2);
            byte[] hexStringToBytes = StrUtil.hexStringToBytes(password2);
            if (hexStringToBytes != null && hexStringToBytes.length > 1) {
                byte b = hexStringToBytes[1];
                if (b <= 0) {
                    IMSLog.e(str5, "Invalid autsLength.");
                    gbaFailCallbacksDeQ(httpRequestParams.getToken(), null);
                    return;
                } else {
                    hashMap.put("Authorization", AuthorizationHeader.getAuthorizationHeader(str2, "", wwwAuthenticateHeader.getRealm(), "GET", "/", new String(Base64.encodeBase64(Arrays.copyOfRange(hexStringToBytes, 2, b + 2)), StandardCharsets.UTF_8), wwwAuthenticateHeader));
                    anonymousClass3 = getBsfRequestCallback(str3, str2, str4, bArr, bArr2, z, httpRequestParams, str);
                    hashMap = hashMap;
                }
            } else {
                IMSLog.e(str5, "Invalid simResponse.");
                gbaFailCallbacksDeQ(httpRequestParams.getToken(), null);
                return;
            }
        } else {
            hashMap.put("Authorization", AuthorizationHeader.getAuthorizationHeader(str2, password.getPassword(), wwwAuthenticateHeader.getRealm(), "GET", "/", wwwAuthenticateHeader));
            anonymousClass3 = new AnonymousClass3(httpRequestParams, wwwAuthenticateHeader, bArr, bArr2, password, z);
        }
        HttpRequestParams makeHttpRequestParams = makeHttpRequestParams(HttpRequestParams.Method.GET, str, hashMap, anonymousClass3, httpRequestParams);
        if (UtUtils.isBsfDisableTls(makeHttpRequestParams.getPhoneId())) {
            IMSLog.i(str5, "GBA: Bsf disable Tls");
            makeHttpRequestParams.setUseTls(false);
        }
        IMSLog.c(LogClass.UT_HTTP, makeHttpRequestParams.getPhoneId() + ",>," + makeHttpRequestParams.getMethodString());
        HttpController.getInstance().execute(makeHttpRequestParams);
        loggingHttpMessage(makeHttpRequestParams.toString(), 0);
    }

    /* renamed from: com.sec.internal.ims.util.httpclient.GbaHttpController$3, reason: invalid class name */
    class AnonymousClass3 implements HttpRequestParams.HttpRequestCallback {
        final /* synthetic */ GbaData val$akaKeys;
        final /* synthetic */ byte[] val$gbaType;
        final /* synthetic */ boolean val$isGbaSupported;
        final /* synthetic */ byte[] val$nafId;
        final /* synthetic */ HttpRequestParams val$requestParams;
        final /* synthetic */ WwwAuthenticateHeader val$wwwAuthParsedHeader;

        AnonymousClass3(HttpRequestParams httpRequestParams, WwwAuthenticateHeader wwwAuthenticateHeader, byte[] bArr, byte[] bArr2, GbaData gbaData, boolean z) {
            this.val$requestParams = httpRequestParams;
            this.val$wwwAuthParsedHeader = wwwAuthenticateHeader;
            this.val$gbaType = bArr;
            this.val$nafId = bArr2;
            this.val$akaKeys = gbaData;
            this.val$isGbaSupported = z;
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x0156, code lost:
        
            if (((java.lang.Boolean) r1.map(new com.sec.internal.ims.util.httpclient.GbaHttpController$3$$ExternalSyntheticLambda1(r4)).orElse(java.lang.Boolean.FALSE)).booleanValue() != false) goto L37;
         */
        @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onComplete(com.sec.internal.helper.httpclient.HttpResponseParams r14) {
            /*
                Method dump skipped, instructions count: 439
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.util.httpclient.GbaHttpController.AnonymousClass3.onComplete(com.sec.internal.helper.httpclient.HttpResponseParams):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Boolean lambda$onComplete$0(HttpRequestParams httpRequestParams, String str) {
            return Boolean.valueOf(httpRequestParams.getUrl().contains(str));
        }

        @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
        public void onFail(IOException iOException) {
            IMSLog.c(LogClass.UT_ERROR_HANDLE, this.val$requestParams.getPhoneId() + "," + IMSLog.numberChecker(iOException.getMessage()));
            GbaHttpController.this.gbaFailCallbacksDeQ(this.val$requestParams.getToken(), new GbaException(iOException.getMessage(), 3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IGbaCallback getGbaCallback(final HttpResponseParams httpResponseParams, final HttpRequestParams httpRequestParams, final URL url) {
        return new IGbaCallback() { // from class: com.sec.internal.ims.util.httpclient.GbaHttpController.4
            @Override // com.sec.internal.interfaces.ims.gba.IGbaCallback
            public void onComplete(int i, String str, String str2, boolean z, HttpResponseParams httpResponseParams2) {
                if (str == null || str2 == null) {
                    IMSLog.e(GbaHttpController.TAG, "gbaCallBack:  cannot get username and password for GBA");
                    httpRequestParams.getCallback().onFail(new IOException("GbaKey null"));
                } else {
                    GbaHttpController.this.sendRequestWithAuthorization(url, httpRequestParams, httpResponseParams, str, str2, z);
                }
            }

            @Override // com.sec.internal.interfaces.ims.gba.IGbaCallback
            public void onFail(int i, GbaException gbaException) {
                httpRequestParams.getCallback().onFail(new IOException(gbaException.getMessage(), gbaException));
            }
        };
    }

    private HttpRequestParams.HttpRequestCallback getBsfRequestCallback(final String str, final String str2, final String str3, final byte[] bArr, final byte[] bArr2, final boolean z, final HttpRequestParams httpRequestParams, final String str4) {
        return new HttpRequestParams.HttpRequestCallback() { // from class: com.sec.internal.ims.util.httpclient.GbaHttpController.5
            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onComplete(HttpResponseParams httpResponseParams) {
                if (httpResponseParams == null) {
                    IMSLog.e(GbaHttpController.TAG, "bsfRequestCallback: onComplete: response build failure");
                    GbaHttpController.this.gbaFailCallbacksDeQ(httpRequestParams.getToken(), new GbaException("Result null", 3));
                    return;
                }
                GbaHttpController.this.loggingHttpMessage(httpResponseParams.toString(), 1);
                int statusCode = httpResponseParams.getStatusCode();
                IMSLog.c(LogClass.UT_HTTP, httpRequestParams.getPhoneId() + ",<," + statusCode);
                if (statusCode != 401) {
                    IMSLog.e(GbaHttpController.TAG, "bsfRequestCallback: onComplete: unexpected response code: " + statusCode);
                    GbaHttpController.this.gbaFailCallbacksDeQ(httpRequestParams.getToken(), new GbaException("unexpected response", statusCode));
                    return;
                }
                WwwAuthenticateHeader wwwAuthenticateHeader = GbaHttpController.this.getWwwAuthenticateHeader(httpResponseParams);
                if (wwwAuthenticateHeader == null) {
                    IMSLog.e(GbaHttpController.TAG, "bsfRequestCallback: onComplete: missing header: WWW-Authenticate");
                    GbaHttpController.this.gbaFailCallbacksDeQ(httpRequestParams.getToken(), new GbaException("AuthenticateHeader null", 3));
                } else {
                    GbaHttpController.this.sendBsfRequestWithAuthorization(str4, str2, wwwAuthenticateHeader, str, str3, bArr, bArr2, z, httpRequestParams);
                }
            }

            @Override // com.sec.internal.helper.httpclient.HttpRequestParams.HttpRequestCallback
            public void onFail(IOException iOException) {
                IMSLog.c(LogClass.UT_ERROR_HANDLE, httpRequestParams.getPhoneId() + "," + IMSLog.numberChecker(iOException.getMessage()));
                GbaHttpController.this.gbaFailCallbacksDeQ(httpRequestParams.getToken(), new GbaException(iOException.getMessage(), 3));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean useGba(HttpRequestParams httpRequestParams) {
        Map<String, String> headers = httpRequestParams.getHeaders();
        String str = headers != null ? headers.get("User-Agent") : null;
        if (str == null) {
            IMSLog.d(TAG, "useGba(): no headers");
            return false;
        }
        IMSLog.d(TAG, "useGba(): User-Agent: " + str);
        return str.contains("3gpp-gba");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WwwAuthenticateHeader getWwwAuthenticateHeader(HttpResponseParams httpResponseParams) {
        Map<String, List<String>> headers = httpResponseParams.getHeaders();
        List<String> list = headers.get("WWW-Authenticate");
        if (list == null || list.size() == 0) {
            list = headers.get("WWW-Authenticate".toLowerCase());
        }
        if (list != null && list.size() != 0) {
            try {
                return new WwwAuthHeaderParser().parseHeaderValue(list.get(0));
            } catch (IllegalArgumentException e) {
                IMSLog.e(TAG, "getWwwAuthenticateHeader: unable to parse wwwAuthHeader : " + e.getMessage());
                e.printStackTrace();
            }
        }
        return null;
    }

    private String buildUrl(int i, boolean z, String str, int i2) {
        StringBuilder sb = new StringBuilder();
        if (i2 == 443 || (z && SimUtil.getSimMno(i).isOneOf(Mno.SPARK))) {
            sb.append("https://");
        } else {
            sb.append("http://");
        }
        sb.append(str);
        sb.append(':');
        sb.append(i2);
        sb.append('/');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gbaCallbacksDeQ(int i, String str, String str2, boolean z, HttpResponseParams httpResponseParams) {
        IGbaCallback gbaCallback = this.mGbaServiceModule.getGbaCallback(i);
        if (gbaCallback != null) {
            this.mGbaServiceModule.removeGbaCallback(i);
            gbaCallback.onComplete(i, str, str2, z, httpResponseParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gbaFailCallbacksDeQ(int i, GbaException gbaException) {
        IGbaCallback gbaCallback = this.mGbaServiceModule.getGbaCallback(i);
        if (gbaCallback != null) {
            this.mGbaServiceModule.removeGbaCallback(i);
            gbaCallback.onFail(i, gbaException);
        }
    }

    private HttpRequestParams makeHttpRequestParams(HttpRequestParams.Method method, String str, Map<String, String> map, HttpRequestParams.HttpRequestCallback httpRequestCallback, HttpRequestParams httpRequestParams) {
        HttpRequestParams httpRequestParams2 = new HttpRequestParams(method, str, map, httpRequestCallback);
        if (httpRequestParams.getSocketFactory() != null) {
            httpRequestParams2.setSocketFactory(httpRequestParams.getSocketFactory());
        }
        if (httpRequestParams.getDns() != null) {
            httpRequestParams2.setDns(httpRequestParams.getDns());
        }
        httpRequestParams2.setReuseConnection(httpRequestParams.isReuseConnection());
        httpRequestParams2.setPhoneId(httpRequestParams.getPhoneId());
        httpRequestParams2.setUseTls(httpRequestParams.getUseTls());
        httpRequestParams2.setIgnoreServerCert(httpRequestParams.getIgnoreServerCert());
        httpRequestParams2.setConnectionTimeout(httpRequestParams.getConnectionTimeout());
        httpRequestParams2.setReadTimeout(httpRequestParams.getReadTimeout());
        httpRequestParams2.setProxy(httpRequestParams.getProxy());
        httpRequestParams2.setUseProxy(httpRequestParams.getUseProxy());
        httpRequestParams2.setToken(httpRequestParams.getToken());
        httpRequestParams2.setCipherSuiteType(httpRequestParams.getCipherSuiteType());
        return httpRequestParams2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isNeedCSFB(int i, int i2) {
        return SimUtil.getSimMno(i2) == Mno.TELECOM_ITALY && i == 401;
    }

    private static String getAcceptEncoding(int i) {
        return SimUtil.getSimMno(i).isOneOf(Mno.H3G, Mno.SMARTFREN, Mno.TMOUS, Mno.DISH, Mno.TELE2_RUSSIA) ? "" : "*";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LastAuthInfo getLastAuthInfo(String str, int i) {
        return this.mLastAuthInfoMap.get(GbaUtility.generateLastAuthInfoKey(str, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void storeLastAuthInfo(HttpResponseParams httpResponseParams, HttpRequestParams httpRequestParams) {
        LastAuthInfo lastAuthInfo = new LastAuthInfo();
        lastAuthInfo.digestAuth = new DigestAuth();
        lastAuthInfo.lastNafResult = httpResponseParams;
        this.mLastAuthInfoMap.put(GbaUtility.generateLastAuthInfoKey(httpRequestParams.getUrl(), httpRequestParams.getPhoneId()), lastAuthInfo);
    }

    private boolean isValidAuthInfo(LastAuthInfo lastAuthInfo) {
        Date date;
        if (lastAuthInfo == null || lastAuthInfo.btid == null || lastAuthInfo.LifeTime == null) {
            return false;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        try {
            date = simpleDateFormat.parse(lastAuthInfo.LifeTime);
        } catch (ParseException e) {
            IMSLog.e(TAG, "lifetime parseException" + e.getMessage());
            lastAuthInfo.reset();
            date = null;
        }
        if (isKeyAlive(date) && lastAuthInfo.lastNafResult != null) {
            return true;
        }
        IMSLog.e(TAG, "Btid LifeTime expired");
        lastAuthInfo.LifeTime = null;
        return false;
    }

    private boolean isKeyAlive(Date date) {
        if (date == null) {
            return false;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        Date date2 = new Date();
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return date.getTime() > date2.getTime() + (((long) 0) * 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loggingHttpMessage(String str, int i) {
        if (str == null || Debug.isProductShip()) {
            return;
        }
        String hidePrivateInfoFromMsg = hidePrivateInfoFromMsg(str.replaceAll("HttpRequestParams.*\r\n.*mMethod: ", "").replaceAll("HttpResponseParams.*\r\n.*mStatusCode=", "HTTP/1.1 ").replaceAll("\r\n.*mUrl: ", " "));
        String format = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss.SSS", Locale.getDefault()).format(new Date());
        IImsDiagMonitor imsDiagMonitor = ImsRegistry.getImsDiagMonitor();
        if (imsDiagMonitor == null) {
            Log.i(TAG, "NULL Diag Mointor Pointer");
        } else {
            imsDiagMonitor.onIndication(1, hidePrivateInfoFromMsg, 100, i, format, "", "", "");
        }
    }

    private String hidePrivateInfoFromMsg(String str) {
        return !Debug.isProductShip() ? str : str.replaceAll("sip:+[0-9+-]+", "sip:xxxxxxxxxxxxxxx").replaceAll("tel:+[0-9+-]+", "tel:xxxxxxxxxxxxxxx").replaceAll("imei:+[0-9+-]+", "imei:xxxxxxxx").replaceAll("username=\"+[^\"]+", "username=xxxxxxxxxxxxxxx").replaceAll("\"+[0-9+-]+\"", "\"xxxxxxxxxxxxxxx\"").replaceAll("target>+.+</.*target", "target>xxxxxxxxxxxxxxx</target");
    }
}
