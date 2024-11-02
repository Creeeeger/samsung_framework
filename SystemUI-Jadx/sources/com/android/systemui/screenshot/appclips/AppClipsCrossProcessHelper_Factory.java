package com.android.systemui.screenshot.appclips;

import android.content.Context;
import android.os.UserManager;
import com.android.systemui.settings.DisplayTracker;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AppClipsCrossProcessHelper_Factory implements Provider {
    public final Provider contextProvider;
    public final Provider displayTrackerProvider;
    public final Provider userManagerProvider;

    public AppClipsCrossProcessHelper_Factory(Provider provider, Provider provider2, Provider provider3) {
        this.contextProvider = provider;
        this.userManagerProvider = provider2;
        this.displayTrackerProvider = provider3;
    }

    public static AppClipsCrossProcessHelper newInstance(Context context, UserManager userManager, DisplayTracker displayTracker) {
        return new AppClipsCrossProcessHelper(context, userManager, displayTracker);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new AppClipsCrossProcessHelper((Context) this.contextProvider.get(), (UserManager) this.userManagerProvider.get(), (DisplayTracker) this.displayTrackerProvider.get());
    }
}
