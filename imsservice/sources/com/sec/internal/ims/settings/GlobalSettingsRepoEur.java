package com.sec.internal.ims.settings;

import android.content.Context;
import android.text.TextUtils;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.log.IMSLog;
import java.util.Locale;

/* loaded from: classes.dex */
public class GlobalSettingsRepoEur extends GlobalSettingsRepoBase {
    private final String LOG_TAG;

    public GlobalSettingsRepoEur(Context context, int i) {
        super(context, i);
        this.LOG_TAG = GlobalSettingsRepoEur.class.getSimpleName();
    }

    @Override // com.sec.internal.ims.settings.GlobalSettingsRepoBase
    protected boolean needToCheckResetSetting() {
        return this.mVersionUpdated || this.mMnoNameUpdated;
    }

    @Override // com.sec.internal.ims.settings.GlobalSettingsRepoBase
    protected void initNeedToCheckResetSetting() {
        this.mVersionUpdated = false;
        this.mMnoNameUpdated = false;
    }

    @Override // com.sec.internal.ims.settings.GlobalSettingsRepoBase
    protected boolean needResetVolteAsDefault(int i, int i2, String str, String str2) {
        Locale locale = Locale.US;
        if (TextUtils.equals(str2.toUpperCase(locale), "ALWAYS")) {
            return true;
        }
        if (!TextUtils.equals(str2.toUpperCase(locale), "ONETIME") || isFinishResetVoiceCallType(this.mPhoneId, str)) {
            return this.mVersionUpdated && i != i2;
        }
        finishResetVoiceCallType(this.mPhoneId, str, true);
        return true;
    }

    private void finishResetVoiceCallType(int i, String str, boolean z) {
        ImsSharedPrefHelper.save(i, this.mContext, "imsswitch", "reset_voicecall_type_done_" + str, z);
        IMSLog.s(this.LOG_TAG, i, "finishResetVoiceCallType: Mno(" + str + ")");
    }

    private boolean isFinishResetVoiceCallType(int i, String str) {
        boolean z = ImsSharedPrefHelper.getBoolean(i, this.mContext, "imsswitch", "reset_voicecall_type_done_" + str, false);
        IMSLog.s(this.LOG_TAG, i, "isFinishResetVoiceCallType: Mno(" + str + "):" + z);
        return z;
    }

    @Override // com.sec.internal.ims.settings.GlobalSettingsRepo
    protected int preUpdateSystemSettings(Mno mno, int i, boolean z, boolean z2) {
        int i2;
        if (DeviceUtil.removeVolteMenuWithSimMobility(this.mPhoneId)) {
            IMSLog.d(this.LOG_TAG, this.mPhoneId, "reset voice and vt call settings db because of VOICECLLCSC CONFIGOPSTYLEMOBILENETWORKSETTINGMENU Feature");
            i2 = 0;
            ImsConstants.SystemSettings.setVoiceCallType(this.mContext, 0, this.mPhoneId);
        } else {
            i2 = i;
        }
        IMSLog.d(this.LOG_TAG, this.mPhoneId, "preUpdateSystemSettings: from " + i + " to " + i2);
        return i2;
    }
}
