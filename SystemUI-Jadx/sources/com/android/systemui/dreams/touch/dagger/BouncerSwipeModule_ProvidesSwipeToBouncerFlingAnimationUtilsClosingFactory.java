package com.android.systemui.dreams.touch.dagger;

import com.android.wm.shell.animation.FlingAnimationUtils;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BouncerSwipeModule_ProvidesSwipeToBouncerFlingAnimationUtilsClosingFactory implements Provider {
    public final Provider flingAnimationUtilsBuilderProvider;

    public BouncerSwipeModule_ProvidesSwipeToBouncerFlingAnimationUtilsClosingFactory(Provider provider) {
        this.flingAnimationUtilsBuilderProvider = provider;
    }

    public static FlingAnimationUtils providesSwipeToBouncerFlingAnimationUtilsClosing(Provider provider) {
        FlingAnimationUtils.Builder builder = (FlingAnimationUtils.Builder) provider.get();
        builder.reset();
        builder.mMaxLengthSeconds = 0.6f;
        builder.mSpeedUpFactor = 0.6f;
        return builder.build();
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return providesSwipeToBouncerFlingAnimationUtilsClosing(this.flingAnimationUtilsBuilderProvider);
    }
}
