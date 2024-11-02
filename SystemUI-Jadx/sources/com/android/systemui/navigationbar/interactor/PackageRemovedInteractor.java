package com.android.systemui.navigationbar.interactor;

import android.content.IntentFilter;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.settings.UserTracker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PackageRemovedInteractor {
    public final BroadcastDispatcher broadcastDispatcher;
    public PackageRemovedInteractor$addCallback$2 broadcastReceiver;
    public final IntentFilter intentFilter;
    public final UserTracker userTracker;

    public PackageRemovedInteractor(BroadcastDispatcher broadcastDispatcher, UserTracker userTracker) {
        this.broadcastDispatcher = broadcastDispatcher;
        this.userTracker = userTracker;
        IntentFilter intentFilter = new IntentFilter();
        this.intentFilter = intentFilter;
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme("package");
    }
}
