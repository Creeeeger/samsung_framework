package com.android.systemui.sensorprivacy;

import android.window.OnBackInvokedCallback;
import kotlin.jvm.functions.Function0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SensorUseStartedActivity$sam$android_window_OnBackInvokedCallback$0 implements OnBackInvokedCallback {
    public final /* synthetic */ Function0 function;

    public SensorUseStartedActivity$sam$android_window_OnBackInvokedCallback$0(Function0 function0) {
        this.function = function0;
    }

    @Override // android.window.OnBackInvokedCallback
    public final /* synthetic */ void onBackInvoked() {
        this.function.invoke();
    }
}
