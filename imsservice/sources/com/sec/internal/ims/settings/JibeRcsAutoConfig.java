package com.sec.internal.ims.settings;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.interfaces.ims.core.IJibeRcsAutoConfig;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class JibeRcsAutoConfig extends JibeRcsEnabler implements IJibeRcsAutoConfig {
    protected static final String CALL_METHOD_RESET = "resetForJibe";
    private static final String LOG_TAG = "JibeRcsAutoConfig";
    protected static final String PREF_KEY_USER_SETTING_PREFIX = "rcs_user_setting_subid_";
    protected static final String PREF_NAME_JIBE_CONFIG = "jibe_config";

    public JibeRcsAutoConfig(Context context) {
        super(context);
    }

    @Override // com.sec.internal.interfaces.ims.core.IJibeRcsAutoConfig
    public boolean onDefaultSmsPackageChanged(int i) {
        if (!isDynamicJibeSupported(i)) {
            return false;
        }
        IMSLog.i(LOG_TAG, i, "onDefaultSmsPackageChanged: Reset imsprofile/globalsettings.");
        callReset(i);
        return true;
    }

    private void callReset(int i) {
        this.mContext.getContentResolver().call(Uri.parse(ImsConstants.Uris.CONFIG_URI), CALL_METHOD_RESET, String.valueOf(i), (Bundle) null);
    }

    @Override // com.sec.internal.interfaces.ims.core.IJibeRcsAutoConfig
    public boolean needClearWorkflowByDmaChange(int i) {
        return isDynamicJibeSupported(i);
    }

    @Override // com.sec.internal.interfaces.ims.core.IJibeRcsAutoConfig
    public void resetRcsUserSetting(int i) {
        if (ConfigUtil.isSecDmaPackageInuse(this.mContext, 0)) {
            int lastUserSetting = getLastUserSetting(i);
            if (lastUserSetting != -1) {
                IMSLog.i(LOG_TAG, i, "resetRcsUserSetting: Reset to last value " + lastUserSetting);
                ImsConstants.SystemSettings.setRcsUserSetting(this.mContext, lastUserSetting, i);
                return;
            }
        } else {
            storeLastUserSetting(i);
        }
        int i2 = GlobalSettingsManager.getInstance(this.mContext, i).getInt(GlobalSettingsConstants.RCS.RCS_DEFAULT_ENABLED, -1);
        IMSLog.i(LOG_TAG, i, "resetRcsUserSetting: Reset to default: " + i2);
        ImsConstants.SystemSettings.setRcsUserSetting(this.mContext, i2, i);
    }

    private int getLastUserSetting(int i) {
        return ImsSharedPrefHelper.getInt(this.mContext, PREF_NAME_JIBE_CONFIG, getUserSettingKey(i), -1);
    }

    private void storeLastUserSetting(int i) {
        int rcsUserSetting = ImsConstants.SystemSettings.getRcsUserSetting(this.mContext, -1, i);
        if (rcsUserSetting == -1) {
            return;
        }
        ImsSharedPrefHelper.save(this.mContext, PREF_NAME_JIBE_CONFIG, getUserSettingKey(i), rcsUserSetting);
    }

    private String getUserSettingKey(int i) {
        return PREF_KEY_USER_SETTING_PREFIX + SimUtil.getSubId(i);
    }
}
