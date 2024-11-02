package com.android.systemui.accessibility;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import android.util.Range;
import com.android.internal.graphics.SfVsyncFrameCallbackProvider;
import com.android.systemui.R;
import com.android.systemui.accessibility.AccessibilityLogger;
import com.android.systemui.accessibility.WindowMagnification;
import com.android.systemui.util.settings.SecureSettings;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MagnificationSettingsController implements ComponentCallbacks {
    public static final Range A11Y_ACTION_SCALE_RANGE = new Range(Float.valueOf(1.0f), Float.valueOf(8.0f));
    public final Configuration mConfiguration;
    public final Context mContext;
    public final int mDisplayId;
    public final Callback mSettingsControllerCallback;
    public final WindowMagnificationSettings mWindowMagnificationSettings;
    final WindowMagnificationSettingsCallback mWindowMagnificationSettingsCallback;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.accessibility.MagnificationSettingsController$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements WindowMagnificationSettingsCallback {
        public AnonymousClass1() {
        }

        public final void onSettingsPanelVisibilityChanged(boolean z) {
            AccessibilityLogger.MagnificationSettingsEvent magnificationSettingsEvent;
            MagnificationSettingsController magnificationSettingsController = MagnificationSettingsController.this;
            Callback callback = magnificationSettingsController.mSettingsControllerCallback;
            int i = magnificationSettingsController.mDisplayId;
            WindowMagnification.AnonymousClass3 anonymousClass3 = (WindowMagnification.AnonymousClass3) callback;
            WindowMagnification windowMagnification = WindowMagnification.this;
            windowMagnification.mHandler.post(new WindowMagnification$3$$ExternalSyntheticLambda1(anonymousClass3, i, z, 0));
            if (z) {
                magnificationSettingsEvent = AccessibilityLogger.MagnificationSettingsEvent.MAGNIFICATION_SETTINGS_PANEL_OPENED;
            } else {
                magnificationSettingsEvent = AccessibilityLogger.MagnificationSettingsEvent.MAGNIFICATION_SETTINGS_PANEL_CLOSED;
            }
            windowMagnification.mA11yLogger.uiEventLogger.log(magnificationSettingsEvent);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Callback {
    }

    public MagnificationSettingsController(Context context, SfVsyncFrameCallbackProvider sfVsyncFrameCallbackProvider, Callback callback, SecureSettings secureSettings) {
        this(context, sfVsyncFrameCallbackProvider, callback, secureSettings, null);
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        int diff = configuration.diff(this.mConfiguration);
        this.mConfiguration.setTo(configuration);
        onConfigurationChanged(diff);
    }

    public MagnificationSettingsController(Context context, SfVsyncFrameCallbackProvider sfVsyncFrameCallbackProvider, Callback callback, SecureSettings secureSettings, WindowMagnificationSettings windowMagnificationSettings) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.mWindowMagnificationSettingsCallback = anonymousClass1;
        this.mContext = context;
        context.setTheme(2132018524);
        this.mDisplayId = context.getDisplayId();
        this.mConfiguration = new Configuration(context.getResources().getConfiguration());
        this.mSettingsControllerCallback = callback;
        if (windowMagnificationSettings != null) {
            this.mWindowMagnificationSettings = windowMagnificationSettings;
        } else {
            this.mWindowMagnificationSettings = new WindowMagnificationSettings(context, anonymousClass1, sfVsyncFrameCallbackProvider, secureSettings);
        }
    }

    public void onConfigurationChanged(int i) {
        WindowMagnificationSettings windowMagnificationSettings = this.mWindowMagnificationSettings;
        windowMagnificationSettings.getClass();
        if ((i & 512) == 0 && (Integer.MIN_VALUE & i) == 0 && (1073741824 & i) == 0 && (i & 4) == 0 && (i & 4096) == 0) {
            if ((i & 128) != 0) {
                windowMagnificationSettings.hideSettingPanel(false);
                return;
            }
            return;
        }
        windowMagnificationSettings.mParams.accessibilityTitle = windowMagnificationSettings.mContext.getString(R.string.accessibility_magnification_title);
        boolean z = windowMagnificationSettings.mIsVisible;
        windowMagnificationSettings.hideSettingPanel(false);
        windowMagnificationSettings.inflateView();
        if (z) {
            windowMagnificationSettings.showSettingPanel(false);
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }
}
