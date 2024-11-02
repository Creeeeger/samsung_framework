package com.sec.android.diagmonagent.log.ged.util;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.ArrayLinkedVariables$$ExternalSyntheticOutline0;
import com.android.settingslib.datetime.ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0;
import com.android.systemui.appops.AppOpItem$$ExternalSyntheticOutline0;
import com.sec.android.diagmonagent.common.NativeHelper;
import com.sec.android.diagmonagent.common.logger.AppLog;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class RestUtils {
    public static final String DEVICE_KEY = String.copyValueOf(NativeHelper.getRandomId());

    public static String calculateKey() {
        StringBuilder sb = new StringBuilder("");
        String str = DEVICE_KEY;
        return ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 7, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 11, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 43, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 17, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 5, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 8, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 12, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 18, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 42, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 38, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 37, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 32, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 6, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 24, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 28, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 35, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 41, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 1, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 2, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 25, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 30, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 34, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 36, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 26, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 31, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 19, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 27, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 0, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 33, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 13, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 14, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(ZoneGetter$ZoneGetterData$$ExternalSyntheticOutline0.m(str, 4, sb)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
    }

    public static String getIdentifier(Context context) {
        String str = "";
        String diagmonPreference = PreferenceUtils.getDiagmonPreference(context, "REST_IDENTIFIER", "");
        if (TextUtils.isEmpty(diagmonPreference)) {
            SecureRandom secureRandom = new SecureRandom();
            byte[] bArr = new byte[16];
            StringBuilder sb = new StringBuilder(32);
            for (int i = 0; i < 32; i++) {
                secureRandom.nextBytes(bArr);
                try {
                    sb.append("0123456789abcdefghijklmjopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".charAt((int) (Math.abs(new BigInteger(bArr).longValue()) % 62)));
                } catch (Exception e) {
                    AppLog.e("failed to generate RandomDeviceId : " + e.getMessage());
                }
            }
            str = sb.toString();
            AppLog.d("Generated randomId : " + str);
            context.getSharedPreferences("DIAGMON_PREFERENCE", 0).edit().remove("REST_IDENTIFIER").apply();
            PreferenceUtils.setDiagmonPreference(context, "REST_IDENTIFIER", str);
            diagmonPreference = str;
        }
        AppLog.d("Stored randomId : " + diagmonPreference);
        return diagmonPreference;
    }

    public static byte[] getSHADigest(String str) {
        try {
            byte[] bytes = str.getBytes(Charset.defaultCharset());
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.reset();
            return messageDigest.digest(bytes);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
    
        if (r5.body.contains("4412") != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0036, code lost:
    
        if (r5.code == 401) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isTokenNeedToBeUpdated(android.content.Context r4, com.sec.android.diagmonagent.log.ged.servreinterface.model.response.Response r5) {
        /*
            java.lang.String r0 = "JWT_TOKEN"
            java.lang.String r1 = ""
            java.lang.String r4 = com.sec.android.diagmonagent.log.ged.util.PreferenceUtils.getDiagmonPreference(r4, r0, r1)
            boolean r4 = r4.isEmpty()
            r0 = 1
            r4 = r4 ^ r0
            if (r4 == 0) goto L60
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r1 = "Check token expired : "
            r4.<init>(r1)
            int r1 = r5.code
            r4.append(r1)
            java.lang.String r1 = r5.body
            r4.append(r1)
            java.lang.String r4 = r4.toString()
            com.sec.android.diagmonagent.common.logger.AppLog.d(r4)
            java.lang.String r4 = r5.body
            r1 = 0
            r2 = 401(0x191, float:5.62E-43)
            if (r4 != 0) goto L39
            java.lang.String r4 = "Response body is null"
            com.sec.android.diagmonagent.common.logger.AppLog.w(r4)
            int r4 = r5.code
            if (r4 != r2) goto L5b
            goto L59
        L39:
            int r3 = r5.code
            if (r3 != r2) goto L5b
            java.lang.String r2 = "4410"
            boolean r4 = r4.contains(r2)
            if (r4 != 0) goto L59
            java.lang.String r4 = r5.body
            java.lang.String r2 = "4411"
            boolean r4 = r4.contains(r2)
            if (r4 != 0) goto L59
            java.lang.String r4 = r5.body
            java.lang.String r5 = "4412"
            boolean r4 = r4.contains(r5)
            if (r4 == 0) goto L5b
        L59:
            r4 = r0
            goto L5c
        L5b:
            r4 = r1
        L5c:
            if (r4 == 0) goto L5f
            goto L60
        L5f:
            return r1
        L60:
            java.lang.String r4 = "Token need to be updated."
            com.sec.android.diagmonagent.common.logger.AppLog.d(r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.android.diagmonagent.log.ged.util.RestUtils.isTokenNeedToBeUpdated(android.content.Context, com.sec.android.diagmonagent.log.ged.servreinterface.model.response.Response):boolean");
    }

    public static String makeAuth(Context context, String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder();
        String str5 = "s7gna8vjt1:com.sec.android.diagmonagent:" + getIdentifier(context) + ":" + calculateKey();
        if (!str3.isEmpty()) {
            str = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, ":", str3);
        }
        AppLog.d("part1 = " + str5);
        AppLog.d("part2 = " + str);
        String str6 = new String(Base64.encode(getSHADigest(str5), 2));
        String str7 = new String(Base64.encode(getSHADigest(str), 2));
        AppOpItem$$ExternalSyntheticOutline0.m(sb, str6, ":", str2, ":");
        sb.append(str4);
        sb.append(":");
        sb.append(str7);
        AppLog.d("signature = " + ((Object) sb));
        String str8 = new String(Base64.encode(getSHADigest(sb.toString()), 2));
        AppLog.d("hash = ".concat(str8));
        return "Bearer=\"" + str4 + "\",auth_identifier=\"ALLNEWDIAGMON-AUTH\",server_id=\"s7gna8vjt1\",service_id=\"" + str2 + "\",identifier=\"" + getIdentifier(context) + "\",signature=\"" + str8 + "\"";
    }

    public static String makeAuth(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        String str2 = "s7gna8vjt1:com.sec.android.diagmonagent:" + getIdentifier(context) + ":" + calculateKey();
        AppLog.d("part1 = " + str2);
        AppLog.d("part2 = " + str);
        String str3 = new String(Base64.encode(getSHADigest(str2), 2));
        String str4 = new String(Base64.encode(getSHADigest(str), 2));
        sb.append(str3);
        sb.append(":x6g1q14r77:");
        sb.append(str4);
        AppLog.d("signature = " + ((Object) sb));
        String str5 = new String(Base64.encode(getSHADigest(sb.toString()), 2));
        AppLog.d("hash = ".concat(str5));
        return "auth_identifier=\"ALLNEWDIAGMON-AUTH\",server_id=\"s7gna8vjt1\",service_id=\"x6g1q14r77\",identifier=\"" + getIdentifier(context) + "\",signature=\"" + str5 + "\"";
    }
}
