package com.android.systemui.demomode;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import com.android.systemui.util.settings.GlobalSettings;
import com.android.systemui.util.settings.GlobalSettingsImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class DemoModeAvailabilityTracker {
    public final DemoModeAvailabilityTracker$allowedObserver$1 allowedObserver;
    public final Context context;
    public final GlobalSettings globalSettings;
    public boolean isDemoModeAvailable;
    public boolean isInDemoMode;
    public final DemoModeAvailabilityTracker$onObserver$1 onObserver;

    /* JADX WARN: Type inference failed for: r4v2, types: [com.android.systemui.demomode.DemoModeAvailabilityTracker$allowedObserver$1] */
    /* JADX WARN: Type inference failed for: r4v4, types: [com.android.systemui.demomode.DemoModeAvailabilityTracker$onObserver$1] */
    public DemoModeAvailabilityTracker(Context context, GlobalSettings globalSettings) {
        boolean z;
        this.context = context;
        this.globalSettings = globalSettings;
        if (globalSettings.getInt("sysui_tuner_demo_on", 0) != 0) {
            z = true;
        } else {
            z = false;
        }
        this.isInDemoMode = z;
        this.isDemoModeAvailable = globalSettings.getInt("sysui_demo_allowed", 0) != 0;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.allowedObserver = new ContentObserver(handler) { // from class: com.android.systemui.demomode.DemoModeAvailabilityTracker$allowedObserver$1
            @Override // android.database.ContentObserver
            public final void onChange(boolean z2) {
                boolean z3 = false;
                if (DemoModeAvailabilityTracker.this.globalSettings.getInt("sysui_demo_allowed", 0) != 0) {
                    z3 = true;
                }
                DemoModeAvailabilityTracker demoModeAvailabilityTracker = DemoModeAvailabilityTracker.this;
                if (demoModeAvailabilityTracker.isDemoModeAvailable == z3) {
                    return;
                }
                demoModeAvailabilityTracker.isDemoModeAvailable = z3;
                demoModeAvailabilityTracker.onDemoModeAvailabilityChanged();
            }
        };
        final Handler handler2 = new Handler(Looper.getMainLooper());
        this.onObserver = new ContentObserver(handler2) { // from class: com.android.systemui.demomode.DemoModeAvailabilityTracker$onObserver$1
            @Override // android.database.ContentObserver
            public final void onChange(boolean z2) {
                boolean z3 = false;
                if (DemoModeAvailabilityTracker.this.globalSettings.getInt("sysui_tuner_demo_on", 0) != 0) {
                    z3 = true;
                }
                DemoModeAvailabilityTracker demoModeAvailabilityTracker = DemoModeAvailabilityTracker.this;
                if (demoModeAvailabilityTracker.isInDemoMode == z3) {
                    return;
                }
                demoModeAvailabilityTracker.isInDemoMode = z3;
                if (z3) {
                    demoModeAvailabilityTracker.onDemoModeStarted();
                } else {
                    demoModeAvailabilityTracker.onDemoModeFinished();
                }
            }
        };
    }

    public abstract void onDemoModeAvailabilityChanged();

    public abstract void onDemoModeFinished();

    public abstract void onDemoModeStarted();

    public final void startTracking() {
        ContentResolver contentResolver = this.context.getContentResolver();
        GlobalSettings globalSettings = this.globalSettings;
        ((GlobalSettingsImpl) globalSettings).getClass();
        contentResolver.registerContentObserver(Settings.Global.getUriFor("sysui_demo_allowed"), false, this.allowedObserver);
        ((GlobalSettingsImpl) globalSettings).getClass();
        contentResolver.registerContentObserver(Settings.Global.getUriFor("sysui_tuner_demo_on"), false, this.onObserver);
    }
}
