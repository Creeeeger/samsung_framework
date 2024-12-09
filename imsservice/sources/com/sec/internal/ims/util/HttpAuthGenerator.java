package com.sec.internal.ims.util;

import android.net.Uri;
import android.telephony.IBootstrapAuthenticationCallback;
import android.telephony.gba.GbaAuthRequest;
import android.text.TextUtils;
import android.util.Base64;
import com.sec.internal.constants.Mno;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.StrUtil;
import com.sec.internal.helper.header.AuthorizationHeader;
import com.sec.internal.helper.header.WwwAuthenticateHeader;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.helper.parser.WwwAuthHeaderParser;
import com.sec.internal.ims.config.util.AKAEapAuthHelper;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.gba.GbaException;
import com.sec.internal.ims.gba.GbaUtility;
import com.sec.internal.ims.gba.GbaValue;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.ImConfig;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.gba.IGbaCallback;
import com.sec.internal.interfaces.ims.gba.IGbaServiceModule;
import com.sec.internal.log.IMSLog;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class HttpAuthGenerator {
    private static final String AKAV1_MD5 = "AKAv1-MD5";
    private static final String AKAV2_MD5 = "AKAv2-MD5";
    private static final String LOG_TAG = "HttpAuthGenerator";

    public static String generate(String str, String str2, String str3, String str4, String str5) {
        String str6 = LOG_TAG;
        IMSLog.s(str6, "generateAuthHeader: challenge= " + str + " uri=" + str2 + " method=" + str3);
        StringBuilder sb = new StringBuilder();
        sb.append("generateAuthHeader: user=");
        sb.append(str4);
        sb.append(" password=");
        sb.append(str5);
        IMSLog.s(str6, sb.toString());
        String[] split = str.split(" ");
        if (split.length < 2) {
            throw new IllegalArgumentException("challenge is not WWW-Authenticate");
        }
        if (WwwAuthenticateHeader.HEADER_PARAM_DIGEST_SCHEME.equalsIgnoreCase(split[0])) {
            return generateDigestAuthHeader(str, str2, str3, str4, str5);
        }
        if (WwwAuthenticateHeader.HEADER_PARAM_BASIC_SCHEME.equalsIgnoreCase(split[0])) {
            return generateBasicAuthHeader(str4, str5);
        }
        return null;
    }

    public static String getEAPAkaChallengeResponse(int i, String str) {
        String str2 = null;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("eap-relay-packet")) {
                String string = jSONObject.getString("eap-relay-packet");
                ISimManager simManager = SimManagerFactory.getSimManager();
                if (simManager == null) {
                    return null;
                }
                String bytesToHexString = StrUtil.bytesToHexString(Base64.decode(string.getBytes(StandardCharsets.UTF_8), 2));
                String generateChallengeResponse = AKAEapAuthHelper.generateChallengeResponse(bytesToHexString, simManager.getIsimAuthentication(AKAEapAuthHelper.getNonce(bytesToHexString)), AKAEapAuthHelper.composeRootNai(i));
                if (!TextUtils.isEmpty(generateChallengeResponse)) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("eap-relay-packet", generateChallengeResponse);
                    str2 = jSONObject2.toString();
                }
                IMSLog.s(LOG_TAG, "handleEapAkaChallenge akaResp: " + str2);
            }
        } catch (IllegalArgumentException | JSONException e) {
            IMSLog.e(LOG_TAG, "getEAPAkaChallengeResponse error: " + e.getMessage());
        }
        return str2;
    }

    public static String getAuthorizationHeader(int i, String str, String str2, String str3) {
        return getAuthorizationHeader(i, str, str2, str3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getAuthorizationHeader(int r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.util.HttpAuthGenerator.getAuthorizationHeader(int, java.lang.String, java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }

    private static IMnoStrategy getRcsStrategy(int i) {
        return RcsPolicyManager.getRcsStrategy(i);
    }

    private static ImConfig getImConfig(int i) {
        return ImConfig.getInstance(i);
    }

    private static String generateDigestAuthHeader(String str, String str2, String str3, String str4, String str5) {
        try {
            WwwAuthenticateHeader parseHeaderValue = new WwwAuthHeaderParser().parseHeaderValue(str);
            return AuthorizationHeader.getAuthorizationHeader(str4, str5, parseHeaderValue.getRealm(), str3, str2, parseHeaderValue);
        } catch (IllegalArgumentException e) {
            IMSLog.e(LOG_TAG, "generateDigestAuthHeader: unable to parse wwwAuthHeader : " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    public static String generateBasicAuthHeader(String str, String str2) {
        return "Basic " + Base64.encodeToString((str + ":" + str2).getBytes(StandardCharsets.UTF_8), 2);
    }

    public static synchronized String getGbaResponse(int i, final String str, final String str2, final String str3, String str4) throws UnsupportedEncodingException {
        synchronized (HttpAuthGenerator.class) {
            IGbaServiceModule gbaServiceModule = ImsRegistry.getServiceModuleManager().getGbaServiceModule();
            GbaAuthRequest gbaAuthRequest = new GbaAuthRequest(SimUtil.getSubId(i), 0, Uri.parse(str), GbaUtility.convertCipherSuite(str4, SimUtil.getSimMno(i).isOneOf(Mno.TMOUS, Mno.DISH)), false, (IBootstrapAuthenticationCallback) null);
            final String[] strArr = {""};
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            GbaValue gbaValue = gbaServiceModule.getGbaValue(i, GbaUtility.getNafUrl(str));
            if (gbaValue != null) {
                return generate(str2, GbaUtility.getNafPath(str), str3, gbaValue.getBtid(), Base64.encodeToString(gbaValue.getValue(), 2));
            }
            gbaServiceModule.getBtidAndGbaKey(gbaAuthRequest, new IGbaCallback() { // from class: com.sec.internal.ims.util.HttpAuthGenerator.1
                @Override // com.sec.internal.interfaces.ims.gba.IGbaCallback
                public void onComplete(int i2, String str5, String str6, boolean z, HttpResponseParams httpResponseParams) {
                    if (str5 != null && str6 != null) {
                        strArr[0] = HttpAuthGenerator.generate(str2, GbaUtility.getNafPath(str), str3, str5, str6);
                    }
                    countDownLatch.countDown();
                }

                @Override // com.sec.internal.interfaces.ims.gba.IGbaCallback
                public void onFail(int i2, GbaException gbaException) {
                    countDownLatch.countDown();
                }
            });
            try {
                countDownLatch.await(5000L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            return strArr[0];
        }
    }
}
