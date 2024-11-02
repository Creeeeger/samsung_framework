package com.android.systemui.settings.brightness;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.hardware.display.BrightnessInfo;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.provider.Settings;
import android.service.vr.IVrManager;
import android.service.vr.IVrStateCallbacks;
import android.util.Log;
import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.internal.display.BrightnessSynchronizer;
import com.android.internal.logging.MetricsLogger;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.settingslib.RestrictedLockUtils;
import com.android.settingslib.RestrictedLockUtilsInternal;
import com.android.systemui.settings.DisplayTracker;
import com.android.systemui.settings.DisplayTrackerImpl;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.settings.brightness.BrightnessDialog;
import com.android.systemui.settings.brightness.ToggleSlider;
import com.android.systemui.util.DeviceType;
import com.samsung.android.knox.custom.CustomDeviceManager;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BrightnessController implements ToggleSlider.Listener {
    public static boolean mIsHighBrightnessMode;
    public volatile boolean mAutomatic;
    public final Handler mBackgroundHandler;
    public float mBrightness;
    public BrightnessDialog mBrightnessDialog;
    public final BrightnessObserver mBrightnessObserver;
    public final Context mContext;
    public final ToggleSlider mControl;
    public boolean mControlValueInitialized;
    public final int mDisplayId;
    public final DisplayManager mDisplayManager;
    public final DisplayTracker mDisplayTracker;
    public boolean mExternalChange;
    public final AnonymousClass7 mHandler;
    public final AnonymousClass14 mHighBrightnessModeEnterRunnable;
    public volatile boolean mIsVrModeEnabled;
    public boolean mListening;
    public final Executor mMainExecutor;
    public final float mMaximumBacklight;
    public final float mMinimumBacklight;
    public final AnonymousClass15 mOutdoorModeRunnable;
    public ValueAnimator mSliderAnimator;
    public final AnonymousClass13 mSystemBrightnessEnabledRunnable;
    public final UserTracker.Callback mUserChangedCallback;
    public final UserTracker mUserTracker;
    public final AnonymousClass12 mUsingHighBrightnessDialogRunnable;
    public final IVrManager mVrManager;
    public static final Uri USING_HIGH_BRIGHTNESS_DIALOG_URI = Settings.System.getUriFor("shown_max_brightness_dialog");
    public static final Uri SYSTEM_BRIGHTNESS_ENABLED_URI = Settings.System.getUriFor("pms_notification_panel_brightness_adjustment");
    public static final Uri BRIGHTNESS_MODE_URI = Settings.System.getUriFor("screen_brightness_mode");
    public static final Uri HIGH_BRIGHTNESS_MODE_ENTER_URI = Settings.System.getUriFor("high_brightness_mode_pms_enter");
    public static final Uri SCREEN_DISPLAY_OUTDOOR_MODE_URI = Settings.System.getUriFor("display_outdoor_mode");
    public final String mDetailTag = "";
    public int mSliderAnimationDuration = 0;
    public final ArrayList mChangeCallbacks = new ArrayList();
    public final AnonymousClass1 mBrightnessListener = new DisplayTracker.Callback() { // from class: com.android.systemui.settings.brightness.BrightnessController.1
        @Override // com.android.systemui.settings.DisplayTracker.Callback
        public final void onDisplayChanged(int i) {
            BrightnessController brightnessController = BrightnessController.this;
            BrightnessInfo brightnessInfo = brightnessController.mContext.getDisplay().getBrightnessInfo();
            if (brightnessInfo == null) {
                Log.d("CentralSurfaces.BrightnessController", "info is null ");
                return;
            }
            if (brightnessController.mBrightness != brightnessInfo.brightness) {
                SeslColorSpectrumView$$ExternalSyntheticOutline0.m(new StringBuilder("info.brightness:"), brightnessInfo.brightness, "CentralSurfaces.BrightnessController");
                brightnessController.mBrightness = brightnessInfo.brightness;
                brightnessController.mBackgroundHandler.post(brightnessController.mUpdateSliderRunnable);
                ArrayList arrayList = brightnessController.mChangeCallbacks;
                if (arrayList.size() > 0) {
                    ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(arrayList.get(0));
                    throw null;
                }
            }
        }
    };
    public final AnonymousClass2 mStartListeningRunnable = new Runnable() { // from class: com.android.systemui.settings.brightness.BrightnessController.2
        @Override // java.lang.Runnable
        public final void run() {
            BrightnessController brightnessController = BrightnessController.this;
            if (brightnessController.mListening) {
                return;
            }
            brightnessController.mListening = true;
            IVrManager iVrManager = brightnessController.mVrManager;
            if (iVrManager != null) {
                try {
                    iVrManager.registerListener(brightnessController.mVrStateCallbacks);
                    BrightnessController brightnessController2 = BrightnessController.this;
                    brightnessController2.mIsVrModeEnabled = brightnessController2.mVrManager.getVrModeState();
                } catch (RemoteException e) {
                    Log.e("CentralSurfaces.BrightnessController", "Failed to register VR mode state listener: ", e);
                }
            }
            BrightnessObserver brightnessObserver = BrightnessController.this.mBrightnessObserver;
            ContentResolver contentResolver = BrightnessController.this.mContext.getContentResolver();
            contentResolver.unregisterContentObserver(brightnessObserver);
            contentResolver.registerContentObserver(BrightnessController.BRIGHTNESS_MODE_URI, false, brightnessObserver, -1);
            contentResolver.registerContentObserver(BrightnessController.USING_HIGH_BRIGHTNESS_DIALOG_URI, false, brightnessObserver, -1);
            contentResolver.registerContentObserver(BrightnessController.SYSTEM_BRIGHTNESS_ENABLED_URI, false, brightnessObserver, -1);
            contentResolver.registerContentObserver(BrightnessController.HIGH_BRIGHTNESS_MODE_ENTER_URI, false, brightnessObserver, -1);
            contentResolver.registerContentObserver(BrightnessController.SCREEN_DISPLAY_OUTDOOR_MODE_URI, false, brightnessObserver, -1);
            BrightnessController brightnessController3 = BrightnessController.this;
            ((DisplayTrackerImpl) brightnessController3.mDisplayTracker).addBrightnessChangeCallback(brightnessController3.mBrightnessListener, new HandlerExecutor(BrightnessController.this.mHandler));
            BrightnessController brightnessController4 = BrightnessController.this;
            ((UserTrackerImpl) brightnessController4.mUserTracker).addCallback(brightnessController4.mUserChangedCallback, brightnessController4.mMainExecutor);
            BrightnessController.this.mUpdateModeRunnable.run();
            BrightnessController.this.mUpdateSliderRunnable.run();
            obtainMessage(9).sendToTarget();
            if (!DeviceType.isLightSensorSupported(BrightnessController.this.mContext)) {
                BrightnessController.this.mOutdoorModeRunnable.run();
            }
            sendEmptyMessage(2);
        }
    };
    public final AnonymousClass3 mStopListeningRunnable = new Runnable() { // from class: com.android.systemui.settings.brightness.BrightnessController.3
        @Override // java.lang.Runnable
        public final void run() {
            BrightnessController brightnessController = BrightnessController.this;
            if (!brightnessController.mListening) {
                return;
            }
            brightnessController.mListening = false;
            IVrManager iVrManager = brightnessController.mVrManager;
            if (iVrManager != null) {
                try {
                    iVrManager.unregisterListener(brightnessController.mVrStateCallbacks);
                } catch (RemoteException e) {
                    Log.e("CentralSurfaces.BrightnessController", "Failed to unregister VR mode state listener: ", e);
                }
            }
            BrightnessObserver brightnessObserver = BrightnessController.this.mBrightnessObserver;
            BrightnessController.this.mContext.getContentResolver().unregisterContentObserver(brightnessObserver);
            BrightnessController brightnessController2 = BrightnessController.this;
            ((DisplayTrackerImpl) brightnessController2.mDisplayTracker).removeCallback(brightnessController2.mBrightnessListener);
            BrightnessController brightnessController3 = BrightnessController.this;
            ((UserTrackerImpl) brightnessController3.mUserTracker).removeCallback(brightnessController3.mUserChangedCallback);
            sendEmptyMessage(3);
        }
    };
    public final AnonymousClass4 mUpdateModeRunnable = new AnonymousClass4();
    public final AnonymousClass5 mUpdateSliderRunnable = new AnonymousClass5();
    public final AnonymousClass6 mVrStateCallbacks = new IVrStateCallbacks.Stub() { // from class: com.android.systemui.settings.brightness.BrightnessController.6
        public final void onVrStateChanged(boolean z) {
            obtainMessage(4, z ? 1 : 0, 0).sendToTarget();
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.settings.brightness.BrightnessController$15, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass15 implements Runnable {
        public AnonymousClass15() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            if (Settings.System.getIntForUser(BrightnessController.this.mContext.getContentResolver(), "display_outdoor_mode", 0, -2) != 0) {
                i = 1;
            } else {
                i = 0;
            }
            obtainMessage(8, i, 0).sendToTarget();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.settings.brightness.BrightnessController$4, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass4 implements Runnable {
        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z = false;
            int intForUser = Settings.System.getIntForUser(BrightnessController.this.mContext.getContentResolver(), "screen_brightness_mode", 0, ((UserTrackerImpl) BrightnessController.this.mUserTracker).getUserId());
            BrightnessController brightnessController = BrightnessController.this;
            if (intForUser != 0) {
                z = true;
            }
            brightnessController.mAutomatic = z;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.settings.brightness.BrightnessController$5, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass5 implements Runnable {
        public AnonymousClass5() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z = BrightnessController.this.mIsVrModeEnabled;
            BrightnessInfo brightnessInfo = BrightnessController.this.mContext.getDisplay().getBrightnessInfo();
            if (brightnessInfo == null) {
                Log.d("CentralSurfaces.BrightnessController", "info is null ");
                return;
            }
            StringBuilder sb = new StringBuilder(" info.brightnessMaximum:");
            sb.append(brightnessInfo.brightnessMaximum);
            sb.append(" info.brightnessMinimum:");
            SeslColorSpectrumView$$ExternalSyntheticOutline0.m(sb, brightnessInfo.brightnessMinimum, "CentralSurfaces.BrightnessController");
            BrightnessController.this.getClass();
            BrightnessController.this.getClass();
            obtainMessage(1, Float.floatToIntBits(brightnessInfo.brightness), z ? 1 : 0).sendToTarget();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class BrightnessObserver extends ContentObserver {
        public BrightnessObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z, Uri uri) {
            if (z) {
                return;
            }
            if (BrightnessController.BRIGHTNESS_MODE_URI.equals(uri)) {
                BrightnessController brightnessController = BrightnessController.this;
                brightnessController.mBackgroundHandler.post(brightnessController.mUpdateModeRunnable);
                BrightnessController brightnessController2 = BrightnessController.this;
                brightnessController2.mBackgroundHandler.post(brightnessController2.mUpdateSliderRunnable);
                return;
            }
            if (BrightnessController.USING_HIGH_BRIGHTNESS_DIALOG_URI.equals(uri)) {
                Log.d("CentralSurfaces.BrightnessController" + BrightnessController.this.mDetailTag, "BrightnessObserver.onChange() : USING_HIGH_BRIGHTNESS_DIALOG_URI");
                BrightnessController brightnessController3 = BrightnessController.this;
                brightnessController3.mBackgroundHandler.post(brightnessController3.mUsingHighBrightnessDialogRunnable);
                return;
            }
            if (BrightnessController.SYSTEM_BRIGHTNESS_ENABLED_URI.equals(uri)) {
                Log.d("CentralSurfaces.BrightnessController" + BrightnessController.this.mDetailTag, "BrightnessObserver.onChange() : SYSTEM_BRIGHTNESS_ENABLED_URI");
                BrightnessController brightnessController4 = BrightnessController.this;
                brightnessController4.mBackgroundHandler.post(brightnessController4.mSystemBrightnessEnabledRunnable);
                return;
            }
            if (BrightnessController.HIGH_BRIGHTNESS_MODE_ENTER_URI.equals(uri)) {
                Log.d("CentralSurfaces.BrightnessController" + BrightnessController.this.mDetailTag, "BrightnessObserver.onChange() : HIGH_BRIGHTNESS_MODE_ENTER_URI");
                BrightnessController brightnessController5 = BrightnessController.this;
                brightnessController5.mBackgroundHandler.post(brightnessController5.mHighBrightnessModeEnterRunnable);
                return;
            }
            if (BrightnessController.SCREEN_DISPLAY_OUTDOOR_MODE_URI.equals(uri)) {
                Log.d("CentralSurfaces.BrightnessController" + BrightnessController.this.mDetailTag, "BrightnessObserver.onChange() : SCREEN_DISPLAY_OUTDOOR_MODE_URI");
                BrightnessController brightnessController6 = BrightnessController.this;
                brightnessController6.mBackgroundHandler.post(brightnessController6.mOutdoorModeRunnable);
                return;
            }
            BrightnessController brightnessController7 = BrightnessController.this;
            brightnessController7.mBackgroundHandler.post(brightnessController7.mUpdateModeRunnable);
            BrightnessController brightnessController8 = BrightnessController.this;
            brightnessController8.mBackgroundHandler.post(brightnessController8.mUpdateSliderRunnable);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Factory {
        public final Handler mBackgroundHandler;
        public final Context mContext;
        public final DisplayTracker mDisplayTracker;
        public final Executor mMainExecutor;
        public final UserTracker mUserTracker;

        public Factory(Context context, UserTracker userTracker, DisplayTracker displayTracker, Executor executor, Handler handler) {
            this.mContext = context;
            this.mUserTracker = userTracker;
            this.mDisplayTracker = displayTracker;
            this.mMainExecutor = executor;
            this.mBackgroundHandler = handler;
        }
    }

    /* renamed from: -$$Nest$mupdateSlider, reason: not valid java name */
    public static void m1346$$Nest$mupdateSlider(final BrightnessController brightnessController, float f) {
        ValueAnimator valueAnimator = brightnessController.mSliderAnimator;
        if (valueAnimator != null && valueAnimator.isStarted()) {
            brightnessController.mSliderAnimator.cancel();
        }
        int intForUser = Settings.System.getIntForUser(brightnessController.mContext.getContentResolver(), "auto_brightness_transition_time", -1, -2);
        int i = brightnessController.mSliderAnimationDuration;
        int i2 = 0;
        String str = brightnessController.mDetailTag;
        if (i != intForUser) {
            if (intForUser < 0) {
                intForUser = 0;
            }
            brightnessController.mSliderAnimationDuration = intForUser;
            RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("updateSliderAnimationDuration() : "), brightnessController.mSliderAnimationDuration, KeyAttributes$$ExternalSyntheticOutline0.m("CentralSurfaces.BrightnessController", str));
        }
        if (brightnessController.mBrightnessDialog != null) {
            Log.d("CentralSurfaces.BrightnessController", "updateSlider() - BrightnessDialog resetTimer()");
            BrightnessDialog brightnessDialog = brightnessController.mBrightnessDialog;
            BrightnessDialog.AnonymousClass2 anonymousClass2 = brightnessDialog.mTimer;
            if (anonymousClass2 != null) {
                anonymousClass2.cancel();
            }
            BrightnessDialog.AnonymousClass2 anonymousClass22 = brightnessDialog.mTimer;
            if (anonymousClass22 != null) {
                anonymousClass22.cancel();
            }
            BrightnessDialog.AnonymousClass2 anonymousClass23 = brightnessDialog.mTimer;
            if (anonymousClass23 != null) {
                anonymousClass23.start();
            }
        }
        float f2 = brightnessController.mMaximumBacklight * f;
        float f3 = brightnessController.mMinimumBacklight;
        int i3 = (int) (f2 - f3);
        String m = KeyAttributes$$ExternalSyntheticOutline0.m("CentralSurfaces.BrightnessController", str);
        StringBuilder sb = new StringBuilder("updateSlider() = ");
        sb.append(i3);
        sb.append(", brightnessValue = ");
        sb.append(f);
        sb.append(", min = ");
        SeslColorSpectrumView$$ExternalSyntheticOutline0.m(sb, f3, m);
        boolean z = brightnessController.mControlValueInitialized;
        ToggleSlider toggleSlider = brightnessController.mControl;
        if (!z) {
            toggleSlider.setValue(i3);
            brightnessController.mControlValueInitialized = true;
        }
        ValueAnimator ofInt = ValueAnimator.ofInt(toggleSlider.getValue(), i3);
        brightnessController.mSliderAnimator = ofInt;
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.settings.brightness.BrightnessController$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                BrightnessController brightnessController2 = BrightnessController.this;
                brightnessController2.mExternalChange = true;
                brightnessController2.mControl.setValue(((Integer) valueAnimator2.getAnimatedValue()).intValue());
                brightnessController2.mExternalChange = false;
            }
        });
        brightnessController.mSliderAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.settings.brightness.BrightnessController.11
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                BrightnessController.this.mControl.updateDualSeekBar();
            }
        });
        int abs = (Math.abs(toggleSlider.getValue() - i3) * 0) / CustomDeviceManager.QUICK_PANEL_ALL;
        ValueAnimator valueAnimator2 = brightnessController.mSliderAnimator;
        if (toggleSlider.getTag() != "brightness_dialog") {
            i2 = brightnessController.mSliderAnimationDuration;
        }
        valueAnimator2.setDuration(i2);
        brightnessController.mSliderAnimator.start();
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.android.systemui.settings.brightness.BrightnessController$1] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.android.systemui.settings.brightness.BrightnessController$2] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.android.systemui.settings.brightness.BrightnessController$3] */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.android.systemui.settings.brightness.BrightnessController$6] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.android.systemui.settings.brightness.BrightnessController$7, android.os.Handler] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.settings.brightness.BrightnessController$12] */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.systemui.settings.brightness.BrightnessController$13] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.systemui.settings.brightness.BrightnessController$14] */
    public BrightnessController(Context context, ToggleSlider toggleSlider, UserTracker userTracker, DisplayTracker displayTracker, Executor executor, Handler handler) {
        ?? r0 = new Handler() { // from class: com.android.systemui.settings.brightness.BrightnessController.7
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                BrightnessController brightnessController = BrightnessController.this;
                boolean z = true;
                brightnessController.mExternalChange = true;
                try {
                    switch (message.what) {
                        case 1:
                            float intBitsToFloat = Float.intBitsToFloat(message.arg1);
                            int i = message.arg2;
                            BrightnessController.m1346$$Nest$mupdateSlider(brightnessController, intBitsToFloat);
                            break;
                        case 2:
                            brightnessController.mControl.setOnChangedListener(brightnessController);
                            break;
                        case 3:
                            brightnessController.mControl.setOnChangedListener(null);
                            break;
                        case 4:
                            if (message.arg1 == 0) {
                                z = false;
                            }
                            if (brightnessController.mIsVrModeEnabled != z) {
                                brightnessController.mIsVrModeEnabled = z;
                                brightnessController.mBackgroundHandler.post(brightnessController.mUpdateSliderRunnable);
                                break;
                            }
                            break;
                        case 5:
                        default:
                            super.handleMessage(message);
                            break;
                        case 6:
                            ToggleSlider toggleSlider2 = brightnessController.mControl;
                            if (message.arg1 != 0) {
                                z = false;
                            }
                            toggleSlider2.updateUsingHighBrightnessDialog(z);
                            break;
                        case 7:
                            ToggleSlider toggleSlider3 = brightnessController.mControl;
                            if (message.arg1 == 0) {
                                z = false;
                            }
                            toggleSlider3.updateSystemBrightnessEnabled(z);
                            break;
                        case 8:
                            ToggleSlider toggleSlider4 = brightnessController.mControl;
                            if (message.arg1 == 0) {
                                z = false;
                            }
                            toggleSlider4.updateOutdoorMode(z);
                            break;
                        case 9:
                            brightnessController.mControl.initBrightnessIconResources();
                            break;
                        case 10:
                            ToggleSlider toggleSlider5 = brightnessController.mControl;
                            if (message.arg1 == 0) {
                                z = false;
                            }
                            toggleSlider5.updateHighBrightnessModeEnter(z);
                            break;
                    }
                } finally {
                    BrightnessController.this.mExternalChange = false;
                }
            }
        };
        this.mHandler = r0;
        this.mUserChangedCallback = new UserTracker.Callback() { // from class: com.android.systemui.settings.brightness.BrightnessController.8
            @Override // com.android.systemui.settings.UserTracker.Callback
            public final void onUserChanged(int i, Context context2) {
                BrightnessController brightnessController = BrightnessController.this;
                brightnessController.mBackgroundHandler.post(brightnessController.mUpdateModeRunnable);
                brightnessController.mBackgroundHandler.post(brightnessController.mUpdateSliderRunnable);
            }
        };
        this.mUsingHighBrightnessDialogRunnable = new Runnable() { // from class: com.android.systemui.settings.brightness.BrightnessController.12
            @Override // java.lang.Runnable
            public final void run() {
                int i;
                if (Settings.System.getIntForUser(BrightnessController.this.mContext.getContentResolver(), "shown_max_brightness_dialog", 0, -2) == 0) {
                    i = 1;
                } else {
                    i = 0;
                }
                obtainMessage(6, i ^ 1, 0).sendToTarget();
            }
        };
        this.mSystemBrightnessEnabledRunnable = new Runnable() { // from class: com.android.systemui.settings.brightness.BrightnessController.13
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v0 */
            /* JADX WARN: Type inference failed for: r2v1, types: [int, boolean] */
            /* JADX WARN: Type inference failed for: r2v2 */
            @Override // java.lang.Runnable
            public final void run() {
                ?? r2 = 1;
                if (Settings.System.getIntForUser(BrightnessController.this.mContext.getContentResolver(), "pms_notification_panel_brightness_adjustment", 1, -2) == 0) {
                    r2 = 0;
                }
                KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("UPDATE_SYSTEM_BRIGHTNESS_ENABLED = ", r2, "CentralSurfaces.BrightnessController" + BrightnessController.this.mDetailTag);
                obtainMessage(7, r2, 0).sendToTarget();
            }
        };
        this.mHighBrightnessModeEnterRunnable = new Runnable() { // from class: com.android.systemui.settings.brightness.BrightnessController.14
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v4 */
            /* JADX WARN: Type inference failed for: r0v5, types: [int, boolean] */
            /* JADX WARN: Type inference failed for: r0v6 */
            @Override // java.lang.Runnable
            public final void run() {
                ?? r02;
                if (Settings.System.getIntForUser(BrightnessController.this.mContext.getContentResolver(), "high_brightness_mode_pms_enter", 0, -2) != 0) {
                    r02 = 1;
                } else {
                    r02 = 0;
                }
                KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("UPDATE_HIGH_BRIGHTNESS_MODE = ", r02, "CentralSurfaces.BrightnessController" + BrightnessController.this.mDetailTag);
                BrightnessController.mIsHighBrightnessMode = r02;
                obtainMessage(10, r02, 0).sendToTarget();
            }
        };
        this.mOutdoorModeRunnable = new AnonymousClass15();
        this.mContext = context;
        this.mControl = toggleSlider;
        this.mMainExecutor = executor;
        this.mBackgroundHandler = handler;
        this.mUserTracker = userTracker;
        this.mDisplayTracker = displayTracker;
        this.mBrightnessObserver = new BrightnessObserver(r0);
        this.mDisplayId = context.getDisplayId();
        PowerManager powerManager = (PowerManager) context.getSystemService(PowerManager.class);
        this.mDisplayManager = (DisplayManager) context.getSystemService(DisplayManager.class);
        this.mVrManager = IVrManager.Stub.asInterface(ServiceManager.getService("vrmanager"));
        float minimumScreenBrightnessSetting = powerManager.getMinimumScreenBrightnessSetting();
        this.mMinimumBacklight = minimumScreenBrightnessSetting;
        float maximumScreenBrightnessSetting = powerManager.getMaximumScreenBrightnessSetting();
        this.mMaximumBacklight = maximumScreenBrightnessSetting;
        toggleSlider.setMax((int) (maximumScreenBrightnessSetting - minimumScreenBrightnessSetting));
    }

    public final void checkRestrictionAndSetEnabled() {
        this.mBackgroundHandler.post(new Runnable() { // from class: com.android.systemui.settings.brightness.BrightnessController.10
            @Override // java.lang.Runnable
            public final void run() {
                BrightnessController brightnessController = BrightnessController.this;
                final RestrictedLockUtils.EnforcedAdmin checkIfRestrictionEnforced = RestrictedLockUtilsInternal.checkIfRestrictionEnforced(brightnessController.mContext, "no_config_brightness", ((UserTrackerImpl) brightnessController.mUserTracker).getUserId());
                post(new Runnable() { // from class: com.android.systemui.settings.brightness.BrightnessController.10.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        BrightnessController.this.mControl.setEnforcedAdmin(checkIfRestrictionEnforced);
                    }
                });
            }
        });
    }

    public final void onChanged(int i, boolean z, boolean z2) {
        int i2;
        if (this.mExternalChange) {
            return;
        }
        if (!z && mIsHighBrightnessMode) {
            BrightnessInfo brightnessInfo = this.mContext.getDisplay().getBrightnessInfo();
            if (brightnessInfo == null) {
                Log.d("CentralSurfaces.BrightnessController", "info is null ");
                return;
            }
            SeslColorSpectrumView$$ExternalSyntheticOutline0.m(new StringBuilder("info.brightness: "), brightnessInfo.brightness, "CentralSurfaces.BrightnessController");
            this.mBrightness = brightnessInfo.brightness;
            this.mBackgroundHandler.post(this.mUpdateSliderRunnable);
            ArrayList arrayList = this.mChangeCallbacks;
            if (arrayList.size() > 0) {
                ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(arrayList.get(0));
                throw null;
            }
        }
        ValueAnimator valueAnimator = this.mSliderAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (this.mAutomatic) {
            i2 = IKnoxCustomManager.Stub.TRANSACTION_getAutoCallPickupState;
        } else {
            i2 = IKnoxCustomManager.Stub.TRANSACTION_setAutoCallPickupState;
        }
        final float f = (i + this.mMinimumBacklight) / this.mMaximumBacklight;
        if (z2) {
            MetricsLogger.action(this.mContext, i2, BrightnessSynchronizer.brightnessFloatToInt(f));
        }
        Log.d("CentralSurfaces.BrightnessController" + this.mDetailTag, "onChanged() = " + f);
        this.mDisplayManager.setTemporaryBrightness(this.mDisplayId, f);
        if (!z) {
            AsyncTask.execute(new Runnable() { // from class: com.android.systemui.settings.brightness.BrightnessController.9
                @Override // java.lang.Runnable
                public final void run() {
                    Settings.System.putIntForUser(BrightnessController.this.mContext.getContentResolver(), "auto_brightness_transition_time", -1, -2);
                    BrightnessController brightnessController = BrightnessController.this;
                    brightnessController.mDisplayManager.setBrightness(brightnessController.mDisplayId, f);
                }
            });
        }
        Iterator it = this.mChangeCallbacks.iterator();
        if (!it.hasNext()) {
            return;
        }
        ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(it.next());
        throw null;
    }
}
