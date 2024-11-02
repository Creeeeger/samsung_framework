package com.android.systemui.screenshot;

import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SmartActionsReceiver_Factory implements Provider {
    public final Provider screenshotSmartActionsProvider;

    public SmartActionsReceiver_Factory(Provider provider) {
        this.screenshotSmartActionsProvider = provider;
    }

    public static SmartActionsReceiver newInstance(ScreenshotSmartActions screenshotSmartActions) {
        return new SmartActionsReceiver(screenshotSmartActions);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new SmartActionsReceiver((ScreenshotSmartActions) this.screenshotSmartActionsProvider.get());
    }
}
