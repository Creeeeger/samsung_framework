package com.sec.internal.ims.settings;

import android.content.Context;
import android.os.SemSystemProperties;

/* loaded from: classes.dex */
public class GlobalSettingsRepoKorChnx extends GlobalSettingsRepoBase {
    public GlobalSettingsRepoKorChnx(Context context, int i) {
        super(context, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    @Override // com.sec.internal.ims.settings.GlobalSettingsRepo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected int preUpdateSystemSettings(com.sec.internal.constants.Mno r4, int r5, boolean r6, boolean r7) {
        /*
            r3 = this;
            if (r7 != 0) goto L3
            return r5
        L3:
            android.content.Context r7 = r3.mContext
            r0 = -1
            int r1 = r3.mPhoneId
            int r7 = com.sec.internal.constants.ims.ImsConstants.SystemSettings.getVoiceCallType(r7, r0, r1)
            r0 = 0
            if (r7 != 0) goto L14
            if (r5 == 0) goto L12
            goto L14
        L12:
            r7 = r0
            goto L15
        L14:
            r7 = 1
        L15:
            com.sec.internal.constants.Mno r1 = com.sec.internal.constants.Mno.CTC
            if (r4 == r1) goto L50
            com.sec.internal.constants.Mno r1 = com.sec.internal.constants.Mno.CTCMO
            if (r4 != r1) goto L1e
            goto L50
        L1e:
            com.sec.internal.constants.Mno r1 = com.sec.internal.constants.Mno.CMCC
            if (r4 != r1) goto L38
            boolean r1 = r3.isSupport5GConcept()
            if (r1 == 0) goto L71
            boolean r1 = com.sec.internal.helper.OmcCode.isMainlandChinaOmcCode()
            if (r1 == 0) goto L71
            if (r7 == 0) goto L71
            android.content.Context r5 = r3.mContext
            int r7 = r3.mPhoneId
            com.sec.internal.constants.ims.ImsConstants.SystemSettings.setVoiceCallType(r5, r0, r7)
            goto L70
        L38:
            com.sec.internal.constants.Mno r1 = com.sec.internal.constants.Mno.CU
            if (r4 == r1) goto L40
            com.sec.internal.constants.Mno r1 = com.sec.internal.constants.Mno.CBN
            if (r4 != r1) goto L71
        L40:
            boolean r1 = com.sec.internal.helper.OmcCode.isMainlandChinaOmcCode()
            if (r1 == 0) goto L71
            if (r7 == 0) goto L71
            android.content.Context r5 = r3.mContext
            int r7 = r3.mPhoneId
            com.sec.internal.constants.ims.ImsConstants.SystemSettings.setVoiceCallType(r5, r0, r7)
            goto L70
        L50:
            boolean r1 = r3.isSupport5GConcept()
            if (r1 != 0) goto L61
            java.lang.String r1 = "ro.product.first_api_level"
            int r1 = android.os.SemSystemProperties.getInt(r1, r0)
            r2 = 29
            if (r1 < r2) goto L71
        L61:
            boolean r1 = com.sec.internal.helper.OmcCode.isChinaOmcCode()
            if (r1 == 0) goto L71
            if (r7 == 0) goto L71
            android.content.Context r5 = r3.mContext
            int r7 = r3.mPhoneId
            com.sec.internal.constants.ims.ImsConstants.SystemSettings.setVoiceCallType(r5, r0, r7)
        L70:
            r5 = r0
        L71:
            boolean r7 = r4.isHkMo()
            if (r7 != 0) goto L7e
            com.sec.internal.constants.Mno r7 = com.sec.internal.constants.Mno.CTCMO
            if (r4 != r7) goto L7c
            goto L7e
        L7c:
            r0 = r5
            goto L87
        L7e:
            if (r6 == 0) goto L87
            android.content.Context r4 = r3.mContext
            int r3 = r3.mPhoneId
            com.sec.internal.constants.ims.ImsConstants.SystemSettings.setVoiceCallType(r4, r0, r3)
        L87:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.settings.GlobalSettingsRepoKorChnx.preUpdateSystemSettings(com.sec.internal.constants.Mno, int, boolean, boolean):int");
    }

    private boolean isSupport5GConcept() {
        try {
            return Integer.parseInt(SemSystemProperties.get("ro.telephony.default_network", "0,0").trim().split(",")[0]) >= 23;
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return false;
        }
    }
}
