package com.android.keyguard;

import android.content.Context;
import com.android.systemui.statusbar.pipeline.wifi.domain.interactor.WifiInteractor;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class WifiTextManager {
    public boolean connected;
    public final Context context;
    public final CoroutineScope scope;
    public String ssid;
    public final WifiInteractor wifiInteractor;

    public WifiTextManager(Context context, CoroutineScope coroutineScope, WifiInteractor wifiInteractor) {
        this.context = context;
        this.scope = coroutineScope;
        this.wifiInteractor = wifiInteractor;
    }
}
