package com.android.systemui.statusbar.policy.dagger;

import android.net.wifi.WifiManager;
import android.os.UserManager;
import androidx.lifecycle.LifecycleRegistry;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.statusbar.connectivity.AccessPointControllerImpl;
import com.android.wifitrackerlib.WifiPickerTracker;
import java.util.concurrent.Executor;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarPolicyModule_ProvideAccessPointControllerImplFactory implements Provider {
    public final Provider mainExecutorProvider;
    public final Provider userManagerProvider;
    public final Provider userTrackerProvider;
    public final Provider wifiPickerTrackerFactoryProvider;

    public StatusBarPolicyModule_ProvideAccessPointControllerImplFactory(Provider provider, Provider provider2, Provider provider3, Provider provider4) {
        this.userManagerProvider = provider;
        this.userTrackerProvider = provider2;
        this.mainExecutorProvider = provider3;
        this.wifiPickerTrackerFactoryProvider = provider4;
    }

    public static AccessPointControllerImpl provideAccessPointControllerImpl(UserManager userManager, UserTracker userTracker, Executor executor, AccessPointControllerImpl.WifiPickerTrackerFactory wifiPickerTrackerFactory) {
        WifiPickerTracker wifiPickerTracker;
        AccessPointControllerImpl accessPointControllerImpl = new AccessPointControllerImpl(userManager, userTracker, executor, wifiPickerTrackerFactory);
        if (accessPointControllerImpl.mWifiPickerTracker == null) {
            LifecycleRegistry lifecycleRegistry = accessPointControllerImpl.mLifecycle;
            AccessPointControllerImpl.WifiPickerTrackerFactory wifiPickerTrackerFactory2 = accessPointControllerImpl.mWifiPickerTrackerFactory;
            WifiManager wifiManager = wifiPickerTrackerFactory2.mWifiManager;
            if (wifiManager == null) {
                wifiPickerTracker = null;
            } else {
                wifiPickerTracker = new WifiPickerTracker(lifecycleRegistry, wifiPickerTrackerFactory2.mContext, wifiManager, wifiPickerTrackerFactory2.mConnectivityManager, wifiPickerTrackerFactory2.mMainHandler, wifiPickerTrackerFactory2.mWorkerHandler, wifiPickerTrackerFactory2.mClock, 15000L, 10000L, accessPointControllerImpl, null, true);
            }
            accessPointControllerImpl.mWifiPickerTracker = wifiPickerTracker;
        }
        return accessPointControllerImpl;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideAccessPointControllerImpl((UserManager) this.userManagerProvider.get(), (UserTracker) this.userTrackerProvider.get(), (Executor) this.mainExecutorProvider.get(), (AccessPointControllerImpl.WifiPickerTrackerFactory) this.wifiPickerTrackerFactoryProvider.get());
    }
}
