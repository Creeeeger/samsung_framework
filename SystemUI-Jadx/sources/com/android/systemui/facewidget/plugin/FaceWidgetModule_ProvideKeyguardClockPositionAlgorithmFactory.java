package com.android.systemui.facewidget.plugin;

import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FaceWidgetModule_ProvideKeyguardClockPositionAlgorithmFactory implements Provider {
    public static FaceWidgetPositionAlgorithmWrapper provideKeyguardClockPositionAlgorithm() {
        return new FaceWidgetPositionAlgorithmWrapper();
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new FaceWidgetPositionAlgorithmWrapper();
    }
}
