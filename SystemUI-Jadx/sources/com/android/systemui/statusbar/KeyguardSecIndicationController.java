package com.android.systemui.statusbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.ActivityOptions;
import android.app.ActivityTaskManager;
import android.app.AlarmManager;
import android.app.IApplicationThread;
import android.app.ProfilerInfo;
import android.app.SemWallpaperColors;
import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.biometrics.BiometricSourceType;
import android.os.CountDownTimer;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.UserManager;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.LinearLayout;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;
import androidx.vectordrawable.graphics.drawable.ArgbEvaluator;
import com.android.internal.app.IBatteryStats;
import com.android.internal.widget.LockPatternUtils;
import com.android.internal.widget.ViewClippingUtil;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.keyguard.SecCountDownTimer;
import com.android.keyguard.SecRotationWatcher;
import com.android.keyguard.logging.KeyguardLogger;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.biometrics.AuthController;
import com.android.systemui.biometrics.FaceHelpMessageDeferral;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.dock.DockManager;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.keyguard.KeyguardEditModeController;
import com.android.systemui.keyguard.KeyguardEditModeControllerImpl;
import com.android.systemui.keyguard.ScreenLifecycle;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.keyguard.domain.interactor.AlternateBouncerInteractor;
import com.android.systemui.keyguard.ui.binder.KeyguardSecBottomAreaViewBinder$bind$1;
import com.android.systemui.knox.CustomSdkMonitor;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.lockstar.PluginLockStarManager;
import com.android.systemui.pluginlock.PluginLockData;
import com.android.systemui.pluginlock.PluginLockDataImpl;
import com.android.systemui.pluginlock.PluginLockMediator;
import com.android.systemui.pluginlock.PluginLockMediatorImpl;
import com.android.systemui.pluginlock.listener.PluginLockListener$State;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.statusbar.KeyguardIndicationController;
import com.android.systemui.statusbar.KeyguardSecIndicationController;
import com.android.systemui.statusbar.phone.BounceInterpolator;
import com.android.systemui.statusbar.phone.KeyguardBypassController;
import com.android.systemui.statusbar.phone.KeyguardIndicationTextView;
import com.android.systemui.statusbar.phone.KeyguardSecBottomAreaView;
import com.android.systemui.statusbar.phone.KeyguardUsimTextView;
import com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.wakelock.WakeLock;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.widget.SystemUIImageView;
import com.android.systemui.widget.SystemUIWidgetCallback;
import com.android.systemui.widget.SystemUIWidgetUtil;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.systemui.splugins.lockstar.PluginLockStar;
import io.reactivex.Completable;
import io.reactivex.Flowable;
import io.reactivex.Scheduler;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Action;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.LambdaObserver;
import io.reactivex.internal.operators.observable.ObservableDelay;
import io.reactivex.internal.operators.observable.ObservableJust;
import io.reactivex.internal.operators.observable.ObservableObserveOn;
import io.reactivex.schedulers.Schedulers;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KeyguardSecIndicationController extends KeyguardIndicationController implements IndicationChangeListener, SystemUIWidgetCallback, PluginLockListener$State {
    public final AccessibilityManager mAccessibilityManager;
    public final KeyguardBatteryMeterDrawable mBatteryDrawable;
    public CountDownTimer mBiometricsCountdownTimer;
    public final BounceInterpolator mBounceInterpolator;
    public final AnonymousClass2 mClippingParams;
    public SecCountDownTimer mCountDownTimer;
    public final AnonymousClass7 mDisplayListener;
    public final AnonymousClass1 mEditModeListener;
    public final ColorStateList mErrorColor;
    public View mIndicationArea;
    public final KeyguardSecIndicationPolicy mIndicationPolicy;
    public boolean mIsDefaultLockViewMode;
    public boolean mIsFpGuidePos;
    public boolean mIsScreenOn;
    public final KeyguardEditModeController mKeyguardEditModeController;
    public final KeyguardStateController mKeyguardStateController;
    public final AnonymousClass3 mKeyguardStateControllerCallback;
    public final KnoxStateMonitor mKnoxStateMonitor;
    public LinearLayout mLifeStyleContainer;
    public boolean mLifeStyleEnable;
    public Drawable mLifeStyleIcon;
    public SystemUIImageView mLifeStyleImageView;
    public String mLifeStyleName;
    public boolean mLockHelpTextVisible;
    public final PluginLockData mPluginLockData;
    public final PluginLockStarManager mPluginLockStarManager;
    public SecKeyguardCallback mUpdateMonitorCallback;
    public KeyguardIndicationTextView mUpperTextView;
    public LinearLayout mUsimTextArea;
    public KeyguardUsimTextView mUsimTextView;
    public final AnonymousClass6 mWakefulnessObserver;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.KeyguardSecIndicationController$11, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass11 {
        public static final /* synthetic */ int[] $SwitchMap$android$hardware$biometrics$BiometricSourceType;
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$statusbar$IndicationPosition;

        static {
            int[] iArr = new int[BiometricSourceType.values().length];
            $SwitchMap$android$hardware$biometrics$BiometricSourceType = iArr;
            try {
                iArr[BiometricSourceType.FINGERPRINT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$hardware$biometrics$BiometricSourceType[BiometricSourceType.FACE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[IndicationPosition.values().length];
            $SwitchMap$com$android$systemui$statusbar$IndicationPosition = iArr2;
            try {
                iArr2[IndicationPosition.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$systemui$statusbar$IndicationPosition[IndicationPosition.UPPER.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SecKeyguardCallback extends KeyguardIndicationController.BaseKeyguardCallback {
        public int mLastSuccessiveErrorMessage;

        public SecKeyguardCallback() {
            super();
        }

        @Override // com.android.systemui.statusbar.KeyguardIndicationController.BaseKeyguardCallback, com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onBiometricAuthenticated(int i, BiometricSourceType biometricSourceType, boolean z) {
            boolean z2;
            BiometricSourceType biometricSourceType2 = BiometricSourceType.FACE;
            KeyguardSecIndicationController keyguardSecIndicationController = KeyguardSecIndicationController.this;
            if (biometricSourceType == biometricSourceType2 && ((SettingsHelper) Dependency.get(SettingsHelper.class)).isEnabledFaceStayOnLock()) {
                boolean z3 = true;
                if (keyguardSecIndicationController.mVisible && !keyguardSecIndicationController.mDozing) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!z2 || !keyguardSecIndicationController.mIsScreenOn) {
                    z3 = false;
                }
                if (z3) {
                    KeyguardSecIndicationController.m1411$$Nest$mupdateDefaultIndications(keyguardSecIndicationController);
                    keyguardSecIndicationController.showBounceAnimation(keyguardSecIndicationController.mUpperTextView);
                    keyguardSecIndicationController.removeIndication(IndicationEventType.BIOMETRICS_HELP);
                }
            }
            KeyguardSecIndicationPolicy keyguardSecIndicationPolicy = keyguardSecIndicationController.mIndicationPolicy;
            if (keyguardSecIndicationPolicy != null) {
                keyguardSecIndicationPolicy.removeAllIndications();
            }
            keyguardSecIndicationController.removeIndication(IndicationEventType.BIOMETRICS_HELP);
        }

        /* JADX WARN: Code restructure failed: missing block: B:37:0x009f, code lost:
        
            if (r3 == false) goto L54;
         */
        @Override // com.android.systemui.statusbar.KeyguardIndicationController.BaseKeyguardCallback, com.android.keyguard.KeyguardUpdateMonitorCallback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onBiometricError(int r13, java.lang.String r14, android.hardware.biometrics.BiometricSourceType r15) {
            /*
                r12 = this;
                java.lang.Class<com.android.keyguard.KeyguardUpdateMonitor> r0 = com.android.keyguard.KeyguardUpdateMonitor.class
                java.lang.Object r0 = com.android.systemui.Dependency.get(r0)
                com.android.keyguard.KeyguardUpdateMonitor r0 = (com.android.keyguard.KeyguardUpdateMonitor) r0
                android.hardware.biometrics.BiometricSourceType r1 = android.hardware.biometrics.BiometricSourceType.FINGERPRINT
                r2 = 2
                r3 = 1
                r4 = 0
                if (r15 != r1) goto L14
                boolean r1 = r12.shouldSuppressFingerprintError(r13)
                goto L2f
            L14:
                android.hardware.biometrics.BiometricSourceType r1 = android.hardware.biometrics.BiometricSourceType.FACE
                if (r15 != r1) goto L2e
                com.android.systemui.statusbar.KeyguardIndicationController r1 = com.android.systemui.statusbar.KeyguardIndicationController.this
                com.android.keyguard.KeyguardUpdateMonitor r1 = r1.mKeyguardUpdateMonitor
                boolean r1 = r1.isUnlockingWithBiometricAllowed(r3)
                r1 = r1 ^ r3
                if (r1 == 0) goto L27
                r1 = 9
                if (r13 != r1) goto L2c
            L27:
                r1 = 5
                if (r13 == r1) goto L2c
                if (r13 != r2) goto L2e
            L2c:
                r1 = r3
                goto L2f
            L2e:
                r1 = r4
            L2f:
                if (r1 == 0) goto L32
                return
            L32:
                com.android.systemui.statusbar.KeyguardSecIndicationController r1 = com.android.systemui.statusbar.KeyguardSecIndicationController.this
                com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager r5 = r1.mStatusBarKeyguardViewManager
                if (r5 == 0) goto L3d
                boolean r5 = r5.isBouncerShowing()
                goto L3e
            L3d:
                r5 = r4
            L3e:
                if (r5 == 0) goto L51
                android.hardware.biometrics.BiometricSourceType r0 = android.hardware.biometrics.BiometricSourceType.FINGERPRINT
                if (r15 != r0) goto Lb9
                int r15 = r12.mLastSuccessiveErrorMessage
                if (r15 == r13) goto Lb9
                android.content.res.ColorStateList r15 = r1.mInitialTextColorState
                com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager r0 = r1.mStatusBarKeyguardViewManager
                r0.setKeyguardMessage(r14, r15)
                goto Lb9
            L51:
                boolean r0 = r0.mDeviceInteractive
                if (r0 == 0) goto Lb9
                java.lang.String r0 = com.android.systemui.LsRune.VALUE_CONFIG_CARRIER_TEXT_POLICY
                r0 = 16844099(0x1010543, float:2.3697333E-38)
                android.content.Context r5 = r1.mContext
                android.content.res.ColorStateList r10 = com.android.settingslib.Utils.getColorAttr(r0, r5)
                android.hardware.biometrics.BiometricSourceType r0 = android.hardware.biometrics.BiometricSourceType.FACE
                if (r15 == r0) goto Lb9
                android.content.res.Resources r0 = r5.getResources()
                android.content.res.Configuration r0 = r0.getConfiguration()
                android.app.WindowConfiguration r0 = r0.windowConfiguration
                int r0 = r0.getRotation()
                android.hardware.biometrics.BiometricSourceType r5 = android.hardware.biometrics.BiometricSourceType.FINGERPRINT
                if (r15 != r5) goto L8e
                boolean r5 = com.android.systemui.util.DeviceState.isInDisplayFpSensorPositionHigh()
                if (r5 == 0) goto L8e
                if (r0 != 0) goto L8e
                com.android.systemui.statusbar.KeyguardSecIndicationController r6 = com.android.systemui.statusbar.KeyguardSecIndicationController.this
                com.android.systemui.statusbar.IndicationPosition r7 = com.android.systemui.statusbar.IndicationPosition.UPPER
                com.android.systemui.statusbar.IndicationEventType r15 = com.android.systemui.statusbar.IndicationEventType.BIOMETRICS_HELP
                r11 = 0
                r8 = r15
                r9 = r14
                r6.addIndicationTimeout(r7, r8, r9, r10, r11)
                r1.removeIndication(r15)
                goto Lb4
            L8e:
                android.hardware.biometrics.BiometricSourceType r0 = android.hardware.biometrics.BiometricSourceType.FINGERPRINT
                if (r15 != r0) goto La2
                int r0 = com.android.systemui.util.DeviceType.supportInDisplayFingerprint
                r5 = -1
                if (r0 != r5) goto L99
                com.android.systemui.util.DeviceType.supportInDisplayFingerprint = r3
            L99:
                int r0 = com.android.systemui.util.DeviceType.supportInDisplayFingerprint
                if (r0 != r3) goto L9e
                goto L9f
            L9e:
                r3 = r4
            L9f:
                if (r3 != 0) goto La2
                goto Lb4
            La2:
                com.android.systemui.statusbar.IndicationEventType r0 = com.android.systemui.statusbar.IndicationEventType.BIOMETRICS_HELP
                int[] r3 = com.android.systemui.statusbar.KeyguardSecIndicationController.AnonymousClass11.$SwitchMap$android$hardware$biometrics$BiometricSourceType
                int r15 = r15.ordinal()
                r15 = r3[r15]
                if (r15 == r2) goto Laf
                goto Lb1
            Laf:
                java.lang.String r14 = ""
            Lb1:
                r1.addIndicationTimeout(r0, r14, r10, r4)
            Lb4:
                com.android.systemui.statusbar.phone.KeyguardIndicationTextView r14 = r1.mUpperTextView
                r1.showBounceAnimation(r14)
            Lb9:
                r12.mLastSuccessiveErrorMessage = r13
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.KeyguardSecIndicationController.SecKeyguardCallback.onBiometricError(int, java.lang.String, android.hardware.biometrics.BiometricSourceType):void");
        }

        @Override // com.android.systemui.statusbar.KeyguardIndicationController.BaseKeyguardCallback, com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onBiometricHelp(int i, String str, BiometricSourceType biometricSourceType) {
            boolean z;
            boolean z2;
            if (biometricSourceType != BiometricSourceType.FINGERPRINT) {
                return;
            }
            KeyguardUpdateMonitor keyguardUpdateMonitor = (KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class);
            boolean z3 = true;
            if (!keyguardUpdateMonitor.isUnlockingWithBiometricAllowed(true)) {
                return;
            }
            KeyguardSecIndicationController keyguardSecIndicationController = KeyguardSecIndicationController.this;
            StatusBarKeyguardViewManager statusBarKeyguardViewManager = keyguardSecIndicationController.mStatusBarKeyguardViewManager;
            if (statusBarKeyguardViewManager != null) {
                z = statusBarKeyguardViewManager.isBouncerShowing();
            } else {
                z = false;
            }
            KeyguardUpdateMonitor keyguardUpdateMonitor2 = keyguardSecIndicationController.mKeyguardUpdateMonitor;
            if (z) {
                if (keyguardUpdateMonitor2.getLockoutAttemptDeadline() > 0) {
                    z2 = true;
                } else {
                    SecCountDownTimer secCountDownTimer = keyguardSecIndicationController.mCountDownTimer;
                    if (secCountDownTimer != null) {
                        secCountDownTimer.cancel();
                        keyguardSecIndicationController.mCountDownTimer = null;
                        keyguardSecIndicationController.removeIndication(IndicationEventType.PPP_COOLDOWN);
                    }
                    z2 = false;
                }
                if (!z2 && !TextUtils.isEmpty(str)) {
                    keyguardSecIndicationController.mStatusBarKeyguardViewManager.setKeyguardMessage(str, keyguardSecIndicationController.mInitialTextColorState);
                    this.mLastSuccessiveErrorMessage = -1;
                }
            }
            if (keyguardSecIndicationController.mScreenLifecycle.mScreenState == 2 && !keyguardUpdateMonitor.mGoingToSleep) {
                Context context = keyguardSecIndicationController.mContext;
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 5) {
                                if (i != 1001) {
                                    if (i != 1003) {
                                        if (i == 1004) {
                                            str = context.getString(R.string.kg_fingerprint_acquired_tsp_block);
                                        }
                                    } else {
                                        str = context.getString(R.string.kg_fingerprint_acquired_light);
                                    }
                                } else {
                                    str = context.getString(R.string.kg_fingerprint_acquired_too_wet);
                                }
                            } else {
                                str = context.getString(R.string.kg_fingerprint_acquired_too_fast);
                            }
                        } else {
                            str = context.getString(R.string.kg_fingerprint_acquired_image_dirty);
                        }
                    } else {
                        str = context.getString(R.string.kg_fingerprint_acquired_insufficient);
                    }
                } else {
                    str = context.getString(R.string.kg_fingerprint_acquired_partial);
                }
                String str2 = str;
                int rotation = context.getResources().getConfiguration().windowConfiguration.getRotation();
                Point point = DeviceState.sDisplaySize;
                if (!DeviceType.isTablet() || !LsRune.SECURITY_FINGERPRINT_IN_DISPLAY || rotation != 2) {
                    if (DeviceState.isInDisplayFpSensorPositionHigh() && rotation == 0) {
                        keyguardSecIndicationController.addIndicationTimeout(IndicationPosition.UPPER, IndicationEventType.BIOMETRICS_HELP, str2, keyguardSecIndicationController.mErrorColor, false);
                        keyguardSecIndicationController.showBounceAnimation(keyguardSecIndicationController.mUpperTextView);
                    } else {
                        if (DeviceType.supportInDisplayFingerprint == -1) {
                            DeviceType.supportInDisplayFingerprint = 1;
                        }
                        if (DeviceType.supportInDisplayFingerprint != 1) {
                            z3 = false;
                        }
                        if (z3) {
                            keyguardSecIndicationController.addIndicationTimeout(IndicationEventType.BIOMETRICS_HELP, str2, keyguardSecIndicationController.mErrorColor, false);
                            keyguardSecIndicationController.showBounceAnimation(keyguardSecIndicationController.mTopIndicationView);
                        }
                    }
                }
                if (i == -1 && keyguardSecIndicationController.mAccessibilityManager.isTouchExplorationEnabled() && !keyguardUpdateMonitor2.isMaxFailedBiometricUnlockAttemptsShort()) {
                    keyguardSecIndicationController.removeIndication(IndicationEventType.UNLOCK_GUIDE);
                    Completable.timer(1000L, TimeUnit.MILLISECONDS, AndroidSchedulers.mainThread()).subscribe(new Action() { // from class: com.android.systemui.statusbar.KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda0
                        @Override // io.reactivex.functions.Action
                        public final void run() {
                            KeyguardSecIndicationController.SecKeyguardCallback secKeyguardCallback = KeyguardSecIndicationController.SecKeyguardCallback.this;
                            KeyguardSecIndicationController keyguardSecIndicationController2 = KeyguardSecIndicationController.this;
                            String string = keyguardSecIndicationController2.mContext.getString(R.string.kg_fingerprint_retry_notification);
                            if (!keyguardSecIndicationController2.mKeyguardUpdateMonitor.isFingerprintLeave()) {
                                IndicationEventType indicationEventType = IndicationEventType.BIOMETRICS_HELP;
                                KeyguardSecIndicationController keyguardSecIndicationController3 = KeyguardSecIndicationController.this;
                                keyguardSecIndicationController3.addIndicationTimeout(indicationEventType, string, keyguardSecIndicationController3.mErrorColor, false);
                                return;
                            }
                            KeyguardSecIndicationController.m1411$$Nest$mupdateDefaultIndications(keyguardSecIndicationController2);
                        }
                    });
                }
            }
            this.mLastSuccessiveErrorMessage = -1;
        }

        @Override // com.android.systemui.statusbar.KeyguardIndicationController.BaseKeyguardCallback, com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onBiometricRunningStateChanged(BiometricSourceType biometricSourceType, boolean z) {
            boolean z2;
            KeyguardSecIndicationController keyguardSecIndicationController = KeyguardSecIndicationController.this;
            boolean z3 = true;
            if (keyguardSecIndicationController.mVisible && !keyguardSecIndicationController.mDozing) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2 || !keyguardSecIndicationController.mIsScreenOn) {
                z3 = false;
            }
            if (!z3) {
                return;
            }
            if (z) {
                KeyguardSecIndicationController.m1411$$Nest$mupdateDefaultIndications(keyguardSecIndicationController);
                keyguardSecIndicationController.addIndicationTimeout(IndicationEventType.BIOMETRICS_STOP, "", keyguardSecIndicationController.mInitialTextColorState, false);
            } else {
                keyguardSecIndicationController.removeIndication(IndicationEventType.BIOMETRICS_STOP);
                if (!KeyguardSecIndicationController.isAuthenticatedWithBiometric()) {
                    Completable.timer(100L, TimeUnit.MILLISECONDS, AndroidSchedulers.mainThread()).subscribe(new Action() { // from class: com.android.systemui.statusbar.KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda1
                        @Override // io.reactivex.functions.Action
                        public final void run() {
                            KeyguardSecIndicationController.m1411$$Nest$mupdateDefaultIndications(KeyguardSecIndicationController.this);
                        }
                    });
                }
            }
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onKeyguardVisibilityChanged(boolean z) {
            LinearLayout linearLayout;
            if (!z && (linearLayout = KeyguardSecIndicationController.this.mLifeStyleContainer) != null) {
                linearLayout.setVisibility(8);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0081  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00cf  */
        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onLockModeChanged() {
            /*
                r17 = this;
                r0 = r17
                com.android.systemui.statusbar.KeyguardSecIndicationController r10 = com.android.systemui.statusbar.KeyguardSecIndicationController.this
                com.android.keyguard.KeyguardUpdateMonitor r0 = r10.mKeyguardUpdateMonitor
                long r0 = r0.getLockoutAttemptDeadline()
                com.android.keyguard.KeyguardUpdateMonitor r11 = r10.mKeyguardUpdateMonitor
                long r12 = r11.getLockoutBiometricAttemptDeadline()
                java.lang.String r2 = "onLockModeChanged - "
                java.lang.String r3 = " | "
                java.lang.StringBuilder r2 = androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0.m(r2, r0, r3)
                r2.append(r12)
                java.lang.String r2 = r2.toString()
                java.lang.String r14 = "KeyguardSecIndicationController"
                android.util.Log.d(r14, r2)
                r2 = 0
                int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                r15 = 0
                if (r4 <= 0) goto L6c
                java.lang.StringBuilder r4 = new java.lang.StringBuilder
                java.lang.String r5 = "startCountdownTimer - "
                r4.<init>(r5)
                r4.append(r0)
                java.lang.String r4 = r4.toString()
                android.util.Log.d(r14, r4)
                boolean r4 = r11.isPerformingWipeOut()
                if (r4 == 0) goto L44
                goto L7d
            L44:
                com.android.keyguard.SecCountDownTimer r2 = r10.mCountDownTimer
                if (r2 == 0) goto L4d
                r2.cancel()
                r10.mCountDownTimer = r15
            L4d:
                long r2 = android.os.SystemClock.elapsedRealtime()
                com.android.systemui.statusbar.KeyguardSecIndicationController$9 r9 = new com.android.systemui.statusbar.KeyguardSecIndicationController$9
                long r2 = r0 - r2
                r4 = 1000(0x3e8, double:4.94E-321)
                android.content.Context r6 = r10.mContext
                com.android.keyguard.KeyguardUpdateMonitor r7 = r10.mKeyguardUpdateMonitor
                r8 = 0
                r16 = 0
                r0 = r9
                r1 = r10
                r15 = r9
                r9 = r16
                r0.<init>(r2, r4, r6, r7, r8, r9)
                r10.mCountDownTimer = r15
                r15.start()
                goto L7b
            L6c:
                com.android.keyguard.SecCountDownTimer r0 = r10.mCountDownTimer
                if (r0 == 0) goto L7b
                r0.cancel()
                r0 = 0
                r10.mCountDownTimer = r0
                com.android.systemui.statusbar.IndicationEventType r0 = com.android.systemui.statusbar.IndicationEventType.PPP_COOLDOWN
                r10.removeIndication(r0)
            L7b:
                r2 = 0
            L7d:
                int r0 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
                if (r0 <= 0) goto Lcf
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                java.lang.String r1 = "startBiometricCountdownTimer - "
                r0.<init>(r1)
                r0.append(r12)
                java.lang.String r0 = r0.toString()
                android.util.Log.d(r14, r0)
                boolean r0 = r11.isPerformingWipeOut()
                if (r0 == 0) goto L9a
                goto Lde
            L9a:
                android.os.CountDownTimer r0 = r10.mBiometricsCountdownTimer
                if (r0 == 0) goto La4
                r0.cancel()
                r0 = 0
                r10.mBiometricsCountdownTimer = r0
            La4:
                com.android.systemui.statusbar.phone.KeyguardIndicationTextView r0 = r10.mUpperTextView
                if (r0 == 0) goto Lb9
                java.lang.CharSequence r0 = r0.getText()
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                if (r0 != 0) goto Lb9
                com.android.systemui.statusbar.phone.KeyguardIndicationTextView r0 = r10.mUpperTextView
                java.lang.String r1 = ""
                r0.setText(r1)
            Lb9:
                long r0 = android.os.SystemClock.elapsedRealtime()
                com.android.systemui.statusbar.KeyguardSecIndicationController$8 r6 = new com.android.systemui.statusbar.KeyguardSecIndicationController$8
                long r2 = r12 - r0
                r4 = 1000(0x3e8, double:4.94E-321)
                r0 = r6
                r1 = r10
                r0.<init>(r2, r4)
                android.os.CountDownTimer r0 = r6.start()
                r10.mBiometricsCountdownTimer = r0
                goto Lde
            Lcf:
                android.os.CountDownTimer r0 = r10.mBiometricsCountdownTimer
                if (r0 == 0) goto Lde
                r0.cancel()
                r0 = 0
                r10.mBiometricsCountdownTimer = r0
                com.android.systemui.statusbar.IndicationEventType r0 = com.android.systemui.statusbar.IndicationEventType.BIOMETRICS_COOLDOWN
                r10.removeIndication(r0)
            Lde:
                com.android.systemui.statusbar.IndicationEventType r0 = com.android.systemui.statusbar.IndicationEventType.UNLOCK_GUIDE
                java.lang.CharSequence r1 = r10.getUnlockGuideText()
                r10.addIndication(r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.KeyguardSecIndicationController.SecKeyguardCallback.onLockModeChanged():void");
        }

        @Override // com.android.systemui.statusbar.KeyguardIndicationController.BaseKeyguardCallback, com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onRefreshBatteryInfo(KeyguardBatteryStatus keyguardBatteryStatus) {
            super.onRefreshBatteryInfo(keyguardBatteryStatus);
            KeyguardSecIndicationController.this.addInitialIndication();
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onSimStateChanged(int i, int i2, int i3) {
            postDelayed(new Runnable() { // from class: com.android.systemui.statusbar.KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    KeyguardSecIndicationController.this.addLifeStyleIndication();
                }
            }, 500L);
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onStrongAuthStateChanged(int i) {
            boolean z;
            KeyguardSecIndicationController keyguardSecIndicationController = KeyguardSecIndicationController.this;
            keyguardSecIndicationController.getClass();
            int strongAuthForUser = keyguardSecIndicationController.mKeyguardUpdateMonitor.mStrongAuthTracker.getStrongAuthForUser(KeyguardUpdateMonitor.getCurrentUser());
            if ((strongAuthForUser & 1) == 0 && (strongAuthForUser & 2) == 0 && (strongAuthForUser & 4) == 0 && (strongAuthForUser & 8) == 0 && (strongAuthForUser & 16) == 0 && (strongAuthForUser & 32) == 0) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                CountDownTimer countDownTimer = keyguardSecIndicationController.mBiometricsCountdownTimer;
                if (countDownTimer != null) {
                    countDownTimer.cancel();
                    keyguardSecIndicationController.mBiometricsCountdownTimer = null;
                    keyguardSecIndicationController.removeIndication(IndicationEventType.BIOMETRICS_COOLDOWN);
                }
                keyguardSecIndicationController.addIndication(IndicationEventType.UNLOCK_GUIDE, keyguardSecIndicationController.getUnlockGuideText());
            }
        }

        @Override // com.android.systemui.statusbar.KeyguardIndicationController.BaseKeyguardCallback, com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onTrustAgentErrorMessage(CharSequence charSequence) {
            IndicationEventType indicationEventType = IndicationEventType.TRUST_AGENT_ERROR;
            KeyguardSecIndicationController keyguardSecIndicationController = KeyguardSecIndicationController.this;
            keyguardSecIndicationController.addIndication(IndicationPosition.DEFAULT, indicationEventType, charSequence, keyguardSecIndicationController.mErrorColor);
        }

        @Override // com.android.systemui.statusbar.KeyguardIndicationController.BaseKeyguardCallback, com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onTrustChanged(int i) {
            Completable.timer(100L, TimeUnit.MILLISECONDS, AndroidSchedulers.mainThread()).subscribe(new Action() { // from class: com.android.systemui.statusbar.KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda2
                @Override // io.reactivex.functions.Action
                public final void run() {
                    KeyguardSecIndicationController keyguardSecIndicationController = KeyguardSecIndicationController.this;
                    if (!keyguardSecIndicationController.mKeyguardUpdateMonitor.isKeyguardUnlocking()) {
                        IndicationEventType indicationEventType = IndicationEventType.TRUST_AGENT_HELP;
                        keyguardSecIndicationController.removeIndication(indicationEventType);
                        if (!keyguardSecIndicationController.mKeyguardUpdateMonitor.getUserHasTrust(KeyguardUpdateMonitor.getCurrentUser())) {
                            indicationEventType = IndicationEventType.UNLOCK_GUIDE;
                        }
                        keyguardSecIndicationController.addIndication(indicationEventType, keyguardSecIndicationController.getUnlockGuideText());
                    }
                }
            });
        }

        @Override // com.android.systemui.statusbar.KeyguardIndicationController.BaseKeyguardCallback, com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onUserUnlocked() {
            KeyguardSecIndicationController.this.removeIndication(IndicationEventType.UNLOCK_GUIDE);
        }
    }

    /* renamed from: -$$Nest$mupdateDefaultIndications, reason: not valid java name */
    public static void m1411$$Nest$mupdateDefaultIndications(final KeyguardSecIndicationController keyguardSecIndicationController) {
        IndicationEventType indicationEventType;
        boolean z;
        keyguardSecIndicationController.addInitialIndication();
        keyguardSecIndicationController.addLifeStyleIndication();
        if (isAuthenticatedWithBiometric()) {
            indicationEventType = IndicationEventType.BIOMETRICS_HELP;
        } else {
            indicationEventType = IndicationEventType.UNLOCK_GUIDE;
        }
        keyguardSecIndicationController.addIndication(indicationEventType, keyguardSecIndicationController.getUnlockGuideText());
        if (keyguardSecIndicationController.mIsFpGuidePos) {
            Runnable runnable = new Runnable() { // from class: com.android.systemui.statusbar.KeyguardSecIndicationController$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    int i;
                    KeyguardSecIndicationController keyguardSecIndicationController2 = KeyguardSecIndicationController.this;
                    keyguardSecIndicationController2.getClass();
                    boolean z2 = LsRune.SECURITY_FINGERPRINT_IN_DISPLAY;
                    Context context = keyguardSecIndicationController2.mContext;
                    if (z2) {
                        int rotation = context.getResources().getConfiguration().windowConfiguration.getRotation();
                        if (rotation != 1) {
                            if (rotation != 2) {
                                if (rotation != 3) {
                                    i = R.string.kg_in_display_fingerprint_sensor_0_help_instructions;
                                } else {
                                    i = R.string.kg_in_display_fingerprint_sensor_270_help_instructions;
                                }
                            } else {
                                i = R.string.kg_in_display_fingerprint_sensor_180_help_instructions;
                            }
                        } else {
                            i = R.string.kg_in_display_fingerprint_sensor_90_help_instructions;
                        }
                    } else {
                        i = 0;
                    }
                    if (i != 0) {
                        keyguardSecIndicationController2.mTopIndicationView.announceForAccessibility(context.getString(i));
                    }
                }
            };
            KeyguardIndicationController.AnonymousClass2 anonymousClass2 = keyguardSecIndicationController.mHandler;
            if (anonymousClass2.hasCallbacks(runnable)) {
                anonymousClass2.removeCallbacks(runnable);
            }
            boolean z2 = false;
            if (keyguardSecIndicationController.mVisible && !keyguardSecIndicationController.mDozing) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                StatusBarKeyguardViewManager statusBarKeyguardViewManager = keyguardSecIndicationController.mStatusBarKeyguardViewManager;
                if (statusBarKeyguardViewManager != null) {
                    z2 = statusBarKeyguardViewManager.isBouncerShowing();
                }
                if (!z2) {
                    anonymousClass2.postDelayed(runnable, 3000L);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object, com.android.systemui.statusbar.KeyguardSecIndicationController$1] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.android.systemui.statusbar.KeyguardSecIndicationController$2] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object, com.android.systemui.statusbar.KeyguardSecIndicationController$3] */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.android.systemui.statusbar.KeyguardSecIndicationController$6, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.android.systemui.statusbar.KeyguardSecIndicationController$7] */
    public KeyguardSecIndicationController(Context context, Looper looper, WakeLock.Builder builder, KeyguardStateController keyguardStateController, StatusBarStateController statusBarStateController, KeyguardUpdateMonitor keyguardUpdateMonitor, DockManager dockManager, BroadcastDispatcher broadcastDispatcher, DevicePolicyManager devicePolicyManager, IBatteryStats iBatteryStats, UserManager userManager, DelayableExecutor delayableExecutor, DelayableExecutor delayableExecutor2, FalsingManager falsingManager, AuthController authController, LockPatternUtils lockPatternUtils, ScreenLifecycle screenLifecycle, KeyguardBypassController keyguardBypassController, AccessibilityManager accessibilityManager, FaceHelpMessageDeferral faceHelpMessageDeferral, KeyguardLogger keyguardLogger, AlternateBouncerInteractor alternateBouncerInteractor, AlarmManager alarmManager, UserTracker userTracker, FeatureFlags featureFlags, SecRotationWatcher secRotationWatcher, PluginLockMediator pluginLockMediator, PluginLockData pluginLockData, PluginLockStarManager pluginLockStarManager, KeyguardEditModeController keyguardEditModeController) {
        super(context, looper, builder, keyguardStateController, statusBarStateController, keyguardUpdateMonitor, dockManager, broadcastDispatcher, devicePolicyManager, iBatteryStats, userManager, delayableExecutor, delayableExecutor2, falsingManager, authController, lockPatternUtils, screenLifecycle, keyguardBypassController, accessibilityManager, faceHelpMessageDeferral, keyguardLogger, alternateBouncerInteractor, alarmManager, userTracker, featureFlags);
        this.mIsScreenOn = true;
        ?? r5 = new KeyguardEditModeController.Listener() { // from class: com.android.systemui.statusbar.KeyguardSecIndicationController.1
            @Override // com.android.systemui.keyguard.KeyguardEditModeController.Listener
            public final void onAnimationEnded() {
                KeyguardSecIndicationController.this.setVisible(true);
            }

            @Override // com.android.systemui.keyguard.KeyguardEditModeController.Listener
            public final void onAnimationStarted(boolean z) {
                KeyguardSecIndicationController.this.setVisible(false);
            }
        };
        this.mEditModeListener = r5;
        this.mClippingParams = new ViewClippingUtil.ClippingParameters() { // from class: com.android.systemui.statusbar.KeyguardSecIndicationController.2
            public final boolean shouldFinish(View view) {
                if (view == KeyguardSecIndicationController.this.mIndicationArea) {
                    return true;
                }
                return false;
            }
        };
        this.mLockHelpTextVisible = true;
        this.mIsDefaultLockViewMode = true;
        ?? r6 = new KeyguardStateController.Callback() { // from class: com.android.systemui.statusbar.KeyguardSecIndicationController.3
            @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
            public final void onPrimaryBouncerShowingChanged() {
                KeyguardSecIndicationController keyguardSecIndicationController = KeyguardSecIndicationController.this;
                if (((KeyguardStateControllerImpl) keyguardSecIndicationController.mKeyguardStateController).mPrimaryBouncerShowing) {
                    keyguardSecIndicationController.mIndicationPolicy.removeAllIndications();
                } else {
                    keyguardSecIndicationController.setVisible(true);
                }
            }
        };
        this.mKeyguardStateControllerCallback = r6;
        ?? r7 = new WakefulnessLifecycle.Observer() { // from class: com.android.systemui.statusbar.KeyguardSecIndicationController.6
            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onFinishedGoingToSleep() {
                KeyguardSecIndicationPolicy keyguardSecIndicationPolicy = KeyguardSecIndicationController.this.mIndicationPolicy;
                if (keyguardSecIndicationPolicy != null) {
                    keyguardSecIndicationPolicy.removeAllIndications();
                }
            }

            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onStartedGoingToSleep() {
                KeyguardSecIndicationController.this.mIsScreenOn = false;
            }

            @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
            public final void onStartedWakingUp() {
                KeyguardSecIndicationController keyguardSecIndicationController = KeyguardSecIndicationController.this;
                keyguardSecIndicationController.mIsScreenOn = true;
                keyguardSecIndicationController.addInitialIndication();
                keyguardSecIndicationController.addLifeStyleIndication();
                keyguardSecIndicationController.addIndication(IndicationEventType.UNLOCK_GUIDE, keyguardSecIndicationController.getUnlockGuideText());
            }
        };
        this.mWakefulnessObserver = r7;
        this.mDisplayListener = new DisplayLifecycle.Observer(this) { // from class: com.android.systemui.statusbar.KeyguardSecIndicationController.7
            @Override // com.android.systemui.keyguard.DisplayLifecycle.Observer
            public final void onFolderStateChanged(boolean z) {
                String str = LsRune.VALUE_CONFIG_CARRIER_TEXT_POLICY;
            }
        };
        this.mKeyguardStateController = keyguardStateController;
        ((KeyguardStateControllerImpl) keyguardStateController).addCallback(r6);
        this.mAccessibilityManager = accessibilityManager;
        KeyguardSecIndicationPolicy keyguardSecIndicationPolicy = new KeyguardSecIndicationPolicy();
        this.mIndicationPolicy = keyguardSecIndicationPolicy;
        keyguardSecIndicationPolicy.mListenerList.add(this);
        keyguardSecIndicationPolicy.mTopItemMap.keySet().stream().forEach(new KeyguardSecIndicationPolicy$$ExternalSyntheticLambda1(0, keyguardSecIndicationPolicy, this));
        this.mBatteryDrawable = new KeyguardBatteryMeterDrawable(context);
        this.mBounceInterpolator = new BounceInterpolator();
        this.mKnoxStateMonitor = (KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class);
        this.mKeyguardEditModeController = keyguardEditModeController;
        ((ArrayList) ((KeyguardEditModeControllerImpl) keyguardEditModeController).listeners).add(r5);
        this.mPluginLockStarManager = pluginLockStarManager;
        pluginLockStarManager.registerCallback("KeyguardSecIndicationController", new PluginLockStarManager.LockStarCallback() { // from class: com.android.systemui.statusbar.KeyguardSecIndicationController.5
            @Override // com.android.systemui.lockstar.PluginLockStarManager.LockStarCallback
            public final void onChangedLockStarEnabled(boolean z) {
                if (!z) {
                    KeyguardSecIndicationController keyguardSecIndicationController = KeyguardSecIndicationController.this;
                    keyguardSecIndicationController.mTopIndicationView.updateFontSizeInKeyguardBoundary(true, keyguardSecIndicationController.mContext.getResources().getConfiguration());
                    keyguardSecIndicationController.mTopIndicationView.updateTextView();
                }
            }
        });
        WallpaperUtils.registerSystemUIWidgetCallback(this, SystemUIWidgetUtil.convertFlag("bottom"));
        ((WakefulnessLifecycle) Dependency.get(WakefulnessLifecycle.class)).addObserver(r7);
        String str = LsRune.VALUE_CONFIG_CARRIER_TEXT_POLICY;
        ((PluginLockMediatorImpl) pluginLockMediator).registerStateCallback(this);
        this.mPluginLockData = pluginLockData;
        this.mErrorColor = ColorStateList.valueOf(-1);
        IndicationEventType indicationEventType = IndicationEventType.EMPTY_LOW;
        addIndication(indicationEventType, "");
        IndicationPosition indicationPosition = IndicationPosition.UPPER;
        addIndication(indicationPosition, indicationEventType, "", this.mInitialTextColorState);
        if (LsRune.SECURITY_SIM_PERM_DISABLED && this.mKeyguardUpdateMonitor.isIccBlockedPermanently()) {
            IndicationEventType indicationEventType2 = IndicationEventType.EMPTY_HIGH;
            addIndication(indicationEventType2, "");
            addIndication(indicationPosition, indicationEventType2, "", this.mInitialTextColorState);
        }
    }

    public static boolean isAuthenticatedWithBiometric() {
        return ((KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class)).isAuthenticatedWithBiometric(KeyguardUpdateMonitor.getCurrentUser());
    }

    public final SpannableStringBuilder AddBatteryIcon(String str) {
        boolean z;
        float f;
        KeyguardIndicationTextView keyguardIndicationTextView = this.mTopIndicationView;
        KeyguardBatteryMeterDrawable keyguardBatteryMeterDrawable = this.mBatteryDrawable;
        if (keyguardIndicationTextView != null) {
            float textSize = keyguardIndicationTextView.getTextSize();
            keyguardBatteryMeterDrawable.batteryLevel = this.mBatteryLevel;
            int currentTextColor = this.mTopIndicationView.getCurrentTextColor();
            if (((Color.red(currentTextColor) + Color.green(currentTextColor)) + Color.blue(currentTextColor)) / 3 <= 128) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                f = 1.0f;
            } else {
                f = 0.0f;
            }
            keyguardBatteryMeterDrawable.darkIntensity = f;
            int i = (int) textSize;
            keyguardBatteryMeterDrawable.setBounds(0, 0, (i * 8) / 14, i);
            keyguardBatteryMeterDrawable.batteryLevelColor = this.mTopIndicationView.getCurrentTextColor();
            Paint paint = keyguardBatteryMeterDrawable.batteryLevelBackgroundPaint;
            float f2 = keyguardBatteryMeterDrawable.darkIntensity;
            int i2 = keyguardBatteryMeterDrawable.batteryLevelBackgroundLightColor;
            int i3 = keyguardBatteryMeterDrawable.batteryLevelBackgroundDarkColor;
            ArgbEvaluator argbEvaluator = ArgbEvaluator.sInstance;
            paint.setColor(((Integer) argbEvaluator.evaluate(f2, Integer.valueOf(i2), Integer.valueOf(i3))).intValue());
            keyguardBatteryMeterDrawable.batteryLightningBoltLightPaint.setColor(keyguardBatteryMeterDrawable.batteryLevelColor);
            keyguardBatteryMeterDrawable.batteryLightningBoltDarkPaint.setColor(((Integer) argbEvaluator.evaluate(keyguardBatteryMeterDrawable.darkIntensity, Integer.valueOf(keyguardBatteryMeterDrawable.batteryLightningBoltDarkColor), Integer.valueOf(keyguardBatteryMeterDrawable.batteryLightningBoltLightColor))).intValue());
            keyguardBatteryMeterDrawable.invalidateSelf();
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("  ");
        spannableStringBuilder.append((CharSequence) str);
        int i4 = keyguardBatteryMeterDrawable.width;
        if (i4 <= 0) {
            i4 = 1;
        }
        int i5 = keyguardBatteryMeterDrawable.height;
        if (i5 <= 0) {
            i5 = 1;
        }
        Bitmap createBitmap = Bitmap.createBitmap(i4, i5, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        keyguardBatteryMeterDrawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        keyguardBatteryMeterDrawable.draw(canvas);
        BitmapDrawable bitmapDrawable = new BitmapDrawable(this.mContext.getResources(), createBitmap);
        bitmapDrawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        spannableStringBuilder.setSpan(new ImageSpan(bitmapDrawable, 2), 0, 1, 33);
        return spannableStringBuilder;
    }

    public final void addIndication(IndicationEventType indicationEventType, CharSequence charSequence) {
        addIndication(IndicationPosition.DEFAULT, indicationEventType, charSequence, this.mInitialTextColorState);
    }

    public final void addIndicationTimeout(IndicationEventType indicationEventType, CharSequence charSequence, ColorStateList colorStateList, boolean z) {
        addIndicationTimeout(IndicationPosition.DEFAULT, indicationEventType, charSequence, colorStateList, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:208:0x002d, code lost:
    
        if ((r6 & 32) != 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x03ef, code lost:
    
        if (r0 != false) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x03f3, code lost:
    
        if (r3 == false) goto L214;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0396 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x03fa  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x03d7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void addInitialIndication() {
        /*
            Method dump skipped, instructions count: 1136
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.KeyguardSecIndicationController.addInitialIndication():void");
    }

    public final void addLifeStyleIndication() {
        int i;
        LinearLayout linearLayout;
        KeyguardUsimTextView keyguardUsimTextView;
        if (this.mLifeStyleIndicationView != null && this.mLifeStyleImageView != null) {
            if (LsRune.LOCKUI_BOTTOM_USIM_TEXT && (linearLayout = this.mUsimTextArea) != null && linearLayout.getVisibility() == 0 && (keyguardUsimTextView = this.mUsimTextView) != null && keyguardUsimTextView.getVisibility() == 0 && this.mUsimTextView.getText() != null) {
                this.mLifeStyleContainer.setVisibility(8);
                return;
            }
            boolean z = false;
            this.mLifeStyleContainer.setVisibility(0);
            LinearLayout linearLayout2 = this.mLifeStyleContainer;
            if (MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0.m(this.mContext) == 1) {
                i = 1;
            } else {
                i = 0;
            }
            linearLayout2.setLayoutDirection(i);
            this.mLifeStyleContainer.setClickable(this.mLifeStyleEnable);
            if (this.mLifeStyleEnable) {
                this.mLifeStyleIndicationView.switchIndication(this.mLifeStyleName, null);
                this.mLifeStyleImageView.setImageDrawable(this.mLifeStyleIcon);
                this.mLifeStyleIndicationView.updateTextView();
                this.mLifeStyleImageView.setImageTintList(this.mLifeStyleIndicationView.getTextColors());
                this.mLifeStyleIndicationView.setSelected(true);
                PluginLockStarManager pluginLockStarManager = this.mPluginLockStarManager;
                PluginLockStar pluginLockStar = pluginLockStarManager.mPluginLockStar;
                if (pluginLockStar != null) {
                    z = pluginLockStar.isLockStarEnabled();
                }
                if (z) {
                    PluginLockStar.Modifier modifier = pluginLockStarManager.getModifier("UpdatelifestyleScale");
                    if (modifier != null) {
                        modifier.accept(this.mLifeStyleIndicationView);
                        modifier.accept(this.mLifeStyleImageView);
                    }
                    PluginLockStar.Modifier modifier2 = pluginLockStarManager.getModifier("UpdatelifestyleColor");
                    if (modifier2 != null) {
                        this.mLifeStyleImageView.setImageTintList(null);
                        modifier2.accept(this.mLifeStyleIndicationView);
                        modifier2.accept(this.mLifeStyleImageView);
                        return;
                    }
                    return;
                }
                return;
            }
            this.mLifeStyleContainer.setVisibility(8);
            if (!TextUtils.isEmpty(this.mLifeStyleIndicationView.getText())) {
                this.mLifeStyleIndicationView.clearMessages();
            }
            this.mLifeStyleIndicationView.setSelected(false);
            this.mLifeStyleImageView.setImageDrawable(null);
        }
    }

    public final void changeIndication(CharSequence charSequence, boolean z, boolean z2) {
        boolean z3;
        boolean isLockStarEnabled;
        TextUtils.TruncateAt truncateAt;
        if (this.mTopIndicationView != null) {
            if (this.mLockHelpTextVisible || TextUtils.isEmpty(charSequence)) {
                TextPaint paint = this.mTopIndicationView.getPaint();
                int width = this.mTopIndicationView.getWidth();
                int lineCount = new StaticLayout(this.mTopIndicationView.getText(), paint, width, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false).getLineCount();
                boolean z4 = false;
                if (this.mTopIndicationView.getEllipsize() != TextUtils.TruncateAt.MARQUEE && lineCount != 1) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                KeyguardIndicationTextView keyguardIndicationTextView = this.mTopIndicationView;
                if (keyguardIndicationTextView != null) {
                    keyguardIndicationTextView.setSingleLine(z2);
                    KeyguardIndicationTextView keyguardIndicationTextView2 = this.mTopIndicationView;
                    if (z2) {
                        truncateAt = TextUtils.TruncateAt.MARQUEE;
                    } else {
                        truncateAt = TextUtils.TruncateAt.END;
                    }
                    keyguardIndicationTextView2.setEllipsize(truncateAt);
                    this.mTopIndicationView.setSelected(z2);
                }
                if (z) {
                    final KeyguardIndicationTextView keyguardIndicationTextView3 = this.mTopIndicationView;
                    final String charSequence2 = charSequence.toString();
                    Context context = this.mContext;
                    int integer = context.getResources().getInteger(R.integer.wired_charging_keyguard_text_animation_distance);
                    int integer2 = context.getResources().getInteger(R.integer.wired_charging_keyguard_text_animation_duration_up);
                    final int integer3 = context.getResources().getInteger(R.integer.wired_charging_keyguard_text_animation_duration_down);
                    keyguardIndicationTextView3.animate().cancel();
                    ViewClippingUtil.setClippingDeactivated(keyguardIndicationTextView3, true, this.mClippingParams);
                    keyguardIndicationTextView3.animate().translationYBy(integer).setInterpolator(new LinearInterpolator()).setDuration(integer2).setListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.KeyguardSecIndicationController.10
                        public boolean mCancelled;

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationCancel(Animator animator) {
                            keyguardIndicationTextView3.setTranslationY(0.0f);
                            this.mCancelled = true;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            if (this.mCancelled) {
                                ViewClippingUtil.setClippingDeactivated(keyguardIndicationTextView3, false, KeyguardSecIndicationController.this.mClippingParams);
                            } else {
                                keyguardIndicationTextView3.animate().setDuration(integer3).setInterpolator(KeyguardSecIndicationController.this.mBounceInterpolator).translationY(0.0f).setListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.KeyguardSecIndicationController.10.1
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public final void onAnimationEnd(Animator animator2) {
                                        keyguardIndicationTextView3.setTranslationY(0.0f);
                                        AnonymousClass10 anonymousClass10 = AnonymousClass10.this;
                                        ViewClippingUtil.setClippingDeactivated(keyguardIndicationTextView3, false, KeyguardSecIndicationController.this.mClippingParams);
                                    }
                                });
                            }
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                            keyguardIndicationTextView3.switchIndication(charSequence2, null);
                        }
                    });
                    return;
                }
                this.mTopIndicationView.switchIndication(charSequence, null);
                PluginLockStarManager pluginLockStarManager = this.mPluginLockStarManager;
                PluginLockStar pluginLockStar = pluginLockStarManager.mPluginLockStar;
                if (pluginLockStar == null) {
                    isLockStarEnabled = false;
                } else {
                    isLockStarEnabled = pluginLockStar.isLockStarEnabled();
                }
                if (isLockStarEnabled) {
                    PluginLockStar.Modifier modifier = pluginLockStarManager.getModifier("UpdatehelptextScale");
                    if (modifier != null) {
                        modifier.accept(this.mTopIndicationView);
                    }
                    PluginLockStar.Modifier modifier2 = pluginLockStarManager.getModifier("UpdatehelptextColor");
                    if (modifier2 != null) {
                        modifier2.accept(this.mTopIndicationView);
                    }
                }
                int lineCount2 = new StaticLayout(this.mTopIndicationView.getText(), paint, width, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false).getLineCount();
                if (this.mTopIndicationView.getEllipsize() == TextUtils.TruncateAt.MARQUEE || lineCount2 == 1) {
                    z4 = true;
                }
                if (z3 != z4) {
                    ((KeyguardSecBottomAreaViewBinder$bind$1) ((KeyguardSecBottomAreaView) this.mTopIndicationView.getParent().getParent()).binding).updateIndicationPosition();
                }
            }
        }
    }

    @Override // com.android.systemui.statusbar.KeyguardIndicationController
    public final void dump(PrintWriter printWriter, String[] strArr) {
        super.dump(printWriter, strArr);
        KeyguardSecIndicationPolicy keyguardSecIndicationPolicy = this.mIndicationPolicy;
        if (keyguardSecIndicationPolicy != null) {
            keyguardSecIndicationPolicy.dump(printWriter, strArr);
        }
    }

    @Override // com.android.systemui.statusbar.KeyguardIndicationController
    public final KeyguardUpdateMonitorCallback getKeyguardCallback() {
        if (this.mUpdateMonitorCallback == null) {
            this.mUpdateMonitorCallback = new SecKeyguardCallback();
        }
        return this.mUpdateMonitorCallback;
    }

    public final CharSequence getUnlockGuideText() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i;
        int i2;
        boolean z5 = LsRune.SECURITY_SIM_PERM_DISABLED;
        boolean z6 = true;
        int i3 = 0;
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.mKeyguardUpdateMonitor;
        if (z5 && keyguardUpdateMonitor.isIccBlockedPermanently()) {
            z2 = true;
        } else {
            CustomSdkMonitor customSdkMonitor = ((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).mCustomSdkMonitor;
            if (customSdkMonitor != null) {
                if ((customSdkMonitor.mKnoxCustomLockScreenHiddenItems & 256) != 0) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (z3) {
                    z = true;
                    z2 = !z;
                }
            }
            z = false;
            z2 = !z;
        }
        if (z2) {
            return "";
        }
        boolean userHasTrust = keyguardUpdateMonitor.getUserHasTrust(KeyguardUpdateMonitor.getCurrentUser());
        int currentUser = KeyguardUpdateMonitor.getCurrentUser();
        boolean isUnlockingWithBiometricAllowed = keyguardUpdateMonitor.isUnlockingWithBiometricAllowed(true);
        if (isUnlockingWithBiometricAllowed && keyguardUpdateMonitor.isFingerprintOptionEnabled() && !isAuthenticatedWithBiometric() && !userHasTrust) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (!isUnlockingWithBiometricAllowed || !keyguardUpdateMonitor.isFaceOptionEnabled() || keyguardUpdateMonitor.isCameraDisabledByPolicy() || keyguardUpdateMonitor.isFaceDisabled(currentUser) || !keyguardUpdateMonitor.isFaceDetectionRunning()) {
            z6 = false;
        }
        boolean isTouchExplorationEnabled = this.mAccessibilityManager.isTouchExplorationEnabled();
        this.mIsFpGuidePos = false;
        Context context = this.mContext;
        if (!z4 && !z6) {
            if (keyguardUpdateMonitor.getUserHasTrust(KeyguardUpdateMonitor.getCurrentUser())) {
                i2 = R.string.kg_extend_lock_content_description;
            } else if (keyguardUpdateMonitor.isSecure() && !keyguardUpdateMonitor.isBiometricsAuthenticatedOnLock()) {
                i2 = R.string.kg_swipe_unlock_instructions;
            } else {
                i2 = R.string.kg_swipe_active_instructions;
            }
        } else {
            if ((!z4 || !z6) && z4) {
                if (isTouchExplorationEnabled) {
                    i = R.string.kg_fingerprint_or_swipe_unlock_voice_assistant_instructions;
                } else {
                    i = 0;
                }
                this.mIsFpGuidePos = isTouchExplorationEnabled;
                i2 = i;
            } else {
                i2 = 0;
            }
            if (i2 != 0) {
                return context.getString(i2);
            }
        }
        if (isTouchExplorationEnabled) {
            if (!keyguardUpdateMonitor.isUnlockCompleted() && (z4 || z6)) {
                i2 = R.string.kg_voice_assistant_unlock_strong_auth_instructions;
            } else {
                if (!userHasTrust && !z4 && !z6) {
                    i3 = R.string.kg_voice_assistant_unlock_instructions;
                }
                if (!isAuthenticatedWithBiometric() && keyguardUpdateMonitor.isSecure()) {
                    i2 = i3;
                } else {
                    i2 = R.string.kg_voice_assistant_active_instructions;
                }
            }
        }
        if (i2 == 0) {
            return "";
        }
        return context.getString(i2);
    }

    @Override // com.android.systemui.statusbar.KeyguardIndicationController
    public final void hideTransientIndication() {
        removeIndication(IndicationEventType.LEGACY_TRANSIENT);
    }

    @Override // com.android.systemui.statusbar.KeyguardIndicationController
    public final void hideTransientIndicationDelayed(long j) {
        IndicationEventType indicationEventType = IndicationEventType.LEGACY_TRANSIENT;
        int i = ObjectHelper.$r8$clinit;
        if (indicationEventType != null) {
            ObservableJust observableJust = new ObservableJust(indicationEventType);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            Scheduler scheduler = Schedulers.COMPUTATION;
            if (timeUnit != null) {
                if (scheduler != null) {
                    ObservableDelay observableDelay = new ObservableDelay(observableJust, j, timeUnit, scheduler, false);
                    Scheduler mainThread = AndroidSchedulers.mainThread();
                    int i2 = Flowable.BUFFER_SIZE;
                    if (i2 > 0) {
                        ObservableObserveOn observableObserveOn = new ObservableObserveOn(observableDelay, mainThread, false, i2);
                        KeyguardSecIndicationController$$ExternalSyntheticLambda0 keyguardSecIndicationController$$ExternalSyntheticLambda0 = new KeyguardSecIndicationController$$ExternalSyntheticLambda0(this, 0);
                        Functions.OnErrorMissingConsumer onErrorMissingConsumer = Functions.ON_ERROR_MISSING;
                        Functions.EmptyAction emptyAction = Functions.EMPTY_ACTION;
                        Functions.EmptyConsumer emptyConsumer = Functions.EMPTY_CONSUMER;
                        if (onErrorMissingConsumer != null) {
                            if (emptyAction != null) {
                                if (emptyConsumer != null) {
                                    observableObserveOn.subscribe(new LambdaObserver(keyguardSecIndicationController$$ExternalSyntheticLambda0, onErrorMissingConsumer, emptyAction, emptyConsumer));
                                    return;
                                }
                                throw new NullPointerException("onSubscribe is null");
                            }
                            throw new NullPointerException("onComplete is null");
                        }
                        throw new NullPointerException("onError is null");
                    }
                    throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("bufferSize > 0 required but it was ", i2));
                }
                throw new NullPointerException("scheduler is null");
            }
            throw new NullPointerException("unit is null");
        }
        throw new NullPointerException("item is null");
    }

    @Override // com.android.systemui.statusbar.KeyguardIndicationController
    public final boolean isInLifeStyleArea(MotionEvent motionEvent) {
        LinearLayout linearLayout = this.mLifeStyleContainer;
        if (linearLayout != null && linearLayout.getVisibility() == 0) {
            Rect rect = new Rect();
            this.mLifeStyleContainer.getGlobalVisibleRect(rect);
            if (rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.KeyguardIndicationController
    public final void onConfigChanged() {
        LinearLayout linearLayout = this.mLifeStyleContainer;
        Context context = this.mContext;
        if (linearLayout != null) {
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.keyguard_indication_life_style_container_padding_horizontal);
            int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.keyguard_indication_life_style_container_padding_vertical);
            this.mLifeStyleContainer.setPadding(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize2);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mLifeStyleContainer.getLayoutParams();
            marginLayoutParams.bottomMargin = context.getResources().getDimensionPixelSize(R.dimen.keyguard_indication_life_style_margin_bottom);
            this.mLifeStyleContainer.setLayoutParams(marginLayoutParams);
        }
        SystemUIImageView systemUIImageView = this.mLifeStyleImageView;
        if (systemUIImageView != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) systemUIImageView.getLayoutParams();
            int dimensionPixelSize3 = context.getResources().getDimensionPixelSize(R.dimen.keyguard_indication_life_style_height);
            marginLayoutParams2.width = dimensionPixelSize3;
            marginLayoutParams2.height = dimensionPixelSize3;
            marginLayoutParams2.rightMargin = context.getResources().getDimensionPixelSize(R.dimen.keyguard_indication_life_style_margin);
            this.mLifeStyleImageView.setLayoutParams(marginLayoutParams2);
        }
        this.mTopIndicationView.updateFontSizeInKeyguardBoundary(true, context.getResources().getConfiguration());
        boolean z = false;
        setVisible(false);
        Completable.timer(100L, TimeUnit.MILLISECONDS, AndroidSchedulers.mainThread()).subscribe(new KeyguardSecIndicationController$$ExternalSyntheticLambda0(this, 2));
        PluginLockStarManager pluginLockStarManager = this.mPluginLockStarManager;
        if (pluginLockStarManager != null) {
            PluginLockStar pluginLockStar = pluginLockStarManager.mPluginLockStar;
            if (pluginLockStar != null) {
                z = pluginLockStar.isLockStarEnabled();
            }
            if (z) {
                PluginLockStar.Modifier modifier = pluginLockStarManager.getModifier("UpdatelifestyleScale");
                if (modifier != null) {
                    modifier.accept(this.mLifeStyleImageView);
                    modifier.accept(this.mLifeStyleIndicationView);
                }
                PluginLockStar.Modifier modifier2 = pluginLockStarManager.getModifier("UpdatelifestyleColor");
                if (modifier2 != null) {
                    SystemUIImageView systemUIImageView2 = this.mLifeStyleImageView;
                    if (systemUIImageView2 != null) {
                        systemUIImageView2.setImageTintList(null);
                    }
                    modifier2.accept(this.mLifeStyleImageView);
                    modifier2.accept(this.mLifeStyleIndicationView);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onIndicationChanged(com.android.systemui.statusbar.IndicationPosition r6, com.android.systemui.statusbar.IndicationItem r7) {
        /*
            r5 = this;
            java.lang.String r0 = "KeyguardSecIndicationController"
            if (r6 == 0) goto Lbd
            if (r7 != 0) goto L8
            goto Lbd
        L8:
            java.lang.CharSequence r1 = r7.mText
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            r2 = 0
            r3 = 1
            if (r1 != 0) goto L21
            boolean r1 = r5.mVisible
            if (r1 == 0) goto L1c
            boolean r1 = r5.mDozing
            if (r1 != 0) goto L1c
            r1 = r3
            goto L1d
        L1c:
            r1 = r2
        L1d:
            if (r1 != 0) goto L21
            r1 = r2
            goto L22
        L21:
            r1 = r3
        L22:
            if (r1 != 0) goto L3c
            java.lang.String r5 = "onIndicationChanged() return - keyguard is not visible, pos = %7s, item = %s"
            java.lang.Object[] r6 = new java.lang.Object[]{r6, r7}
            java.lang.String r5 = java.lang.String.format(r5, r6)
            java.lang.String r6 = "OWNER_INFO"
            boolean r6 = r5.contains(r6)
            if (r6 == 0) goto L38
            java.lang.String r5 = "onIndicationChanged() return - keyguard is not visible, skip ownerInfo"
        L38:
            android.util.Log.d(r0, r5)
            return
        L3c:
            com.android.keyguard.KeyguardUpdateMonitor r1 = r5.mKeyguardUpdateMonitor
            boolean r1 = r1.isKeyguardUnlocking()
            r4 = 0
            if (r1 == 0) goto L62
            java.lang.String r6 = "onIndicationChanged() returned - unlocking"
            android.util.Log.d(r0, r6)
            java.lang.String r6 = ""
            r5.changeIndication(r6, r2, r2)
            boolean r7 = r5.mLockHelpTextVisible
            if (r7 != 0) goto L5a
            boolean r7 = android.text.TextUtils.isEmpty(r6)
            if (r7 != 0) goto L5a
            goto L61
        L5a:
            com.android.systemui.statusbar.phone.KeyguardIndicationTextView r5 = r5.mUpperTextView
            if (r5 == 0) goto L61
            r5.switchIndication(r6, r4)
        L61:
            return
        L62:
            com.android.systemui.keyguard.KeyguardEditModeController r1 = r5.mKeyguardEditModeController
            com.android.systemui.keyguard.KeyguardEditModeControllerImpl r1 = (com.android.systemui.keyguard.KeyguardEditModeControllerImpl) r1
            boolean r1 = r1.getVIRunning()
            if (r1 == 0) goto L72
            java.lang.String r5 = "onIndicationChanged() returned - EditMode VIrunning"
            android.util.Log.d(r0, r5)
            return
        L72:
            int r0 = r7.mPriority
            com.android.systemui.statusbar.IndicationEventType r1 = com.android.systemui.statusbar.IndicationEventType.EMPTY_HIGH
            int r1 = r1.getPriority()
            if (r0 < r1) goto L86
            java.lang.CharSequence r0 = r7.mText
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L86
            r0 = r3
            goto L87
        L86:
            r0 = r2
        L87:
            com.android.systemui.util.wakelock.SettableWakeLock r1 = r5.mWakeLock
            if (r1 == 0) goto L8e
            r1.setAcquired(r0)
        L8e:
            int[] r0 = com.android.systemui.statusbar.KeyguardSecIndicationController.AnonymousClass11.$SwitchMap$com$android$systemui$statusbar$IndicationPosition
            int r6 = r6.ordinal()
            r6 = r0[r6]
            r0 = 2
            if (r6 == r0) goto La8
            java.lang.CharSequence r6 = r7.mText
            boolean r0 = r7.mIsAnimation
            com.android.systemui.statusbar.IndicationEventType r7 = r7.mEventType
            com.android.systemui.statusbar.IndicationEventType r1 = com.android.systemui.statusbar.IndicationEventType.OWNER_INFO
            if (r7 != r1) goto La4
            r2 = r3
        La4:
            r5.changeIndication(r6, r0, r2)
            goto Lbc
        La8:
            java.lang.CharSequence r6 = r7.mText
            boolean r7 = r5.mLockHelpTextVisible
            if (r7 != 0) goto Lb5
            boolean r7 = android.text.TextUtils.isEmpty(r6)
            if (r7 != 0) goto Lb5
            goto Lbc
        Lb5:
            com.android.systemui.statusbar.phone.KeyguardIndicationTextView r5 = r5.mUpperTextView
            if (r5 == 0) goto Lbc
            r5.switchIndication(r6, r4)
        Lbc:
            return
        Lbd:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r1 = "onIndicationChanged() return - pos or item is null, pos = "
            r5.<init>(r1)
            r5.append(r6)
            java.lang.String r6 = ", item = "
            r5.append(r6)
            r5.append(r7)
            java.lang.String r5 = r5.toString()
            android.util.Log.d(r0, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.KeyguardSecIndicationController.onIndicationChanged(com.android.systemui.statusbar.IndicationPosition, com.android.systemui.statusbar.IndicationItem):void");
    }

    @Override // com.android.systemui.pluginlock.listener.PluginLockListener$State
    public final void onViewModeChanged(int i) {
        boolean z;
        ListPopupWindow$$ExternalSyntheticOutline0.m("onViewModeChanged mode: ", i, "KeyguardSecIndicationController");
        int i2 = 0;
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        if (this.mIsDefaultLockViewMode != z) {
            this.mIsDefaultLockViewMode = z;
            if (this.mLockHelpTextVisible != z) {
                this.mLockHelpTextVisible = z;
                setVisible(z);
                KeyguardIndicationTextView keyguardIndicationTextView = this.mUpperTextView;
                if (keyguardIndicationTextView != null) {
                    if (!this.mLockHelpTextVisible) {
                        i2 = 8;
                    }
                    keyguardIndicationTextView.setVisibility(i2);
                    if (!this.mLockHelpTextVisible) {
                        this.mUpperTextView.setText("");
                    }
                }
            }
        }
    }

    public final void removeIndication(IndicationEventType indicationEventType) {
        IndicationPosition indicationPosition = IndicationPosition.DEFAULT;
        KeyguardSecIndicationPolicy keyguardSecIndicationPolicy = this.mIndicationPolicy;
        if (keyguardSecIndicationPolicy != null) {
            keyguardSecIndicationPolicy.removeIndicationEvent(indicationPosition, indicationEventType);
        }
    }

    @Override // com.android.systemui.statusbar.KeyguardIndicationController
    public final void setDozing(boolean z) {
        KeyguardSecIndicationPolicy keyguardSecIndicationPolicy;
        if (this.mIsScreenOn && z && (keyguardSecIndicationPolicy = this.mIndicationPolicy) != null) {
            keyguardSecIndicationPolicy.removeAllIndications();
        }
    }

    @Override // com.android.systemui.statusbar.KeyguardIndicationController
    public final void setIndicationArea(ViewGroup viewGroup) {
        int i;
        super.setIndicationArea(viewGroup);
        this.mIndicationArea = viewGroup;
        this.mLifeStyleContainer = (LinearLayout) viewGroup.findViewById(R.id.life_style_view_area);
        this.mLifeStyleImageView = (SystemUIImageView) viewGroup.findViewById(R.id.keyguard_life_style_image);
        this.mUsimTextArea = (LinearLayout) viewGroup.findViewById(R.id.usim_text_area);
        this.mUsimTextView = (KeyguardUsimTextView) viewGroup.findViewById(R.id.keyguard_usim_carrier_text);
        if (this.mLifeStyleContainer != null) {
            boolean isWhiteKeyguardWallpaper = WallpaperUtils.isWhiteKeyguardWallpaper("bottom");
            LinearLayout linearLayout = this.mLifeStyleContainer;
            if (isWhiteKeyguardWallpaper) {
                i = R.drawable.rounded_bg_routine_mode_radius_whitebg;
            } else {
                i = R.drawable.rounded_bg_routine_mode_radius;
            }
            linearLayout.setBackgroundResource(i);
            this.mLifeStyleContainer.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.statusbar.KeyguardSecIndicationController.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    boolean z;
                    KeyguardSecIndicationController keyguardSecIndicationController = KeyguardSecIndicationController.this;
                    Context context = keyguardSecIndicationController.mContext;
                    KeyguardUpdateMonitor keyguardUpdateMonitor = keyguardSecIndicationController.mKeyguardUpdateMonitor;
                    if (keyguardUpdateMonitor.isSecure() && !keyguardUpdateMonitor.getUserCanSkipBouncer(KeyguardUpdateMonitor.getCurrentUser())) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Intent action = new Intent().setAction("com.samsung.android.app.routines.action.LAUNCH_MODE_LIST_DIALOG");
                    action.putExtra("lock_bouncer_enabled", z).setPackage("com.samsung.android.app.routines").addFlags(335544352);
                    try {
                        ActivityTaskManager.getService().startActivityAsUser((IApplicationThread) null, context.getBasePackageName(), context.getAttributionTag(), action, action.resolveTypeIfNeeded(context.getContentResolver()), (IBinder) null, (String) null, 0, QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE, (ProfilerInfo) null, ActivityOptions.makeBasic().toBundle(), UserHandle.CURRENT.getIdentifier());
                    } catch (RemoteException unused) {
                        Log.e("KeyguardSecIndicationController", "Unexpected intent: " + action + " when Routine Mode clicked");
                    }
                }
            });
        }
        this.mUpperTextView = (KeyguardIndicationTextView) viewGroup.findViewById(R.id.keyguard_upper_fingerprint_indication);
    }

    @Override // com.android.systemui.statusbar.KeyguardIndicationController
    public final void setUpperTextView(KeyguardIndicationTextView keyguardIndicationTextView) {
        this.mUpperTextView = keyguardIndicationTextView;
    }

    @Override // com.android.systemui.statusbar.KeyguardIndicationController
    public final void setVisible(boolean z) {
        boolean z2 = z & this.mLockHelpTextVisible;
        PluginLockData pluginLockData = this.mPluginLockData;
        if (pluginLockData != null) {
            PluginLockDataImpl pluginLockDataImpl = (PluginLockDataImpl) pluginLockData;
            if (pluginLockDataImpl.isAvailable() && this.mIsDefaultLockViewMode) {
                z2 = pluginLockDataImpl.getVisibility(5) == 0;
            }
        }
        super.setVisible(z2);
        if (z2) {
            addInitialIndication();
            addLifeStyleIndication();
            if (this.mIsScreenOn) {
                Completable.timer(100L, TimeUnit.MILLISECONDS, AndroidSchedulers.mainThread()).subscribe(new KeyguardSecIndicationController$$ExternalSyntheticLambda0(this, 1));
                return;
            }
            return;
        }
        KeyguardIndicationTextView keyguardIndicationTextView = this.mUpperTextView;
        if (keyguardIndicationTextView != null) {
            keyguardIndicationTextView.setText("");
        }
        KeyguardIndicationTextView keyguardIndicationTextView2 = this.mTopIndicationView;
        if (keyguardIndicationTextView2 != null) {
            keyguardIndicationTextView2.setText("");
        }
        LinearLayout linearLayout = this.mLifeStyleContainer;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
    }

    public final void showBounceAnimation(KeyguardIndicationTextView keyguardIndicationTextView) {
        if (keyguardIndicationTextView != null) {
            keyguardIndicationTextView.setTranslationY(0.0f);
            keyguardIndicationTextView.startAnimation(AnimationUtils.loadAnimation(this.mContext, R.anim.giggle));
        }
    }

    @Override // com.android.systemui.statusbar.KeyguardIndicationController
    public final void showTransientIndication(int i) {
        addIndication(IndicationEventType.LEGACY_TRANSIENT, this.mContext.getResources().getText(i));
    }

    @Override // com.android.systemui.pluginlock.listener.PluginLockListener$State
    public final void updateDynamicLockData(String str) {
        setVisible(true);
    }

    @Override // com.android.systemui.statusbar.KeyguardIndicationController
    public final void updateLifeStyleInfo(Intent intent) {
        this.mLifeStyleEnable = intent.getBooleanExtra("mode_is_running", false);
        this.mLifeStyleName = intent.getStringExtra("mode_display_name");
        byte[] byteArrayExtra = intent.getByteArrayExtra("mode_icon_byte_array");
        if (byteArrayExtra != null) {
            this.mLifeStyleIcon = new BitmapDrawable(BitmapFactory.decodeByteArray(byteArrayExtra, 0, byteArrayExtra.length));
        }
        addLifeStyleIndication();
    }

    @Override // com.android.systemui.widget.SystemUIWidgetCallback
    public final void updateStyle(long j, SemWallpaperColors semWallpaperColors) {
        int i;
        if (this.mLifeStyleContainer != null) {
            boolean isWhiteKeyguardWallpaper = WallpaperUtils.isWhiteKeyguardWallpaper("bottom");
            LinearLayout linearLayout = this.mLifeStyleContainer;
            if (isWhiteKeyguardWallpaper) {
                i = R.drawable.rounded_bg_routine_mode_radius_whitebg;
            } else {
                i = R.drawable.rounded_bg_routine_mode_radius;
            }
            linearLayout.setBackgroundResource(i);
            KeyguardIndicationTextView keyguardIndicationTextView = this.mLifeStyleIndicationView;
            if (keyguardIndicationTextView != null) {
                keyguardIndicationTextView.updateTextView();
                SystemUIImageView systemUIImageView = this.mLifeStyleImageView;
                if (systemUIImageView != null) {
                    systemUIImageView.setImageTintList(this.mLifeStyleIndicationView.getTextColors());
                }
            }
        }
    }

    public final void addIndicationTimeout(IndicationPosition indicationPosition, IndicationEventType indicationEventType, CharSequence charSequence, ColorStateList colorStateList, boolean z) {
        if (this.mKeyguardUpdateMonitor.isKeyguardUnlocking()) {
            Log.d("KeyguardSecIndicationController", "addIndicationTimeout() returned - unlocking");
            return;
        }
        KeyguardSecIndicationPolicy keyguardSecIndicationPolicy = this.mIndicationPolicy;
        if (keyguardSecIndicationPolicy != null) {
            keyguardSecIndicationPolicy.addIndicationEvent(indicationPosition, indicationEventType, charSequence, colorStateList, 3000L, z);
        }
    }

    @Override // com.android.systemui.statusbar.KeyguardIndicationController
    public final void showTransientIndication(CharSequence charSequence) {
        addIndication(IndicationEventType.LEGACY_TRANSIENT, charSequence);
    }

    public final void addIndication(IndicationPosition indicationPosition, IndicationEventType indicationEventType, CharSequence charSequence, ColorStateList colorStateList) {
        if (this.mKeyguardUpdateMonitor.isKeyguardUnlocking()) {
            Log.d("KeyguardSecIndicationController", "addIndication() returned - unlocking");
            return;
        }
        KeyguardSecIndicationPolicy keyguardSecIndicationPolicy = this.mIndicationPolicy;
        if (keyguardSecIndicationPolicy != null) {
            keyguardSecIndicationPolicy.addIndicationEvent(indicationPosition, indicationEventType, charSequence, colorStateList, -1L, false);
        }
    }
}
