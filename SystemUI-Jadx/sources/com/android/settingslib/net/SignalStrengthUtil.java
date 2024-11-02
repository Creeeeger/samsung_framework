package com.android.settingslib.net;

import android.content.Context;
import android.os.PersistableBundle;
import android.telephony.CarrierConfigManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SignalStrengthUtil {
    public static boolean shouldInflateSignalStrength(int i, Context context) {
        PersistableBundle persistableBundle;
        CarrierConfigManager carrierConfigManager = (CarrierConfigManager) context.getSystemService(CarrierConfigManager.class);
        if (carrierConfigManager != null) {
            persistableBundle = carrierConfigManager.getConfigForSubId(i);
        } else {
            persistableBundle = null;
        }
        if (persistableBundle == null || !persistableBundle.getBoolean("inflate_signal_strength_bool", false)) {
            return false;
        }
        return true;
    }
}
