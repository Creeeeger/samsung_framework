package com.android.settingslib.core.lifecycle;

import android.app.Activity;
import android.provider.Settings;
import android.util.EventLog;
import android.view.Window;
import android.view.WindowManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.OnLifecycleEvent;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class HideNonSystemOverlayMixin implements androidx.lifecycle.LifecycleObserver {
    public final Activity mActivity;

    public HideNonSystemOverlayMixin(Activity activity) {
        this.mActivity = activity;
    }

    public boolean isEnabled() {
        if (Settings.Secure.getInt(this.mActivity.getContentResolver(), "secure_overlay_settings", 0) != 0) {
            return false;
        }
        return true;
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void onStart() {
        Activity activity = this.mActivity;
        if (activity != null && isEnabled()) {
            activity.getWindow().addSystemFlags(524288);
            EventLog.writeEvent(1397638484, "120484087", -1, "");
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop() {
        Activity activity = this.mActivity;
        if (activity != null && isEnabled()) {
            Window window = activity.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.privateFlags &= -524289;
            window.setAttributes(attributes);
        }
    }
}
