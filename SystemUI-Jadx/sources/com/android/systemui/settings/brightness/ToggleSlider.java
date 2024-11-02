package com.android.systemui.settings.brightness;

import android.view.MotionEvent;
import com.android.settingslib.RestrictedLockUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface ToggleSlider {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Listener {
    }

    String getTag();

    int getValue();

    void initBrightnessIconResources();

    boolean mirrorTouchEvent(MotionEvent motionEvent);

    void setEnforcedAdmin(RestrictedLockUtils.EnforcedAdmin enforcedAdmin);

    void setMax(int i);

    void setOnChangedListener(BrightnessController brightnessController);

    void setValue(int i);

    void updateDualSeekBar();

    void updateHighBrightnessModeEnter(boolean z);

    void updateOutdoorMode(boolean z);

    void updateSystemBrightnessEnabled(boolean z);

    void updateUsingHighBrightnessDialog(boolean z);
}
