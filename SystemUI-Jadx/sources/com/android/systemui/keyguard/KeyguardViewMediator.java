package com.android.systemui.keyguard;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.BroadcastOptions;
import android.app.PendingIntent;
import android.app.StatusBarManager;
import android.app.WallpaperManager;
import android.app.trust.TrustManager;
import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.UserInfo;
import android.content.res.Configuration;
import android.graphics.Matrix;
import android.hardware.biometrics.BiometricSourceType;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.os.Binder;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.EventLog;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.Choreographer;
import android.view.IRemoteAnimationFinishedCallback;
import android.view.IRemoteAnimationRunner;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.view.SyncRtSurfaceTransactionApplier;
import android.view.ViewGroup;
import android.view.ViewRootImpl;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.app.animation.Interpolators;
import com.android.internal.jank.InteractionJankMonitor;
import com.android.internal.logging.UiEventLogger;
import com.android.internal.policy.IKeyguardDismissCallback;
import com.android.internal.policy.IKeyguardExitCallback;
import com.android.internal.policy.IKeyguardStateCallback;
import com.android.internal.policy.ScreenDecorationsUtils;
import com.android.internal.statusbar.IStatusBarService;
import com.android.internal.util.LatencyTracker;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.KeyguardDisplayManager;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitor$$ExternalSyntheticLambda3;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.keyguard.KeyguardViewController;
import com.android.keyguard.ViewMediatorCallback;
import com.android.keyguard.mediator.ScreenOnCoordinator;
import com.android.systemui.CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0;
import com.android.systemui.CoreStartable;
import com.android.systemui.DejankUtils;
import com.android.systemui.Dumpable;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.Rune;
import com.android.systemui.animation.ActivityLaunchAnimator;
import com.android.systemui.animation.LaunchAnimator;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.classifier.FalsingCollector;
import com.android.systemui.dreams.DreamOverlayStateController;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.flags.SystemPropertiesHelper;
import com.android.systemui.keyguard.KeyguardFastBioUnlockController;
import com.android.systemui.keyguard.KeyguardService;
import com.android.systemui.keyguard.KeyguardUnlockInfo;
import com.android.systemui.keyguard.KeyguardViewMediator;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.keyguard.ui.viewmodel.DreamingToLockscreenTransitionViewModel;
import com.android.systemui.keyguard.ui.viewmodel.LockscreenToDreamingTransitionViewModel;
import com.android.systemui.knox.EdmMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.SessionTracker;
import com.android.systemui.navigationbar.NavigationModeController;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.plugins.subscreen.PluginSubScreen;
import com.android.systemui.settings.DisplayTrackerImpl;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.shade.ShadeController;
import com.android.systemui.shade.ShadeControllerImpl;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.statusbar.NotificationShadeDepthController;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.SysuiStatusBarStateController;
import com.android.systemui.statusbar.phone.BiometricUnlockController;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.phone.DozeParameters;
import com.android.systemui.statusbar.phone.ScreenOffAnimationController;
import com.android.systemui.statusbar.phone.ScrimController;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.statusbar.policy.UserSwitcherController;
import com.android.systemui.uithreadmonitor.BinderCallMonitorImpl;
import com.android.systemui.user.domain.interactor.GuestUserInteractor;
import com.android.systemui.util.Assert;
import com.android.systemui.util.DesktopManagerImpl;
import com.android.systemui.util.DeviceConfigProxy;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.LogUtil;
import com.android.systemui.util.kotlin.JavaAdapterKt;
import com.android.systemui.wallpaper.BackupRestoreReceiver;
import com.android.wm.shell.keyguard.KeyguardTransitions;
import com.samsung.android.knox.custom.CustomDeviceManager;
import com.samsung.android.os.SemDvfsManager;
import com.sec.ims.volte2.data.VolteConstants;
import dagger.Lazy;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class KeyguardViewMediator implements CoreStartable, Dumpable, StatusBarStateController.StateListener {
    public static final Intent USER_PRESENT_INTENT = new Intent("android.intent.action.USER_PRESENT").addFlags(606076928);
    public static final Bundle USER_PRESENT_INTENT_OPTIONS = BroadcastOptions.makeBasic().setDeferralPolicy(2).setDeliveryGroupPolicy(1).toBundle();
    public final Lazy mActivityLaunchAnimator;
    public AlarmManager mAlarmManager;
    public boolean mAnimatingScreenOff;
    public boolean mAodShowing;
    public boolean mBootCompleted;
    public boolean mBootSendUserPresent;
    public final BroadcastDispatcher mBroadcastDispatcher;
    public final AnonymousClass11 mBroadcastReceiver;
    public CentralSurfaces mCentralSurfaces;
    public final Context mContext;
    public CharSequence mCustomMessage;
    public final AnonymousClass10 mDelayedLockBroadcastReceiver;
    public int mDelayedProfileShowingSequence;
    public int mDelayedShowingSequence;
    public boolean mDeviceInteractive;
    public final DismissCallbackRegistry mDismissCallbackRegistry;
    public final DozeParameters mDozeParameters;
    public boolean mDozing;
    public final int mDreamOpenAnimationDuration;
    public final AnonymousClass2 mDreamOverlayStateCallback;
    public final DreamOverlayStateController mDreamOverlayStateController;
    public final Lazy mDreamingToLockscreenTransitionViewModel;
    public final AnonymousClass6 mExitAnimationRunner;
    public final FalsingCollector mFalsingCollector;
    public final FeatureFlags mFeatureFlags;
    public boolean mGoingToSleep;
    public final AnonymousClass12 mHandler;
    public final KeyguardViewMediatorHelperImpl mHelper;
    public Animation mHideAnimation;
    public final KeyguardViewMediator$$ExternalSyntheticLambda2 mHideAnimationFinishedRunnable;
    public boolean mHiding;
    public boolean mInGestureNavigationMode;
    public boolean mInputRestricted;
    public final InteractionJankMonitor mInteractionJankMonitor;
    public final KeyguardDisplayManager mKeyguardDisplayManager;
    public IRemoteAnimationRunner mKeyguardExitAnimationRunner;
    public final AnonymousClass13 mKeyguardGoingAwayRunnable;
    public final ArrayList mKeyguardStateCallbacks;
    public final KeyguardStateController mKeyguardStateController;
    public final AnonymousClass9 mKeyguardStateControllerCallback;
    public final KeyguardTransitions mKeyguardTransitions;
    public final Lazy mKeyguardUnlockAnimationControllerLazy;
    public final Lazy mKeyguardViewControllerLazy;
    public boolean mLockLater;
    public final LockPatternUtils mLockPatternUtils;
    public int mLockSoundId;
    public SoundPool mLockSounds;
    public final CoroutineDispatcher mMainDispatcher;
    public final Lazy mNotificationShadeDepthController;
    public final Lazy mNotificationShadeWindowControllerLazy;
    final ActivityLaunchAnimator.Controller mOccludeAnimationController;
    public final AnonymousClass1 mOnPropertiesChangedListener;
    public final PowerManager mPM;
    public boolean mPendingLock;
    public boolean mPendingPinLock;
    public boolean mPendingReset;
    public final float mPowerButtonY;
    public boolean mPowerGestureIntercepted;
    public RemoteAnimationTarget mRemoteAnimationTarget;
    public final ScreenOffAnimationController mScreenOffAnimationController;
    public final Lazy mScrimControllerLazy;
    public final SessionTracker mSessionTracker;
    public final Lazy mShadeController;
    public boolean mShowHomeOverLockscreen;
    public PowerManager.WakeLock mShowKeyguardWakeLock;
    public boolean mShowing;
    public boolean mShuttingDown;
    public StatusBarManager mStatusBarManager;
    public final IStatusBarService mStatusBarService;
    public final SysuiStatusBarStateController mStatusBarStateController;
    public IRemoteAnimationFinishedCallback mSurfaceBehindRemoteAnimationFinishedCallback;
    public boolean mSurfaceBehindRemoteAnimationRequested;
    public boolean mSurfaceBehindRemoteAnimationRunning;
    public final SystemPropertiesHelper mSystemPropertiesHelper;
    public boolean mSystemReady;
    public final TrustManager mTrustManager;
    public int mTrustedSoundId;
    public final Executor mUiBgExecutor;
    public final UiEventLogger mUiEventLogger;
    public int mUnlockSoundId;
    public IRemoteAnimationFinishedCallback mUnoccludeFromDreamFinishedCallback;
    public final AnonymousClass3 mUpdateCallback;
    public final KeyguardUpdateMonitor mUpdateMonitor;
    public final UserSwitcherController mUserSwitcherController;
    public final UserTracker mUserTracker;
    public final AnonymousClass4 mViewMediatorCallback;
    public WallpaperManager mWallpaperManager;
    public boolean mWallpaperSupportsAmbientMode;
    public final float mWindowCornerRadius;
    public final IBinder mStatusBarDisableToken = new Binder();
    public boolean mExternallyEnabled = true;
    public boolean mNeedToReshowWhenReenabled = false;
    public boolean mOccluded = false;
    public boolean mOccludeAnimationPlaying = false;
    public boolean mWakeAndUnlocking = false;
    public final SparseIntArray mLastSimStates = new SparseIntArray();
    public final SparseBooleanArray mSimWasLocked = new SparseBooleanArray();
    public String mPhoneState = TelephonyManager.EXTRA_STATE_IDLE;
    public boolean mWaitingUntilKeyguardVisible = false;
    public boolean mKeyguardDonePending = false;
    public boolean mUnlockingAndWakingFromDream = false;
    public boolean mHideAnimationRun = false;
    public boolean mHideAnimationRunning = false;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.keyguard.KeyguardViewMediator$12, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass12 extends Handler {
        public AnonymousClass12(Looper looper, Handler.Callback callback, boolean z) {
            super(looper, callback, z);
        }

        /* JADX WARN: Removed duplicated region for block: B:49:0x0159  */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void handleMessage(android.os.Message r12) {
            /*
                Method dump skipped, instructions count: 862
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.KeyguardViewMediator.AnonymousClass12.handleMessage(android.os.Message):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.keyguard.KeyguardViewMediator$13, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass13 implements Runnable {
        public AnonymousClass13() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x004a, code lost:
        
            if (r0.mWallpaperSupportsAmbientMode != false) goto L14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0105, code lost:
        
            if (r4 == false) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x0118, code lost:
        
            r4 = r13.fixedRotationMonitor;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x011c, code lost:
        
            if (r4.isMonitorStarted == false) goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x011f, code lost:
        
            android.util.Log.d("KeyguardFixedRotation", com.samsung.android.knox.net.nap.NetworkAnalyticsConstants.DataPoints.OPEN_TIME);
            r4.isFixedRotated = false;
            r4.windowManager.registerDisplayWindowListener(r4.displayWindowListener);
            r4.isMonitorStarted = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0132, code lost:
        
            r13.keyguardGoingAway(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0139, code lost:
        
            if (r5.isFastUnlockMode() != false) goto L69;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x013f, code lost:
        
            if (r13.isFastWakeAndUnlockMode() == false) goto L70;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x0143, code lost:
        
            if (r5.isInvisibleAfterGoingAwayTransStarted == false) goto L70;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x014e, code lost:
        
            if (r0 == false) goto L76;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x0153, code lost:
        
            if (r6.foldOpenState != 3) goto L74;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0155, code lost:
        
            r2 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x0156, code lost:
        
            if (r2 == false) goto L76;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x0158, code lost:
        
            ((com.android.systemui.shade.SecNotificationShadeWindowControllerHelperImpl) ((com.android.systemui.shade.SecNotificationShadeWindowControllerHelper) r13.shadeWindowControllerHelper$delegate.getValue())).setForceInvisible(true);
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x0165, code lost:
        
            android.os.Trace.endSection();
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x0168, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x0145, code lost:
        
            r5.getClass();
            r5.goingAwayTime = java.lang.System.nanoTime();
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x0116, code lost:
        
            if (r4 == false) goto L63;
         */
        /* JADX WARN: Removed duplicated region for block: B:14:0x005e  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0073  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00bf  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00c7  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00e9  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00f6  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 361
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.KeyguardViewMediator.AnonymousClass13.run():void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.keyguard.KeyguardViewMediator$16, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass16 extends IRemoteAnimationRunner.Stub {
        public final /* synthetic */ IRemoteAnimationRunner val$wrapped;

        public AnonymousClass16(IRemoteAnimationRunner iRemoteAnimationRunner) {
            this.val$wrapped = iRemoteAnimationRunner;
        }

        public final void onAnimationCancelled() {
            this.val$wrapped.onAnimationCancelled();
        }

        public final void onAnimationStart(int i, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback) {
            boolean z;
            if (((KeyguardViewController) KeyguardViewMediator.this.mKeyguardViewControllerLazy.get()).getViewRootImpl() != null) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                Log.w("KeyguardViewMediator", "Skipping remote animation - view root not ready");
                if (iRemoteAnimationFinishedCallback != null) {
                    iRemoteAnimationFinishedCallback.onAnimationFinished();
                    return;
                }
                return;
            }
            this.val$wrapped.onAnimationStart(i, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, iRemoteAnimationFinishedCallback);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.keyguard.KeyguardViewMediator$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass4 implements ViewMediatorCallback {
        public AnonymousClass4() {
        }

        @Override // com.android.keyguard.ViewMediatorCallback
        public final CharSequence consumeCustomMessage() {
            KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
            CharSequence charSequence = keyguardViewMediator.mCustomMessage;
            keyguardViewMediator.mCustomMessage = null;
            return charSequence;
        }

        @Override // com.android.keyguard.ViewMediatorCallback
        public final int getBouncerPromptReason() {
            boolean z;
            KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
            if (keyguardViewMediator.mUpdateMonitor.is2StepVerification()) {
                return 0;
            }
            int currentUser = KeyguardUpdateMonitor.getCurrentUser();
            KeyguardUpdateMonitor keyguardUpdateMonitor = keyguardViewMediator.mUpdateMonitor;
            keyguardUpdateMonitor.getClass();
            Assert.isMainThread();
            boolean z2 = keyguardUpdateMonitor.mUserTrustIsUsuallyManaged.get(currentUser);
            boolean isUnlockingWithBiometricsPossible = keyguardUpdateMonitor.isUnlockingWithBiometricsPossible(currentUser);
            if (!z2 && !isUnlockingWithBiometricsPossible) {
                z = false;
            } else {
                z = true;
            }
            KeyguardUpdateMonitor.StrongAuthTracker strongAuthTracker = keyguardUpdateMonitor.mStrongAuthTracker;
            int strongAuthForUser = strongAuthTracker.getStrongAuthForUser(currentUser);
            boolean isNonStrongBiometricAllowedAfterIdleTimeout = strongAuthTracker.isNonStrongBiometricAllowedAfterIdleTimeout(currentUser);
            if (z && !strongAuthTracker.hasUserAuthenticatedSinceBoot()) {
                keyguardViewMediator.mSystemPropertiesHelper.getClass();
                if (!SystemProperties.get("sys.boot.reason.last").equals("reboot,mainline_update")) {
                    return 1;
                }
                return 16;
            }
            if (z && (strongAuthForUser & 16) != 0) {
                return 2;
            }
            if (z && (strongAuthForUser & 32) != 0) {
                return 4;
            }
            if ((strongAuthForUser & 2) != 0) {
                return 3;
            }
            if (z2 && (strongAuthForUser & 4) != 0) {
                return 4;
            }
            if (z2 && (strongAuthForUser & 256) != 0) {
                return 8;
            }
            if (z && ((strongAuthForUser & 8) != 0 || keyguardUpdateMonitor.isFingerprintLockedOut())) {
                return 5;
            }
            if (z && (strongAuthForUser & 64) != 0) {
                return 6;
            }
            if (z && (strongAuthForUser & 128) != 0) {
                return 7;
            }
            if (!z || isNonStrongBiometricAllowedAfterIdleTimeout) {
                return 0;
            }
            return 17;
        }

        @Override // com.android.keyguard.ViewMediatorCallback
        public final boolean isScreenOn() {
            return KeyguardViewMediator.this.mDeviceInteractive;
        }

        @Override // com.android.keyguard.ViewMediatorCallback
        public final void keyguardDone(int i) {
            KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
            KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = keyguardViewMediator.mHelper;
            Objects.requireNonNull(keyguardViewMediatorHelperImpl);
            KeyguardViewMediator$$ExternalSyntheticLambda6 keyguardViewMediator$$ExternalSyntheticLambda6 = new KeyguardViewMediator$$ExternalSyntheticLambda6(keyguardViewMediatorHelperImpl, 11);
            boolean z = Rune.SYSUI_MULTI_SIM;
            keyguardViewMediator$$ExternalSyntheticLambda6.accept("keyguardDone");
            if (i != KeyguardUpdateMonitor.getCurrentUser()) {
                Log.d("KeyguardViewMediator", "tryKeyguardDone skipped. target=%d,cur=%d", Integer.valueOf(i), Integer.valueOf(ActivityManager.getCurrentUser()));
            } else {
                Log.d("KeyguardViewMediator", "keyguardDone");
                keyguardViewMediator.tryKeyguardDone();
            }
        }

        @Override // com.android.keyguard.ViewMediatorCallback
        public final void keyguardDoneDrawing() {
            Trace.beginSection("KeyguardViewMediator.mViewMediatorCallback#keyguardDoneDrawing");
            KeyguardViewMediator.this.mHandler.sendEmptyMessage(8);
            Trace.endSection();
        }

        @Override // com.android.keyguard.ViewMediatorCallback
        public final void keyguardDonePending(int i) {
            Trace.beginSection("KeyguardViewMediator.mViewMediatorCallback#keyguardDonePending");
            Log.d("KeyguardViewMediator", "keyguardDonePending");
            if (i != KeyguardUpdateMonitor.getCurrentUser()) {
                Trace.endSection();
                return;
            }
            KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
            keyguardViewMediator.mKeyguardDonePending = true;
            keyguardViewMediator.mHideAnimationRun = true;
            keyguardViewMediator.mHideAnimationRunning = true;
            ((KeyguardViewController) keyguardViewMediator.mKeyguardViewControllerLazy.get()).startPreHideAnimation(keyguardViewMediator.mHideAnimationFinishedRunnable);
            keyguardViewMediator.mHandler.sendEmptyMessageDelayed(13, 3000L);
            Trace.endSection();
        }

        @Override // com.android.keyguard.ViewMediatorCallback
        public final void keyguardGone() {
            int i;
            Trace.beginSection("KeyguardViewMediator.mViewMediatorCallback#keyguardGone");
            Log.d("KeyguardViewMediator", "keyguardGone");
            KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
            ((KeyguardViewController) keyguardViewMediator.mKeyguardViewControllerLazy.get()).setKeyguardGoingAwayState(false);
            KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = keyguardViewMediator.mHelper;
            Objects.requireNonNull(keyguardViewMediatorHelperImpl);
            KeyguardViewMediator$$ExternalSyntheticLambda3 keyguardViewMediator$$ExternalSyntheticLambda3 = new KeyguardViewMediator$$ExternalSyntheticLambda3(keyguardViewMediatorHelperImpl, 5);
            boolean z = Rune.SYSUI_MULTI_SIM;
            if (keyguardViewMediator$$ExternalSyntheticLambda3.getAsBoolean()) {
                keyguardViewMediator.mKeyguardDisplayManager.hide();
            }
            keyguardViewMediator.mUpdateMonitor.startBiometricWatchdog();
            if (keyguardViewMediator.mUnlockingAndWakingFromDream) {
                Log.d("KeyguardViewMediator", "waking from dream after unlock");
                keyguardViewMediator.setUnlockAndWakeFromDream(2, false);
                if (((KeyguardStateControllerImpl) keyguardViewMediator.mKeyguardStateController).mShowing) {
                    Log.d("KeyguardViewMediator", "keyguard showing after keyguardGone, dismiss");
                    ((KeyguardViewController) keyguardViewMediator.mKeyguardViewControllerLazy.get()).notifyKeyguardAuthenticated(!keyguardViewMediator.mWakeAndUnlocking);
                } else {
                    Log.d("KeyguardViewMediator", "keyguard gone, waking up from dream");
                    long uptimeMillis = SystemClock.uptimeMillis();
                    if (keyguardViewMediator.mWakeAndUnlocking) {
                        i = 17;
                    } else {
                        i = 4;
                    }
                    keyguardViewMediator.mPM.wakeUp(uptimeMillis, i, "com.android.systemui:UNLOCK_DREAMING");
                }
            }
            Trace.endSection();
        }

        @Override // com.android.keyguard.ViewMediatorCallback
        public final void onCancelClicked() {
            ((KeyguardViewController) KeyguardViewMediator.this.mKeyguardViewControllerLazy.get()).onCancelClicked();
        }

        @Override // com.android.keyguard.ViewMediatorCallback
        public final void playTrustedSound() {
            KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
            keyguardViewMediator.playSound(keyguardViewMediator.mTrustedSoundId);
        }

        @Override // com.android.keyguard.ViewMediatorCallback
        public final void readyForKeyguardDone() {
            Trace.beginSection("KeyguardViewMediator.mViewMediatorCallback#readyForKeyguardDone");
            KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
            if (keyguardViewMediator.mKeyguardDonePending) {
                keyguardViewMediator.mKeyguardDonePending = false;
                keyguardViewMediator.tryKeyguardDone();
            }
            Trace.endSection();
        }

        @Override // com.android.keyguard.ViewMediatorCallback
        public final void resetKeyguard() {
            Intent intent = KeyguardViewMediator.USER_PRESENT_INTENT;
            KeyguardViewMediator.this.resetStateLocked(true);
        }

        @Override // com.android.keyguard.ViewMediatorCallback
        public final void setCustomMessage(CharSequence charSequence) {
            KeyguardViewMediator.this.mCustomMessage = charSequence;
        }

        @Override // com.android.keyguard.ViewMediatorCallback
        public final void setNeedsInput(boolean z) {
            ((KeyguardViewController) KeyguardViewMediator.this.mKeyguardViewControllerLazy.get()).setNeedsInput(z);
        }

        @Override // com.android.keyguard.ViewMediatorCallback
        public final void userActivity() {
            String str = LsRune.VALUE_CONFIG_CARRIER_TEXT_POLICY;
            KeyguardViewMediator.this.userActivity();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.keyguard.KeyguardViewMediator$7, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass7 extends IRemoteAnimationRunner.Stub {
        public static final /* synthetic */ int $r8$clinit = 0;
        public ValueAnimator mOccludeByDreamAnimator;

        public AnonymousClass7() {
        }

        public final void onAnimationCancelled() {
            KeyguardViewMediator.this.mContext.getMainExecutor().execute(new KeyguardViewMediator$7$$ExternalSyntheticLambda0(this, 0));
            Log.d("KeyguardViewMediator", "OccludeByDreamAnimator#onAnimationCancelled. Set occluded = true");
            KeyguardViewMediator.this.setOccluded(true, false);
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onAnimationStart(int r3, android.view.RemoteAnimationTarget[] r4, android.view.RemoteAnimationTarget[] r5, android.view.RemoteAnimationTarget[] r6, final android.view.IRemoteAnimationFinishedCallback r7) {
            /*
                r2 = this;
                r3 = 1
                r5 = 0
                java.lang.String r6 = "KeyguardViewMediator"
                if (r4 == 0) goto L4b
                int r0 = r4.length
                if (r0 == 0) goto L4b
                r4 = r4[r5]
                if (r4 != 0) goto Le
                goto L4b
            Le:
                android.app.ActivityManager$RunningTaskInfo r0 = r4.taskInfo
                if (r0 == 0) goto L19
                int r0 = r0.topActivityType
                r1 = 5
                if (r0 != r1) goto L19
                r0 = r3
                goto L1a
            L19:
                r0 = r5
            L1a:
                if (r0 != 0) goto L22
                java.lang.String r4 = "The occluding app isn't Dream; finishing up. Please check that the config is correct."
                com.android.systemui.keyguard.Log.w(r6, r4)
                goto L50
            L22:
                android.view.SyncRtSurfaceTransactionApplier r6 = new android.view.SyncRtSurfaceTransactionApplier
                com.android.systemui.keyguard.KeyguardViewMediator r0 = com.android.systemui.keyguard.KeyguardViewMediator.this
                dagger.Lazy r0 = r0.mKeyguardViewControllerLazy
                java.lang.Object r0 = r0.get()
                com.android.keyguard.KeyguardViewController r0 = (com.android.keyguard.KeyguardViewController) r0
                android.view.ViewRootImpl r0 = r0.getViewRootImpl()
                android.view.View r0 = r0.getView()
                r6.<init>(r0)
                com.android.systemui.keyguard.KeyguardViewMediator r0 = com.android.systemui.keyguard.KeyguardViewMediator.this
                android.content.Context r0 = r0.mContext
                java.util.concurrent.Executor r0 = r0.getMainExecutor()
                com.android.systemui.keyguard.KeyguardViewMediator$7$$ExternalSyntheticLambda1 r1 = new com.android.systemui.keyguard.KeyguardViewMediator$7$$ExternalSyntheticLambda1
                r1.<init>()
                r0.execute(r1)
                r4 = r3
                goto L51
            L4b:
                java.lang.String r4 = "No apps provided to the OccludeByDream runner; skipping occluding animation."
                com.android.systemui.keyguard.Log.d(r6, r4)
            L50:
                r4 = r5
            L51:
                if (r4 != 0) goto L5b
                com.android.systemui.keyguard.KeyguardViewMediator r2 = com.android.systemui.keyguard.KeyguardViewMediator.this
                r2.setOccluded(r3, r5)
                r7.onAnimationFinished()
            L5b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.KeyguardViewMediator.AnonymousClass7.onAnimationStart(int, android.view.RemoteAnimationTarget[], android.view.RemoteAnimationTarget[], android.view.RemoteAnimationTarget[], android.view.IRemoteAnimationFinishedCallback):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.keyguard.KeyguardViewMediator$8, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass8 extends IRemoteAnimationRunner.Stub {
        public static final /* synthetic */ int $r8$clinit = 0;
        public ValueAnimator mUnoccludeAnimator;
        public final Matrix mUnoccludeMatrix = new Matrix();

        public AnonymousClass8() {
        }

        public final void onAnimationCancelled() {
            KeyguardViewMediator.this.mContext.getMainExecutor().execute(new KeyguardViewMediator$7$$ExternalSyntheticLambda0(this, 1));
            Log.d("KeyguardViewMediator", "Unocclude animation cancelled.");
            KeyguardViewMediator.this.mInteractionJankMonitor.cancel(64);
        }

        public final void onAnimationStart(int i, RemoteAnimationTarget[] remoteAnimationTargetArr, final RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, final IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback) {
            RemoteAnimationTarget remoteAnimationTarget;
            final boolean z;
            Log.d("KeyguardViewMediator", "UnoccludeAnimator#onAnimationStart. Set occluded = false.");
            KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
            keyguardViewMediator.mInteractionJankMonitor.begin(keyguardViewMediator.createInteractionJankMonitorConf(64, null).setTag("UNOCCLUDE"));
            KeyguardViewMediator.this.setOccluded(false, true);
            if (remoteAnimationTargetArr != null && remoteAnimationTargetArr.length != 0 && (remoteAnimationTarget = remoteAnimationTargetArr[0]) != null) {
                KeyguardViewMediator keyguardViewMediator2 = KeyguardViewMediator.this;
                keyguardViewMediator2.mRemoteAnimationTarget = remoteAnimationTarget;
                ActivityManager.RunningTaskInfo runningTaskInfo = remoteAnimationTarget.taskInfo;
                if (runningTaskInfo != null && runningTaskInfo.topActivityType == 5) {
                    z = true;
                } else {
                    z = false;
                }
                final SyncRtSurfaceTransactionApplier syncRtSurfaceTransactionApplier = new SyncRtSurfaceTransactionApplier(((KeyguardViewController) keyguardViewMediator2.mKeyguardViewControllerLazy.get()).getViewRootImpl().getView());
                KeyguardViewMediator.this.mContext.getMainExecutor().execute(new Runnable() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$8$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        final KeyguardViewMediator.AnonymousClass8 anonymousClass8 = KeyguardViewMediator.AnonymousClass8.this;
                        boolean z2 = z;
                        RemoteAnimationTarget[] remoteAnimationTargetArr4 = remoteAnimationTargetArr2;
                        final IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback2 = iRemoteAnimationFinishedCallback;
                        SyncRtSurfaceTransactionApplier syncRtSurfaceTransactionApplier2 = syncRtSurfaceTransactionApplier;
                        ValueAnimator valueAnimator = anonymousClass8.mUnoccludeAnimator;
                        if (valueAnimator != null) {
                            valueAnimator.cancel();
                        }
                        if (z2) {
                            Intent intent = KeyguardViewMediator.USER_PRESENT_INTENT;
                            for (RemoteAnimationTarget remoteAnimationTarget2 : remoteAnimationTargetArr4) {
                                if (remoteAnimationTarget2.mode == 0) {
                                    SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                                    try {
                                        transaction.setAlpha(remoteAnimationTarget2.leash, 1.0f);
                                        transaction.apply();
                                        transaction.close();
                                    } catch (Throwable th) {
                                        try {
                                            transaction.close();
                                        } catch (Throwable th2) {
                                            th.addSuppressed(th2);
                                        }
                                        throw th;
                                    }
                                }
                            }
                            KeyguardViewMediator keyguardViewMediator3 = KeyguardViewMediator.this;
                            keyguardViewMediator3.getClass();
                            new KeyguardViewMediator$$ExternalSyntheticLambda17(keyguardViewMediator3, 1).accept(Float.valueOf(0.0f));
                            ((DreamingToLockscreenTransitionViewModel) KeyguardViewMediator.this.mDreamingToLockscreenTransitionViewModel.get()).fromDreamingTransitionInteractor.startToLockscreenTransition();
                            KeyguardViewMediator.this.mUnoccludeFromDreamFinishedCallback = iRemoteAnimationFinishedCallback2;
                            return;
                        }
                        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                        anonymousClass8.mUnoccludeAnimator = ofFloat;
                        ofFloat.setDuration(250L);
                        anonymousClass8.mUnoccludeAnimator.setInterpolator(Interpolators.TOUCH_RESPONSE);
                        anonymousClass8.mUnoccludeAnimator.addUpdateListener(new KeyguardViewMediator$$ExternalSyntheticLambda21(anonymousClass8, syncRtSurfaceTransactionApplier2, 2));
                        anonymousClass8.mUnoccludeAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.keyguard.KeyguardViewMediator.8.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator) {
                                try {
                                    iRemoteAnimationFinishedCallback2.onAnimationFinished();
                                    AnonymousClass8 anonymousClass82 = AnonymousClass8.this;
                                    anonymousClass82.mUnoccludeAnimator = null;
                                    KeyguardViewMediator.this.mInteractionJankMonitor.end(64);
                                } catch (RemoteException e) {
                                    e.printStackTrace();
                                }
                            }
                        });
                        anonymousClass8.mUnoccludeAnimator.start();
                    }
                });
                return;
            }
            Log.d("KeyguardViewMediator", "No apps provided to unocclude runner; skipping animation and unoccluding.");
            iRemoteAnimationFinishedCallback.onAnimationFinished();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class ActivityLaunchRemoteAnimationRunner extends IRemoteAnimationRunner.Stub {
        public final ActivityLaunchAnimator.Controller mActivityLaunchController;
        public ActivityLaunchAnimator.Runner mRunner;

        public ActivityLaunchRemoteAnimationRunner(ActivityLaunchAnimator.Controller controller) {
            this.mActivityLaunchController = controller;
        }

        public void onAnimationCancelled() {
            ActivityLaunchAnimator.Runner runner = this.mRunner;
            if (runner != null) {
                runner.onAnimationCancelled();
            }
        }

        public void onAnimationStart(int i, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback) {
            ActivityLaunchAnimator.Runner createRunner = ((ActivityLaunchAnimator) KeyguardViewMediator.this.mActivityLaunchAnimator.get()).createRunner(this.mActivityLaunchController);
            this.mRunner = createRunner;
            createRunner.onAnimationStart(i, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, iRemoteAnimationFinishedCallback);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DismissMessage {
        public final IKeyguardDismissCallback mCallback;
        public final CharSequence mMessage;

        public DismissMessage(IKeyguardDismissCallback iKeyguardDismissCallback, CharSequence charSequence) {
            this.mCallback = iKeyguardDismissCallback;
            this.mMessage = charSequence;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class OccludeActivityLaunchRemoteAnimationRunner extends ActivityLaunchRemoteAnimationRunner {
        public OccludeActivityLaunchRemoteAnimationRunner(ActivityLaunchAnimator.Controller controller) {
            super(controller);
        }

        @Override // com.android.systemui.keyguard.KeyguardViewMediator.ActivityLaunchRemoteAnimationRunner
        public final void onAnimationCancelled() {
            super.onAnimationCancelled();
            Log.d("KeyguardViewMediator", "Occlude animation cancelled by WM.");
            KeyguardViewMediator.this.mInteractionJankMonitor.cancel(64);
        }

        @Override // com.android.systemui.keyguard.KeyguardViewMediator.ActivityLaunchRemoteAnimationRunner
        public final void onAnimationStart(int i, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback) {
            super.onAnimationStart(i, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, iRemoteAnimationFinishedCallback);
            KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
            keyguardViewMediator.mInteractionJankMonitor.begin(keyguardViewMediator.createInteractionJankMonitorConf(64, null).setTag("OCCLUDE"));
            Log.d("KeyguardViewMediator", "OccludeAnimator#onAnimationStart. Set occluded = true.");
            KeyguardViewMediator.this.setOccluded(true, false);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class StartKeyguardExitAnimParams {
        public final long fadeoutDuration;
        public RemoteAnimationTarget[] mApps;
        public IRemoteAnimationFinishedCallback mFinishedCallback;
        public final RemoteAnimationTarget[] mNonApps;
        public final RemoteAnimationTarget[] mWallpapers;
        public final long startTime;

        public /* synthetic */ StartKeyguardExitAnimParams(int i, long j, long j2, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback, int i2) {
            this(i, j, j2, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, iRemoteAnimationFinishedCallback);
        }

        private StartKeyguardExitAnimParams(int i, long j, long j2, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback) {
            this.startTime = j;
            this.fadeoutDuration = j2;
            this.mApps = remoteAnimationTargetArr;
            this.mWallpapers = remoteAnimationTargetArr2;
            this.mNonApps = remoteAnimationTargetArr3;
            this.mFinishedCallback = iRemoteAnimationFinishedCallback;
        }
    }

    /* renamed from: -$$Nest$mhandleKeyguardDoneDrawing, reason: not valid java name */
    public static void m1254$$Nest$mhandleKeyguardDoneDrawing(KeyguardViewMediator keyguardViewMediator) {
        keyguardViewMediator.getClass();
        Trace.beginSection("KeyguardViewMediator#handleKeyguardDoneDrawing");
        synchronized (keyguardViewMediator) {
            Log.d("KeyguardViewMediator", "handleKeyguardDoneDrawing");
            if (keyguardViewMediator.mWaitingUntilKeyguardVisible) {
                Log.d("KeyguardViewMediator", "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible");
                keyguardViewMediator.mWaitingUntilKeyguardVisible = false;
                keyguardViewMediator.notifyAll();
                keyguardViewMediator.mHandler.removeMessages(8);
            }
        }
        Trace.endSection();
    }

    /* renamed from: -$$Nest$mhandleNotifyFinishedGoingToSleep, reason: not valid java name */
    public static void m1255$$Nest$mhandleNotifyFinishedGoingToSleep(KeyguardViewMediator keyguardViewMediator) {
        synchronized (keyguardViewMediator) {
            Log.d("KeyguardViewMediator", "handleNotifyFinishedGoingToSleep");
            ((KeyguardViewController) keyguardViewMediator.mKeyguardViewControllerLazy.get()).onFinishedGoingToSleep();
        }
    }

    /* renamed from: -$$Nest$mhandleNotifyStartedGoingToSleep, reason: not valid java name */
    public static void m1256$$Nest$mhandleNotifyStartedGoingToSleep(KeyguardViewMediator keyguardViewMediator) {
        synchronized (keyguardViewMediator) {
            Log.d("KeyguardViewMediator", "handleNotifyStartedGoingToSleep");
            ((KeyguardViewController) keyguardViewMediator.mKeyguardViewControllerLazy.get()).onStartedGoingToSleep();
        }
    }

    /* renamed from: -$$Nest$mhandleNotifyStartedWakingUp, reason: not valid java name */
    public static void m1257$$Nest$mhandleNotifyStartedWakingUp(KeyguardViewMediator keyguardViewMediator) {
        keyguardViewMediator.getClass();
        Trace.beginSection("KeyguardViewMediator#handleMotifyStartedWakingUp");
        synchronized (keyguardViewMediator) {
            Log.d("KeyguardViewMediator", "handleNotifyWakingUp");
            ((KeyguardViewController) keyguardViewMediator.mKeyguardViewControllerLazy.get()).onStartedWakingUp();
        }
        Trace.endSection();
    }

    /* renamed from: -$$Nest$mhandleReset, reason: not valid java name */
    public static void m1258$$Nest$mhandleReset(KeyguardViewMediator keyguardViewMediator, boolean z) {
        synchronized (keyguardViewMediator) {
            if (keyguardViewMediator.mHideAnimationRun) {
                Log.d("KeyguardViewMediator", "handleReset : hideBouncer=false");
                z = false;
            } else {
                Log.d("KeyguardViewMediator", "handleReset");
            }
            ((KeyguardViewController) keyguardViewMediator.mKeyguardViewControllerLazy.get()).reset(z);
        }
        keyguardViewMediator.scheduleNonStrongBiometricIdleTimeout();
    }

    /* renamed from: -$$Nest$mhandleSetOccluded, reason: not valid java name */
    public static void m1259$$Nest$mhandleSetOccluded(KeyguardViewMediator keyguardViewMediator, boolean z, boolean z2, int i) {
        boolean z3;
        boolean z4;
        keyguardViewMediator.getClass();
        Trace.beginSection("KeyguardViewMediator#handleSetOccluded");
        Log.d("KeyguardViewMediator", "handleSetOccluded(%b) seq=%d", Boolean.valueOf(z), Integer.valueOf(i));
        EventLog.writeEvent(36080, Integer.valueOf(z ? 1 : 0), Integer.valueOf(z2 ? 1 : 0));
        keyguardViewMediator.mInteractionJankMonitor.cancel(23);
        synchronized (keyguardViewMediator) {
            if (keyguardViewMediator.mHiding && z && !keyguardViewMediator.mHandler.hasMessages(VolteConstants.ErrorCode.CLIENT_ERROR_NOT_ALLOWED_URI)) {
                keyguardViewMediator.startKeyguardExitAnimation(0L, 0L);
            }
            int i2 = 1;
            if (z && keyguardViewMediator.mUpdateMonitor.mSecureCameraLaunched) {
                z3 = true;
            } else {
                z3 = false;
            }
            keyguardViewMediator.mPowerGestureIntercepted = z3;
            if (keyguardViewMediator.mOccluded != z) {
                keyguardViewMediator.mOccluded = z;
                KeyguardViewController keyguardViewController = (KeyguardViewController) keyguardViewMediator.mKeyguardViewControllerLazy.get();
                if (z2 && keyguardViewMediator.mDeviceInteractive) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                keyguardViewController.setOccluded(z, z4);
                keyguardViewMediator.adjustStatusBarLocked(false, false);
                KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = keyguardViewMediator.mHelper;
                Objects.requireNonNull(keyguardViewMediatorHelperImpl);
                KeyguardViewMediator$$ExternalSyntheticLambda11 keyguardViewMediator$$ExternalSyntheticLambda11 = new KeyguardViewMediator$$ExternalSyntheticLambda11(keyguardViewMediatorHelperImpl, i2);
                boolean z5 = keyguardViewMediator.mShowing;
                boolean z6 = Rune.SYSUI_MULTI_SIM;
                keyguardViewMediator$$ExternalSyntheticLambda11.accept(Boolean.valueOf(z), Boolean.valueOf(z5));
            }
            Log.d("KeyguardViewMediator", "isOccluded=" + z + ",mPowerGestureIntercepted=" + keyguardViewMediator.mPowerGestureIntercepted);
        }
        Trace.endSection();
    }

    /* renamed from: -$$Nest$mhandleSystemReady, reason: not valid java name */
    public static void m1260$$Nest$mhandleSystemReady(KeyguardViewMediator keyguardViewMediator) {
        synchronized (keyguardViewMediator) {
            try {
                Log.d("KeyguardViewMediator", "onSystemReady");
                int i = 1;
                keyguardViewMediator.mSystemReady = true;
                int i2 = 0;
                keyguardViewMediator.doKeyguardLocked(null, false);
                keyguardViewMediator.mUpdateMonitor.registerCallback(keyguardViewMediator.mUpdateCallback);
                keyguardViewMediator.adjustStatusBarLocked(false, false);
                keyguardViewMediator.mDreamOverlayStateController.addCallback((DreamOverlayStateController.Callback) keyguardViewMediator.mDreamOverlayStateCallback);
                ViewRootImpl viewRootImpl = ((KeyguardViewController) keyguardViewMediator.mKeyguardViewControllerLazy.get()).getViewRootImpl();
                if (viewRootImpl != null) {
                    JavaAdapterKt.collectFlow(viewRootImpl.getView(), ((DreamingToLockscreenTransitionViewModel) keyguardViewMediator.mDreamingToLockscreenTransitionViewModel.get()).dreamOverlayAlpha, new KeyguardViewMediator$$ExternalSyntheticLambda17(keyguardViewMediator, i), keyguardViewMediator.mMainDispatcher);
                    JavaAdapterKt.collectFlow(viewRootImpl.getView(), ((DreamingToLockscreenTransitionViewModel) keyguardViewMediator.mDreamingToLockscreenTransitionViewModel.get()).transitionEnded, new KeyguardViewMediator$$ExternalSyntheticLambda17(keyguardViewMediator, i2), keyguardViewMediator.mMainDispatcher);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        keyguardViewMediator.maybeSendUserPresentBroadcast();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.android.systemui.keyguard.KeyguardViewMediator$1, android.provider.DeviceConfig$OnPropertiesChangedListener] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.android.systemui.keyguard.KeyguardViewMediator$2] */
    /* JADX WARN: Type inference failed for: r8v1, types: [com.android.systemui.keyguard.KeyguardViewMediator$3] */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.Object, com.android.systemui.keyguard.KeyguardViewMediator$9] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.android.systemui.keyguard.KeyguardViewMediator$6] */
    /* JADX WARN: Type inference failed for: r9v2, types: [com.android.systemui.keyguard.KeyguardViewMediator$10] */
    /* JADX WARN: Type inference failed for: r9v3, types: [com.android.systemui.keyguard.KeyguardViewMediator$11] */
    public KeyguardViewMediator(KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl, Context context, UiEventLogger uiEventLogger, SessionTracker sessionTracker, UserTracker userTracker, FalsingCollector falsingCollector, LockPatternUtils lockPatternUtils, BroadcastDispatcher broadcastDispatcher, Lazy lazy, DismissCallbackRegistry dismissCallbackRegistry, KeyguardUpdateMonitor keyguardUpdateMonitor, DumpManager dumpManager, Executor executor, PowerManager powerManager, TrustManager trustManager, UserSwitcherController userSwitcherController, DeviceConfigProxy deviceConfigProxy, NavigationModeController navigationModeController, KeyguardDisplayManager keyguardDisplayManager, DozeParameters dozeParameters, SysuiStatusBarStateController sysuiStatusBarStateController, KeyguardStateController keyguardStateController, Lazy lazy2, ScreenOffAnimationController screenOffAnimationController, Lazy lazy3, ScreenOnCoordinator screenOnCoordinator, KeyguardTransitions keyguardTransitions, InteractionJankMonitor interactionJankMonitor, DreamOverlayStateController dreamOverlayStateController, Lazy lazy4, Lazy lazy5, Lazy lazy6, Lazy lazy7, FeatureFlags featureFlags, CoroutineDispatcher coroutineDispatcher, Lazy lazy8, SystemPropertiesHelper systemPropertiesHelper) {
        final int i = 0;
        final ArrayList arrayList = new ArrayList();
        this.mKeyguardStateCallbacks = arrayList;
        this.mPendingPinLock = false;
        this.mPowerGestureIntercepted = false;
        this.mSurfaceBehindRemoteAnimationRequested = false;
        ?? r7 = new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.systemui.keyguard.KeyguardViewMediator.1
            public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                if (properties.getKeyset().contains("nav_bar_handle_show_over_lockscreen")) {
                    KeyguardViewMediator.this.mShowHomeOverLockscreen = properties.getBoolean("nav_bar_handle_show_over_lockscreen", true);
                }
            }
        };
        this.mOnPropertiesChangedListener = r7;
        this.mDreamOverlayStateCallback = new DreamOverlayStateController.Callback() { // from class: com.android.systemui.keyguard.KeyguardViewMediator.2
            @Override // com.android.systemui.dreams.DreamOverlayStateController.Callback
            public final void onStateChanged() {
                KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                keyguardViewMediator.mDreamOverlayStateController.isOverlayActive();
                keyguardViewMediator.getClass();
            }
        };
        this.mUpdateCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.keyguard.KeyguardViewMediator.3
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onBiometricAuthFailed(BiometricSourceType biometricSourceType) {
                int currentUser = KeyguardUpdateMonitor.getCurrentUser();
                KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                if (keyguardViewMediator.mLockPatternUtils.isSecure(currentUser)) {
                    keyguardViewMediator.mLockPatternUtils.getDevicePolicyManager().reportFailedBiometricAttempt(currentUser);
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onBiometricAuthenticated(int i2, BiometricSourceType biometricSourceType, boolean z) {
                KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                if (keyguardViewMediator.mLockPatternUtils.isSecure(i2)) {
                    keyguardViewMediator.mLockPatternUtils.getDevicePolicyManager().reportSuccessfulBiometricAttempt(i2);
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onDeviceProvisioned() {
                Intent intent = KeyguardViewMediator.USER_PRESENT_INTENT;
                KeyguardViewMediator.this.sendUserPresentBroadcast();
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onKeyguardVisibilityChanged(boolean z) {
                synchronized (KeyguardViewMediator.this) {
                    if (!z) {
                        if (KeyguardViewMediator.this.mPendingPinLock) {
                            Log.i("KeyguardViewMediator", "PIN lock requested, starting keyguard");
                            KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                            keyguardViewMediator.mPendingPinLock = false;
                            KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl2 = keyguardViewMediator.mHelper;
                            Objects.requireNonNull(keyguardViewMediatorHelperImpl2);
                            KeyguardViewMediator$$ExternalSyntheticLambda3 keyguardViewMediator$$ExternalSyntheticLambda3 = new KeyguardViewMediator$$ExternalSyntheticLambda3(keyguardViewMediatorHelperImpl2, 4);
                            boolean z2 = Rune.SYSUI_MULTI_SIM;
                            if (!keyguardViewMediator$$ExternalSyntheticLambda3.getAsBoolean()) {
                                KeyguardViewMediator.this.doKeyguardLocked(null, false);
                            }
                        }
                    }
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onSimStateChanged(int i2, int i3, int i4) {
                boolean z;
                StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("onSimStateChanged(subId=", i2, ", slotId=", i3, ",state=");
                m.append(i4);
                m.append(")");
                Log.d("KeyguardViewMediator", m.toString());
                int size = KeyguardViewMediator.this.mKeyguardStateCallbacks.size();
                boolean isSimPinSecure = KeyguardViewMediator.this.mUpdateMonitor.isSimPinSecure();
                for (int i5 = size - 1; i5 >= 0; i5--) {
                    try {
                        ((IKeyguardStateCallback) KeyguardViewMediator.this.mKeyguardStateCallbacks.get(i5)).onSimSecureStateChanged(isSimPinSecure);
                    } catch (RemoteException e) {
                        Slog.w("Failed to call onSimSecureStateChanged", e);
                        if (e instanceof DeadObjectException) {
                            KeyguardViewMediator.this.mKeyguardStateCallbacks.remove(i5);
                        }
                    }
                }
                if (LsRune.SECURITY_ESIM && KeyguardViewMediator.this.mUpdateMonitor.isESimRemoveButtonClicked()) {
                    z = false;
                } else {
                    synchronized (KeyguardViewMediator.this) {
                        int i6 = KeyguardViewMediator.this.mLastSimStates.get(i3);
                        if (i6 != 2 && i6 != 3 && (!LsRune.SECURITY_SIM_PERSO_LOCK || i6 != 12)) {
                            z = false;
                            KeyguardViewMediator.this.mLastSimStates.append(i3, i4);
                        }
                        z = true;
                        KeyguardViewMediator.this.mLastSimStates.append(i3, i4);
                    }
                }
                if (i4 != 0 && i4 != 1) {
                    if (i4 != 2 && i4 != 3) {
                        if (i4 != 5) {
                            if (i4 != 6) {
                                if (i4 != 7) {
                                    if (i4 != 12) {
                                        KeyguardDumpLog.log("KeyguardViewMediator", LogLevel.VERBOSE, MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Unspecific state: ", i4), null);
                                        return;
                                    }
                                    if (LsRune.SECURITY_SIM_PERSO_LOCK) {
                                        synchronized (KeyguardViewMediator.this) {
                                            KeyguardViewMediator.this.mSimWasLocked.append(i3, true);
                                            if (!KeyguardViewMediator.this.mShowing) {
                                                Log.d("KeyguardViewMediator", "INTENT_VALUE_ICC_LOCKED and keyguard isn't showing; need to show keyguard so user can enter sim perso");
                                                if (SubscriptionManager.isValidSubscriptionId(KeyguardViewMediator.this.mUpdateMonitor.getNextSubIdForState(12))) {
                                                    KeyguardViewMediator.this.doKeyguardLocked(null, false);
                                                }
                                            } else {
                                                Log.d("KeyguardViewMediator", "send the handler LAUNCH_PERSO_LOCK");
                                                KeyguardViewMediator.this.mHandler.sendEmptyMessageDelayed(VolteConstants.ErrorCode.CALL_SESSION_TERMINATED, 500L);
                                            }
                                        }
                                        return;
                                    }
                                    return;
                                }
                                synchronized (KeyguardViewMediator.this) {
                                    if (!KeyguardViewMediator.this.mShowing) {
                                        Log.d("KeyguardViewMediator", "PERM_DISABLED and keygaurd isn't showing.");
                                        KeyguardViewMediator.this.doKeyguardLocked(null, false);
                                    } else {
                                        Log.d("KeyguardViewMediator", "PERM_DISABLED, resetStateLocked toshow permanently disabled message in lockscreen.");
                                        if (KeyguardViewMediator.this.shouldWaitForProvisioning()) {
                                            KeyguardViewMediator.this.tryKeyguardDone();
                                        } else {
                                            KeyguardViewMediator.this.resetStateLocked(true);
                                        }
                                    }
                                }
                                return;
                            }
                        } else {
                            synchronized (KeyguardViewMediator.this) {
                                Log.d("KeyguardViewMediator", "READY, reset state? " + KeyguardViewMediator.this.mShowing);
                                KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                                if (keyguardViewMediator.mShowing && keyguardViewMediator.mSimWasLocked.get(i3, false)) {
                                    Log.d("KeyguardViewMediator", "SIM moved to READY when the previously was locked. Reset the state.");
                                    KeyguardViewMediator.this.mSimWasLocked.append(i3, false);
                                    KeyguardViewMediator.this.resetStateLocked(true);
                                }
                            }
                            return;
                        }
                    } else {
                        synchronized (KeyguardViewMediator.this) {
                            if (!SubscriptionManager.isValidSubscriptionId(i2)) {
                                Log.d("KeyguardViewMediator", "Skip invalid subId SIM lock request!");
                                return;
                            }
                            KeyguardViewMediator.this.mSimWasLocked.append(i3, true);
                            KeyguardViewMediator keyguardViewMediator2 = KeyguardViewMediator.this;
                            if (!keyguardViewMediator2.mShowing) {
                                Log.d("KeyguardViewMediator", "INTENT_VALUE_ICC_LOCKED and keygaurd isn't showing; need to show keyguard so user can enter sim pin");
                                KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl2 = KeyguardViewMediator.this.mHelper;
                                Objects.requireNonNull(keyguardViewMediatorHelperImpl2);
                                Rune.runIf(2, new KeyguardViewMediator$$ExternalSyntheticLambda6(keyguardViewMediatorHelperImpl2, 8));
                                KeyguardViewMediator.this.doKeyguardLocked(null, false);
                            } else {
                                keyguardViewMediator2.mHelper.removeMessage(7);
                                KeyguardViewMediator.this.mHelper.removeMessage(2);
                                KeyguardViewMediator keyguardViewMediator3 = KeyguardViewMediator.this;
                                if (keyguardViewMediator3.mHiding) {
                                    keyguardViewMediator3.mHiding = false;
                                }
                                if (keyguardViewMediator3.mSurfaceBehindRemoteAnimationRunning || ((KeyguardStateControllerImpl) keyguardViewMediator3.mKeyguardStateController).mKeyguardGoingAway) {
                                    Log.d("KeyguardViewMediator", "PendingPinLock : set true");
                                    KeyguardViewMediator.this.mPendingPinLock = true;
                                }
                                KeyguardViewMediator.this.resetStateLocked(true);
                            }
                            return;
                        }
                    }
                }
                KeyguardViewMediator keyguardViewMediator4 = KeyguardViewMediator.this;
                keyguardViewMediator4.mPendingPinLock = false;
                synchronized (keyguardViewMediator4) {
                    if (KeyguardViewMediator.this.shouldWaitForProvisioning()) {
                        KeyguardViewMediator keyguardViewMediator5 = KeyguardViewMediator.this;
                        if (!keyguardViewMediator5.mShowing) {
                            Log.d("KeyguardViewMediator", "ICC_ABSENT isn't showing, we need to show the keyguard since the device isn't provisioned yet.");
                            KeyguardViewMediator.this.doKeyguardLocked(null, false);
                        } else {
                            keyguardViewMediator5.tryKeyguardDone();
                        }
                    } else if (KeyguardViewMediator.this.mShowing && i4 == 0 && SubscriptionManager.isValidSubscriptionId(i2)) {
                        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                        if (defaultAdapter != null) {
                            int profileConnectionState = defaultAdapter.getProfileConnectionState(10);
                            Log.d("KeyguardViewMediator", "SAP status : " + profileConnectionState);
                            if (profileConnectionState == 2) {
                                Log.d("KeyguardViewMediator", "SAPConnectRequested : resetState");
                                KeyguardViewMediator.this.resetStateLocked(true);
                            }
                        } else {
                            Log.d("KeyguardViewMediator", "SAP status : BluetoothAdapter is null");
                        }
                    }
                    if (i4 == 1) {
                        if (z) {
                            Log.d("KeyguardViewMediator", "SIM moved to ABSENT when the previous state was locked. Reset the state.");
                            KeyguardViewMediator.this.resetStateLocked(true);
                        }
                        KeyguardViewMediator.this.mSimWasLocked.append(i3, false);
                    }
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onStrongAuthStateChanged(int i2) {
                KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                if (keyguardViewMediator.mUpdateMonitor.isUserInLockdown(KeyguardUpdateMonitor.getCurrentUser())) {
                    keyguardViewMediator.doKeyguardLocked(null, false);
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onTrustChanged(int i2) {
                if (i2 == KeyguardUpdateMonitor.getCurrentUser()) {
                    synchronized (KeyguardViewMediator.this) {
                        KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                        keyguardViewMediator.notifyTrustedChangedLocked(keyguardViewMediator.mUpdateMonitor.getUserHasTrust(i2));
                    }
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onUserSwitchComplete(int i2) {
                UserInfo userInfo;
                Log.d("KeyguardViewMediator", String.format("onUserSwitchComplete %d", Integer.valueOf(i2)));
                KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl2 = keyguardViewMediator.mHelper;
                Objects.requireNonNull(keyguardViewMediatorHelperImpl2);
                Rune.runIf(i2, new KeyguardViewMediator$$ExternalSyntheticLambda6(keyguardViewMediatorHelperImpl2, 9));
                if (i2 != 0 && (userInfo = UserManager.get(keyguardViewMediator.mContext).getUserInfo(i2)) != null && !keyguardViewMediator.mLockPatternUtils.isSecure(i2)) {
                    if (userInfo.isGuest() || userInfo.isDemo()) {
                        keyguardViewMediator.dismiss(null, null);
                    }
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onUserSwitching(int i2) {
                Log.d("KeyguardViewMediator", String.format("onUserSwitching %d", Integer.valueOf(i2)));
                KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl2 = KeyguardViewMediator.this.mHelper;
                Objects.requireNonNull(keyguardViewMediatorHelperImpl2);
                Rune.runIf(i2, new KeyguardViewMediator$$ExternalSyntheticLambda6(keyguardViewMediatorHelperImpl2, 10));
                synchronized (KeyguardViewMediator.this) {
                    KeyguardViewMediator.this.resetKeyguardDonePendingLocked();
                    if (KeyguardViewMediator.this.mLockPatternUtils.isLockScreenDisabled(i2)) {
                        KeyguardViewMediator.this.dismiss(null, null);
                    } else {
                        KeyguardViewMediator.this.resetStateLocked(true);
                    }
                    KeyguardViewMediator.this.adjustStatusBarLocked(false, false);
                }
            }
        };
        this.mViewMediatorCallback = new AnonymousClass4();
        ActivityLaunchAnimator.Controller controller = new ActivityLaunchAnimator.Controller() { // from class: com.android.systemui.keyguard.KeyguardViewMediator.5
            @Override // com.android.systemui.animation.LaunchAnimator.Controller
            public final LaunchAnimator.State createAnimatorState() {
                int width = getLaunchContainer().getWidth();
                int height = getLaunchContainer().getHeight();
                KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                if (keyguardViewMediator.mUpdateMonitor.mSecureCameraLaunched) {
                    float f = width;
                    float f2 = keyguardViewMediator.mPowerButtonY;
                    float f3 = (height / 3.0f) / 2.0f;
                    float f4 = keyguardViewMediator.mWindowCornerRadius;
                    return new LaunchAnimator.State((int) (f2 - f3), (int) (f2 + f3), (int) (f - (f / 3.0f)), width, f4, f4);
                }
                float f5 = height;
                float f6 = f5 / 2.0f;
                float f7 = width;
                float f8 = f7 / 2.0f;
                float f9 = f5 - f6;
                float f10 = f7 - f8;
                float f11 = keyguardViewMediator.mWindowCornerRadius;
                return new LaunchAnimator.State(((int) f9) / 2, (int) ((f9 / 2.0f) + f6), ((int) f10) / 2, (int) ((f10 / 2.0f) + f8), f11, f11);
            }

            @Override // com.android.systemui.animation.LaunchAnimator.Controller
            public final ViewGroup getLaunchContainer() {
                return (ViewGroup) ((KeyguardViewController) KeyguardViewMediator.this.mKeyguardViewControllerLazy.get()).getViewRootImpl().getView();
            }

            @Override // com.android.systemui.animation.ActivityLaunchAnimator.Controller
            public final void onLaunchAnimationCancelled(Boolean bool) {
                StringBuilder sb = new StringBuilder("Occlude launch animation cancelled. Occluded state is now: ");
                KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                sb.append(keyguardViewMediator.mOccluded);
                Log.d("KeyguardViewMediator", sb.toString());
                keyguardViewMediator.mOccludeAnimationPlaying = false;
                ((CentralSurfacesImpl) keyguardViewMediator.mCentralSurfaces).updateIsKeyguard();
                ((ScrimController) keyguardViewMediator.mScrimControllerLazy.get()).setOccludeAnimationPlaying(false);
            }

            @Override // com.android.systemui.animation.LaunchAnimator.Controller
            public final void onLaunchAnimationEnd(boolean z) {
                KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                if (z) {
                    ((ShadeControllerImpl) ((ShadeController) keyguardViewMediator.mShadeController.get())).instantCollapseShade();
                }
                keyguardViewMediator.mOccludeAnimationPlaying = false;
                ((CentralSurfacesImpl) keyguardViewMediator.mCentralSurfaces).updateIsKeyguard();
                ((ScrimController) keyguardViewMediator.mScrimControllerLazy.get()).setOccludeAnimationPlaying(false);
                keyguardViewMediator.mInteractionJankMonitor.end(64);
            }

            @Override // com.android.systemui.animation.LaunchAnimator.Controller
            public final void onLaunchAnimationStart(boolean z) {
                KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                keyguardViewMediator.mOccludeAnimationPlaying = true;
                ((ScrimController) keyguardViewMediator.mScrimControllerLazy.get()).setOccludeAnimationPlaying(true);
            }

            @Override // com.android.systemui.animation.LaunchAnimator.Controller
            public final void setLaunchContainer(ViewGroup viewGroup) {
                android.util.Log.wtf("KeyguardViewMediator", "Someone tried to change the launch container for the ActivityLaunchAnimator, which should never happen.");
                KeyguardDumpLog.log("KeyguardViewMediator", LogLevel.WTF, "Someone tried to change the launch container for the ActivityLaunchAnimator, which should never happen.", null);
            }
        };
        this.mOccludeAnimationController = controller;
        this.mExitAnimationRunner = new IRemoteAnimationRunner.Stub() { // from class: com.android.systemui.keyguard.KeyguardViewMediator.6
            public final void onAnimationCancelled() {
                KeyguardViewMediator.this.cancelKeyguardExitAnimation();
            }

            public final void onAnimationStart(int i2, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback) {
                Trace.beginSection("mExitAnimationRunner.onAnimationStart#startKeyguardExitAnimation");
                KeyguardViewMediator.this.startKeyguardExitAnimation(i2, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, iRemoteAnimationFinishedCallback);
                Trace.endSection();
            }
        };
        new OccludeActivityLaunchRemoteAnimationRunner(controller);
        new AnonymousClass7();
        new AnonymousClass8();
        ?? r8 = new KeyguardStateController.Callback() { // from class: com.android.systemui.keyguard.KeyguardViewMediator.9
            @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
            public final void onPrimaryBouncerShowingChanged() {
                synchronized (KeyguardViewMediator.this) {
                    KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                    KeyguardStateController keyguardStateController2 = keyguardViewMediator.mKeyguardStateController;
                    if (((KeyguardStateControllerImpl) keyguardStateController2).mPrimaryBouncerShowing && !((KeyguardStateControllerImpl) keyguardStateController2).mKeyguardGoingAway) {
                        keyguardViewMediator.mPendingPinLock = false;
                    }
                    keyguardViewMediator.adjustStatusBarLocked(((KeyguardStateControllerImpl) keyguardStateController2).mPrimaryBouncerShowing, false);
                }
            }
        };
        this.mKeyguardStateControllerCallback = r8;
        this.mDelayedLockBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.systemui.keyguard.KeyguardViewMediator.10
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                if ("com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD".equals(intent.getAction())) {
                    int intExtra = intent.getIntExtra("seq", 0);
                    StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("received DELAYED_KEYGUARD_ACTION with seq = ", intExtra, ", mDelayedShowingSequence = ");
                    m.append(KeyguardViewMediator.this.mDelayedShowingSequence);
                    Log.d("KeyguardViewMediator", m.toString());
                    synchronized (KeyguardViewMediator.this) {
                        boolean z = LsRune.COVER_SUPPORTED;
                        KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl2 = KeyguardViewMediator.this.mHelper;
                        Objects.requireNonNull(keyguardViewMediatorHelperImpl2);
                        Rune.runIf(new KeyguardViewMediator$$ExternalSyntheticLambda7(keyguardViewMediatorHelperImpl2, 11), z);
                        KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                        if (keyguardViewMediator.mDelayedShowingSequence == intExtra) {
                            keyguardViewMediator.doKeyguardLocked(null, false);
                        }
                    }
                    return;
                }
                if ("com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK".equals(intent.getAction())) {
                    int intExtra2 = intent.getIntExtra("seq", 0);
                    int intExtra3 = intent.getIntExtra("android.intent.extra.USER_ID", 0);
                    if (intExtra3 != 0) {
                        synchronized (KeyguardViewMediator.this) {
                            KeyguardViewMediator keyguardViewMediator2 = KeyguardViewMediator.this;
                            if (keyguardViewMediator2.mDelayedProfileShowingSequence == intExtra2) {
                                keyguardViewMediator2.mTrustManager.setDeviceLockedForUser(intExtra3, true);
                            }
                        }
                    }
                }
            }
        };
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.systemui.keyguard.KeyguardViewMediator.11
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                if ("android.intent.action.ACTION_SHUTDOWN".equals(intent.getAction())) {
                    synchronized (KeyguardViewMediator.this) {
                        KeyguardViewMediator.this.mShuttingDown = true;
                    }
                }
            }
        };
        final AnonymousClass12 anonymousClass12 = new AnonymousClass12(Looper.myLooper(), null, true);
        this.mHandler = anonymousClass12;
        this.mKeyguardGoingAwayRunnable = new AnonymousClass13();
        this.mHideAnimationFinishedRunnable = new KeyguardViewMediator$$ExternalSyntheticLambda2(this, 1);
        Function0 function0 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i) {
                    case 0:
                        return 1;
                    case 1:
                        return 12;
                    case 2:
                        return 13;
                    case 3:
                        return 14;
                    case 4:
                        return 17;
                    case 5:
                        return 18;
                    case 6:
                        return 19;
                    case 7:
                        return 2;
                    case 8:
                        return KeyguardViewMediator.USER_PRESENT_INTENT;
                    case 9:
                        return 3;
                    case 10:
                        return 4;
                    case 11:
                        return 5;
                    case 12:
                        return 7;
                    case 13:
                        return 8;
                    case 14:
                        return 9;
                    case 15:
                        return 10;
                    default:
                        return 11;
                }
            }
        };
        final int i2 = 7;
        Function0 function02 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i2) {
                    case 0:
                        return 1;
                    case 1:
                        return 12;
                    case 2:
                        return 13;
                    case 3:
                        return 14;
                    case 4:
                        return 17;
                    case 5:
                        return 18;
                    case 6:
                        return 19;
                    case 7:
                        return 2;
                    case 8:
                        return KeyguardViewMediator.USER_PRESENT_INTENT;
                    case 9:
                        return 3;
                    case 10:
                        return 4;
                    case 11:
                        return 5;
                    case 12:
                        return 7;
                    case 13:
                        return 8;
                    case 14:
                        return 9;
                    case 15:
                        return 10;
                    default:
                        return 11;
                }
            }
        };
        final int i3 = 9;
        Function0 function03 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i3) {
                    case 0:
                        return 1;
                    case 1:
                        return 12;
                    case 2:
                        return 13;
                    case 3:
                        return 14;
                    case 4:
                        return 17;
                    case 5:
                        return 18;
                    case 6:
                        return 19;
                    case 7:
                        return 2;
                    case 8:
                        return KeyguardViewMediator.USER_PRESENT_INTENT;
                    case 9:
                        return 3;
                    case 10:
                        return 4;
                    case 11:
                        return 5;
                    case 12:
                        return 7;
                    case 13:
                        return 8;
                    case 14:
                        return 9;
                    case 15:
                        return 10;
                    default:
                        return 11;
                }
            }
        };
        final int i4 = 10;
        Function0 function04 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i4) {
                    case 0:
                        return 1;
                    case 1:
                        return 12;
                    case 2:
                        return 13;
                    case 3:
                        return 14;
                    case 4:
                        return 17;
                    case 5:
                        return 18;
                    case 6:
                        return 19;
                    case 7:
                        return 2;
                    case 8:
                        return KeyguardViewMediator.USER_PRESENT_INTENT;
                    case 9:
                        return 3;
                    case 10:
                        return 4;
                    case 11:
                        return 5;
                    case 12:
                        return 7;
                    case 13:
                        return 8;
                    case 14:
                        return 9;
                    case 15:
                        return 10;
                    default:
                        return 11;
                }
            }
        };
        final int i5 = 11;
        Function0 function05 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i5) {
                    case 0:
                        return 1;
                    case 1:
                        return 12;
                    case 2:
                        return 13;
                    case 3:
                        return 14;
                    case 4:
                        return 17;
                    case 5:
                        return 18;
                    case 6:
                        return 19;
                    case 7:
                        return 2;
                    case 8:
                        return KeyguardViewMediator.USER_PRESENT_INTENT;
                    case 9:
                        return 3;
                    case 10:
                        return 4;
                    case 11:
                        return 5;
                    case 12:
                        return 7;
                    case 13:
                        return 8;
                    case 14:
                        return 9;
                    case 15:
                        return 10;
                    default:
                        return 11;
                }
            }
        };
        final int i6 = 12;
        Function0 function06 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i6) {
                    case 0:
                        return 1;
                    case 1:
                        return 12;
                    case 2:
                        return 13;
                    case 3:
                        return 14;
                    case 4:
                        return 17;
                    case 5:
                        return 18;
                    case 6:
                        return 19;
                    case 7:
                        return 2;
                    case 8:
                        return KeyguardViewMediator.USER_PRESENT_INTENT;
                    case 9:
                        return 3;
                    case 10:
                        return 4;
                    case 11:
                        return 5;
                    case 12:
                        return 7;
                    case 13:
                        return 8;
                    case 14:
                        return 9;
                    case 15:
                        return 10;
                    default:
                        return 11;
                }
            }
        };
        final int i7 = 13;
        Function0 function07 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i7) {
                    case 0:
                        return 1;
                    case 1:
                        return 12;
                    case 2:
                        return 13;
                    case 3:
                        return 14;
                    case 4:
                        return 17;
                    case 5:
                        return 18;
                    case 6:
                        return 19;
                    case 7:
                        return 2;
                    case 8:
                        return KeyguardViewMediator.USER_PRESENT_INTENT;
                    case 9:
                        return 3;
                    case 10:
                        return 4;
                    case 11:
                        return 5;
                    case 12:
                        return 7;
                    case 13:
                        return 8;
                    case 14:
                        return 9;
                    case 15:
                        return 10;
                    default:
                        return 11;
                }
            }
        };
        final int i8 = 14;
        Function0 function08 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i8) {
                    case 0:
                        return 1;
                    case 1:
                        return 12;
                    case 2:
                        return 13;
                    case 3:
                        return 14;
                    case 4:
                        return 17;
                    case 5:
                        return 18;
                    case 6:
                        return 19;
                    case 7:
                        return 2;
                    case 8:
                        return KeyguardViewMediator.USER_PRESENT_INTENT;
                    case 9:
                        return 3;
                    case 10:
                        return 4;
                    case 11:
                        return 5;
                    case 12:
                        return 7;
                    case 13:
                        return 8;
                    case 14:
                        return 9;
                    case 15:
                        return 10;
                    default:
                        return 11;
                }
            }
        };
        final int i9 = 15;
        Function0 function09 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i9) {
                    case 0:
                        return 1;
                    case 1:
                        return 12;
                    case 2:
                        return 13;
                    case 3:
                        return 14;
                    case 4:
                        return 17;
                    case 5:
                        return 18;
                    case 6:
                        return 19;
                    case 7:
                        return 2;
                    case 8:
                        return KeyguardViewMediator.USER_PRESENT_INTENT;
                    case 9:
                        return 3;
                    case 10:
                        return 4;
                    case 11:
                        return 5;
                    case 12:
                        return 7;
                    case 13:
                        return 8;
                    case 14:
                        return 9;
                    case 15:
                        return 10;
                    default:
                        return 11;
                }
            }
        };
        final int i10 = 16;
        Function0 function010 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i10) {
                    case 0:
                        return 1;
                    case 1:
                        return 12;
                    case 2:
                        return 13;
                    case 3:
                        return 14;
                    case 4:
                        return 17;
                    case 5:
                        return 18;
                    case 6:
                        return 19;
                    case 7:
                        return 2;
                    case 8:
                        return KeyguardViewMediator.USER_PRESENT_INTENT;
                    case 9:
                        return 3;
                    case 10:
                        return 4;
                    case 11:
                        return 5;
                    case 12:
                        return 7;
                    case 13:
                        return 8;
                    case 14:
                        return 9;
                    case 15:
                        return 10;
                    default:
                        return 11;
                }
            }
        };
        final int i11 = 1;
        Function0 function011 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i11) {
                    case 0:
                        return 1;
                    case 1:
                        return 12;
                    case 2:
                        return 13;
                    case 3:
                        return 14;
                    case 4:
                        return 17;
                    case 5:
                        return 18;
                    case 6:
                        return 19;
                    case 7:
                        return 2;
                    case 8:
                        return KeyguardViewMediator.USER_PRESENT_INTENT;
                    case 9:
                        return 3;
                    case 10:
                        return 4;
                    case 11:
                        return 5;
                    case 12:
                        return 7;
                    case 13:
                        return 8;
                    case 14:
                        return 9;
                    case 15:
                        return 10;
                    default:
                        return 11;
                }
            }
        };
        final int i12 = 2;
        Function0 function012 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i12) {
                    case 0:
                        return 1;
                    case 1:
                        return 12;
                    case 2:
                        return 13;
                    case 3:
                        return 14;
                    case 4:
                        return 17;
                    case 5:
                        return 18;
                    case 6:
                        return 19;
                    case 7:
                        return 2;
                    case 8:
                        return KeyguardViewMediator.USER_PRESENT_INTENT;
                    case 9:
                        return 3;
                    case 10:
                        return 4;
                    case 11:
                        return 5;
                    case 12:
                        return 7;
                    case 13:
                        return 8;
                    case 14:
                        return 9;
                    case 15:
                        return 10;
                    default:
                        return 11;
                }
            }
        };
        final int i13 = 3;
        Function0 function013 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i13) {
                    case 0:
                        return 1;
                    case 1:
                        return 12;
                    case 2:
                        return 13;
                    case 3:
                        return 14;
                    case 4:
                        return 17;
                    case 5:
                        return 18;
                    case 6:
                        return 19;
                    case 7:
                        return 2;
                    case 8:
                        return KeyguardViewMediator.USER_PRESENT_INTENT;
                    case 9:
                        return 3;
                    case 10:
                        return 4;
                    case 11:
                        return 5;
                    case 12:
                        return 7;
                    case 13:
                        return 8;
                    case 14:
                        return 9;
                    case 15:
                        return 10;
                    default:
                        return 11;
                }
            }
        };
        final int i14 = 4;
        Function0 function014 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i14) {
                    case 0:
                        return 1;
                    case 1:
                        return 12;
                    case 2:
                        return 13;
                    case 3:
                        return 14;
                    case 4:
                        return 17;
                    case 5:
                        return 18;
                    case 6:
                        return 19;
                    case 7:
                        return 2;
                    case 8:
                        return KeyguardViewMediator.USER_PRESENT_INTENT;
                    case 9:
                        return 3;
                    case 10:
                        return 4;
                    case 11:
                        return 5;
                    case 12:
                        return 7;
                    case 13:
                        return 8;
                    case 14:
                        return 9;
                    case 15:
                        return 10;
                    default:
                        return 11;
                }
            }
        };
        final int i15 = 5;
        Function0 function015 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i15) {
                    case 0:
                        return 1;
                    case 1:
                        return 12;
                    case 2:
                        return 13;
                    case 3:
                        return 14;
                    case 4:
                        return 17;
                    case 5:
                        return 18;
                    case 6:
                        return 19;
                    case 7:
                        return 2;
                    case 8:
                        return KeyguardViewMediator.USER_PRESENT_INTENT;
                    case 9:
                        return 3;
                    case 10:
                        return 4;
                    case 11:
                        return 5;
                    case 12:
                        return 7;
                    case 13:
                        return 8;
                    case 14:
                        return 9;
                    case 15:
                        return 10;
                    default:
                        return 11;
                }
            }
        };
        final int i16 = 6;
        Function0 function016 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i16) {
                    case 0:
                        return 1;
                    case 1:
                        return 12;
                    case 2:
                        return 13;
                    case 3:
                        return 14;
                    case 4:
                        return 17;
                    case 5:
                        return 18;
                    case 6:
                        return 19;
                    case 7:
                        return 2;
                    case 8:
                        return KeyguardViewMediator.USER_PRESENT_INTENT;
                    case 9:
                        return 3;
                    case 10:
                        return 4;
                    case 11:
                        return 5;
                    case 12:
                        return 7;
                    case 13:
                        return 8;
                    case 14:
                        return 9;
                    case 15:
                        return 10;
                    default:
                        return 11;
                }
            }
        };
        final int i17 = 0;
        Function0 function017 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i18 = i17;
                Object obj = this;
                switch (i18) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i18 = 1;
        Function0 function018 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i18;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i19 = 2;
        Function0 function019 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i19;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i20 = 3;
        Function0 function020 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i20;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i21 = 8;
        Function0 function021 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i21) {
                    case 0:
                        return 1;
                    case 1:
                        return 12;
                    case 2:
                        return 13;
                    case 3:
                        return 14;
                    case 4:
                        return 17;
                    case 5:
                        return 18;
                    case 6:
                        return 19;
                    case 7:
                        return 2;
                    case 8:
                        return KeyguardViewMediator.USER_PRESENT_INTENT;
                    case 9:
                        return 3;
                    case 10:
                        return 4;
                    case 11:
                        return 5;
                    case 12:
                        return 7;
                    case 13:
                        return 8;
                    case 14:
                        return 9;
                    case 15:
                        return 10;
                    default:
                        return 11;
                }
            }
        };
        final int i22 = 4;
        Function0 function022 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i22;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i23 = 5;
        Function0 function023 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i23;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i24 = 6;
        Function0 function024 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i24;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i25 = 7;
        Function0 function025 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i25;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i26 = 8;
        Function0 function026 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i26;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i27 = 9;
        Function0 function027 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i27;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i28 = 10;
        Function0 function028 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i28;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i29 = 11;
        Function0 function029 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i29;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i30 = 12;
        Function0 function030 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i30;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i31 = 13;
        Function0 function031 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i31;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i32 = 14;
        Function0 function032 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i32;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i33 = 15;
        Function0 function033 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i33;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i34 = 16;
        Function0 function034 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i34;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i35 = 17;
        Function0 function035 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i35;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i36 = 18;
        Function0 function036 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i36;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i37 = 19;
        Function0 function037 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i37;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i38 = 20;
        Function0 function038 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i38;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        Function2 function2 = new Function2() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                keyguardViewMediator.getClass();
                new KeyguardViewMediator$$ExternalSyntheticLambda18(keyguardViewMediator, (Boolean) obj, (Boolean) obj2, 0).run();
                return Unit.INSTANCE;
            }
        };
        final int i39 = 0;
        Function1 function1 = new Function1(this) { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda15
            public final /* synthetic */ KeyguardViewMediator f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i40 = i39;
                KeyguardViewMediator keyguardViewMediator = this.f$0;
                switch (i40) {
                    case 0:
                        keyguardViewMediator.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda16(1, keyguardViewMediator, (Bundle) obj).run();
                        return Unit.INSTANCE;
                    case 1:
                        keyguardViewMediator.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda16(0, keyguardViewMediator, (Integer) obj).run();
                        return Unit.INSTANCE;
                    case 2:
                        keyguardViewMediator.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda16(2, keyguardViewMediator, (Boolean) obj).run();
                        return Unit.INSTANCE;
                    case 3:
                        return Long.valueOf(keyguardViewMediator.getLockTimeout(((Integer) obj).intValue()));
                    default:
                        String str = (String) obj;
                        if (str != null) {
                            keyguardViewMediator.mPhoneState = str;
                        }
                        return keyguardViewMediator.mPhoneState;
                }
            }
        };
        final int i40 = 1;
        Function1 function12 = new Function1(this) { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda15
            public final /* synthetic */ KeyguardViewMediator f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i402 = i40;
                KeyguardViewMediator keyguardViewMediator = this.f$0;
                switch (i402) {
                    case 0:
                        keyguardViewMediator.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda16(1, keyguardViewMediator, (Bundle) obj).run();
                        return Unit.INSTANCE;
                    case 1:
                        keyguardViewMediator.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda16(0, keyguardViewMediator, (Integer) obj).run();
                        return Unit.INSTANCE;
                    case 2:
                        keyguardViewMediator.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda16(2, keyguardViewMediator, (Boolean) obj).run();
                        return Unit.INSTANCE;
                    case 3:
                        return Long.valueOf(keyguardViewMediator.getLockTimeout(((Integer) obj).intValue()));
                    default:
                        String str = (String) obj;
                        if (str != null) {
                            keyguardViewMediator.mPhoneState = str;
                        }
                        return keyguardViewMediator.mPhoneState;
                }
            }
        };
        final int i41 = 21;
        Function0 function039 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i41;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i42 = 22;
        Function0 function040 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i42;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i43 = 2;
        Function1 function13 = new Function1(this) { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda15
            public final /* synthetic */ KeyguardViewMediator f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i402 = i43;
                KeyguardViewMediator keyguardViewMediator = this.f$0;
                switch (i402) {
                    case 0:
                        keyguardViewMediator.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda16(1, keyguardViewMediator, (Bundle) obj).run();
                        return Unit.INSTANCE;
                    case 1:
                        keyguardViewMediator.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda16(0, keyguardViewMediator, (Integer) obj).run();
                        return Unit.INSTANCE;
                    case 2:
                        keyguardViewMediator.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda16(2, keyguardViewMediator, (Boolean) obj).run();
                        return Unit.INSTANCE;
                    case 3:
                        return Long.valueOf(keyguardViewMediator.getLockTimeout(((Integer) obj).intValue()));
                    default:
                        String str = (String) obj;
                        if (str != null) {
                            keyguardViewMediator.mPhoneState = str;
                        }
                        return keyguardViewMediator.mPhoneState;
                }
            }
        };
        final int i44 = 23;
        Function0 function041 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i44;
                Object obj = this;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i45 = 24;
        Function0 function042 = new Function0() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i182 = i45;
                Object obj = arrayList;
                switch (i182) {
                    case 0:
                        KeyguardViewMediator keyguardViewMediator = (KeyguardViewMediator) obj;
                        keyguardViewMediator.getClass();
                        return keyguardViewMediator;
                    case 1:
                        return ((KeyguardViewMediator) obj).mHandler;
                    case 2:
                        return ((KeyguardViewMediator) obj).mAlarmManager;
                    case 3:
                        return ((KeyguardViewMediator) obj).mShowKeyguardWakeLock;
                    case 4:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mWakeAndUnlocking);
                    case 5:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mPendingLock);
                    case 6:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mShowing);
                    case 7:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mAodShowing);
                    case 8:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mExternallyEnabled);
                    case 9:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mGoingToSleep);
                    case 10:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mBootCompleted);
                    case 11:
                        return Boolean.valueOf(((KeyguardViewMediator) obj).mKeyguardDonePending);
                    case 12:
                        return Integer.valueOf(((KeyguardViewMediator) obj).mDelayedShowingSequence);
                    case 13:
                        return ((KeyguardViewMediator) obj).mSurfaceBehindRemoteAnimationFinishedCallback;
                    case 14:
                        KeyguardViewMediator keyguardViewMediator2 = (KeyguardViewMediator) obj;
                        keyguardViewMediator2.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator2, 5).run();
                        return Unit.INSTANCE;
                    case 15:
                        KeyguardViewMediator keyguardViewMediator3 = (KeyguardViewMediator) obj;
                        keyguardViewMediator3.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator3, 9).run();
                        return Unit.INSTANCE;
                    case 16:
                        KeyguardViewMediator keyguardViewMediator4 = (KeyguardViewMediator) obj;
                        keyguardViewMediator4.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator4, 15).run();
                        return Unit.INSTANCE;
                    case 17:
                        KeyguardViewMediator keyguardViewMediator5 = (KeyguardViewMediator) obj;
                        keyguardViewMediator5.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator5, 12).run();
                        return Unit.INSTANCE;
                    case 18:
                        KeyguardViewMediator keyguardViewMediator6 = (KeyguardViewMediator) obj;
                        keyguardViewMediator6.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator6, 14).run();
                        return Unit.INSTANCE;
                    case 19:
                        KeyguardViewMediator keyguardViewMediator7 = (KeyguardViewMediator) obj;
                        keyguardViewMediator7.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator7, 10).run();
                        return Unit.INSTANCE;
                    case 20:
                        KeyguardViewMediator keyguardViewMediator8 = (KeyguardViewMediator) obj;
                        keyguardViewMediator8.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator8, 7).run();
                        return Unit.INSTANCE;
                    case 21:
                        KeyguardViewMediator keyguardViewMediator9 = (KeyguardViewMediator) obj;
                        keyguardViewMediator9.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator9, 8).run();
                        return Unit.INSTANCE;
                    case 22:
                        KeyguardViewMediator keyguardViewMediator10 = (KeyguardViewMediator) obj;
                        keyguardViewMediator10.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator10, 13).run();
                        return Unit.INSTANCE;
                    case 23:
                        KeyguardViewMediator keyguardViewMediator11 = (KeyguardViewMediator) obj;
                        keyguardViewMediator11.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda2(keyguardViewMediator11, 11).run();
                        return Unit.INSTANCE;
                    default:
                        return Integer.valueOf(((ArrayList) obj).size());
                }
            }
        };
        final int i46 = 3;
        Function1 function14 = new Function1(this) { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda15
            public final /* synthetic */ KeyguardViewMediator f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i402 = i46;
                KeyguardViewMediator keyguardViewMediator = this.f$0;
                switch (i402) {
                    case 0:
                        keyguardViewMediator.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda16(1, keyguardViewMediator, (Bundle) obj).run();
                        return Unit.INSTANCE;
                    case 1:
                        keyguardViewMediator.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda16(0, keyguardViewMediator, (Integer) obj).run();
                        return Unit.INSTANCE;
                    case 2:
                        keyguardViewMediator.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda16(2, keyguardViewMediator, (Boolean) obj).run();
                        return Unit.INSTANCE;
                    case 3:
                        return Long.valueOf(keyguardViewMediator.getLockTimeout(((Integer) obj).intValue()));
                    default:
                        String str = (String) obj;
                        if (str != null) {
                            keyguardViewMediator.mPhoneState = str;
                        }
                        return keyguardViewMediator.mPhoneState;
                }
            }
        };
        final int i47 = 4;
        keyguardViewMediatorHelperImpl.viewMediatorProvider = new ViewMediatorProvider(function0, function02, function03, function04, function05, function06, function07, function08, function09, function010, function011, function012, function013, function014, function015, function016, function017, function018, function019, function020, function021, function022, function023, function024, function025, function026, function027, function028, function029, function030, function031, function032, function033, function034, function035, function036, function037, function038, function2, function1, function12, function039, function040, function13, function041, function042, function14, new Function1(this) { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda15
            public final /* synthetic */ KeyguardViewMediator f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i402 = i47;
                KeyguardViewMediator keyguardViewMediator = this.f$0;
                switch (i402) {
                    case 0:
                        keyguardViewMediator.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda16(1, keyguardViewMediator, (Bundle) obj).run();
                        return Unit.INSTANCE;
                    case 1:
                        keyguardViewMediator.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda16(0, keyguardViewMediator, (Integer) obj).run();
                        return Unit.INSTANCE;
                    case 2:
                        keyguardViewMediator.getClass();
                        new KeyguardViewMediator$$ExternalSyntheticLambda16(2, keyguardViewMediator, (Boolean) obj).run();
                        return Unit.INSTANCE;
                    case 3:
                        return Long.valueOf(keyguardViewMediator.getLockTimeout(((Integer) obj).intValue()));
                    default:
                        String str = (String) obj;
                        if (str != null) {
                            keyguardViewMediator.mPhoneState = str;
                        }
                        return keyguardViewMediator.mPhoneState;
                }
            }
        });
        this.mHelper = keyguardViewMediatorHelperImpl;
        this.mContext = context;
        this.mUserTracker = userTracker;
        this.mFalsingCollector = falsingCollector;
        this.mLockPatternUtils = lockPatternUtils;
        this.mBroadcastDispatcher = broadcastDispatcher;
        this.mKeyguardViewControllerLazy = lazy;
        this.mDismissCallbackRegistry = dismissCallbackRegistry;
        this.mNotificationShadeDepthController = lazy3;
        this.mUiBgExecutor = executor;
        this.mUpdateMonitor = keyguardUpdateMonitor;
        this.mPM = powerManager;
        this.mTrustManager = trustManager;
        this.mUserSwitcherController = userSwitcherController;
        this.mSystemPropertiesHelper = systemPropertiesHelper;
        this.mStatusBarService = IStatusBarService.Stub.asInterface(ServiceManager.getService("statusbar"));
        this.mKeyguardDisplayManager = keyguardDisplayManager;
        this.mShadeController = lazy4;
        String name = getClass().getName();
        dumpManager.getClass();
        DumpManager.registerDumpable$default(dumpManager, name, this);
        this.mKeyguardTransitions = keyguardTransitions;
        this.mNotificationShadeWindowControllerLazy = lazy5;
        deviceConfigProxy.getClass();
        this.mShowHomeOverLockscreen = DeviceConfig.getBoolean("systemui", "nav_bar_handle_show_over_lockscreen", true);
        DeviceConfig.addOnPropertiesChangedListener("systemui", new Executor() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda4
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                anonymousClass12.post(runnable);
            }
        }, (DeviceConfig.OnPropertiesChangedListener) r7);
        this.mInGestureNavigationMode = QuickStepContract.isGesturalMode(navigationModeController.addListener(new NavigationModeController.ModeChangedListener() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda5
            @Override // com.android.systemui.navigationbar.NavigationModeController.ModeChangedListener
            public final void onNavigationModeChanged(int i48) {
                KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                keyguardViewMediator.getClass();
                keyguardViewMediator.mInGestureNavigationMode = QuickStepContract.isGesturalMode(i48);
            }
        }));
        this.mDozeParameters = dozeParameters;
        this.mStatusBarStateController = sysuiStatusBarStateController;
        ((StatusBarStateControllerImpl) sysuiStatusBarStateController).addCallback((StatusBarStateController.StateListener) this);
        this.mKeyguardStateController = keyguardStateController;
        ((KeyguardStateControllerImpl) keyguardStateController).addCallback(r8);
        this.mKeyguardUnlockAnimationControllerLazy = lazy2;
        this.mScreenOffAnimationController = screenOffAnimationController;
        this.mInteractionJankMonitor = interactionJankMonitor;
        this.mDreamOverlayStateController = dreamOverlayStateController;
        this.mActivityLaunchAnimator = lazy6;
        this.mScrimControllerLazy = lazy7;
        this.mPowerButtonY = context.getResources().getDimensionPixelSize(R.dimen.physical_power_button_center_screen_location_y);
        this.mWindowCornerRadius = ScreenDecorationsUtils.getWindowCornerRadius(context);
        this.mDreamOpenAnimationDuration = (int) LockscreenToDreamingTransitionViewModel.DREAMING_ANIMATION_DURATION_MS;
        this.mFeatureFlags = featureFlags;
        this.mUiEventLogger = uiEventLogger;
        this.mSessionTracker = sessionTracker;
        this.mMainDispatcher = coroutineDispatcher;
        this.mDreamingToLockscreenTransitionViewModel = lazy8;
    }

    public void addStateMonitorCallback(IKeyguardStateCallback iKeyguardStateCallback) {
        synchronized (this) {
            this.mKeyguardStateCallbacks.add(iKeyguardStateCallback);
            try {
                iKeyguardStateCallback.onSimSecureStateChanged(this.mUpdateMonitor.isSimPinSecure());
                iKeyguardStateCallback.onShowingStateChanged(this.mShowing, KeyguardUpdateMonitor.getCurrentUser());
                iKeyguardStateCallback.onInputRestrictedStateChanged(this.mInputRestricted);
                iKeyguardStateCallback.onTrustedChanged(this.mUpdateMonitor.getUserHasTrust(KeyguardUpdateMonitor.getCurrentUser()));
            } catch (RemoteException e) {
                Slog.w("Failed to call to IKeyguardStateCallback", e);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0140 A[Catch: RemoteException -> 0x017b, TryCatch #0 {RemoteException -> 0x017b, blocks: (B:48:0x013c, B:50:0x0140, B:51:0x014a, B:53:0x014e, B:56:0x0167, B:58:0x016f), top: B:47:0x013c }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x014e A[Catch: RemoteException -> 0x017b, TryCatch #0 {RemoteException -> 0x017b, blocks: (B:48:0x013c, B:50:0x0140, B:51:0x014a, B:53:0x014e, B:56:0x0167, B:58:0x016f), top: B:47:0x013c }] */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void adjustStatusBarLocked(boolean r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.KeyguardViewMediator.adjustStatusBarLocked(boolean, boolean):void");
    }

    public void cancelKeyguardExitAnimation() {
        Trace.beginSection("KeyguardViewMediator#cancelKeyguardExitAnimation");
        AnonymousClass12 anonymousClass12 = this.mHandler;
        anonymousClass12.sendMessage(anonymousClass12.obtainMessage(19));
        Trace.endSection();
    }

    public final InteractionJankMonitor.Configuration.Builder createInteractionJankMonitorConf(int i, String str) {
        String str2;
        if (str != null) {
            str2 = str;
        } else {
            str2 = "null";
        }
        Log.d("KeyguardViewMediator", str2);
        InteractionJankMonitor.Configuration.Builder withView = InteractionJankMonitor.Configuration.Builder.withView(i, ((KeyguardViewController) this.mKeyguardViewControllerLazy.get()).getViewRootImpl().getView());
        if (str != null) {
            return withView.setTag(str);
        }
        return withView;
    }

    public void dismiss(IKeyguardDismissCallback iKeyguardDismissCallback, CharSequence charSequence) {
        Log.d("KeyguardViewMediator", "dismiss");
        KeyguardUnlockInfo.setUnlockTriggerIfNotSet(KeyguardUnlockInfo.UnlockTrigger.TRIGGER_EXTERNAL);
        this.mHandler.obtainMessage(11, new DismissMessage(iKeyguardDismissCallback, charSequence)).sendToTarget();
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0073, code lost:
    
        if (r3 <= 0) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void doKeyguardLaterForChildProfilesLocked() {
        /*
            r15 = this;
            com.android.systemui.settings.UserTracker r0 = r15.mUserTracker
            com.android.systemui.settings.UserTrackerImpl r0 = (com.android.systemui.settings.UserTrackerImpl) r0
            java.util.List r0 = r0.getUserProfiles()
            java.util.Iterator r0 = r0.iterator()
        Lc:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Le4
            java.lang.Object r1 = r0.next()
            android.content.pm.UserInfo r1 = (android.content.pm.UserInfo) r1
            boolean r2 = r1.isEnabled()
            if (r2 != 0) goto L1f
            goto Lc
        L1f:
            int r1 = r1.id
            com.android.internal.widget.LockPatternUtils r2 = r15.mLockPatternUtils
            boolean r2 = r2.isSeparateProfileChallengeEnabled(r1)
            if (r2 == 0) goto Lc
            com.android.systemui.keyguard.KeyguardViewMediatorHelperImpl r2 = r15.mHelper
            r2.getClass()
            boolean r3 = com.samsung.android.knox.SemPersonaManager.isSecureFolderId(r1)
            r4 = -1
            java.lang.String r5 = "knox_screen_off_timeout"
            android.content.Context r6 = r2.context
            if (r3 == 0) goto L42
            android.content.ContentResolver r3 = r6.getContentResolver()
            int r3 = android.provider.Settings.System.getIntForUser(r3, r5, r4, r1)
            goto L4a
        L42:
            android.content.ContentResolver r3 = r6.getContentResolver()
            int r3 = android.provider.Settings.Secure.getIntForUser(r3, r5, r4, r1)
        L4a:
            long r3 = (long) r3
            com.android.internal.widget.LockPatternUtils r5 = r2.lockPatternUtils
            android.app.admin.DevicePolicyManager r5 = r5.getDevicePolicyManager()
            r6 = 0
            long r5 = r5.getMaximumTimeToLock(r6, r1)
            r7 = 0
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            r10 = 1
            if (r9 <= 0) goto L5f
            r9 = r10
            goto L60
        L5f:
            r9 = 0
        L60:
            r11 = -2
            if (r9 == 0) goto L6d
            int r13 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r13 <= 0) goto L6d
            long r3 = java.lang.Math.min(r5, r3)
            goto L76
        L6d:
            if (r9 == 0) goto L71
            r3 = r5
            goto L76
        L71:
            int r5 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r5 > 0) goto L76
            goto L9e
        L76:
            int r5 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r5 == 0) goto L8a
            r5 = -1
            int r5 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r5 == 0) goto L8a
            int r5 = (r3 > r11 ? 1 : (r3 == r11 ? 0 : -1))
            if (r5 == 0) goto L8a
            r5 = 5000(0x1388, double:2.4703E-320)
            long r3 = java.lang.Math.max(r3, r5)
        L8a:
            long r5 = android.os.SystemClock.uptimeMillis()
            android.os.PowerManager r2 = r2.pm
            long r13 = r2.getLastUserActivityTime(r1)
            long r5 = r5 - r13
            long r5 = java.lang.Math.max(r5, r7)
            long r3 = r3 - r5
            long r3 = java.lang.Math.max(r3, r7)
        L9e:
            int r2 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r2 <= 0) goto Ld7
            long r5 = android.os.SystemClock.elapsedRealtime()
            long r5 = r5 + r3
            android.content.Intent r2 = new android.content.Intent
            java.lang.String r3 = "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK"
            r2.<init>(r3)
            android.content.Context r3 = r15.mContext
            java.lang.String r4 = r3.getPackageName()
            r2.setPackage(r4)
            java.lang.String r4 = "seq"
            int r7 = r15.mDelayedProfileShowingSequence
            r2.putExtra(r4, r7)
            java.lang.String r4 = "android.intent.extra.USER_ID"
            r2.putExtra(r4, r1)
            r4 = 268435456(0x10000000, float:2.5243549E-29)
            r2.addFlags(r4)
            r4 = 335544320(0x14000000, float:6.4623485E-27)
            android.app.PendingIntent r1 = android.app.PendingIntent.getBroadcast(r3, r1, r2, r4)
            android.app.AlarmManager r2 = r15.mAlarmManager
            r3 = 2
            r2.setExactAndAllowWhileIdle(r3, r5, r1)
            goto Lc
        Ld7:
            if (r2 == 0) goto Ldd
            int r2 = (r3 > r11 ? 1 : (r3 == r11 ? 0 : -1))
            if (r2 != 0) goto Lc
        Ldd:
            android.app.trust.TrustManager r2 = r15.mTrustManager
            r2.setDeviceLockedForUser(r1, r10)
            goto Lc
        Le4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.KeyguardViewMediator.doKeyguardLaterForChildProfilesLocked():void");
    }

    public final void doKeyguardLaterLocked(long j) {
        boolean isLockscreenDisabled;
        KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
        keyguardViewMediatorHelperImpl.getClass();
        boolean z = LsRune.COVER_SUPPORTED;
        if (z && keyguardViewMediatorHelperImpl.doKeyguardPendingIntent != null) {
            KeyguardViewMediatorHelperImpl.logD("doKeyguardLaterLocked is already in process");
            isLockscreenDisabled = true;
        } else {
            isLockscreenDisabled = keyguardViewMediatorHelperImpl.updateMonitor.isLockscreenDisabled();
        }
        if (isLockscreenDisabled) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() + j;
        Intent intent = new Intent("com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD");
        Context context = this.mContext;
        intent.setPackage(context.getPackageName());
        intent.putExtra("seq", this.mDelayedShowingSequence);
        intent.addFlags(com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 335544320);
        this.mAlarmManager.setExactAndAllowWhileIdle(2, elapsedRealtime, broadcast);
        Log.d("KeyguardViewMediator", "setting alarm to turn off keyguard, seq = %s, timeout = %d", Integer.valueOf(this.mDelayedShowingSequence), Long.valueOf(j));
        doKeyguardLaterForChildProfilesLocked();
        KeyguardViewMediator$$ExternalSyntheticLambda6 keyguardViewMediator$$ExternalSyntheticLambda6 = new KeyguardViewMediator$$ExternalSyntheticLambda6(keyguardViewMediatorHelperImpl, 2);
        if (z) {
            keyguardViewMediator$$ExternalSyntheticLambda6.accept(broadcast);
        }
    }

    public final boolean doKeyguardLocked(Bundle bundle, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4 = this.mExternallyEnabled;
        LockPatternUtils lockPatternUtils = this.mLockPatternUtils;
        KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
        int i = 0;
        if (!z4 && !lockPatternUtils.isUserInLockdown(KeyguardUpdateMonitor.getCurrentUser())) {
            Objects.requireNonNull(keyguardViewMediatorHelperImpl);
            KeyguardViewMediator$$ExternalSyntheticLambda3 keyguardViewMediator$$ExternalSyntheticLambda3 = new KeyguardViewMediator$$ExternalSyntheticLambda3(keyguardViewMediatorHelperImpl, i);
            boolean z5 = Rune.SYSUI_MULTI_SIM;
            if (keyguardViewMediator$$ExternalSyntheticLambda3.getAsBoolean()) {
                Log.d("KeyguardViewMediator", "doKeyguard: not showing because externally disabled");
                this.mNeedToReshowWhenReenabled = true;
                return false;
            }
        }
        if (this.mShowing && ((KeyguardStateControllerImpl) this.mKeyguardStateController).mShowing) {
            if (this.mPM.isInteractive() && !this.mHiding) {
                Log.d("KeyguardViewMediator", "doKeyguard: not showing (instead, resetting) because it is already showing, we're interactive, and we were not previously hiding. It should be safe to short-circuit here.");
                keyguardViewMediatorHelperImpl.setShowingOptions(bundle);
                resetStateLocked(false);
                return false;
            }
            Log.e("KeyguardViewMediator", "doKeyguard: already showing, but re-showing because we're interactive or were in the middle of hiding.");
        }
        boolean z6 = !SystemProperties.getBoolean("keyguard.no_require_sim", true);
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.mUpdateMonitor;
        boolean isValidSubscriptionId = SubscriptionManager.isValidSubscriptionId(keyguardUpdateMonitor.getNextSubIdForState(1));
        boolean isValidSubscriptionId2 = SubscriptionManager.isValidSubscriptionId(keyguardUpdateMonitor.getNextSubIdForState(7));
        if (!keyguardUpdateMonitor.isSimPinSecure() && ((!isValidSubscriptionId && !isValidSubscriptionId2) || !z6)) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (!z2 && shouldWaitForProvisioning()) {
            Log.d("KeyguardViewMediator", "doKeyguard: not showing because device isn't provisioned and the sim is not locked or missing");
            return false;
        }
        if (bundle != null && bundle.getBoolean("force_show", false)) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (lockPatternUtils.isLockScreenDisabled(KeyguardUpdateMonitor.getCurrentUser()) && !z2 && !z3) {
            Log.d("KeyguardViewMediator", "doKeyguard: not showing because lockscreen is off");
            return false;
        }
        if (keyguardViewMediatorHelperImpl.isKeyguardDisabled(false)) {
            if (keyguardViewMediatorHelperImpl.isShowing()) {
                Function2 function2 = keyguardViewMediatorHelperImpl.getViewMediatorProvider().setShowingLocked;
                Boolean bool = Boolean.FALSE;
                function2.invoke(bool, bool);
                keyguardViewMediatorHelperImpl.hidingByDisabled = true;
                KeyguardViewMediatorHelperImpl.logD("hideLocked by disabled keyguard");
                keyguardViewMediatorHelperImpl.getViewMediatorProvider().hideLocked.invoke();
            }
            return false;
        }
        if (z) {
            return true;
        }
        keyguardUpdateMonitor.setUnlockingKeyguard(false);
        Log.d("KeyguardViewMediator", "doKeyguard: showing the lock screen");
        showLocked(bundle);
        return true;
    }

    public void doKeyguardTimeout(Bundle bundle) {
        AnonymousClass12 anonymousClass12 = this.mHandler;
        anonymousClass12.removeMessages(10);
        anonymousClass12.sendMessageAtFrontOfQueue(anonymousClass12.obtainMessage(10, bundle));
    }

    @Override // com.android.systemui.CoreStartable, com.android.systemui.Dumpable
    public void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.print("  mSystemReady: ");
        printWriter.println(this.mSystemReady);
        printWriter.print("  mBootCompleted: ");
        printWriter.println(this.mBootCompleted);
        printWriter.print("  mBootSendUserPresent: ");
        printWriter.println(this.mBootSendUserPresent);
        printWriter.print("  mExternallyEnabled: ");
        printWriter.println(this.mExternallyEnabled);
        printWriter.print("  mShuttingDown: ");
        printWriter.println(this.mShuttingDown);
        printWriter.print("  mNeedToReshowWhenReenabled: ");
        printWriter.println(this.mNeedToReshowWhenReenabled);
        printWriter.print("  mShowing: ");
        printWriter.println(this.mShowing);
        printWriter.print("  mInputRestricted: ");
        printWriter.println(this.mInputRestricted);
        printWriter.print("  mOccluded: ");
        printWriter.println(this.mOccluded);
        printWriter.print("  mDelayedShowingSequence: ");
        printWriter.println(this.mDelayedShowingSequence);
        printWriter.print("  mDeviceInteractive: ");
        printWriter.println(this.mDeviceInteractive);
        printWriter.print("  mGoingToSleep: ");
        printWriter.println(this.mGoingToSleep);
        printWriter.print("  mHiding: ");
        printWriter.println(this.mHiding);
        printWriter.print("  mDozing: ");
        printWriter.println(this.mDozing);
        printWriter.print("  mAodShowing: ");
        printWriter.println(this.mAodShowing);
        printWriter.print("  mWaitingUntilKeyguardVisible: ");
        printWriter.println(this.mWaitingUntilKeyguardVisible);
        printWriter.print("  mKeyguardDonePending: ");
        printWriter.println(this.mKeyguardDonePending);
        printWriter.print("  mHideAnimationRun: ");
        printWriter.println(this.mHideAnimationRun);
        printWriter.print("  mPendingReset: ");
        printWriter.println(this.mPendingReset);
        printWriter.print("  mPendingLock: ");
        printWriter.println(this.mPendingLock);
        printWriter.print("  wakeAndUnlocking: ");
        printWriter.println(this.mWakeAndUnlocking);
        printWriter.print("  mPendingPinLock: ");
        printWriter.println(this.mPendingPinLock);
        printWriter.print("  mPowerGestureIntercepted: ");
        printWriter.println(this.mPowerGestureIntercepted);
    }

    public void exitKeyguardAndFinishSurfaceBehindRemoteAnimation(final boolean z) {
        Log.d("KeyguardViewMediator", "onKeyguardExitRemoteAnimationFinished surfBehindRemoteAniRun=%b surfBehindRemoteAniReq=%b cancelled=%b", Boolean.valueOf(this.mSurfaceBehindRemoteAnimationRunning), Boolean.valueOf(this.mSurfaceBehindRemoteAnimationRequested), Boolean.valueOf(z));
        if (!this.mSurfaceBehindRemoteAnimationRunning && !this.mSurfaceBehindRemoteAnimationRequested) {
            StringBuilder m = RowView$$ExternalSyntheticOutline0.m("skip onKeyguardExitRemoteAnimationFinished cancelled=", z, " surfaceAnimationRunning=");
            m.append(this.mSurfaceBehindRemoteAnimationRunning);
            m.append(" surfaceAnimationRequested=");
            m.append(this.mSurfaceBehindRemoteAnimationRequested);
            Log.d("KeyguardViewMediator", m.toString());
            return;
        }
        ((KeyguardViewController) this.mKeyguardViewControllerLazy.get()).blockPanelExpansionFromCurrentTouch();
        final boolean z2 = this.mShowing;
        ((KeyguardUnlockAnimationController) this.mKeyguardUnlockAnimationControllerLazy.get()).notifyFinishedKeyguardExitAnimation(z);
        DejankUtils.setImmediate(true);
        DejankUtils.postAfterTraversal(new Runnable() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                boolean z3 = z2;
                boolean z4 = z;
                keyguardViewMediator.onKeyguardExitFinished();
                KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) keyguardViewMediator.mKeyguardStateController;
                boolean z5 = keyguardStateControllerImpl.mDismissingFromTouch;
                Lazy lazy = keyguardViewMediator.mKeyguardUnlockAnimationControllerLazy;
                if (!z5 && !z3) {
                    Log.d("KeyguardViewMediator", "skip hideKeyguardViewAfterRemoteAnimation dismissFromSwipe=" + keyguardStateControllerImpl.mDismissingFromTouch + " wasShowing=" + z3);
                } else {
                    Log.d("KeyguardViewMediator", "onKeyguardExitRemoteAnimationFinished#hideKeyguardViewAfterRemoteAnimation");
                    ((KeyguardUnlockAnimationController) lazy.get()).hideKeyguardViewAfterRemoteAnimation();
                }
                ((KeyguardUnlockAnimationController) lazy.get()).notifyFinishedKeyguardExitAnimation(z4);
                keyguardViewMediator.finishSurfaceBehindRemoteAnimation();
                keyguardViewMediator.mUpdateMonitor.mHandler.sendEmptyMessage(346);
            }
        });
        DejankUtils.setImmediate(false);
    }

    public void finishSurfaceBehindRemoteAnimation() {
        this.mSurfaceBehindRemoteAnimationRequested = false;
        this.mSurfaceBehindRemoteAnimationRunning = false;
        ((KeyguardStateControllerImpl) this.mKeyguardStateController).notifyKeyguardGoingAway(false);
        IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback = this.mSurfaceBehindRemoteAnimationFinishedCallback;
        if (iRemoteAnimationFinishedCallback != null) {
            try {
                iRemoteAnimationFinishedCallback.onAnimationFinished();
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    public IRemoteAnimationRunner getExitAnimationRunner() {
        AnonymousClass16 anonymousClass16 = new AnonymousClass16(this.mExitAnimationRunner);
        this.mHelper.exitAnimationRunner = anonymousClass16;
        return anonymousClass16;
    }

    public final long getLockTimeout(int i) {
        int i2;
        long intForUser = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "lock_screen_lock_after_timeout", 5000, i);
        EdmMonitor edmMonitor = ((KnoxStateMonitorImpl) this.mHelper.knoxStateMonitor).mEdmMonitor;
        if (edmMonitor == null) {
            i2 = 0;
        } else {
            i2 = edmMonitor.mLockDelay;
        }
        if (i2 >= 0) {
            LogUtil.d("KeyguardViewMediator", "mdmDelay=%d, lockAfterTimeout=%d", Integer.valueOf(i2), Long.valueOf(intForUser));
            intForUser = Math.min(i2 * 1000, intForUser);
        }
        long maximumTimeToLock = this.mLockPatternUtils.getDevicePolicyManager().getMaximumTimeToLock(null, i);
        if (maximumTimeToLock > 0) {
            return Math.max(Math.min(maximumTimeToLock - Math.max(Settings.System.getIntForUser(r0, "screen_off_timeout", 30000, i), 0L), intForUser), 0L);
        }
        return intForUser;
    }

    public IRemoteAnimationRunner getOccludeAnimationRunner() {
        return new AnonymousClass16(this.mHelper.disabledOccluedeAnimationRunner);
    }

    public IRemoteAnimationRunner getOccludeByDreamAnimationRunner() {
        return new AnonymousClass16(this.mHelper.disabledOccluedeAnimationRunner);
    }

    public IRemoteAnimationRunner getUnoccludeAnimationRunner() {
        return new AnonymousClass16(this.mHelper.unoccluedAnimationRunner);
    }

    public ViewMediatorCallback getViewMediatorCallback() {
        return this.mViewMediatorCallback;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x009e, code lost:
    
        if (r0 != false) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void handleHide() {
        /*
            Method dump skipped, instructions count: 208
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.KeyguardViewMediator.handleHide():void");
    }

    public final void handleKeyguardDone() {
        Trace.beginSection("KeyguardViewMediator#handleKeyguardDone");
        final int currentUser = KeyguardUpdateMonitor.getCurrentUser();
        this.mUiBgExecutor.execute(new Runnable() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                int i = currentUser;
                LockPatternUtils lockPatternUtils = keyguardViewMediator.mLockPatternUtils;
                if (lockPatternUtils.isSecure(i)) {
                    lockPatternUtils.getDevicePolicyManager().reportKeyguardDismissed(i);
                }
            }
        });
        Log.d("KeyguardViewMediator", "handleKeyguardDone");
        synchronized (this) {
            resetKeyguardDonePendingLocked();
        }
        if (this.mGoingToSleep && !shouldWaitForProvisioning()) {
            Log.i("KeyguardViewMediator", "Device is going to sleep, aborting keyguardDone");
            this.mUpdateMonitor.clearBiometricRecognized(currentUser);
            this.mDismissCallbackRegistry.notifyDismissCancelled();
            ((KeyguardViewController) this.mKeyguardViewControllerLazy.get()).onDismissCancelled();
            KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
            Objects.requireNonNull(keyguardViewMediatorHelperImpl);
            Rune.runIf((Runnable) new KeyguardViewMediator$$ExternalSyntheticLambda7(keyguardViewMediatorHelperImpl, 2), true);
            return;
        }
        setPendingLock(false);
        handleHide();
        this.mUpdateMonitor.clearBiometricRecognized(currentUser);
        Trace.endSection();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void handleStartKeyguardExitAnimation(long j, long j2, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, final IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback) {
        Trace.beginSection("KeyguardViewMediator#handleStartKeyguardExitAnimation");
        Log.d("KeyguardViewMediator", "handleStartKeyguardExitAnimation startTime=" + j + " fadeoutDuration=" + j2);
        synchronized (this) {
            int i = 1;
            if (!this.mHiding && !this.mSurfaceBehindRemoteAnimationRequested && !((KeyguardStateControllerImpl) this.mKeyguardStateController).mFlingingToDismissKeyguardDuringSwipeGesture) {
                if (iRemoteAnimationFinishedCallback != null) {
                    try {
                        iRemoteAnimationFinishedCallback.onAnimationFinished();
                    } catch (RemoteException e) {
                        Slog.w("Failed to call onAnimationFinished", e);
                    }
                }
                setShowingLocked(this.mShowing, true);
                KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
                Objects.requireNonNull(keyguardViewMediatorHelperImpl);
                Rune.runIf((Runnable) new KeyguardViewMediator$$ExternalSyntheticLambda7(keyguardViewMediatorHelperImpl, 10), true);
                return;
            }
            this.mHiding = false;
            IRemoteAnimationRunner iRemoteAnimationRunner = this.mKeyguardExitAnimationRunner;
            this.mKeyguardExitAnimationRunner = null;
            LatencyTracker.getInstance(this.mContext).onActionEnd(11);
            if (iRemoteAnimationRunner != null && iRemoteAnimationFinishedCallback != null) {
                IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback2 = new IRemoteAnimationFinishedCallback() { // from class: com.android.systemui.keyguard.KeyguardViewMediator.14
                    public final IBinder asBinder() {
                        return iRemoteAnimationFinishedCallback.asBinder();
                    }

                    public final void onAnimationFinished() {
                        try {
                            iRemoteAnimationFinishedCallback.onAnimationFinished();
                        } catch (RemoteException e2) {
                            Slog.w("Failed to call onAnimationFinished", e2);
                        }
                        KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                        Intent intent = KeyguardViewMediator.USER_PRESENT_INTENT;
                        keyguardViewMediator.onKeyguardExitFinished();
                        ((KeyguardViewController) KeyguardViewMediator.this.mKeyguardViewControllerLazy.get()).hide(0L, 0L);
                        KeyguardViewMediator.this.mInteractionJankMonitor.end(29);
                    }
                };
                try {
                    this.mInteractionJankMonitor.begin(createInteractionJankMonitorConf(29, "RunRemoteAnimation"));
                    iRemoteAnimationRunner.onAnimationStart(7, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, iRemoteAnimationFinishedCallback2);
                } catch (RemoteException e2) {
                    Slog.w("Failed to call onAnimationStart", e2);
                }
            } else if (!((StatusBarStateControllerImpl) this.mStatusBarStateController).mLeaveOpenOnKeyguardHide && remoteAnimationTargetArr != 0 && remoteAnimationTargetArr.length > 0) {
                this.mSurfaceBehindRemoteAnimationFinishedCallback = iRemoteAnimationFinishedCallback;
                this.mSurfaceBehindRemoteAnimationRunning = true;
                ((KeyguardUnlockAnimationController) this.mKeyguardUnlockAnimationControllerLazy.get()).notifyStartSurfaceBehindRemoteAnimation(remoteAnimationTargetArr, (RemoteAnimationTarget[]) Arrays.stream(remoteAnimationTargetArr2).filter(new KeyguardViewMediator$$ExternalSyntheticLambda19()).toArray(new KeyguardViewMediator$$ExternalSyntheticLambda20()), j, this.mSurfaceBehindRemoteAnimationRequested);
            } else {
                ((KeyguardViewController) this.mKeyguardViewControllerLazy.get()).hide(j, j2);
                this.mContext.getMainExecutor().execute(new KeyguardViewMediator$$ExternalSyntheticLambda18(this, iRemoteAnimationFinishedCallback, remoteAnimationTargetArr, i));
                onKeyguardExitFinished();
            }
            Trace.endSection();
            return;
        }
    }

    public void hideSurfaceBehindKeyguard() {
        Log.d("KeyguardViewMediator", "hideSurfaceBehindKeyguard");
        this.mSurfaceBehindRemoteAnimationRequested = false;
        ((KeyguardStateControllerImpl) this.mKeyguardStateController).notifyKeyguardGoingAway(false);
        if (this.mShowing) {
            setShowingLocked(true, true);
            KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
            Objects.requireNonNull(keyguardViewMediatorHelperImpl);
            Rune.runIf((Runnable) new KeyguardViewMediator$$ExternalSyntheticLambda7(keyguardViewMediatorHelperImpl, 9), true);
        }
    }

    public void hideWithAnimation(IRemoteAnimationRunner iRemoteAnimationRunner) {
        if (!this.mKeyguardDonePending) {
            return;
        }
        this.mKeyguardExitAnimationRunner = iRemoteAnimationRunner;
        this.mViewMediatorCallback.readyForKeyguardDone();
    }

    public boolean isAnimatingBetweenKeyguardAndSurfaceBehind() {
        return this.mSurfaceBehindRemoteAnimationRunning;
    }

    public boolean isAnimatingBetweenKeyguardAndSurfaceBehindOrWillBe() {
        if (!this.mSurfaceBehindRemoteAnimationRunning && !((KeyguardStateControllerImpl) this.mKeyguardStateController).mFlingingToDismissKeyguard) {
            return false;
        }
        return true;
    }

    public boolean isAnySimPinSecure() {
        int i = 0;
        while (true) {
            SparseIntArray sparseIntArray = this.mLastSimStates;
            if (i >= sparseIntArray.size()) {
                return false;
            }
            if (KeyguardUpdateMonitor.isSimPinSecure(sparseIntArray.get(sparseIntArray.keyAt(i)))) {
                return true;
            }
            i++;
        }
    }

    public boolean isHiding() {
        return this.mHiding;
    }

    public boolean isInputRestricted() {
        if (!this.mShowing && !this.mNeedToReshowWhenReenabled) {
            return false;
        }
        return true;
    }

    public boolean isOccludeAnimationPlaying() {
        return this.mOccludeAnimationPlaying;
    }

    public boolean isSecure() {
        KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
        Objects.requireNonNull(keyguardViewMediatorHelperImpl);
        boolean z = Rune.SYSUI_MULTI_SIM;
        int i = keyguardViewMediatorHelperImpl.switchingUserId;
        if (i != -1) {
            return isSecure(i);
        }
        return isSecure(KeyguardUpdateMonitor.getCurrentUser());
    }

    public boolean isShowingAndNotOccluded() {
        if (this.mShowing && !this.mOccluded) {
            return true;
        }
        return false;
    }

    public void maybeHandlePendingLock() {
        if (this.mPendingLock) {
            if (this.mScreenOffAnimationController.shouldDelayKeyguardShow()) {
                Log.d("KeyguardViewMediator", "#maybeHandlePendingLock: not handling because the screen off animation's shouldDelayKeyguardShow() returned true. This should be handled soon by #onStartedWakingUp, or by the end actions of the screen off animation.");
            } else {
                if (((KeyguardStateControllerImpl) this.mKeyguardStateController).mKeyguardGoingAway) {
                    Log.d("KeyguardViewMediator", "#maybeHandlePendingLock: not handling because the keyguard is going away. This should be handled shortly by StatusBar#finishKeyguardFadingAway.");
                    return;
                }
                Log.d("KeyguardViewMediator", "#maybeHandlePendingLock: handling pending lock; locking keyguard.");
                doKeyguardLocked(null, false);
                setPendingLock(false);
            }
        }
    }

    public final void maybeSendUserPresentBroadcast() {
        boolean z = this.mSystemReady;
        LockPatternUtils lockPatternUtils = this.mLockPatternUtils;
        if (z) {
            boolean isLockScreenDisabled = lockPatternUtils.isLockScreenDisabled(KeyguardUpdateMonitor.getCurrentUser());
            KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
            if (isLockScreenDisabled || (!this.mShowing && keyguardViewMediatorHelperImpl.isKeyguardDisabledBySettings(false))) {
                sendUserPresentBroadcast();
                boolean z2 = !this.mUpdateMonitor.isForcedLock();
                Objects.requireNonNull(keyguardViewMediatorHelperImpl);
                Rune.runIf(new KeyguardViewMediator$$ExternalSyntheticLambda7(keyguardViewMediatorHelperImpl, 4), z2);
                return;
            }
        }
        if (this.mSystemReady && shouldWaitForProvisioning()) {
            lockPatternUtils.userPresent(KeyguardUpdateMonitor.getCurrentUser());
        }
    }

    public final void notifyTrustedChangedLocked(boolean z) {
        ArrayList arrayList = this.mKeyguardStateCallbacks;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size >= 0) {
                try {
                    ((IKeyguardStateCallback) arrayList.get(size)).onTrustedChanged(z);
                } catch (RemoteException e) {
                    Slog.w("Failed to call notifyTrustedChangedLocked", e);
                    if (e instanceof DeadObjectException) {
                        arrayList.remove(size);
                    }
                }
            } else {
                return;
            }
        }
    }

    @Override // com.android.systemui.CoreStartable
    public void onBootCompleted() {
        synchronized (this) {
            if (this.mContext.getResources().getBoolean(17891714)) {
                ((GuestUserInteractor) this.mUserSwitcherController.guestUserInteractor$delegate.getValue()).onDeviceBootCompleted();
            }
            this.mBootCompleted = true;
            adjustStatusBarLocked(false, true);
            if (this.mBootSendUserPresent) {
                sendUserPresentBroadcast();
            }
            if (LsRune.SUBSCREEN_UI) {
                this.mHandler.obtainMessage(VolteConstants.ErrorCode.QOS_FAILURE).sendToTarget();
            }
        }
    }

    @Override // com.android.systemui.CoreStartable
    public final void onConfigurationChanged(Configuration configuration) {
        KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
        keyguardViewMediatorHelperImpl.getClass();
        if (LsRune.SUBSCREEN_UI && !LsRune.SUBSCREEN_WATCHFACE) {
            PluginSubScreen pluginSubScreen = keyguardViewMediatorHelperImpl.subScreenManager.mSubScreenPlugin;
            if (pluginSubScreen == null) {
                android.util.Log.w("SubScreenManager", "onConfigurationChanged() no plugin");
            } else {
                pluginSubScreen.onConfigurationChanged(configuration);
            }
        }
    }

    @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
    public void onDozeAmountChanged(float f, float f2) {
        if (this.mAnimatingScreenOff && this.mDozing && f == 1.0f) {
            this.mAnimatingScreenOff = false;
            setShowingLocked(this.mShowing, true);
        }
    }

    public void onDreamingStarted() {
        this.mUpdateMonitor.dispatchDreamingStarted();
        synchronized (this) {
            boolean isEnabled = ((FeatureFlagsRelease) this.mFeatureFlags).isEnabled(Flags.LOCKSCREEN_WITHOUT_SECURE_LOCK_WHEN_DREAMING);
            if (this.mDeviceInteractive && ((isEnabled || this.mLockPatternUtils.isSecure(KeyguardUpdateMonitor.getCurrentUser())) && !((DesktopManagerImpl) this.mHelper.desktopManager).isDualView())) {
                long lockTimeout = getLockTimeout(KeyguardUpdateMonitor.getCurrentUser());
                if (lockTimeout == 0) {
                    doKeyguardLocked(null, false);
                } else {
                    doKeyguardLaterLocked(lockTimeout);
                }
            }
        }
    }

    public void onDreamingStopped() {
        this.mUpdateMonitor.dispatchDreamingStopped();
        synchronized (this) {
            if (this.mDeviceInteractive) {
                this.mDelayedShowingSequence++;
            }
        }
    }

    public void onFinishedGoingToSleep(int i, boolean z) {
        synchronized (this) {
            this.mDeviceInteractive = false;
            this.mGoingToSleep = false;
            this.mWakeAndUnlocking = false;
            this.mAnimatingScreenOff = this.mDozeParameters.shouldAnimateDozingChange();
            resetKeyguardDonePendingLocked();
            this.mHideAnimationRun = false;
            this.mHandler.sendEmptyMessage(5);
            if (z) {
                ((PowerManager) this.mContext.getSystemService(PowerManager.class)).wakeUp(SystemClock.uptimeMillis(), 5, "com.android.systemui:CAMERA_GESTURE_PREVENT_LOCK");
                setPendingLock(false);
                this.mPendingReset = false;
                this.mPowerGestureIntercepted = true;
                Log.d("KeyguardViewMediator", "cameraGestureTriggered=" + z + ",mPowerGestureIntercepted=" + this.mPowerGestureIntercepted);
            }
            if (this.mPendingReset) {
                resetStateLocked(true);
                this.mPendingReset = false;
            }
            maybeHandlePendingLock();
            if (!this.mLockLater && !z) {
                doKeyguardLaterForChildProfilesLocked();
            }
        }
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.mUpdateMonitor;
        synchronized (keyguardUpdateMonitor) {
            keyguardUpdateMonitor.mDeviceInteractive = false;
        }
        KeyguardUpdateMonitor.AnonymousClass15 anonymousClass15 = keyguardUpdateMonitor.mHandler;
        anonymousClass15.sendMessage(anonymousClass15.obtainMessage(320, i, 0));
    }

    public final void onKeyguardExitFinished() {
        Log.d("KeyguardViewMediator", "onKeyguardExitFinished()");
        if (TelephonyManager.EXTRA_STATE_IDLE.equals(this.mPhoneState)) {
            playSound(this.mUnlockSoundId);
        }
        setShowingLocked(false);
        this.mWakeAndUnlocking = false;
        this.mDismissCallbackRegistry.notifyDismissSucceeded();
        resetKeyguardDonePendingLocked();
        this.mHideAnimationRun = false;
        adjustStatusBarLocked(false, false);
        sendUserPresentBroadcast();
        KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
        Objects.requireNonNull(keyguardViewMediatorHelperImpl);
        Rune.runIf((Runnable) new KeyguardViewMediator$$ExternalSyntheticLambda7(keyguardViewMediatorHelperImpl, 1), true);
    }

    public void onScreenTurnedOff() {
        KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
        Objects.requireNonNull(keyguardViewMediatorHelperImpl);
        Rune.runIf((Runnable) new KeyguardViewMediator$$ExternalSyntheticLambda7(keyguardViewMediatorHelperImpl, 3), true);
        this.mUpdateMonitor.mHandler.sendEmptyMessage(CustomDeviceManager.DESTINATION_ADDRESS);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005c A[Catch: all -> 0x0062, TryCatch #0 {all -> 0x0062, blocks: (B:3:0x0001, B:5:0x0022, B:9:0x002e, B:11:0x003c, B:13:0x0044, B:14:0x0058, B:16:0x005c, B:17:0x0064, B:22:0x0047), top: B:2:0x0001 }] */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda9] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onStartedGoingToSleep(int r12) {
        /*
            r11 = this;
            monitor-enter(r11)
            com.android.systemui.keyguard.KeyguardViewMediatorHelperImpl r0 = r11.mHelper     // Catch: java.lang.Throwable -> L62
            java.util.Objects.requireNonNull(r0)     // Catch: java.lang.Throwable -> L62
            com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda6 r1 = new com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda6     // Catch: java.lang.Throwable -> L62
            r2 = 1
            r1.<init>(r0, r2)     // Catch: java.lang.Throwable -> L62
            com.android.systemui.Rune.runIf(r12, r1)     // Catch: java.lang.Throwable -> L62
            r0 = 0
            r11.mDeviceInteractive = r0     // Catch: java.lang.Throwable -> L62
            r11.mPowerGestureIntercepted = r0     // Catch: java.lang.Throwable -> L62
            r11.mGoingToSleep = r2     // Catch: java.lang.Throwable -> L62
            int r8 = com.android.keyguard.KeyguardUpdateMonitor.getCurrentUser()     // Catch: java.lang.Throwable -> L62
            com.android.internal.widget.LockPatternUtils r1 = r11.mLockPatternUtils     // Catch: java.lang.Throwable -> L62
            boolean r1 = r1.getPowerButtonInstantlyLocks(r8)     // Catch: java.lang.Throwable -> L62
            if (r1 != 0) goto L2d
            com.android.internal.widget.LockPatternUtils r1 = r11.mLockPatternUtils     // Catch: java.lang.Throwable -> L62
            boolean r1 = r1.isSecure(r8)     // Catch: java.lang.Throwable -> L62
            if (r1 != 0) goto L2b
            goto L2d
        L2b:
            r7 = r0
            goto L2e
        L2d:
            r7 = r2
        L2e:
            int r1 = com.android.keyguard.KeyguardUpdateMonitor.getCurrentUser()     // Catch: java.lang.Throwable -> L62
            long r5 = r11.getLockTimeout(r1)     // Catch: java.lang.Throwable -> L62
            r11.mLockLater = r0     // Catch: java.lang.Throwable -> L62
            boolean r1 = r11.mShowing     // Catch: java.lang.Throwable -> L62
            if (r1 == 0) goto L47
            com.android.systemui.statusbar.policy.KeyguardStateController r1 = r11.mKeyguardStateController     // Catch: java.lang.Throwable -> L62
            com.android.systemui.statusbar.policy.KeyguardStateControllerImpl r1 = (com.android.systemui.statusbar.policy.KeyguardStateControllerImpl) r1     // Catch: java.lang.Throwable -> L62
            boolean r1 = r1.mKeyguardGoingAway     // Catch: java.lang.Throwable -> L62
            if (r1 != 0) goto L47
            r11.mPendingReset = r2     // Catch: java.lang.Throwable -> L62
            goto L58
        L47:
            com.android.systemui.keyguard.KeyguardViewMediatorHelperImpl r3 = r11.mHelper     // Catch: java.lang.Throwable -> L62
            com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda2 r9 = new com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda2     // Catch: java.lang.Throwable -> L62
            r1 = 2
            r9.<init>(r11, r1)     // Catch: java.lang.Throwable -> L62
            com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda9 r10 = new com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda9     // Catch: java.lang.Throwable -> L62
            r10.<init>()     // Catch: java.lang.Throwable -> L62
            r4 = r12
            r3.updatePendingLock(r4, r5, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L62
        L58:
            boolean r1 = r11.mPendingLock     // Catch: java.lang.Throwable -> L62
            if (r1 == 0) goto L64
            int r1 = r11.mLockSoundId     // Catch: java.lang.Throwable -> L62
            r11.playSound(r1)     // Catch: java.lang.Throwable -> L62
            goto L64
        L62:
            r12 = move-exception
            goto L89
        L64:
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L62
            com.android.keyguard.KeyguardUpdateMonitor r1 = r11.mUpdateMonitor
            com.android.keyguard.KeyguardUpdateMonitor$15 r1 = r1.mHandler
            r2 = 321(0x141, float:4.5E-43)
            android.os.Message r12 = r1.obtainMessage(r2, r12, r0)
            r1.sendMessage(r12)
            com.android.keyguard.KeyguardUpdateMonitor r12 = r11.mUpdateMonitor
            com.android.keyguard.KeyguardUpdateMonitor$15 r12 = r12.mHandler
            r0 = 342(0x156, float:4.79E-43)
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            android.os.Message r0 = r12.obtainMessage(r0, r1)
            r12.sendMessage(r0)
            com.android.systemui.keyguard.KeyguardViewMediator$12 r11 = r11.mHandler
            r12 = 17
            r11.sendEmptyMessage(r12)
            return
        L89:
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L62
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.KeyguardViewMediator.onStartedGoingToSleep(int):void");
    }

    public void onStartedWakingUp(int i, boolean z) {
        Trace.beginSection("KeyguardViewMediator#onStartedWakingUp");
        synchronized (this) {
            try {
                KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
                Objects.requireNonNull(keyguardViewMediatorHelperImpl);
                int i2 = 0;
                Rune.runIf(i, new KeyguardViewMediator$$ExternalSyntheticLambda6(keyguardViewMediatorHelperImpl, i2));
                this.mDeviceInteractive = true;
                if (this.mPendingLock && !z && !this.mWakeAndUnlocking) {
                    doKeyguardLocked(null, false);
                }
                this.mAnimatingScreenOff = false;
                this.mDelayedShowingSequence++;
                this.mDelayedProfileShowingSequence++;
                boolean z2 = LsRune.COVER_SUPPORTED;
                KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl2 = this.mHelper;
                Objects.requireNonNull(keyguardViewMediatorHelperImpl2);
                KeyguardViewMediator$$ExternalSyntheticLambda6 keyguardViewMediator$$ExternalSyntheticLambda6 = new KeyguardViewMediator$$ExternalSyntheticLambda6(keyguardViewMediatorHelperImpl2, 4);
                if (z2) {
                    keyguardViewMediator$$ExternalSyntheticLambda6.accept(Boolean.FALSE);
                }
                if (z) {
                    this.mPowerGestureIntercepted = true;
                }
                Log.d("KeyguardViewMediator", "onStartedWakingUp, seq = " + this.mDelayedShowingSequence + ", mPowerGestureIntercepted = " + this.mPowerGestureIntercepted);
                Log.d("KeyguardViewMediator", "notifyStartedWakingUp");
                this.mHandler.sendEmptyMessage(14);
                KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl3 = this.mHelper;
                Objects.requireNonNull(keyguardViewMediatorHelperImpl3);
                Rune.runIf(new KeyguardViewMediator$$ExternalSyntheticLambda7(keyguardViewMediatorHelperImpl3, i2), z2);
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mUiEventLogger.logWithInstanceIdAndPosition(BiometricUnlockController.BiometricUiEvent.STARTED_WAKING_UP, 0, (String) null, this.mSessionTracker.getSessionId(1), i);
        this.mUpdateMonitor.dispatchStartedWakingUp(i);
        maybeSendUserPresentBroadcast();
        Trace.endSection();
    }

    public void onSystemReady() {
        this.mHandler.obtainMessage(18).sendToTarget();
    }

    @Override // com.android.systemui.CoreStartable
    public final void onTrimMemory(int i) {
        KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
        if (!keyguardViewMediatorHelperImpl.isShowing() && i >= 60) {
            ((KeyguardViewController) keyguardViewMediatorHelperImpl.viewControllerLazy.get()).onTrimMemory(i);
        }
    }

    public void onWakeAndUnlocking(boolean z) {
        Trace.beginSection("KeyguardViewMediator#onWakeAndUnlocking");
        this.mWakeAndUnlocking = true;
        setUnlockAndWakeFromDream(3, z);
        KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
        Objects.requireNonNull(keyguardViewMediatorHelperImpl);
        KeyguardViewMediator$$ExternalSyntheticLambda3 keyguardViewMediator$$ExternalSyntheticLambda3 = new KeyguardViewMediator$$ExternalSyntheticLambda3(keyguardViewMediatorHelperImpl, 1);
        boolean z2 = Rune.SYSUI_MULTI_SIM;
        if (keyguardViewMediator$$ExternalSyntheticLambda3.getAsBoolean()) {
            tryKeyguardDone();
        } else {
            ((KeyguardViewController) this.mKeyguardViewControllerLazy.get()).notifyKeyguardAuthenticated(false);
            userActivity();
        }
        Trace.endSection();
    }

    public final void playSound(final int i) {
        if (i == 0) {
            return;
        }
        final KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
        boolean z = true;
        if (keyguardViewMediatorHelperImpl.settingsHelper.mItemLists.get("lockscreen_sounds_enabled").getIntValue() != 1) {
            z = false;
        }
        if (z) {
            keyguardViewMediatorHelperImpl.uiBgExecutor.execute(new Runnable() { // from class: com.android.systemui.keyguard.KeyguardViewMediatorHelperImpl$playSound$1
                @Override // java.lang.Runnable
                public final void run() {
                    int i2;
                    float semGetSituationVolume;
                    KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl2 = KeyguardViewMediatorHelperImpl.this;
                    SoundPool soundPool = keyguardViewMediatorHelperImpl2.lockSounds;
                    if (soundPool != null) {
                        soundPool.stop(keyguardViewMediatorHelperImpl2.lockSoundStreamId);
                    }
                    KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl3 = KeyguardViewMediatorHelperImpl.this;
                    keyguardViewMediatorHelperImpl3.uiSoundsStreamType = keyguardViewMediatorHelperImpl3.audioManager.getUiSoundsStreamType();
                    KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl4 = KeyguardViewMediatorHelperImpl.this;
                    if (keyguardViewMediatorHelperImpl4.audioManager.isStreamMute(keyguardViewMediatorHelperImpl4.uiSoundsStreamType)) {
                        return;
                    }
                    if (LsRune.KEYGUARD_LOCK_SITUATION_VOLUME) {
                        semGetSituationVolume = 1.0f;
                    } else {
                        KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl5 = KeyguardViewMediatorHelperImpl.this;
                        if (i == keyguardViewMediatorHelperImpl5.unlockSoundId) {
                            i2 = 7;
                        } else {
                            i2 = 4;
                        }
                        semGetSituationVolume = keyguardViewMediatorHelperImpl5.audioManager.semGetSituationVolume(i2, 0);
                    }
                    float f = semGetSituationVolume;
                    KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl6 = KeyguardViewMediatorHelperImpl.this;
                    String str = "playSound " + i;
                    keyguardViewMediatorHelperImpl6.getClass();
                    KeyguardViewMediatorHelperImpl.logD(str);
                    KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl7 = KeyguardViewMediatorHelperImpl.this;
                    SoundPool soundPool2 = keyguardViewMediatorHelperImpl7.lockSounds;
                    if (soundPool2 != null) {
                        keyguardViewMediatorHelperImpl7.lockSoundStreamId = soundPool2.play(i, f, f, 1, 0, 1.0f);
                    }
                }
            });
        }
    }

    public boolean requestedShowSurfaceBehindKeyguard() {
        return this.mSurfaceBehindRemoteAnimationRequested;
    }

    public final void resetKeyguardDonePendingLocked() {
        this.mKeyguardDonePending = false;
        this.mHandler.removeMessages(13);
    }

    public final void resetStateLocked(boolean z) {
        Log.e("KeyguardViewMediator", "resetStateLocked");
        AnonymousClass12 anonymousClass12 = this.mHandler;
        anonymousClass12.sendMessage(anonymousClass12.obtainMessage(3, z ? 1 : 0, 0));
    }

    public final void scheduleNonStrongBiometricIdleTimeout() {
        int currentUser = KeyguardUpdateMonitor.getCurrentUser();
        if (this.mUpdateMonitor.isUnlockWithFacePossible(currentUser)) {
            Log.d("KeyguardViewMediator", "scheduleNonStrongBiometricIdleTimeout: schedule an alarm for currentUser=" + currentUser);
            this.mLockPatternUtils.scheduleNonStrongBiometricIdleTimeout(currentUser);
        }
    }

    public final void sendUserPresentBroadcast() {
        synchronized (this) {
            if (this.mBootCompleted) {
                final int currentUser = KeyguardUpdateMonitor.getCurrentUser();
                final UserHandle userHandle = new UserHandle(currentUser);
                final UserManager userManager = (UserManager) this.mContext.getSystemService("user");
                this.mUiBgExecutor.execute(new Runnable() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                        UserManager userManager2 = userManager;
                        UserHandle userHandle2 = userHandle;
                        int i = currentUser;
                        keyguardViewMediator.getClass();
                        for (int i2 : userManager2.getProfileIdsWithDisabled(userHandle2.getIdentifier())) {
                            keyguardViewMediator.mContext.sendBroadcastAsUser(KeyguardViewMediator.USER_PRESENT_INTENT, UserHandle.of(i2), null, KeyguardViewMediator.USER_PRESENT_INTENT_OPTIONS);
                            KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = keyguardViewMediator.mHelper;
                            Objects.requireNonNull(keyguardViewMediatorHelperImpl);
                            Rune.runIf(i2, new KeyguardViewMediator$$ExternalSyntheticLambda6(keyguardViewMediatorHelperImpl, 3));
                        }
                        keyguardViewMediator.mLockPatternUtils.userPresent(i);
                    }
                });
            } else {
                this.mBootSendUserPresent = true;
            }
        }
    }

    public void setBlursDisabledForAppLaunch(boolean z) {
        ((NotificationShadeDepthController) this.mNotificationShadeDepthController.get()).setBlursDisabledForAppLaunch(z);
    }

    public void setCurrentUser(int i) {
        int i2 = KeyguardUpdateMonitor.BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED;
        synchronized (KeyguardUpdateMonitor.class) {
            KeyguardUpdateMonitor.sCurrentUser = i;
        }
        synchronized (this) {
            notifyTrustedChangedLocked(this.mUpdateMonitor.getUserHasTrust(i));
        }
    }

    public void setDozing(boolean z) {
        if (z == this.mDozing) {
            return;
        }
        this.mDozing = z;
        if (!z) {
            this.mAnimatingScreenOff = false;
        }
        if (this.mShowing || !this.mPendingLock || !this.mDozeParameters.canControlUnlockedScreenOff() || (LsRune.AOD_FULLSCREEN && this.mHelper.aodAmbientWallpaperHelper.isAODFullScreenMode())) {
            setShowingLocked(this.mShowing);
        }
    }

    public void setKeyguardEnabled(boolean z) {
        synchronized (this) {
            Log.d("KeyguardViewMediator", "setKeyguardEnabled(" + z + ")");
            this.mExternallyEnabled = z;
            if (!z && this.mShowing) {
                if (this.mLockPatternUtils.isUserInLockdown(KeyguardUpdateMonitor.getCurrentUser())) {
                    Log.d("KeyguardViewMediator", "keyguardEnabled(false) overridden by user lockdown");
                    return;
                }
                Log.d("KeyguardViewMediator", "remembering to reshow, hiding keyguard, disabling status bar expansion");
                this.mNeedToReshowWhenReenabled = true;
                updateInputRestrictedLocked();
                Trace.beginSection("KeyguardViewMediator#hideLocked");
                Log.d("KeyguardViewMediator", "hideLocked");
                AnonymousClass12 anonymousClass12 = this.mHandler;
                anonymousClass12.sendMessage(anonymousClass12.obtainMessage(2));
                Trace.endSection();
            } else if (z && this.mNeedToReshowWhenReenabled) {
                Log.d("KeyguardViewMediator", "previously hidden, reshowing, reenabling status bar expansion");
                this.mNeedToReshowWhenReenabled = false;
                updateInputRestrictedLocked();
                showLocked(null);
                this.mWaitingUntilKeyguardVisible = true;
                this.mHandler.sendEmptyMessageDelayed(8, 2000L);
                Log.d("KeyguardViewMediator", "waiting until mWaitingUntilKeyguardVisible is false");
                while (this.mWaitingUntilKeyguardVisible) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
                Log.d("KeyguardViewMediator", "done waiting for mWaitingUntilKeyguardVisible");
            }
        }
    }

    public void setOccluded(boolean z, boolean z2) {
        KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
        int andIncrement = keyguardViewMediatorHelperImpl.occludedSeq.getAndIncrement();
        KeyguardViewMediator$$ExternalSyntheticLambda2 keyguardViewMediator$$ExternalSyntheticLambda2 = new KeyguardViewMediator$$ExternalSyntheticLambda2(this, 4);
        keyguardViewMediatorHelperImpl.getHandler().post(new KeyguardViewMediatorHelperImpl$cancelAODJankMonitor$1(keyguardViewMediatorHelperImpl));
        if (!z && keyguardViewMediatorHelperImpl.getHandler().hasMessages(keyguardViewMediatorHelperImpl.getSET_OCCLUDED()) && keyguardViewMediatorHelperImpl.isKeyguardHiding()) {
            keyguardViewMediator$$ExternalSyntheticLambda2.run();
        }
        keyguardViewMediatorHelperImpl.getHandler().removeMessages(keyguardViewMediatorHelperImpl.getSET_OCCLUDED());
        keyguardViewMediatorHelperImpl.getHandler().sendMessage(keyguardViewMediatorHelperImpl.getHandler().obtainMessage(keyguardViewMediatorHelperImpl.getSET_OCCLUDED(), z ? 1 : 0, z2 ? 1 : 0, Integer.valueOf(andIncrement)));
        synchronized (keyguardViewMediatorHelperImpl.getLock()) {
            keyguardViewMediatorHelperImpl.curIsOccluded = z;
            Unit unit = Unit.INSTANCE;
        }
    }

    public void setPendingLock(boolean z) {
        this.mPendingLock = z;
        Trace.traceCounter(4096L, "pendingLock", z ? 1 : 0);
    }

    public void setShowingLocked(boolean z) {
        setShowingLocked(z, false);
    }

    public void setSwitchingUser(boolean z) {
        Log.d("KeyguardViewMediator", "setSwitchingUser " + z);
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.mUpdateMonitor;
        keyguardUpdateMonitor.mSwitchingUser = z;
        keyguardUpdateMonitor.mHandler.post(new KeyguardUpdateMonitor$$ExternalSyntheticLambda3(keyguardUpdateMonitor, 7));
        keyguardUpdateMonitor.dispatchSecureState(4094);
    }

    public final void setUnlockAndWakeFromDream(int i, boolean z) {
        String str;
        String str2;
        if (z == this.mUnlockingAndWakingFromDream) {
            return;
        }
        boolean z2 = true;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        str = "waking to unlock";
                    } else {
                        throw new IllegalStateException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Unexpected value: ", i));
                    }
                } else {
                    str = "fulfilling existing request";
                }
            } else {
                str = "showing keyguard";
            }
        } else {
            str = "hiding keyguard";
        }
        if (z || i == 2) {
            z2 = false;
        }
        this.mUnlockingAndWakingFromDream = z;
        if (z2) {
            str2 = "Interrupting request to wake and unlock";
        } else if (z) {
            str2 = "Initiating request to wake and unlock";
        } else {
            str2 = "Fulfilling request to wake and unlock";
        }
        Log.d("KeyguardViewMediator", String.format("Updating waking and unlocking request to %b. description:[%s]. reason:[%s]", Boolean.valueOf(z), str2, str));
    }

    public void setWallpaperSupportsAmbientMode(boolean z) {
        this.mWallpaperSupportsAmbientMode = z;
    }

    public final void setupLocked() {
        boolean z;
        PowerManager.WakeLock newWakeLock = this.mPM.newWakeLock(1, "show keyguard");
        this.mShowKeyguardWakeLock = newWakeLock;
        boolean z2 = false;
        newWakeLock.setReferenceCounted(false);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.ACTION_SHUTDOWN");
        this.mBroadcastDispatcher.registerReceiver(intentFilter, this.mBroadcastReceiver);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD");
        intentFilter2.addAction("com.android.internal.policy.impl.PhoneWindowManager.DELAYED_LOCK");
        intentFilter2.setPriority(1000);
        this.mContext.registerReceiver(this.mDelayedLockBroadcastReceiver, intentFilter2, "com.android.systemui.permission.SELF", null, 2);
        this.mAlarmManager = (AlarmManager) this.mContext.getSystemService("alarm");
        int userId = ((UserTrackerImpl) this.mUserTracker).getUserId();
        int i = KeyguardUpdateMonitor.BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED;
        synchronized (KeyguardUpdateMonitor.class) {
            KeyguardUpdateMonitor.sCurrentUser = userId;
        }
        KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
        keyguardViewMediatorHelperImpl.getClass();
        boolean z3 = LsRune.KEYGUARD_SUB_DISPLAY_LOCK;
        if (z3 || LsRune.KEYGUARD_SUB_DISPLAY_COVER) {
            keyguardViewMediatorHelperImpl.foldControllerImpl.handler = keyguardViewMediatorHelperImpl.getHandler();
        }
        if (z3) {
            KeyguardVisibilityMonitor keyguardVisibilityMonitor = keyguardViewMediatorHelperImpl.keyguardVisibilityMonitor;
            KeyguardViewMediatorHelperImpl$setupLocked$1 keyguardViewMediatorHelperImpl$setupLocked$1 = new KeyguardViewMediatorHelperImpl$setupLocked$1(keyguardViewMediatorHelperImpl);
            ArrayList arrayList = (ArrayList) keyguardVisibilityMonitor.panelStateChangedListeners;
            if (!arrayList.contains(keyguardViewMediatorHelperImpl$setupLocked$1)) {
                arrayList.add(keyguardViewMediatorHelperImpl$setupLocked$1);
            }
        }
        if (DeviceType.isSupportPenDetachmentOption(keyguardViewMediatorHelperImpl.context)) {
            BroadcastDispatcher.registerReceiver$default(keyguardViewMediatorHelperImpl.broadcastDispatcher, keyguardViewMediatorHelperImpl.broadcastReceiver, new IntentFilter("com.samsung.pen.INSERT"), null, null, 0, null, 60);
        }
        BroadcastDispatcher broadcastDispatcher = keyguardViewMediatorHelperImpl.broadcastDispatcher;
        KeyguardViewMediatorHelperImpl$broadcastReceiver$1 keyguardViewMediatorHelperImpl$broadcastReceiver$1 = keyguardViewMediatorHelperImpl.broadcastReceiver;
        IntentFilter intentFilter3 = new IntentFilter();
        intentFilter3.addAction("com.samsung.internal.policy.impl.Keyguard.PCW_LOCKED");
        intentFilter3.addAction("com.samsung.internal.policy.impl.Keyguard.PCW_UNLOCKED");
        Unit unit = Unit.INSTANCE;
        BroadcastDispatcher.registerReceiver$default(broadcastDispatcher, keyguardViewMediatorHelperImpl$broadcastReceiver$1, intentFilter3, null, null, 0, "com.samsung.android.permission.LOCK_SECURITY_MONITOR", 28);
        BroadcastDispatcher broadcastDispatcher2 = keyguardViewMediatorHelperImpl.broadcastDispatcher;
        KeyguardViewMediatorHelperImpl$broadcastReceiver$1 keyguardViewMediatorHelperImpl$broadcastReceiver$12 = keyguardViewMediatorHelperImpl.broadcastReceiver;
        IntentFilter intentFilter4 = new IntentFilter();
        intentFilter4.addAction("com.sec.android.FindingLostPhonePlus.CANCEL");
        intentFilter4.addAction("com.sec.android.FindingLostPhonePlus.SUBSCRIBE");
        BroadcastDispatcher.registerReceiver$default(broadcastDispatcher2, keyguardViewMediatorHelperImpl$broadcastReceiver$12, intentFilter4, null, null, 0, null, 60);
        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(keyguardViewMediatorHelperImpl.context);
        KeyguardViewMediatorHelperImpl$localReceiver$1 keyguardViewMediatorHelperImpl$localReceiver$1 = keyguardViewMediatorHelperImpl.localReceiver;
        IntentFilter intentFilter5 = new IntentFilter("com.samsung.keyguard.CLEAR_LOCK");
        synchronized (localBroadcastManager.mReceivers) {
            LocalBroadcastManager.ReceiverRecord receiverRecord = new LocalBroadcastManager.ReceiverRecord(intentFilter5, keyguardViewMediatorHelperImpl$localReceiver$1);
            ArrayList arrayList2 = (ArrayList) localBroadcastManager.mReceivers.get(keyguardViewMediatorHelperImpl$localReceiver$1);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList(1);
                localBroadcastManager.mReceivers.put(keyguardViewMediatorHelperImpl$localReceiver$1, arrayList2);
            }
            arrayList2.add(receiverRecord);
            for (int i2 = 0; i2 < intentFilter5.countActions(); i2++) {
                String action = intentFilter5.getAction(i2);
                ArrayList arrayList3 = (ArrayList) localBroadcastManager.mActions.get(action);
                if (arrayList3 == null) {
                    arrayList3 = new ArrayList(1);
                    localBroadcastManager.mActions.put(action, arrayList3);
                }
                arrayList3.add(receiverRecord);
            }
        }
        keyguardViewMediatorHelperImpl.updateMonitor.setupLocked();
        SemDvfsManager createInstance = SemDvfsManager.createInstance(keyguardViewMediatorHelperImpl.context, "KEYGUARD_UNLOCK");
        if (createInstance != null && createInstance.checkHintSupported(3100)) {
            createInstance.setHint(3100);
            keyguardViewMediatorHelperImpl.dvfsManager = createInstance;
        }
        final KeyguardFastBioUnlockController keyguardFastBioUnlockController = keyguardViewMediatorHelperImpl.fastUnlockController;
        keyguardFastBioUnlockController.getClass();
        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY) {
            keyguardFastBioUnlockController.wakefulnessLifecycle.addObserver(new WakefulnessLifecycle.Observer() { // from class: com.android.systemui.keyguard.KeyguardFastBioUnlockController$init$1
                @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
                public final void onPostFinishedWakingUp() {
                    KeyguardFastBioUnlockController.Companion companion = KeyguardFastBioUnlockController.Companion;
                    final KeyguardFastBioUnlockController keyguardFastBioUnlockController2 = KeyguardFastBioUnlockController.this;
                    if (keyguardFastBioUnlockController2.isBrightnessChangedCallbackRegistered) {
                        KeyguardFastBioUnlockController.logD("unregisterBrightnessListener");
                        ((DisplayTrackerImpl) keyguardFastBioUnlockController2.displayTracker).removeCallback(keyguardFastBioUnlockController2.brightnessChangedCallback);
                        keyguardFastBioUnlockController2.isBrightnessChangedCallbackRegistered = false;
                    }
                    if (keyguardFastBioUnlockController2.isFastWakeAndUnlockMode() && keyguardFastBioUnlockController2.needsBlankScreen && keyguardFastBioUnlockController2.curIsAodBrighterThanNormal) {
                        keyguardFastBioUnlockController2.mainHandler.postDelayed(new Runnable() { // from class: com.android.systemui.keyguard.KeyguardFastBioUnlockController$init$1$onPostFinishedWakingUp$1
                            @Override // java.lang.Runnable
                            public final void run() {
                                KeyguardFastBioUnlockController keyguardFastBioUnlockController3 = KeyguardFastBioUnlockController.this;
                                KeyguardFastBioUnlockController.Companion companion2 = KeyguardFastBioUnlockController.Companion;
                                keyguardFastBioUnlockController3.getClass();
                                KeyguardFastBioUnlockController.logD("cancel blank scrim");
                                ((ScrimController) KeyguardFastBioUnlockController.this.scrimControllerLazy.get()).onScreenTurnedOn();
                            }
                        }, 64L);
                    }
                }

                @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
                public final void onStartedGoingToSleep() {
                    KeyguardFastBioUnlockController keyguardFastBioUnlockController2 = KeyguardFastBioUnlockController.this;
                    if (((KeyguardUpdateMonitor) keyguardFastBioUnlockController2.updateMonitorLazy.get()).isFingerprintOptionEnabled() && ((KeyguardUpdateMonitor) keyguardFastBioUnlockController2.updateMonitorLazy.get()).isEnabledWof() && !keyguardFastBioUnlockController2.isBrightnessChangedCallbackRegistered) {
                        KeyguardFastBioUnlockController.logD("registerBrightnessListener");
                        DisplayTrackerImpl displayTrackerImpl = (DisplayTrackerImpl) keyguardFastBioUnlockController2.displayTracker;
                        displayTrackerImpl.addBrightnessChangeCallback(keyguardFastBioUnlockController2.brightnessChangedCallback, keyguardFastBioUnlockController2.executor);
                        displayTrackerImpl.addDisplayChangeCallback(keyguardFastBioUnlockController2.brightnessChangedCallback, keyguardFastBioUnlockController2.executor);
                        keyguardFastBioUnlockController2.isBrightnessChangedCallbackRegistered = true;
                    }
                }
            });
        }
        BackupRestoreReceiver backupRestoreReceiver = new BackupRestoreReceiver();
        Context context = keyguardViewMediatorHelperImpl.context;
        android.util.Log.d("WallpaperBackupRestoreReceiver", "registerBackupRestoreReceiver");
        IntentFilter intentFilter6 = new IntentFilter();
        intentFilter6.addAction("com.sec.android.intent.action.REQUEST_BACKUP_LOCKSCREEN");
        intentFilter6.addAction("com.sec.android.intent.action.REQUEST_RESTORE_LOCKSCREEN");
        intentFilter6.addAction("com.sec.android.intent.action.REQUEST_BACKUP_WALLPAPER");
        intentFilter6.addAction("com.sec.android.intent.action.REQUEST_RESTORE_WALLPAPER");
        context.registerReceiver(backupRestoreReceiver.mBroadcastReceiver, intentFilter6, "android.permission.SET_WALLPAPER", null, 2);
        if (LsRune.KEYGUARD_HOMEHUB) {
            BroadcastDispatcher.registerReceiver$default(keyguardViewMediatorHelperImpl.broadcastDispatcher, keyguardViewMediatorHelperImpl.broadcastReceiver, new IntentFilter("android.intent.action.DOCK_EVENT"), null, null, 0, null, 60);
        }
        ((KeyguardUnlockAnimationController) keyguardViewMediatorHelperImpl.unlockAnimationControllerLazy.get()).setCallback(new KeyguardViewMediatorHelperImpl$setupLocked$5(keyguardViewMediatorHelperImpl));
        Context context2 = this.mContext;
        try {
            z = context2.getPackageManager().getServiceInfo(new ComponentName(context2, (Class<?>) KeyguardService.class), 0).isEnabled();
        } catch (PackageManager.NameNotFoundException unused) {
            z = true;
        }
        if (z) {
            if (!shouldWaitForProvisioning() && !this.mHelper.isKeyguardDisabled(true) && !this.mLockPatternUtils.isLockScreenDisabled(KeyguardUpdateMonitor.getCurrentUser())) {
                z2 = true;
            }
            setShowingLocked(z2, true);
        } else {
            setShowingLocked(false, true);
        }
        if (this.mWallpaperManager == null) {
            this.mWallpaperManager = (WallpaperManager) this.mContext.getSystemService(WallpaperManager.class);
        }
        boolean isLockscreenLiveWallpaperEnabled = this.mWallpaperManager.isLockscreenLiveWallpaperEnabled();
        KeyguardTransitions keyguardTransitions = this.mKeyguardTransitions;
        IRemoteAnimationRunner exitAnimationRunner = getExitAnimationRunner();
        int i3 = KeyguardService.$r8$clinit;
        keyguardTransitions.register(new KeyguardService.AnonymousClass1(this, exitAnimationRunner, isLockscreenLiveWallpaperEnabled), new KeyguardService.AnonymousClass1(this, getOccludeAnimationRunner(), isLockscreenLiveWallpaperEnabled), new KeyguardService.AnonymousClass1(this, getOccludeByDreamAnimationRunner(), isLockscreenLiveWallpaperEnabled), new KeyguardService.AnonymousClass1(this, getUnoccludeAnimationRunner(), isLockscreenLiveWallpaperEnabled));
        ContentResolver contentResolver = this.mContext.getContentResolver();
        this.mDeviceInteractive = this.mPM.isInteractive();
        this.mLockSounds = new SoundPool.Builder().setMaxStreams(1).setAudioAttributes(new AudioAttributes.Builder().setUsage(13).setContentType(4).build()).build();
        String string = Settings.Global.getString(contentResolver, "lock_sound");
        if (string != null) {
            this.mLockSoundId = this.mLockSounds.load(string, 1);
        }
        if (string == null || this.mLockSoundId == 0) {
            Log.w("KeyguardViewMediator", "failed to load lock sound from " + string);
        }
        String string2 = Settings.Global.getString(contentResolver, "unlock_sound");
        if (string2 != null) {
            this.mUnlockSoundId = this.mLockSounds.load(string2, 1);
        }
        if (string2 == null || this.mUnlockSoundId == 0) {
            Log.w("KeyguardViewMediator", "failed to load unlock sound from " + string2);
        }
        String string3 = Settings.Global.getString(contentResolver, "trusted_sound");
        if (string3 != null) {
            this.mTrustedSoundId = this.mLockSounds.load(string3, 1);
        }
        if (string3 == null || this.mTrustedSoundId == 0) {
            Log.w("KeyguardViewMediator", "failed to load trusted sound from " + string3);
        }
        Rune.runIf((Runnable) new KeyguardViewMediator$$ExternalSyntheticLambda2(this, 16), true);
        this.mHideAnimation = AnimationUtils.loadAnimation(this.mContext, android.R.anim.recents_fade_out);
        new WorkLockActivityController(this.mContext, this.mUserTracker);
    }

    public final boolean shouldWaitForProvisioning() {
        if (!this.mUpdateMonitor.mDeviceProvisioned && !isSecure()) {
            return true;
        }
        return false;
    }

    public final void showLocked(Bundle bundle) {
        Trace.beginSection("KeyguardViewMediator#showLocked acquiring mShowKeyguardWakeLock");
        Log.d("KeyguardViewMediator", "showLocked");
        this.mShowKeyguardWakeLock.acquire();
        AnonymousClass12 anonymousClass12 = this.mHandler;
        anonymousClass12.sendMessageAtFrontOfQueue(anonymousClass12.obtainMessage(1, bundle));
        KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
        Objects.requireNonNull(keyguardViewMediatorHelperImpl);
        KeyguardViewMediator$$ExternalSyntheticLambda11 keyguardViewMediator$$ExternalSyntheticLambda11 = new KeyguardViewMediator$$ExternalSyntheticLambda11(keyguardViewMediatorHelperImpl, 0);
        boolean z = Rune.SYSUI_MULTI_SIM;
        keyguardViewMediator$$ExternalSyntheticLambda11.accept(6, 4000L);
        Trace.endSection();
    }

    public void showSurfaceBehindKeyguard() {
        Log.d("KeyguardViewMediator", "showSurfaceBehindKeyguard");
        this.mSurfaceBehindRemoteAnimationRequested = true;
        try {
            KeyguardUnlockAnimationController.Companion.getClass();
            if (this.mHelper.keyguardGoingAway(6)) {
                ((KeyguardStateControllerImpl) this.mKeyguardStateController).notifyKeyguardGoingAway(true);
                return;
            }
            throw new RemoteException();
        } catch (RemoteException e) {
            this.mSurfaceBehindRemoteAnimationRequested = false;
            e.printStackTrace();
        }
    }

    @Override // com.android.systemui.CoreStartable
    public void start() {
        synchronized (this) {
            setupLocked();
        }
    }

    public void startKeyguardExitAnimation(long j, long j2) {
        startKeyguardExitAnimation(0, j, j2, null, null, null, null);
    }

    public final void tryKeyguardDone() {
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        String valueOf;
        KeyguardUnlockInfo.UnlockTrigger unlockTrigger;
        int ordinal;
        KeyguardUnlockInfo.SkipBouncerReason skipBouncerReason;
        SemDvfsManager semDvfsManager;
        Log.d("KeyguardViewMediator", "tryKeyguardDone: pending - " + this.mKeyguardDonePending + ", animRan - " + this.mHideAnimationRun + " animRunning - " + this.mHideAnimationRunning);
        if (!this.mKeyguardDonePending && this.mHideAnimationRun && !this.mHideAnimationRunning) {
            z = true;
        } else {
            z = false;
        }
        KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
        keyguardViewMediatorHelperImpl.getClass();
        if (Rune.SYSUI_BINDER_CALL_MONITOR) {
            ((BinderCallMonitorImpl) keyguardViewMediatorHelperImpl.binderCallMonitor).startMonitoring$1(2);
        }
        if (z) {
            KeyguardFastBioUnlockController keyguardFastBioUnlockController = keyguardViewMediatorHelperImpl.fastUnlockController;
            if (keyguardFastBioUnlockController.bioUnlockBoosterEnabled && keyguardFastBioUnlockController.dvfsManager != null && keyguardFastBioUnlockController.isEnabled()) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (!z3 && (semDvfsManager = keyguardViewMediatorHelperImpl.dvfsManager) != null) {
                semDvfsManager.acquire(1000);
            }
            if (KeyguardUnlockInfo.authType != KeyguardUnlockInfo.AuthType.AUTH_UNKNOWN) {
                i = (KeyguardUnlockInfo.authType.ordinal() * 10000) + 300000;
                int i2 = KeyguardUnlockInfo.WhenMappings.$EnumSwitchMapping$0[KeyguardUnlockInfo.authType.ordinal()];
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 == 3 && (skipBouncerReason = KeyguardUnlockInfo.skipBouncerReason) != null) {
                            ordinal = skipBouncerReason.ordinal();
                            i += ordinal * 100;
                        }
                    } else {
                        BiometricSourceType biometricSourceType = KeyguardUnlockInfo.biometricSourceType;
                        if (biometricSourceType != null) {
                            ordinal = biometricSourceType.ordinal();
                            i += ordinal * 100;
                        }
                    }
                } else {
                    KeyguardSecurityModel.SecurityMode securityMode = KeyguardUnlockInfo.securityMode;
                    if (securityMode != null) {
                        ordinal = securityMode.ordinal();
                        i += ordinal * 100;
                    }
                }
            } else {
                i = 3;
            }
            if (i > 3 && (unlockTrigger = KeyguardUnlockInfo.unlockTrigger) != null) {
                i += unlockTrigger.ordinal();
            }
            int i3 = i;
            KeyguardUnlockInfo.INSTANCE.getClass();
            int i4 = KeyguardUnlockInfo.WhenMappings.$EnumSwitchMapping$0[KeyguardUnlockInfo.authType.ordinal()];
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        valueOf = KeyguardUnlockInfo.authType.toString();
                    } else {
                        valueOf = String.valueOf(KeyguardUnlockInfo.skipBouncerReason);
                    }
                } else {
                    valueOf = String.valueOf(KeyguardUnlockInfo.biometricSourceType);
                }
            } else {
                valueOf = String.valueOf(KeyguardUnlockInfo.securityMode);
            }
            KeyguardUnlockInfo.leaveHistory(i3 + ": " + valueOf + " " + KeyguardUnlockInfo.unlockTrigger, true);
            KeyguardUnlockInfo.reset();
            EventLog.writeEvent(70000, i3);
            KeyguardDumpLog.state$default(KeyguardDumpLog.INSTANCE, 3, false, false, false, i3, 0, 46);
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            handleKeyguardDone();
            return;
        }
        if (!this.mKeyguardDonePending && this.mHideAnimationRun && !this.mHideAnimationRunning) {
            handleKeyguardDone();
            return;
        }
        if (this.mSurfaceBehindRemoteAnimationRunning) {
            exitKeyguardAndFinishSurfaceBehindRemoteAnimation(false);
        } else if (!this.mHideAnimationRun) {
            Log.d("KeyguardViewMediator", "tryKeyguardDone: starting pre-hide animation");
            this.mHideAnimationRun = true;
            this.mHideAnimationRunning = true;
            ((KeyguardViewController) this.mKeyguardViewControllerLazy.get()).startPreHideAnimation(this.mHideAnimationFinishedRunnable);
        }
    }

    public final void updateInputRestrictedLocked() {
        boolean isInputRestricted = isInputRestricted();
        if (this.mInputRestricted != isInputRestricted) {
            this.mInputRestricted = isInputRestricted;
            ArrayList arrayList = this.mKeyguardStateCallbacks;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size >= 0) {
                    IKeyguardStateCallback iKeyguardStateCallback = (IKeyguardStateCallback) arrayList.get(size);
                    try {
                        iKeyguardStateCallback.onInputRestrictedStateChanged(isInputRestricted);
                    } catch (RemoteException e) {
                        Slog.w("Failed to call onDeviceProvisioned", e);
                        if (e instanceof DeadObjectException) {
                            arrayList.remove(iKeyguardStateCallback);
                        }
                    }
                } else {
                    return;
                }
            }
        }
    }

    public void userActivity() {
        this.mPM.userActivity(SystemClock.uptimeMillis(), false);
    }

    public void verifyUnlock(IKeyguardExitCallback iKeyguardExitCallback) {
        Trace.beginSection("KeyguardViewMediator#verifyUnlock");
        synchronized (this) {
            Log.d("KeyguardViewMediator", "verifyUnlock");
            if (shouldWaitForProvisioning()) {
                Log.d("KeyguardViewMediator", "ignoring because device isn't provisioned");
                try {
                    iKeyguardExitCallback.onKeyguardExitResult(false);
                } catch (RemoteException e) {
                    Slog.w("Failed to call onKeyguardExitResult(false)", e);
                }
            } else if (this.mExternallyEnabled) {
                Log.w("KeyguardViewMediator", "verifyUnlock called when not externally disabled");
                try {
                    iKeyguardExitCallback.onKeyguardExitResult(false);
                } catch (RemoteException e2) {
                    Slog.w("Failed to call onKeyguardExitResult(false)", e2);
                }
            } else if (!isSecure()) {
                this.mExternallyEnabled = true;
                this.mNeedToReshowWhenReenabled = false;
                synchronized (this) {
                    updateInputRestrictedLocked();
                    try {
                        iKeyguardExitCallback.onKeyguardExitResult(true);
                    } catch (RemoteException e3) {
                        Slog.w("Failed to call onKeyguardExitResult(true)", e3);
                    }
                }
            } else {
                try {
                    iKeyguardExitCallback.onKeyguardExitResult(false);
                } catch (RemoteException e4) {
                    Slog.w("Failed to call onKeyguardExitResult(false)", e4);
                }
            }
        }
        Trace.endSection();
    }

    public final void setShowingLocked(final boolean z, boolean z2) {
        Bundle bundle;
        int i = 0;
        boolean z3 = this.mDozing && !this.mWakeAndUnlocking;
        boolean z4 = this.mShowing;
        boolean z5 = z != z4 || z2;
        boolean z6 = (z == z4 && z3 == this.mAodShowing && !z2) ? false : true;
        boolean z7 = z4 != z;
        this.mShowing = z;
        this.mAodShowing = z3;
        if (z5) {
            DejankUtils.whitelistIpcs(new Runnable() { // from class: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    KeyguardViewMediator keyguardViewMediator = KeyguardViewMediator.this;
                    boolean z8 = z;
                    ArrayList arrayList = keyguardViewMediator.mKeyguardStateCallbacks;
                    int size = arrayList.size();
                    while (true) {
                        size--;
                        if (size >= 0) {
                            IKeyguardStateCallback iKeyguardStateCallback = (IKeyguardStateCallback) arrayList.get(size);
                            try {
                                iKeyguardStateCallback.onShowingStateChanged(z8, KeyguardUpdateMonitor.getCurrentUser());
                            } catch (RemoteException e) {
                                Slog.w("Failed to call onShowingStateChanged", e);
                                if (e instanceof DeadObjectException) {
                                    arrayList.remove(iKeyguardStateCallback);
                                }
                            }
                        } else {
                            return;
                        }
                    }
                }
            });
            updateInputRestrictedLocked();
            if (z7) {
                this.mUiBgExecutor.execute(new KeyguardViewMediator$$ExternalSyntheticLambda2(this, i));
            }
        }
        KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
        if (z6) {
            KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1 keyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1 = keyguardViewMediatorHelperImpl.setLockScreenShownRunnable;
            Handler handler = keyguardViewMediatorHelperImpl.getHandler();
            if (handler.hasCallbacks(keyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1)) {
                handler.removeCallbacks(keyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1);
            }
            keyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1.showing = z;
            keyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1.aodShowing = z3;
            if (z && (bundle = keyguardViewMediatorHelperImpl.showingOptions) != null) {
                if (bundle.getBoolean("LockShownDelay", false)) {
                    Log.i("KeyguardViewMediator", "updateActivityLockScreenState " + z + " " + z3 + " after 300ms");
                    keyguardViewMediatorHelperImpl.getHandler().postDelayed(keyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1, 300L);
                }
            }
            keyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1.run();
        }
        keyguardViewMediatorHelperImpl.setShowingOptions(null);
    }

    public void startKeyguardExitAnimation(int i, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback) {
        startKeyguardExitAnimation(i, 0L, 0L, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, iRemoteAnimationFinishedCallback);
    }

    public final void startKeyguardExitAnimation(int i, long j, long j2, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback) {
        boolean z;
        RemoteAnimationTarget remoteAnimationTarget;
        Trace.beginSection("KeyguardViewMediator#startKeyguardExitAnimation");
        Message obtainMessage = this.mHandler.obtainMessage(VolteConstants.ErrorCode.CLIENT_ERROR_NOT_ALLOWED_URI, new StartKeyguardExitAnimParams(i, j, j2, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, iRemoteAnimationFinishedCallback, 0));
        KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mHelper;
        keyguardViewMediatorHelperImpl.getHandler().post(new KeyguardViewMediatorHelperImpl$cancelAODJankMonitor$1(keyguardViewMediatorHelperImpl));
        StartKeyguardExitAnimParams startKeyguardExitAnimParams = (StartKeyguardExitAnimParams) obtainMessage.obj;
        int i2 = 1;
        if (Debug.semIsProductDev() || LogUtil.isDebugLevelMid || LogUtil.isDebugLevelHigh) {
            String[] strArr = {"app", "nonApp", "wallpaper"};
            RemoteAnimationTarget[][] remoteAnimationTargetArr4 = {startKeyguardExitAnimParams.mApps, startKeyguardExitAnimParams.mNonApps, startKeyguardExitAnimParams.mWallpapers};
            int i3 = 0;
            while (i3 < 3) {
                RemoteAnimationTarget[] remoteAnimationTargetArr5 = remoteAnimationTargetArr4[i3];
                if (remoteAnimationTargetArr5 != null) {
                    if ((remoteAnimationTargetArr5.length == 0 ? i2 : 0) == 0) {
                        int length = remoteAnimationTargetArr5.length;
                        int i4 = -1;
                        int i5 = 0;
                        while (i5 < length) {
                            RemoteAnimationTarget remoteAnimationTarget2 = remoteAnimationTargetArr5[i5];
                            i4 += i2;
                            if (remoteAnimationTarget2 != null) {
                                ActivityManager.RunningTaskInfo runningTaskInfo = remoteAnimationTarget2.taskInfo;
                                ComponentName componentName = runningTaskInfo != null ? runningTaskInfo.topActivity : null;
                                String str = strArr[i3];
                                String m = componentName != null ? AbstractResolvableFuture$$ExternalSyntheticOutline0.m(componentName.getPackageName(), "/", componentName.getClassName()) : "none";
                                boolean z2 = remoteAnimationTarget2.leash != null;
                                StringBuilder m2 = CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0.m("exitAnimParam ", str, "[", i4, "]=");
                                m2.append(m);
                                m2.append(", hasLeash=");
                                m2.append(z2);
                                KeyguardViewMediatorHelperImpl.logD(m2.toString());
                            }
                            i5++;
                            i2 = 1;
                        }
                    }
                }
                i3++;
                i2 = 1;
            }
        }
        if ((keyguardViewMediatorHelperImpl.lastGoingAwayFlags & 2) == 2) {
            KeyguardFixedRotationMonitor keyguardFixedRotationMonitor = keyguardViewMediatorHelperImpl.fixedRotationMonitor;
            final boolean z3 = keyguardFixedRotationMonitor.isMonitorStarted && keyguardFixedRotationMonitor.isFixedRotated;
            final IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback2 = startKeyguardExitAnimParams.mFinishedCallback;
            RemoteAnimationTarget[] remoteAnimationTargetArr6 = startKeyguardExitAnimParams.mApps;
            final SurfaceControl surfaceControl = (remoteAnimationTargetArr6 == null || (remoteAnimationTarget = (RemoteAnimationTarget) ArraysKt___ArraysKt.getOrNull(remoteAnimationTargetArr6)) == null) ? null : remoteAnimationTarget.leash;
            if (surfaceControl == null || iRemoteAnimationFinishedCallback2 == null) {
                z = false;
            } else {
                final SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                keyguardViewMediatorHelperImpl.unlockAnimationExecutor.execute(new Runnable() { // from class: com.android.systemui.keyguard.KeyguardViewMediatorHelperImpl$updateLeashVisible$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Log.d("KeyguardViewMediator", "updateLeashVisible");
                        SurfaceControl.Transaction transaction2 = transaction;
                        SurfaceControl surfaceControl2 = surfaceControl;
                        transaction2.setAlpha(surfaceControl2, 1.0f);
                        transaction2.setVisibility(surfaceControl2, true);
                        transaction2.apply();
                        if (!z3) {
                            Choreographer choreographer = Choreographer.getInstance();
                            final SurfaceControl.Transaction transaction3 = transaction;
                            final IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback3 = iRemoteAnimationFinishedCallback2;
                            choreographer.postCallback(1, new Runnable() { // from class: com.android.systemui.keyguard.KeyguardViewMediatorHelperImpl$updateLeashVisible$1.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    transaction3.close();
                                    try {
                                        iRemoteAnimationFinishedCallback3.onAnimationFinished();
                                    } catch (RemoteException e) {
                                        e.printStackTrace();
                                    }
                                }
                            }, null);
                        }
                    }
                });
                z = true;
            }
            if (z) {
                if (!(keyguardFixedRotationMonitor.isMonitorStarted && keyguardFixedRotationMonitor.isFixedRotated) && startKeyguardExitAnimParams.mFinishedCallback != null) {
                    startKeyguardExitAnimParams.mFinishedCallback = null;
                    startKeyguardExitAnimParams.mApps = new RemoteAnimationTarget[0];
                }
            }
        }
        Handler handler = keyguardViewMediatorHelperImpl.getHandler();
        KeyguardFastBioUnlockController keyguardFastBioUnlockController = keyguardViewMediatorHelperImpl.fastUnlockController;
        if (keyguardFastBioUnlockController.isFastUnlockMode()) {
            keyguardFastBioUnlockController.startKeyguardExitAnimationTime = System.nanoTime();
            handler.sendMessageAtFrontOfQueue(obtainMessage);
        } else if (keyguardFastBioUnlockController.isFastWakeAndUnlockMode()) {
            keyguardFastBioUnlockController.startKeyguardExitAnimationTime = System.nanoTime();
            handler.sendMessage(obtainMessage);
        } else if (LsRune.KEYGUARD_SUB_DISPLAY_LOCK && keyguardViewMediatorHelperImpl.foldControllerImpl.isUnlockOnFoldOpened()) {
            handler.sendMessageAtFrontOfQueue(obtainMessage);
        } else {
            handler.sendMessage(obtainMessage);
        }
        Trace.endSection();
    }

    public boolean isSecure(int i) {
        return this.mUpdateMonitor.isSecure(i);
    }

    public void dismissKeyguardToLaunch() {
    }

    public void onShortPowerPressedGoHome() {
    }

    public void onSystemKeyPressed() {
    }
}
