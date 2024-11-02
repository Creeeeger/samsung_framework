package com.android.systemui.power.dialog;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemProperties;
import androidx.appcompat.app.AlertDialog;
import com.android.systemui.power.SecBatteryStatsSnapshot;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class PowerUiDialog {
    public final Context mContext;
    public String mDoNotShowTag;
    public final boolean mIsFactoryBinary;
    public SharedPreferences mSharedPref;

    public PowerUiDialog(Context context) {
        this.mIsFactoryBinary = false;
        this.mContext = context;
        if ("factory".equalsIgnoreCase(SystemProperties.get("ro.factory.factory_binary", "Unknown"))) {
            this.mIsFactoryBinary = true;
        }
    }

    public abstract boolean checkCondition();

    public abstract AlertDialog getDialog();

    public abstract void setInformation(SecBatteryStatsSnapshot secBatteryStatsSnapshot);
}
