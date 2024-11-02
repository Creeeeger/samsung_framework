package com.android.systemui.settings.brightness;

import android.view.MotionEvent;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BrightnessSliderController$$ExternalSyntheticLambda1 {
    public final /* synthetic */ BrightnessSliderController f$0;

    public /* synthetic */ BrightnessSliderController$$ExternalSyntheticLambda1(BrightnessSliderController brightnessSliderController) {
        this.f$0 = brightnessSliderController;
    }

    public final void onDispatchTouchEvent(MotionEvent motionEvent) {
        this.f$0.mirrorTouchEvent(motionEvent);
    }
}
