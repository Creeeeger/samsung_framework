package com.android.systemui.navigationbar.interactor;

import android.content.IntentFilter;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.util.SettingsHelper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class OpenThemeInteractor {
    public final BroadcastDispatcher broadcastDispatcher;
    public OpenThemeInteractor$addCallback$2 broadcastReceiver;
    public OpenThemeInteractor$addCallback$5 callback;
    public final IntentFilter intentFilter;
    public final SettingsHelper settingsHelper;

    public OpenThemeInteractor(BroadcastDispatcher broadcastDispatcher, SettingsHelper settingsHelper) {
        this.broadcastDispatcher = broadcastDispatcher;
        this.settingsHelper = settingsHelper;
        IntentFilter intentFilter = new IntentFilter();
        this.intentFilter = intentFilter;
        intentFilter.addAction("com.samsung.android.theme.themecenter.THEME_APPLY");
    }
}
