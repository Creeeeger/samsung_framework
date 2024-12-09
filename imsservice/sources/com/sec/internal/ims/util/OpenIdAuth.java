package com.sec.internal.ims.util;

import android.net.Network;
import android.util.Log;
import com.sec.internal.helper.HttpRequest;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.servicemodules.im.util.FileTaskUtil;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class OpenIdAuth {
    private static final String LOG_TAG = "OpenIdAuth";

    public static class OpenIdRequest {
        private final boolean mIsTrustAllCert;
        private final Network mNetwork;
        private final int mPhoneId;
        private final String mUrl;
        private final String mUserAgent;

        public OpenIdRequest(int i, String str, Network network, String str2, boolean z) {
            this.mPhoneId = i;
            this.mUrl = str;
            this.mNetwork = network;
            this.mUserAgent = str2;
            this.mIsTrustAllCert = z;
        }
    }

    public static String sendAuthRequest(OpenIdRequest openIdRequest) throws HttpRequest.HttpRequestException {
        String eAPAkaChallengeResponse;
        int code;
        HttpRequest httpRequest = HttpRequest.get(openIdRequest.mUrl);
        setDefaultHeaders(httpRequest, openIdRequest);
        int code2 = httpRequest.code();
        if (code2 == 200) {
            Log.d(LOG_TAG, "200 OK received");
            if (httpRequest.header("Content-Type") != null && httpRequest.header("Content-Type").contains("application/vnd.gsma.eap-relay.v1.0+json")) {
                httpRequest.disconnect();
                String body = httpRequest.body();
                if (body != null && (eAPAkaChallengeResponse = HttpAuthGenerator.getEAPAkaChallengeResponse(openIdRequest.mPhoneId, body)) != null) {
                    httpRequest = HttpRequest.post(openIdRequest.mUrl);
                    setDefaultHeaders(httpRequest, openIdRequest);
                    httpRequest.send(eAPAkaChallengeResponse);
                    code = httpRequest.code();
                    code2 = code;
                }
            }
        } else if (code2 == 302) {
            Log.d(LOG_TAG, "Received 302");
        } else if (code2 == 401) {
            String str = LOG_TAG;
            Log.d(str, "Receive 401 Unauthorized, attempt to generate response");
            httpRequest.disconnect();
            String wwwAuthenticate = httpRequest.wwwAuthenticate();
            IMSLog.s(str, "challenge: " + wwwAuthenticate);
            String authorizationHeader = HttpAuthGenerator.getAuthorizationHeader(openIdRequest.mPhoneId, openIdRequest.mUrl, wwwAuthenticate, "GET", httpRequest.getCipherSuite());
            HttpRequest httpRequest2 = HttpRequest.get(openIdRequest.mUrl);
            setDefaultHeaders(httpRequest2, openIdRequest);
            httpRequest2.authorization(authorizationHeader);
            code = httpRequest2.code();
            httpRequest = httpRequest2;
            code2 = code;
        } else {
            IMSLog.s(LOG_TAG, "Receive HTTP response " + httpRequest.message() + " neither 302 nor UNAUTHORIZED");
        }
        if (code2 == 302) {
            return httpRequest.header("Location");
        }
        Log.d(LOG_TAG, "Did not receive 302 after authentication, received : " + code2);
        return null;
    }

    private static void setDefaultHeaders(HttpRequest httpRequest, OpenIdRequest openIdRequest) {
        httpRequest.setParams(openIdRequest.mNetwork, false, 10000, FileTaskUtil.READ_DATA_TIMEOUT, openIdRequest.mUserAgent);
        if (openIdRequest.mIsTrustAllCert) {
            httpRequest.trustAllCerts().trustAllHosts();
        }
        if (RcsPolicyManager.getRcsStrategy(openIdRequest.mPhoneId).boolSetting(RcsPolicySettings.RcsPolicy.IS_EAP_SUPPORTED)) {
            httpRequest.header("Accept", "application/vnd.gsma.eap-relay.v1.0+json");
        }
    }
}
