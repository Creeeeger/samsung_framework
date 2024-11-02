package com.android.keyguard;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.admin.DevicePolicyManager;
import android.app.trust.TrustManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.UserInfo;
import android.content.res.Resources;
import android.hardware.SensorPrivacyManager;
import android.hardware.biometrics.BiometricManager;
import android.hardware.biometrics.BiometricSourceType;
import android.hardware.devicestate.DeviceStateManager;
import android.hardware.face.FaceManager;
import android.hardware.fingerprint.FingerprintAuthenticateOptions;
import android.hardware.fingerprint.FingerprintManager;
import android.hardware.fingerprint.IFingerprintService;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Debug;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IRemoteCallback;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.sec.enterprise.auditlog.AuditLog;
import android.service.dreams.IDreamManager;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.telephony.CarrierConfigManager;
import android.telephony.ServiceState;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.ContextThemeWrapper;
import android.view.IWindowManager;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.Toast;
import androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.core.ArrayLinkedVariables$$ExternalSyntheticOutline0;
import androidx.core.app.NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;
import androidx.core.graphics.drawable.IconCompat$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.internal.app.IBatteryStats;
import com.android.internal.jank.InteractionJankMonitor;
import com.android.internal.logging.UiEventLogger;
import com.android.internal.util.LatencyTracker;
import com.android.internal.widget.ILockSettings;
import com.android.internal.widget.LockPatternUtils;
import com.android.internal.widget.RemoteLockInfo;
import com.android.keyguard.ActiveUnlockConfig;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.keyguard.KeyguardTextBuilder;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.SecurityUtils;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.Rune;
import com.android.systemui.UiOffloadThread;
import com.android.systemui.biometrics.AuthController;
import com.android.systemui.bixby2.actionresult.ActionResults;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.doze.PluginAODManager;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.dump.DumpsysTableLogger;
import com.android.systemui.facewidget.plugin.PluginFaceWidgetManager;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.keyguard.KeyguardDumpLog;
import com.android.systemui.keyguard.KeyguardEditModeController;
import com.android.systemui.keyguard.KeyguardEditModeControllerImpl;
import com.android.systemui.keyguard.KeyguardFastBioUnlockController;
import com.android.systemui.keyguard.KeyguardUnlockInfo;
import com.android.systemui.keyguard.SecurityLog;
import com.android.systemui.knox.EdmMonitor;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.log.LogLevel;
import com.android.systemui.noticenter.NotiCenterPlugin;
import com.android.systemui.plugins.aod.PluginAOD;
import com.android.systemui.plugins.keyguardstatusview.PluginKeyguardStatusView;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.KeyguardBatteryStatus;
import com.android.systemui.statusbar.phone.BiometricUnlockController;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import com.android.systemui.statusbar.policy.DevicePostureController;
import com.android.systemui.telephony.TelephonyListenerManager;
import com.android.systemui.uithreadmonitor.BinderCallMonitor;
import com.android.systemui.uithreadmonitor.LooperSlowLogController;
import com.android.systemui.util.Assert;
import com.android.systemui.util.DesktopManager;
import com.android.systemui.util.DesktopManagerImpl;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.LogUtil;
import com.android.systemui.util.SafeUIState;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SettingsHelper$$ExternalSyntheticLambda0;
import com.android.systemui.util.SystemUIAnalytics;
import com.android.systemui.util.settings.SecureSettings;
import com.samsung.android.aod.AODManager;
import com.samsung.android.aod.AODToast;
import com.samsung.android.bio.face.SemBioFaceManager;
import com.samsung.android.cocktailbar.SemCocktailBarManager;
import com.samsung.android.cocktailbar.SemCocktailBarStateInfo;
import com.samsung.android.cover.CoverState;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.knox.EnterpriseContainerCallback;
import com.samsung.android.knox.container.EnterpriseContainerConstants;
import com.samsung.android.knox.net.vpn.KnoxVpnPolicyConstants;
import com.samsung.android.security.mdf.MdfUtils;
import com.sec.ims.IMSParameter;
import com.sec.ims.configuration.DATA;
import com.sec.ims.volte2.data.VolteConstants;
import dagger.Lazy;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import javax.inject.Provider;
import kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.sequences.TransformingSequence;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardSecUpdateMonitorImpl extends KeyguardUpdateMonitor {
    public static SemBioFaceManager sFaceManager;
    public int mActiveRemoteLockIndex;
    public final AlarmManager mAlarmManager;
    public Handler mAuthHandler;
    public final Executor mBackgroundExecutor;
    public final IBatteryStats mBatteryInfo;
    public final SparseIntArray mBiometricFailedAttempts;
    public int mBiometricId;
    public final AnonymousClass6 mBiometricLockoutResetRunnable;
    public final AnonymousClass5 mBroadcastReceiver;
    public boolean mCarrierLock;
    public int mCocktailBarWindowType;
    public final Context mContext;
    public CoverState mCoverState;
    public int mCredentialType;
    public KeyguardSecurityModel.SecurityMode mCurrentSecurityMode;
    public final Lazy mDesktopManagerLazy;
    public String mDeviceOwnerInfoText;
    public final DevicePolicyManager mDevicePolicyManager;
    public final AnonymousClass4 mDeviceStateCallback;
    public boolean mDisableCamera;
    public boolean mDisabledBiometricBySecurityDialog;
    public final AnonymousClass3 mDisplayListener;
    public final boolean[] mESimRemoved;
    public boolean mFMMLock;
    public final FaceManager mFaceManager;
    public final ConcurrentLinkedQueue mFaceMessages;
    public final KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11 mFaceMsgConsumer;
    public final KeyguardFastBioUnlockController mFastUnlockController;
    public final SparseIntArray mFingerPrintBadQualityCounts;
    public final SparseIntArray mFingerPrintFailedAttempts;
    public int mFingerprintAuthenticationSequence;
    public int mFocusWindow;
    public boolean mForceStartFinger;
    public int mFpInDisplayState;
    public IBinder mFpMaskToken;
    public final ConcurrentLinkedQueue mFpMessages;
    public final KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11 mFpMsgConsumer;
    public final FingerprintManager mFpm;
    public boolean mHasFocus;
    public boolean mHasLockscreenWallpaper;
    public boolean mHasLoggedOnceAuditlog;
    public boolean mHasRedactedNotifications;
    public boolean mIsDismissActionExist;
    public boolean mIsDispatching;
    public boolean mIsDreamingForBiometrics;
    public boolean mIsDualDarInnerAuthRequired;
    public boolean mIsDualDarInnerAuthShowing;
    public boolean mIsDynamicLockViewMode;
    public boolean mIsEarlyWakeUp;
    public boolean mIsFODStrictMode;
    public boolean mIsFPCanceledByForegroundApp;
    public boolean mIsFPCanceledByProximity;
    public boolean mIsFaceReady;
    public boolean mIsFaceWidgetFullScreenMode;
    public boolean mIsFpLeave;
    public boolean mIsKidsModeRunning;
    public boolean mIsNotiStarShown;
    public boolean mIsOutOfService;
    public boolean mIsOwnerInfoEnabled;
    public boolean mIsPanelExpandingStarted;
    public boolean mIsQsFullyExpanded;
    public boolean mIsRearSelfie;
    public boolean mIsRunningBlackMemo;
    public boolean mIsScreenSaverRunning;
    public boolean mIsShortcutLaunchInProgress;
    public boolean mIsShowingKeepScreenOnPopup;
    public boolean mIsSkipFPResponse;
    public boolean mIsStartFacePossible;
    public KeyguardBatteryStatus mKeyguardBatteryStatus;
    public KeyguardConstants$KeyguardDismissActionType mKeyguardDismissActionType;
    public final Lazy mKeyguardEditModeControllerLazy;
    public boolean mKeyguardUnlocking;
    public final LockPatternUtils mLockPatternUtils;
    public ILockSettings mLockSettingsService;
    public long mLockoutAttemptDeadline;
    public long mLockoutAttemptTimeout;
    public long mLockoutBiometricAttemptDeadline;
    public long mLockoutBiometricAttemptTimeout;
    public boolean mLockscreenDisabled;
    public final LooperSlowLogController mLooperSlowLogController;
    public int mMaximumFailedPasswordsForWipe;
    public boolean mNeedSubBioAuth;
    public boolean mNeedSubWofFpAuth;
    public final NotificationManager mNotificationManager;
    public final KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda16 mOneHandModeSettingsCallback;
    public String mOwnerInfoText;
    public boolean mPermanentLock;
    public final Lazy mPluginAODManagerLazy;
    public final Lazy mPluginFaceWidgetManagerLazy;
    public final PowerManager mPowerManager;
    public final ArrayList mRemoteLockInfo;
    public RemoteLockInfo mRemoteLockSimulationInfo;
    public boolean mSIPShown;
    public final AnonymousClass2 mSecureLockChangedCallback;
    public CancellationSignal mSemFaceCancelSignal;
    public final HashMap mServiceStatesBySlotId;
    public final KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda16 mSettingsCallbackForUPSM;
    public final SettingsHelper mSettingsHelper;
    public final Uri[] mSettingsValueListForPSM;
    public boolean mSimDisabledPermanently;
    public final boolean[] mSimPinPassed;
    public boolean mSystemReady;
    public final AnonymousClass1 mTimeoutSkipFPResponse;
    public boolean mTimeoutWithoutFace;
    public final TrustManager mTrustManager;
    public boolean mUdfpsFingerDown;
    public final Lazy mViewMediatorCallbackLazy;
    public final KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8 mWaitingFocusRunnable;
    public final IWindowManager mWindowManagerService;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.KeyguardSecUpdateMonitorImpl$9, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass9 {
        public static final /* synthetic */ int[] $SwitchMap$android$hardware$biometrics$BiometricSourceType;

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
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda16] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.keyguard.KeyguardSecUpdateMonitorImpl$4] */
    /* JADX WARN: Type inference failed for: r1v6, types: [com.android.keyguard.KeyguardSecUpdateMonitorImpl$5, android.content.BroadcastReceiver] */
    /* JADX WARN: Type inference failed for: r6v12, types: [com.android.keyguard.KeyguardSecUpdateMonitorImpl$3] */
    /* JADX WARN: Type inference failed for: r6v15, types: [com.android.keyguard.KeyguardSecUpdateMonitorImpl$6] */
    /* JADX WARN: Type inference failed for: r6v5, types: [com.android.keyguard.KeyguardSecUpdateMonitorImpl$1] */
    /* JADX WARN: Type inference failed for: r6v7, types: [com.android.keyguard.KeyguardSecUpdateMonitorImpl$2] */
    /* JADX WARN: Type inference failed for: r6v8, types: [com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda16] */
    public KeyguardSecUpdateMonitorImpl(IBatteryStats iBatteryStats, NotificationManager notificationManager, KeyguardFastBioUnlockController keyguardFastBioUnlockController, BinderCallMonitor binderCallMonitor, LooperSlowLogController looperSlowLogController, SettingsHelper settingsHelper, AlarmManager alarmManager, PowerManager powerManager, Lazy lazy, Lazy lazy2, Lazy lazy3, Lazy lazy4, IWindowManager iWindowManager, Lazy lazy5, Context context, UserTracker userTracker, Looper looper, BroadcastDispatcher broadcastDispatcher, SecureSettings secureSettings, DumpManager dumpManager, Executor executor, Executor executor2, StatusBarStateController statusBarStateController, LockPatternUtils lockPatternUtils, AuthController authController, TelephonyListenerManager telephonyListenerManager, InteractionJankMonitor interactionJankMonitor, LatencyTracker latencyTracker, ActiveUnlockConfig activeUnlockConfig, KeyguardUpdateMonitorLogger keyguardUpdateMonitorLogger, UiEventLogger uiEventLogger, Provider provider, TrustManager trustManager, SubscriptionManager subscriptionManager, UserManager userManager, IDreamManager iDreamManager, DevicePolicyManager devicePolicyManager, SensorPrivacyManager sensorPrivacyManager, TelephonyManager telephonyManager, PackageManager packageManager, FaceManager faceManager, FingerprintManager fingerprintManager, BiometricManager biometricManager, FaceWakeUpTriggersConfig faceWakeUpTriggersConfig, CarrierConfigManager carrierConfigManager, DevicePostureController devicePostureController, Optional<Object> optional) {
        super(context, userTracker, looper, broadcastDispatcher, secureSettings, dumpManager, executor, executor2, statusBarStateController, lockPatternUtils, authController, telephonyListenerManager, interactionJankMonitor, latencyTracker, activeUnlockConfig, keyguardUpdateMonitorLogger, uiEventLogger, provider, trustManager, subscriptionManager, userManager, iDreamManager, devicePolicyManager, sensorPrivacyManager, telephonyManager, packageManager, faceManager, fingerprintManager, biometricManager, faceWakeUpTriggersConfig, carrierConfigManager, devicePostureController, optional);
        this.mCoverState = null;
        this.mCurrentSecurityMode = KeyguardSecurityModel.SecurityMode.Invalid;
        this.mSimPinPassed = new boolean[2];
        final int i = 0;
        this.mIsEarlyWakeUp = false;
        this.mIsDismissActionExist = false;
        this.mKeyguardDismissActionType = KeyguardConstants$KeyguardDismissActionType.KEYGUARD_DISMISS_ACTION_DEFAULT;
        this.mIsRunningBlackMemo = false;
        this.mRemoteLockInfo = new ArrayList();
        this.mActiveRemoteLockIndex = -1;
        final int i2 = 1;
        this.mHasFocus = true;
        this.mFocusWindow = 3;
        this.mAuthHandler = null;
        this.mBiometricFailedAttempts = new SparseIntArray();
        this.mUdfpsFingerDown = false;
        this.mFingerPrintFailedAttempts = new SparseIntArray();
        this.mFingerPrintBadQualityCounts = new SparseIntArray();
        this.mDisabledBiometricBySecurityDialog = false;
        this.mFingerprintAuthenticationSequence = 0;
        this.mTimeoutSkipFPResponse = new Runnable() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl.1
            @Override // java.lang.Runnable
            public final void run() {
                KeyguardSecUpdateMonitorImpl.this.mIsSkipFPResponse = false;
                Log.i("KeyguardFingerprint", "Timeout skip FP response");
            }
        };
        this.mTimeoutWithoutFace = false;
        this.mLockoutAttemptDeadline = 0L;
        this.mLockoutAttemptTimeout = 0L;
        this.mLockoutBiometricAttemptDeadline = 0L;
        this.mLockoutBiometricAttemptTimeout = 0L;
        this.mIsOwnerInfoEnabled = false;
        this.mOwnerInfoText = null;
        this.mDeviceOwnerInfoText = null;
        this.mSecureLockChangedCallback = new IRemoteCallback.Stub() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl.2
            public final void sendResult(Bundle bundle) {
                int i3 = bundle.getInt("secureState");
                ListPopupWindow$$ExternalSyntheticOutline0.m("mSecureLockChangedCallback sendResult : secureState ", i3, "KeyguardUpdateMonitor");
                KeyguardSecUpdateMonitorImpl.this.dispatchSecureState(i3);
            }
        };
        this.mSettingsCallbackForUPSM = new SettingsHelper.OnChangedCallback(this) { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda16
            public final /* synthetic */ KeyguardSecUpdateMonitorImpl f$0;

            {
                this.f$0 = this;
            }

            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                int i3 = i;
                KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl = this.f$0;
                switch (i3) {
                    case 0:
                        if (keyguardSecUpdateMonitorImpl.updateBiometricsOptionState(((UserTrackerImpl) keyguardSecUpdateMonitorImpl.mUserTracker).getUserId())) {
                            keyguardSecUpdateMonitorImpl.dispatchLockModeChanged();
                        }
                        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY) {
                            keyguardSecUpdateMonitorImpl.updateFingerprintListeningState(2);
                            return;
                        }
                        return;
                    default:
                        keyguardSecUpdateMonitorImpl.updateFingerprintListeningState(2);
                        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL) {
                            if (keyguardSecUpdateMonitorImpl.mSettingsHelper.isOneHandModeRunning()) {
                                keyguardSecUpdateMonitorImpl.removeMaskViewForOpticalFpSensor();
                                return;
                            } else {
                                if (keyguardSecUpdateMonitorImpl.isFingerprintDetectionRunning() && keyguardSecUpdateMonitorImpl.mFpMaskToken == null) {
                                    keyguardSecUpdateMonitorImpl.addMaskViewForOpticalFpSensor();
                                    return;
                                }
                                return;
                            }
                        }
                        return;
                }
            }
        };
        this.mSettingsValueListForPSM = new Uri[]{Settings.System.getUriFor("ultra_powersaving_mode"), Settings.System.getUriFor("emergency_mode")};
        this.mDisplayListener = new DisplayLifecycle.Observer() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl.3
            @Override // com.android.systemui.keyguard.DisplayLifecycle.Observer
            public final void onFolderStateChanged(boolean z) {
                KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl = KeyguardSecUpdateMonitorImpl.this;
                if (keyguardSecUpdateMonitorImpl.isFaceDetectionRunning()) {
                    keyguardSecUpdateMonitorImpl.stopListeningForFace(FaceAuthUiEvent.FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER);
                }
                if (LsRune.SECURITY_SUB_DISPLAY_LOCK) {
                    if (!z) {
                        return;
                    }
                    keyguardSecUpdateMonitorImpl.updateFaceListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_FOLDER_STATE_CHANGED);
                } else if (LsRune.SECURITY_SUB_DISPLAY_COVER) {
                    if (LsRune.SUPPORT_LARGE_FRONT_SUB_DISPLAY && !z) {
                        return;
                    }
                    keyguardSecUpdateMonitorImpl.updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_FOLDER_STATE_CHANGED);
                }
            }
        };
        this.mESimRemoved = new boolean[2];
        this.mFpInDisplayState = 0;
        this.mFpMaskToken = null;
        this.mIsShortcutLaunchInProgress = false;
        this.mIsPanelExpandingStarted = false;
        this.mCocktailBarWindowType = 0;
        this.mOneHandModeSettingsCallback = new SettingsHelper.OnChangedCallback(this) { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda16
            public final /* synthetic */ KeyguardSecUpdateMonitorImpl f$0;

            {
                this.f$0 = this;
            }

            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                int i3 = i2;
                KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl = this.f$0;
                switch (i3) {
                    case 0:
                        if (keyguardSecUpdateMonitorImpl.updateBiometricsOptionState(((UserTrackerImpl) keyguardSecUpdateMonitorImpl.mUserTracker).getUserId())) {
                            keyguardSecUpdateMonitorImpl.dispatchLockModeChanged();
                        }
                        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY) {
                            keyguardSecUpdateMonitorImpl.updateFingerprintListeningState(2);
                            return;
                        }
                        return;
                    default:
                        keyguardSecUpdateMonitorImpl.updateFingerprintListeningState(2);
                        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL) {
                            if (keyguardSecUpdateMonitorImpl.mSettingsHelper.isOneHandModeRunning()) {
                                keyguardSecUpdateMonitorImpl.removeMaskViewForOpticalFpSensor();
                                return;
                            } else {
                                if (keyguardSecUpdateMonitorImpl.isFingerprintDetectionRunning() && keyguardSecUpdateMonitorImpl.mFpMaskToken == null) {
                                    keyguardSecUpdateMonitorImpl.addMaskViewForOpticalFpSensor();
                                    return;
                                }
                                return;
                            }
                        }
                        return;
                }
            }
        };
        this.mWaitingFocusRunnable = new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8(this, 6);
        this.mIsShowingKeepScreenOnPopup = false;
        this.mIsRearSelfie = false;
        this.mDeviceStateCallback = new DeviceStateManager.DeviceStateCallback() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl.4
            public final void onStateChanged(int i3) {
                boolean z;
                KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl = KeyguardSecUpdateMonitorImpl.this;
                if (i3 == 5) {
                    z = true;
                } else {
                    z = false;
                }
                keyguardSecUpdateMonitorImpl.mIsRearSelfie = z;
                ActionBarContextView$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("DeviceStateCallback onStateChanged : ", i3, " rearSelfie : "), KeyguardSecUpdateMonitorImpl.this.mIsRearSelfie, "KeyguardUpdateMonitor");
            }
        };
        this.mForceStartFinger = false;
        this.mNeedSubBioAuth = false;
        this.mNeedSubWofFpAuth = false;
        this.mServiceStatesBySlotId = new HashMap();
        this.mIsOutOfService = true;
        this.mIsDispatching = false;
        ?? r1 = new BroadcastReceiver() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl.5
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                int i3;
                String action = intent.getAction();
                Log.d("KeyguardUpdateMonitor", "received broadcast " + action);
                char c = 65535;
                if (!"android.intent.action.PACKAGE_ADDED".equals(action) && !"android.intent.action.PACKAGE_REMOVED".equals(action) && !"android.intent.action.PACKAGE_CHANGED".equals(action) && !"android.intent.action.PACKAGE_DATA_CLEARED".equals(action)) {
                    if ("com.samsung.intent.action.EMERGENCY_STATE_CHANGED".equals(action)) {
                        int intExtra = intent.getIntExtra("reason", 0);
                        KeyguardUpdateMonitor.AnonymousClass15 anonymousClass15 = KeyguardSecUpdateMonitorImpl.this.mHandler;
                        anonymousClass15.sendMessage(anonymousClass15.obtainMessage(1306, Integer.valueOf(intExtra)));
                        return;
                    }
                    if ("com.sec.android.intent.action.BLACK_MEMO".equals(action)) {
                        String stringExtra = intent.getStringExtra("state");
                        boolean equals = TextUtils.equals(stringExtra, "show");
                        KeyguardSecUpdateMonitorImpl.this.mHandler.removeMessages(1001);
                        StringBuilder sb = new StringBuilder("screen off memo state changed, state = ");
                        sb.append(stringExtra);
                        sb.append(", running ");
                        KeyguardCarrierViewController$$ExternalSyntheticOutline0.m(sb, KeyguardSecUpdateMonitorImpl.this.mIsRunningBlackMemo, " -> ", equals, "KeyguardUpdateMonitor");
                        KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl = KeyguardSecUpdateMonitorImpl.this;
                        if (keyguardSecUpdateMonitorImpl.mGoingToSleep && keyguardSecUpdateMonitorImpl.mIsRunningBlackMemo && !equals) {
                            KeyguardUpdateMonitor.AnonymousClass15 anonymousClass152 = keyguardSecUpdateMonitorImpl.mHandler;
                            anonymousClass152.sendMessageDelayed(anonymousClass152.obtainMessage(1001), 600L);
                            return;
                        } else {
                            keyguardSecUpdateMonitorImpl.setIsRunningBlackMemo(equals);
                            return;
                        }
                    }
                    if ("com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET".equals(action)) {
                        KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl2 = KeyguardSecUpdateMonitorImpl.this;
                        if (keyguardSecUpdateMonitorImpl2.mHandler.hasCallbacks(keyguardSecUpdateMonitorImpl2.mBiometricLockoutResetRunnable)) {
                            KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl3 = KeyguardSecUpdateMonitorImpl.this;
                            keyguardSecUpdateMonitorImpl3.mHandler.removeCallbacks(keyguardSecUpdateMonitorImpl3.mBiometricLockoutResetRunnable);
                        }
                        KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl4 = KeyguardSecUpdateMonitorImpl.this;
                        keyguardSecUpdateMonitorImpl4.mHandler.post(keyguardSecUpdateMonitorImpl4.mBiometricLockoutResetRunnable);
                        return;
                    }
                    if ("com.samsung.intent.action.SET_SCREEN_RATIO_VALUE".equals(action)) {
                        KeyguardUpdateMonitor.AnonymousClass15 anonymousClass153 = KeyguardSecUpdateMonitorImpl.this.mHandler;
                        anonymousClass153.sendMessage(anonymousClass153.obtainMessage(VolteConstants.ErrorCode.CALL_TRANSFER_FAILED));
                        return;
                    }
                    if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(action)) {
                        String stringExtra2 = intent.getStringExtra("reason");
                        intent.getIntExtra("displayId", -1);
                        if ("globalactions".equals(stringExtra2)) {
                            KeyguardSecUpdateMonitorImpl.this.mHandler.sendEmptyMessage(VolteConstants.ErrorCode.CALL_REJECT_REASON_USR_BUSY_CS_CALL);
                            return;
                        }
                        return;
                    }
                    if ("android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY".equals(action)) {
                        com.android.systemui.keyguard.Log.d("KeyguardFingerprint", "onReceive : " + action);
                        KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl5 = KeyguardSecUpdateMonitorImpl.this;
                        keyguardSecUpdateMonitorImpl5.mIsFPCanceledByProximity = false;
                        keyguardSecUpdateMonitorImpl5.updateFingerprintListeningState(2);
                        return;
                    }
                    if ("android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY".equals(action)) {
                        com.android.systemui.keyguard.Log.d("KeyguardFingerprint", "onReceive : " + action);
                        KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl6 = KeyguardSecUpdateMonitorImpl.this;
                        keyguardSecUpdateMonitorImpl6.mIsFPCanceledByProximity = true;
                        keyguardSecUpdateMonitorImpl6.updateFingerprintListeningState(2);
                        return;
                    }
                    if (LsRune.SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE && "android.intent.action.SERVICE_STATE".equals(action)) {
                        ServiceState newFromBundle = ServiceState.newFromBundle(intent.getExtras());
                        int intExtra2 = intent.getIntExtra("android.telephony.extra.SUBSCRIPTION_INDEX", -1);
                        int intExtra3 = intent.getIntExtra("android.telephony.extra.SLOT_INDEX", -1);
                        Objects.toString(newFromBundle);
                        KeyguardUpdateMonitor.AnonymousClass15 anonymousClass154 = KeyguardSecUpdateMonitorImpl.this.mHandler;
                        anonymousClass154.sendMessage(anonymousClass154.obtainMessage(VolteConstants.ErrorCode.CALL_END_REASON_TELEPHONY_NOT_RESPONDING, intExtra2, intExtra3, newFromBundle));
                        return;
                    }
                    if ("com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE".equals(action)) {
                        KeyguardSecUpdateMonitorImpl.this.mIsKidsModeRunning = intent.getBooleanExtra("kids_home_mode", false);
                        ActionBarContextView$$ExternalSyntheticOutline0.m(ActivityResultRegistry$$ExternalSyntheticOutline0.m("onReceive : ", action, ", isKidsMode : "), KeyguardSecUpdateMonitorImpl.this.mIsKidsModeRunning, "KeyguardUpdateMonitor");
                        return;
                    }
                    return;
                }
                if (intent.getData() == null) {
                    return;
                }
                action.getClass();
                switch (action.hashCode()) {
                    case 172491798:
                        if (action.equals("android.intent.action.PACKAGE_CHANGED")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 267468725:
                        if (action.equals("android.intent.action.PACKAGE_DATA_CLEARED")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 525384130:
                        if (action.equals("android.intent.action.PACKAGE_REMOVED")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 1544582882:
                        if (action.equals("android.intent.action.PACKAGE_ADDED")) {
                            c = 3;
                            break;
                        }
                        break;
                }
                if (c != 0) {
                    if (c != 1) {
                        if (c != 2) {
                            if (c != 3) {
                                return;
                            } else {
                                i3 = VolteConstants.ErrorCode.PPP_STATUS_CLOSE_EVENT;
                            }
                        } else {
                            i3 = 1303;
                        }
                    } else {
                        i3 = 1305;
                    }
                } else {
                    i3 = VolteConstants.ErrorCode.PPP_OPEN_FAILURE;
                }
                Message obtainMessage = KeyguardSecUpdateMonitorImpl.this.mHandler.obtainMessage(i3, intent.getData().getSchemeSpecificPart());
                if (i3 == 1303) {
                    if (intent.getExtras() != null) {
                        obtainMessage.arg1 = intent.getExtras().getBoolean("android.intent.extra.REPLACING") ? 1 : 0;
                    } else {
                        obtainMessage.arg1 = 0;
                    }
                }
                KeyguardSecUpdateMonitorImpl.this.mHandler.sendMessage(obtainMessage);
            }
        };
        this.mBroadcastReceiver = r1;
        this.mBiometricLockoutResetRunnable = new Runnable() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl.6
            public final int userId;

            {
                this.userId = ((UserTrackerImpl) KeyguardSecUpdateMonitorImpl.this.mUserTracker).getUserId();
            }

            @Override // java.lang.Runnable
            public final void run() {
                Log.d("KeyguardUpdateMonitor", "mBiometricLockoutResetRunnable()");
                KeyguardSecUpdateMonitorImpl.this.mLockPatternUtils.clearBiometricAttemptDeadline(this.userId);
                KeyguardSecUpdateMonitorImpl.this.dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7(14));
                KeyguardSecUpdateMonitorImpl.this.updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_TRIGGERED_FACE_LOCKOUT_RESET);
            }
        };
        this.mFpMessages = new ConcurrentLinkedQueue();
        this.mFaceMessages = new ConcurrentLinkedQueue();
        this.mFpMsgConsumer = new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11(this, 1);
        this.mFaceMsgConsumer = new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11(this, 2);
        this.mHasLoggedOnceAuditlog = false;
        this.mFastUnlockController = keyguardFastBioUnlockController;
        this.mContext = context;
        this.mDevicePolicyManager = devicePolicyManager;
        this.mLockPatternUtils = lockPatternUtils;
        this.mFpm = fingerprintManager;
        this.mFaceManager = faceManager;
        this.mBackgroundExecutor = executor;
        this.mDesktopManagerLazy = lazy2;
        this.mLooperSlowLogController = looperSlowLogController;
        this.mSettingsHelper = settingsHelper;
        this.mAlarmManager = alarmManager;
        this.mPowerManager = powerManager;
        this.mBatteryInfo = iBatteryStats;
        this.mNotificationManager = notificationManager;
        this.mPluginFaceWidgetManagerLazy = lazy4;
        this.mTrustManager = (TrustManager) context.getSystemService(TrustManager.class);
        this.mKeyguardBatteryStatus = new KeyguardBatteryStatus(1, 100, 0, 0, 0, 0, false, false);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_DATA_CLEARED");
        intentFilter.addAction("com.samsung.intent.action.EMERGENCY_STATE_CHANGED");
        intentFilter.addDataScheme("package");
        broadcastDispatcher.registerReceiver(intentFilter, r1);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("com.sec.android.intent.action.BLACK_MEMO");
        broadcastDispatcher.registerReceiver(intentFilter2, r1);
        IntentFilter intentFilter3 = new IntentFilter();
        intentFilter3.addAction("com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET");
        broadcastDispatcher.registerReceiver(intentFilter3, r1);
        SemCocktailBarManager semCocktailBarManager = SemCocktailBarManager.getInstance(context);
        if (semCocktailBarManager != null) {
            semCocktailBarManager.registerStateListener(new SemCocktailBarManager.CocktailBarStateChangedListener() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda17
                public final void onCocktailBarStateChanged(SemCocktailBarStateInfo semCocktailBarStateInfo) {
                    KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl = KeyguardSecUpdateMonitorImpl.this;
                    keyguardSecUpdateMonitorImpl.getClass();
                    int i3 = semCocktailBarStateInfo.windowType;
                    keyguardSecUpdateMonitorImpl.mCocktailBarWindowType = i3;
                    if (i3 == 2 || i3 == 1) {
                        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY && keyguardSecUpdateMonitorImpl.isFingerprintOptionEnabled()) {
                            keyguardSecUpdateMonitorImpl.updateFingerprintListeningState(2);
                        }
                        keyguardSecUpdateMonitorImpl.updateFaceListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_COCKTAIL_BAR_SHOWING_CHANGED);
                    }
                }
            });
        }
        if (LsRune.SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE) {
            IntentFilter intentFilter4 = new IntentFilter();
            intentFilter4.addAction("android.intent.action.SERVICE_STATE");
            broadcastDispatcher.registerReceiver(intentFilter4, r1);
        }
        broadcastDispatcher.registerReceiver(r1, AppCompatDelegateImpl$$ExternalSyntheticOutline0.m("com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE"), null, null, 2, "com.samsung.kidshome.broadcast.DEFAULT_HOME_CHANGE_PERMISSION");
        IntentFilter intentFilter5 = new IntentFilter();
        intentFilter5.addAction("com.samsung.intent.action.SET_SCREEN_RATIO_VALUE");
        broadcastDispatcher.registerReceiver(intentFilter5, r1);
        int currentUser = ActivityManager.getCurrentUser();
        Log.d("KeyguardUpdateMonitor", "ActivityManager.getCurrentUser() = " + currentUser);
        updateCredentialType(currentUser);
        updateFMMLock(currentUser, false);
        updateCarrierLock(currentUser);
        updatePermanentLock(currentUser);
        updateSecureLockTimeout(currentUser);
        updateBiometricLockTimeout(currentUser);
        updateLockscreenDisabled(currentUser);
        updateBiometricsOptionState(currentUser);
        updateOwnerInfo(currentUser);
        updateDeviceOwnerInfo();
        this.mHandler.obtainMessage(VolteConstants.ErrorCode.CALL_SESSION_ABORT).sendToTarget();
        updateDualDARInnerLockscreenRequirement(ActivityManager.getCurrentUser());
        this.mViewMediatorCallbackLazy = lazy;
        if (this.mLockSettingsService == null) {
            this.mLockSettingsService = ILockSettings.Stub.asInterface(ServiceManager.getService("lock_settings"));
        }
        try {
            this.mLockSettingsService.setShellCommandCallback(new IRemoteCallback.Stub() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl.8
                /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                public final void sendResult(Bundle bundle) {
                    char c;
                    if (bundle == null) {
                        return;
                    }
                    String string = bundle.getString("command", "");
                    string.getClass();
                    switch (string.hashCode()) {
                        case -840442044:
                            if (string.equals("unlock")) {
                                c = 0;
                                break;
                            }
                            c = 65535;
                            break;
                        case -48642004:
                            if (string.equals("reconnect-pf")) {
                                c = 1;
                                break;
                            }
                            c = 65535;
                            break;
                        case 3135262:
                            if (string.equals(ActionResults.RESULT_FAIL)) {
                                c = 2;
                                break;
                            }
                            c = 65535;
                            break;
                        case 3327275:
                            if (string.equals("lock")) {
                                c = 3;
                                break;
                            }
                            c = 65535;
                            break;
                        default:
                            c = 65535;
                            break;
                    }
                    if (c != 0) {
                        if (c != 1) {
                            if (c != 2) {
                                if (c == 3) {
                                    String string2 = bundle.getString("type", "");
                                    MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("shellCommandCallback: lock by ", string2, "KeyguardUpdateMonitor");
                                    KeyguardSecUpdateMonitorImpl.this.mHandler.obtainMessage(VolteConstants.ErrorCode.CALL_BARRED_DUE_TO_SSAC, string2).sendToTarget();
                                    return;
                                }
                                return;
                            }
                            String string3 = bundle.getString("type", "");
                            MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("shellCommandCallback: fail to unlock by ", string3, "KeyguardUpdateMonitor");
                            KeyguardSecUpdateMonitorImpl.this.mHandler.obtainMessage(VolteConstants.ErrorCode.CALL_TRANSFER_SUCCESS, string3).sendToTarget();
                            return;
                        }
                        if (Build.IS_USERDEBUG || Build.IS_ENG) {
                            Log.d("KeyguardUpdateMonitor", "shellCommandCallback: reconnect plugin face_widget ");
                            KeyguardSecUpdateMonitorImpl.this.mHandler.obtainMessage(1307).sendToTarget();
                            return;
                        }
                        return;
                    }
                    String string4 = bundle.getString("type", "");
                    MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("shellCommandCallback: unlock by ", string4, "KeyguardUpdateMonitor");
                    KeyguardSecUpdateMonitorImpl.this.mHandler.obtainMessage(VolteConstants.ErrorCode.CALL_ENDED_BY_NW_HANDOVER_BEFORE_100_TRYING, string4).sendToTarget();
                }
            });
        } catch (RemoteException e) {
            Log.d("KeyguardUpdateMonitor", "setShellCommandCallback RemoteException! " + e);
        }
        this.mPluginAODManagerLazy = lazy3;
        IntentFilter intentFilter6 = new IntentFilter();
        intentFilter6.addAction("android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY");
        intentFilter6.addAction("android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY");
        broadcastDispatcher.registerReceiver(intentFilter6, this.mBroadcastReceiver);
        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY) {
            this.mWindowManagerService = iWindowManager;
        }
        this.mKeyguardEditModeControllerLazy = lazy5;
    }

    public static void addAdditionalLog(String str) {
        SecurityLog.d("KeyguardUpdateMonitor", str);
    }

    private static boolean containsFlag(int i, int i2) {
        if ((i & i2) != 0) {
            return true;
        }
        return false;
    }

    public static void sendSALog(String str, String str2, String str3) {
        ((UiOffloadThread) Dependency.get(UiOffloadThread.class)).execute(new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14(str, str2, 1, str3));
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void addFailedFMMUnlockAttempt(int i) {
        LockPatternUtils lockPatternUtils = this.mLockPatternUtils;
        if (lockPatternUtils != null) {
            lockPatternUtils.addFailedFMMUnlockAttempt(i);
        }
    }

    public final void addMaskViewForOpticalFpSensor() {
        if (this.mFpm != null && this.mFpMaskToken == null) {
            Log.d("KeyguardFingerprint", "semAddMaskView()");
            this.mFpMaskToken = this.mFpm.semAddMaskView();
            setFocusForBiometrics(3, true);
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean checkValidPrevCredentialType() {
        int credentialTypeForUser = this.mLockPatternUtils.getCredentialTypeForUser(-9998);
        if (credentialTypeForUser == 1 || credentialTypeForUser == 2 || credentialTypeForUser == 3 || credentialTypeForUser == 4) {
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void clearESimRemoved() {
        boolean[] zArr = this.mESimRemoved;
        zArr[1] = false;
        zArr[0] = false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void clearFailedUnlockAttempts(final boolean z) {
        if (isForgotPasswordView()) {
            return;
        }
        final int userId = ((UserTrackerImpl) this.mUserTracker).getUserId();
        if (isSecure(userId)) {
            this.mBiometricFailedAttempts.delete(userId);
            this.mFingerPrintFailedAttempts.delete(userId);
            this.mFingerPrintBadQualityCounts.delete(userId);
            setFodStrictMode(false);
        }
        ((UiOffloadThread) Dependency.get(UiOffloadThread.class)).execute(new Runnable() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl = KeyguardSecUpdateMonitorImpl.this;
                boolean z2 = z;
                int i = userId;
                if (z2) {
                    keyguardSecUpdateMonitorImpl.mLockPatternUtils.clearLockoutAttemptDeadline(i);
                }
                keyguardSecUpdateMonitorImpl.mLockPatternUtils.clearBiometricAttemptDeadline(i);
                keyguardSecUpdateMonitorImpl.mLockPatternUtils.clearFailedFMMUnlockAttempt(i);
            }
        });
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void clearFingerBadQualityCounts() {
        this.mFingerPrintBadQualityCounts.delete(((UserTrackerImpl) this.mUserTracker).getUserId());
    }

    public final void createChannels() {
        NotificationChannel notificationChannel = new NotificationChannel("fbe_channel_id", this.mContext.getResources().getString(R.string.kg_fbe_notification_header), 2);
        notificationChannel.enableLights(true);
        notificationChannel.setLockscreenVisibility(0);
        this.mNotificationManager.createNotificationChannel(notificationChannel);
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void dispatchCallback(KeyguardUpdateMonitor$$ExternalSyntheticLambda8 keyguardUpdateMonitor$$ExternalSyntheticLambda8) {
        dispatchCallback(null, keyguardUpdateMonitor$$ExternalSyntheticLambda8);
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void dispatchCoverState(CoverState coverState) {
        synchronized (this) {
            this.mCoverState = coverState;
        }
        Message obtainMessage = this.mHandler.obtainMessage(VolteConstants.ErrorCode.SERVER_UNREACHABLE);
        obtainMessage.obj = coverState;
        obtainMessage.sendToTarget();
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void dispatchDlsBiometricMode(boolean z) {
        if (this.mHandler.hasMessages(1402)) {
            this.mHandler.removeMessages(1402);
        }
        KeyguardUpdateMonitor.AnonymousClass15 anonymousClass15 = this.mHandler;
        anonymousClass15.sendMessage(anonymousClass15.obtainMessage(1402, Boolean.valueOf(z)));
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void dispatchDlsViewMode(int i) {
        ListPopupWindow$$ExternalSyntheticOutline0.m("dispatchDlsViewMode(), mode=", i, "KeyguardUpdateMonitor");
        if (this.mHandler.hasMessages(1403)) {
            this.mHandler.removeMessages(1403);
        }
        KeyguardUpdateMonitor.AnonymousClass15 anonymousClass15 = this.mHandler;
        anonymousClass15.sendMessageAtFrontOfQueue(anonymousClass15.obtainMessage(1403, Integer.valueOf(i)));
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void dispatchDreamingStarted() {
        synchronized (this) {
            this.mIsEarlyWakeUp = false;
            this.mIsDreamingForBiometrics = true;
        }
        super.dispatchDreamingStarted();
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void dispatchDreamingStopped() {
        synchronized (this) {
            this.mIsDreamingForBiometrics = false;
        }
        super.dispatchDreamingStopped();
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void dispatchDualDarInnerLockScreenState(int i, boolean z) {
        this.mIsDualDarInnerAuthShowing = z;
        if (this.mHandler.hasMessages(VolteConstants.ErrorCode.CALL_CANCEL_MODIFY_REQUESTED)) {
            this.mHandler.removeMessages(VolteConstants.ErrorCode.CALL_CANCEL_MODIFY_REQUESTED);
        }
        KeyguardUpdateMonitor.AnonymousClass15 anonymousClass15 = this.mHandler;
        anonymousClass15.sendMessage(anonymousClass15.obtainMessage(VolteConstants.ErrorCode.CALL_CANCEL_MODIFY_REQUESTED, i, z ? 1 : 0));
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void dispatchForceStartFingerprint() {
        Log.d("KeyguardUpdateMonitor", "dispatchForceStartFingerprint");
        if (!isUnlockingWithBiometricAllowed(true)) {
            Log.d("KeyguardUpdateMonitor", "did not start force start fingerprint");
        } else {
            KeyguardUpdateMonitor.AnonymousClass15 anonymousClass15 = this.mHandler;
            anonymousClass15.sendMessage(anonymousClass15.obtainMessage(VolteConstants.ErrorCode.CALL_TEMP_UNAVAILABLE_415_CAUSE));
        }
    }

    public final void dispatchLockModeChanged() {
        if (this.mHandler.hasMessages(VolteConstants.ErrorCode.CALL_SESSION_TIMEOUT)) {
            this.mHandler.removeMessages(VolteConstants.ErrorCode.CALL_SESSION_TIMEOUT);
        }
        this.mHandler.sendEmptyMessage(VolteConstants.ErrorCode.CALL_SESSION_TIMEOUT);
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void dispatchNotiStarState(boolean z) {
        if (this.mHandler.hasMessages(1028)) {
            this.mHandler.removeMessages(1028);
        }
        KeyguardUpdateMonitor.AnonymousClass15 anonymousClass15 = this.mHandler;
        anonymousClass15.sendMessage(anonymousClass15.obtainMessage(1028, Boolean.valueOf(z)));
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void dispatchSecureState(int i) {
        if (this.mHandler.hasMessages(VolteConstants.ErrorCode.CALL_SESSION_TERMINATED, Integer.valueOf(i))) {
            this.mHandler.removeMessages(VolteConstants.ErrorCode.CALL_SESSION_TERMINATED, Integer.valueOf(i));
        }
        KeyguardUpdateMonitor.AnonymousClass15 anonymousClass15 = this.mHandler;
        anonymousClass15.sendMessage(anonymousClass15.obtainMessage(VolteConstants.ErrorCode.CALL_SESSION_TERMINATED, Integer.valueOf(i)));
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void dispatchSecurityModeChanged(KeyguardSecurityModel.SecurityMode securityMode) {
        if (this.mCurrentSecurityMode != securityMode) {
            this.mCurrentSecurityMode = securityMode;
            KeyguardUpdateMonitor.AnonymousClass15 anonymousClass15 = this.mHandler;
            anonymousClass15.sendMessage(anonymousClass15.obtainMessage(VolteConstants.ErrorCode.CALL_STATUS_CONF_START_SESSION_FAILURE, securityMode));
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void dispatchStartSubscreenBiometric(Intent intent) {
        Log.d("KeyguardUpdateMonitor", "dispatchStartSubscreenBiometric");
        if (!this.mDeviceInteractive) {
            Log.d("KeyguardUpdateMonitor", "did not start subscreen biometric in non interactive state.");
            return;
        }
        if (!isUnlockingWithBiometricAllowed(true)) {
            Log.d("KeyguardUpdateMonitor", "did not start subscreen biometric in not unlocking allowed state.");
            if (intent != null) {
                intent.putExtra("authSinceBoot", this.mStrongAuthTracker.hasUserAuthenticatedSinceBoot());
                return;
            }
            return;
        }
        this.mNeedSubBioAuth = true;
        if (intent != null) {
            intent.putExtra("finger", shouldListenForFingerprint(false));
            intent.putExtra("face", shouldListenForFace());
        }
        KeyguardUpdateMonitor.AnonymousClass15 anonymousClass15 = this.mHandler;
        anonymousClass15.sendMessage(anonymousClass15.obtainMessage(VolteConstants.ErrorCode.CALL_CANCEL_TRANSFER_FAILED));
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void dispatchStartSubscreenFingerprint() {
        Log.d("KeyguardUpdateMonitor", "dispatchStartSubscreenFingerprint");
        if (!isEnabledWofOnFold()) {
            Log.d("KeyguardUpdateMonitor", "did not start subscreen fingerprint in wof off.");
        } else {
            if (!isUnlockingWithBiometricAllowed(true)) {
                Log.d("KeyguardUpdateMonitor", "did not start subscreen biometric in not unlocking allowed state.");
                return;
            }
            this.mNeedSubWofFpAuth = true;
            KeyguardUpdateMonitor.AnonymousClass15 anonymousClass15 = this.mHandler;
            anonymousClass15.sendMessage(anonymousClass15.obtainMessage(VolteConstants.ErrorCode.CALL_CANCEL_TRANSFER_SUCCESS));
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void dispatchStartedEarlyWakingUp(int i) {
        synchronized (this) {
            this.mIsEarlyWakeUp = true;
            this.mIsDreamingForBiometrics = false;
        }
        KeyguardUpdateMonitor.AnonymousClass15 anonymousClass15 = this.mHandler;
        anonymousClass15.sendMessage(anonymousClass15.obtainMessage(1002, i, 0));
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void dispatchStartedWakingUp(int i) {
        super.dispatchStartedWakingUp(i);
        synchronized (this) {
            this.mIsEarlyWakeUp = false;
            if (104 != i) {
                this.mIsScreenSaverRunning = false;
            }
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void dispatchStatusBarState(boolean z) {
        if (this.mHandler.hasMessages(VolteConstants.ErrorCode.CALL_SWITCH_FAILURE)) {
            this.mHandler.removeMessages(VolteConstants.ErrorCode.CALL_SWITCH_FAILURE);
        }
        KeyguardUpdateMonitor.AnonymousClass15 anonymousClass15 = this.mHandler;
        anonymousClass15.sendMessage(anonymousClass15.obtainMessage(VolteConstants.ErrorCode.CALL_SWITCH_FAILURE, Boolean.valueOf(z)));
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void dispatchStopSubscreenBiometric() {
        Log.d("KeyguardUpdateMonitor", "dispatchStopSubscreenBiometric");
        int intValue = this.mSettingsHelper.mItemLists.get("fingerprint_always_on_type").getIntValue();
        if (!this.mNeedSubBioAuth && (intValue == 1 || intValue == 3)) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("did not stop subscreen biometric because already mNeedSubBioAuth is false and subscreen wof is on. wofType = ", intValue, "KeyguardUpdateMonitor");
            return;
        }
        this.mNeedSubBioAuth = false;
        this.mNeedSubWofFpAuth = false;
        KeyguardUpdateMonitor.AnonymousClass15 anonymousClass15 = this.mHandler;
        anonymousClass15.sendMessage(anonymousClass15.obtainMessage(VolteConstants.ErrorCode.CALL_CANCEL_TRANSFER_FAILED));
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void dispatchSubScreenBouncerStateChanged(boolean z) {
        boolean z2;
        StringBuilder sb = new StringBuilder("dispatchSubScreenBouncerStateChanged mKeyguardShowing = ");
        sb.append(this.mKeyguardShowing);
        sb.append(" mKeyguardOccluded = ");
        sb.append(this.mKeyguardOccluded);
        sb.append(" mBouncerFullyShown = ");
        KeyguardCarrierViewController$$ExternalSyntheticOutline0.m(sb, this.mPrimaryBouncerFullyShown, " isBouncerShowing = ", z, "KeyguardUpdateMonitor");
        boolean z3 = this.mKeyguardShowing;
        boolean z4 = this.mKeyguardOccluded;
        if (!this.mPrimaryBouncerFullyShown && !z) {
            z2 = false;
        } else {
            z2 = true;
        }
        sendKeyguardStateUpdated(z3, z4, z2, false);
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void dispatchWallpaperTypeChanged(final int i, final boolean z, final boolean z2) {
        Assert.isMainThread();
        dispatchCallback(null, new Consumer() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda26
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((KeyguardUpdateMonitorCallback) obj).onWallpaperTypeChanged();
            }
        });
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void dumpAllUsers(PrintWriter printWriter) {
        String str;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        printWriter.println("  Current user id=" + ActivityManager.getCurrentUser());
        Iterator it = UserManager.get(this.mContext).getUsers().iterator();
        while (it.hasNext()) {
            int identifier = ((UserInfo) it.next()).getUserHandle().getIdentifier();
            Iterator it2 = it;
            if (!isFingerprintSupported()) {
                str = "    enabledByUser=";
                if (this.mFpm != null && this.mFingerprintSensorProperties.isEmpty()) {
                    printWriter.println("  Fingerprint state (user=" + identifier + ")");
                    StringBuilder sb = new StringBuilder("    mFingerprintSensorProperties.isEmpty=");
                    sb.append(this.mFingerprintSensorProperties.isEmpty());
                    printWriter.println(sb.toString());
                    printWriter.println("    mFpm.isHardwareDetected=" + this.mFpm.isHardwareDetected());
                    new DumpsysTableLogger("KeyguardFingerprintListen", KeyguardFingerprintListenModel.TABLE_HEADERS, this.mFingerprintListenBuffer.toList()).printTableData(printWriter);
                }
            } else {
                int strongAuthForUser = this.mStrongAuthTracker.getStrongAuthForUser(identifier);
                KeyguardUpdateMonitor.BiometricAuthenticated biometricAuthenticated = this.mUserFingerprintAuthenticated.get(identifier);
                printWriter.println("  Fingerprint state (user=" + identifier + ")");
                StringBuilder sb2 = new StringBuilder("    isFingerprintClass3=");
                sb2.append(isFingerprintClass3());
                printWriter.println(sb2.toString());
                StringBuilder m = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("    areAllFpAuthenticatorsRegistered="), this.mAuthController.mAllFingerprintAuthenticatorsRegistered, printWriter, "    allowed=");
                if (biometricAuthenticated != null && isUnlockingWithBiometricAllowed(biometricAuthenticated.mIsStrongBiometric)) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                StringBuilder m2 = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(m, z4, printWriter, "    auth'd=");
                if (biometricAuthenticated != null && biometricAuthenticated.mAuthenticated) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                StringBuilder m3 = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(m2, z5, printWriter, "    authSinceBoot=");
                m3.append(this.mStrongAuthTracker.hasUserAuthenticatedSinceBoot());
                printWriter.println(m3.toString());
                printWriter.println("    disabled(DPM)=" + isFingerprintDisabled(identifier));
                printWriter.println("    possible=" + isUnlockWithFingerprintPossible(identifier));
                StringBuilder m4 = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "    listening: actual=" + this.mFingerprintRunningState + " expected=" + (shouldListenForFingerprint(false) ? 1 : 0), "    strongAuthFlags=");
                m4.append(Integer.toHexString(strongAuthForUser));
                printWriter.println(m4.toString());
                printWriter.println("    trustManaged=" + getUserTrustIsManaged(identifier));
                StringBuilder m5 = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("    mFingerprintLockedOut="), this.mFingerprintLockedOut, printWriter, "    mFingerprintLockedOutPermanent="), this.mFingerprintLockedOutPermanent, printWriter, "    enabledByUser=");
                m5.append(this.mBiometricEnabledForUser.get(identifier));
                printWriter.println(m5.toString());
                KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("    mKeyguardOccluded="), this.mKeyguardOccluded, printWriter, "    mIsDreaming="), this.mIsDreaming, printWriter);
                List list = this.mAuthController.mSidefpsProps;
                if (list != null && !list.isEmpty()) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (z6) {
                    printWriter.println("        sfpsEnrolled=" + isSfpsEnrolled());
                    printWriter.println("        shouldListenForSfps=" + shouldListenForFingerprint(false));
                    if (isSfpsEnrolled()) {
                        printWriter.println("        interactiveToAuthEnabled=false");
                    }
                }
                str = "    enabledByUser=";
                new DumpsysTableLogger("KeyguardFingerprintListen", KeyguardFingerprintListenModel.TABLE_HEADERS, this.mFingerprintListenBuffer.toList()).printTableData(printWriter);
            }
            if (isFaceSupported()) {
                int strongAuthForUser2 = this.mStrongAuthTracker.getStrongAuthForUser(identifier);
                KeyguardUpdateMonitor.BiometricAuthenticated biometricAuthenticated2 = this.mUserFaceAuthenticated.get(identifier);
                printWriter.println("  Face authentication state (user=" + identifier + ")");
                StringBuilder sb3 = new StringBuilder("    isFaceClass3=");
                sb3.append(isFaceClass3());
                printWriter.println(sb3.toString());
                StringBuilder sb4 = new StringBuilder("    allowed=");
                if (biometricAuthenticated2 != null && isUnlockingWithBiometricAllowed(biometricAuthenticated2.mIsStrongBiometric)) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                StringBuilder m6 = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(sb4, z2, printWriter, "    auth'd=");
                if (biometricAuthenticated2 != null && biometricAuthenticated2.mAuthenticated) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                StringBuilder m7 = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(m6, z3, printWriter, "    authSinceBoot=");
                m7.append(this.mStrongAuthTracker.hasUserAuthenticatedSinceBoot());
                printWriter.println(m7.toString());
                printWriter.println("    disabled(DPM)=" + isFaceDisabled(identifier));
                printWriter.println("    possible=" + isUnlockWithFacePossible(identifier));
                printWriter.println("    listening: actual=" + this.mFaceRunningState + " expected=(" + (shouldListenForFace() ? 1 : 0));
                StringBuilder sb5 = new StringBuilder("    strongAuthFlags=");
                sb5.append(Integer.toHexString(strongAuthForUser2));
                printWriter.println(sb5.toString());
                printWriter.println("    isNonStrongBiometricAllowedAfterIdleTimeout=" + this.mStrongAuthTracker.isNonStrongBiometricAllowedAfterIdleTimeout(identifier));
                printWriter.println("    trustManaged=" + getUserTrustIsManaged(identifier));
                StringBuilder m8 = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("    mFaceLockedOutPermanent="), this.mFaceLockedOutPermanent, printWriter, str);
                m8.append(this.mBiometricEnabledForUser.get(identifier));
                printWriter.println(m8.toString());
                StringBuilder m9 = KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("    mSecureCameraLaunched="), this.mSecureCameraLaunched, printWriter, "    mPrimaryBouncerFullyShown="), this.mPrimaryBouncerFullyShown, printWriter, "    mNeedsSlowUnlockTransition=");
                m9.append(this.mNeedsSlowUnlockTransition);
                printWriter.println(m9.toString());
                new DumpsysTableLogger("KeyguardFaceListen", KeyguardFaceListenModel.TABLE_HEADERS, SequencesKt___SequencesKt.toList(new TransformingSequence(new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(this.mFaceListenBuffer.buffer), new Function1() { // from class: com.android.keyguard.KeyguardFaceListenModel$Buffer$toList$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return (List) ((KeyguardFaceListenModel) obj).asStringList$delegate.getValue();
                    }
                }))).printTableData(printWriter);
            } else if (this.mFaceManager != null && this.mFaceSensorProperties.isEmpty()) {
                printWriter.println("  Face state (user=" + identifier + ")");
                StringBuilder sb6 = new StringBuilder("    mFaceSensorProperties.isEmpty=");
                sb6.append(this.mFaceSensorProperties.isEmpty());
                printWriter.println(sb6.toString());
                printWriter.println("    mFaceManager.isHardwareDetected=" + this.mFaceManager.isHardwareDetected());
                new DumpsysTableLogger("KeyguardFaceListen", KeyguardFingerprintListenModel.TABLE_HEADERS, this.mFingerprintListenBuffer.toList()).printTableData(printWriter);
            }
            printWriter.println("ActiveUnlockRunning=" + this.mTrustManager.isActiveUnlockRunning(KeyguardUpdateMonitor.getCurrentUser()));
            new DumpsysTableLogger("KeyguardActiveUnlockTriggers", KeyguardActiveUnlockModel.TABLE_HEADERS, SequencesKt___SequencesKt.toList(new TransformingSequence(new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(this.mActiveUnlockTriggerBuffer.buffer), new Function1() { // from class: com.android.keyguard.KeyguardActiveUnlockModel$Buffer$toList$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return (List) ((KeyguardActiveUnlockModel) obj).asStringList$delegate.getValue();
                }
            }))).printTableData(printWriter);
            printWriter.println("  Security state (user=" + identifier + ") - cached state");
            printWriter.println("    getBiometricType=" + this.mLockPatternUtils.getBiometricType(identifier) + " - " + this.mBiometricType.get(identifier));
            StringBuilder sb7 = new StringBuilder("    isFingerprintOptionEnabled=");
            if (this.mLockPatternUtils.getBiometricState(1, identifier) == 1) {
                z = true;
            } else {
                z = false;
            }
            sb7.append(z);
            sb7.append(" - ");
            sb7.append(this.mBiometricsFingerprint.get(identifier));
            printWriter.println(sb7.toString());
            StringBuilder sb8 = new StringBuilder("    isFaceOptionEnabled=");
            boolean z7 = true;
            if (this.mLockPatternUtils.getBiometricState(256, identifier) != 1) {
                z7 = false;
            }
            sb8.append(z7);
            sb8.append(" - ");
            sb8.append(this.mBiometricsFace.get(identifier));
            printWriter.println(sb8.toString());
            printWriter.println("    getFailedUnlockAttempt=" + this.mLockPatternUtils.getCurrentFailedPasswordAttempts(identifier));
            StringBuilder sb9 = new StringBuilder("    mCredentialType=");
            sb9.append(this.mLockPatternUtils.getCredentialTypeForUser(identifier));
            sb9.append(" - ");
            StringBuilder m10 = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(sb9, this.mCredentialType, printWriter, "    mPrevCredentialType=");
            m10.append(this.mLockPatternUtils.getCredentialTypeForUser(-9998));
            printWriter.println(m10.toString());
            StringBuilder m11 = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "    isSecure=" + this.mLockPatternUtils.isSecure(identifier) + " - " + isSecure(), "    isAutoPinConfirmEnabled=");
            m11.append(this.mLockPatternUtils.isAutoPinConfirmEnabled(identifier));
            printWriter.println(m11.toString());
            StringBuilder sb10 = new StringBuilder("    mDisableCamera=");
            sb10.append(this.mDevicePolicyManager.getCameraDisabled(null));
            sb10.append(" - ");
            StringBuilder m12 = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(sb10, this.mDisableCamera, printWriter, "    mMaximumFailedPasswordsForWipe="), this.mMaximumFailedPasswordsForWipe, printWriter, "    getUserCanSkipBouncer=");
            m12.append(getUserCanSkipBouncer(identifier));
            printWriter.println(m12.toString());
            printWriter.println("    getUserHasTrust=" + getUserHasTrust(identifier));
            printWriter.println("    isUserUnlocked=" + isUserUnlocked(identifier));
            if (identifier != 0) {
                printWriter.println("    hasSeparateChallenge=" + this.mLockPatternUtils.isSeparateProfileChallengeEnabled(identifier));
            }
            it = it2;
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void enableSecurityDebug() {
        KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(3, new StringBuilder("enableSecurityDebug by "), "KeyguardUpdateMonitor");
        this.mLockPatternUtils.setSecurityDebugLevel(2);
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final int getBiometricType(int i) {
        LockPatternUtils lockPatternUtils = this.mLockPatternUtils;
        if (lockPatternUtils == null) {
            Log.e("KeyguardUpdateMonitor", "mLockPatternUtils is null");
            return 0;
        }
        return lockPatternUtils.getBiometricType(i);
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final CoverState getCoverState() {
        CoverState coverState;
        synchronized (this) {
            coverState = this.mCoverState;
        }
        return coverState;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final int getCredentialTypeForUser(int i) {
        if (i == ((UserTrackerImpl) this.mUserTracker).getUserId()) {
            return this.mCredentialType;
        }
        return this.mLockPatternUtils.getCredentialTypeForUser(i);
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final KeyguardSecurityModel.SecurityMode getCurrentSecurityMode() {
        return this.mCurrentSecurityMode;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final String getDeviceOwnerInfo() {
        return this.mDeviceOwnerInfoText;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final KeyguardConstants$KeyguardDismissActionType getDismissActionType() {
        return this.mKeyguardDismissActionType;
    }

    public final boolean getFaceAuthenticated(int i) {
        KeyguardUpdateMonitor.BiometricAuthenticated biometricAuthenticated = this.mUserFaceAuthenticated.get(i);
        if (biometricAuthenticated != null && biometricAuthenticated.mAuthenticated) {
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean getFaceStrongBiometric() {
        KeyguardUpdateMonitor.BiometricAuthenticated biometricAuthenticated = this.mUserFaceAuthenticated.get(((UserTrackerImpl) this.mUserTracker).getUserId());
        if (biometricAuthenticated != null && biometricAuthenticated.mIsStrongBiometric) {
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final int getFailedBiometricUnlockAttempts(int i) {
        return this.mBiometricFailedAttempts.get(i, 0);
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final int getFailedFMMUnlockAttempt(int i) {
        LockPatternUtils lockPatternUtils = this.mLockPatternUtils;
        if (lockPatternUtils != null) {
            return (int) lockPatternUtils.getFailedFMMUnlockAttempt(i);
        }
        return 0;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final int getFailedUnlockAttempts(int i) {
        return this.mLockPatternUtils.getCurrentFailedPasswordAttempts(i);
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final KeyguardFastBioUnlockController getFastBioUnlockController() {
        return this.mFastUnlockController;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean getFingerprintAuthenticated(int i) {
        KeyguardUpdateMonitor.BiometricAuthenticated biometricAuthenticated = this.mUserFingerprintAuthenticated.get(i);
        if (biometricAuthenticated != null && biometricAuthenticated.mAuthenticated) {
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final Message getKeyguardBatteryMessage(Intent intent) {
        boolean z = true;
        int intExtra = intent.getIntExtra(IMSParameter.CALL.STATUS, 1);
        int intExtra2 = intent.getIntExtra("plugged", 0);
        int intExtra3 = intent.getIntExtra(ActionResults.RESULT_SET_VOLUME_SUCCESS, 0);
        int intExtra4 = intent.getIntExtra("android.os.extra.CHARGING_STATUS", 1);
        int i = -1;
        int intExtra5 = intent.getIntExtra("max_charging_current", -1);
        int intExtra6 = intent.getIntExtra("max_charging_voltage", -1);
        int intExtra7 = intent.getIntExtra("online", 0);
        boolean booleanExtra = intent.getBooleanExtra("hv_charger", false);
        int intExtra8 = intent.getIntExtra("current_event", 0);
        int intExtra9 = intent.getIntExtra("charger_type", 0);
        if ((intent.getIntExtra("misc_event", 0) & 16777216) == 0) {
            z = false;
        }
        if (intExtra6 <= 0) {
            intExtra6 = 5000000;
        }
        if (intExtra5 > 0) {
            i = (intExtra6 / 1000) * (intExtra5 / 1000);
        }
        return this.mHandler.obtainMessage(302, new KeyguardBatteryStatus(intExtra, intExtra3, intExtra2, intExtra4, i, intExtra7, booleanExtra, intExtra8, intExtra9, z));
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final KeyguardBatteryStatus getKeyguardBatteryStatus() {
        return this.mKeyguardBatteryStatus;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final long getLockoutAttemptDeadline() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.mLockoutAttemptDeadline;
        if (j < elapsedRealtime && this.mLockoutAttemptTimeout != 0) {
            return this.mLockPatternUtils.getLockoutAttemptDeadline(((UserTrackerImpl) this.mUserTracker).getUserId());
        }
        if (j > elapsedRealtime + this.mLockoutAttemptTimeout) {
            return this.mLockPatternUtils.getLockoutAttemptDeadline(((UserTrackerImpl) this.mUserTracker).getUserId());
        }
        return j;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final long getLockoutBiometricAttemptDeadline() {
        if (!this.mStrongAuthTracker.hasUserAuthenticatedSinceBoot()) {
            return 0L;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.mLockoutBiometricAttemptDeadline;
        if ((j < elapsedRealtime && this.mLockoutBiometricAttemptTimeout != 0) || j > elapsedRealtime + this.mLockoutBiometricAttemptTimeout) {
            j = this.mLockPatternUtils.getBiometricAttemptDeadline(((UserTrackerImpl) this.mUserTracker).getUserId());
        }
        if (j > 0 && !this.mHasLoggedOnceAuditlog) {
            int userId = ((UserTrackerImpl) this.mUserTracker).getUserId();
            int failedBiometricUnlockAttempts = getFailedBiometricUnlockAttempts(userId);
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                AuditLog.logAsUser(5, 1, true, Process.myPid(), "KeyguardSecUpdateMonitorImpl", "Incorrect biometric authentication attempts (" + failedBiometricUnlockAttempts + ") limit reached", userId);
                this.mHasLoggedOnceAuditlog = true;
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        } else if (j <= 0 && this.mHasLoggedOnceAuditlog) {
            this.mHasLoggedOnceAuditlog = false;
        }
        return j;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final int getMaxFailedUnlockAttempts() {
        if (!Build.IS_USERDEBUG && !Build.IS_ENG) {
            return 50;
        }
        return SystemProperties.getInt("persist.lock.max_attempts", 50);
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final String getOwnerInfo() {
        return this.mOwnerInfoText;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final int getPrevCredentialType() {
        return this.mLockPatternUtils.getCredentialTypeForUser(-9998);
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final int getRemainingAttempt(int i) {
        if (isAutoWipe()) {
            int failedUnlockAttempts = getFailedUnlockAttempts(((UserTrackerImpl) this.mUserTracker).getUserId());
            int remainingAttemptsBeforeWipe = getRemainingAttemptsBeforeWipe();
            RecyclerView$$ExternalSyntheticOutline0.m(GridLayoutManager$$ExternalSyntheticOutline0.m("getRemainingAttempt type : ", i, ", failedAttempts : ", failedUnlockAttempts, ", remainingAttempts : "), remainingAttemptsBeforeWipe, "KeyguardUpdateMonitor");
            if (i != 0) {
                if (i != 1) {
                    if (i == 2 && failedUnlockAttempts >= 6 && failedUnlockAttempts <= 9) {
                        return remainingAttemptsBeforeWipe;
                    }
                    return 0;
                }
                if (remainingAttemptsBeforeWipe < 10) {
                    return remainingAttemptsBeforeWipe;
                }
                return 0;
            }
            if (remainingAttemptsBeforeWipe <= 10) {
                return remainingAttemptsBeforeWipe;
            }
            return 0;
        }
        return 0;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final int getRemainingAttemptsBeforeWipe() {
        int failedUnlockAttempts = getFailedUnlockAttempts(((UserTrackerImpl) this.mUserTracker).getUserId());
        boolean isAutoWipe = isAutoWipe();
        int i = this.mMaximumFailedPasswordsForWipe;
        if (i <= 0) {
            if (isAutoWipe) {
                i = 20;
            } else {
                i = 0;
            }
        }
        if (i > 0) {
            return i - failedUnlockAttempts;
        }
        return -1;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final RemoteLockInfo getRemoteLockInfo() {
        int i = this.mActiveRemoteLockIndex;
        if (i >= 0) {
            return (RemoteLockInfo) this.mRemoteLockInfo.get(i);
        }
        return null;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final int getRemoteLockType() {
        int i = this.mActiveRemoteLockIndex;
        if (i >= 0) {
            return ((RemoteLockInfo) this.mRemoteLockInfo.get(i)).lockType;
        }
        return -1;
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final boolean getUserCanSkipBouncer(int i) {
        boolean z;
        if (isForcedLock()) {
            return false;
        }
        if (!getUserHasTrust(i) && (!getUserUnlockedWithBiometric(i) || is2StepVerification())) {
            if ((((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).mCustomSdkMonitor.mKnoxCustomLockScreenOverrideMode & 1) != 0) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final boolean getUserUnlockedWithBiometricAndIsBypassing(int i) {
        return super.getUserUnlockedWithBiometricAndIsBypassing(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0028, code lost:
    
        if (r4 == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0089, code lost:
    
        if (r4.remaining != r6) goto L63;
     */
    @Override // com.android.keyguard.KeyguardUpdateMonitor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void handleBatteryUpdate(com.android.settingslib.fuelgauge.BatteryStatus r11) {
        /*
            r10 = this;
            boolean r0 = r11 instanceof com.android.systemui.statusbar.KeyguardBatteryStatus
            if (r0 == 0) goto Lad
            com.android.systemui.util.Assert.isMainThread()
            java.lang.String r0 = "KeyguardUpdateMonitor"
            java.lang.String r1 = "handleBatteryUpdate"
            android.util.Log.d(r0, r1)
            r0 = r11
            com.android.systemui.statusbar.KeyguardBatteryStatus r0 = (com.android.systemui.statusbar.KeyguardBatteryStatus) r0
            r1 = 2
            r2 = 1
            r3 = 0
            com.android.internal.app.IBatteryStats r4 = r10.mBatteryInfo     // Catch: android.os.RemoteException -> L32
            if (r4 == 0) goto L32
            boolean r4 = r0.isPluggedIn()     // Catch: android.os.RemoteException -> L32
            if (r4 != 0) goto L2a
            int r4 = r0.plugged     // Catch: android.os.RemoteException -> L32
            if (r4 == r2) goto L27
            if (r4 != r1) goto L25
            goto L27
        L25:
            r4 = r3
            goto L28
        L27:
            r4 = r2
        L28:
            if (r4 == 0) goto L32
        L2a:
            com.android.internal.app.IBatteryStats r4 = r10.mBatteryInfo     // Catch: android.os.RemoteException -> L32
            long r4 = r4.computeChargeTimeRemaining()     // Catch: android.os.RemoteException -> L32
            r0.remaining = r4     // Catch: android.os.RemoteException -> L32
        L32:
            com.android.systemui.statusbar.KeyguardBatteryStatus r4 = r10.mKeyguardBatteryStatus
            boolean r5 = r0.isPluggedIn()
            boolean r6 = r4.isPluggedIn()
            if (r6 == 0) goto L48
            if (r5 == 0) goto L48
            int r7 = r4.status
            int r8 = r0.status
            if (r7 == r8) goto L48
            r7 = r2
            goto L49
        L48:
            r7 = r3
        L49:
            if (r6 != r5) goto L9f
            if (r7 == 0) goto L4e
            goto L9f
        L4e:
            int r6 = r4.level
            int r7 = r0.level
            if (r6 == r7) goto L55
            goto L9f
        L55:
            if (r5 == 0) goto L5e
            boolean r6 = r4.highVoltage
            boolean r7 = r0.highVoltage
            if (r6 == r7) goto L5e
            goto L9f
        L5e:
            if (r5 == 0) goto L67
            int r6 = r4.online
            int r7 = r0.online
            if (r6 == r7) goto L67
            goto L9f
        L67:
            if (r5 == 0) goto L72
            int r6 = r0.swellingMode
            if (r6 <= 0) goto L72
            int r7 = r4.swellingMode
            if (r7 == r6) goto L72
            goto L9f
        L72:
            if (r5 == 0) goto L7b
            int r6 = r4.chargingStatus
            int r7 = r0.chargingStatus
            if (r6 == r7) goto L7b
            goto L9f
        L7b:
            if (r5 == 0) goto L8c
            long r6 = r0.remaining
            r8 = 0
            int r8 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r8 <= 0) goto L8c
            long r8 = r4.remaining
            int r6 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r6 == 0) goto L8c
            goto L9f
        L8c:
            if (r5 == 0) goto L95
            int r6 = r4.mSuperFastCharger
            int r7 = r0.mSuperFastCharger
            if (r6 == r7) goto L95
            goto L9f
        L95:
            if (r5 == 0) goto L9e
            int r5 = r0.maxChargingWattage
            int r4 = r4.maxChargingWattage
            if (r5 == r4) goto L9e
            goto L9f
        L9e:
            r2 = r3
        L9f:
            r10.mKeyguardBatteryStatus = r0
            if (r2 == 0) goto Lb0
            com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda20 r0 = new com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda20
            r0.<init>(r11, r1)
            r11 = 0
            r10.dispatchCallback(r11, r0)
            goto Lb0
        Lad:
            super.handleBatteryUpdate(r11)
        Lb0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardSecUpdateMonitorImpl.handleBatteryUpdate(com.android.settingslib.fuelgauge.BatteryStatus):void");
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handleDevicePolicyManagerStateChanged(int i) {
        super.handleDevicePolicyManagerStateChanged(i);
        DevicePolicyManager devicePolicyManager = this.mDevicePolicyManager;
        if (devicePolicyManager != null) {
            this.mDisableCamera = devicePolicyManager.getCameraDisabled(null, i);
            this.mMaximumFailedPasswordsForWipe = this.mDevicePolicyManager.getMaximumFailedPasswordsForWipe(null, i);
        }
        updateDualDARInnerLockscreenRequirement(i);
    }

    public final void handleDlsViewMode(int i) {
        Log.d("KeyguardUpdateMonitor", "handleDlsViewMode(), mode=" + i);
        dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9(i, 5));
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handleDreamingStateChanged(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        if (i == 1) {
            z = true;
        } else {
            z = false;
        }
        if (!this.mGoingToSleep && z && this.mDeviceInteractive && this.mKeyguardOccluded) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.mIsDreaming != z) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (this.mIsScreenSaverRunning != z2) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (!z3 && !z4) {
            return;
        }
        StringBuilder sb = new StringBuilder("handleDreamingStateChanged() dreaming : ");
        KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(sb, this.mIsDreaming, " -> ", z, ", screen saver : ");
        KeyguardCarrierViewController$$ExternalSyntheticOutline0.m(sb, this.mIsScreenSaverRunning, " -> ", z2, "KeyguardUpdateMonitor");
        this.mIsDreaming = z;
        this.mIsScreenSaverRunning = z2;
        dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11(this, 4));
        if (z2) {
            clearBiometricRecognized();
            setFaceAuthenticated(false);
        }
        updateFingerprintListeningState(2);
        if (this.mIsDreaming) {
            updateFaceListeningState(1, FaceAuthUiEvent.FACE_AUTH_STOPPED_DREAM_STARTED);
        } else if (this.mIsStartFacePossible) {
            updateFaceListeningState(2, FaceAuthUiEvent.FACE_AUTH_STOPPED_DREAM_STARTED);
        }
    }

    public final void handleDualDarInnerLockScreenStateChanged(final int i, final boolean z) {
        dispatchCallback(null, new Consumer() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda22
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((KeyguardUpdateMonitorCallback) obj).onDualDarInnerLockScreenStateChanged(z);
            }
        });
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handleFaceAuthFailed() {
        Assert.isMainThread();
        reportFailedBiometricUnlockAttempt(((UserTrackerImpl) this.mUserTracker).getUserId());
        stopListeningForFace(FaceAuthUiEvent.FACE_AUTH_STOPPED_FACE_FAILED);
        dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7(11));
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handleFaceAuthenticated(int i, boolean z) {
        if (this.mSettingsHelper.isEnabledFaceStayOnLock()) {
            this.mBiometricFailedAttempts.delete(((UserTrackerImpl) this.mUserTracker).getUserId());
        } else if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL) {
            removeMaskViewForOpticalFpSensor();
        }
        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY && this.mFingerprintRunningState == 1) {
            Log.d("KeyguardFingerprint", "Face onAuthenticationSucceeded. FP will be stop!");
            stopListeningForFingerprint();
        }
        dispatchCallback("onBiometricAuthenticated", new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19(0, this, z));
        setFaceRunningState(0);
        super.mBackgroundExecutor.execute(new KeyguardUpdateMonitor$$ExternalSyntheticLambda2(i, this, z));
        if (LsRune.SECURITY_SUB_DISPLAY_COVER) {
            this.mNeedSubBioAuth = false;
        }
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handleFaceError(int i, String str) {
        String str2;
        Assert.isMainThread();
        if (!isFaceDetectionRunning()) {
            Log.d("KeyguardFace", "onAuthenticationError(), Face is not running");
            return;
        }
        if (i == 5) {
            Log.d("KeyguardFace", "onAuthenticationError(), FACE_ERROR_CANCELED ignore");
            return;
        }
        if (i == 10003 && this.mSecureCameraLaunched) {
            Log.d("KeyguardFace", "onAuthenticationError(), FACE_ERROR_CAMERA_FAILURE ignore");
            return;
        }
        Log.d("KeyguardFace", "onAuthenticationError(), errorCode=" + i + ", errString=" + str);
        if (str == null) {
            Toast.makeText(this.mContext, this.mContext.getResources().getString(R.string.kg_face_not_working_text) + "\n" + this.mContext.getResources().getString(R.string.kg_face_error_restart_text), 0).show();
            str = "";
        }
        stopListeningForFace(FaceAuthUiEvent.FACE_AUTH_STOPPED_FACE_ERROR);
        if (i == 100001 && !this.mPrimaryBouncerFullyShown) {
            Toast makeText = Toast.makeText(this.mContext, str, 0);
            makeText.setGravity(49, 0, this.mContext.getResources().getDimensionPixelOffset(R.dimen.status_bar_height));
            makeText.show();
        }
        if (i == 3) {
            if (this.mTimeoutWithoutFace) {
                str2 = "4";
            } else {
                str2 = DATA.DM_FIELD_INDEX.PUBLIC_USER_ID;
            }
            sendFaceSALog(str2);
        } else if (i == 1006) {
            sendFaceSALog(DATA.DM_FIELD_INDEX.LBO_PCSCF_ADDRESS_TYPE);
        }
        dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15(i, str, 0));
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handleFingerprintAcquired(int i) {
        boolean z;
        Assert.isMainThread();
        Log.d("KeyguardFingerprint", "handleFingerprintAcquired( " + i + "  )");
        if (i != 10002) {
            if (i == 10004) {
                this.mIsFpLeave = true;
            }
        } else {
            this.mIsFpLeave = false;
        }
        if (this.mIsSkipFPResponse && i == 10002) {
            this.mHandler.removeCallbacks(this.mTimeoutSkipFPResponse);
            Log.i("KeyguardFingerprint", "FP Capture started. Therefore, the FP response will be skipped.");
        }
        if (i != 1004) {
            z = true;
        } else {
            z = false;
        }
        Rune.runIf(new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8(this, 0), z);
        if (!isUnlockingWithBiometricAllowed(true) && !this.mDisabledBiometricBySecurityDialog) {
            if (i == 10002) {
                dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9(i, 0));
            }
        } else {
            if (i != 0) {
                return;
            }
            dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9(i, 1));
        }
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handleFingerprintAuthFailed() {
        Assert.isMainThread();
        int userId = ((UserTrackerImpl) this.mUserTracker).getUserId();
        if (this.mIsSkipFPResponse) {
            this.mIsSkipFPResponse = false;
            Log.i("KeyguardFingerprint", "handleFingerprintAuthFailed( skipped FP response )");
        } else {
            if (!isUnlockingWithBiometricAllowed(true)) {
                Log.d("KeyguardFingerprint", "handleFingerprintAuthFailed( unlock is not allowed. )");
                return;
            }
            reportFailedBiometricUnlockAttempt(userId);
            dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7(10));
            handleFingerprintHelp(-1, this.mContext.getString(R.string.kg_fingerprint_no_match));
        }
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handleFingerprintAuthenticated(int i, boolean z) {
        if (this.mIsSkipFPResponse) {
            this.mIsSkipFPResponse = false;
            Log.i("KeyguardFingerprint", "handleFingerprintAuthenticated( skipped FP response )");
            setFingerprintRunningState(0);
            this.mFingerprintCancelSignal = null;
            updateFingerprintListeningState(2);
            Trace.endSection();
            return;
        }
        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL && (is2StepVerification() || isForcedLock() || !this.mKeyguardShowing)) {
            removeMaskViewForOpticalFpSensor();
        }
        if (LsRune.SECURITY_SUB_DISPLAY_COVER) {
            this.mForceStartFinger = false;
            this.mNeedSubBioAuth = false;
            this.mNeedSubWofFpAuth = false;
        }
        super.handleFingerprintAuthenticated(i, z);
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handleFingerprintError(int i, String str) {
        NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0.m("handleFingerprintError( ", i, " )", "KeyguardFingerprint");
        if (5000 == i) {
            if (isFingerprintDetectionRunning()) {
                Log.d("KeyguardFingerprint", "handleFingerprintError( restart FingerPrint by FINGERPRINT_ERROR_NEED_TO_RETRY !! )");
                startListeningForFingerprint();
                return;
            }
            return;
        }
        if (1004 == i) {
            str = this.mContext.getString(R.string.kg_finger_print_database_error_message);
        } else if (1002 != i && 1003 != i) {
            if (1001 == i) {
                if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL) {
                    str = this.mContext.getString(R.string.kg_finger_print_optical_sensor_with_recalibration_error_message);
                } else {
                    str = this.mContext.getString(R.string.kg_finger_print_sensor_with_recalibration_error_message);
                }
            } else if (1005 == i) {
                str = this.mContext.getString(R.string.kg_finger_print_sensor_changed_error_message);
            }
        } else {
            str = this.mContext.getString(R.string.kg_finger_print_not_responding_error_message);
        }
        this.mPowerManager.userActivity(SystemClock.uptimeMillis(), 0, 0);
        if (LsRune.SECURITY_BACKGROUND_AUTHENTICATION && i == 5 && this.mKeyguardOccluded && this.mFingerprintRunningState == 1) {
            Log.d("KeyguardFingerprint", "mIsFPCanceledByForegroundApp true");
            this.mIsFPCanceledByForegroundApp = true;
            setFingerprintRunningState(0);
        }
        super.handleFingerprintError(i, str);
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handleFingerprintHelp(int i, String str) {
        AODToast.Builder builder;
        String string;
        String m;
        Assert.isMainThread();
        int userId = ((UserTrackerImpl) this.mUserTracker).getUserId();
        boolean z = false;
        if (this.mIsSkipFPResponse) {
            this.mIsSkipFPResponse = false;
            Log.i("KeyguardFingerprint", "handleFingerprintHelp( skipped FP response )");
            return;
        }
        boolean z2 = true;
        if (i != -1 && !isUnlockingWithBiometricAllowed(true)) {
            Log.d("KeyguardFingerprint", "handleFingerprintHelp( unlock is not allowed. )");
            stopListeningForFingerprint();
            return;
        }
        long j = 0;
        if (this.mDeviceInteractive && !this.mIsDreamingForBiometrics) {
            if (i != 1004) {
                this.mPowerManager.userActivity(SystemClock.uptimeMillis(), 0, 0);
            }
        } else if (i != 1004 && i != 1005) {
            if (i != -1) {
                int i2 = this.mFingerPrintBadQualityCounts.get(((UserTrackerImpl) this.mUserTracker).getUserId(), 0) + 1;
                this.mFingerPrintBadQualityCounts.put(((UserTrackerImpl) this.mUserTracker).getUserId(), i2);
                StringBuilder sb = new StringBuilder("handleFingerprintHelp( Update Bad Quality Count = ");
                sb.append(i2);
                ExifInterface$$ExternalSyntheticOutline0.m(sb, " )", "KeyguardFingerprint");
                if (i2 >= 50) {
                    sendSALog("301", "1099", null);
                    if (this.mSettingsHelper.mItemLists.get("fingerprint_sensor_block_popup_show_again").getIntValue() != 0) {
                        z2 = false;
                    }
                    if (z2) {
                        Resources resources = this.mContext.getResources();
                        SystemUIDialog systemUIDialog = new SystemUIDialog(this.mContext);
                        systemUIDialog.setTitle(resources.getString(R.string.kg_fingerprint_bad_quality_popup_title));
                        systemUIDialog.setMessage(resources.getString(R.string.kg_fingerprint_bad_quality_popup_message));
                        systemUIDialog.setPositiveButton(R.string.kg_keycode_ok, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda24());
                        CheckBox checkBox = new CheckBox(new ContextThemeWrapper(this.mContext, 2132018527));
                        checkBox.setText(resources.getString(R.string.kg_fingerprint_bad_quality_popup_checkbox));
                        checkBox.setPadding(resources.getDimensionPixelSize(R.dimen.qs_checkbox_text_side_padding), 0, 0, 0);
                        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda25
                            @Override // android.widget.CompoundButton.OnCheckedChangeListener
                            public final void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                                KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl = KeyguardSecUpdateMonitorImpl.this;
                                keyguardSecUpdateMonitorImpl.getClass();
                                Log.d("KeyguardUpdateMonitor", "showFingerprintBlockPopup onCheckedChanged :  " + z3);
                                Settings.Secure.putInt(keyguardSecUpdateMonitorImpl.mSettingsHelper.mResolver, "fingerprint_sensor_block_popup_show_again", z3 ? 1 : 0);
                            }
                        });
                        systemUIDialog.setView(checkBox, resources.getDimensionPixelSize(R.dimen.checkbox_popup_text_margin), 0, resources.getDimensionPixelSize(R.dimen.checkbox_popup_text_margin), 0);
                        systemUIDialog.setCancelable(false);
                        systemUIDialog.show();
                    } else {
                        Log.d("KeyguardFingerprint", "Skip to show fingerprint sensor block popup");
                    }
                    updateFingerprintListeningState(2);
                    setFodStrictMode(false);
                } else if (i2 == 30) {
                    setFodStrictMode(true);
                }
                PluginAOD pluginAOD = ((PluginAODManager) this.mPluginAODManagerLazy.get()).mAODPlugin;
                if (pluginAOD != null) {
                    pluginAOD.hideChargingInfoByFinger(0L);
                    return;
                }
                return;
            }
            int failedBiometricUnlockAttempts = getFailedBiometricUnlockAttempts(userId);
            boolean userHasTrust = getUserHasTrust(userId);
            StringBuilder m2 = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("handleFingerprintHelp( Failed count when screen off = ", failedBiometricUnlockAttempts, " ) - ");
            m2.append(this.mCurrentSecurityMode);
            m2.append(", t = ");
            m2.append(userHasTrust);
            Log.d("KeyguardFingerprint", m2.toString());
            if (getFailedBiometricUnlockAttempts(userId) == 3) {
                this.mKeyguardBatteryStatus.getClass();
                String str2 = LsRune.VALUE_CONFIG_CARRIER_TEXT_POLICY;
            }
            int failedBiometricUnlockAttempts2 = getFailedBiometricUnlockAttempts(userId);
            if (failedBiometricUnlockAttempts2 != 0 && failedBiometricUnlockAttempts2 % 5 == 0) {
                z = true;
            }
            if (z) {
                KeyguardTextBuilder keyguardTextBuilder = KeyguardTextBuilder.getInstance(this.mContext);
                KeyguardSecurityModel.SecurityMode securityMode = this.mCurrentSecurityMode;
                StringBuilder sb2 = new StringBuilder();
                Context context = keyguardTextBuilder.mContext;
                String m3 = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb2, context.getResources().getQuantityString(R.plurals.kg_secure_attempts_to_unlock_with_fingerprints, failedBiometricUnlockAttempts, Integer.valueOf(failedBiometricUnlockAttempts)), " ");
                if (userHasTrust) {
                    String str3 = LsRune.VALUE_CONFIG_CARRIER_TEXT_POLICY;
                    m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(context, R.string.kg_secure_press_power_key, ArrayLinkedVariables$$ExternalSyntheticOutline0.m(m3));
                } else {
                    int i3 = KeyguardTextBuilder.AnonymousClass2.$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[securityMode.ordinal()];
                    if (i3 != 1) {
                        if (i3 != 2) {
                            string = context.getString(R.string.kg_secure_enter_password_instead);
                        } else {
                            string = context.getString(R.string.kg_secure_draw_pattern_instead);
                        }
                    } else {
                        string = context.getString(R.string.kg_secure_enter_pin_instead);
                    }
                    m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(m3, string);
                }
                builder = new AODToast.Builder(m);
            } else {
                builder = null;
            }
            if (builder != null) {
                j = 10000;
                builder.setDurationInMillis(10000L);
                AODManager.getInstance(this.mContext).requestAODToast(builder.build());
            }
        } else {
            Log.d("KeyguardFingerprint", "handleFingerprintHelp( skip TSP block/unblock )");
            return;
        }
        dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15(i, str, 1));
        PluginAOD pluginAOD2 = ((PluginAODManager) this.mPluginAODManagerLazy.get()).mAODPlugin;
        if (pluginAOD2 != null) {
            pluginAOD2.hideChargingInfoByFinger(j);
        }
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handleFinishedGoingToSleep(int i) {
        ((UiOffloadThread) Dependency.get(UiOffloadThread.class)).execute(new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8(this, 7));
        super.handleFinishedGoingToSleep(i);
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handleKeyguardReset() {
        super.handleKeyguardReset();
        if (isForcedLock() && isFaceDetectionRunning()) {
            stopListeningForFace(FaceAuthUiEvent.FACE_AUTH_UPDATED_KEYGUARD_RESET);
        }
    }

    public final void handleLocaleChanged() {
        Log.d("KeyguardUpdateMonitor", "handleLocaleChanged()");
        if (LsRune.KEYGUARD_FBE) {
            createChannels();
        }
        dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7(3));
        Log.d("KeyguardUpdateMonitor", "updateCarrierTextInfo");
        if (this.mHandler.hasMessages(VolteConstants.ErrorCode.CALL_STATUS_CONF_ADD_USER_TO_SESSION_FAILURE)) {
            this.mHandler.removeMessages(VolteConstants.ErrorCode.CALL_STATUS_CONF_ADD_USER_TO_SESSION_FAILURE);
        }
        this.mHandler.sendEmptyMessage(VolteConstants.ErrorCode.CALL_STATUS_CONF_ADD_USER_TO_SESSION_FAILURE);
    }

    public final void handlePackageRemoved(String str, boolean z) {
        dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19(1, str, z));
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handlePhoneStateChanged(String str) {
        super.handlePhoneStateChanged(str);
        if (TelephonyManager.EXTRA_STATE_IDLE.equals(str)) {
            this.mIsFPCanceledByProximity = false;
        }
        updateFingerprintListeningState(2);
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handlePrimaryBouncerChanged(int i, int i2) {
        boolean z;
        FingerprintManager fingerprintManager;
        FaceManager faceManager;
        Assert.isMainThread();
        boolean z2 = this.mPrimaryBouncerIsOrWillBeShowing;
        boolean z3 = this.mPrimaryBouncerFullyShown;
        boolean z4 = true;
        if (i == 1) {
            z = true;
        } else {
            z = false;
        }
        this.mPrimaryBouncerIsOrWillBeShowing = z;
        if (i2 != 1) {
            z4 = false;
        }
        this.mPrimaryBouncerFullyShown = z4;
        StringBuilder sb = new StringBuilder("handlePrimaryBouncerChanged primaryBouncerIsOrWillBeShowing=");
        sb.append(this.mPrimaryBouncerIsOrWillBeShowing);
        sb.append(" primaryBouncerFullyShown=");
        ActionBarContextView$$ExternalSyntheticOutline0.m(sb, this.mPrimaryBouncerFullyShown, "KeyguardUpdateMonitor");
        int userId = ((UserTrackerImpl) this.mUserTracker).getUserId();
        if (this.mCurrentSecurityMode != KeyguardSecurityModel.SecurityMode.Swipe && isFaceOptionEnabled() && getFaceAuthenticated(userId) && isFaceDetectionRunning()) {
            setFaceRunningState(0);
            setFaceAuthenticated(false);
        }
        if (this.mPrimaryBouncerFullyShown && this.mIsQsFullyExpanded) {
            this.mIsQsFullyExpanded = false;
        }
        if (isUnlockCompleted()) {
            updateFaceListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN);
        }
        if (this.mPrimaryBouncerFullyShown && isFaceDetectionRunning() && (faceManager = this.mFaceManager) != null) {
            faceManager.semResetAuthenticationTimeout();
        }
        if (this.mPrimaryBouncerFullyShown) {
            this.mSecureCameraLaunched = false;
        } else {
            this.mCredentialAttempted = false;
        }
        if (z2 != this.mPrimaryBouncerIsOrWillBeShowing) {
            dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11(this, 5));
        }
        boolean z5 = this.mPrimaryBouncerFullyShown;
        if (z3 != z5) {
            if (z5) {
                requestActiveUnlock(ActiveUnlockConfig.ActiveUnlockRequestOrigin.UNLOCK_INTENT, "bouncerFullyShown");
            }
            dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11(this, 6));
        }
        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY && (fingerprintManager = this.mFpm) != null) {
            fingerprintManager.semShowBouncerScreen(this.mPrimaryBouncerFullyShown ? 1 : 0);
        }
        if (!isKeyguardVisible() && !this.mPrimaryBouncerFullyShown) {
            setUnlockingKeyguard(false);
        }
        setShortcutLaunchInProgress(false);
        updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN);
        if (this.mPrimaryBouncerFullyShown) {
            SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, "1001", "1");
        }
        ((PluginAODManager) this.mPluginAODManagerLazy.get()).updateAnimateScreenOff();
    }

    public final void handlePrimaryBouncerVisibilityChanged(boolean z) {
        Log.d("KeyguardUpdateMonitor", "handlePrimaryBouncerVisibilityChanged " + z);
        dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10(z, 3));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void handleSecMessage(Message message) {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        String str;
        boolean z5;
        boolean z6;
        ArrayList arrayList;
        int i2;
        String charSequence;
        String str2;
        char c;
        boolean z7;
        boolean z8;
        int i3;
        int i4 = message.what;
        if (i4 != 1028) {
            boolean z9 = true;
            int i5 = 0;
            if (i4 != 1125) {
                if (i4 != 1501) {
                    int i6 = 7;
                    switch (i4) {
                        case 1001:
                            setIsRunningBlackMemo(false);
                            return;
                        case 1002:
                            int i7 = message.arg1;
                            Trace.beginSection("KeyguardUpdateMonitor#handleStartedEarlyWakingUp");
                            Log.d("KeyguardUpdateMonitor", "handleStartedEarlyWakingUp start " + i7);
                            if (this.mIsQsFullyExpanded) {
                                this.mIsQsFullyExpanded = false;
                            }
                            if (i7 != 1 && i7 != 3 && i7 != 9 && i7 != 11 && i7 != 106 && i7 != 6 && i7 != 7 && i7 != 102 && i7 != 103 && i7 != 112 && i7 != 113) {
                                z9 = false;
                            }
                            this.mIsStartFacePossible = z9;
                            if (z9) {
                                updateFaceListeningState(0, FaceAuthUiEvent.FACE_AUTH_UPDATED_STARTED_WAKING_UP);
                            }
                            if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY && this.mKeyguardShowing && !this.mHandler.hasCallbacks(this.mWaitingFocusRunnable)) {
                                this.mHandler.postDelayed(this.mWaitingFocusRunnable, 500L);
                            }
                            Trace.endSection();
                            return;
                        case 1003:
                            long lockoutAttemptDeadline = getLockoutAttemptDeadline();
                            if (lockoutAttemptDeadline == 0) {
                                ((DesktopManagerImpl) ((DesktopManager) this.mDesktopManagerLazy.get())).notifyKeyguardLockout(false);
                                return;
                            }
                            long elapsedRealtime = lockoutAttemptDeadline - SystemClock.elapsedRealtime();
                            if (elapsedRealtime > 0) {
                                this.mHandler.sendEmptyMessageDelayed(1003, elapsedRealtime);
                                return;
                            }
                            return;
                        default:
                            ArrayList arrayList2 = null;
                            switch (i4) {
                                case VolteConstants.ErrorCode.CALL_SESSION_ABORT /* 1101 */:
                                    int identifier = Process.myUserHandle().getIdentifier();
                                    ListPopupWindow$$ExternalSyntheticOutline0.m("Process.myUserHandle().getIdentifier() = ", identifier, "KeyguardUpdateMonitor");
                                    if (identifier == 0) {
                                        try {
                                            if (this.mLockSettingsService == null) {
                                                this.mLockSettingsService = ILockSettings.Stub.asInterface(ServiceManager.getService("lock_settings"));
                                            }
                                            this.mLockSettingsService.setLockModeChangedCallback(this.mSecureLockChangedCallback);
                                            Log.d("KeyguardUpdateMonitor", "handleUpdateLockModeCallback, userID = " + identifier);
                                            return;
                                        } catch (RemoteException e) {
                                            Log.d("KeyguardUpdateMonitor", "RemoteException! " + e);
                                            return;
                                        }
                                    }
                                    return;
                                case VolteConstants.ErrorCode.CALL_SESSION_TERMINATED /* 1102 */:
                                    int intValue = ((Integer) message.obj).intValue();
                                    int userId = ((UserTrackerImpl) this.mUserTracker).getUserId();
                                    if (containsFlag(intValue, 512)) {
                                        z2 = updateLockscreenDisabled(userId) | false;
                                    } else {
                                        z2 = false;
                                    }
                                    if (containsFlag(intValue, 2)) {
                                        z3 = updateCredentialType(userId) | false;
                                    } else {
                                        z3 = false;
                                    }
                                    if (containsFlag(intValue, 4)) {
                                        z3 |= updateFMMLock(userId, false);
                                    }
                                    if (containsFlag(intValue, 8)) {
                                        z3 |= updateCarrierLock(userId);
                                    }
                                    if (containsFlag(intValue, 16)) {
                                        z3 |= updateBiometricsOptionState(userId);
                                    }
                                    if (containsFlag(intValue, 32)) {
                                        z3 |= updateSecureLockTimeout(userId);
                                    }
                                    if (containsFlag(intValue, 64)) {
                                        z3 |= updateBiometricLockTimeout(userId);
                                    }
                                    if (containsFlag(intValue, 1)) {
                                        if (!(updateCredentialType(userId) | updateFMMLock(userId, false) | updateCarrierLock(userId) | updatePermanentLock(userId)) && !updateBiometricsOptionState(userId)) {
                                            z5 = false;
                                        } else {
                                            z5 = true;
                                        }
                                        z3 |= z5;
                                        Intent intent = new Intent();
                                        intent.setAction("com.samsung.keyguard.CLEAR_LOCK");
                                        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(this.mContext);
                                        synchronized (localBroadcastManager.mReceivers) {
                                            String action = intent.getAction();
                                            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(localBroadcastManager.mAppContext.getContentResolver());
                                            Uri data = intent.getData();
                                            String scheme = intent.getScheme();
                                            Set<String> categories = intent.getCategories();
                                            if ((8 & intent.getFlags()) != 0) {
                                                z6 = true;
                                            } else {
                                                z6 = false;
                                            }
                                            if (z6) {
                                                intent.toString();
                                            }
                                            ArrayList arrayList3 = (ArrayList) localBroadcastManager.mActions.get(intent.getAction());
                                            if (arrayList3 != null) {
                                                if (z6) {
                                                    arrayList3.toString();
                                                }
                                                while (i5 < arrayList3.size()) {
                                                    LocalBroadcastManager.ReceiverRecord receiverRecord = (LocalBroadcastManager.ReceiverRecord) arrayList3.get(i5);
                                                    if (z6) {
                                                        Objects.toString(receiverRecord.filter);
                                                    }
                                                    if (receiverRecord.broadcasting) {
                                                        arrayList = arrayList3;
                                                    } else {
                                                        arrayList = arrayList3;
                                                        int match = receiverRecord.filter.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                                                        if (match >= 0) {
                                                            if (z6) {
                                                                Integer.toHexString(match);
                                                            }
                                                            if (arrayList2 == null) {
                                                                arrayList2 = new ArrayList();
                                                            }
                                                            arrayList2.add(receiverRecord);
                                                            receiverRecord.broadcasting = true;
                                                        }
                                                    }
                                                    i5++;
                                                    arrayList3 = arrayList;
                                                }
                                                if (arrayList2 != null) {
                                                    for (int i8 = 0; i8 < arrayList2.size(); i8++) {
                                                        ((LocalBroadcastManager.ReceiverRecord) arrayList2.get(i8)).broadcasting = false;
                                                    }
                                                    localBroadcastManager.mPendingBroadcasts.add(new LocalBroadcastManager.BroadcastRecord(intent, arrayList2));
                                                    if (!localBroadcastManager.mHandler.hasMessages(1)) {
                                                        localBroadcastManager.mHandler.sendEmptyMessage(1);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    if (containsFlag(intValue, 128)) {
                                        z4 = updateOwnerInfo(userId) | false;
                                    } else {
                                        z4 = false;
                                    }
                                    if (containsFlag(intValue, 256)) {
                                        z4 |= updateDeviceOwnerInfo();
                                    }
                                    ActionBarContextView$$ExternalSyntheticOutline0.m(KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m("handleSecureStateChanged secureState : ", intValue, " isSecureStateUpdated : ", z3, ", isOwnerInfoStateUpdated : "), z4, "KeyguardUpdateMonitor");
                                    if (z3) {
                                        str = null;
                                        dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7(1));
                                        updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_SECURE_STATE_UNLOCK_CHANGED);
                                    } else {
                                        str = null;
                                    }
                                    if (z2) {
                                        dispatchCallback(str, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11(this, 0));
                                    }
                                    if (z4) {
                                        dispatchCallback(str, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7(2));
                                        return;
                                    }
                                    return;
                                case VolteConstants.ErrorCode.CALL_SESSION_TIMEOUT /* 1103 */:
                                    dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7(1));
                                    return;
                                case VolteConstants.ErrorCode.CALL_STATUS_CONF_START_SESSION_FAILURE /* 1104 */:
                                    KeyguardSecurityModel.SecurityMode securityMode = (KeyguardSecurityModel.SecurityMode) message.obj;
                                    addAdditionalLog("handleSecurityViewChanged: securityMode " + securityMode);
                                    if (isForgotPasswordView()) {
                                        updateBiometricListeningState(1, FaceAuthUiEvent.FACE_AUTH_STOPPED_PREV_CREDENTIAL_VIEW);
                                    }
                                    dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda20(securityMode, 0));
                                    return;
                                case VolteConstants.ErrorCode.CALL_STATUS_CONF_ADD_USER_TO_SESSION_FAILURE /* 1105 */:
                                    callbacksRefreshCarrierInfo(null);
                                    return;
                                case VolteConstants.ErrorCode.CALL_STATUS_CONF_REMOVE_USER_FROM_SESSION_FAILURE /* 1106 */:
                                    dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7(6));
                                    return;
                                default:
                                    switch (i4) {
                                        case VolteConstants.ErrorCode.CALL_REJECT_REASON_USR_BUSY_CS_CALL /* 1108 */:
                                            if (isFaceDetectionRunning()) {
                                                stopListeningForFace(FaceAuthUiEvent.FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER);
                                            }
                                            dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7(4));
                                            return;
                                        case VolteConstants.ErrorCode.CALL_SWITCH_FAILURE /* 1109 */:
                                            boolean booleanValue = ((Boolean) message.obj).booleanValue();
                                            if (this.mIsQsFullyExpanded != booleanValue) {
                                                Log.d("KeyguardUpdateMonitor", "handleStatusBarState( prev:" + this.mIsQsFullyExpanded + "-> next:" + booleanValue + " )");
                                                this.mIsQsFullyExpanded = booleanValue;
                                                if (isUnlockCompleted()) {
                                                    if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY) {
                                                        i2 = 2;
                                                        updateFingerprintListeningState(2);
                                                    } else {
                                                        i2 = 2;
                                                    }
                                                    updateFaceListeningState(i2, FaceAuthUiEvent.FACE_AUTH_UPDATED_QS_FULLY_EXPANDED);
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case VolteConstants.ErrorCode.CALL_SWITCH_REJECTED /* 1110 */:
                                            SecFpMsg secFpMsg = (SecFpMsg) message.obj;
                                            int startTime = LogUtil.startTime(-1);
                                            int i9 = 0;
                                            while (true) {
                                                SecFpMsg secFpMsg2 = (SecFpMsg) this.mFpMessages.poll();
                                                if (secFpMsg2 != null) {
                                                    if (secFpMsg2 == secFpMsg) {
                                                        RecyclerView$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("handleFingerprintAuth fpMsg index = ", i9, " / type = "), secFpMsg.type, "KeyguardFingerprint");
                                                    }
                                                    switch (secFpMsg2.type) {
                                                        case 0:
                                                            int i10 = secFpMsg2.sequence;
                                                            int i11 = secFpMsg2.arg;
                                                            CharSequence charSequence2 = secFpMsg2.msgString;
                                                            if (this.mFingerprintAuthenticationSequence != i10) {
                                                                KeyguardSecPasswordViewController$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onAuthenticationError() - return, sequence error (", i10, "/"), this.mFingerprintAuthenticationSequence, ")", "KeyguardFingerprint");
                                                                break;
                                                            } else if (isTimerRunning()) {
                                                                Log.d("KeyguardFingerprint", "onAuthenticationError() - return, isTimerRunning is true");
                                                                break;
                                                            } else {
                                                                Log.d("KeyguardFingerprint", "onAuthenticationError()");
                                                                handleFingerprintError(i11, charSequence2.toString());
                                                                break;
                                                            }
                                                        case 1:
                                                            int i12 = secFpMsg2.sequence;
                                                            int i13 = secFpMsg2.arg;
                                                            CharSequence charSequence3 = secFpMsg2.msgString;
                                                            if (this.mFingerprintAuthenticationSequence != i12) {
                                                                KeyguardSecPasswordViewController$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onAuthenticationHelp() - return, sequence error (", i12, "/"), this.mFingerprintAuthenticationSequence, ")", "KeyguardFingerprint");
                                                                break;
                                                            } else if (isTimerRunning()) {
                                                                Log.d("KeyguardFingerprint", "onAuthenticationHelp() - return, isTimerRunning is true");
                                                                break;
                                                            } else {
                                                                Log.d("KeyguardFingerprint", "onAuthenticationHelp( helpMsgId = " + i13 + " , helpString = " + ((Object) charSequence3) + " )");
                                                                if (i13 != 1) {
                                                                    if (i13 != 2) {
                                                                        if (i13 != 3) {
                                                                            if (i13 != 5) {
                                                                                if (i13 == 1003) {
                                                                                    sendFingerprintSALog(DATA.DM_FIELD_INDEX.AMR_AUDIO_BITRATE_WB);
                                                                                }
                                                                            } else {
                                                                                sendFingerprintSALog(DATA.DM_FIELD_INDEX.PUBLIC_USER_ID);
                                                                            }
                                                                        } else {
                                                                            sendFingerprintSALog(DATA.DM_FIELD_INDEX.AMR_AUDIO_BITRATE);
                                                                        }
                                                                    } else {
                                                                        sendFingerprintSALog(DATA.DM_FIELD_INDEX.LBO_PCSCF_ADDRESS_TYPE);
                                                                    }
                                                                } else {
                                                                    sendFingerprintSALog("4");
                                                                }
                                                                handleFingerprintHelp(i13, charSequence3.toString());
                                                                break;
                                                            }
                                                        case 2:
                                                            int i14 = secFpMsg2.sequence;
                                                            FingerprintManager.AuthenticationResult authenticationResult = secFpMsg2.result;
                                                            if (this.mFingerprintAuthenticationSequence != i14) {
                                                                KeyguardSecPasswordViewController$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onAuthenticationSucceeded() - return, sequence error (", i14, "/"), this.mFingerprintAuthenticationSequence, ")", "KeyguardFingerprint");
                                                                break;
                                                            } else if (isTimerRunning()) {
                                                                Log.d("KeyguardFingerprint", "onAuthenticationSucceeded() - return, isTimerRunning is true");
                                                                break;
                                                            } else if (this.mKeyguardGoingAway) {
                                                                com.android.systemui.keyguard.Log.d("KeyguardFingerprint", "onAuthenticationSucceeded() - return, goingAway is true");
                                                                break;
                                                            } else {
                                                                boolean isUnlockingWithBiometricAllowed = isUnlockingWithBiometricAllowed(authenticationResult.isStrongBiometric());
                                                                final KeyguardFastBioUnlockController keyguardFastBioUnlockController = this.mFastUnlockController;
                                                                Objects.requireNonNull(keyguardFastBioUnlockController);
                                                                final int i15 = 1;
                                                                Rune.runIf(new Runnable() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda21
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        switch (i15) {
                                                                            case 0:
                                                                            default:
                                                                                keyguardFastBioUnlockController.setEnabled();
                                                                                return;
                                                                        }
                                                                    }
                                                                }, isUnlockingWithBiometricAllowed);
                                                                Trace.beginSection("KeyguardUpdateMonitor#onAuthenticationSucceeded");
                                                                com.android.systemui.keyguard.Log.d("KeyguardFingerprint", "onAuthenticationSucceeded()");
                                                                int biometricId = authenticationResult.getFingerprint().getBiometricId();
                                                                this.mBiometricId = biometricId;
                                                                Log.d("KeyguardFingerprint", "Fingerprint id : " + biometricId);
                                                                sendFingerprintSALog("1");
                                                                handleFingerprintAuthenticated(authenticationResult.getUserId(), authenticationResult.isStrongBiometric());
                                                                Rune.runIf((Runnable) new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8(this, 10), true);
                                                                Trace.endSection();
                                                                break;
                                                            }
                                                        case 3:
                                                            int i16 = secFpMsg2.sequence;
                                                            if (this.mFingerprintAuthenticationSequence != i16) {
                                                                KeyguardSecPasswordViewController$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onAuthenticationFailed() - return, sequence error (", i16, "/"), this.mFingerprintAuthenticationSequence, ")", "KeyguardFingerprint");
                                                                break;
                                                            } else if (isTimerRunning()) {
                                                                Log.d("KeyguardFingerprint", "onAuthenticationFailed() - return, isTimerRunning is true");
                                                                break;
                                                            } else {
                                                                Log.d("KeyguardFingerprint", "onAuthenticationFailed()");
                                                                sendFingerprintSALog("2");
                                                                requestActiveUnlock(ActiveUnlockConfig.ActiveUnlockRequestOrigin.BIOMETRIC_FAIL, "fingerprintFailure");
                                                                handleFingerprintAuthFailed();
                                                                break;
                                                            }
                                                        case 4:
                                                            int i17 = secFpMsg2.sequence;
                                                            int i18 = secFpMsg2.arg;
                                                            if (this.mFingerprintAuthenticationSequence != i17) {
                                                                KeyguardSecPasswordViewController$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onAuthenticationAcquired() - return, sequence error (", i17, "/"), this.mFingerprintAuthenticationSequence, ")", "KeyguardFingerprint");
                                                                break;
                                                            } else {
                                                                Log.d("KeyguardFingerprint", "onAuthenticationAcquired( " + i18 + "  )");
                                                                handleFingerprintAcquired(i18);
                                                                break;
                                                            }
                                                        case 5:
                                                            this.mUdfpsFingerDown = true;
                                                            int i19 = secFpMsg2.sequence;
                                                            if (this.mFingerprintAuthenticationSequence != i19) {
                                                                KeyguardSecPasswordViewController$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onUdfpsFingerDown() - return, sequence error (", i19, "/"), this.mFingerprintAuthenticationSequence, ")", "KeyguardFingerprint");
                                                                break;
                                                            } else {
                                                                Log.d("KeyguardFingerprint", "onUdfpsFingerDown()");
                                                                dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7(i6));
                                                                break;
                                                            }
                                                        case 6:
                                                            this.mUdfpsFingerDown = false;
                                                            int i20 = secFpMsg2.sequence;
                                                            if (this.mFingerprintAuthenticationSequence != i20) {
                                                                KeyguardSecPasswordViewController$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onUdfpsFingerUp() - return, sequence error (", i20, "/"), this.mFingerprintAuthenticationSequence, ")", "KeyguardFingerprint");
                                                                break;
                                                            } else {
                                                                Log.d("KeyguardFingerprint", "onUdfpsFingerUp()");
                                                                dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7(8));
                                                                break;
                                                            }
                                                    }
                                                    i9++;
                                                    i6 = 7;
                                                } else {
                                                    if (this.mFpMessages.size() > 0 && !this.mHandler.hasMessages(VolteConstants.ErrorCode.CALL_SWITCH_REJECTED)) {
                                                        Log.d("KeyguardFingerprint", "remained message size : " + this.mFpMessages.size());
                                                        this.mHandler.sendEmptyMessage(VolteConstants.ErrorCode.CALL_SWITCH_REJECTED);
                                                    }
                                                    LogUtil.endTime(startTime, "KeyguardFingerprint", MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("handleFingerprintAuth dispatchCount = ", i9), new Object[0]);
                                                    return;
                                                }
                                            }
                                            break;
                                        case VolteConstants.ErrorCode.CALL_HOLD_FAILED /* 1111 */:
                                            SecFaceMsg secFaceMsg = (SecFaceMsg) message.obj;
                                            int startTime2 = LogUtil.startTime(-1);
                                            int i21 = 0;
                                            while (true) {
                                                SecFaceMsg secFaceMsg2 = (SecFaceMsg) this.mFaceMessages.poll();
                                                if (secFaceMsg2 != null) {
                                                    if (secFaceMsg2 == secFaceMsg) {
                                                        RecyclerView$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("handleFaceAuth faceMsg index = ", i21, " / type = "), secFaceMsg.type, "KeyguardFace");
                                                    }
                                                    int i22 = secFaceMsg2.type;
                                                    if (i22 != 0) {
                                                        if (i22 != 1) {
                                                            if (i22 != 2) {
                                                                if (i22 != 3) {
                                                                    if (i22 == 4) {
                                                                        int i23 = secFaceMsg2.arg;
                                                                        if (!isFaceDetectionRunning()) {
                                                                            Log.d("KeyguardFace", "onAuthenticationAcquired(), Face is not running");
                                                                        } else {
                                                                            if (!this.mIsFaceReady) {
                                                                                this.mIsFaceReady = true;
                                                                            }
                                                                            ListPopupWindow$$ExternalSyntheticOutline0.m("onAuthenticationAcquired(), acquireInfo=", i23, "KeyguardFace");
                                                                            if (i23 != 2) {
                                                                                if (i23 != 3 && i23 != 4 && i23 != 5 && i23 != 6) {
                                                                                    switch (i23) {
                                                                                        case 1006:
                                                                                        case 1007:
                                                                                        case EnterpriseContainerCallback.CONTAINER_PACKAGE_UNINSTALL_SUCCESS /* 1008 */:
                                                                                        case EnterpriseContainerCallback.CONTAINER_PACKAGE_UNINSTALL_FAILURE /* 1009 */:
                                                                                            break;
                                                                                        default:
                                                                                            switch (i23) {
                                                                                            }
                                                                                    }
                                                                                }
                                                                                this.mTimeoutWithoutFace = false;
                                                                            } else {
                                                                                this.mTimeoutWithoutFace = true;
                                                                            }
                                                                            handleFaceAcquired(i23);
                                                                            if (this.mActiveUnlockConfig.faceAcquireInfoToTriggerBiometricFailOn.contains(Integer.valueOf(i23))) {
                                                                                requestActiveUnlock(ActiveUnlockConfig.ActiveUnlockRequestOrigin.BIOMETRIC_FAIL, "faceAcquireInfo-" + i23);
                                                                            }
                                                                        }
                                                                    }
                                                                } else if (!isFaceDetectionRunning()) {
                                                                    Log.d("KeyguardFace", "onAuthenticationFailed(), Face is not running");
                                                                } else {
                                                                    Log.d("KeyguardFace", "onAuthenticationFailed()");
                                                                    sendFaceSALog("2");
                                                                    if (this.mKeyguardBypassController.canBypass()) {
                                                                        str2 = "bypass";
                                                                    } else if (this.mAlternateBouncerShowing) {
                                                                        str2 = "alternateBouncer";
                                                                    } else if (this.mPrimaryBouncerFullyShown) {
                                                                        str2 = "bouncer";
                                                                    } else {
                                                                        str2 = "udfpsFpDown";
                                                                    }
                                                                    requestActiveUnlock(ActiveUnlockConfig.ActiveUnlockRequestOrigin.BIOMETRIC_FAIL, "faceFailure-".concat(str2));
                                                                    handleFaceAuthFailed();
                                                                }
                                                            } else {
                                                                SemBioFaceManager.AuthenticationResult authenticationResult2 = secFaceMsg2.result;
                                                                if (!isFaceDetectionRunning()) {
                                                                    Log.d("KeyguardFace", "onAuthenticationSucceeded(), Face is not running");
                                                                } else if (this.mKeyguardGoingAway) {
                                                                    com.android.systemui.keyguard.Log.d("KeyguardFace", "onAuthenticationSucceeded() - return, goingAway is true");
                                                                } else {
                                                                    boolean z10 = !((CentralSurfacesImpl) ((CentralSurfaces) Dependency.get(CentralSurfaces.class))).mBiometricUnlockController.mKeyguardBypassController.getLockStayEnabled();
                                                                    final KeyguardFastBioUnlockController keyguardFastBioUnlockController2 = this.mFastUnlockController;
                                                                    Objects.requireNonNull(keyguardFastBioUnlockController2);
                                                                    final int i24 = 0;
                                                                    Rune.runIf(new Runnable() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda21
                                                                        @Override // java.lang.Runnable
                                                                        public final void run() {
                                                                            switch (i24) {
                                                                                case 0:
                                                                                default:
                                                                                    keyguardFastBioUnlockController2.setEnabled();
                                                                                    return;
                                                                            }
                                                                        }
                                                                    }, z10);
                                                                    com.android.systemui.keyguard.Log.d("KeyguardFace", "onAuthenticationSucceeded()");
                                                                    setFaceAuthenticated(true);
                                                                    sendFaceSALog("1");
                                                                    handleFaceAuthenticated(0, authenticationResult2.isStrongBiometric());
                                                                    Rune.runIf((Runnable) new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8(this, 8), true);
                                                                }
                                                            }
                                                        } else {
                                                            int i25 = secFaceMsg2.arg;
                                                            CharSequence charSequence4 = secFaceMsg2.msgString;
                                                            if (!isFaceDetectionRunning()) {
                                                                Log.d("KeyguardFace", "onAuthenticationHelp(), Face is not running");
                                                            } else {
                                                                Log.d("KeyguardFace", "onAuthenticationHelp(), helpCode=" + i25 + ", helpString=" + ((Object) charSequence4));
                                                                handleFaceHelp(i25, charSequence4.toString());
                                                            }
                                                        }
                                                    } else {
                                                        int i26 = secFaceMsg2.arg;
                                                        CharSequence charSequence5 = secFaceMsg2.msgString;
                                                        if (charSequence5 == null) {
                                                            charSequence = null;
                                                        } else {
                                                            charSequence = charSequence5.toString();
                                                        }
                                                        handleFaceError(i26, charSequence);
                                                        if (this.mActiveUnlockConfig.faceErrorsToTriggerBiometricFailOn.contains(Integer.valueOf(i26))) {
                                                            requestActiveUnlock(ActiveUnlockConfig.ActiveUnlockRequestOrigin.BIOMETRIC_FAIL, "faceError-" + i26);
                                                        }
                                                    }
                                                    i21++;
                                                } else {
                                                    LogUtil.endTime(startTime2, "KeyguardFace", MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("handleFaceAuth dispatchCount = ", i21), new Object[0]);
                                                    return;
                                                }
                                            }
                                        case VolteConstants.ErrorCode.CALL_RESUME_FAILED /* 1112 */:
                                            dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10(((Boolean) message.obj).booleanValue(), 2));
                                            return;
                                        case VolteConstants.ErrorCode.CALL_TEMP_UNAVAILABLE_415_CAUSE /* 1113 */:
                                            Log.d("KeyguardUpdateMonitor", "forceStartFingerprintAuthentication");
                                            this.mForceStartFinger = true;
                                            updateFingerprintListeningState(2);
                                            return;
                                        default:
                                            switch (i4) {
                                                case VolteConstants.ErrorCode.CALL_BARRED_DUE_TO_SSAC /* 1116 */:
                                                    String str3 = (String) message.obj;
                                                    KnoxStateMonitor knoxStateMonitor = (KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class);
                                                    str3.getClass();
                                                    switch (str3.hashCode()) {
                                                        case 113042:
                                                            if (str3.equals("rmm")) {
                                                                c = 0;
                                                                break;
                                                            }
                                                            c = 65535;
                                                            break;
                                                        case 92668751:
                                                            if (str3.equals(EnterpriseContainerConstants.ADMIN_UID)) {
                                                                c = 1;
                                                                break;
                                                            }
                                                            c = 65535;
                                                            break;
                                                        case 94746189:
                                                            if (str3.equals("clear")) {
                                                                c = 2;
                                                                break;
                                                            }
                                                            c = 65535;
                                                            break;
                                                        case 166757441:
                                                            if (str3.equals("license")) {
                                                                c = 3;
                                                                break;
                                                            }
                                                            c = 65535;
                                                            break;
                                                        case 1574373273:
                                                            if (str3.equals("knoxguard")) {
                                                                c = 4;
                                                                break;
                                                            }
                                                            c = 65535;
                                                            break;
                                                        default:
                                                            c = 65535;
                                                            break;
                                                    }
                                                    if (c != 0) {
                                                        if (c != 1) {
                                                            if (c != 2) {
                                                                if (c != 3) {
                                                                    if (c == 4) {
                                                                        Bundle bundle = new Bundle();
                                                                        bundle.putCharSequence("customer_package_name", "com.samsung.android.calendar");
                                                                        bundle.putCharSequence("customer_app_name", "Samsung Calendar");
                                                                        this.mRemoteLockSimulationInfo = new RemoteLockInfo.Builder(3, true).setClientName("KnoxGuard Lockscreen").setBundle(bundle).setPhoneNumber("010-000-0000").setMessage("This is Knoxguard Lock Test Message.\n\n\n\n\nKG LOCK\n\n\n\n\nKnoxGuard Lockscreen").setSkipSupportContainer(false).setLockTimeOut(60000L).setAllowFailCount(5).build();
                                                                        try {
                                                                            this.mLockSettingsService.setRemoteLock(((UserTrackerImpl) this.mUserTracker).getUserId(), this.mRemoteLockSimulationInfo);
                                                                            return;
                                                                        } catch (RemoteException e2) {
                                                                            Log.d("KeyguardUpdateMonitor", "Failed setRemoteLock(KNOXGUARD)" + e2);
                                                                            return;
                                                                        }
                                                                    }
                                                                    return;
                                                                }
                                                                EdmMonitor edmMonitor = ((KnoxStateMonitorImpl) knoxStateMonitor).mEdmMonitor;
                                                                if (edmMonitor != null) {
                                                                    edmMonitor.setAdminLock(false, true);
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            EdmMonitor edmMonitor2 = ((KnoxStateMonitorImpl) knoxStateMonitor).mEdmMonitor;
                                                            if (edmMonitor2 != null) {
                                                                edmMonitor2.setAdminLock(false, false);
                                                            }
                                                            try {
                                                                RemoteLockInfo remoteLockInfo = this.mRemoteLockSimulationInfo;
                                                                if (remoteLockInfo != null) {
                                                                    remoteLockInfo.lockState = false;
                                                                    this.mLockSettingsService.setRemoteLock(((UserTrackerImpl) this.mUserTracker).getUserId(), this.mRemoteLockSimulationInfo);
                                                                    this.mRemoteLockSimulationInfo = null;
                                                                    return;
                                                                }
                                                                return;
                                                            } catch (RemoteException e3) {
                                                                Log.d("KeyguardUpdateMonitor", "Failed setRemoteLock" + e3);
                                                                return;
                                                            }
                                                        }
                                                        EdmMonitor edmMonitor3 = ((KnoxStateMonitorImpl) knoxStateMonitor).mEdmMonitor;
                                                        if (edmMonitor3 != null) {
                                                            edmMonitor3.setAdminLock(true, false);
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    this.mRemoteLockSimulationInfo = new RemoteLockInfo.Builder(2, true).setClientName("Samsung Lockscreen").setPhoneNumber("000-000-0000").setMessage("This is RMM Lock Test Message.").build();
                                                    try {
                                                        this.mLockSettingsService.setRemoteLock(((UserTrackerImpl) this.mUserTracker).getUserId(), this.mRemoteLockSimulationInfo);
                                                        return;
                                                    } catch (RemoteException e4) {
                                                        Log.d("KeyguardUpdateMonitor", "Failed setRemoteLock(RMM)" + e4);
                                                        return;
                                                    }
                                                case VolteConstants.ErrorCode.CALL_ENDED_BY_NW_HANDOVER_BEFORE_100_TRYING /* 1117 */:
                                                    String str4 = (String) message.obj;
                                                    KeyguardUnlockInfo.setUnlockTrigger(KeyguardUnlockInfo.UnlockTrigger.TRIGGER_SHELL);
                                                    if ("finger".equals(str4) || "face".equals(str4)) {
                                                        this.mFastUnlockController.setEnabled();
                                                    }
                                                    str4.getClass();
                                                    if (!str4.equals("finger")) {
                                                        if (!str4.equals("face")) {
                                                            ((ViewMediatorCallback) this.mViewMediatorCallbackLazy.get()).keyguardDone(((UserTrackerImpl) this.mUserTracker).getUserId());
                                                            return;
                                                        }
                                                        Log.d("KeyguardFace", "onAuthenticationSucceeded()");
                                                        setFaceAuthenticated(true);
                                                        handleFaceAuthenticated(0, false);
                                                        return;
                                                    }
                                                    Log.d("KeyguardFingerprint", "onAuthenticationSucceeded()");
                                                    handleFingerprintAuthenticated(0, false);
                                                    return;
                                                case VolteConstants.ErrorCode.CALL_TRANSFER_SUCCESS /* 1118 */:
                                                    String str5 = (String) message.obj;
                                                    Log.d("KeyguardUpdateMonitor", "handleFailToUnlockSimulation unlockType : " + str5);
                                                    str5.getClass();
                                                    if (!str5.equals("finger")) {
                                                        if (!str5.equals("face")) {
                                                            dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11(this, 3));
                                                            return;
                                                        } else {
                                                            Log.d("KeyguardFace", "onAuthenticationFailed()");
                                                            handleFaceAuthFailed();
                                                            return;
                                                        }
                                                    }
                                                    Log.d("KeyguardFingerprint", "onAuthenticationFailed()");
                                                    handleFingerprintAuthFailed();
                                                    return;
                                                case VolteConstants.ErrorCode.CALL_TRANSFER_FAILED /* 1119 */:
                                                    ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).updateSmartViewFitToActiveDisplay();
                                                    return;
                                                case VolteConstants.ErrorCode.CALL_CANCEL_TRANSFER_SUCCESS /* 1120 */:
                                                    updateFingerprintListeningState(2);
                                                    return;
                                                case VolteConstants.ErrorCode.CALL_CANCEL_TRANSFER_FAILED /* 1121 */:
                                                    updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_SUB_SCREEN);
                                                    return;
                                                case VolteConstants.ErrorCode.CALL_CANCEL_MODIFY_REQUESTED /* 1122 */:
                                                    int i27 = message.arg1;
                                                    if (message.arg2 == 1) {
                                                        z7 = true;
                                                    } else {
                                                        z7 = false;
                                                    }
                                                    handleDualDarInnerLockScreenStateChanged(i27, z7);
                                                    return;
                                                case VolteConstants.ErrorCode.CALL_END_REASON_TELEPHONY_NOT_RESPONDING /* 1123 */:
                                                    handleServiceStateChange(message.arg1, message.arg2, (ServiceState) message.obj);
                                                    return;
                                                default:
                                                    switch (i4) {
                                                        case VolteConstants.ErrorCode.PPP_STATUS_CLOSE_EVENT /* 1301 */:
                                                            final String str6 = (String) message.obj;
                                                            final int i28 = 2;
                                                            dispatchCallback(null, new Consumer() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda23
                                                                @Override // java.util.function.Consumer
                                                                public final void accept(Object obj) {
                                                                    switch (i28) {
                                                                        case 0:
                                                                            ((KeyguardUpdateMonitorCallback) obj).onPackageDataCleared(str6);
                                                                            return;
                                                                        case 1:
                                                                            ((KeyguardUpdateMonitorCallback) obj).onPackageChanged(str6);
                                                                            return;
                                                                        default:
                                                                            ((KeyguardUpdateMonitorCallback) obj).onPackageAdded(str6);
                                                                            return;
                                                                    }
                                                                }
                                                            });
                                                            return;
                                                        case VolteConstants.ErrorCode.PPP_OPEN_FAILURE /* 1302 */:
                                                            final int i29 = 1;
                                                            final String str7 = (String) message.obj;
                                                            dispatchCallback(null, new Consumer() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda23
                                                                @Override // java.util.function.Consumer
                                                                public final void accept(Object obj) {
                                                                    switch (i29) {
                                                                        case 0:
                                                                            ((KeyguardUpdateMonitorCallback) obj).onPackageDataCleared(str7);
                                                                            return;
                                                                        case 1:
                                                                            ((KeyguardUpdateMonitorCallback) obj).onPackageChanged(str7);
                                                                            return;
                                                                        default:
                                                                            ((KeyguardUpdateMonitorCallback) obj).onPackageAdded(str7);
                                                                            return;
                                                                    }
                                                                }
                                                            });
                                                            return;
                                                        case 1303:
                                                            String str8 = (String) message.obj;
                                                            if (message.arg1 == 1) {
                                                                z8 = true;
                                                            } else {
                                                                z8 = false;
                                                            }
                                                            handlePackageRemoved(str8, z8);
                                                            return;
                                                        default:
                                                            switch (i4) {
                                                                case 1305:
                                                                    final String str9 = (String) message.obj;
                                                                    if (KnoxVpnPolicyConstants.ANDROID_SETTINGS_PKG.equals(str9)) {
                                                                        this.mSettingsHelper.readSettingsDB();
                                                                    }
                                                                    final int i30 = 0;
                                                                    dispatchCallback(null, new Consumer() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda23
                                                                        @Override // java.util.function.Consumer
                                                                        public final void accept(Object obj) {
                                                                            switch (i30) {
                                                                                case 0:
                                                                                    ((KeyguardUpdateMonitorCallback) obj).onPackageDataCleared(str9);
                                                                                    return;
                                                                                case 1:
                                                                                    ((KeyguardUpdateMonitorCallback) obj).onPackageChanged(str9);
                                                                                    return;
                                                                                default:
                                                                                    ((KeyguardUpdateMonitorCallback) obj).onPackageAdded(str9);
                                                                                    return;
                                                                            }
                                                                        }
                                                                    });
                                                                    return;
                                                                case 1306:
                                                                    dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9(((Integer) message.obj).intValue(), 3));
                                                                    return;
                                                                case 1307:
                                                                    if (Build.IS_USERDEBUG || Build.IS_ENG) {
                                                                        PluginFaceWidgetManager pluginFaceWidgetManager = (PluginFaceWidgetManager) this.mPluginFaceWidgetManagerLazy.get();
                                                                        pluginFaceWidgetManager.mPluginManager.removePluginListener(pluginFaceWidgetManager);
                                                                        pluginFaceWidgetManager.mPluginManager.addPluginListener(PluginKeyguardStatusView.ACTION, pluginFaceWidgetManager, PluginKeyguardStatusView.class, false, true, 0);
                                                                        return;
                                                                    }
                                                                    return;
                                                                default:
                                                                    switch (i4) {
                                                                        case VolteConstants.ErrorCode.RTP_TIME_OUT /* 1401 */:
                                                                            handleLocaleChanged();
                                                                            return;
                                                                        case 1402:
                                                                            boolean booleanValue2 = ((Boolean) message.obj).booleanValue();
                                                                            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("handleDlsBiometricMode(), enabled=", booleanValue2, "KeyguardUpdateMonitor");
                                                                            if (this.mIsDynamicLockViewMode != booleanValue2) {
                                                                                this.mIsDynamicLockViewMode = booleanValue2;
                                                                                if (isFingerprintOptionEnabled()) {
                                                                                    i3 = 2;
                                                                                    updateFingerprintListeningState(2);
                                                                                } else {
                                                                                    i3 = 2;
                                                                                }
                                                                                if (isFaceOptionEnabled()) {
                                                                                    updateFaceListeningState(i3, FaceAuthUiEvent.FACE_AUTH_UPDATED_DYNAMIC_LOCK);
                                                                                    return;
                                                                                }
                                                                                return;
                                                                            }
                                                                            return;
                                                                        case 1403:
                                                                            handleDlsViewMode(((Integer) message.obj).intValue());
                                                                            return;
                                                                        default:
                                                                            return;
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                                    break;
                            }
                    }
                } else {
                    handleUpdateCoverState((CoverState) message.obj);
                }
            } else {
                if (message.arg1 == 1) {
                    z = true;
                } else {
                    z = false;
                }
                handlePrimaryBouncerVisibilityChanged(z);
            }
        } else {
            boolean booleanValue3 = ((Boolean) message.obj).booleanValue();
            if (this.mIsNotiStarShown != booleanValue3) {
                Log.d("KeyguardUpdateMonitor", "handleNotiStarState( prev:" + this.mIsNotiStarShown + "-> next:" + booleanValue3 + " )");
                this.mIsNotiStarShown = booleanValue3;
                if (!((DesktopManagerImpl) ((DesktopManager) this.mDesktopManagerLazy.get())).isDesktopMode() && isUnlockCompleted()) {
                    if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY) {
                        i = 2;
                        updateFingerprintListeningState(2);
                    } else {
                        i = 2;
                    }
                    updateFaceListeningState(i, FaceAuthUiEvent.FACE_AUTH_UPDATED_NOTI_STAR_STATE_CHANGED);
                }
            }
        }
    }

    public final void handleServiceStateChange(int i, int i2, ServiceState serviceState) {
        boolean z;
        StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("handleServiceStateChange(subId=", i, ", slotId=", i2, ", serviceState=");
        m.append(serviceState);
        Log.d("KeyguardUpdateMonitor", m.toString());
        if (LsRune.SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE) {
            this.mServiceStatesBySlotId.put(Integer.valueOf(i2), serviceState);
            Iterator it = this.mServiceStatesBySlotId.entrySet().iterator();
            while (true) {
                z = true;
                if (!it.hasNext()) {
                    break;
                }
                ServiceState serviceState2 = (ServiceState) ((Map.Entry) it.next()).getValue();
                if (serviceState2 == null || ((serviceState2.getVoiceRegState() == 1 || serviceState2.getVoiceRegState() == 3) && (serviceState2.getVoiceRegState() != 1 || !serviceState2.isEmergencyOnly()))) {
                }
            }
            z = false;
            if (this.mIsOutOfService != z) {
                this.mIsOutOfService = z;
                Log.d("KeyguardUpdateMonitor", "updateOfflineState isOutOfService : " + this.mIsOutOfService);
                dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7(5));
            }
        }
        super.handleServiceStateChange(i, serviceState);
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handleSimStateChange(int i, int i2, int i3) {
        super.handleSimStateChange(i, i2, i3);
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handleStartedGoingToSleep(int i) {
        if (LsRune.SECURITY_BACKGROUND_AUTHENTICATION) {
            this.mIsFPCanceledByForegroundApp = false;
        }
        this.mIsShortcutLaunchInProgress = false;
        this.mIsFaceWidgetFullScreenMode = false;
        this.mIsStartFacePossible = false;
        if (LsRune.SECURITY_SUB_DISPLAY_COVER) {
            this.mForceStartFinger = false;
            this.mNeedSubBioAuth = false;
        }
        setFaceAuthenticated(false);
        if (LsRune.SECURITY_ESIM) {
            clearESimRemoved();
        }
        setUnlockingKeyguard(false);
        super.handleStartedGoingToSleep(i);
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handleStartedWakingUp(int i) {
        if (LsRune.SECURITY_SUB_DISPLAY_COVER) {
            this.mNeedSubWofFpAuth = false;
        }
        if (this.mPhoneState == 0) {
            this.mIsFPCanceledByProximity = false;
        }
        super.handleStartedWakingUp(i);
    }

    public final void handleUpdateCoverState(CoverState coverState) {
        dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda20(coverState, 1));
        if (isCoverClosed()) {
            if (getIsFaceAuthenticated()) {
                setFaceAuthenticated(false);
            }
        } else if (!isKeyguardVisible() && !this.mDeviceInteractive) {
            Log.d("KeyguardUpdateMonitor", "handleUpdateCoverState did not call updateBiometricListeningState");
            return;
        }
        updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_COVER_STATE_CHANGED);
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handleUserSwitchComplete(int i) {
        SettingsHelper settingsHelper = this.mSettingsHelper;
        settingsHelper.mResolver.unregisterContentObserver(settingsHelper.mSettingsObserver);
        settingsHelper.readSettingsDB();
        Thread thread = new Thread(new SettingsHelper$$ExternalSyntheticLambda0(settingsHelper, 1), "onUserSwitched");
        thread.setPriority(5);
        thread.start();
        if ((updateCredentialType(i) | updateFMMLock(i, false) | updateCarrierLock(i) | updatePermanentLock(i) | updateSecureLockTimeout(i) | updateBiometricLockTimeout(i)) || updateBiometricsOptionState(i)) {
            dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7(1));
        }
        if (updateLockscreenDisabled(i)) {
            dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda11(this, 0));
        }
        if (updateOwnerInfo(i) | false | updateDeviceOwnerInfo()) {
            dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7(2));
        }
        updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_USER_SWITCHING);
        DevicePolicyManager devicePolicyManager = this.mDevicePolicyManager;
        if (devicePolicyManager != null) {
            this.mDisableCamera = devicePolicyManager.getCameraDisabled(null, i);
            this.mMaximumFailedPasswordsForWipe = this.mDevicePolicyManager.getMaximumFailedPasswordsForWipe(null, i);
        }
        super.handleUserSwitchComplete(i);
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void handleUserUnlocked(int i) {
        Assert.isMainThread();
        Log.i("KeyguardUpdateMonitor", "handleUserUnlocked(" + i + ")");
        this.mUserIsUnlocked.put(i, true);
        this.mNeedsSlowUnlockTransition = resolveNeedsSlowUnlockTransition();
        if (LsRune.KEYGUARD_FBE) {
            updateUserUnlockNotification(i);
        }
        updateFMMLock(((UserTrackerImpl) this.mUserTracker).getUserId(), true);
        updateDualDARInnerLockscreenRequirement(i);
        dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7(13));
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean hasLockscreenWallpaper() {
        return this.mHasLockscreenWallpaper;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean hasRedactedNotifications() {
        return this.mHasRedactedNotifications;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean is2StepVerification() {
        return ((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isMultifactorAuthEnforced();
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isActiveDismissAction() {
        if (this.mKeyguardDismissActionType != KeyguardConstants$KeyguardDismissActionType.KEYGUARD_DISMISS_ACTION_DEFAULT) {
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isAllSimState() {
        Iterator it = this.mSimDatas.values().iterator();
        while (it.hasNext()) {
            if (((KeyguardUpdateMonitor.SimData) it.next()).simState != 1) {
                return false;
            }
        }
        return true;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isAllSlotEmergencyOnly() {
        Iterator it;
        HashMap hashMap = this.mServiceStates;
        if (hashMap == null || (it = hashMap.keySet().iterator()) == null) {
            return false;
        }
        boolean z = true;
        while (it.hasNext()) {
            ServiceState serviceState = (ServiceState) this.mServiceStates.get((Integer) it.next());
            if (serviceState != null) {
                this.mLogger.d("serviceState = " + serviceState);
                if (serviceState.getVoiceRegState() != 1 || !serviceState.isEmergencyOnly()) {
                    z = false;
                }
            }
        }
        return z;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isAuthenticatedWithBiometric(int i) {
        if (!getFingerprintAuthenticated(i) && !getFaceAuthenticated(i)) {
            return false;
        }
        return true;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isAutoWipe() {
        boolean z;
        if (this.mFMMLock || this.mMaximumFailedPasswordsForWipe > 0) {
            return false;
        }
        if (this.mSettingsHelper.mItemLists.get("auto_swipe_main_user").getIntValue() == 1) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isBiometricErrorLockoutPermanent() {
        if (!this.mFingerprintLockedOutPermanent && !this.mFaceLockedOutPermanent) {
            return false;
        }
        return true;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isBiometricsAuthenticatedOnLock() {
        if (isFaceOptionEnabled() && this.mSettingsHelper.isEnabledFaceStayOnLock() && getIsFaceAuthenticated()) {
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isBouncerFullyShown() {
        return this.mPrimaryBouncerFullyShown;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isCameraDisabledByPolicy() {
        boolean z;
        EdmMonitor edmMonitor = ((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).mEdmMonitor;
        if (edmMonitor != null && edmMonitor.mIsCameraDisabledByMdm && !edmMonitor.mIsFaceRecognitionAllowedEvenCameraBlocked) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return true;
        }
        return this.mDisableCamera;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isCarrierLock() {
        return this.mCarrierLock;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isCoverClosed() {
        synchronized (this) {
            CoverState coverState = this.mCoverState;
            boolean z = false;
            if (coverState == null || !coverState.attached) {
                return false;
            }
            if (!coverState.getSwitchState()) {
                z = true;
            }
            return z;
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isDeviceOwnerInfoEnabled() {
        return !TextUtils.isEmpty(this.mDeviceOwnerInfoText);
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isDismissActionExist() {
        return this.mIsDismissActionExist;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isDualDarInnerAuthRequired(int i) {
        return this.mIsDualDarInnerAuthRequired;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isDualDarInnerAuthShowing() {
        return this.mIsDualDarInnerAuthShowing;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isDualDisplayPolicyAllowed() {
        if (LsRune.SECURITY_SUB_DISPLAY_LOCK && ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened && !DeviceState.isSmartViewFitToActiveDisplay()) {
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isESimEmbedded() {
        Iterator it = ((ArrayList) getSubscriptionInfo(false)).iterator();
        while (it.hasNext()) {
            if (((SubscriptionInfo) it.next()).isEmbedded()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isESimRemoveButtonClicked() {
        for (boolean z : this.mESimRemoved) {
            if (z) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isEarlyWakeUp() {
        return this.mIsEarlyWakeUp;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isEnabledWof() {
        if (!LsRune.SUPPORT_LARGE_FRONT_SUB_DISPLAY && !LsRune.SECURITY_SUB_DISPLAY_LOCK) {
            return this.mSettingsHelper.isEnabledWof();
        }
        return isEnabledWofOnFold();
    }

    public final boolean isEnabledWofOnFold() {
        if (!this.mSettingsHelper.isEnabledWof()) {
            return false;
        }
        int intValue = this.mSettingsHelper.mItemLists.get("fingerprint_always_on_type").getIntValue();
        if (intValue != 1) {
            if (intValue != 2) {
                if (intValue != 3) {
                    return false;
                }
                return true;
            }
            return ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened;
        }
        return !((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isFMMLock() {
        return this.mFMMLock;
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final boolean isFaceAuthEnabledForUser(int i) {
        if (isFaceOptionEnabled()) {
            return !isForcedLock();
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isFaceOptionEnabled() {
        if (SafeUIState.isSysUiSafeModeEnabled()) {
            return false;
        }
        return this.mBiometricsFace.get(((UserTrackerImpl) this.mUserTracker).getUserId());
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final boolean isFingerprintDisabled(int i) {
        DevicePolicyManager devicePolicyManager = (DevicePolicyManager) this.mContext.getSystemService("device_policy");
        if ((devicePolicyManager != null && (devicePolicyManager.getKeyguardDisabledFeatures(null, i) & 32) != 0) || isSimPinSecure()) {
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isFingerprintDisabledWithBadQuality() {
        if (this.mFingerPrintBadQualityCounts.get(((UserTrackerImpl) this.mUserTracker).getUserId(), 0) < 50) {
            return false;
        }
        return true;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isFingerprintLeave() {
        return this.mIsFpLeave;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isFingerprintOptionEnabled() {
        if (SafeUIState.isSysUiSafeModeEnabled()) {
            return false;
        }
        return this.mBiometricsFingerprint.get(((UserTrackerImpl) this.mUserTracker).getUserId());
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isForcedLock() {
        if (MdfUtils.isMdfDisabled()) {
            Log.d("KeyguardUpdateMonitor", "Prevent the Biometric from unlocking because CC mode is disabled.");
            return true;
        }
        if (isSimPinSecure() || isRemoteLock() || this.mPermanentLock) {
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isForgotPasswordView() {
        if (this.mCurrentSecurityMode == KeyguardSecurityModel.SecurityMode.ForgotPassword) {
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isFullscreenBouncer() {
        return SecurityUtils.checkFullscreenBouncer(this.mCurrentSecurityMode);
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isHiddenInputContainer() {
        if (!this.mPermanentLock && (getLockoutAttemptDeadline() <= 0 || isForgotPasswordView())) {
            return false;
        }
        return true;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isIccBlockedPermanently() {
        boolean z;
        int nextSubIdForState = getNextSubIdForState(7);
        SubscriptionInfo subscriptionInfoForSubId = getSubscriptionInfoForSubId(nextSubIdForState);
        boolean z2 = false;
        if (subscriptionInfoForSubId != null) {
            z = subscriptionInfoForSubId.isEmbedded();
        } else {
            z = false;
        }
        if (SubscriptionManager.isValidSubscriptionId(nextSubIdForState) && !z) {
            z2 = true;
        }
        this.mSimDisabledPermanently = z2;
        return z2;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isInDisplayFingerprintMarginAccepted() {
        if ((is2StepVerification() || super.isUnlockingWithBiometricAllowed(true)) && LsRune.SECURITY_FINGERPRINT_IN_DISPLAY && isFingerprintOptionEnabled() && this.mCurrentSecurityMode != KeyguardSecurityModel.SecurityMode.Swipe && !isFullscreenBouncer() && !DeviceState.isSmartViewDisplayWithFitToAspectRatio(this.mContext) && !isForgotPasswordView()) {
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isKeyguardUnlocking() {
        if (!this.mKeyguardGoingAway && !this.mKeyguardUnlocking) {
            return false;
        }
        return true;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isKidsModeRunning() {
        return this.mIsKidsModeRunning;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isLockscreenDisabled() {
        if (isSecure()) {
            return false;
        }
        return this.mLockscreenDisabled;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isMaxFailedBiometricUnlockAttempts(int i) {
        if (getFailedBiometricUnlockAttempts(i) >= 20) {
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isMaxFailedBiometricUnlockAttemptsShort() {
        int failedBiometricUnlockAttempts = getFailedBiometricUnlockAttempts(((UserTrackerImpl) this.mUserTracker).getUserId());
        if (failedBiometricUnlockAttempts == 0 || failedBiometricUnlockAttempts % 5 != 0) {
            return false;
        }
        return true;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isOutOfService() {
        return this.mIsOutOfService;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isOwnerInfoEnabled() {
        return this.mIsOwnerInfoEnabled;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isPerformingWipeOut() {
        int failedUnlockAttempts = getFailedUnlockAttempts(((UserTrackerImpl) this.mUserTracker).getUserId());
        boolean isAutoWipe = isAutoWipe();
        int i = this.mMaximumFailedPasswordsForWipe;
        if (i <= 0) {
            if (isAutoWipe) {
                i = 20;
            } else {
                i = 0;
            }
        }
        if (failedUnlockAttempts == 0 || i == 0 || failedUnlockAttempts != i) {
            return false;
        }
        return true;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isPermanentLock() {
        return this.mPermanentLock;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isRearSelfie() {
        return this.mIsRearSelfie;
    }

    public final boolean isRemoteLock() {
        if (!this.mFMMLock && !this.mCarrierLock && !isRemoteLockEnabled() && !((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isAdminLockEnabled()) {
            return false;
        }
        return true;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isRemoteLockEnabled() {
        if (this.mActiveRemoteLockIndex >= 0) {
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isRemoteLockMode() {
        switch (SecurityUtils.AnonymousClass1.$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[this.mCurrentSecurityMode.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isScreenOffMemoRunning() {
        return this.mIsRunningBlackMemo;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isScreenOn() {
        return ((ViewMediatorCallback) this.mViewMediatorCallbackLazy.get()).isScreenOn();
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isSecure() {
        return isSecure(KeyguardUpdateMonitor.getCurrentUser());
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isShortcutLaunchInProgress() {
        return this.mIsShortcutLaunchInProgress;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isSimDisabledPermanently() {
        return this.mSimDisabledPermanently;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isSimPinPassed(int i, int i2) {
        if (i2 != 2 && i2 != 3 && i2 != 12) {
            return false;
        }
        if (i >= 0 && i <= 1) {
            return this.mSimPinPassed[i];
        }
        IconCompat$$ExternalSyntheticOutline0.m("isSimPinPassed  Slot Boundary Exception SlotNum: ", i, "KeyguardUpdateMonitor");
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isSimState(int i) {
        Iterator it = ((ArrayList) getSubscriptionInfo(false)).iterator();
        while (it.hasNext()) {
            if (getSimState(((SubscriptionInfo) it.next()).getSubscriptionId()) == i) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isTimerRunning() {
        if (getLockoutBiometricAttemptDeadline() + getLockoutAttemptDeadline() != 0) {
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final boolean isUdfpsEnrolled() {
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isUdfpsFingerDown() {
        return this.mUdfpsFingerDown;
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final boolean isUdfpsSupported() {
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isUnlockCompleted() {
        if (is2StepVerification()) {
            return true;
        }
        return this.mStrongAuthTracker.hasUserAuthenticatedSinceBoot();
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final boolean isUnlockingWithBiometricAllowed(boolean z) {
        boolean z2;
        if (!is2StepVerification()) {
            KeyguardUpdateMonitor.StrongAuthTracker strongAuthTracker = this.mStrongAuthTracker;
            strongAuthTracker.getClass();
            if (!strongAuthTracker.isBiometricAllowedForUser(z, KeyguardUpdateMonitor.getCurrentUser())) {
                return false;
            }
        }
        if (this.mDisabledBiometricBySecurityDialog || getLockoutBiometricAttemptDeadline() > 0) {
            return false;
        }
        if (this.mSettingsHelper.mItemLists.get("ultra_powersaving_mode").getIntValue() == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            return false;
        }
        return true;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isUpdateSecurityMessage() {
        if (!isAuthenticatedWithBiometric(((UserTrackerImpl) this.mUserTracker).getUserId()) && getLockoutAttemptDeadline() == 0 && !isKeyguardUnlocking()) {
            return true;
        }
        return false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isUserUnlocked() {
        int userId = ((UserTrackerImpl) this.mUserTracker).getUserId();
        boolean isUserUnlocked = isUserUnlocked(userId);
        LogUtil.d("KeyguardUpdateMonitor", "isUserUnlocked userId:%s, unlocked:%s", Integer.valueOf(userId), Boolean.valueOf(isUserUnlocked));
        return isUserUnlocked;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void notifyFailedUnlockAttemptChanged() {
        dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7(9));
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void notifyStrongAuthAllowedChanged(int i) {
        boolean z = false;
        if (isUserInLockdown(i)) {
            setKeyguardGoingAway(false);
        }
        super.notifyStrongAuthAllowedChanged(i);
        if (!isUnlockingWithBiometricAllowed(getFaceStrongBiometric())) {
            clearBiometricRecognized();
            setFaceAuthenticated(false);
        }
        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY && isFingerprintOptionEnabled()) {
            KeyguardUpdateMonitor.BiometricAuthenticated biometricAuthenticated = this.mUserFingerprintAuthenticated.get(((UserTrackerImpl) this.mUserTracker).getUserId());
            if (biometricAuthenticated != null && biometricAuthenticated.mIsStrongBiometric) {
                z = true;
            }
            setFodStrictMode(!isUnlockingWithBiometricAllowed(z));
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void onLockIconPressed() {
        int userId = ((UserTrackerImpl) this.mUserTracker).getUserId();
        this.mUserFaceAuthenticated.put(userId, null);
        updateFaceListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_LOCK_ICON_PRESSED);
        this.mStrongAuthTracker.onStrongAuthRequiredChanged(userId);
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void registerCallback(KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback) {
        if (!this.mIsDispatching) {
            super.registerCallback(keyguardUpdateMonitorCallback);
        } else {
            throw new IllegalStateException("do not add or remove a listener on dispatching: " + keyguardUpdateMonitorCallback);
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void registerPreCallback(BiometricUnlockController biometricUnlockController) {
        Assert.isMainThread();
        Objects.toString(biometricUnlockController);
        for (int i = 0; i < this.mCallbacks.size(); i++) {
            if (((WeakReference) this.mCallbacks.get(i)).get() == biometricUnlockController) {
                Log.e("KeyguardUpdateMonitor", "Object tried to add another callback", new Exception("Called by"));
                return;
            }
        }
        if (this.mCallbacks.size() > 0) {
            this.mCallbacks.add(0, new WeakReference(biometricUnlockController));
        } else {
            this.mCallbacks.add(new WeakReference(biometricUnlockController));
        }
        removeCallback(null);
        sendUpdates(biometricUnlockController);
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void removeCallback(KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback) {
        if (!this.mIsDispatching) {
            super.removeCallback(keyguardUpdateMonitorCallback);
        } else {
            throw new IllegalStateException("do not add or remove a listener on dispatching: " + keyguardUpdateMonitorCallback);
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void removeESim(int i) {
        int slotId = getSlotId(i);
        if (slotId == 0 || slotId == 1) {
            this.mESimRemoved[slotId] = true;
        }
        super.handleSimStateChange(i, slotId, 0);
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void removeMaskViewForOpticalFpSensor() {
        if (this.mFpm != null && this.mFpMaskToken != null) {
            Log.d("KeyguardFingerprint", "semRemoveMaskView()");
            this.mFpm.semRemoveMaskView(this.mFpMaskToken);
            this.mFpMaskToken = null;
        }
    }

    public final void reportFailedBiometricUnlockAttempt(int i) {
        int failedBiometricUnlockAttempts = getFailedBiometricUnlockAttempts(i) + 1;
        NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0.m("reportFailedBiometricUnlockAttempt ( failedBiometricUnlockAttempts = ", failedBiometricUnlockAttempts, " )", "KeyguardUpdateMonitor");
        this.mBiometricFailedAttempts.put(i, failedBiometricUnlockAttempts);
        if (failedBiometricUnlockAttempts >= 20) {
            Log.d("KeyguardUpdateMonitor", "reportFailedBiometricUnlockAttempt ( too many failed. )");
            this.mLockPatternUtils.requireStrongAuth(2, i);
        } else if (failedBiometricUnlockAttempts != 0 && failedBiometricUnlockAttempts % 5 == 0) {
            this.mLockPatternUtils.setBiometricAttemptDeadline(i, 30000);
            long elapsedRealtime = SystemClock.elapsedRealtime() + 30000;
            if (updateSecureLockTimeout(i) || updateBiometricLockTimeout(i)) {
                dispatchLockModeChanged();
            }
            updateBiometricListeningState(1, FaceAuthUiEvent.FACE_AUTH_UPDATED_BIOMETRIC_LOCKOUT_DEADLINE);
            Intent intent = new Intent("com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET");
            intent.addFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
            PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, 0, intent, 335544320);
            Log.d("KeyguardFingerprint", "setting Biometric lockout alarm !!");
            this.mAlarmManager.setExact(2, elapsedRealtime, broadcast);
            dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7(12));
        }
        if (MdfUtils.isMdfEnforced() && failedBiometricUnlockAttempts >= 10) {
            Log.d("KeyguardUpdateMonitor", "MDF : reportFailedBiometricUnlockAttempt ( too many failures. )");
            this.mLockPatternUtils.requireStrongAuth(2, i);
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void requestSessionClose() {
        if (isFingerprintOptionEnabled()) {
            Log.d("KeyguardFingerprint", "requestSessionClose() - isFingerprintDetectionRunning : " + isFingerprintDetectionRunning());
            if (isFingerprintDetectionRunning()) {
                if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL) {
                    removeMaskViewForOpticalFpSensor();
                }
                stopListeningForFingerprint();
            } else {
                CancellationSignal cancellationSignal = this.mFingerprintCancelSignal;
                if (cancellationSignal != null) {
                    cancellationSignal.cancel();
                    this.mFingerprintCancelSignal = null;
                }
            }
        }
        ((UiOffloadThread) Dependency.get(UiOffloadThread.class)).execute(new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8(this, 9));
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void resetSimPinPassed(int i) {
        if (i >= 0 && i <= 1) {
            boolean[] zArr = this.mSimPinPassed;
            if (zArr[i]) {
                zArr[i] = false;
                return;
            }
            return;
        }
        IconCompat$$ExternalSyntheticOutline0.m("resetSimPinPassed  Slot Boundary Exception SlotNum: ", i, "KeyguardUpdateMonitor");
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void runSystemUserOnly(Runnable runnable) {
        runSystemUserOnly(runnable, null);
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void sendBiometricUnlockState(BiometricSourceType biometricSourceType) {
        Intent intent = new Intent();
        int i = AnonymousClass9.$SwitchMap$android$hardware$biometrics$BiometricSourceType[biometricSourceType.ordinal()];
        if (i != 1) {
            if (i == 2) {
                intent.setAction("com.samsung.keyguard.FACE_UNLOCK_STATE");
            }
        } else {
            intent.setAction("com.samsung.keyguard.FINGERPRINT_UNLOCK_STATE").putExtra("biometricId", this.mBiometricId);
        }
        if (intent.getAction() != null) {
            this.mBackgroundExecutor.execute(new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14(this, biometricSourceType, 0, intent));
        }
    }

    public final void sendFaceSALog(String str) {
        String str2;
        String str3;
        if (this.mPrimaryBouncerFullyShown) {
            str2 = DATA.DM_FIELD_INDEX.VOLTE_DOMAIN_UI_SHOW;
            str3 = "1095";
        } else {
            str2 = DATA.DM_FIELD_INDEX.UT_APN_NAME;
            str3 = "1094";
        }
        sendSALog(str2, str3, str);
    }

    public final void sendFingerprintSALog(String str) {
        String str2;
        String str3;
        String str4 = LsRune.VALUE_CONFIG_CARRIER_TEXT_POLICY;
        if (!this.mDeviceInteractive) {
            str2 = "301";
            str3 = "1098";
        } else if (this.mPrimaryBouncerFullyShown) {
            str2 = DATA.DM_FIELD_INDEX.VOLTE_DOMAIN_UI_SHOW;
            str3 = "1097";
        } else {
            str2 = DATA.DM_FIELD_INDEX.UT_APN_NAME;
            str3 = "1096";
        }
        sendSALog(str2, str3, str);
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void sendKeyguardStateUpdated(final boolean z, final boolean z2, final boolean z3, final boolean z4) {
        StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("sendKeyguardStateUpdated(", z, ", ", z2, ", ");
        m.append(z3);
        m.append(", ");
        m.append(z4);
        m.append(")");
        Log.d("KeyguardUpdateMonitor", m.toString());
        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY && !this.mKeyguardShowing && z) {
            this.mHandler.postDelayed(this.mWaitingFocusRunnable, 500L);
        }
        this.mBackgroundExecutor.execute(new Runnable() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl = KeyguardSecUpdateMonitorImpl.this;
                boolean z5 = z;
                boolean z6 = z2;
                boolean z7 = z3;
                boolean z8 = z4;
                keyguardSecUpdateMonitorImpl.getClass();
                Intent intent = new Intent("com.samsung.keyguard.KEYGUARD_STATE_UPDATE");
                intent.putExtra("showing", z5);
                intent.putExtra("occluded", z6);
                intent.putExtra("bouncerShowing", z7);
                intent.putExtra("bouncerModeChanging", z8);
                intent.putExtra("timeStamp", System.currentTimeMillis());
                Log.d("KeyguardUpdateMonitor", "broadcast intent= " + intent);
                keyguardSecUpdateMonitorImpl.mContext.sendBroadcast(intent);
            }
        });
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void sendPrimaryBouncerVisibilityChanged(boolean z) {
        Message obtainMessage = this.mHandler.obtainMessage(VolteConstants.ErrorCode.CALL_INVITE_TIMEOUT_NR);
        obtainMessage.arg1 = z ? 1 : 0;
        obtainMessage.sendToTarget();
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void setBackDropViewShowing(final boolean z, final boolean z2) {
        Assert.isMainThread();
        dispatchCallback(null, new Consumer() { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda27
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((KeyguardUpdateMonitorCallback) obj).onBackDropViewShowing(z, z2);
            }
        });
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void setCredentialAttempted() {
        this.mCredentialAttempted = true;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void setDisableBiometricBySecurityDialog(boolean z) {
        Log.d("KeyguardFingerprint", "setDisableBiometricBySecurityDialog( " + z + " )");
        this.mDisabledBiometricBySecurityDialog = z;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void setDismissActionExist(boolean z) {
        this.mIsDismissActionExist = z;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void setDismissActionType(KeyguardConstants$KeyguardDismissActionType keyguardConstants$KeyguardDismissActionType) {
        this.mKeyguardDismissActionType = keyguardConstants$KeyguardDismissActionType;
    }

    public final void setFaceAuthenticated(boolean z) {
        int userId = ((UserTrackerImpl) this.mUserTracker).getUserId();
        if (getFaceAuthenticated(userId) != z) {
            this.mUserFaceAuthenticated.put(userId, new KeyguardUpdateMonitor.BiometricAuthenticated(z, getFaceStrongBiometric()));
            if (z && getUserCanSkipBouncer(userId)) {
                this.mTrustManager.unlockedByBiometricForUser(userId, BiometricSourceType.FACE);
            }
            if (this.mSettingsHelper.isEnabledFaceStayOnLock()) {
                Log.d("KeyguardFace", "Lock stay is " + z + " by Face");
                dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9(userId, 2));
            }
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void setFaceWidgetFullScreenMode(final boolean z) {
        Assert.isMainThread();
        if (this.mIsFaceWidgetFullScreenMode != z) {
            KeyguardCarrierViewController$$ExternalSyntheticOutline0.m(new StringBuilder("setFaceWidgetFullScreenMode(), enabled = "), this.mIsFaceWidgetFullScreenMode, " -> ", z, "KeyguardUpdateMonitor");
            this.mIsFaceWidgetFullScreenMode = z;
            if (!isUnlockCompleted()) {
                return;
            }
            if (isFingerprintOptionEnabled() || isFaceOptionEnabled()) {
                if (z) {
                    updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_FULL_SCREEN_FACE_WIDGET);
                } else {
                    this.mHandler.postDelayed(new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8(this, 3), 300L);
                }
            }
            final int i = 0;
            this.mHandler.post(new Runnable(this) { // from class: com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda12
                public final /* synthetic */ KeyguardSecUpdateMonitorImpl f$0;

                {
                    this.f$0 = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i) {
                        case 0:
                            KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl = this.f$0;
                            boolean z2 = z;
                            keyguardSecUpdateMonitorImpl.getClass();
                            keyguardSecUpdateMonitorImpl.dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10(z2, 1));
                            return;
                        default:
                            KeyguardSecUpdateMonitorImpl keyguardSecUpdateMonitorImpl2 = this.f$0;
                            boolean z3 = z;
                            if (keyguardSecUpdateMonitorImpl2.mIsShowingKeepScreenOnPopup != z3) {
                                KeyguardCarrierViewController$$ExternalSyntheticOutline0.m(new StringBuilder("mIsShowingKeepScreenOnPopup = "), keyguardSecUpdateMonitorImpl2.mIsShowingKeepScreenOnPopup, " -> isShowingKeepScreenOnPopup = ", z3, "KeyguardUpdateMonitor");
                                keyguardSecUpdateMonitorImpl2.mIsShowingKeepScreenOnPopup = z3;
                                keyguardSecUpdateMonitorImpl2.updateFingerprintListeningState(2);
                                return;
                            }
                            return;
                    }
                }
            });
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void setFocusForBiometrics(int i, boolean z) {
        StringBuilder sb = new StringBuilder("setFocusForBiometrics : ");
        KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(sb, this.mHasFocus, " -> ", z, ", Focus window : ");
        sb.append(this.mFocusWindow);
        sb.append(" -> ");
        sb.append(i);
        String sb2 = sb.toString();
        if (z) {
            if (this.mHasFocus) {
                if (this.mFocusWindow == i) {
                    return;
                }
            } else {
                this.mHasFocus = true;
            }
            this.mFocusWindow = i;
        } else if (this.mHasFocus) {
            if (this.mFocusWindow != i) {
                KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(new StringBuilder("setFocusForBiometrics : Cannot change focus. current Window is "), this.mFocusWindow, ", reqWin : ", i, "KeyguardUpdateMonitor");
                return;
            } else {
                this.mHasFocus = false;
                this.mFocusWindow = 0;
            }
        } else {
            return;
        }
        Log.d("KeyguardUpdateMonitor", sb2);
        if (!LsRune.SUPPORT_LARGE_FRONT_SUB_DISPLAY || ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened) {
            if (isKeyguardVisible() || this.mPrimaryBouncerFullyShown) {
                if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY && isFingerprintOptionEnabled()) {
                    this.mHandler.post(new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8(this, 1));
                }
                if (isFaceOptionEnabled()) {
                    this.mHandler.post(new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8(this, 2));
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
    
        if (r0 == 0) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setFodStrictMode(boolean r5) {
        /*
            r4 = this;
            boolean r0 = com.android.systemui.LsRune.SECURITY_FINGERPRINT_IN_DISPLAY
            if (r0 == 0) goto L59
            boolean r0 = r4.mIsFODStrictMode
            if (r0 == r5) goto L59
            com.android.keyguard.KeyguardUpdateMonitor$StrongAuthTracker r0 = r4.mStrongAuthTracker
            com.android.systemui.settings.UserTracker r1 = r4.mUserTracker
            com.android.systemui.settings.UserTrackerImpl r1 = (com.android.systemui.settings.UserTrackerImpl) r1
            int r1 = r1.getUserId()
            int r0 = r0.getStrongAuthForUser(r1)
            if (r5 == 0) goto L2d
            android.util.SparseIntArray r1 = r4.mFingerPrintBadQualityCounts
            com.android.systemui.settings.UserTracker r2 = r4.mUserTracker
            com.android.systemui.settings.UserTrackerImpl r2 = (com.android.systemui.settings.UserTrackerImpl) r2
            int r2 = r2.getUserId()
            r3 = 0
            int r1 = r1.get(r2, r3)
            r2 = 30
            if (r1 >= r2) goto L2d
            if (r0 == 0) goto L2e
        L2d:
            r3 = 1
        L2e:
            if (r3 == 0) goto L59
            java.lang.String r1 = "setFodStrictMode : "
            java.lang.String r2 = " strongAuth : "
            java.lang.String r3 = " callStack : "
            java.lang.StringBuilder r0 = com.android.keyguard.KeyguardFMMViewController$$ExternalSyntheticOutline0.m(r1, r5, r2, r0, r3)
            r1 = 15
            java.lang.String r1 = android.os.Debug.getCallers(r1)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            com.android.systemui.log.LogLevel r1 = com.android.systemui.log.LogLevel.DEBUG
            r2 = 0
            java.lang.String r3 = "KeyguardFingerprint"
            com.android.systemui.keyguard.KeyguardDumpLog.log(r3, r1, r0, r2)
            r4.mIsFODStrictMode = r5
            android.hardware.fingerprint.FingerprintManager r4 = r4.mFpm
            if (r4 == 0) goto L59
            r4.semSetFodStrictMode(r5)
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardSecUpdateMonitorImpl.setFodStrictMode(boolean):void");
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void setHasLockscreenWallpaper(boolean z) {
        this.mHasLockscreenWallpaper = z;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void setHasRedactedNotifications(boolean z) {
        this.mHasRedactedNotifications = z;
    }

    public final void setIsRunningBlackMemo(boolean z) {
        if (this.mIsRunningBlackMemo != z) {
            KeyguardCarrierViewController$$ExternalSyntheticOutline0.m(new StringBuilder("setIsRunningBlackMemo : "), this.mIsRunningBlackMemo, " -> ", z, "KeyguardUpdateMonitor");
            this.mIsRunningBlackMemo = z;
            if (isFingerprintOptionEnabled()) {
                updateFingerprintListeningState(2);
            }
            ((PluginAODManager) this.mPluginAODManagerLazy.get()).updateAnimateScreenOff();
        }
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void setKeyguardGoingAway(boolean z) {
        boolean z2 = this.mKeyguardGoingAway;
        if (z2 == z) {
            return;
        }
        Log.d("KeyguardUpdateMonitor", "setKeyguardGoingAway( " + z2 + " -> " + z + " )");
        super.setKeyguardGoingAway(z);
        if (z) {
            updateBiometricListeningState(1, FaceAuthUiEvent.FACE_AUTH_STOPPED_KEYGUARD_GOING_AWAY);
        } else {
            updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_STOPPED_KEYGUARD_GOING_AWAY);
        }
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void setKeyguardShowing(boolean z, boolean z2) {
        boolean z3;
        boolean z4 = true;
        if (this.mKeyguardOccluded != z2) {
            z3 = true;
        } else {
            z3 = false;
        }
        boolean z5 = this.mKeyguardShowing;
        if (z5 == z) {
            z4 = false;
        }
        if (!z3 && !z4) {
            return;
        }
        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY && !z5 && z) {
            this.mHandler.postDelayed(this.mWaitingFocusRunnable, 500L);
        }
        boolean isKeyguardVisible = isKeyguardVisible();
        this.mKeyguardShowing = z;
        this.mKeyguardOccluded = z2;
        boolean isKeyguardVisible2 = isKeyguardVisible();
        this.mLogger.logKeyguardShowingChanged(z, z2, isKeyguardVisible2);
        if (LsRune.SECURITY_BACKGROUND_AUTHENTICATION && !z2) {
            this.mIsFPCanceledByForegroundApp = false;
        }
        if (isKeyguardVisible2 != isKeyguardVisible) {
            if (isKeyguardVisible2) {
                this.mSecureCameraLaunched = false;
            }
            dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10(isKeyguardVisible2, 0));
        }
        if (!isKeyguardVisible2 && !this.mPrimaryBouncerFullyShown) {
            setUnlockingKeyguard(false);
        }
        updateFingerprintListeningState(2);
        if (!this.mKeyguardUnlocking && isUnlockCompleted()) {
            updateFaceListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_KEYGUARD_VISIBILITY_CHANGED);
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final long setLockoutAttemptDeadline(int i, int i2) {
        boolean z;
        long lockoutAttemptDeadline = this.mLockPatternUtils.setLockoutAttemptDeadline(i, i2);
        long j = i2;
        if (lockoutAttemptDeadline != this.mLockoutAttemptDeadline || j != this.mLockoutAttemptTimeout) {
            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("setLockoutAttemptDeadline() userId ", i, ", AD:");
            m.append(this.mLockoutAttemptDeadline);
            m.append("->");
            m.append(lockoutAttemptDeadline);
            m.append(", AT:");
            m.append(this.mLockoutAttemptTimeout);
            m.append("->");
            m.append(j);
            String sb = m.toString();
            this.mLockoutAttemptDeadline = lockoutAttemptDeadline;
            this.mLockoutAttemptTimeout = j;
            addAdditionalLog(sb);
            dispatchLockModeChanged();
            DesktopManager desktopManager = (DesktopManager) this.mDesktopManagerLazy.get();
            if (this.mLockoutAttemptTimeout > 0) {
                z = true;
            } else {
                z = false;
            }
            ((DesktopManagerImpl) desktopManager).notifyKeyguardLockout(z);
            long j2 = this.mLockoutAttemptTimeout;
            if (j2 > 0) {
                this.mHandler.sendEmptyMessageDelayed(1003, j2);
            }
        }
        return this.mLockoutAttemptDeadline;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void setPanelExpandingStarted(boolean z) {
        boolean z2;
        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY && isFingerprintOptionEnabled()) {
            z2 = z;
        } else {
            z2 = false;
        }
        if (isFaceOptionEnabled() && !z) {
            updateFaceListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_QS_FULLY_EXPANDED);
        }
        if (this.mIsPanelExpandingStarted != z2) {
            KeyguardCarrierViewController$$ExternalSyntheticOutline0.m(new StringBuilder("setPanelExpandingStarted() mIsPanelExpandingStarted = "), this.mIsPanelExpandingStarted, " -> ", z2, "KeyguardUpdateMonitor");
            this.mIsPanelExpandingStarted = z2;
            updateFingerprintListeningState(2);
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void setShortcutLaunchInProgress(boolean z) {
        if (this.mIsShortcutLaunchInProgress != z) {
            KeyguardCarrierViewController$$ExternalSyntheticOutline0.m(new StringBuilder("setShortcutLaunchInProgress() mIsShortcutLaunchInProgress = "), this.mIsShortcutLaunchInProgress, " -> ", z, "KeyguardUpdateMonitor");
            this.mIsShortcutLaunchInProgress = z;
            if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY) {
                updateFingerprintListeningState(2);
            }
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void setUnlockingKeyguard(boolean z) {
        if (this.mKeyguardUnlocking == z) {
            return;
        }
        Log.d("KeyguardUpdateMonitor", "setUnlockingKeyguard( " + z + " )");
        this.mKeyguardUnlocking = z;
        if (z) {
            stopListeningForFingerprint();
            stopListeningForFace(FaceAuthUiEvent.FACE_AUTH_UPDATED_KEYGUARD_UNLOCKING);
            if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL) {
                removeMaskViewForOpticalFpSensor();
            }
            dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda7(0));
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void setupLocked() {
        boolean equals;
        Log.d("KeyguardUpdateMonitor", "setupLocked");
        this.mSystemReady = true;
        this.mDisableCamera = this.mDevicePolicyManager.getCameraDisabled(null, ((UserTrackerImpl) this.mUserTracker).getUserId());
        this.mMaximumFailedPasswordsForWipe = this.mDevicePolicyManager.getMaximumFailedPasswordsForWipe(null, ((UserTrackerImpl) this.mUserTracker).getUserId());
        this.mSettingsHelper.registerCallback(this.mSettingsCallbackForUPSM, this.mSettingsValueListForPSM);
        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY) {
            this.mSettingsHelper.registerCallback(this.mOneHandModeSettingsCallback, Settings.System.getUriFor("any_screen_running"));
        }
        boolean z = LsRune.SECURITY_SUB_DISPLAY_LOCK;
        if (z || LsRune.SECURITY_SUB_DISPLAY_COVER) {
            ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).addObserver(this.mDisplayListener);
        }
        ComponentName componentName = new ComponentName("com.sec.android.app.kidshome", "com.sec.android.app.kidshome.apps.ui.AppsActivity");
        PackageManager packageManager = this.mContext.getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
        if (resolveActivity == null) {
            equals = false;
        } else {
            ActivityInfo activityInfo = resolveActivity.activityInfo;
            equals = new ComponentName(activityInfo.packageName, activityInfo.name).equals(componentName);
        }
        this.mIsKidsModeRunning = equals;
        if (z) {
            ((DeviceStateManager) this.mContext.getSystemService(DeviceStateManager.class)).registerCallback(this.mContext.getMainExecutor(), this.mDeviceStateCallback);
        }
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final boolean shouldListenForFace() {
        boolean isKeyguardVisible;
        boolean z;
        int userId = ((UserTrackerImpl) this.mUserTracker).getUserId();
        if (!isFaceOptionEnabled()) {
            return false;
        }
        boolean z2 = this.mIsEarlyWakeUp;
        boolean z3 = this.mGoingToSleep;
        boolean z4 = this.mSwitchingUser;
        boolean z5 = this.mKeyguardGoingAway;
        boolean z6 = this.mDeviceInteractive;
        boolean z7 = LsRune.SECURITY_SUB_DISPLAY_COVER;
        if (z7 && !((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened) {
            isKeyguardVisible = this.mKeyguardShowing;
        } else {
            isKeyguardVisible = isKeyguardVisible();
        }
        if ((isKeyguardVisible || this.mPrimaryBouncerFullyShown) && !z5 && !getUserUnlockedWithBiometric(userId) && !z4 && (((z6 && !this.mIsDreamingForBiometrics && !this.mGoingToSleep && !this.mIsScreenSaverRunning) || z2) && !this.mKeyguardUnlocking && this.mSystemReady)) {
            z = true;
        } else {
            z = false;
        }
        StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m("shouldListenForFace ( isFaceDefaultCondition = ", z, " , isKeyguardVisible = ", isKeyguardVisible, " , isDeviceInteractive = ");
        m.append(z6);
        m.append(" , mPrimaryBouncerFullyShown = ");
        KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(m, this.mPrimaryBouncerFullyShown, " , isSwitchingUser = ", z4, " , mIsDreamingForBiometrics = ");
        KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(m, this.mIsDreamingForBiometrics, " , isGoingToSleep = ", z3, " , isKeyguardGoingAway = ");
        m.append(z5);
        m.append(" , mKeyguardUnlocking = ");
        KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(m, this.mKeyguardUnlocking, " , isEarlyWakeUp = ", z2, " , mIsScreenSaverRunning = ");
        m.append(this.mIsScreenSaverRunning);
        m.append(" , mSystemReady = ");
        m.append(this.mSystemReady);
        m.append(" , getUserUnlockedWithBiometric = ");
        m.append(getUserUnlockedWithBiometric(userId));
        m.append(" , isKeyguardShowing = ");
        m.append(this.mKeyguardShowing);
        m.append(" , isKeyguardOccluded = ");
        m.append(this.mKeyguardOccluded);
        m.append(" , mHasFocus = ");
        m.append(this.mHasFocus);
        m.append(")");
        Log.d("KeyguardFace", m.toString());
        if (!z) {
            Log.d("KeyguardFace", "shouldListenForFace ( return false, Face is not default condition)");
            return false;
        }
        if (getLockoutBiometricAttemptDeadline() > 0) {
            Log.d("KeyguardFace", "shouldListenForFace ( return false, because of Biometric lockoutAttemptDeadline)");
            return false;
        }
        if (getLockoutAttemptDeadline() > 0) {
            Log.d("KeyguardFace", "shouldListenForFace ( return false, because of lockoutAttemptDeadline)");
            return false;
        }
        if (isFaceDisabled(userId)) {
            Log.e("KeyguardFace", "shouldListenForFace (return false, because face is disabled by dpm)");
            return false;
        }
        if (isForcedLock()) {
            Log.d("KeyguardFace", "shouldListenForFace ( return false, because security policy)");
            return false;
        }
        if (this.mCocktailBarWindowType == 2) {
            Log.d("KeyguardFace", "shouldListenForFace ( return false, the cocktail bar is expanded)");
            return false;
        }
        if (isCameraDisabledByPolicy()) {
            Log.d("KeyguardFace", "shouldListenForFace ( return false, the camera is block by policy)");
            return false;
        }
        if (LsRune.COVER_SUPPORTED && isCoverClosed()) {
            Log.d("KeyguardFace", "shouldListenForFace ( return false as cover is closed. )");
            return false;
        }
        if ((!this.mPrimaryBouncerFullyShown && this.mIsQsFullyExpanded) || this.mIsFaceWidgetFullScreenMode) {
            Log.d("KeyguardFace", "shouldListenForFace ( return false, because mIsQsFullyExpanded = " + this.mIsQsFullyExpanded + ", or mIsFaceWidgetFullScreen=" + this.mIsFaceWidgetFullScreenMode + " )");
            return false;
        }
        if (!isUnlockCompleted()) {
            Log.d("KeyguardFace", "shouldListenForFace ( return false, unlocking never happened )");
            return false;
        }
        if (!isUnlockingWithBiometricAllowed(getFaceStrongBiometric())) {
            Log.d("KeyguardFace", "shouldListenForFace ( return false, because isUnlockingWithBiometricAllowed() = " + isUnlockingWithBiometricAllowed(getFaceStrongBiometric()) + ")");
            return false;
        }
        if (((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isDeviceDisabledForMaxFailedAttempt()) {
            Log.d("KeyguardFace", "shouldListenForFace ( return false, device is locked by administrator )");
            return false;
        }
        NotiCenterPlugin.INSTANCE.getClass();
        if (NotiCenterPlugin.isNotiCenterPluginConnected() && this.mIsNotiStarShown && !this.mPrimaryBouncerFullyShown) {
            Log.d("TAG_FACE", "shouldListenForFace ( return false, NotiStar is shown )");
            return false;
        }
        if (this.mSettingsHelper.isEnabledFaceStayOnLock() && isKeyguardVisible && getUserHasTrust(userId)) {
            Log.d("KeyguardFace", "shouldListenForFace ( return false, getUserHasTrust() is true)");
            return false;
        }
        boolean z8 = this.mPrimaryBouncerFullyShown;
        if (!z8 && this.mIsDynamicLockViewMode) {
            Log.d("KeyguardFace", "shouldListenForFace ( return false, DynamicLockViewMode");
            return false;
        }
        if (z6 && !z8 && this.mKeyguardShowing && !this.mHasFocus && !this.mHandler.hasCallbacks(this.mWaitingFocusRunnable) && !this.mNeedSubBioAuth && !((DesktopManagerImpl) ((DesktopManager) this.mDesktopManagerLazy.get())).isDesktopMode()) {
            Log.d("KeyguardFace", "shouldListenForFace ( return false, Not focus on NotificationShade )");
            return false;
        }
        if (z7 && !this.mNeedSubBioAuth && !((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened) {
            Log.d("KeyguardFace", "shouldListenForFace ( return false, Dual LCD folder is closed )");
            return false;
        }
        if (isForgotPasswordView()) {
            Log.d("KeyguardFace", "shouldListenForFace ( return false, Showing forgot password view )");
            return false;
        }
        if (((KeyguardEditModeControllerImpl) ((KeyguardEditModeController) this.mKeyguardEditModeControllerLazy.get())).getVIRunning()) {
            Log.d("KeyguardFace", "shouldListenForFace ( return false, Lock Edit VI running )");
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:235:0x006c, code lost:
    
        if (r13.mSystemReady != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x00a6, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004d, code lost:
    
        if (r0 != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x0090, code lost:
    
        if (r0 == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x00a4, code lost:
    
        if (r13.mSystemReady != false) goto L68;
     */
    @Override // com.android.keyguard.KeyguardUpdateMonitor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean shouldListenForFingerprint(boolean r14) {
        /*
            Method dump skipped, instructions count: 967
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardSecUpdateMonitorImpl.shouldListenForFingerprint(boolean):boolean");
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void startListeningForFace(FaceAuthUiEvent faceAuthUiEvent) {
        SemBioFaceManager semBioFaceManager;
        SemBioFaceManager semBioFaceManager2;
        boolean isUnlockWithFacePossible = isUnlockWithFacePossible(((UserTrackerImpl) this.mUserTracker).getUserId());
        if (this.mFaceRunningState != 1) {
            Context context = this.mContext;
            synchronized (KeyguardSecUpdateMonitorImpl.class) {
                if (sFaceManager == null) {
                    sFaceManager = SemBioFaceManager.getInstance(context);
                }
                semBioFaceManager = sFaceManager;
            }
            if (semBioFaceManager != null) {
                com.android.systemui.keyguard.Log.d("KeyguardFace", "startListeningForFace()");
                setFaceAuthenticated(false);
                CancellationSignal cancellationSignal = this.mSemFaceCancelSignal;
                if (cancellationSignal != null) {
                    this.mLogger.logUnexpectedFaceCancellationSignalState(this.mFaceRunningState, isUnlockWithFacePossible);
                    cancellationSignal.cancel();
                    this.mSemFaceCancelSignal = null;
                }
                this.mSemFaceCancelSignal = new CancellationSignal();
                setFaceRunningState(1);
                this.mLogger.logStartedListeningForFace(this.mFaceRunningState, faceAuthUiEvent);
                this.mLogger.logFaceUnlockPossible(isUnlockWithFacePossible);
                Context context2 = this.mContext;
                synchronized (KeyguardSecUpdateMonitorImpl.class) {
                    if (sFaceManager == null) {
                        sFaceManager = SemBioFaceManager.getInstance(context2);
                    }
                    semBioFaceManager2 = sFaceManager;
                }
                semBioFaceManager2.authenticate((SemBioFaceManager.CryptoObject) null, this.mSemFaceCancelSignal, 0, new SecFaceAuthCallback(this.mFaceMsgConsumer), this.mAuthHandler, ((UserTrackerImpl) this.mUserTracker).getUserId(), (Bundle) null, (View) null);
                return;
            }
        }
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("Can't start startListeningForFace(), mFaceRunningState = "), this.mFaceRunningState, "KeyguardFace");
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void startListeningForFingerprint() {
        int userId = ((UserTrackerImpl) this.mUserTracker).getUserId();
        if (isUnlockWithFingerprintPossible(userId)) {
            this.mFingerprintAuthenticationSequence++;
            KeyguardDumpLog.log("KeyguardFingerprint", LogLevel.DEBUG, "startListeningForFingerprint", null);
            Log.d("KeyguardFingerprint", "startListeningForFingerprint() " + this.mFingerprintAuthenticationSequence + "\n    callers: " + Debug.getCallers(3, " - "));
            CancellationSignal cancellationSignal = this.mFingerprintCancelSignal;
            if (cancellationSignal != null) {
                cancellationSignal.cancel();
                this.mFingerprintCancelSignal = null;
            }
            if (this.mContext.getPackageManager().hasSystemFeature("android.hardware.fingerprint")) {
                this.mFingerprintCancelSignal = new CancellationSignal();
                FingerprintManager fingerprintManager = new FingerprintManager(this.mContext, IFingerprintService.Stub.asInterface(ServiceManager.getService("fingerprint")));
                if (isEncryptedOrLockdown(userId)) {
                    if (is2StepVerification()) {
                        fingerprintManager.authenticate(null, this.mFingerprintCancelSignal, new SecFpAuthCallback(this.mFingerprintAuthenticationSequence, this.mFpMsgConsumer, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8(this, 4)), this.mAuthHandler, new FingerprintAuthenticateOptions.Builder().setUserId(userId).build(), true);
                    } else {
                        fingerprintManager.detectFingerprint(this.mFingerprintCancelSignal, this.mFingerprintDetectionCallback, new FingerprintAuthenticateOptions.Builder().setUserId(userId).build());
                    }
                } else {
                    fingerprintManager.authenticate(null, this.mFingerprintCancelSignal, new SecFpAuthCallback(this.mFingerprintAuthenticationSequence, this.mFpMsgConsumer, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8(this, 5)), this.mAuthHandler, -1, userId, 0);
                }
                setFingerprintRunningState(1);
                if (this.mIsSkipFPResponse) {
                    this.mHandler.removeCallbacks(this.mTimeoutSkipFPResponse);
                    this.mHandler.postDelayed(this.mTimeoutSkipFPResponse, 700L);
                    Log.i("KeyguardFingerprint", "FP started by the power key. If it receives a response within 700ms, it will skip.");
                    return;
                }
                return;
            }
            Log.e("KeyguardFingerprint", "startListeningForFingerprint() return - fingerprint service is not supported");
            return;
        }
        Log.d("KeyguardFingerprint", "Can't start startListeningForFingerprint()");
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void stopListeningForFace(FaceAuthUiEvent faceAuthUiEvent) {
        if (this.mFaceRunningState == 0) {
            if (isFaceOptionEnabled()) {
                RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("Can't stop stopListeningForFace(), mFaceRunningState = "), this.mFaceRunningState, "KeyguardFace");
                return;
            }
            return;
        }
        com.android.systemui.keyguard.Log.d("KeyguardFace", "stopListeningForFace()");
        this.mLogger.logStoppedListeningForFace(this.mFaceRunningState, faceAuthUiEvent.getReason());
        CancellationSignal cancellationSignal = this.mSemFaceCancelSignal;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
            this.mSemFaceCancelSignal = null;
        }
        this.mIsFaceReady = false;
        setFaceRunningState(0);
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void stopListeningForFingerprint() {
        Log.d("KeyguardUpdateMonitor", "stopListeningForFingerprint()");
        CancellationSignal cancellationSignal = this.mFingerprintCancelSignal;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
            this.mFingerprintCancelSignal = null;
        }
        setFingerprintRunningState(0);
        String str = LsRune.VALUE_CONFIG_CARRIER_TEXT_POLICY;
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void updateBiometricListeningState(int i, FaceAuthUiEvent faceAuthUiEvent) {
        Log.d("KeyguardUpdateMonitor", "updateBiometricListeningState()");
        if (this.mAuthHandler == null) {
            HandlerThread handlerThread = new HandlerThread("mAuthHandler", 10);
            handlerThread.start();
            this.mAuthHandler = handlerThread.getThreadHandler();
        }
        updateFingerprintListeningState(i);
        updateFaceListeningState(i, faceAuthUiEvent);
    }

    public final boolean updateBiometricLockTimeout(int i) {
        long biometricAttemptDeadline = this.mLockPatternUtils.getBiometricAttemptDeadline(i);
        long biometricAttemptTimeout = this.mLockPatternUtils.getBiometricAttemptTimeout(i);
        if (this.mLockoutBiometricAttemptDeadline == biometricAttemptDeadline && this.mLockoutBiometricAttemptTimeout == biometricAttemptTimeout) {
            return false;
        }
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("updateBiometricLockTimeout() userId ", i, ", BD:");
        m.append(this.mLockoutBiometricAttemptDeadline);
        m.append("->");
        m.append(biometricAttemptDeadline);
        m.append(", BT:");
        m.append(this.mLockoutBiometricAttemptTimeout);
        m.append("->");
        m.append(biometricAttemptTimeout);
        String sb = m.toString();
        this.mLockoutBiometricAttemptDeadline = biometricAttemptDeadline;
        this.mLockoutBiometricAttemptTimeout = biometricAttemptTimeout;
        addAdditionalLog(sb);
        return true;
    }

    public final boolean updateBiometricsOptionState(int i) {
        boolean z;
        boolean z2;
        int biometricType = this.mLockPatternUtils.getBiometricType(i);
        if (this.mLockPatternUtils.getBiometricState(1, i) == 1) {
            z = true;
        } else {
            z = false;
        }
        if (this.mLockPatternUtils.getBiometricState(256, i) == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.mBiometricType.get(i) == biometricType && this.mBiometricsFingerprint.get(i) == z && this.mBiometricsFace.get(i) == z2) {
            return false;
        }
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("updateBiometricsOptionState() userId ", i, ", BT:");
        m.append(this.mBiometricType.get(i));
        m.append("->");
        m.append(biometricType);
        m.append(", FP:");
        m.append(this.mBiometricsFingerprint.get(i));
        m.append("->");
        m.append(z);
        m.append(", FC:");
        m.append(this.mBiometricsFace.get(i));
        m.append("->");
        m.append(z2);
        String sb = m.toString();
        this.mBiometricType.put(i, biometricType);
        this.mBiometricsFingerprint.put(i, z);
        this.mBiometricsFace.put(i, z2);
        addAdditionalLog(sb);
        return true;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean updateCarrierLock(int i) {
        boolean updateCarrierLock = this.mLockPatternUtils.updateCarrierLock(i);
        if (updateCarrierLock != this.mCarrierLock) {
            String m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("updateCarrierLock() userId ", i, ", CR:"), this.mCarrierLock, "->", updateCarrierLock);
            this.mCarrierLock = updateCarrierLock;
            addAdditionalLog(m);
            return true;
        }
        return false;
    }

    public final boolean updateCredentialType(int i) {
        int credentialTypeForUser = this.mLockPatternUtils.getCredentialTypeForUser(i);
        if (this.mCredentialType != credentialTypeForUser) {
            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("updateCredentialType() userId ", i, ", credentialType:");
            m.append(this.mCredentialType);
            m.append("->");
            m.append(credentialTypeForUser);
            String sb = m.toString();
            this.mCredentialType = credentialTypeForUser;
            StringBuilder m2 = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(sb, ", isSecure=");
            m2.append(isSecure());
            addAdditionalLog(m2.toString());
            return true;
        }
        return false;
    }

    public final boolean updateDeviceOwnerInfo() {
        String deviceOwnerInfo = this.mLockPatternUtils.getDeviceOwnerInfo();
        String str = this.mDeviceOwnerInfoText;
        if (str != null && str.equals(deviceOwnerInfo)) {
            return false;
        }
        String str2 = "updateDeviceOwnerInfo() DO(isEmpty):" + TextUtils.isEmpty(this.mDeviceOwnerInfoText) + "->" + TextUtils.isEmpty(deviceOwnerInfo);
        this.mDeviceOwnerInfoText = deviceOwnerInfo;
        addAdditionalLog(str2);
        return true;
    }

    public final void updateDualDARInnerLockscreenRequirement(int i) {
        boolean z;
        boolean z2 = this.mIsDualDarInnerAuthRequired;
        boolean z3 = true;
        if (Dependency.get(KnoxStateMonitor.class) != null && ((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isDualDarDeviceOwner(i) && ((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isDualDarInnerAuthRequired(i)) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            boolean isSecure = isSecure(((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).getInnerAuthUserId(i));
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("DualDAR Inner isSecure? ", isSecure, "KeyguardUpdateMonitor");
            if (!isSecure) {
                z = false;
            }
        }
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("Inner lockscreen is required? ", z, "KeyguardUpdateMonitor");
        if (z && !z2) {
            this.mIsDualDarInnerAuthRequired = true;
        } else if (!z && z2) {
            this.mIsDualDarInnerAuthRequired = false;
        } else {
            z3 = false;
        }
        if (z3) {
            dispatchCallback(null, new KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9(i, 4));
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void updateEsimState(int i, int i2) {
        int i3;
        if (i2 == 0) {
            for (KeyguardUpdateMonitor.SimData simData : this.mSimDatas.values()) {
                if (simData.slotId == i && ((i3 = simData.simState) == 2 || i3 == 3)) {
                    Log.d("KeyguardUpdateMonitor", "Update SIM_STATE_UNKNOWN");
                    simData.simState = i2;
                }
            }
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean updateFMMLock(int i, boolean z) {
        boolean isFMMLockEnabled = this.mLockPatternUtils.isFMMLockEnabled(i);
        updateRemoteLockInfo(new RemoteLockInfo.Builder(0, isFMMLockEnabled).setMessage(this.mSettingsHelper.mItemLists.get("lock_fmm_Message").getStringValue()).setPhoneNumber(this.mSettingsHelper.mItemLists.get("lock_fmm_phone").getStringValue()).build());
        if (this.mFMMLock == isFMMLockEnabled) {
            return false;
        }
        String m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("updateFMMLock() userId ", i, ", FM:"), this.mFMMLock, "->", isFMMLockEnabled);
        this.mFMMLock = isFMMLockEnabled;
        addAdditionalLog(m);
        if (z) {
            dispatchLockModeChanged();
            return true;
        }
        return true;
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void updateFaceListeningState(int i, FaceAuthUiEvent faceAuthUiEvent) {
        if (this.mHandler.hasMessages(336)) {
            return;
        }
        if (shouldListenForFace()) {
            if (i == 1) {
                return;
            }
            startListeningForFace(faceAuthUiEvent);
        } else {
            if (i == 0) {
                return;
            }
            stopListeningForFace(faceAuthUiEvent);
        }
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void updateFingerprintListeningState(int i) {
        boolean z;
        if (this.mHandler.hasMessages(336)) {
            return;
        }
        int i2 = 0;
        boolean shouldListenForFingerprint = shouldListenForFingerprint(false);
        int i3 = this.mFingerprintRunningState;
        if (i3 != 1 && i3 != 3) {
            z = false;
        } else {
            z = true;
        }
        Log.d("KeyguardFingerprint", "updateFingerprintListeningState#mFingerprintRunningState=" + this.mFingerprintRunningState + " shouldListenForFingerprint=" + shouldListenForFingerprint + " isUdfpsEnrolled=false bioType : " + getBiometricType(((UserTrackerImpl) this.mUserTracker).getUserId()));
        if (z && !shouldListenForFingerprint) {
            if (i == 0) {
                return;
            }
            if (this.mFingerprintRunningState == 1) {
                if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL && !this.mKeyguardShowing) {
                    removeMaskViewForOpticalFpSensor();
                }
                stopListeningForFingerprint();
            }
        } else if (!z && shouldListenForFingerprint) {
            if (i == 1) {
                return;
            }
            if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL && !this.mSettingsHelper.isOneHandModeRunning()) {
                addMaskViewForOpticalFpSensor();
            }
            startListeningForFingerprint();
        } else if (!z && !shouldListenForFingerprint && LsRune.SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL && isFingerprintOptionEnabled() && LsRune.COVER_SUPPORTED && isCoverClosed() && this.mKeyguardShowing) {
            addMaskViewForOpticalFpSensor();
        }
        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY) {
            if (shouldListenForFingerprint || (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL && this.mFpMaskToken != null)) {
                if (this.mDeviceInteractive && !this.mGoingToSleep && !this.mIsDreamingForBiometrics) {
                    i2 = 1;
                }
                int i4 = i2 ^ 1;
                if (this.mFpInDisplayState != i4 && this.mFpm != null) {
                    KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(new StringBuilder("mFpInDisplayState is changed : "), this.mFpInDisplayState, " -> ", i4, "KeyguardFingerprint");
                    this.mFpInDisplayState = i4;
                    this.mFpm.semSetScreenStatus(i4);
                }
            }
        }
    }

    public final boolean updateLockscreenDisabled(int i) {
        boolean isLockScreenDisabled = this.mLockPatternUtils.isLockScreenDisabled(i);
        if (this.mLockscreenDisabled != isLockScreenDisabled) {
            String m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("updateLockscreenDisabled() userId ", i, ", lockScreenDisabled:"), this.mLockscreenDisabled, "->", isLockScreenDisabled);
            this.mLockscreenDisabled = isLockScreenDisabled;
            addAdditionalLog(m);
            return true;
        }
        return false;
    }

    public final boolean updateOwnerInfo(int i) {
        String str;
        boolean isOwnerInfoEnabled = this.mLockPatternUtils.isOwnerInfoEnabled(i);
        String ownerInfo = this.mLockPatternUtils.getOwnerInfo(i);
        if (this.mIsOwnerInfoEnabled == isOwnerInfoEnabled && (str = this.mOwnerInfoText) != null && str.equals(ownerInfo)) {
            return false;
        }
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("updateOwnerInfoEnabled() userId ", i, ", OE:");
        KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(m, this.mIsOwnerInfoEnabled, "->", isOwnerInfoEnabled, ", OI(isEmpty):");
        m.append(TextUtils.isEmpty(this.mOwnerInfoText));
        m.append("->");
        m.append(TextUtils.isEmpty(ownerInfo));
        String sb = m.toString();
        this.mIsOwnerInfoEnabled = isOwnerInfoEnabled;
        this.mOwnerInfoText = ownerInfo;
        addAdditionalLog(sb);
        return true;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean updatePermanentLock(int i) {
        boolean z;
        if (getFailedUnlockAttempts(i) >= getMaxFailedUnlockAttempts()) {
            z = true;
        } else {
            z = false;
        }
        if (this.mPermanentLock == z) {
            return false;
        }
        String m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("updatePermanentLock() userId ", i, ", PML:"), this.mPermanentLock, "->", z);
        this.mPermanentLock = z;
        addAdditionalLog(m);
        return true;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void updateRemoteLockInfo(RemoteLockInfo remoteLockInfo) {
        RemoteLockInfo remoteLockInfo2 = null;
        for (int i = 0; i < this.mRemoteLockInfo.size(); i++) {
            if (((RemoteLockInfo) this.mRemoteLockInfo.get(i)).lockType == remoteLockInfo.lockType) {
                remoteLockInfo2 = (RemoteLockInfo) this.mRemoteLockInfo.remove(i);
            }
        }
        if (remoteLockInfo.lockState) {
            this.mRemoteLockInfo.add(remoteLockInfo);
        }
        int i2 = -1;
        this.mActiveRemoteLockIndex = -1;
        for (int i3 = 0; i3 < this.mRemoteLockInfo.size(); i3++) {
            if (i2 < ((RemoteLockInfo) this.mRemoteLockInfo.get(i3)).lockType) {
                this.mActiveRemoteLockIndex = i3;
                i2 = ((RemoteLockInfo) this.mRemoteLockInfo.get(i3)).lockType;
            }
        }
        int diff = remoteLockInfo.diff(remoteLockInfo2);
        Log.d("KeyguardUpdateMonitor", "updateRemoteLockInfo() diff=" + Integer.toHexString(diff));
        if (diff != 0) {
            this.mHandler.sendEmptyMessage(VolteConstants.ErrorCode.CALL_STATUS_CONF_REMOVE_USER_FROM_SESSION_FAILURE);
        }
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void updateSIPShownState(boolean z) {
        if (this.mSIPShown != z) {
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("updateSIPShownState : ", z, "KeyguardUpdateMonitor");
            this.mSIPShown = z;
            if (isFingerprintOptionEnabled()) {
                updateFingerprintListeningState(2);
            }
        }
    }

    public final boolean updateSecureLockTimeout(int i) {
        long lockoutAttemptDeadline = this.mLockPatternUtils.getLockoutAttemptDeadline(i);
        long lockoutAttemptTimeout = this.mLockPatternUtils.getLockoutAttemptTimeout(i);
        boolean z = false;
        if (this.mLockoutAttemptDeadline == lockoutAttemptDeadline && this.mLockoutAttemptTimeout == lockoutAttemptTimeout) {
            return false;
        }
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("updateSecureLockTimeout() userId ", i, ", AD:");
        m.append(this.mLockoutAttemptDeadline);
        m.append("->");
        m.append(lockoutAttemptDeadline);
        m.append(", AT:");
        m.append(this.mLockoutAttemptTimeout);
        m.append("->");
        m.append(lockoutAttemptTimeout);
        String sb = m.toString();
        this.mLockoutAttemptDeadline = lockoutAttemptDeadline;
        this.mLockoutAttemptTimeout = lockoutAttemptTimeout;
        addAdditionalLog(sb);
        if (this.mSystemReady) {
            DesktopManager desktopManager = (DesktopManager) this.mDesktopManagerLazy.get();
            if (this.mLockoutAttemptTimeout > 0) {
                z = true;
            }
            ((DesktopManagerImpl) desktopManager).notifyKeyguardLockout(z);
            long j = this.mLockoutAttemptTimeout;
            if (j > 0) {
                this.mHandler.sendEmptyMessageDelayed(1003, j);
            }
        }
        return true;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void updateUserUnlockNotification(int i) {
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("updateUserUnlockNotification(), isUserUnlocked(", i, ") : ");
        m.append(isUserUnlocked(i));
        Log.d("KeyguardUpdateMonitor", m.toString());
        if (!isUserUnlocked(i)) {
            String string = this.mContext.getResources().getString(R.string.kg_fbe_notification_header);
            String string2 = this.mContext.getResources().getString(R.string.kg_fbe_notification_message);
            createChannels();
            this.mNotificationManager.notifyAsUser(null, 1001, new Notification.Builder(this.mContext, "fbe_channel_id").setSmallIcon(17304219).setOngoing(true).setContentTitle(string).setContentText(string2).build(), UserHandle.ALL);
            return;
        }
        this.mNotificationManager.cancelAsUser(null, 1001, UserHandle.ALL);
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void updatedSimPinPassed(int i) {
        if (i >= 0 && i <= 1) {
            this.mSimPinPassed[i] = true;
        } else {
            IconCompat$$ExternalSyntheticOutline0.m("updatedSimPinPassed  Slot Boundary Exception SlotNum: ", i, "KeyguardUpdateMonitor");
        }
    }

    public final void dispatchCallback(String str, Consumer consumer) {
        this.mIsDispatching = true;
        Iterator it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) it.next()).get();
            if (keyguardUpdateMonitorCallback != null) {
                if (this.mFastUnlockController.isEnabled() && KeyguardFastBioUnlockController.DEBUG) {
                    StringBuilder sb = new StringBuilder("dispatchCallback ");
                    sb.append(str != null ? str : "");
                    sb.append(" / ");
                    sb.append(keyguardUpdateMonitorCallback);
                    String sb2 = sb.toString();
                    int startTime = LogUtil.startTime(-1);
                    consumer.accept(keyguardUpdateMonitorCallback);
                    LogUtil.internalEndTime(startTime, 5, null, "BioUnlock", sb2, Arrays.copyOf(new Object[]{new Object[0]}, 1));
                } else {
                    consumer.accept(keyguardUpdateMonitorCallback);
                }
            }
        }
        this.mIsDispatching = false;
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final boolean isSecure(int i) {
        if (i == ((UserTrackerImpl) this.mUserTracker).getUserId()) {
            return getCredentialTypeForUser(i) != -1 || isSimPinSecure() || isRemoteLock();
        }
        return this.mLockPatternUtils.isSecure(i);
    }

    @Override // com.android.keyguard.KeyguardSecUpdateMonitor
    public final void runSystemUserOnly(Runnable runnable, Executor executor) {
        if (Process.myUserHandle().equals(UserHandle.SYSTEM)) {
            if (executor != null) {
                executor.execute(runnable);
            } else {
                runnable.run();
            }
        }
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void setAlternateBouncerShowing(boolean z) {
    }

    @Override // com.android.keyguard.KeyguardUpdateMonitor
    public final void startBiometricWatchdog() {
    }
}
