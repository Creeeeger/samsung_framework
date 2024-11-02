package com.android.keyguard;

import android.app.ActivityTaskManager;
import android.app.admin.DevicePolicyManager;
import android.app.trust.TrustManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.UserInfo;
import android.database.ContentObserver;
import android.graphics.Point;
import android.hardware.SensorPrivacyManager;
import android.hardware.biometrics.BiometricManager;
import android.hardware.biometrics.BiometricSourceType;
import android.hardware.biometrics.CryptoObject;
import android.hardware.biometrics.IBiometricEnabledOnKeyguardCallback;
import android.hardware.biometrics.SensorPropertiesInternal;
import android.hardware.face.FaceAuthenticateOptions;
import android.hardware.face.FaceManager;
import android.hardware.face.FaceSensorPropertiesInternal;
import android.hardware.face.IFaceAuthenticatorsRegisteredCallback;
import android.hardware.fingerprint.FingerprintAuthenticateOptions;
import android.hardware.fingerprint.FingerprintManager;
import android.hardware.fingerprint.FingerprintSensorPropertiesInternal;
import android.hardware.fingerprint.IFingerprintAuthenticatorsRegisteredCallback;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.Trace;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.service.dreams.IDreamManager;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.telephony.CarrierConfigManager;
import android.telephony.ServiceState;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import com.android.internal.jank.InteractionJankMonitor;
import com.android.internal.logging.UiEventLogger;
import com.android.internal.util.LatencyTracker;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.ActiveUnlockConfig;
import com.android.keyguard.KeyguardActiveUnlockModel;
import com.android.keyguard.KeyguardFaceListenModel;
import com.android.keyguard.KeyguardFingerprintListenModel;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger;
import com.android.settingslib.WirelessUtils;
import com.android.settingslib.fuelgauge.BatteryStatus;
import com.android.systemui.DejankUtils;
import com.android.systemui.Dumpable;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.biometrics.AuthController;
import com.android.systemui.biometrics.UdfpsController;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.keyguard.KeyguardFastBioUnlockController;
import com.android.systemui.keyguard.shared.model.SysUiFaceAuthenticateOptions;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.SessionTracker;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.shared.system.TaskStackChangeListener;
import com.android.systemui.shared.system.TaskStackChangeListeners;
import com.android.systemui.statusbar.phone.KeyguardBypassController;
import com.android.systemui.statusbar.policy.DevicePostureController;
import com.android.systemui.statusbar.policy.DevicePostureControllerImpl;
import com.android.systemui.telephony.TelephonyListenerManager;
import com.android.systemui.util.Assert;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.settings.SecureSettings;
import com.google.android.collect.Lists;
import com.samsung.android.knox.custom.CustomDeviceManager;
import com.samsung.android.knox.net.vpn.KnoxVpnPolicyConstants;
import com.samsung.android.knox.net.vpn.VpnErrorValues;
import com.sec.ims.volte2.data.VolteConstants;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.TimeZone;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.function.Predicate;
import java.util.function.Supplier;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class KeyguardUpdateMonitor implements TrustManager.TrustListener, Dumpable, KeyguardSecUpdateMonitor {
    public static final int BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED = -1;
    protected static final int BIOMETRIC_STATE_CANCELLING = 2;
    protected static final int BIOMETRIC_STATE_CANCELLING_RESTARTING = 3;
    protected static final int DEFAULT_CANCEL_SIGNAL_TIMEOUT = 3000;
    protected static final int HAL_POWER_PRESS_TIMEOUT = 50;
    public static int sCurrentUser;
    public int mActiveMobileDataSubscription;
    public final ActiveUnlockConfig mActiveUnlockConfig;
    public final KeyguardActiveUnlockModel.Buffer mActiveUnlockTriggerBuffer;
    public boolean mAlternateBouncerShowing;
    public boolean mAssistantVisible;
    public final AuthController mAuthController;
    public boolean mAuthInterruptActive;
    public final Executor mBackgroundExecutor;
    BatteryStatus mBatteryStatus;
    public final AnonymousClass2 mBiometricEnabledCallback;
    public final SparseBooleanArray mBiometricEnabledForUser;
    public final SparseIntArray mBiometricType;
    public final SparseBooleanArray mBiometricsFace;
    public final SparseBooleanArray mBiometricsFingerprint;
    protected final BroadcastReceiver mBroadcastAllReceiver;
    protected final BroadcastReceiver mBroadcastReceiver;
    public final ArrayList mCallbacks;
    public final CarrierConfigManager mCarrierConfigManager;
    protected int mConfigFaceAuthSupportedPosture;
    public final Context mContext;
    public boolean mCredentialAttempted;
    public boolean mDeviceInteractive;
    public final DevicePolicyManager mDevicePolicyManager;
    public boolean mDeviceProvisioned;
    public AnonymousClass21 mDeviceProvisionedObserver;
    final FaceManager.AuthenticationCallback mFaceAuthenticationCallback;
    public final KeyguardUpdateMonitor$$ExternalSyntheticLambda3 mFaceCancelNotReceived;
    CancellationSignal mFaceCancelSignal;
    public final KeyguardUpdateMonitor$$ExternalSyntheticLambda7 mFaceDetectionCallback;
    public final KeyguardFaceListenModel.Buffer mFaceListenBuffer;
    public boolean mFaceLockedOutPermanent;
    public final AnonymousClass11 mFaceLockoutResetCallback;
    public final FaceManager mFaceManager;
    public int mFaceRunningState;
    public List mFaceSensorProperties;
    public final FaceWakeUpTriggersConfig mFaceWakeUpTriggersConfig;
    final FingerprintManager.AuthenticationCallback mFingerprintAuthenticationCallback;
    CancellationSignal mFingerprintCancelSignal;
    public final KeyguardUpdateMonitor$$ExternalSyntheticLambda6 mFingerprintDetectionCallback;
    public final KeyguardFingerprintListenModel.Buffer mFingerprintListenBuffer;
    public boolean mFingerprintLockedOut;
    public boolean mFingerprintLockedOutPermanent;
    public final AnonymousClass10 mFingerprintLockoutResetCallback;
    protected int mFingerprintRunningState;
    public List mFingerprintSensorProperties;
    protected final Runnable mFpCancelNotReceived;
    public final FingerprintManager mFpm;
    public boolean mGoingToSleep;
    public final AnonymousClass15 mHandler;
    public int mHardwareFaceUnavailableRetryCount;
    public int mHardwareFingerprintUnavailableRetryCount;
    boolean mIncompatibleCharger;
    public final InteractionJankMonitor mInteractionJankMonitor;
    public boolean mIsDreaming;
    public boolean mIsFaceEnrolled;
    public final boolean mIsSystemUser;
    public final HashMap mIsUnlockWithFingerprintPossible;
    public KeyguardBypassController mKeyguardBypassController;
    public boolean mKeyguardGoingAway;
    public boolean mKeyguardOccluded;
    public boolean mKeyguardShowing;
    public final LatencyTracker mLatencyTracker;
    public final LockPatternUtils mLockPatternUtils;
    public final KeyguardUpdateMonitorLogger mLogger;
    public boolean mLogoutEnabled;
    public boolean mNeedsSlowUnlockTransition;
    public boolean mOccludingAppRequestingFace;
    public boolean mOccludingAppRequestingFp;
    public final PackageManager mPackageManager;
    public int mPhoneState;
    public TelephonyCallback.ActiveDataSubscriptionIdListener mPhoneStateListener;
    final DevicePostureController.Callback mPostureCallback;
    public int mPostureState;
    public boolean mPrimaryBouncerFullyShown;
    public boolean mPrimaryBouncerIsOrWillBeShowing;
    public final AnonymousClass6 mRetryFaceAuthentication;
    public final AnonymousClass5 mRetryFingerprintAuthenticationAfterHwUnavailable;
    public final Map mSecondaryLockscreenRequirement;
    public boolean mSecureCameraLaunched;
    public final SensorPrivacyManager mSensorPrivacyManager;
    public final HashMap mServiceStates;
    public final Provider mSessionTrackerProvider;
    public final HashMap mSimDatas;
    public int mStatusBarState;
    public final StatusBarStateController mStatusBarStateController;
    public final AnonymousClass1 mStatusBarStateControllerListener;
    public StrongAuthTracker mStrongAuthTracker;
    public List mSubscriptionInfo;
    public final AnonymousClass4 mSubscriptionListener;
    public final SubscriptionManager mSubscriptionManager;
    public boolean mSwitchingUser;
    public final AnonymousClass22 mTaskStackListener;
    protected boolean mTelephonyCapable;
    public final TelephonyListenerManager mTelephonyListenerManager;
    public final TelephonyManager mTelephonyManager;
    public final AnonymousClass19 mTimeFormatChangeObserver;
    public final TrustManager mTrustManager;
    public final UiEventLogger mUiEventLogger;
    public final UserTracker.Callback mUserChangedCallback;
    SparseArray<BiometricAuthenticated> mUserFaceAuthenticated;
    SparseArray<BiometricAuthenticated> mUserFingerprintAuthenticated;
    public final SparseBooleanArray mUserHasTrust;
    public final SparseBooleanArray mUserIsUnlocked;
    public final UserManager mUserManager;
    public final UserTracker mUserTracker;
    public final SparseBooleanArray mUserTrustIsManaged;
    public final SparseBooleanArray mUserTrustIsUsuallyManaged;
    public static final ComponentName FALLBACK_HOME_COMPONENT = new ComponentName(KnoxVpnPolicyConstants.ANDROID_SETTINGS_PKG, "com.android.settings.FallbackHome");
    public static final List ABSENT_SIM_STATE_LIST = Arrays.asList(1, 0, 6);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.KeyguardUpdateMonitor$18, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass18 implements AuthController.Callback {
        public final /* synthetic */ Executor val$mainExecutor;

        public AnonymousClass18(Executor executor) {
            this.val$mainExecutor = executor;
        }

        @Override // com.android.systemui.biometrics.AuthController.Callback
        public final void onAllAuthenticatorsRegistered(int i) {
            this.val$mainExecutor.execute(new KeyguardUpdateMonitor$2$$ExternalSyntheticLambda0(this, 1));
        }

        @Override // com.android.systemui.biometrics.AuthController.Callback
        public final void onEnrollmentsChanged(int i) {
            this.val$mainExecutor.execute(new KeyguardUpdateMonitor$2$$ExternalSyntheticLambda0(this, 2));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.KeyguardUpdateMonitor$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends IBiometricEnabledOnKeyguardCallback.Stub {
        public AnonymousClass2() {
        }

        public final void onChanged(boolean z, int i) {
            post(new KeyguardUpdateMonitor$$ExternalSyntheticLambda2(this, i, z));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.KeyguardUpdateMonitor$23, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass23 {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class BiometricAuthenticated {
        public final boolean mAuthenticated;
        public final boolean mIsStrongBiometric;

        public BiometricAuthenticated(boolean z, boolean z2) {
            this.mAuthenticated = z;
            this.mIsStrongBiometric = z2;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SimData {
        public int simState;
        public int slotId;
        public int subId;

        public SimData(int i, int i2, int i3) {
            this.simState = i;
            this.slotId = i2;
            this.subId = i3;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("SimData{state=");
            sb.append(this.simState);
            sb.append(",slotId=");
            sb.append(this.slotId);
            sb.append(",subId=");
            return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.subId, "}");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class StrongAuthTracker extends LockPatternUtils.StrongAuthTracker {
        public StrongAuthTracker(Context context) {
            super(context);
        }

        public final boolean hasUserAuthenticatedSinceBoot() {
            if ((getStrongAuthForUser(KeyguardUpdateMonitor.getCurrentUser()) & 1) == 0) {
                return true;
            }
            return false;
        }

        public final void onIsNonStrongBiometricAllowedChanged(int i) {
            KeyguardUpdateMonitor.this.notifyNonStrongBiometricAllowedChanged(i);
        }

        public final void onStrongAuthRequiredChanged(int i) {
            KeyguardUpdateMonitor.this.notifyStrongAuthAllowedChanged(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [com.android.keyguard.KeyguardUpdateMonitor$1, com.android.systemui.plugins.statusbar.StatusBarStateController$StateListener] */
    /* JADX WARN: Type inference failed for: r13v12, types: [com.android.keyguard.KeyguardUpdateMonitor$21] */
    /* JADX WARN: Type inference failed for: r14v10, types: [android.hardware.face.FaceManager$LockoutResetCallback, com.android.keyguard.KeyguardUpdateMonitor$11] */
    /* JADX WARN: Type inference failed for: r14v12, types: [com.android.keyguard.KeyguardUpdateMonitor$$ExternalSyntheticLambda6] */
    /* JADX WARN: Type inference failed for: r14v13, types: [com.android.keyguard.KeyguardUpdateMonitor$$ExternalSyntheticLambda7] */
    /* JADX WARN: Type inference failed for: r14v20, types: [com.android.keyguard.KeyguardUpdateMonitor$22, com.android.systemui.shared.system.TaskStackChangeListener] */
    /* JADX WARN: Type inference failed for: r14v8, types: [com.android.keyguard.KeyguardUpdateMonitor$4, android.telephony.SubscriptionManager$OnSubscriptionsChangedListener] */
    /* JADX WARN: Type inference failed for: r14v9, types: [android.hardware.fingerprint.FingerprintManager$LockoutResetCallback, com.android.keyguard.KeyguardUpdateMonitor$10] */
    /* JADX WARN: Type inference failed for: r15v17, types: [com.android.keyguard.KeyguardUpdateMonitor$5] */
    /* JADX WARN: Type inference failed for: r15v18, types: [com.android.keyguard.KeyguardUpdateMonitor$6] */
    /* JADX WARN: Type inference failed for: r1v14, types: [com.android.keyguard.KeyguardUpdateMonitor$19, android.database.ContentObserver] */
    /* JADX WARN: Type inference failed for: r8v11, types: [com.android.keyguard.KeyguardUpdateMonitor$15, android.os.Handler] */
    public KeyguardUpdateMonitor(Context context, UserTracker userTracker, Looper looper, BroadcastDispatcher broadcastDispatcher, SecureSettings secureSettings, DumpManager dumpManager, Executor executor, Executor executor2, StatusBarStateController statusBarStateController, LockPatternUtils lockPatternUtils, AuthController authController, TelephonyListenerManager telephonyListenerManager, InteractionJankMonitor interactionJankMonitor, LatencyTracker latencyTracker, ActiveUnlockConfig activeUnlockConfig, KeyguardUpdateMonitorLogger keyguardUpdateMonitorLogger, UiEventLogger uiEventLogger, Provider provider, TrustManager trustManager, SubscriptionManager subscriptionManager, UserManager userManager, IDreamManager iDreamManager, DevicePolicyManager devicePolicyManager, SensorPrivacyManager sensorPrivacyManager, TelephonyManager telephonyManager, PackageManager packageManager, FaceManager faceManager, FingerprintManager fingerprintManager, BiometricManager biometricManager, FaceWakeUpTriggersConfig faceWakeUpTriggersConfig, CarrierConfigManager carrierConfigManager, DevicePostureController devicePostureController, Optional<Object> optional) {
        ?? r13 = new StatusBarStateController.StateListener() { // from class: com.android.keyguard.KeyguardUpdateMonitor.1
            @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
            public final void onExpandedChanged(boolean z) {
                int i = 0;
                while (true) {
                    KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                    if (i < keyguardUpdateMonitor.mCallbacks.size()) {
                        KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) keyguardUpdateMonitor.mCallbacks.get(i)).get();
                        if (keyguardUpdateMonitorCallback != null) {
                            keyguardUpdateMonitorCallback.onShadeExpandedChanged(z);
                        }
                        i++;
                    } else {
                        return;
                    }
                }
            }

            @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
            public final void onStateChanged(int i) {
                KeyguardUpdateMonitor.this.mStatusBarState = i;
            }
        };
        this.mStatusBarStateControllerListener = r13;
        this.mSimDatas = new HashMap();
        this.mServiceStates = new HashMap();
        this.mCallbacks = Lists.newArrayList();
        this.mFingerprintRunningState = 0;
        this.mFaceRunningState = 0;
        this.mActiveMobileDataSubscription = -1;
        this.mPostureState = 0;
        this.mHardwareFingerprintUnavailableRetryCount = 0;
        this.mHardwareFaceUnavailableRetryCount = 0;
        this.mFpCancelNotReceived = new KeyguardUpdateMonitor$$ExternalSyntheticLambda3(this, 2);
        this.mFaceCancelNotReceived = new KeyguardUpdateMonitor$$ExternalSyntheticLambda3(this, 3);
        this.mBiometricEnabledCallback = new AnonymousClass2();
        this.mPhoneStateListener = new TelephonyCallback.ActiveDataSubscriptionIdListener() { // from class: com.android.keyguard.KeyguardUpdateMonitor.3
            @Override // android.telephony.TelephonyCallback.ActiveDataSubscriptionIdListener
            public final void onActiveDataSubscriptionIdChanged(int i) {
                KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                keyguardUpdateMonitor.mActiveMobileDataSubscription = i;
                keyguardUpdateMonitor.mHandler.sendEmptyMessage(328);
            }
        };
        ?? r14 = new SubscriptionManager.OnSubscriptionsChangedListener() { // from class: com.android.keyguard.KeyguardUpdateMonitor.4
            @Override // android.telephony.SubscriptionManager.OnSubscriptionsChangedListener
            public final void onSubscriptionsChanged() {
                sendEmptyMessage(328);
            }
        };
        this.mSubscriptionListener = r14;
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.mUserIsUnlocked = sparseBooleanArray;
        this.mUserHasTrust = new SparseBooleanArray();
        this.mUserTrustIsManaged = new SparseBooleanArray();
        this.mUserTrustIsUsuallyManaged = new SparseBooleanArray();
        this.mBiometricEnabledForUser = new SparseBooleanArray();
        this.mSecondaryLockscreenRequirement = new HashMap();
        this.mFingerprintListenBuffer = new KeyguardFingerprintListenModel.Buffer();
        this.mFaceListenBuffer = new KeyguardFaceListenModel.Buffer();
        this.mActiveUnlockTriggerBuffer = new KeyguardActiveUnlockModel.Buffer();
        this.mUserFingerprintAuthenticated = new SparseArray<>();
        this.mUserFaceAuthenticated = new SparseArray<>();
        this.mBiometricType = new SparseIntArray();
        this.mBiometricsFingerprint = new SparseBooleanArray();
        this.mBiometricsFace = new SparseBooleanArray();
        this.mRetryFingerprintAuthenticationAfterHwUnavailable = new Runnable() { // from class: com.android.keyguard.KeyguardUpdateMonitor.5
            @Override // java.lang.Runnable
            public final void run() {
                KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                keyguardUpdateMonitor.mLogger.logRetryAfterFpHwUnavailable(keyguardUpdateMonitor.mHardwareFingerprintUnavailableRetryCount);
                if (!KeyguardUpdateMonitor.this.mFingerprintSensorProperties.isEmpty()) {
                    KeyguardUpdateMonitor.this.updateFingerprintListeningState(2);
                    return;
                }
                KeyguardUpdateMonitor keyguardUpdateMonitor2 = KeyguardUpdateMonitor.this;
                int i = keyguardUpdateMonitor2.mHardwareFingerprintUnavailableRetryCount;
                if (i < 20) {
                    keyguardUpdateMonitor2.mHardwareFingerprintUnavailableRetryCount = i + 1;
                    keyguardUpdateMonitor2.mHandler.postDelayed(keyguardUpdateMonitor2.mRetryFingerprintAuthenticationAfterHwUnavailable, 500L);
                }
            }
        };
        this.mRetryFaceAuthentication = new Runnable() { // from class: com.android.keyguard.KeyguardUpdateMonitor.6
            @Override // java.lang.Runnable
            public final void run() {
                KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                keyguardUpdateMonitor.mLogger.logRetryingAfterFaceHwUnavailable(keyguardUpdateMonitor.mHardwareFaceUnavailableRetryCount);
                KeyguardUpdateMonitor.this.updateFaceListeningState(2, FaceAuthUiEvent.FACE_AUTH_TRIGGERED_RETRY_AFTER_HW_UNAVAILABLE);
            }
        };
        new Object() { // from class: com.android.keyguard.KeyguardUpdateMonitor.7
        };
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.android.keyguard.KeyguardUpdateMonitor.8
            /* JADX WARN: Code restructure failed: missing block: B:57:0x00f0, code lost:
            
                if ("NETWORK".equals(r1) != false) goto L47;
             */
            @Override // android.content.BroadcastReceiver
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onReceive(android.content.Context r10, android.content.Intent r11) {
                /*
                    Method dump skipped, instructions count: 583
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardUpdateMonitor.AnonymousClass8.onReceive(android.content.Context, android.content.Intent):void");
            }
        };
        this.mBroadcastReceiver = broadcastReceiver;
        BroadcastReceiver broadcastReceiver2 = new BroadcastReceiver() { // from class: com.android.keyguard.KeyguardUpdateMonitor.9
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if ("android.app.action.NEXT_ALARM_CLOCK_CHANGED".equals(action)) {
                    sendEmptyMessage(301);
                    return;
                }
                if ("android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED".equals(action)) {
                    int sendingUserId = getSendingUserId();
                    if (sendingUserId == -1) {
                        sendingUserId = KeyguardUpdateMonitor.sCurrentUser;
                    }
                    AnonymousClass15 anonymousClass15 = KeyguardUpdateMonitor.this.mHandler;
                    anonymousClass15.sendMessage(anonymousClass15.obtainMessage(309, sendingUserId, 0));
                    return;
                }
                if ("android.intent.action.USER_UNLOCKED".equals(action)) {
                    int intExtra = intent.getIntExtra("android.intent.extra.user_handle", -1);
                    SeslColorSpectrumView$$ExternalSyntheticOutline0.m("ACTION_USER_UNLOCKED. userId:", intExtra, "KeyguardUpdateMonitor");
                    AnonymousClass15 anonymousClass152 = KeyguardUpdateMonitor.this.mHandler;
                    anonymousClass152.sendMessage(anonymousClass152.obtainMessage(334, intExtra, 0));
                    return;
                }
                if ("android.intent.action.USER_STOPPED".equals(action)) {
                    AnonymousClass15 anonymousClass153 = KeyguardUpdateMonitor.this.mHandler;
                    anonymousClass153.sendMessage(anonymousClass153.obtainMessage(340, intent.getIntExtra("android.intent.extra.user_handle", -1), 0));
                } else if ("android.intent.action.USER_REMOVED".equals(action)) {
                    AnonymousClass15 anonymousClass154 = KeyguardUpdateMonitor.this.mHandler;
                    anonymousClass154.sendMessage(anonymousClass154.obtainMessage(341, intent.getIntExtra("android.intent.extra.user_handle", -1), 0));
                } else if ("android.nfc.action.REQUIRE_UNLOCK_FOR_NFC".equals(action)) {
                    sendEmptyMessage(345);
                }
            }
        };
        this.mBroadcastAllReceiver = broadcastReceiver2;
        ?? r142 = new FingerprintManager.LockoutResetCallback() { // from class: com.android.keyguard.KeyguardUpdateMonitor.10
            public final void onLockoutReset(int i) {
                KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                int i2 = KeyguardUpdateMonitor.BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED;
                keyguardUpdateMonitor.handleFingerprintLockoutReset(0);
            }
        };
        this.mFingerprintLockoutResetCallback = r142;
        ?? r143 = new FaceManager.LockoutResetCallback() { // from class: com.android.keyguard.KeyguardUpdateMonitor.11
            public final void onLockoutReset(int i) {
                KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                int i2 = KeyguardUpdateMonitor.BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED;
                keyguardUpdateMonitor.handleFaceLockoutReset(0);
            }
        };
        this.mFaceLockoutResetCallback = r143;
        this.mFingerprintAuthenticationCallback = new FingerprintManager.AuthenticationCallback() { // from class: com.android.keyguard.KeyguardUpdateMonitor.12
            public final void onAuthenticationAcquired(int i) {
                Trace.beginSection("KeyguardUpdateMonitor#onAuthenticationAcquired");
                KeyguardUpdateMonitor.this.handleFingerprintAcquired(i);
                Trace.endSection();
            }

            @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
            public final void onAuthenticationError(int i, CharSequence charSequence) {
                Trace.beginSection("KeyguardUpdateMonitor#onAuthenticationError");
                KeyguardUpdateMonitor.this.handleFingerprintError(i, charSequence.toString());
                Trace.endSection();
            }

            @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
            public final void onAuthenticationFailed() {
                KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                ActiveUnlockConfig.ActiveUnlockRequestOrigin activeUnlockRequestOrigin = ActiveUnlockConfig.ActiveUnlockRequestOrigin.BIOMETRIC_FAIL;
                keyguardUpdateMonitor.getClass();
                keyguardUpdateMonitor.requestActiveUnlock(activeUnlockRequestOrigin, "fingerprintFailure-dismissKeyguard", true);
                KeyguardUpdateMonitor.this.handleFingerprintAuthFailed();
            }

            @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
            public final void onAuthenticationHelp(int i, CharSequence charSequence) {
                Trace.beginSection("KeyguardUpdateMonitor#onAuthenticationHelp");
                KeyguardUpdateMonitor.this.handleFingerprintHelp(i, charSequence.toString());
                Trace.endSection();
            }

            @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
            public final void onAuthenticationSucceeded(FingerprintManager.AuthenticationResult authenticationResult) {
                Trace.beginSection("KeyguardUpdateMonitor#onAuthenticationSucceeded");
                KeyguardUpdateMonitor.this.handleFingerprintAuthenticated(authenticationResult.getUserId(), authenticationResult.isStrongBiometric());
                Trace.endSection();
            }

            public final void onUdfpsPointerDown(int i) {
                KeyguardUpdateMonitor.this.mLogger.logUdfpsPointerDown(i);
                KeyguardUpdateMonitor.this.requestFaceAuth("Face auth triggered due to finger down on UDFPS");
            }

            public final void onUdfpsPointerUp(int i) {
                KeyguardUpdateMonitor.this.mLogger.logUdfpsPointerUp(i);
            }
        };
        this.mFingerprintDetectionCallback = new FingerprintManager.FingerprintDetectionCallback() { // from class: com.android.keyguard.KeyguardUpdateMonitor$$ExternalSyntheticLambda6
            public final void onFingerprintDetected(int i, int i2, boolean z) {
                KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                keyguardUpdateMonitor.getClass();
                keyguardUpdateMonitor.handleBiometricDetected(i2, BiometricSourceType.FINGERPRINT, z);
            }
        };
        this.mFaceDetectionCallback = new FaceManager.FaceDetectionCallback() { // from class: com.android.keyguard.KeyguardUpdateMonitor$$ExternalSyntheticLambda7
            public final void onFaceDetected(int i, int i2, boolean z) {
                KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                keyguardUpdateMonitor.getClass();
                keyguardUpdateMonitor.handleBiometricDetected(i2, BiometricSourceType.FACE, z);
            }
        };
        this.mFaceAuthenticationCallback = new FaceManager.AuthenticationCallback() { // from class: com.android.keyguard.KeyguardUpdateMonitor.13
            public final void onAuthenticationAcquired(int i) {
                KeyguardUpdateMonitor.this.handleFaceAcquired(i);
            }

            public final void onAuthenticationError(int i, CharSequence charSequence) {
                KeyguardUpdateMonitor.this.handleFaceError(i, charSequence.toString());
            }

            public final void onAuthenticationFailed() {
                KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                keyguardUpdateMonitor.getClass();
                if (keyguardUpdateMonitor.mFaceLockedOutPermanent) {
                    KeyguardUpdateMonitor.this.mLogger.d("onAuthenticationFailed called after face has been locked out");
                } else {
                    KeyguardUpdateMonitor.this.handleFaceAuthFailed();
                }
            }

            public final void onAuthenticationHelp(int i, CharSequence charSequence) {
                KeyguardUpdateMonitor.this.handleFaceHelp(i, charSequence.toString());
            }

            public final void onAuthenticationSucceeded(FaceManager.AuthenticationResult authenticationResult) {
                KeyguardUpdateMonitor.this.handleFaceAuthenticated(authenticationResult.getUserId(), authenticationResult.isStrongBiometric());
            }
        };
        DevicePostureController.Callback callback = new DevicePostureController.Callback() { // from class: com.android.keyguard.KeyguardUpdateMonitor.14
            @Override // com.android.systemui.statusbar.policy.DevicePostureController.Callback
            public final void onPostureChanged(int i) {
                boolean z;
                boolean z2;
                KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                int i2 = keyguardUpdateMonitor.mPostureState;
                int i3 = keyguardUpdateMonitor.mConfigFaceAuthSupportedPosture;
                if (i3 != 0 && i2 != i3) {
                    z = false;
                } else {
                    z = true;
                }
                if (i3 != 0 && i != i3) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                keyguardUpdateMonitor.mPostureState = i;
                if (z && !z2) {
                    keyguardUpdateMonitor.mLogger.d("New posture does not allow face auth, stopping it");
                    keyguardUpdateMonitor.updateFaceListeningState(1, FaceAuthUiEvent.FACE_AUTH_UPDATED_POSTURE_CHANGED);
                }
                if (keyguardUpdateMonitor.mPostureState == 3) {
                    keyguardUpdateMonitor.mLogger.d("Posture changed to open - attempting to request active unlock");
                    keyguardUpdateMonitor.requestActiveUnlockFromWakeReason(12, false);
                }
            }
        };
        this.mPostureCallback = callback;
        this.mFingerprintSensorProperties = Collections.emptyList();
        this.mFaceSensorProperties = Collections.emptyList();
        this.mIsUnlockWithFingerprintPossible = new HashMap();
        UserTracker.Callback callback2 = new UserTracker.Callback() { // from class: com.android.keyguard.KeyguardUpdateMonitor.20
            @Override // com.android.systemui.settings.UserTracker.Callback
            public final void onUserChanged(int i, Context context2) {
                AnonymousClass15 anonymousClass15 = KeyguardUpdateMonitor.this.mHandler;
                anonymousClass15.sendMessage(anonymousClass15.obtainMessage(314, i, 0));
            }

            @Override // com.android.systemui.settings.UserTracker.Callback
            public final void onUserChanging(int i, Context context2, CountDownLatch countDownLatch) {
                AnonymousClass15 anonymousClass15 = KeyguardUpdateMonitor.this.mHandler;
                anonymousClass15.sendMessage(anonymousClass15.obtainMessage(310, i, 0, countDownLatch));
            }
        };
        this.mUserChangedCallback = callback2;
        ?? r144 = new TaskStackChangeListener() { // from class: com.android.keyguard.KeyguardUpdateMonitor.22
            @Override // com.android.systemui.shared.system.TaskStackChangeListener
            public final void onTaskStackChangedBackground() {
                KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                try {
                    ActivityTaskManager.RootTaskInfo rootTaskInfo = ActivityTaskManager.getService().getRootTaskInfo(0, 4);
                    if (rootTaskInfo == null) {
                        return;
                    }
                    keyguardUpdateMonitor.mLogger.logTaskStackChangedForAssistant(rootTaskInfo.visible);
                    AnonymousClass15 anonymousClass15 = keyguardUpdateMonitor.mHandler;
                    anonymousClass15.sendMessage(anonymousClass15.obtainMessage(335, Boolean.valueOf(rootTaskInfo.visible)));
                } catch (RemoteException e) {
                    keyguardUpdateMonitor.mLogger.logException("unable to check task stack ", e);
                }
            }
        };
        this.mTaskStackListener = r144;
        this.mContext = context;
        this.mSubscriptionManager = subscriptionManager;
        this.mUserTracker = userTracker;
        this.mTelephonyListenerManager = telephonyListenerManager;
        this.mDeviceProvisioned = isDeviceProvisionedInSettingsDb();
        this.mStrongAuthTracker = new StrongAuthTracker(context);
        this.mBackgroundExecutor = executor;
        this.mInteractionJankMonitor = interactionJankMonitor;
        this.mLatencyTracker = latencyTracker;
        this.mStatusBarStateController = statusBarStateController;
        statusBarStateController.addCallback(r13);
        this.mStatusBarState = statusBarStateController.getState();
        this.mLockPatternUtils = lockPatternUtils;
        this.mAuthController = authController;
        String name = getClass().getName();
        dumpManager.getClass();
        DumpManager.registerDumpable$default(dumpManager, name, this);
        this.mSensorPrivacyManager = sensorPrivacyManager;
        this.mActiveUnlockConfig = activeUnlockConfig;
        this.mLogger = keyguardUpdateMonitorLogger;
        this.mUiEventLogger = uiEventLogger;
        this.mSessionTrackerProvider = provider;
        this.mTrustManager = trustManager;
        this.mUserManager = userManager;
        this.mTelephonyManager = telephonyManager;
        this.mDevicePolicyManager = devicePolicyManager;
        this.mPackageManager = packageManager;
        this.mFpm = fingerprintManager;
        this.mFaceManager = faceManager;
        activeUnlockConfig.keyguardUpdateMonitor = this;
        this.mConfigFaceAuthSupportedPosture = context.getResources().getInteger(R.integer.config_face_auth_supported_posture);
        this.mFaceWakeUpTriggersConfig = faceWakeUpTriggersConfig;
        this.mCarrierConfigManager = carrierConfigManager;
        ?? r8 = new Handler(looper) { // from class: com.android.keyguard.KeyguardUpdateMonitor.15
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                int i = 0;
                switch (message.what) {
                    case 301:
                        KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                        int i2 = KeyguardUpdateMonitor.BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED;
                        keyguardUpdateMonitor.getClass();
                        Assert.isMainThread();
                        while (i < keyguardUpdateMonitor.mCallbacks.size()) {
                            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) keyguardUpdateMonitor.mCallbacks.get(i)).get();
                            if (keyguardUpdateMonitorCallback != null) {
                                keyguardUpdateMonitorCallback.onTimeChanged();
                            }
                            i++;
                        }
                        return;
                    case 302:
                        KeyguardUpdateMonitor.this.handleBatteryUpdate((BatteryStatus) message.obj);
                        return;
                    case 303:
                    case 305:
                    case VpnErrorValues.ERROR_VPN_RECREATE_PROFILE_FAIL /* 307 */:
                    case 311:
                    case 313:
                    case 315:
                    case 316:
                    case 317:
                    case 323:
                    case 324:
                    case 325:
                    case 326:
                    case 327:
                    case CustomDeviceManager.SOURCE_ADDRESS /* 331 */:
                    case 343:
                    default:
                        KeyguardUpdateMonitor.this.handleSecMessage(message);
                        return;
                    case 304:
                        KeyguardUpdateMonitor.this.handleSimStateChange(message.arg1, message.arg2, ((Integer) message.obj).intValue());
                        return;
                    case VpnErrorValues.ERROR_STOPPING_CONNECTION_BEFORE_REMOVING /* 306 */:
                        KeyguardUpdateMonitor.this.handlePhoneStateChanged((String) message.obj);
                        return;
                    case 308:
                        KeyguardUpdateMonitor keyguardUpdateMonitor2 = KeyguardUpdateMonitor.this;
                        int i3 = KeyguardUpdateMonitor.BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED;
                        keyguardUpdateMonitor2.getClass();
                        Assert.isMainThread();
                        while (i < keyguardUpdateMonitor2.mCallbacks.size()) {
                            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback2 = (KeyguardUpdateMonitorCallback) ((WeakReference) keyguardUpdateMonitor2.mCallbacks.get(i)).get();
                            if (keyguardUpdateMonitorCallback2 != null) {
                                keyguardUpdateMonitorCallback2.onDeviceProvisioned();
                            }
                            i++;
                        }
                        if (keyguardUpdateMonitor2.mDeviceProvisionedObserver != null) {
                            keyguardUpdateMonitor2.mContext.getContentResolver().unregisterContentObserver(keyguardUpdateMonitor2.mDeviceProvisionedObserver);
                            keyguardUpdateMonitor2.mDeviceProvisionedObserver = null;
                            return;
                        }
                        return;
                    case 309:
                        KeyguardUpdateMonitor.this.handleDevicePolicyManagerStateChanged(message.arg1);
                        return;
                    case 310:
                        KeyguardUpdateMonitor.this.handleUserSwitching(message.arg1, (CountDownLatch) message.obj);
                        return;
                    case 312:
                        KeyguardUpdateMonitor.this.handleKeyguardReset();
                        return;
                    case 314:
                        KeyguardUpdateMonitor.this.handleUserSwitchComplete(message.arg1);
                        return;
                    case 318:
                        KeyguardUpdateMonitor keyguardUpdateMonitor3 = KeyguardUpdateMonitor.this;
                        int i4 = KeyguardUpdateMonitor.BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED;
                        keyguardUpdateMonitor3.handleReportEmergencyCallAction();
                        return;
                    case 319:
                        Trace.beginSection("KeyguardUpdateMonitor#handler MSG_STARTED_WAKING_UP");
                        KeyguardUpdateMonitor.this.handleStartedWakingUp(message.arg1);
                        Trace.endSection();
                        return;
                    case 320:
                        KeyguardUpdateMonitor.this.handleFinishedGoingToSleep(message.arg1);
                        return;
                    case 321:
                        KeyguardUpdateMonitor.this.handleStartedGoingToSleep(message.arg1);
                        return;
                    case 322:
                        KeyguardUpdateMonitor.this.handlePrimaryBouncerChanged(message.arg1, message.arg2);
                        return;
                    case 328:
                        KeyguardUpdateMonitor keyguardUpdateMonitor4 = KeyguardUpdateMonitor.this;
                        int i5 = KeyguardUpdateMonitor.BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED;
                        keyguardUpdateMonitor4.getClass();
                        Assert.isMainThread();
                        Log.i("KeyguardUpdateMonitor", "onSubscriptionInfoChanged()");
                        keyguardUpdateMonitor4.mLogger.v("onSubscriptionInfoChanged()");
                        List<SubscriptionInfo> completeActiveSubscriptionInfoList = keyguardUpdateMonitor4.mSubscriptionManager.getCompleteActiveSubscriptionInfoList();
                        if (completeActiveSubscriptionInfoList != null) {
                            Iterator<SubscriptionInfo> it = completeActiveSubscriptionInfoList.iterator();
                            while (it.hasNext()) {
                                keyguardUpdateMonitor4.mLogger.logSubInfo(it.next());
                            }
                        } else {
                            keyguardUpdateMonitor4.mLogger.v("onSubscriptionInfoChanged: list is null");
                        }
                        List subscriptionInfo = keyguardUpdateMonitor4.getSubscriptionInfo(true);
                        ArrayList arrayList = new ArrayList();
                        HashSet hashSet = new HashSet();
                        int i6 = 0;
                        while (true) {
                            ArrayList arrayList2 = (ArrayList) subscriptionInfo;
                            if (i6 < arrayList2.size()) {
                                SubscriptionInfo subscriptionInfo2 = (SubscriptionInfo) arrayList2.get(i6);
                                hashSet.add(Integer.valueOf(subscriptionInfo2.getSubscriptionId()));
                                if (keyguardUpdateMonitor4.refreshSimState(subscriptionInfo2.getSubscriptionId(), subscriptionInfo2.getSimSlotIndex())) {
                                    arrayList.add(subscriptionInfo2);
                                }
                                i6++;
                            } else {
                                Iterator it2 = keyguardUpdateMonitor4.mSimDatas.entrySet().iterator();
                                while (it2.hasNext()) {
                                    Map.Entry entry = (Map.Entry) it2.next();
                                    if (!hashSet.contains(entry.getKey())) {
                                        SimData simData = (SimData) entry.getValue();
                                        boolean refreshSimState = keyguardUpdateMonitor4.refreshSimState(simData.subId, simData.slotId);
                                        keyguardUpdateMonitor4.mLogger.logInvalidSubId(((Integer) entry.getKey()).intValue());
                                        it2.remove();
                                        if (refreshSimState) {
                                            for (int i7 = 0; i7 < keyguardUpdateMonitor4.mCallbacks.size(); i7++) {
                                                KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback3 = (KeyguardUpdateMonitorCallback) ((WeakReference) keyguardUpdateMonitor4.mCallbacks.get(i7)).get();
                                                if (keyguardUpdateMonitorCallback3 != null) {
                                                    keyguardUpdateMonitorCallback3.onSimStateChanged(simData.subId, simData.slotId, simData.simState);
                                                }
                                            }
                                        }
                                    }
                                }
                                for (int i8 = 0; i8 < arrayList.size(); i8++) {
                                    SimData simData2 = (SimData) keyguardUpdateMonitor4.mSimDatas.get(Integer.valueOf(((SubscriptionInfo) arrayList.get(i8)).getSubscriptionId()));
                                    for (int i9 = 0; i9 < keyguardUpdateMonitor4.mCallbacks.size(); i9++) {
                                        KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback4 = (KeyguardUpdateMonitorCallback) ((WeakReference) keyguardUpdateMonitor4.mCallbacks.get(i9)).get();
                                        if (keyguardUpdateMonitorCallback4 != null) {
                                            keyguardUpdateMonitorCallback4.onSimStateChanged(simData2.subId, simData2.slotId, simData2.simState);
                                        }
                                    }
                                }
                                keyguardUpdateMonitor4.callbacksRefreshCarrierInfo(null);
                                return;
                            }
                        }
                    case 329:
                        KeyguardUpdateMonitor keyguardUpdateMonitor5 = KeyguardUpdateMonitor.this;
                        int i10 = KeyguardUpdateMonitor.BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED;
                        keyguardUpdateMonitor5.callbacksRefreshCarrierInfo(null);
                        return;
                    case 330:
                        KeyguardUpdateMonitor.this.handleServiceStateChange(message.arg1, (ServiceState) message.obj);
                        return;
                    case CustomDeviceManager.DESTINATION_ADDRESS /* 332 */:
                        Trace.beginSection("KeyguardUpdateMonitor#handler MSG_SCREEN_TURNED_OFF");
                        KeyguardUpdateMonitor keyguardUpdateMonitor6 = KeyguardUpdateMonitor.this;
                        int i11 = KeyguardUpdateMonitor.BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED;
                        keyguardUpdateMonitor6.getClass();
                        Assert.isMainThread();
                        keyguardUpdateMonitor6.mHardwareFingerprintUnavailableRetryCount = 0;
                        keyguardUpdateMonitor6.mHardwareFaceUnavailableRetryCount = 0;
                        Trace.endSection();
                        return;
                    case 333:
                        KeyguardUpdateMonitor.this.handleDreamingStateChanged(message.arg1);
                        return;
                    case 334:
                        KeyguardUpdateMonitor.this.handleUserUnlocked(message.arg1);
                        return;
                    case 335:
                        KeyguardUpdateMonitor.this.setAssistantVisible(((Boolean) message.obj).booleanValue());
                        return;
                    case 336:
                        KeyguardUpdateMonitor.this.updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_FP_AUTHENTICATED);
                        return;
                    case 337:
                        KeyguardUpdateMonitor keyguardUpdateMonitor7 = KeyguardUpdateMonitor.this;
                        int i12 = KeyguardUpdateMonitor.BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED;
                        keyguardUpdateMonitor7.getClass();
                        Assert.isMainThread();
                        boolean isLogoutEnabled = keyguardUpdateMonitor7.mDevicePolicyManager.isLogoutEnabled();
                        if (keyguardUpdateMonitor7.mLogoutEnabled != isLogoutEnabled) {
                            keyguardUpdateMonitor7.mLogoutEnabled = isLogoutEnabled;
                            while (i < keyguardUpdateMonitor7.mCallbacks.size()) {
                                KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback5 = (KeyguardUpdateMonitorCallback) ((WeakReference) keyguardUpdateMonitor7.mCallbacks.get(i)).get();
                                if (keyguardUpdateMonitorCallback5 != null) {
                                    keyguardUpdateMonitorCallback5.onLogoutEnabledChanged();
                                }
                                i++;
                            }
                            return;
                        }
                        return;
                    case 338:
                        KeyguardUpdateMonitor.this.updateTelephonyCapable(((Boolean) message.obj).booleanValue());
                        return;
                    case 339:
                        KeyguardUpdateMonitor keyguardUpdateMonitor8 = KeyguardUpdateMonitor.this;
                        String str = (String) message.obj;
                        int i13 = KeyguardUpdateMonitor.BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED;
                        keyguardUpdateMonitor8.getClass();
                        Assert.isMainThread();
                        keyguardUpdateMonitor8.mLogger.d("handleTimeZoneUpdate");
                        while (i < keyguardUpdateMonitor8.mCallbacks.size()) {
                            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback6 = (KeyguardUpdateMonitorCallback) ((WeakReference) keyguardUpdateMonitor8.mCallbacks.get(i)).get();
                            if (keyguardUpdateMonitorCallback6 != null) {
                                keyguardUpdateMonitorCallback6.onTimeZoneChanged(TimeZone.getTimeZone(str));
                                keyguardUpdateMonitorCallback6.onTimeChanged();
                            }
                            i++;
                        }
                        return;
                    case 340:
                        KeyguardUpdateMonitor keyguardUpdateMonitor9 = KeyguardUpdateMonitor.this;
                        int i14 = message.arg1;
                        int i15 = KeyguardUpdateMonitor.BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED;
                        keyguardUpdateMonitor9.getClass();
                        Assert.isMainThread();
                        keyguardUpdateMonitor9.mUserIsUnlocked.put(i14, keyguardUpdateMonitor9.mUserManager.isUserUnlocked(i14));
                        return;
                    case 341:
                        KeyguardUpdateMonitor.this.handleUserRemoved(message.arg1);
                        return;
                    case 342:
                        KeyguardUpdateMonitor keyguardUpdateMonitor10 = KeyguardUpdateMonitor.this;
                        boolean booleanValue = ((Boolean) message.obj).booleanValue();
                        int i16 = KeyguardUpdateMonitor.BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED;
                        keyguardUpdateMonitor10.getClass();
                        Assert.isMainThread();
                        keyguardUpdateMonitor10.setKeyguardGoingAway(booleanValue);
                        return;
                    case 344:
                        KeyguardUpdateMonitor keyguardUpdateMonitor11 = KeyguardUpdateMonitor.this;
                        String str2 = (String) message.obj;
                        int i17 = KeyguardUpdateMonitor.BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED;
                        keyguardUpdateMonitor11.getClass();
                        Assert.isMainThread();
                        keyguardUpdateMonitor11.mLogger.logTimeFormatChanged(str2);
                        while (i < keyguardUpdateMonitor11.mCallbacks.size()) {
                            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback7 = (KeyguardUpdateMonitorCallback) ((WeakReference) keyguardUpdateMonitor11.mCallbacks.get(i)).get();
                            if (keyguardUpdateMonitorCallback7 != null) {
                                keyguardUpdateMonitorCallback7.onTimeFormatChanged(str2);
                            }
                            i++;
                        }
                        return;
                    case 345:
                        KeyguardUpdateMonitor keyguardUpdateMonitor12 = KeyguardUpdateMonitor.this;
                        int i18 = KeyguardUpdateMonitor.BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED;
                        keyguardUpdateMonitor12.getClass();
                        Assert.isMainThread();
                        while (i < keyguardUpdateMonitor12.mCallbacks.size()) {
                            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback8 = (KeyguardUpdateMonitorCallback) ((WeakReference) keyguardUpdateMonitor12.mCallbacks.get(i)).get();
                            if (keyguardUpdateMonitorCallback8 != null) {
                                keyguardUpdateMonitorCallback8.onRequireUnlockForNfc();
                            }
                            i++;
                        }
                        return;
                    case 346:
                        KeyguardUpdateMonitor keyguardUpdateMonitor13 = KeyguardUpdateMonitor.this;
                        int i19 = KeyguardUpdateMonitor.BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED;
                        keyguardUpdateMonitor13.getClass();
                        Assert.isMainThread();
                        while (i < keyguardUpdateMonitor13.mCallbacks.size()) {
                            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback9 = (KeyguardUpdateMonitorCallback) ((WeakReference) keyguardUpdateMonitor13.mCallbacks.get(i)).get();
                            if (keyguardUpdateMonitorCallback9 != null) {
                                keyguardUpdateMonitorCallback9.onKeyguardDismissAnimationFinished();
                            }
                            i++;
                        }
                        return;
                    case 347:
                        KeyguardUpdateMonitor keyguardUpdateMonitor14 = KeyguardUpdateMonitor.this;
                        Intent intent = (Intent) message.obj;
                        keyguardUpdateMonitor14.mLogger.logServiceProvidersUpdated(intent);
                        keyguardUpdateMonitor14.callbacksRefreshCarrierInfo(intent);
                        return;
                }
            }
        };
        this.mHandler = r8;
        if (!this.mDeviceProvisioned) {
            this.mDeviceProvisionedObserver = new ContentObserver(r8) { // from class: com.android.keyguard.KeyguardUpdateMonitor.21
                @Override // android.database.ContentObserver
                public final void onChange(boolean z) {
                    super.onChange(z);
                    KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                    int i = KeyguardUpdateMonitor.BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED;
                    keyguardUpdateMonitor.mDeviceProvisioned = keyguardUpdateMonitor.isDeviceProvisionedInSettingsDb();
                    KeyguardUpdateMonitor keyguardUpdateMonitor2 = KeyguardUpdateMonitor.this;
                    if (keyguardUpdateMonitor2.mDeviceProvisioned) {
                        keyguardUpdateMonitor2.mHandler.sendEmptyMessage(308);
                    }
                    KeyguardUpdateMonitor keyguardUpdateMonitor3 = KeyguardUpdateMonitor.this;
                    keyguardUpdateMonitor3.mLogger.logDeviceProvisionedState(keyguardUpdateMonitor3.mDeviceProvisioned);
                }
            };
            context.getContentResolver().registerContentObserver(Settings.Global.getUriFor("device_provisioned"), false, this.mDeviceProvisionedObserver);
            boolean isDeviceProvisionedInSettingsDb = isDeviceProvisionedInSettingsDb();
            if (isDeviceProvisionedInSettingsDb != this.mDeviceProvisioned) {
                this.mDeviceProvisioned = isDeviceProvisionedInSettingsDb;
                if (isDeviceProvisionedInSettingsDb) {
                    r8.sendEmptyMessage(308);
                }
            }
        }
        this.mBatteryStatus = new BatteryStatus(1, 100, 0, 1, 0, true);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_TICK");
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
        intentFilter.addAction("android.intent.action.SIM_STATE_CHANGED");
        if (!LsRune.SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE) {
            intentFilter.addAction("android.intent.action.SERVICE_STATE");
        }
        intentFilter.addAction("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED");
        intentFilter.addAction("android.intent.action.PHONE_STATE");
        intentFilter.addAction("android.telephony.action.SERVICE_PROVIDERS_UPDATED");
        intentFilter.addAction("android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED");
        intentFilter.addAction("android.hardware.usb.action.USB_PORT_COMPLIANCE_CHANGED");
        intentFilter.addAction("android.intent.action.LOCALE_CHANGED");
        broadcastDispatcher.registerReceiverWithHandler(broadcastReceiver, intentFilter, r8);
        executor.execute(new KeyguardUpdateMonitor$$ExternalSyntheticLambda3(this, 4));
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.app.action.NEXT_ALARM_CLOCK_CHANGED");
        intentFilter2.addAction("android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED");
        intentFilter2.addAction("android.intent.action.USER_UNLOCKED");
        intentFilter2.addAction("android.intent.action.USER_STOPPED");
        intentFilter2.addAction("android.intent.action.USER_REMOVED");
        intentFilter2.addAction("android.nfc.action.REQUIRE_UNLOCK_FOR_NFC");
        broadcastDispatcher.registerReceiverWithHandler(broadcastReceiver2, intentFilter2, r8, UserHandle.ALL);
        subscriptionManager.addOnSubscriptionsChangedListener(r14);
        UserTrackerImpl userTrackerImpl = (UserTrackerImpl) userTracker;
        userTrackerImpl.addCallback(callback2, executor2);
        runSystemUserOnly(new KeyguardUpdateMonitor$$ExternalSyntheticLambda3(this, 5));
        if (fingerprintManager != 0) {
            fingerprintManager.addAuthenticatorsRegisteredCallback(new IFingerprintAuthenticatorsRegisteredCallback.Stub() { // from class: com.android.keyguard.KeyguardUpdateMonitor.16
                public final void onAllAuthenticatorsRegistered(List list) {
                    KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                    keyguardUpdateMonitor.mFingerprintSensorProperties = list;
                    keyguardUpdateMonitor.updateFingerprintListeningState(2);
                    KeyguardUpdateMonitor.this.mLogger.d("FingerprintManager onAllAuthenticatorsRegistered");
                }
            });
            fingerprintManager.addLockoutResetCallback(r142);
        }
        if (faceManager != null) {
            faceManager.addAuthenticatorsRegisteredCallback(new IFaceAuthenticatorsRegisteredCallback.Stub() { // from class: com.android.keyguard.KeyguardUpdateMonitor.17
                public final void onAllAuthenticatorsRegistered(List list) {
                    KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                    keyguardUpdateMonitor.mFaceSensorProperties = list;
                    keyguardUpdateMonitor.mLogger.d("FaceManager onAllAuthenticatorsRegistered");
                }
            });
            faceManager.addLockoutResetCallback((FaceManager.LockoutResetCallback) r143);
        }
        runSystemUserOnly(new KeyguardUpdateMonitor$$ExternalSyntheticLambda5(this, biometricManager, 1));
        authController.addCallback(new AnonymousClass18(executor2));
        if (this.mConfigFaceAuthSupportedPosture != 0) {
            ((DevicePostureControllerImpl) devicePostureController).addCallback(callback);
        }
        TaskStackChangeListeners.INSTANCE.registerTaskStackListener(r144);
        this.mIsSystemUser = userManager.isSystemUser();
        int userId = userTrackerImpl.getUserId();
        sparseBooleanArray.put(userId, userManager.isUserUnlocked(userId));
        this.mLogoutEnabled = devicePolicyManager.isLogoutEnabled();
        updateSecondaryLockscreenRequirement(userId);
        for (UserInfo userInfo : userManager.getUsers()) {
            boolean isTrustUsuallyManaged = this.mTrustManager.isTrustUsuallyManaged(userInfo.id);
            KeyguardUpdateMonitorLogger keyguardUpdateMonitorLogger2 = this.mLogger;
            int i = userInfo.id;
            keyguardUpdateMonitorLogger2.logTrustUsuallyManagedUpdated(i, "init from constructor", this.mUserTrustIsUsuallyManaged.get(i), isTrustUsuallyManaged);
            this.mUserTrustIsUsuallyManaged.put(userInfo.id, isTrustUsuallyManaged);
        }
        if (WirelessUtils.isAirplaneModeOn(this.mContext) && !hasMessages(329)) {
            sendEmptyMessage(329);
        }
        runSystemUserOnly(new KeyguardUpdateMonitor$$ExternalSyntheticLambda3(this, 6), this.mBackgroundExecutor);
        ?? r1 = new ContentObserver(this.mHandler) { // from class: com.android.keyguard.KeyguardUpdateMonitor.19
            @Override // android.database.ContentObserver
            public final void onChange(boolean z) {
                KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                AnonymousClass15 anonymousClass15 = keyguardUpdateMonitor.mHandler;
                anonymousClass15.sendMessage(anonymousClass15.obtainMessage(344, Settings.System.getString(keyguardUpdateMonitor.mContext.getContentResolver(), "time_12_24")));
            }
        };
        this.mTimeFormatChangeObserver = r1;
        this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("time_12_24"), false, r1, -1);
        ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(optional.orElse(null));
    }

    public static synchronized int getCurrentUser() {
        int i;
        synchronized (KeyguardUpdateMonitor.class) {
            i = sCurrentUser;
        }
        return i;
    }

    public final void callbacksRefreshCarrierInfo(Intent intent) {
        Assert.isMainThread();
        for (int i = 0; i < this.mCallbacks.size(); i++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onRefreshCarrierInfo(intent);
            }
        }
    }

    public final void clearBiometricRecognized() {
        clearBiometricRecognized(-10000);
    }

    public void dispatchDreamingStarted() {
        AnonymousClass15 anonymousClass15 = this.mHandler;
        anonymousClass15.sendMessage(anonymousClass15.obtainMessage(333, 1, 0));
    }

    public void dispatchDreamingStopped() {
        AnonymousClass15 anonymousClass15 = this.mHandler;
        anonymousClass15.sendMessage(anonymousClass15.obtainMessage(333, 0, 0));
    }

    public void dispatchStartedWakingUp(int i) {
        synchronized (this) {
            this.mDeviceInteractive = true;
        }
        AnonymousClass15 anonymousClass15 = this.mHandler;
        anonymousClass15.sendMessage(anonymousClass15.obtainMessage(319, i, 0));
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "KeyguardUpdateMonitor state:", "  getUserHasTrust()=");
        m.append(getUserHasTrust(getCurrentUser()));
        printWriter.println(m.toString());
        printWriter.println("  getUserUnlockedWithBiometric()=" + getUserUnlockedWithBiometric(getCurrentUser()));
        printWriter.println("  isFaceAuthInteractorEnabled: false");
        printWriter.println("  SIM States:");
        Iterator it = this.mSimDatas.values().iterator();
        while (it.hasNext()) {
            printWriter.println("    " + ((SimData) it.next()).toString());
        }
        printWriter.println("  Subs:");
        if (this.mSubscriptionInfo != null) {
            for (int i = 0; i < this.mSubscriptionInfo.size(); i++) {
                printWriter.println("    " + this.mSubscriptionInfo.get(i));
            }
        }
        printWriter.println("  Current active data subId=" + this.mActiveMobileDataSubscription);
        printWriter.println("  Service states:");
        Iterator it2 = this.mServiceStates.keySet().iterator();
        while (it2.hasNext()) {
            int intValue = ((Integer) it2.next()).intValue();
            StringBuilder m2 = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("    ", intValue, "=");
            m2.append(this.mServiceStates.get(Integer.valueOf(intValue)));
            printWriter.println(m2.toString());
        }
        dumpAllUsers(printWriter);
    }

    public final boolean getCachedIsUnlockWithFingerprintPossible(int i) {
        return ((Boolean) this.mIsUnlockWithFingerprintPossible.getOrDefault(Integer.valueOf(i), Boolean.FALSE)).booleanValue();
    }

    public final List getFilteredSubscriptionInfo() {
        int subscriptionId;
        List subscriptionInfo = getSubscriptionInfo(false);
        ArrayList arrayList = (ArrayList) subscriptionInfo;
        if (arrayList.size() == 2) {
            SubscriptionInfo subscriptionInfo2 = (SubscriptionInfo) arrayList.get(0);
            SubscriptionInfo subscriptionInfo3 = (SubscriptionInfo) arrayList.get(1);
            if (subscriptionInfo2.getGroupUuid() != null && subscriptionInfo2.getGroupUuid().equals(subscriptionInfo3.getGroupUuid())) {
                if (!subscriptionInfo2.isOpportunistic() && !subscriptionInfo3.isOpportunistic()) {
                    return subscriptionInfo;
                }
                CarrierConfigManager carrierConfigManager = this.mCarrierConfigManager;
                if (subscriptionInfo2.isOpportunistic()) {
                    subscriptionId = subscriptionInfo2.getSubscriptionId();
                } else {
                    subscriptionId = subscriptionInfo3.getSubscriptionId();
                }
                if (carrierConfigManager.getConfigForSubId(subscriptionId).getBoolean("always_show_primary_signal_bar_in_opportunistic_network_boolean")) {
                    if (!subscriptionInfo2.isOpportunistic()) {
                        subscriptionInfo2 = subscriptionInfo3;
                    }
                    arrayList.remove(subscriptionInfo2);
                } else {
                    if (subscriptionInfo2.getSubscriptionId() == this.mActiveMobileDataSubscription) {
                        subscriptionInfo2 = subscriptionInfo3;
                    }
                    arrayList.remove(subscriptionInfo2);
                }
            }
        }
        return subscriptionInfo;
    }

    public Handler getHandler() {
        return this.mHandler;
    }

    public final boolean getIsFaceAuthenticated() {
        BiometricAuthenticated biometricAuthenticated = this.mUserFaceAuthenticated.get(getCurrentUser());
        if (biometricAuthenticated != null) {
            return biometricAuthenticated.mAuthenticated;
        }
        return false;
    }

    public final int getNextSubIdForState(int i) {
        int i2 = 0;
        List subscriptionInfo = getSubscriptionInfo(false);
        int i3 = -1;
        int i4 = Integer.MAX_VALUE;
        while (true) {
            ArrayList arrayList = (ArrayList) subscriptionInfo;
            if (i2 < arrayList.size()) {
                int subscriptionId = ((SubscriptionInfo) arrayList.get(i2)).getSubscriptionId();
                int slotId = getSlotId(subscriptionId);
                if (i == getSimState(subscriptionId) && i4 > slotId) {
                    if (isSimPinPassed(slotId, i)) {
                        this.mLogger.v("getNextSubIdForState() PIN_REQUIRED happen on isSimPinPassed slot");
                    } else if (LsRune.SECURITY_ESIM && isESimRemoveButtonClicked()) {
                        this.mLogger.v("getNextSubIdForState() " + i + " happen on isESimRemoveButtonClicked slotId = " + slotId);
                    } else {
                        i3 = subscriptionId;
                        i4 = slotId;
                    }
                }
                i2++;
            } else {
                return i3;
            }
        }
    }

    public final int getSimState(int i) {
        if (this.mSimDatas.containsKey(Integer.valueOf(i))) {
            return ((SimData) this.mSimDatas.get(Integer.valueOf(i))).simState;
        }
        return 0;
    }

    public final int getSlotId(int i) {
        if (!this.mSimDatas.containsKey(Integer.valueOf(i))) {
            refreshSimState(i, SubscriptionManager.getSlotIndex(i));
        }
        return ((SimData) this.mSimDatas.get(Integer.valueOf(i))).slotId;
    }

    public final List getSubscriptionInfo(boolean z) {
        List<SubscriptionInfo> list = this.mSubscriptionInfo;
        if (list == null || z) {
            list = this.mSubscriptionManager.getCompleteActiveSubscriptionInfoList();
        }
        if (list == null) {
            this.mSubscriptionInfo = new ArrayList();
        } else {
            this.mSubscriptionInfo = list;
        }
        return new ArrayList(this.mSubscriptionInfo);
    }

    public final SubscriptionInfo getSubscriptionInfoForSubId(int i) {
        int i2 = 0;
        List subscriptionInfo = getSubscriptionInfo(false);
        while (true) {
            ArrayList arrayList = (ArrayList) subscriptionInfo;
            if (i2 < arrayList.size()) {
                SubscriptionInfo subscriptionInfo2 = (SubscriptionInfo) arrayList.get(i2);
                if (i == subscriptionInfo2.getSubscriptionId()) {
                    return subscriptionInfo2;
                }
                i2++;
            } else {
                return null;
            }
        }
    }

    public boolean getUserCanSkipBouncer(int i) {
        if (!getUserHasTrust(i) && !getUserUnlockedWithBiometric(i)) {
            return false;
        }
        return true;
    }

    public final boolean getUserHasTrust(int i) {
        if (!isSimPinSecure() && this.mUserHasTrust.get(i) && isUnlockingWithBiometricAllowed(true)) {
            return true;
        }
        return false;
    }

    public final boolean getUserTrustIsManaged(int i) {
        if (this.mUserTrustIsManaged.get(i) && !isSimPinSecure()) {
            return true;
        }
        return false;
    }

    public final boolean getUserUnlockedWithBiometric(int i) {
        boolean z;
        BiometricAuthenticated biometricAuthenticated = this.mUserFingerprintAuthenticated.get(i);
        if (biometricAuthenticated != null && biometricAuthenticated.mAuthenticated && isUnlockingWithBiometricAllowed(biometricAuthenticated.mIsStrongBiometric)) {
            z = true;
        } else {
            z = false;
        }
        if (z || getUserUnlockedWithFace(i)) {
            return true;
        }
        return false;
    }

    public boolean getUserUnlockedWithBiometricAndIsBypassing(int i) {
        boolean z;
        boolean z2;
        BiometricAuthenticated biometricAuthenticated = this.mUserFingerprintAuthenticated.get(i);
        BiometricAuthenticated biometricAuthenticated2 = this.mUserFaceAuthenticated.get(i);
        if (biometricAuthenticated != null && biometricAuthenticated.mAuthenticated && isUnlockingWithBiometricAllowed(biometricAuthenticated.mIsStrongBiometric)) {
            z = true;
        } else {
            z = false;
        }
        if (biometricAuthenticated2 != null && biometricAuthenticated2.mAuthenticated && isUnlockingWithBiometricAllowed(biometricAuthenticated2.mIsStrongBiometric)) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z) {
            return true;
        }
        if (z2 && this.mKeyguardBypassController.canBypass()) {
            return true;
        }
        return false;
    }

    public final boolean getUserUnlockedWithFace(int i) {
        BiometricAuthenticated biometricAuthenticated = this.mUserFaceAuthenticated.get(i);
        if (biometricAuthenticated != null && biometricAuthenticated.mAuthenticated && isUnlockingWithBiometricAllowed(biometricAuthenticated.mIsStrongBiometric)) {
            return true;
        }
        return false;
    }

    public void handleBatteryUpdate(BatteryStatus batteryStatus) {
        boolean z;
        Assert.isMainThread();
        BatteryStatus batteryStatus2 = this.mBatteryStatus;
        boolean isPluggedIn = batteryStatus.isPluggedIn();
        boolean isPluggedIn2 = batteryStatus2.isPluggedIn();
        boolean z2 = true;
        if (isPluggedIn2 && isPluggedIn && batteryStatus2.status != batteryStatus.status) {
            z = true;
        } else {
            z = false;
        }
        if (isPluggedIn2 == isPluggedIn && !z && batteryStatus2.level == batteryStatus.level && ((!isPluggedIn || batteryStatus.maxChargingWattage == batteryStatus2.maxChargingWattage) && batteryStatus2.present == batteryStatus.present && batteryStatus2.incompatibleCharger.equals(batteryStatus.incompatibleCharger) && batteryStatus.chargingStatus == batteryStatus2.chargingStatus)) {
            z2 = false;
        }
        this.mBatteryStatus = batteryStatus;
        if (z2) {
            this.mLogger.logHandleBatteryUpdate(batteryStatus);
            for (int i = 0; i < this.mCallbacks.size(); i++) {
                KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i)).get();
                if (keyguardUpdateMonitorCallback != null) {
                    keyguardUpdateMonitorCallback.onRefreshBatteryInfo();
                }
            }
        }
    }

    public final void handleBiometricDetected(int i, BiometricSourceType biometricSourceType, boolean z) {
        Trace.beginSection("KeyGuardUpdateMonitor#handlerBiometricDetected");
        Assert.isMainThread();
        Trace.beginSection("KeyGuardUpdateMonitor#onBiometricDetected");
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onBiometricDetected();
            }
        }
        Trace.endSection();
        if (biometricSourceType == BiometricSourceType.FINGERPRINT) {
            this.mLogger.logFingerprintDetected(i, z);
        } else if (biometricSourceType == BiometricSourceType.FACE) {
            this.mLogger.logFaceDetected(i, z);
            setFaceRunningState(0);
        }
        Trace.endSection();
    }

    public void handleDevicePolicyManagerStateChanged(int i) {
        Assert.isMainThread();
        updateFingerprintListeningState(2);
        updateSecondaryLockscreenRequirement(i);
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onDevicePolicyManagerStateChanged();
            }
        }
    }

    public void handleDreamingStateChanged(int i) {
        boolean z;
        Assert.isMainThread();
        if (i == 1) {
            z = true;
        } else {
            z = false;
        }
        this.mIsDreaming = z;
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onDreamingStateChanged(this.mIsDreaming);
            }
        }
        updateFingerprintListeningState(2);
        if (this.mIsDreaming) {
            updateFaceListeningState(1, FaceAuthUiEvent.FACE_AUTH_STOPPED_DREAM_STARTED);
        }
    }

    public final void handleFaceAcquired(int i) {
        Assert.isMainThread();
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onBiometricAcquired(BiometricSourceType.FACE, i);
            }
        }
        if (this.mActiveUnlockConfig.faceAcquireInfoToTriggerBiometricFailOn.contains(Integer.valueOf(i))) {
            requestActiveUnlock(ActiveUnlockConfig.ActiveUnlockRequestOrigin.BIOMETRIC_FAIL, "faceAcquireInfo-" + i);
        }
    }

    public void handleFaceAuthFailed() {
        String str;
        Assert.isMainThread();
        if (this.mKeyguardBypassController.canBypass()) {
            str = "bypass";
        } else if (this.mAlternateBouncerShowing) {
            str = "alternateBouncer";
        } else if (this.mPrimaryBouncerFullyShown) {
            str = "bouncer";
        } else {
            str = "udfpsFpDown";
        }
        requestActiveUnlock(ActiveUnlockConfig.ActiveUnlockRequestOrigin.BIOMETRIC_FAIL, "faceFailure-".concat(str));
        this.mLogger.d("onFaceAuthFailed");
        this.mFaceCancelSignal = null;
        setFaceRunningState(0);
        for (int i = 0; i < this.mCallbacks.size(); i++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onBiometricAuthFailed(BiometricSourceType.FACE);
            }
        }
        handleFaceHelp(-2, this.mContext.getString(R.string.kg_face_not_recognized));
    }

    public void handleFaceAuthenticated(int i, boolean z) {
        Trace.beginSection("KeyGuardUpdateMonitor#handlerFaceAuthenticated");
        try {
            if (this.mGoingToSleep) {
                this.mLogger.d("Aborted successful auth because device is going to sleep.");
                return;
            }
            int userId = ((UserTrackerImpl) this.mUserTracker).getUserId();
            if (userId != i) {
                this.mLogger.logFaceAuthForWrongUser(i);
                return;
            }
            if (isFaceDisabled(userId)) {
                this.mLogger.logFaceAuthDisabledForUser(userId);
                return;
            }
            this.mLogger.logFaceAuthSuccess(userId);
            onFaceAuthenticated(userId, z);
            setFaceRunningState(0);
            Trace.endSection();
        } finally {
            setFaceRunningState(0);
        }
    }

    public void handleFaceError(int i, String str) {
        boolean z;
        int i2;
        boolean z2;
        Assert.isMainThread();
        this.mLogger.logFaceAuthError(i, str);
        if (hasCallbacks(this.mFaceCancelNotReceived)) {
            removeCallbacks(this.mFaceCancelNotReceived);
        }
        this.mFaceCancelSignal = null;
        boolean isSensorPrivacyEnabled = this.mSensorPrivacyManager.isSensorPrivacyEnabled(1, 2);
        if (i == 5 && this.mFaceRunningState == 3) {
            setFaceRunningState(0);
            updateFaceListeningState(2, FaceAuthUiEvent.FACE_AUTH_TRIGGERED_DURING_CANCELLATION);
        } else {
            setFaceRunningState(0);
        }
        if (i == 1) {
            z = true;
        } else {
            z = false;
        }
        if ((z || i == 2) && (i2 = this.mHardwareFaceUnavailableRetryCount) < 20) {
            this.mHardwareFaceUnavailableRetryCount = i2 + 1;
            removeCallbacks(this.mRetryFaceAuthentication);
            postDelayed(this.mRetryFaceAuthentication, 500L);
        }
        if (i == 9) {
            z2 = !this.mFaceLockedOutPermanent;
            this.mFaceLockedOutPermanent = true;
            if (isFaceClass3()) {
                updateFingerprintListeningState(1);
            }
        } else {
            z2 = false;
        }
        if (z && isSensorPrivacyEnabled) {
            str = this.mContext.getString(R.string.kg_face_sensor_privacy_enabled);
        }
        for (int i3 = 0; i3 < this.mCallbacks.size(); i3++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i3)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onBiometricError(i, str, BiometricSourceType.FACE);
            }
        }
        if (z2) {
            notifyLockedOutStateChanged(BiometricSourceType.FACE);
        }
        if (this.mActiveUnlockConfig.faceErrorsToTriggerBiometricFailOn.contains(Integer.valueOf(i))) {
            requestActiveUnlock(ActiveUnlockConfig.ActiveUnlockRequestOrigin.BIOMETRIC_FAIL, "faceError-" + i);
        }
    }

    public final void handleFaceHelp(int i, String str) {
        Assert.isMainThread();
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onBiometricHelp(i, str, BiometricSourceType.FACE);
            }
        }
    }

    public final void handleFaceLockoutReset(int i) {
        boolean z;
        this.mLogger.logFaceLockoutReset(i);
        boolean z2 = this.mFaceLockedOutPermanent;
        boolean z3 = true;
        int i2 = 0;
        if (i == 2) {
            z = true;
        } else {
            z = false;
        }
        this.mFaceLockedOutPermanent = z;
        if (z == z2) {
            z3 = false;
        }
        postDelayed(new KeyguardUpdateMonitor$$ExternalSyntheticLambda3(this, i2), VolteConstants.ErrorCode.BUSY_EVERYWHERE);
        if (z3) {
            notifyLockedOutStateChanged(BiometricSourceType.FACE);
        }
    }

    public void handleFingerprintAcquired(int i) {
        Assert.isMainThread();
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onBiometricAcquired(BiometricSourceType.FINGERPRINT, i);
            }
        }
    }

    public void handleFingerprintAuthFailed() {
        Assert.isMainThread();
        if (hasCallbacks(this.mFpCancelNotReceived)) {
            this.mLogger.d("handleFingerprintAuthFailed() triggered while waiting for cancellation, removing watchdog");
            removeCallbacks(this.mFpCancelNotReceived);
        }
        this.mLogger.d("handleFingerprintAuthFailed");
        for (int i = 0; i < this.mCallbacks.size(); i++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onBiometricAuthFailed(BiometricSourceType.FINGERPRINT);
            }
        }
        if (isUdfpsSupported()) {
            handleFingerprintHelp(-1, this.mContext.getString(android.R.string.open_permission_deny));
        } else {
            handleFingerprintHelp(-1, this.mContext.getString(android.R.string.notification_inbox_ellipsis));
        }
    }

    public void handleFingerprintAuthenticated(int i, boolean z) {
        Trace.beginSection("KeyGuardUpdateMonitor#handlerFingerPrintAuthenticated");
        if (hasCallbacks(this.mFpCancelNotReceived)) {
            this.mLogger.d("handleFingerprintAuthenticated() triggered while waiting for cancellation, removing watchdog");
            removeCallbacks(this.mFpCancelNotReceived);
        }
        try {
            int i2 = sCurrentUser;
            if (i2 != i) {
                this.mLogger.logFingerprintAuthForWrongUser(i);
            } else {
                if (isFingerprintDisabled(i2)) {
                    this.mLogger.logFingerprintDisabledForUser(i2);
                    return;
                }
                onFingerprintAuthenticated(i2, z);
                setFingerprintRunningState(0);
                Trace.endSection();
            }
        } finally {
            setFingerprintRunningState(0);
        }
    }

    public void handleFingerprintError(int i, String str) {
        boolean z;
        Assert.isMainThread();
        if (hasCallbacks(this.mFpCancelNotReceived)) {
            removeCallbacks(this.mFpCancelNotReceived);
        }
        this.mFingerprintCancelSignal = null;
        if (i == 5 && this.mFingerprintRunningState == 3) {
            setFingerprintRunningState(0);
            updateFingerprintListeningState(2);
        } else {
            setFingerprintRunningState(0);
        }
        if (i == 1) {
            this.mLogger.logRetryAfterFpErrorWithDelay(i, 500, str);
            postDelayed(this.mRetryFingerprintAuthenticationAfterHwUnavailable, 500L);
        }
        int i2 = 8;
        if (i == 19) {
            this.mLogger.logRetryAfterFpErrorWithDelay(i, 50, str);
            postDelayed(new KeyguardUpdateMonitor$$ExternalSyntheticLambda3(this, i2), 50L);
        }
        if (i == 9) {
            z = !this.mFingerprintLockedOutPermanent;
            this.mFingerprintLockedOutPermanent = true;
            this.mLogger.d("Fingerprint permanently locked out - requiring stronger auth");
            this.mLockPatternUtils.requireStrongAuth(8, getCurrentUser());
        } else {
            z = false;
        }
        if (i == 7 || i == 9) {
            z |= !this.mFingerprintLockedOut;
            this.mFingerprintLockedOut = true;
            this.mLogger.d("Fingerprint temporarily locked out - requiring stronger auth");
            if (isUdfpsEnrolled()) {
                updateFingerprintListeningState(1);
            }
        }
        this.mLogger.logFingerprintError(i, str);
        for (int i3 = 0; i3 < this.mCallbacks.size(); i3++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i3)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onBiometricError(i, str, BiometricSourceType.FINGERPRINT);
            }
        }
        if (z) {
            notifyLockedOutStateChanged(BiometricSourceType.FINGERPRINT);
        }
    }

    public void handleFingerprintHelp(int i, String str) {
        Assert.isMainThread();
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onBiometricHelp(i, str, BiometricSourceType.FINGERPRINT);
            }
        }
    }

    public final void handleFingerprintLockoutReset(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        this.mLogger.logFingerprintLockoutReset(i);
        boolean z4 = this.mFingerprintLockedOut;
        boolean z5 = this.mFingerprintLockedOutPermanent;
        boolean z6 = false;
        int i2 = 1;
        if (i != 1 && i != 2) {
            z = false;
        } else {
            z = true;
        }
        this.mFingerprintLockedOut = z;
        if (i == 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.mFingerprintLockedOutPermanent = z2;
        if (z == z4 && z2 == z5) {
            z3 = false;
        } else {
            z3 = true;
        }
        if (isUdfpsEnrolled()) {
            postDelayed(new KeyguardUpdateMonitor$$ExternalSyntheticLambda3(this, i2), VolteConstants.ErrorCode.BUSY_EVERYWHERE);
        } else {
            if (z4 && !this.mFingerprintLockedOut) {
                z6 = true;
            }
            if (z6) {
                this.mLogger.d("temporaryLockoutReset - stopListeningForFingerprint() to stop detectFingerprint");
                stopListeningForFingerprint();
            }
            updateFingerprintListeningState(2);
        }
        if (z3) {
            notifyLockedOutStateChanged(BiometricSourceType.FINGERPRINT);
        }
    }

    public void handleFinishedGoingToSleep(int i) {
        Assert.isMainThread();
        this.mGoingToSleep = false;
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onFinishedGoingToSleep(i);
            }
        }
        updateFaceListeningState(1, FaceAuthUiEvent.FACE_AUTH_STOPPED_FINISHED_GOING_TO_SLEEP);
        updateFingerprintListeningState(2);
    }

    public void handleKeyguardReset() {
        this.mLogger.d("handleKeyguardReset");
        updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_KEYGUARD_RESET);
        this.mNeedsSlowUnlockTransition = resolveNeedsSlowUnlockTransition();
    }

    public void handlePhoneStateChanged(String str) {
        Assert.isMainThread();
        this.mLogger.logPhoneStateChanged(str);
        if (TelephonyManager.EXTRA_STATE_IDLE.equals(str)) {
            this.mPhoneState = 0;
        } else if (TelephonyManager.EXTRA_STATE_OFFHOOK.equals(str)) {
            this.mPhoneState = 2;
        } else if (TelephonyManager.EXTRA_STATE_RINGING.equals(str)) {
            this.mPhoneState = 1;
        }
        for (int i = 0; i < this.mCallbacks.size(); i++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onPhoneStateChanged(this.mPhoneState);
            }
        }
    }

    public void handlePrimaryBouncerChanged(int i, int i2) {
        boolean z;
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
        this.mLogger.logPrimaryKeyguardBouncerChanged(z, z4);
        if (this.mPrimaryBouncerFullyShown) {
            this.mSecureCameraLaunched = false;
        } else {
            this.mCredentialAttempted = false;
        }
        if (z2 != this.mPrimaryBouncerIsOrWillBeShowing) {
            for (int i3 = 0; i3 < this.mCallbacks.size(); i3++) {
                KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i3)).get();
                if (keyguardUpdateMonitorCallback != null) {
                    keyguardUpdateMonitorCallback.onKeyguardBouncerStateChanged(this.mPrimaryBouncerIsOrWillBeShowing);
                }
            }
            updateFingerprintListeningState(2);
        }
        boolean z5 = this.mPrimaryBouncerFullyShown;
        if (z3 != z5) {
            if (z5) {
                requestActiveUnlock(ActiveUnlockConfig.ActiveUnlockRequestOrigin.UNLOCK_INTENT, "bouncerFullyShown");
            }
            for (int i4 = 0; i4 < this.mCallbacks.size(); i4++) {
                KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback2 = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i4)).get();
                if (keyguardUpdateMonitorCallback2 != null) {
                    keyguardUpdateMonitorCallback2.onKeyguardBouncerFullyShowingChanged(this.mPrimaryBouncerFullyShown);
                }
            }
            updateFaceListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN);
        }
    }

    public final void handleReportEmergencyCallAction() {
        Assert.isMainThread();
        for (int i = 0; i < this.mCallbacks.size(); i++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onEmergencyCallAction();
            }
        }
    }

    public void handleServiceStateChange(int i, ServiceState serviceState) {
        this.mLogger.logServiceStateChange(i, serviceState);
        if (!SubscriptionManager.isValidSubscriptionId(i)) {
            KeyguardUpdateMonitorLogger keyguardUpdateMonitorLogger = this.mLogger;
            keyguardUpdateMonitorLogger.getClass();
            keyguardUpdateMonitorLogger.log("invalid subId in handleServiceStateChange()", LogLevel.WARNING);
        } else {
            updateTelephonyCapable(true);
            this.mServiceStates.put(Integer.valueOf(i), serviceState);
            callbacksRefreshCarrierInfo(null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0097  */
    /* JADX WARN: Type inference failed for: r0v17, types: [com.android.keyguard.KeyguardUpdateMonitor$$ExternalSyntheticLambda8] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void handleSimStateChange(final int r7, final int r8, final int r9) {
        /*
            r6 = this;
            com.android.systemui.util.Assert.isMainThread()
            com.android.keyguard.logging.KeyguardUpdateMonitorLogger r0 = r6.mLogger
            r0.logSimState(r7, r8, r9)
            boolean r0 = r6.isSimPinPassed(r8, r9)
            if (r0 == 0) goto L16
            com.android.keyguard.logging.KeyguardUpdateMonitorLogger r6 = r6.mLogger
            java.lang.String r7 = "handleSimStateChange isSimPinPassed"
            r6.d(r7)
            return
        L16:
            boolean r0 = com.android.systemui.LsRune.SECURITY_ESIM
            if (r0 == 0) goto L29
            boolean r1 = r6.isESimRemoveButtonClicked()
            if (r1 == 0) goto L29
            com.android.keyguard.KeyguardUpdateMonitor$$ExternalSyntheticLambda8 r0 = new com.android.keyguard.KeyguardUpdateMonitor$$ExternalSyntheticLambda8
            r0.<init>()
            r6.dispatchCallback(r0)
            return
        L29:
            boolean r1 = android.telephony.SubscriptionManager.isValidSubscriptionId(r7)
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L6e
            com.android.keyguard.logging.KeyguardUpdateMonitorLogger r1 = r6.mLogger
            r1.getClass()
            com.android.systemui.log.LogLevel r4 = com.android.systemui.log.LogLevel.WARNING
            java.lang.String r5 = "invalid subId in handleSimStateChange()"
            r1.log(r5, r4)
            if (r9 != r2) goto L61
            r6.updateTelephonyCapable(r2)
            java.util.HashMap r0 = r6.mSimDatas
            java.util.Collection r0 = r0.values()
            java.util.Iterator r0 = r0.iterator()
        L4c:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L5f
            java.lang.Object r1 = r0.next()
            com.android.keyguard.KeyguardUpdateMonitor$SimData r1 = (com.android.keyguard.KeyguardUpdateMonitor.SimData) r1
            int r4 = r1.slotId
            if (r4 != r8) goto L4c
            r1.simState = r2
            goto L4c
        L5f:
            r0 = r2
            goto L6f
        L61:
            r1 = 8
            if (r9 != r1) goto L69
            r6.updateTelephonyCapable(r2)
            goto L6e
        L69:
            if (r0 == 0) goto L6e
            r6.updateEsimState(r8, r9)
        L6e:
            r0 = r3
        L6f:
            java.util.List r1 = com.android.keyguard.KeyguardUpdateMonitor.ABSENT_SIM_STATE_LIST
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)
            boolean r1 = r1.contains(r4)
            r0 = r0 | r1
            java.util.HashMap r1 = r6.mSimDatas
            java.lang.Integer r4 = java.lang.Integer.valueOf(r7)
            java.lang.Object r1 = r1.get(r4)
            com.android.keyguard.KeyguardUpdateMonitor$SimData r1 = (com.android.keyguard.KeyguardUpdateMonitor.SimData) r1
            if (r1 != 0) goto L97
            com.android.keyguard.KeyguardUpdateMonitor$SimData r1 = new com.android.keyguard.KeyguardUpdateMonitor$SimData
            r1.<init>(r9, r8, r7)
            java.util.HashMap r4 = r6.mSimDatas
            java.lang.Integer r5 = java.lang.Integer.valueOf(r7)
            r4.put(r5, r1)
            goto Lab
        L97:
            int r4 = r1.simState
            if (r4 != r9) goto La5
            int r4 = r1.subId
            if (r4 != r7) goto La5
            int r4 = r1.slotId
            if (r4 == r8) goto La4
            goto La5
        La4:
            r2 = r3
        La5:
            r1.simState = r9
            r1.subId = r7
            r1.slotId = r8
        Lab:
            if (r2 != 0) goto Laf
            if (r0 == 0) goto Lcd
        Laf:
            java.util.ArrayList r0 = r6.mCallbacks
            int r0 = r0.size()
            if (r3 >= r0) goto Lcd
            java.util.ArrayList r0 = r6.mCallbacks
            java.lang.Object r0 = r0.get(r3)
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0
            java.lang.Object r0 = r0.get()
            com.android.keyguard.KeyguardUpdateMonitorCallback r0 = (com.android.keyguard.KeyguardUpdateMonitorCallback) r0
            if (r0 == 0) goto Lca
            r0.onSimStateChanged(r7, r8, r9)
        Lca:
            int r3 = r3 + 1
            goto Laf
        Lcd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardUpdateMonitor.handleSimStateChange(int, int, int):void");
    }

    public void handleStartedGoingToSleep(int i) {
        Assert.isMainThread();
        clearBiometricRecognized();
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onStartedGoingToSleep(i);
            }
        }
        this.mGoingToSleep = true;
        this.mAssistantVisible = false;
        this.mLogger.d("Started going to sleep, mGoingToSleep=true, mAssistantVisible=false");
        updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_GOING_TO_SLEEP);
    }

    public void handleStartedWakingUp(int i) {
        Trace.beginSection("KeyguardUpdateMonitor#handleStartedWakingUp");
        Assert.isMainThread();
        updateFingerprintListeningState(2);
        if (this.mFaceWakeUpTriggersConfig.triggerFaceAuthOnWakeUpFrom.contains(Integer.valueOf(i))) {
            FaceAuthUiEvent faceAuthUiEvent = FaceAuthUiEvent.FACE_AUTH_UPDATED_STARTED_WAKING_UP;
            faceAuthUiEvent.setExtraInfo(i);
            updateFaceListeningState(2, faceAuthUiEvent);
        } else {
            this.mLogger.logSkipUpdateFaceListeningOnWakeup(i);
        }
        requestActiveUnlockFromWakeReason(i, true);
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onStartedWakingUp();
            }
        }
        Trace.endSection();
    }

    public void handleUserRemoved(int i) {
        Assert.isMainThread();
        this.mUserIsUnlocked.delete(i);
        this.mUserTrustIsUsuallyManaged.delete(i);
    }

    public void handleUserSwitchComplete(int i) {
        Assert.isMainThread();
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onUserSwitchComplete(i);
            }
        }
        if (isFaceSupported()) {
            stopListeningForFace(FaceAuthUiEvent.FACE_AUTH_UPDATED_USER_SWITCHING);
            handleFaceLockoutReset(this.mFaceManager.getLockoutModeForUser(((FaceSensorPropertiesInternal) this.mFaceSensorProperties.get(0)).sensorId, i));
        }
        if (isFingerprintSupported()) {
            stopListeningForFingerprint();
            handleFingerprintLockoutReset(this.mFpm.getLockoutModeForUser(((FingerprintSensorPropertiesInternal) this.mFingerprintSensorProperties.get(0)).sensorId, i));
        }
        if (LsRune.KEYGUARD_FBE) {
            this.mUserIsUnlocked.put(i, this.mUserManager.isUserUnlocked(i));
            updateUserUnlockNotification(i);
        }
        this.mInteractionJankMonitor.end(37);
        this.mLatencyTracker.onActionEnd(12);
    }

    public void handleUserSwitching(int i, CountDownLatch countDownLatch) {
        Assert.isMainThread();
        clearBiometricRecognized();
        boolean isTrustUsuallyManaged = this.mTrustManager.isTrustUsuallyManaged(i);
        this.mLogger.logTrustUsuallyManagedUpdated(i, "userSwitching", this.mUserTrustIsUsuallyManaged.get(i), isTrustUsuallyManaged);
        this.mUserTrustIsUsuallyManaged.put(i, isTrustUsuallyManaged);
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onUserSwitching(i);
            }
        }
        countDownLatch.countDown();
    }

    public void handleUserUnlocked(int i) {
        Assert.isMainThread();
        this.mUserIsUnlocked.put(i, true);
        this.mNeedsSlowUnlockTransition = resolveNeedsSlowUnlockTransition();
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onUserUnlocked();
            }
        }
    }

    public final boolean isDeviceProvisionedInSettingsDb() {
        if (Settings.Global.getInt(this.mContext.getContentResolver(), "device_provisioned", 0) == 0) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isEncryptedOrLockdown(int r3) {
        /*
            r2 = this;
            com.android.keyguard.KeyguardUpdateMonitor$StrongAuthTracker r2 = r2.mStrongAuthTracker
            int r2 = r2.getStrongAuthForUser(r3)
            r3 = r2 & 2
            r0 = 1
            r1 = 0
            if (r3 == 0) goto Le
            r3 = r0
            goto Lf
        Le:
            r3 = r1
        Lf:
            if (r3 != 0) goto L1d
            r3 = r2 & 32
            if (r3 == 0) goto L17
            r3 = r0
            goto L18
        L17:
            r3 = r1
        L18:
            if (r3 == 0) goto L1b
            goto L1d
        L1b:
            r3 = r1
            goto L1e
        L1d:
            r3 = r0
        L1e:
            r2 = r2 & r0
            if (r2 == 0) goto L23
            r2 = r0
            goto L24
        L23:
            r2 = r1
        L24:
            if (r2 != 0) goto L2a
            if (r3 == 0) goto L29
            goto L2a
        L29:
            r0 = r1
        L2a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardUpdateMonitor.isEncryptedOrLockdown(int):boolean");
    }

    public boolean isFaceAuthEnabledForUser(int i) {
        boolean z;
        boolean z2 = false;
        if (isFaceSupported() && this.mBiometricEnabledForUser.get(i)) {
            AuthController authController = this.mAuthController;
            if (authController.mFaceProps == null) {
                z = false;
            } else {
                z = authController.mFaceEnrolledForUser.get(i);
            }
            if (z) {
                z2 = true;
            }
        }
        Boolean valueOf = Boolean.valueOf(z2);
        if (this.mIsFaceEnrolled != valueOf.booleanValue()) {
            this.mLogger.logFaceEnrolledUpdated(this.mIsFaceEnrolled, valueOf.booleanValue());
        }
        boolean booleanValue = valueOf.booleanValue();
        this.mIsFaceEnrolled = booleanValue;
        return booleanValue;
    }

    public boolean isFaceClass3() {
        boolean z;
        if (!isFaceSupported()) {
            return false;
        }
        if (((SensorPropertiesInternal) this.mFaceSensorProperties.get(0)).sensorStrength == 2) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public final boolean isFaceDetectionRunning() {
        if (this.mFaceRunningState == 1) {
            return true;
        }
        return false;
    }

    public final boolean isFaceDisabled(final int i) {
        return ((Boolean) DejankUtils.whitelistIpcs(new Supplier() { // from class: com.android.keyguard.KeyguardUpdateMonitor$$ExternalSyntheticLambda4
            @Override // java.util.function.Supplier
            public final Object get() {
                boolean z;
                KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                if ((keyguardUpdateMonitor.mDevicePolicyManager.getKeyguardDisabledFeatures(null, i) & 128) == 0 && !keyguardUpdateMonitor.isSimPinSecure()) {
                    z = false;
                } else {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        })).booleanValue();
    }

    public final boolean isFaceSupported() {
        if (this.mFaceManager != null && !this.mFaceSensorProperties.isEmpty()) {
            return true;
        }
        return false;
    }

    public boolean isFingerprintClass3() {
        boolean z;
        if (!isFingerprintSupported()) {
            return false;
        }
        if (((SensorPropertiesInternal) this.mFingerprintSensorProperties.get(0)).sensorStrength == 2) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public final boolean isFingerprintDetectionRunning() {
        if (this.mFingerprintRunningState == 1) {
            return true;
        }
        return false;
    }

    public boolean isFingerprintDisabled(int i) {
        if ((this.mDevicePolicyManager.getKeyguardDisabledFeatures(null, i) & 32) == 0 && !isSimPinSecure()) {
            return false;
        }
        return true;
    }

    public final boolean isFingerprintLockedOut() {
        if (!this.mFingerprintLockedOut && !this.mFingerprintLockedOutPermanent) {
            return false;
        }
        return true;
    }

    public final boolean isFingerprintSupported() {
        if (this.mFpm != null && !this.mFingerprintSensorProperties.isEmpty()) {
            return true;
        }
        return false;
    }

    public final boolean isKeyguardVisible() {
        if (this.mKeyguardShowing && !this.mKeyguardOccluded) {
            return true;
        }
        return false;
    }

    public final boolean isSfpsEnrolled() {
        AuthController authController = this.mAuthController;
        int currentUser = getCurrentUser();
        if (authController.mSideFpsController == null) {
            return false;
        }
        return authController.mSfpsEnrolledForUser.get(currentUser);
    }

    public final boolean isSimPinSecure() {
        Iterator it = ((ArrayList) getSubscriptionInfo(false)).iterator();
        while (it.hasNext()) {
            SubscriptionInfo subscriptionInfo = (SubscriptionInfo) it.next();
            if (LsRune.SECURITY_SIM_PERM_DISABLED) {
                int simState = getSimState(subscriptionInfo.getSubscriptionId());
                if (!this.mDeviceProvisioned && simState == 7) {
                    return false;
                }
                if (isSimPinSecure(simState) && (simState != 7 || !subscriptionInfo.isEmbedded())) {
                    return true;
                }
            } else if (isSimPinSecure(getSimState(subscriptionInfo.getSubscriptionId()))) {
                return true;
            }
        }
        return false;
    }

    public boolean isUdfpsEnrolled() {
        return this.mAuthController.isUdfpsEnrolled(getCurrentUser());
    }

    public boolean isUdfpsSupported() {
        List list = this.mAuthController.mUdfpsProps;
        if (list != null && !list.isEmpty()) {
            return true;
        }
        return false;
    }

    public final boolean isUnlockWithFacePossible(int i) {
        if (isFaceAuthEnabledForUser(i) && !isFaceDisabled(i)) {
            return true;
        }
        return false;
    }

    public boolean isUnlockWithFingerprintPossible(int i) {
        boolean z;
        if (isFingerprintSupported() && !isFingerprintDisabled(i) && this.mFpm.hasEnrolledTemplates(i)) {
            z = true;
        } else {
            z = false;
        }
        Boolean bool = (Boolean) this.mIsUnlockWithFingerprintPossible.getOrDefault(Integer.valueOf(i), Boolean.FALSE);
        if (bool.booleanValue() != z) {
            this.mLogger.logFpEnrolledUpdated(i, bool.booleanValue(), z);
        }
        this.mIsUnlockWithFingerprintPossible.put(Integer.valueOf(i), Boolean.valueOf(z));
        return ((Boolean) this.mIsUnlockWithFingerprintPossible.get(Integer.valueOf(i))).booleanValue();
    }

    public boolean isUnlockingWithBiometricAllowed(boolean z) {
        StrongAuthTracker strongAuthTracker = this.mStrongAuthTracker;
        strongAuthTracker.getClass();
        return strongAuthTracker.isBiometricAllowedForUser(z, getCurrentUser()) && !((isFingerprintClass3() && isFingerprintLockedOut()) || (isFaceClass3() && this.mFaceLockedOutPermanent));
    }

    public final boolean isUnlockingWithBiometricsPossible(int i) {
        if (!isUnlockWithFacePossible(i) && !isUnlockWithFingerprintPossible(i)) {
            return false;
        }
        return true;
    }

    public final boolean isUnlockingWithFingerprintAllowed() {
        return isUnlockingWithBiometricAllowed(BiometricSourceType.FINGERPRINT);
    }

    public final boolean isUserInLockdown(int i) {
        if ((this.mStrongAuthTracker.getStrongAuthForUser(i) & 32) != 0) {
            return true;
        }
        return false;
    }

    public final boolean isUserUnlocked(int i) {
        return this.mUserIsUnlocked.get(i);
    }

    public final void logListenerModelData(KeyguardListenModel keyguardListenModel) {
        this.mLogger.logKeyguardListenerModel(keyguardListenModel);
        if (keyguardListenModel instanceof KeyguardFingerprintListenModel) {
            KeyguardFingerprintListenModel keyguardFingerprintListenModel = (KeyguardFingerprintListenModel) keyguardListenModel;
            KeyguardFingerprintListenModel keyguardFingerprintListenModel2 = (KeyguardFingerprintListenModel) this.mFingerprintListenBuffer.buffer.advance();
            keyguardFingerprintListenModel2.timeMillis = keyguardFingerprintListenModel.timeMillis;
            keyguardFingerprintListenModel2.userId = keyguardFingerprintListenModel.userId;
            keyguardFingerprintListenModel2.listening = keyguardFingerprintListenModel.listening;
            keyguardFingerprintListenModel2.alternateBouncerShowing = keyguardFingerprintListenModel.alternateBouncerShowing;
            keyguardFingerprintListenModel2.biometricEnabledForUser = keyguardFingerprintListenModel.biometricEnabledForUser;
            keyguardFingerprintListenModel2.bouncerIsOrWillShow = keyguardFingerprintListenModel.bouncerIsOrWillShow;
            keyguardFingerprintListenModel2.canSkipBouncer = keyguardFingerprintListenModel.canSkipBouncer;
            keyguardFingerprintListenModel2.credentialAttempted = keyguardFingerprintListenModel.credentialAttempted;
            keyguardFingerprintListenModel2.deviceInteractive = keyguardFingerprintListenModel.deviceInteractive;
            keyguardFingerprintListenModel2.dreaming = keyguardFingerprintListenModel.dreaming;
            keyguardFingerprintListenModel2.fingerprintDisabled = keyguardFingerprintListenModel.fingerprintDisabled;
            keyguardFingerprintListenModel2.fingerprintLockedOut = keyguardFingerprintListenModel.fingerprintLockedOut;
            keyguardFingerprintListenModel2.goingToSleep = keyguardFingerprintListenModel.goingToSleep;
            keyguardFingerprintListenModel2.keyguardGoingAway = keyguardFingerprintListenModel.keyguardGoingAway;
            keyguardFingerprintListenModel2.keyguardIsVisible = keyguardFingerprintListenModel.keyguardIsVisible;
            keyguardFingerprintListenModel2.keyguardOccluded = keyguardFingerprintListenModel.keyguardOccluded;
            keyguardFingerprintListenModel2.occludingAppRequestingFp = keyguardFingerprintListenModel.occludingAppRequestingFp;
            keyguardFingerprintListenModel2.shouldListenSfpsState = keyguardFingerprintListenModel.shouldListenSfpsState;
            keyguardFingerprintListenModel2.shouldListenForFingerprintAssistant = keyguardFingerprintListenModel.shouldListenForFingerprintAssistant;
            keyguardFingerprintListenModel2.strongerAuthRequired = keyguardFingerprintListenModel.strongerAuthRequired;
            keyguardFingerprintListenModel2.switchingUser = keyguardFingerprintListenModel.switchingUser;
            keyguardFingerprintListenModel2.systemUser = keyguardFingerprintListenModel.systemUser;
            keyguardFingerprintListenModel2.udfps = keyguardFingerprintListenModel.udfps;
            keyguardFingerprintListenModel2.userDoesNotHaveTrust = keyguardFingerprintListenModel.userDoesNotHaveTrust;
            return;
        }
        if (keyguardListenModel instanceof KeyguardActiveUnlockModel) {
            KeyguardActiveUnlockModel keyguardActiveUnlockModel = (KeyguardActiveUnlockModel) keyguardListenModel;
            KeyguardActiveUnlockModel keyguardActiveUnlockModel2 = (KeyguardActiveUnlockModel) this.mActiveUnlockTriggerBuffer.buffer.advance();
            keyguardActiveUnlockModel2.timeMillis = keyguardActiveUnlockModel.timeMillis;
            keyguardActiveUnlockModel2.userId = keyguardActiveUnlockModel.userId;
            keyguardActiveUnlockModel2.listening = keyguardActiveUnlockModel.listening;
            keyguardActiveUnlockModel2.awakeKeyguard = keyguardActiveUnlockModel.awakeKeyguard;
            keyguardActiveUnlockModel2.authInterruptActive = keyguardActiveUnlockModel.authInterruptActive;
            keyguardActiveUnlockModel2.fpLockedOut = keyguardActiveUnlockModel.fpLockedOut;
            keyguardActiveUnlockModel2.primaryAuthRequired = keyguardActiveUnlockModel.primaryAuthRequired;
            keyguardActiveUnlockModel2.switchingUser = keyguardActiveUnlockModel.switchingUser;
            keyguardActiveUnlockModel2.triggerActiveUnlockForAssistant = keyguardActiveUnlockModel.triggerActiveUnlockForAssistant;
            keyguardActiveUnlockModel2.userCanDismissLockScreen = keyguardActiveUnlockModel.userCanDismissLockScreen;
            return;
        }
        if (keyguardListenModel instanceof KeyguardFaceListenModel) {
            KeyguardFaceListenModel keyguardFaceListenModel = (KeyguardFaceListenModel) keyguardListenModel;
            KeyguardFaceListenModel keyguardFaceListenModel2 = (KeyguardFaceListenModel) this.mFaceListenBuffer.buffer.advance();
            keyguardFaceListenModel2.timeMillis = keyguardFaceListenModel.timeMillis;
            keyguardFaceListenModel2.userId = keyguardFaceListenModel.userId;
            keyguardFaceListenModel2.listening = keyguardFaceListenModel.listening;
            keyguardFaceListenModel2.alternateBouncerShowing = keyguardFaceListenModel.alternateBouncerShowing;
            keyguardFaceListenModel2.biometricSettingEnabledForUser = keyguardFaceListenModel.biometricSettingEnabledForUser;
            keyguardFaceListenModel2.bouncerFullyShown = keyguardFaceListenModel.bouncerFullyShown;
            keyguardFaceListenModel2.faceAndFpNotAuthenticated = keyguardFaceListenModel.faceAndFpNotAuthenticated;
            keyguardFaceListenModel2.faceAuthAllowed = keyguardFaceListenModel.faceAuthAllowed;
            keyguardFaceListenModel2.faceDisabled = keyguardFaceListenModel.faceDisabled;
            keyguardFaceListenModel2.faceLockedOut = keyguardFaceListenModel.faceLockedOut;
            keyguardFaceListenModel2.goingToSleep = keyguardFaceListenModel.goingToSleep;
            keyguardFaceListenModel2.keyguardAwake = keyguardFaceListenModel.keyguardAwake;
            keyguardFaceListenModel2.goingToSleep = keyguardFaceListenModel.goingToSleep;
            keyguardFaceListenModel2.keyguardGoingAway = keyguardFaceListenModel.keyguardGoingAway;
            keyguardFaceListenModel2.listeningForFaceAssistant = keyguardFaceListenModel.listeningForFaceAssistant;
            keyguardFaceListenModel2.occludingAppRequestingFaceAuth = keyguardFaceListenModel.occludingAppRequestingFaceAuth;
            keyguardFaceListenModel2.postureAllowsListening = keyguardFaceListenModel.postureAllowsListening;
            keyguardFaceListenModel2.secureCameraLaunched = keyguardFaceListenModel.secureCameraLaunched;
            keyguardFaceListenModel2.supportsDetect = keyguardFaceListenModel.supportsDetect;
            keyguardFaceListenModel2.switchingUser = keyguardFaceListenModel.switchingUser;
            keyguardFaceListenModel2.systemUser = keyguardFaceListenModel.systemUser;
            keyguardFaceListenModel2.udfpsFingerDown = keyguardFaceListenModel.udfpsFingerDown;
            keyguardFaceListenModel2.userNotTrustedOrDetectionIsNeeded = keyguardFaceListenModel.userNotTrustedOrDetectionIsNeeded;
        }
    }

    public final void notifyLockedOutStateChanged(BiometricSourceType biometricSourceType) {
        Assert.isMainThread();
        for (int i = 0; i < this.mCallbacks.size(); i++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onLockedOutStateChanged(biometricSourceType);
            }
        }
    }

    public void notifyNonStrongBiometricAllowedChanged(int i) {
        int i2;
        Assert.isMainThread();
        for (int i3 = 0; i3 < this.mCallbacks.size(); i3++) {
        }
        if (i == getCurrentUser()) {
            FaceAuthUiEvent faceAuthUiEvent = FaceAuthUiEvent.FACE_AUTH_NON_STRONG_BIOMETRIC_ALLOWED_CHANGED;
            if (this.mStrongAuthTracker.isNonStrongBiometricAllowedAfterIdleTimeout(getCurrentUser())) {
                i2 = -1;
            } else {
                i2 = 1;
            }
            faceAuthUiEvent.setExtraInfo(i2);
            updateBiometricListeningState(1, faceAuthUiEvent);
        }
    }

    public void notifyStrongAuthAllowedChanged(int i) {
        Assert.isMainThread();
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onStrongAuthStateChanged(i);
            }
        }
        if (i == getCurrentUser()) {
            FaceAuthUiEvent faceAuthUiEvent = FaceAuthUiEvent.FACE_AUTH_UPDATED_STRONG_AUTH_CHANGED;
            faceAuthUiEvent.setExtraInfo(this.mStrongAuthTracker.getStrongAuthForUser(getCurrentUser()));
            updateBiometricListeningState(1, faceAuthUiEvent);
        }
    }

    public final void onEnabledTrustAgentsChanged(int i) {
        Assert.isMainThread();
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onEnabledTrustAgentsChanged(i);
            }
        }
    }

    public void onFaceAuthenticated(int i, boolean z) {
        Trace.beginSection("KeyGuardUpdateMonitor#onFaceAuthenticated");
        Assert.isMainThread();
        this.mUserFaceAuthenticated.put(i, new BiometricAuthenticated(true, z));
        if (getUserCanSkipBouncer(i)) {
            this.mTrustManager.unlockedByBiometricForUser(i, BiometricSourceType.FACE);
        }
        this.mFaceCancelSignal = null;
        updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_ON_FACE_AUTHENTICATED);
        this.mLogger.d("onFaceAuthenticated");
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onBiometricAuthenticated(i, BiometricSourceType.FACE, z);
            }
        }
        this.mAssistantVisible = false;
        this.mBackgroundExecutor.execute(new KeyguardUpdateMonitor$$ExternalSyntheticLambda2(i, this, z));
        Trace.endSection();
    }

    public void onFingerprintAuthenticated(final int i, boolean z) {
        Assert.isMainThread();
        Trace.beginSection("KeyGuardUpdateMonitor#onFingerPrintAuthenticated");
        this.mUserFingerprintAuthenticated.put(i, new BiometricAuthenticated(true, z));
        if (getUserCanSkipBouncer(i)) {
            getFastBioUnlockController().executor.submit(new KeyguardFastBioUnlockController.Task(new Runnable() { // from class: com.android.keyguard.KeyguardUpdateMonitor$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                    keyguardUpdateMonitor.mTrustManager.unlockedByBiometricForUser(i, BiometricSourceType.FINGERPRINT);
                }
            }, "TrustManager#unlockedByBiometricForUser"));
        }
        this.mFingerprintCancelSignal = null;
        this.mLogger.logFingerprintSuccess(i, z);
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onBiometricAuthenticated(i, BiometricSourceType.FINGERPRINT, z);
            }
        }
        AnonymousClass15 anonymousClass15 = this.mHandler;
        anonymousClass15.sendMessageDelayed(anonymousClass15.obtainMessage(336), 500L);
        this.mAssistantVisible = false;
        this.mBackgroundExecutor.execute(new KeyguardUpdateMonitor$$ExternalSyntheticLambda2(i, this, z));
        if (is2StepVerification()) {
            this.mLogger.d("onFingerprintAuthenticated ( stop fingerprint )");
            updateFingerprintListeningState(1);
        }
        Trace.endSection();
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00c2, code lost:
    
        if (r3 != false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00dd, code lost:
    
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00cf, code lost:
    
        if (r3 != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00da, code lost:
    
        if (r8 != false) goto L65;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onTrustChanged(boolean r5, boolean r6, int r7, int r8, java.util.List r9) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardUpdateMonitor.onTrustChanged(boolean, boolean, int, int, java.util.List):void");
    }

    public final void onTrustError(CharSequence charSequence) {
        Assert.isMainThread();
        for (int i = 0; i < this.mCallbacks.size(); i++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onTrustAgentErrorMessage(charSequence);
            }
        }
    }

    public final void onTrustManagedChanged(boolean z, int i) {
        Assert.isMainThread();
        this.mUserTrustIsManaged.put(i, z);
        boolean isTrustUsuallyManaged = this.mTrustManager.isTrustUsuallyManaged(i);
        this.mLogger.logTrustUsuallyManagedUpdated(i, "onTrustManagedChanged", this.mUserTrustIsUsuallyManaged.get(i), isTrustUsuallyManaged);
        this.mUserTrustIsUsuallyManaged.put(i, isTrustUsuallyManaged);
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onTrustManagedChanged(i);
            }
        }
    }

    public final boolean refreshSimState(int i, int i2) {
        int simState;
        boolean z = LsRune.SECURITY_SIM_PERSO_LOCK;
        boolean z2 = false;
        if (z) {
            Context context = this.mContext;
            Point point = DeviceState.sDisplaySize;
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                simState = telephonyManager.getSimState(i2);
                if (z && simState == 4) {
                    if ("PERSO_LOCKED".equals(DeviceState.getMSimSystemProperty(i2, "gsm.sim.state", "NOT_READY"))) {
                        simState = 12;
                    }
                }
            }
            simState = 0;
        } else {
            simState = this.mTelephonyManager.getSimState(i2);
        }
        if (isSimPinPassed(i2, simState)) {
            this.mLogger.d("refreshSimState isSimPinPassed slotId" + i2);
            return false;
        }
        SimData simData = (SimData) this.mSimDatas.get(Integer.valueOf(i));
        if (simData == null) {
            if (!SubscriptionManager.isValidSubscriptionId(i)) {
                return false;
            }
            this.mSimDatas.put(Integer.valueOf(i), new SimData(simState, i2, i));
            return true;
        }
        if (simData.simState != simState) {
            z2 = true;
        }
        simData.simState = simState;
        simData.subId = i;
        simData.slotId = i2;
        return z2;
    }

    public void registerCallback(KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback) {
        Assert.isMainThread();
        this.mLogger.logRegisterCallback(keyguardUpdateMonitorCallback);
        for (int i = 0; i < this.mCallbacks.size(); i++) {
            if (((WeakReference) this.mCallbacks.get(i)).get() == keyguardUpdateMonitorCallback) {
                this.mLogger.logException("Object tried to add another callback", new Exception("Called by"));
                return;
            }
        }
        this.mCallbacks.add(new WeakReference(keyguardUpdateMonitorCallback));
        removeCallback(null);
        sendUpdates(keyguardUpdateMonitorCallback);
    }

    public void removeCallback(final KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback) {
        Assert.isMainThread();
        this.mLogger.logUnregisterCallback(keyguardUpdateMonitorCallback);
        this.mCallbacks.removeIf(new Predicate() { // from class: com.android.keyguard.KeyguardUpdateMonitor$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                if (((WeakReference) obj).get() == KeyguardUpdateMonitorCallback.this) {
                    return true;
                }
                return false;
            }
        });
    }

    public final void reportEmergencyCallAction() {
        Assert.isMainThread();
        handleReportEmergencyCallAction();
    }

    public final void reportSimUnlocked(int i) {
        this.mLogger.logSimUnlocked(i);
        updatedSimPinPassed(getSlotId(i));
        handleSimStateChange(i, getSlotId(i), 5);
    }

    public final void requestActiveUnlock(ActiveUnlockConfig.ActiveUnlockRequestOrigin activeUnlockRequestOrigin, String str) {
        KeyguardBypassController keyguardBypassController;
        boolean z = true;
        if (!(this.mIsFaceEnrolled && (keyguardBypassController = this.mKeyguardBypassController) != null && keyguardBypassController.canBypass()) && !this.mAlternateBouncerShowing && !this.mPrimaryBouncerFullyShown && !isUdfpsFingerDown()) {
            z = false;
        }
        requestActiveUnlock(activeUnlockRequestOrigin, str, z);
    }

    public final void requestActiveUnlockFromWakeReason(int i, boolean z) {
        ActiveUnlockConfig.ActiveUnlockRequestOrigin activeUnlockRequestOrigin;
        if (!this.mFaceWakeUpTriggersConfig.triggerFaceAuthOnWakeUpFrom.contains(Integer.valueOf(i))) {
            this.mLogger.logActiveUnlockRequestSkippedForWakeReasonDueToFaceConfig(i);
            return;
        }
        if (this.mActiveUnlockConfig.wakeupsConsideredUnlockIntents.contains(Integer.valueOf(i))) {
            activeUnlockRequestOrigin = ActiveUnlockConfig.ActiveUnlockRequestOrigin.UNLOCK_INTENT;
        } else {
            activeUnlockRequestOrigin = ActiveUnlockConfig.ActiveUnlockRequestOrigin.WAKE;
        }
        String str = "wakingUp - " + PowerManager.wakeReasonToString(i) + " powerManagerWakeup=" + z;
        if (this.mActiveUnlockConfig.wakeupsToForceDismissKeyguard.contains(Integer.valueOf(i))) {
            requestActiveUnlock(activeUnlockRequestOrigin, str + "-dismissKeyguard", true);
            return;
        }
        requestActiveUnlock(activeUnlockRequestOrigin, str);
    }

    public final boolean requestFaceAuth(String str) {
        this.mLogger.logFaceAuthRequested(str);
        Object obj = FaceAuthReasonKt.apiRequestReasonToUiEvent.get(str);
        Intrinsics.checkNotNull(obj);
        updateFaceListeningState(0, (FaceAuthUiEvent) obj);
        return isFaceDetectionRunning();
    }

    public final void requestFaceAuthOnOccludingApp(boolean z) {
        int i;
        this.mOccludingAppRequestingFace = z;
        if (z) {
            i = 2;
        } else {
            i = 1;
        }
        updateFaceListeningState(i, FaceAuthUiEvent.FACE_AUTH_TRIGGERED_OCCLUDING_APP_REQUESTED);
    }

    public void resetBiometricListeningState() {
        this.mFingerprintRunningState = 0;
        this.mFaceRunningState = 0;
    }

    public final boolean resolveNeedsSlowUnlockTransition() {
        if (isUserUnlocked(getCurrentUser())) {
            return false;
        }
        ResolveInfo resolveActivityAsUser = this.mPackageManager.resolveActivityAsUser(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME"), 0, getCurrentUser());
        if (resolveActivityAsUser == null) {
            KeyguardUpdateMonitorLogger keyguardUpdateMonitorLogger = this.mLogger;
            keyguardUpdateMonitorLogger.getClass();
            keyguardUpdateMonitorLogger.log("resolveNeedsSlowUnlockTransition: returning false since activity could not be resolved.", LogLevel.WARNING);
            return false;
        }
        return FALLBACK_HOME_COMPONENT.equals(resolveActivityAsUser.getComponentInfo().getComponentName());
    }

    public final void sendUpdates(KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback) {
        keyguardUpdateMonitorCallback.onRefreshBatteryInfo(getKeyguardBatteryStatus());
        keyguardUpdateMonitorCallback.onTimeChanged();
        keyguardUpdateMonitorCallback.onPhoneStateChanged(this.mPhoneState);
        keyguardUpdateMonitorCallback.onRefreshCarrierInfo(null);
        keyguardUpdateMonitorCallback.onKeyguardVisibilityChanged(isKeyguardVisible());
        keyguardUpdateMonitorCallback.onTelephonyCapable(this.mTelephonyCapable);
        Iterator it = this.mSimDatas.entrySet().iterator();
        while (it.hasNext()) {
            SimData simData = (SimData) ((Map.Entry) it.next()).getValue();
            if (isSimPinPassed(simData.slotId, simData.simState)) {
                this.mLogger.d("sendUpdates isSimPinPassed state.slotId = " + simData.slotId);
                return;
            }
            keyguardUpdateMonitorCallback.onSimStateChanged(simData.subId, simData.slotId, simData.simState);
        }
    }

    public void setAlternateBouncerShowing(boolean z) {
        this.mAlternateBouncerShowing = z;
        if (z) {
            updateFaceListeningState(0, FaceAuthUiEvent.FACE_AUTH_TRIGGERED_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN);
            requestActiveUnlock(ActiveUnlockConfig.ActiveUnlockRequestOrigin.UNLOCK_INTENT, "alternateBouncer");
        }
        updateFingerprintListeningState(2);
    }

    public void setAssistantVisible(boolean z) {
        this.mAssistantVisible = z;
        this.mLogger.logAssistantVisible(z);
        updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_ASSISTANT_VISIBILITY_CHANGED);
        if (this.mAssistantVisible) {
            requestActiveUnlock(ActiveUnlockConfig.ActiveUnlockRequestOrigin.ASSISTANT, "assistant", true);
        }
    }

    public void setCredentialAttempted() {
        this.mCredentialAttempted = true;
        updateFingerprintListeningState(2);
    }

    public final void setFaceRunningState(int i) {
        boolean z;
        boolean z2 = true;
        if (this.mFaceRunningState == 1) {
            z = true;
        } else {
            z = false;
        }
        if (i != 1) {
            z2 = false;
        }
        this.mFaceRunningState = i;
        this.mLogger.logFaceRunningState(i);
        if (z != z2) {
            Assert.isMainThread();
            for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
                KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
                if (keyguardUpdateMonitorCallback != null) {
                    keyguardUpdateMonitorCallback.onBiometricRunningStateChanged(BiometricSourceType.FACE, isFaceDetectionRunning());
                }
            }
        }
    }

    public final void setFingerprintRunningState(int i) {
        boolean z;
        boolean z2 = true;
        if (this.mFingerprintRunningState == 1) {
            z = true;
        } else {
            z = false;
        }
        if (i != 1) {
            z2 = false;
        }
        this.mFingerprintRunningState = i;
        this.mLogger.logFingerprintRunningState(i);
        if (z != z2) {
            Assert.isMainThread();
            for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
                KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
                if (keyguardUpdateMonitorCallback != null) {
                    keyguardUpdateMonitorCallback.onBiometricRunningStateChanged(BiometricSourceType.FINGERPRINT, isFingerprintDetectionRunning());
                }
            }
        }
    }

    public void setKeyguardGoingAway(boolean z) {
        this.mKeyguardGoingAway = z;
        if (z) {
            for (int i = 0; i < this.mCallbacks.size(); i++) {
                KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i)).get();
                if (keyguardUpdateMonitorCallback != null) {
                    keyguardUpdateMonitorCallback.onKeyguardGoingAway();
                }
            }
        }
        updateFingerprintListeningState(2);
    }

    public void setKeyguardShowing(boolean z, boolean z2) {
        boolean z3;
        boolean z4 = true;
        if (this.mKeyguardOccluded != z2) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (this.mKeyguardShowing == z) {
            z4 = false;
        }
        if (!z3 && !z4) {
            return;
        }
        boolean isKeyguardVisible = isKeyguardVisible();
        this.mKeyguardShowing = z;
        this.mKeyguardOccluded = z2;
        boolean isKeyguardVisible2 = isKeyguardVisible();
        this.mLogger.logKeyguardShowingChanged(z, z2, isKeyguardVisible2);
        if (isKeyguardVisible2 != isKeyguardVisible) {
            if (isKeyguardVisible2) {
                this.mSecureCameraLaunched = false;
            }
            for (int i = 0; i < this.mCallbacks.size(); i++) {
                KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i)).get();
                if (keyguardUpdateMonitorCallback != null) {
                    keyguardUpdateMonitorCallback.onKeyguardVisibilityChanged(isKeyguardVisible2);
                }
            }
        }
        if (z3) {
            updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_KEYGUARD_OCCLUSION_CHANGED);
        } else if (z4) {
            updateBiometricListeningState(2, FaceAuthUiEvent.FACE_AUTH_UPDATED_KEYGUARD_VISIBILITY_CHANGED);
        }
    }

    public void setStrongAuthTracker(StrongAuthTracker strongAuthTracker) {
        StrongAuthTracker strongAuthTracker2 = this.mStrongAuthTracker;
        if (strongAuthTracker2 != null) {
            this.mLockPatternUtils.unregisterStrongAuthTracker(strongAuthTracker2);
        }
        this.mStrongAuthTracker = strongAuthTracker;
        this.mLockPatternUtils.registerStrongAuthTracker(strongAuthTracker);
    }

    public boolean shouldListenForFace() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10 = false;
        if (this.mFaceManager == null) {
            return false;
        }
        if (this.mStatusBarState == 2) {
            z = true;
        } else {
            z = false;
        }
        if (isKeyguardVisible() && this.mDeviceInteractive && !z) {
            z2 = true;
        } else {
            z2 = false;
        }
        int currentUser = getCurrentUser();
        boolean isUnlockingWithBiometricAllowed = isUnlockingWithBiometricAllowed(BiometricSourceType.FACE);
        KeyguardBypassController keyguardBypassController = this.mKeyguardBypassController;
        if (keyguardBypassController != null && keyguardBypassController.canBypass()) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (getUserHasTrust(currentUser) && !z3) {
            z4 = false;
        } else {
            z4 = true;
        }
        if (isFaceSupported() && ((FaceSensorPropertiesInternal) this.mFaceSensorProperties.get(0)).supportsFaceDetection && z3 && !this.mPrimaryBouncerIsOrWillBeShowing && !isUserInLockdown(currentUser)) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (!isUnlockingWithBiometricAllowed && !z5) {
            z6 = false;
        } else {
            z6 = true;
        }
        boolean z11 = !getUserUnlockedWithBiometric(currentUser);
        boolean isFaceDisabled = isFaceDisabled(currentUser);
        boolean z12 = this.mBiometricEnabledForUser.get(currentUser);
        BiometricAuthenticated biometricAuthenticated = this.mUserFaceAuthenticated.get(getCurrentUser());
        if (this.mAssistantVisible && this.mKeyguardShowing && this.mKeyguardOccluded && ((biometricAuthenticated == null || !biometricAuthenticated.mAuthenticated) && !this.mUserHasTrust.get(getCurrentUser(), false))) {
            z7 = true;
        } else {
            z7 = false;
        }
        UdfpsController udfpsController = this.mAuthController.mUdfpsController;
        if (udfpsController == null) {
            z8 = false;
        } else {
            z8 = udfpsController.mOnFingerDown;
        }
        int i = this.mPostureState;
        int i2 = this.mConfigFaceAuthSupportedPosture;
        if (i2 != 0 && i != i2) {
            z9 = false;
        } else {
            z9 = true;
        }
        if ((this.mPrimaryBouncerFullyShown || this.mAuthInterruptActive || this.mOccludingAppRequestingFace || z2 || z7 || z8 || this.mAlternateBouncerShowing) && !this.mSwitchingUser && !isFaceDisabled && z4 && !this.mKeyguardGoingAway && z12 && z6 && this.mIsSystemUser && ((!this.mSecureCameraLaunched || this.mAlternateBouncerShowing) && z11 && !this.mGoingToSleep && z9)) {
            z10 = true;
        }
        logListenerModelData(new KeyguardFaceListenModel(System.currentTimeMillis(), currentUser, z10, this.mAlternateBouncerShowing, this.mAuthInterruptActive, z12, this.mPrimaryBouncerFullyShown, z11, isUnlockingWithBiometricAllowed, isFaceDisabled, this.mFaceLockedOutPermanent, this.mGoingToSleep, z2, this.mKeyguardGoingAway, z7, this.mOccludingAppRequestingFace, z9, this.mSecureCameraLaunched, z5, this.mSwitchingUser, this.mIsSystemUser, z8, z4));
        return z10;
    }

    public boolean shouldListenForFingerprint(boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        int currentUser = getCurrentUser();
        boolean z10 = !getUserHasTrust(currentUser);
        BiometricAuthenticated biometricAuthenticated = this.mUserFingerprintAuthenticated.get(getCurrentUser());
        if (this.mAssistantVisible && this.mKeyguardOccluded && ((biometricAuthenticated == null || !biometricAuthenticated.mAuthenticated) && !this.mUserHasTrust.get(getCurrentUser(), false))) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!isKeyguardVisible() && this.mDeviceInteractive && ((!this.mPrimaryBouncerIsOrWillBeShowing || this.mKeyguardGoingAway) && !this.mGoingToSleep && !z2 && ((!(z9 = this.mKeyguardOccluded) || !this.mIsDreaming) && (!z9 || !z10 || !this.mKeyguardShowing || (!this.mOccludingAppRequestingFp && !z && !this.mAlternateBouncerShowing))))) {
            z3 = false;
        } else {
            z3 = true;
        }
        boolean z11 = this.mBiometricEnabledForUser.get(currentUser);
        boolean userCanSkipBouncer = getUserCanSkipBouncer(currentUser);
        boolean isFingerprintDisabled = isFingerprintDisabled(currentUser);
        if (!this.mSwitchingUser && !isFingerprintDisabled && ((!this.mKeyguardGoingAway || !this.mDeviceInteractive) && this.mIsSystemUser && z11 && !isUserInLockdown(currentUser))) {
            z4 = true;
        } else {
            z4 = false;
        }
        boolean z12 = !isUnlockingWithFingerprintAllowed();
        List list = this.mAuthController.mSidefpsProps;
        if (list != null && !list.isEmpty()) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (z5) {
            isSfpsEnrolled();
        }
        if (z12 && this.mPrimaryBouncerIsOrWillBeShowing) {
            z6 = false;
        } else {
            z6 = true;
        }
        if (z && (userCanSkipBouncer || z12 || !z10)) {
            z7 = false;
        } else {
            z7 = true;
        }
        if (z3 && z4 && z6 && z7) {
            z8 = true;
        } else {
            z8 = false;
        }
        logListenerModelData(new KeyguardFingerprintListenModel(System.currentTimeMillis(), currentUser, z8, this.mAlternateBouncerShowing, z11, this.mPrimaryBouncerIsOrWillBeShowing, userCanSkipBouncer, this.mCredentialAttempted, this.mDeviceInteractive, this.mIsDreaming, isFingerprintDisabled, this.mFingerprintLockedOut, this.mGoingToSleep, this.mKeyguardGoingAway, isKeyguardVisible(), this.mKeyguardOccluded, this.mOccludingAppRequestingFp, true, z2, z12, this.mSwitchingUser, this.mIsSystemUser, z, z10));
        return z8;
    }

    public final boolean shouldTriggerActiveUnlock() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = true;
        if (this.mAssistantVisible && this.mKeyguardOccluded && !this.mUserHasTrust.get(getCurrentUser(), false)) {
            z = true;
        } else {
            z = false;
        }
        if (!this.mPrimaryBouncerFullyShown && !this.mAlternateBouncerShowing && (!isKeyguardVisible() || this.mGoingToSleep || this.mStatusBarState == 2)) {
            z2 = false;
        } else {
            z2 = true;
        }
        int currentUser = getCurrentUser();
        if (!getUserCanSkipBouncer(currentUser) && this.mLockPatternUtils.isSecure(currentUser)) {
            z3 = false;
        } else {
            z3 = true;
        }
        boolean isFingerprintLockedOut = isFingerprintLockedOut();
        boolean z5 = !isUnlockingWithBiometricAllowed(true);
        if ((!this.mAuthInterruptActive && !z && !z2) || this.mSwitchingUser || z3 || isFingerprintLockedOut || z5 || this.mKeyguardGoingAway || this.mSecureCameraLaunched) {
            z4 = false;
        }
        logListenerModelData(new KeyguardActiveUnlockModel(System.currentTimeMillis(), currentUser, z4, z2, this.mAuthInterruptActive, isFingerprintLockedOut, z5, this.mSwitchingUser, z, z3));
        return z4;
    }

    public void startBiometricWatchdog() {
        this.mBackgroundExecutor.execute(new Runnable() { // from class: com.android.keyguard.KeyguardUpdateMonitor$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                KeyguardUpdateMonitor keyguardUpdateMonitor = KeyguardUpdateMonitor.this;
                keyguardUpdateMonitor.getClass();
                Trace.beginSection("#startBiometricWatchdog");
                if (keyguardUpdateMonitor.mFaceManager != null) {
                    LogBuffer.log$default(keyguardUpdateMonitor.mLogger.logBuffer, "KeyguardUpdateMonitorLog", LogLevel.DEBUG, "Scheduling biometric watchdog for ".concat("face"), null, 8, null);
                    keyguardUpdateMonitor.mFaceManager.scheduleWatchdog();
                }
                if (keyguardUpdateMonitor.mFpm != null) {
                    LogBuffer.log$default(keyguardUpdateMonitor.mLogger.logBuffer, "KeyguardUpdateMonitorLog", LogLevel.DEBUG, "Scheduling biometric watchdog for ".concat("fingerprint"), null, 8, null);
                    keyguardUpdateMonitor.mFpm.scheduleWatchdog();
                }
                Trace.endSection();
            }
        });
    }

    public void startListeningForFace(FaceAuthUiEvent faceAuthUiEvent) {
        int i;
        boolean z;
        int currentUser = getCurrentUser();
        boolean isUnlockWithFacePossible = isUnlockWithFacePossible(currentUser);
        if (this.mFaceCancelSignal != null) {
            this.mLogger.logUnexpectedFaceCancellationSignalState(this.mFaceRunningState, isUnlockWithFacePossible);
        }
        int i2 = this.mFaceRunningState;
        if (i2 == 2) {
            setFaceRunningState(3);
            return;
        }
        if (i2 == 3) {
            return;
        }
        this.mLogger.logStartedListeningForFace(i2, faceAuthUiEvent);
        this.mUiEventLogger.logWithInstanceIdAndPosition(faceAuthUiEvent, 0, (String) null, ((SessionTracker) this.mSessionTrackerProvider.get()).getSessionId(1), faceAuthUiEvent.getExtraInfo());
        this.mLogger.logFaceUnlockPossible(isUnlockWithFacePossible);
        if (isUnlockWithFacePossible) {
            this.mFaceCancelSignal = new CancellationSignal();
            boolean z2 = false;
            if (faceAuthUiEvent == FaceAuthUiEvent.FACE_AUTH_UPDATED_STARTED_WAKING_UP) {
                i = faceAuthUiEvent.getExtraInfo();
            } else {
                i = 0;
            }
            SysUiFaceAuthenticateOptions sysUiFaceAuthenticateOptions = new SysUiFaceAuthenticateOptions(currentUser, faceAuthUiEvent, i);
            FaceAuthenticateOptions build = new FaceAuthenticateOptions.Builder().setUserId(sysUiFaceAuthenticateOptions.userId).setAuthenticateReason(sysUiFaceAuthenticateOptions.authenticateReason).setWakeReason(sysUiFaceAuthenticateOptions.wakeReason).build();
            if (isFaceSupported() && ((FaceSensorPropertiesInternal) this.mFaceSensorProperties.get(0)).supportsFaceDetection) {
                z = true;
            } else {
                z = false;
            }
            if (!isUnlockingWithBiometricAllowed(BiometricSourceType.FACE)) {
                if (isUdfpsSupported() && isFingerprintDetectionRunning()) {
                    z2 = true;
                }
                if (z && !z2) {
                    this.mLogger.v("startListeningForFace - detect");
                    this.mFaceManager.detectFace(this.mFaceCancelSignal, this.mFaceDetectionCallback, build);
                } else {
                    this.mLogger.v("Ignoring \"startListeningForFace - detect\". Informing user face isn't available.");
                    this.mFaceAuthenticationCallback.onAuthenticationHelp(-3, this.mContext.getResources().getString(R.string.keyguard_face_unlock_unavailable));
                    return;
                }
            } else {
                this.mLogger.v("startListeningForFace - authenticate");
                KeyguardBypassController keyguardBypassController = this.mKeyguardBypassController;
                if (keyguardBypassController != null) {
                    keyguardBypassController.getBypassEnabled();
                }
                this.mFaceManager.authenticate((CryptoObject) null, this.mFaceCancelSignal, this.mFaceAuthenticationCallback, (Handler) null, build);
            }
            setFaceRunningState(1);
        }
    }

    public void startListeningForFingerprint() {
        int currentUser = getCurrentUser();
        boolean isUnlockWithFingerprintPossible = isUnlockWithFingerprintPossible(currentUser);
        if (this.mFingerprintCancelSignal != null) {
            this.mLogger.logUnexpectedFpCancellationSignalState(this.mFingerprintRunningState, isUnlockWithFingerprintPossible);
        }
        int i = this.mFingerprintRunningState;
        if (i == 2) {
            setFingerprintRunningState(3);
            return;
        }
        if (i != 3 && isUnlockWithFingerprintPossible) {
            this.mFingerprintCancelSignal = new CancellationSignal();
            if (!isUnlockingWithFingerprintAllowed()) {
                this.mLogger.v("startListeningForFingerprint - detect");
                this.mFpm.detectFingerprint(this.mFingerprintCancelSignal, this.mFingerprintDetectionCallback, new FingerprintAuthenticateOptions.Builder().setUserId(currentUser).build());
            } else {
                this.mLogger.v("startListeningForFingerprint");
                this.mFpm.authenticate((FingerprintManager.CryptoObject) null, this.mFingerprintCancelSignal, this.mFingerprintAuthenticationCallback, (Handler) null, new FingerprintAuthenticateOptions.Builder().setUserId(currentUser).build());
            }
            setFingerprintRunningState(1);
        }
    }

    public void stopListeningForFace(FaceAuthUiEvent faceAuthUiEvent) {
        this.mLogger.v("stopListeningForFace()");
        this.mLogger.logStoppedListeningForFace(this.mFaceRunningState, faceAuthUiEvent.getReason());
        this.mUiEventLogger.log(faceAuthUiEvent, ((SessionTracker) this.mSessionTrackerProvider.get()).getSessionId(1));
        if (this.mFaceRunningState == 1) {
            CancellationSignal cancellationSignal = this.mFaceCancelSignal;
            if (cancellationSignal != null) {
                cancellationSignal.cancel();
                this.mFaceCancelSignal = null;
                removeCallbacks(this.mFaceCancelNotReceived);
                postDelayed(this.mFaceCancelNotReceived, 3000L);
            }
            setFaceRunningState(2);
        }
        if (this.mFaceRunningState == 3) {
            setFaceRunningState(2);
        }
    }

    public void stopListeningForFingerprint() {
        this.mLogger.v("stopListeningForFingerprint()");
        if (this.mFingerprintRunningState == 1) {
            CancellationSignal cancellationSignal = this.mFingerprintCancelSignal;
            if (cancellationSignal != null) {
                cancellationSignal.cancel();
                this.mFingerprintCancelSignal = null;
                removeCallbacks(this.mFpCancelNotReceived);
                postDelayed(this.mFpCancelNotReceived, 3000L);
            }
            setFingerprintRunningState(2);
        }
        if (this.mFingerprintRunningState == 3) {
            setFingerprintRunningState(2);
        }
    }

    public void updateBiometricListeningState(int i, FaceAuthUiEvent faceAuthUiEvent) {
        updateFingerprintListeningState(i);
        updateFaceListeningState(i, faceAuthUiEvent);
    }

    public void updateFaceListeningState(int i, FaceAuthUiEvent faceAuthUiEvent) {
        if (hasMessages(336)) {
            return;
        }
        removeCallbacks(this.mRetryFaceAuthentication);
        boolean shouldListenForFace = shouldListenForFace();
        int i2 = this.mFaceRunningState;
        if (i2 == 1 && !shouldListenForFace) {
            if (i == 0) {
                this.mLogger.v("Ignoring stopListeningForFace()");
                return;
            } else {
                stopListeningForFace(faceAuthUiEvent);
                return;
            }
        }
        if (i2 != 1 && shouldListenForFace) {
            if (i == 1) {
                this.mLogger.v("Ignoring startListeningForFace()");
            } else {
                startListeningForFace(faceAuthUiEvent);
            }
        }
    }

    public void updateFingerprintListeningState(int i) {
        boolean z;
        if (hasMessages(336)) {
            this.mLogger.logHandlerHasAuthContinueMsgs(i);
            return;
        }
        if (!this.mAuthController.mAllFingerprintAuthenticatorsRegistered) {
            this.mLogger.d("All FP authenticators not registered, skipping FP listening state update");
            return;
        }
        boolean shouldListenForFingerprint = shouldListenForFingerprint(isUdfpsSupported());
        int i2 = this.mFingerprintRunningState;
        if (i2 != 1 && i2 != 3) {
            z = false;
        } else {
            z = true;
        }
        if (z && !shouldListenForFingerprint) {
            if (i == 0) {
                this.mLogger.v("Ignoring stopListeningForFingerprint()");
                return;
            } else {
                stopListeningForFingerprint();
                return;
            }
        }
        if (!z && shouldListenForFingerprint) {
            if (i == 1) {
                this.mLogger.v("Ignoring startListeningForFingerprint()");
            } else {
                startListeningForFingerprint();
            }
        }
    }

    public final void updateSecondaryLockscreenRequirement(int i) {
        Intent intent = (Intent) this.mSecondaryLockscreenRequirement.get(Integer.valueOf(i));
        boolean isSecondaryLockscreenEnabled = this.mDevicePolicyManager.isSecondaryLockscreenEnabled(UserHandle.of(i));
        boolean z = true;
        if (isSecondaryLockscreenEnabled && intent == null) {
            ComponentName profileOwnerOrDeviceOwnerSupervisionComponent = this.mDevicePolicyManager.getProfileOwnerOrDeviceOwnerSupervisionComponent(UserHandle.of(i));
            if (profileOwnerOrDeviceOwnerSupervisionComponent == null) {
                this.mLogger.logMissingSupervisorAppError(i);
            } else {
                ResolveInfo resolveService = this.mPackageManager.resolveService(new Intent("android.app.action.BIND_SECONDARY_LOCKSCREEN_SERVICE").setPackage(profileOwnerOrDeviceOwnerSupervisionComponent.getPackageName()), 0);
                if (resolveService != null && resolveService.serviceInfo != null) {
                    this.mSecondaryLockscreenRequirement.put(Integer.valueOf(i), new Intent().setComponent(resolveService.serviceInfo.getComponentName()));
                }
            }
            z = false;
        } else {
            if (!isSecondaryLockscreenEnabled && intent != null) {
                this.mSecondaryLockscreenRequirement.put(Integer.valueOf(i), null);
            }
            z = false;
        }
        if (z) {
            for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
                KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
                if (keyguardUpdateMonitorCallback != null) {
                    keyguardUpdateMonitorCallback.onSecondaryLockscreenRequirementChanged(i);
                }
            }
        }
    }

    public void updateTelephonyCapable(boolean z) {
        Assert.isMainThread();
        if (z == this.mTelephonyCapable) {
            return;
        }
        this.mTelephonyCapable = z;
        for (int i = 0; i < this.mCallbacks.size(); i++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onTelephonyCapable(this.mTelephonyCapable);
            }
        }
    }

    public final void clearBiometricRecognized(int i) {
        Assert.isMainThread();
        this.mUserFingerprintAuthenticated.clear();
        this.mUserFaceAuthenticated.clear();
        this.mTrustManager.clearAllBiometricRecognized(BiometricSourceType.FINGERPRINT, i);
        this.mTrustManager.clearAllBiometricRecognized(BiometricSourceType.FACE, i);
        this.mLogger.d("clearBiometricRecognized");
        for (int i2 = 0; i2 < this.mCallbacks.size(); i2++) {
            KeyguardUpdateMonitorCallback keyguardUpdateMonitorCallback = (KeyguardUpdateMonitorCallback) ((WeakReference) this.mCallbacks.get(i2)).get();
            if (keyguardUpdateMonitorCallback != null) {
                keyguardUpdateMonitorCallback.onBiometricsCleared();
            }
        }
    }

    public final boolean isUnlockingWithBiometricAllowed(BiometricSourceType biometricSourceType) {
        int i = AnonymousClass23.$SwitchMap$android$hardware$biometrics$BiometricSourceType[biometricSourceType.ordinal()];
        if (i == 1) {
            return isUnlockingWithBiometricAllowed(isFingerprintClass3());
        }
        if (i != 2) {
            return false;
        }
        return isUnlockingWithBiometricAllowed(isFaceClass3());
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x002f, code lost:
    
        if (r0.requestActiveUnlockOnBioFail == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0054, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0042, code lost:
    
        if (r0.requestActiveUnlockOnWakeup == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0051, code lost:
    
        if (r0.shouldRequestActiveUnlockOnUnlockIntentFromBiometricEnrollment() == false) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void requestActiveUnlock(com.android.keyguard.ActiveUnlockConfig.ActiveUnlockRequestOrigin r7, java.lang.String r8, boolean r9) {
        /*
            r6 = this;
            com.android.keyguard.KeyguardUpdateMonitor$15 r0 = r6.mHandler
            r1 = 336(0x150, float:4.71E-43)
            boolean r0 = r0.hasMessages(r1)
            if (r0 == 0) goto Lb
            return
        Lb:
            com.android.keyguard.ActiveUnlockConfig r0 = r6.mActiveUnlockConfig
            r0.getClass()
            int[] r2 = com.android.keyguard.ActiveUnlockConfig.WhenMappings.$EnumSwitchMapping$0
            int r3 = r7.ordinal()
            r2 = r2[r3]
            r3 = 0
            r4 = 1
            if (r2 == r4) goto L58
            r5 = 2
            if (r2 == r5) goto L45
            r5 = 3
            if (r2 == r5) goto L38
            r5 = 4
            if (r2 != r5) goto L32
            boolean r2 = r0.requestActiveUnlockOnWakeup
            if (r2 != 0) goto L56
            boolean r2 = r0.requestActiveUnlockOnUnlockIntent
            if (r2 != 0) goto L56
            boolean r0 = r0.requestActiveUnlockOnBioFail
            if (r0 == 0) goto L54
            goto L56
        L32:
            kotlin.NoWhenBranchMatchedException r6 = new kotlin.NoWhenBranchMatchedException
            r6.<init>()
            throw r6
        L38:
            boolean r2 = r0.requestActiveUnlockOnBioFail
            if (r2 != 0) goto L56
            boolean r2 = r0.requestActiveUnlockOnUnlockIntent
            if (r2 != 0) goto L56
            boolean r0 = r0.requestActiveUnlockOnWakeup
            if (r0 == 0) goto L54
            goto L56
        L45:
            boolean r2 = r0.requestActiveUnlockOnUnlockIntent
            if (r2 != 0) goto L56
            boolean r2 = r0.requestActiveUnlockOnWakeup
            if (r2 != 0) goto L56
            boolean r0 = r0.shouldRequestActiveUnlockOnUnlockIntentFromBiometricEnrollment()
            if (r0 == 0) goto L54
            goto L56
        L54:
            r0 = r3
            goto L5a
        L56:
            r0 = r4
            goto L5a
        L58:
            boolean r0 = r0.requestActiveUnlockOnWakeup
        L5a:
            com.android.keyguard.ActiveUnlockConfig$ActiveUnlockRequestOrigin r2 = com.android.keyguard.ActiveUnlockConfig.ActiveUnlockRequestOrigin.WAKE
            if (r7 != r2) goto L8f
            if (r0 != 0) goto L8f
            com.android.keyguard.ActiveUnlockConfig r2 = r6.mActiveUnlockConfig
            boolean r5 = r2.requestActiveUnlockOnWakeup
            if (r5 != 0) goto L6e
            boolean r5 = r2.requestActiveUnlockOnUnlockIntent
            if (r5 != 0) goto L6e
            boolean r2 = r2.requestActiveUnlockOnBioFail
            if (r2 == 0) goto L6f
        L6e:
            r3 = r4
        L6f:
            if (r3 == 0) goto L8f
            com.android.keyguard.KeyguardUpdateMonitor$15 r7 = r6.mHandler
            boolean r7 = r7.hasMessages(r1)
            if (r7 == 0) goto L7a
            goto L8e
        L7a:
            boolean r7 = r6.shouldTriggerActiveUnlock()
            if (r7 == 0) goto L8e
            com.android.keyguard.logging.KeyguardUpdateMonitorLogger r7 = r6.mLogger
            r7.logActiveUnlockTriggered(r8)
            android.app.trust.TrustManager r6 = r6.mTrustManager
            int r7 = getCurrentUser()
            r6.reportUserMayRequestUnlock(r7)
        L8e:
            return
        L8f:
            if (r0 == 0) goto La5
            boolean r0 = r6.shouldTriggerActiveUnlock()
            if (r0 == 0) goto La5
            com.android.keyguard.logging.KeyguardUpdateMonitorLogger r0 = r6.mLogger
            r0.logUserRequestedUnlock(r7, r8, r9)
            android.app.trust.TrustManager r6 = r6.mTrustManager
            int r7 = getCurrentUser()
            r6.reportUserRequestedUnlock(r7, r9)
        La5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardUpdateMonitor.requestActiveUnlock(com.android.keyguard.ActiveUnlockConfig$ActiveUnlockRequestOrigin, java.lang.String, boolean):void");
    }

    public static boolean isSimPinSecure(int i) {
        return i == 2 || i == 3 || i == 7 || (LsRune.SECURITY_SIM_PERSO_LOCK && i == 12);
    }

    public final void onIsActiveUnlockRunningChanged(boolean z, int i) {
    }
}
