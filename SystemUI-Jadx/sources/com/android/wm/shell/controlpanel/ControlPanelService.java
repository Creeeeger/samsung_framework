package com.android.wm.shell.controlpanel;

import android.app.Service;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import com.samsung.android.rune.CoreRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class ControlPanelService extends Service {
    public boolean mIsNightMode;
    public final int mType = -1;
    public final ControlPanelServiceBinder mBinder = new ControlPanelServiceBinder(this);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ControlPanelServiceBinder extends Binder {
        public ControlPanelServiceBinder(ControlPanelService controlPanelService) {
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        boolean isNightModeActive = configuration.isNightModeActive();
        int i = this.mType;
        if (i != 1 && i != 2) {
            this.mIsNightMode = isNightModeActive;
        } else {
            if (this.mIsNightMode != isNightModeActive) {
                throw null;
            }
            throw null;
        }
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        boolean z = CoreRune.MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING;
        Log.d("ControlPanelService", "Floating icon is not available");
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        SeslColorSpectrumView$$ExternalSyntheticOutline0.m("startId : ", i2, "ControlPanelService");
        return 1;
    }
}
