package com.sec.internal.ims.servicemodules.volte2.vcid;

import android.text.TextUtils;
import com.sec.internal.constants.ims.cmstore.utils.OMAGlobalVariables;
import com.sec.internal.ims.servicemodules.volte2.vcid.exception.NoFileUrlOnAlertInfoException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class VcidHelper {
    private static final String LOG_TAG = "VcidHelper";

    private VcidHelper() {
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isVcidCapable(android.content.Context r2, java.lang.String r3) {
        /*
            r0 = 0
            java.lang.String r3 = getFileUrl(r3)     // Catch: com.sec.internal.ims.servicemodules.volte2.vcid.exception.NoFileUrlOnAlertInfoException -> L15
            boolean r3 = android.text.TextUtils.isEmpty(r3)     // Catch: com.sec.internal.ims.servicemodules.volte2.vcid.exception.NoFileUrlOnAlertInfoException -> L15
            if (r3 == 0) goto L13
            java.lang.String r3 = com.sec.internal.ims.servicemodules.volte2.vcid.VcidHelper.LOG_TAG     // Catch: com.sec.internal.ims.servicemodules.volte2.vcid.exception.NoFileUrlOnAlertInfoException -> L15
            java.lang.String r1 = "File Url is empty"
            com.sec.internal.log.IMSLog.d(r3, r1)     // Catch: com.sec.internal.ims.servicemodules.volte2.vcid.exception.NoFileUrlOnAlertInfoException -> L15
            goto L19
        L13:
            r3 = 1
            goto L1a
        L15:
            r3 = move-exception
            r3.printStackTrace()
        L19:
            r3 = r0
        L1a:
            boolean r1 = com.sec.internal.helper.NetworkUtil.isWifiOn(r2)
            if (r1 != 0) goto L2e
            boolean r1 = com.sec.internal.helper.NetworkUtil.isMobileDataOn(r2)
            if (r1 != 0) goto L2e
            java.lang.String r3 = com.sec.internal.ims.servicemodules.volte2.vcid.VcidHelper.LOG_TAG
            java.lang.String r1 = "Wifi & mobile is off"
            com.sec.internal.log.IMSLog.d(r3, r1)
            r3 = r0
        L2e:
            boolean r2 = com.sec.internal.helper.NetworkUtil.isRoaming(r2)
            if (r2 == 0) goto L3c
            java.lang.String r2 = com.sec.internal.ims.servicemodules.volte2.vcid.VcidHelper.LOG_TAG
            java.lang.String r3 = "Not support on Roaming network"
            com.sec.internal.log.IMSLog.d(r2, r3)
            goto L3d
        L3c:
            r0 = r3
        L3d:
            java.lang.String r2 = com.sec.internal.ims.servicemodules.volte2.vcid.VcidHelper.LOG_TAG
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r1 = "isVcidCapable="
            r3.append(r1)
            r3.append(r0)
            java.lang.String r3 = r3.toString()
            com.sec.internal.log.IMSLog.d(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.volte2.vcid.VcidHelper.isVcidCapable(android.content.Context, java.lang.String):boolean");
    }

    public static boolean isVcidUrlExist(String str) {
        return !TextUtils.isEmpty(str) && str.contains(OMAGlobalVariables.HTTP) && (str.contains("video_vcid") || str.contains("video_myview"));
    }

    public static boolean isVideoVcid(String str) {
        return !TextUtils.isEmpty(str) && str.contains("video_vcid");
    }

    public static String getFileUrl(String str) throws NoFileUrlOnAlertInfoException {
        Matcher matcher = Pattern.compile("[<](.*?)[>]").matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        throw new NoFileUrlOnAlertInfoException("No proper file url on alert info");
    }
}
