package com.android.systemui.statusbar.pipeline.carrier;

import android.telephony.TelephonyManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MobileSignalUtil {
    public final CommonUtil commonUtil;
    public final boolean isVoiceCapable;

    public MobileSignalUtil(CommonUtil commonUtil, SystemPropertiesWrapper systemPropertiesWrapper, TelephonyManager telephonyManager) {
        this.commonUtil = commonUtil;
        this.isVoiceCapable = telephonyManager.isVoiceCapable();
    }
}
