package com.sec.internal.ims.config.util;

import com.sec.internal.helper.ByteArrayWriter;
import com.sec.internal.helper.StrUtil;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class TelephonySupport {
    private static final String LOG_TAG = "TelephonySupport";

    /* JADX WARN: Removed duplicated region for block: B:26:0x008d A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.sec.internal.ims.config.util.AkaResponse buildAkaResponse(java.lang.String r8) {
        /*
            byte[] r8 = com.sec.internal.helper.StrUtil.hexStringToBytes(r8)
            r0 = 0
            if (r8 == 0) goto L87
            r1 = 0
            r2 = r8[r1]     // Catch: java.lang.Exception -> L67
            r3 = -37
            r4 = 1
            r5 = 2
            if (r2 != r3) goto L4f
            java.lang.String r2 = com.sec.internal.ims.config.util.TelephonySupport.LOG_TAG     // Catch: java.lang.Exception -> L67
            java.lang.String r3 = "calculateAkaResponse: in"
            android.util.Log.d(r2, r3)     // Catch: java.lang.Exception -> L67
            r2 = r8[r4]     // Catch: java.lang.Exception -> L67
            if (r2 <= 0) goto L21
            byte[] r3 = new byte[r2]     // Catch: java.lang.Exception -> L67
            java.lang.System.arraycopy(r8, r5, r3, r1, r2)     // Catch: java.lang.Exception -> L4b
            goto L22
        L21:
            r3 = r0
        L22:
            int r4 = r2 + 2
            r4 = r8[r4]     // Catch: java.lang.Exception -> L4b
            if (r4 <= 0) goto L30
            byte[] r5 = new byte[r4]     // Catch: java.lang.Exception -> L4b
            int r6 = r2 + 3
            java.lang.System.arraycopy(r8, r6, r5, r1, r4)     // Catch: java.lang.Exception -> L47
            goto L31
        L30:
            r5 = r0
        L31:
            int r6 = r2 + 3
            int r6 = r6 + r4
            r6 = r8[r6]     // Catch: java.lang.Exception -> L47
            if (r6 <= 0) goto L44
            byte[] r7 = new byte[r6]     // Catch: java.lang.Exception -> L47
            int r2 = r2 + 4
            int r2 = r2 + r4
            java.lang.System.arraycopy(r8, r2, r7, r1, r6)     // Catch: java.lang.Exception -> L41
            goto L45
        L41:
            r8 = move-exception
            r1 = r0
            goto L6c
        L44:
            r7 = r0
        L45:
            r8 = r0
            goto L8b
        L47:
            r8 = move-exception
            r1 = r0
            r7 = r1
            goto L6c
        L4b:
            r8 = move-exception
            r1 = r0
            r5 = r1
            goto L6b
        L4f:
            r3 = -36
            if (r2 != r3) goto L87
            r2 = r8[r4]     // Catch: java.lang.Exception -> L67
            if (r2 <= 0) goto L87
            byte[] r3 = new byte[r2]     // Catch: java.lang.Exception -> L67
            java.lang.System.arraycopy(r8, r5, r3, r1, r2)     // Catch: java.lang.Exception -> L61
            r5 = r0
            r7 = r5
            r8 = r3
            r3 = r7
            goto L8b
        L61:
            r8 = move-exception
            r5 = r0
            r7 = r5
            r1 = r3
            r3 = r7
            goto L6c
        L67:
            r8 = move-exception
            r1 = r0
            r3 = r1
            r5 = r3
        L6b:
            r7 = r5
        L6c:
            r8.printStackTrace()
            java.lang.String r2 = com.sec.internal.ims.config.util.TelephonySupport.LOG_TAG
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r6 = "error2:"
            r4.append(r6)
            r4.append(r8)
            java.lang.String r8 = r4.toString()
            android.util.Log.d(r2, r8)
            r8 = r1
            goto L8b
        L87:
            r8 = r0
            r3 = r8
            r5 = r3
            r7 = r5
        L8b:
            if (r3 != 0) goto L90
            if (r8 != 0) goto L90
            goto L95
        L90:
            com.sec.internal.ims.config.util.AkaResponse r0 = new com.sec.internal.ims.config.util.AkaResponse
            r0.<init>(r5, r7, r8, r3)
        L95:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.config.util.TelephonySupport.buildAkaResponse(java.lang.String):com.sec.internal.ims.config.util.AkaResponse");
    }

    public static byte[] buildMainKey(String str, String str2) {
        AkaResponse buildAkaResponse = buildAkaResponse(str2);
        if (buildAkaResponse == null) {
            return null;
        }
        byte[] bytes = str.getBytes();
        byte[] ik = buildAkaResponse.getIk();
        String str3 = LOG_TAG;
        IMSLog.s(str3, "IK :" + StrUtil.bytesToHexString(ik));
        byte[] ck = buildAkaResponse.getCk();
        IMSLog.s(str3, "CK :" + StrUtil.bytesToHexString(ck));
        if (ik == null || ck == null) {
            return null;
        }
        ByteArrayWriter byteArrayWriter = new ByteArrayWriter(bytes.length + ik.length + ck.length);
        byteArrayWriter.write(bytes);
        byteArrayWriter.write(ik);
        byteArrayWriter.write(ck);
        return byteArrayWriter.getResult();
    }
}
