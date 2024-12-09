package com.sec.internal.ims.settings;

import android.content.ContentValues;
import android.content.Context;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.ims.settings.ImsServiceSwitch;

/* loaded from: classes.dex */
public class ImsServiceSwitchJpn extends ImsServiceSwitchBase {
    public ImsServiceSwitchJpn(Context context, int i) {
        super(context, i);
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitchBase
    protected ContentValues overrideImsSwitchForCarrier(ContentValues contentValues) {
        if (OmcCode.isRKTOmcCode() || OmcCode.isJPNOpenOmcCode()) {
            contentValues.put(ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VIDEO_CALL, ConfigConstants.VALUE.INFO_COMPLETED);
        }
        return contentValues;
    }
}
