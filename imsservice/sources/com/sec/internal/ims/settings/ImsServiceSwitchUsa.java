package com.sec.internal.ims.settings;

import android.content.ContentValues;
import android.content.Context;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.settings.ImsServiceSwitch;

/* loaded from: classes.dex */
public class ImsServiceSwitchUsa extends ImsServiceSwitchBase {
    private final String LOG_TAG;

    public ImsServiceSwitchUsa(Context context, int i) {
        super(context, i);
        this.LOG_TAG = ImsServiceSwitchUsa.class.getSimpleName();
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitchBase
    protected ContentValues overrideImsSwitchForCarrier(ContentValues contentValues) {
        if ("XAA".equals(OmcCode.getNWCode(this.mPhoneId)) && !DeviceUtil.isUSOpenDevice()) {
            contentValues.put(ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS, ConfigConstants.VALUE.INFO_COMPLETED);
            contentValues.put(ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS_CHAT_SERVICE, ConfigConstants.VALUE.INFO_COMPLETED);
            this.mEventLog.logAndAdd(this.mPhoneId, "OYN/XAA case. Disable RCS.");
        }
        return contentValues;
    }

    private boolean isSingleRegistrationAndAndroidMessageAppUsed() {
        return !DeviceUtil.isTablet() && RcsUtils.isSingleRegiRequiredAndAndroidMessageAppInUsed(this.mContext, this.mPhoneId);
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitchBase, com.sec.internal.ims.settings.ImsServiceSwitch
    public boolean isEnabled(String str) {
        if (this.mVolteServiceSwitch.containsKey(str)) {
            return "ss".equals(str) ? (this.mSsEnabled || this.mVoLteEnabled) && this.mVolteServiceSwitch.get(str).booleanValue() : this.mVoLteEnabled && this.mVolteServiceSwitch.get(str).booleanValue();
        }
        if (this.mRcsServiceSwitch.containsKey(str)) {
            return (this.mRcsEnabled && this.mRcsServiceSwitch.get(str).booleanValue()) || isSingleRegistrationAndAndroidMessageAppUsed();
        }
        return false;
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitchBase, com.sec.internal.ims.settings.ImsServiceSwitch
    public boolean isRcsEnabled() {
        return this.mRcsEnabled || isSingleRegistrationAndAndroidMessageAppUsed();
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitchBase, com.sec.internal.ims.settings.ImsServiceSwitch
    public boolean isRcsSwitchEnabled() {
        return this.mRcsEnabled || isSingleRegistrationAndAndroidMessageAppUsed();
    }
}
