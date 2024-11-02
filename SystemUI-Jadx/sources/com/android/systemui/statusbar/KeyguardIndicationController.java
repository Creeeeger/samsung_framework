package com.android.systemui.statusbar;

import android.app.AlarmManager;
import android.app.admin.DevicePolicyManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.ColorStateList;
import android.hardware.biometrics.BiometricSourceType;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.UserManager;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import com.android.internal.app.IBatteryStats;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.keyguard.TrustGrantFlags;
import com.android.keyguard.logging.KeyguardLogger;
import com.android.systemui.DejankUtils;
import com.android.systemui.R;
import com.android.systemui.biometrics.AuthController;
import com.android.systemui.biometrics.FaceHelpMessageDeferral;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.dock.DockManager;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.keyguard.KeyguardIndication;
import com.android.systemui.keyguard.KeyguardIndicationRotateTextViewController;
import com.android.systemui.keyguard.ScreenLifecycle;
import com.android.systemui.keyguard.domain.interactor.AlternateBouncerInteractor;
import com.android.systemui.log.LogLevel;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.phone.KeyguardBypassController;
import com.android.systemui.statusbar.phone.KeyguardIndicationTextView;
import com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.AlarmTimeout;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.concurrency.ExecutorImpl;
import com.android.systemui.util.wakelock.SettableWakeLock;
import com.android.systemui.util.wakelock.WakeLock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class KeyguardIndicationController {
    public final AccessibilityManager mAccessibilityManager;
    public final AlternateBouncerInteractor mAlternateBouncerInteractor;
    public final AuthController mAuthController;
    public final DelayableExecutor mBackgroundExecutor;
    public boolean mBatteryDefender;
    public final IBatteryStats mBatteryInfo;
    public int mBatteryLevel;
    public String mBiometricErrorMessageToShowOnScreenOn;
    public CharSequence mBiometricMessage;
    public CharSequence mBiometricMessageFollowUp;
    public final BroadcastDispatcher mBroadcastDispatcher;
    public AnonymousClass3 mBroadcastReceiver;
    public int mChangingType;
    public int mChargingSpeed;
    public long mChargingTimeRemaining;
    public int mChargingWattage;
    public final Set mCoExFaceAcquisitionMsgIdsToShow;
    public final Context mContext;
    public final DevicePolicyManager mDevicePolicyManager;
    public final DockManager mDockManager;
    public boolean mDozing;
    public final DelayableExecutor mExecutor;
    public final FaceHelpMessageDeferral mFaceAcquiredMessageDeferral;
    public boolean mFaceLockedOutThisAuthSession;
    public final FalsingManager mFalsingManager;
    public final FeatureFlags mFeatureFlags;
    public final AnonymousClass2 mHandler;
    public final AlarmTimeout mHideBiometricMessageHandler;
    public final AlarmTimeout mHideTransientMessageHandler;
    public boolean mIncompatibleCharger;
    public ViewGroup mIndicationArea;
    public boolean mInited;
    public ColorStateList mInitialTextColorState;
    public final KeyguardBypassController mKeyguardBypassController;
    public final KeyguardLogger mKeyguardLogger;
    public final AnonymousClass5 mKeyguardStateCallback;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public KeyguardIndicationTextView mLifeStyleIndicationView;
    public KeyguardIndicationTextView mLockScreenIndicationView;
    public boolean mOrganizationOwnedDevice;
    public boolean mPowerCharged;
    public boolean mPowerPluggedIn;
    public boolean mPowerPluggedInDock;
    public boolean mPowerPluggedInWired;
    public boolean mPowerPluggedInWireless;
    public boolean mPowerPluggedInWithoutCharging;
    public boolean mProtectedFullyCharged;
    public KeyguardIndicationRotateTextViewController mRotateTextViewController;
    public final ScreenLifecycle mScreenLifecycle;
    public final AnonymousClass1 mScreenObserver;
    public StatusBarKeyguardViewManager mStatusBarKeyguardViewManager;
    public final StatusBarStateController mStatusBarStateController;
    public final AnonymousClass4 mStatusBarStateListener;
    public KeyguardIndicationTextView mTopIndicationView;
    public CharSequence mTransientIndication;
    public CharSequence mTrustGrantedIndication;
    public KeyguardUpdateMonitorCallback mUpdateMonitorCallback;
    public final UserManager mUserManager;
    public final UserTracker mUserTracker;
    public boolean mVisible;
    public final SettableWakeLock mWakeLock;
    public boolean mIsNeededShowChargingType = false;
    public boolean mBatteryPresent = true;
    public String mSleepChargingEvent = null;
    public boolean mResumedChargingAdaptiveProtection = false;
    public String mSleepChargingEventFinishTime = null;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.KeyguardIndicationController$4, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass4 implements StatusBarStateController.StateListener {
        public AnonymousClass4() {
        }

        @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
        public final void onDozingChanged(boolean z) {
            KeyguardIndicationController keyguardIndicationController = KeyguardIndicationController.this;
            if (keyguardIndicationController.mDozing == z) {
                return;
            }
            keyguardIndicationController.mDozing = z;
            boolean z2 = true;
            if (keyguardIndicationController.mStatusBarStateController.getState() != 1) {
                z2 = false;
            }
            keyguardIndicationController.setVisible(z2);
            keyguardIndicationController.setDozing(z);
            if (keyguardIndicationController.mDozing) {
                keyguardIndicationController.hideBiometricMessage();
            }
            keyguardIndicationController.getClass();
        }

        @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
        public final void onStateChanged(int i) {
            boolean z = true;
            if (i != 1) {
                z = false;
            }
            KeyguardIndicationController.this.setVisible(z);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public class BaseKeyguardCallback extends KeyguardUpdateMonitorCallback {
        public BaseKeyguardCallback() {
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onBiometricAcquired(BiometricSourceType biometricSourceType, int i) {
            String str;
            Integer num;
            if (biometricSourceType == BiometricSourceType.FACE) {
                FaceHelpMessageDeferral faceHelpMessageDeferral = KeyguardIndicationController.this.mFaceAcquiredMessageDeferral;
                Set set = faceHelpMessageDeferral.messagesToDefer;
                if (!set.isEmpty()) {
                    faceHelpMessageDeferral.totalFrames++;
                    HashMap hashMap = (HashMap) faceHelpMessageDeferral.acquiredInfoToFrequency;
                    int intValue = ((Number) hashMap.getOrDefault(Integer.valueOf(i), 0)).intValue() + 1;
                    hashMap.put(Integer.valueOf(i), Integer.valueOf(intValue));
                    if (set.contains(Integer.valueOf(i)) && ((num = faceHelpMessageDeferral.mostFrequentAcquiredInfoToDefer) == null || intValue > ((Number) hashMap.getOrDefault(num, 0)).intValue())) {
                        faceHelpMessageDeferral.mostFrequentAcquiredInfoToDefer = Integer.valueOf(i);
                    }
                    int i2 = faceHelpMessageDeferral.totalFrames;
                    Integer num2 = faceHelpMessageDeferral.mostFrequentAcquiredInfoToDefer;
                    if (num2 != null) {
                        str = num2.toString();
                    } else {
                        str = null;
                    }
                    faceHelpMessageDeferral.logBuffer.logFrameProcessed(i, i2, str);
                }
            }
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onBiometricAuthFailed(BiometricSourceType biometricSourceType) {
            if (biometricSourceType == BiometricSourceType.FACE) {
                KeyguardIndicationController.this.mFaceAcquiredMessageDeferral.reset();
            }
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public void onBiometricAuthenticated(int i, BiometricSourceType biometricSourceType, boolean z) {
            KeyguardIndicationController keyguardIndicationController = KeyguardIndicationController.this;
            keyguardIndicationController.hideBiometricMessage();
            if (biometricSourceType == BiometricSourceType.FACE) {
                keyguardIndicationController.mFaceAcquiredMessageDeferral.reset();
                if (!keyguardIndicationController.mKeyguardBypassController.canBypass()) {
                    keyguardIndicationController.showActionToUnlock();
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0070  */
        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onBiometricError(int r10, java.lang.String r11, android.hardware.biometrics.BiometricSourceType r12) {
            /*
                Method dump skipped, instructions count: 265
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.KeyguardIndicationController.BaseKeyguardCallback.onBiometricError(int, java.lang.String, android.hardware.biometrics.BiometricSourceType):void");
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public void onBiometricHelp(int i, String str, BiometricSourceType biometricSourceType) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            String string;
            BiometricSourceType biometricSourceType2 = BiometricSourceType.FACE;
            KeyguardIndicationController keyguardIndicationController = KeyguardIndicationController.this;
            if (biometricSourceType == biometricSourceType2) {
                FaceHelpMessageDeferral faceHelpMessageDeferral = keyguardIndicationController.mFaceAcquiredMessageDeferral;
                if (faceHelpMessageDeferral.messagesToDefer.contains(Integer.valueOf(i))) {
                    HashMap hashMap = (HashMap) faceHelpMessageDeferral.acquiredInfoToHelpString;
                    if (!Objects.equals(hashMap.get(Integer.valueOf(i)), str)) {
                        faceHelpMessageDeferral.logBuffer.logUpdateMessage(i, str);
                        hashMap.put(Integer.valueOf(i), str);
                    }
                }
                if (keyguardIndicationController.mFaceAcquiredMessageDeferral.messagesToDefer.contains(Integer.valueOf(i))) {
                    return;
                }
            }
            boolean z5 = false;
            if (biometricSourceType == BiometricSourceType.FACE && i == -3) {
                z = true;
            } else {
                z = false;
            }
            if ((!keyguardIndicationController.mKeyguardUpdateMonitor.isUnlockingWithBiometricAllowed(true)) && !z) {
                return;
            }
            BiometricSourceType biometricSourceType3 = BiometricSourceType.FACE;
            if (biometricSourceType == biometricSourceType3 && i != -2 && i != -3) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (biometricSourceType == biometricSourceType3 && i == -2) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (biometricSourceType == BiometricSourceType.FINGERPRINT && i == -1) {
                z4 = true;
            } else {
                z4 = false;
            }
            boolean canUnlockWithFingerprint = keyguardIndicationController.canUnlockWithFingerprint();
            if (z2 && canUnlockWithFingerprint) {
                z5 = true;
            }
            if (z5) {
                if (!((HashSet) keyguardIndicationController.mCoExFaceAcquisitionMsgIdsToShow).contains(Integer.valueOf(i))) {
                    keyguardIndicationController.mKeyguardLogger.logBiometricMessage("skipped showing help message due to co-ex logic", Integer.valueOf(i), str);
                    return;
                }
            }
            if (keyguardIndicationController.mStatusBarKeyguardViewManager.isBouncerShowing()) {
                keyguardIndicationController.mStatusBarKeyguardViewManager.setKeyguardMessage(str, keyguardIndicationController.mInitialTextColorState);
                return;
            }
            if (keyguardIndicationController.mScreenLifecycle.mScreenState == 2) {
                Context context = keyguardIndicationController.mContext;
                if (z5 && i == 3) {
                    keyguardIndicationController.showBiometricMessage(str, context.getString(R.string.keyguard_suggest_fingerprint));
                    return;
                }
                if (z3 && canUnlockWithFingerprint) {
                    keyguardIndicationController.showBiometricMessage(context.getString(R.string.keyguard_face_failed), context.getString(R.string.keyguard_suggest_fingerprint));
                    return;
                }
                UserTracker userTracker = keyguardIndicationController.mUserTracker;
                KeyguardUpdateMonitor keyguardUpdateMonitor = keyguardIndicationController.mKeyguardUpdateMonitor;
                if (z4 && keyguardUpdateMonitor.getUserUnlockedWithFace(((UserTrackerImpl) userTracker).getUserId())) {
                    keyguardIndicationController.showBiometricMessage(context.getString(R.string.keyguard_face_successful_unlock), context.getString(R.string.keyguard_unlock));
                    return;
                }
                if (z4 && keyguardUpdateMonitor.getUserHasTrust(((UserTrackerImpl) userTracker).getUserId())) {
                    keyguardIndicationController.showBiometricMessage(keyguardIndicationController.getTrustGrantedIndication(), context.getString(R.string.keyguard_unlock));
                    return;
                }
                if (z) {
                    if (canUnlockWithFingerprint) {
                        string = context.getString(R.string.keyguard_suggest_fingerprint);
                    } else {
                        string = context.getString(R.string.keyguard_unlock);
                    }
                    keyguardIndicationController.showBiometricMessage(str, string);
                    return;
                }
                keyguardIndicationController.showBiometricMessage(str, null);
                return;
            }
            AnonymousClass2 anonymousClass2 = keyguardIndicationController.mHandler;
            if (z3) {
                anonymousClass2.sendMessageDelayed(anonymousClass2.obtainMessage(1), 1300L);
            } else {
                keyguardIndicationController.mBiometricErrorMessageToShowOnScreenOn = str;
                anonymousClass2.sendMessageDelayed(anonymousClass2.obtainMessage(2), 1000L);
            }
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public void onBiometricRunningStateChanged(BiometricSourceType biometricSourceType, boolean z) {
            if (z && biometricSourceType == BiometricSourceType.FACE) {
                KeyguardIndicationController keyguardIndicationController = KeyguardIndicationController.this;
                keyguardIndicationController.hideBiometricMessage();
                keyguardIndicationController.mBiometricErrorMessageToShowOnScreenOn = null;
            }
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onLockedOutStateChanged(BiometricSourceType biometricSourceType) {
            BiometricSourceType biometricSourceType2 = BiometricSourceType.FACE;
            KeyguardIndicationController keyguardIndicationController = KeyguardIndicationController.this;
            if (biometricSourceType == biometricSourceType2) {
                KeyguardUpdateMonitor keyguardUpdateMonitor = keyguardIndicationController.mKeyguardUpdateMonitor;
                keyguardUpdateMonitor.getClass();
                if (!keyguardUpdateMonitor.mFaceLockedOutPermanent) {
                    keyguardIndicationController.mFaceLockedOutThisAuthSession = false;
                    return;
                }
            }
            if (biometricSourceType == BiometricSourceType.FINGERPRINT && keyguardIndicationController.mKeyguardUpdateMonitor.isFingerprintLockedOut()) {
                keyguardIndicationController.mContext.getString(R.string.keyguard_unlock);
            }
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onLogoutEnabledChanged() {
            KeyguardIndicationController keyguardIndicationController = KeyguardIndicationController.this;
            if (keyguardIndicationController.mVisible) {
                keyguardIndicationController.getClass();
            }
        }

        /* JADX WARN: Can't wrap try/catch for region: R(38:1|(2:(1:4)(1:76)|(29:6|7|(1:75)(1:10)|(1:74)(1:13)|14|(1:16)(1:73)|(1:72)(1:19)|20|(1:22)(1:71)|(1:70)(1:25)|26|(1:69)(1:29)|30|(1:32)(1:68)|33|(1:35)(1:(1:65)(1:(1:67)))|36|(1:38)(1:63)|39|40|41|(1:43)(1:60)|44|45|(1:47)|48|(2:56|(1:58))(1:52)|53|54))|77|7|(0)|75|(0)|74|14|(0)(0)|(0)|72|20|(0)(0)|(0)|70|26|(0)|69|30|(0)(0)|33|(0)(0)|36|(0)(0)|39|40|41|(0)(0)|44|45|(0)|48|(1:50)|56|(0)|53|54) */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00cd, code lost:
        
            r1 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00ce, code lost:
        
            r6.buffer.log("KeyguardIndication", com.android.systemui.log.LogLevel.ERROR, "Error calling IBatteryStats", r1);
            r12.mChargingTimeRemaining = -1;
         */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0035  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0045  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0089  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00a1  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00c2 A[Catch: RemoteException -> 0x00cd, TryCatch #0 {RemoteException -> 0x00cd, blocks: (B:41:0x00be, B:43:0x00c2, B:44:0x00ca), top: B:40:0x00be }] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00e1  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x00fc  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x00c9  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x00a3  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x008b  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0037  */
        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onRefreshBatteryInfo(com.android.systemui.statusbar.KeyguardBatteryStatus r13) {
            /*
                Method dump skipped, instructions count: 267
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.KeyguardIndicationController.BaseKeyguardCallback.onRefreshBatteryInfo(com.android.systemui.statusbar.KeyguardBatteryStatus):void");
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onRequireUnlockForNfc() {
            KeyguardIndicationController keyguardIndicationController = KeyguardIndicationController.this;
            keyguardIndicationController.showTransientIndication(keyguardIndicationController.mContext.getString(R.string.require_unlock_for_nfc));
            keyguardIndicationController.hideTransientIndicationDelayed(4100L);
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onTimeChanged() {
            KeyguardIndicationController keyguardIndicationController = KeyguardIndicationController.this;
            if (keyguardIndicationController.mVisible) {
                keyguardIndicationController.getClass();
            }
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public void onTrustAgentErrorMessage(CharSequence charSequence) {
            KeyguardIndicationController.this.showBiometricMessage(charSequence, null);
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public void onTrustChanged(int i) {
            KeyguardIndicationController keyguardIndicationController = KeyguardIndicationController.this;
            if (!KeyguardIndicationController.m1409$$Nest$misCurrentUser(keyguardIndicationController, i)) {
                return;
            }
            keyguardIndicationController.getClass();
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onTrustGrantedForCurrentUser(boolean z, TrustGrantFlags trustGrantFlags, String str) {
            KeyguardIndicationController.this.mTrustGrantedIndication = str;
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onUserSwitchComplete(int i) {
            KeyguardIndicationController keyguardIndicationController = KeyguardIndicationController.this;
            if (keyguardIndicationController.mVisible) {
                keyguardIndicationController.getClass();
            }
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public void onUserUnlocked() {
            KeyguardIndicationController keyguardIndicationController = KeyguardIndicationController.this;
            if (keyguardIndicationController.mVisible) {
                keyguardIndicationController.getClass();
            }
        }

        public final boolean shouldSuppressFingerprintError(int i) {
            boolean z;
            if (!KeyguardIndicationController.this.mKeyguardUpdateMonitor.isUnlockingWithBiometricAllowed(true)) {
                if (i != 9 && i != 7) {
                    z = false;
                } else {
                    z = true;
                }
                if (!z) {
                    return true;
                }
            }
            if (i == 5 || i == 10 || i == 19) {
                return true;
            }
            return false;
        }
    }

    /* renamed from: -$$Nest$misCurrentUser, reason: not valid java name */
    public static boolean m1409$$Nest$misCurrentUser(KeyguardIndicationController keyguardIndicationController, int i) {
        if (((UserTrackerImpl) keyguardIndicationController.mUserTracker).getUserId() == i) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v8, types: [android.os.Handler, com.android.systemui.statusbar.KeyguardIndicationController$2] */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.android.systemui.statusbar.KeyguardIndicationController$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.android.systemui.statusbar.KeyguardIndicationController$5] */
    public KeyguardIndicationController(Context context, Looper looper, WakeLock.Builder builder, KeyguardStateController keyguardStateController, StatusBarStateController statusBarStateController, KeyguardUpdateMonitor keyguardUpdateMonitor, DockManager dockManager, BroadcastDispatcher broadcastDispatcher, DevicePolicyManager devicePolicyManager, IBatteryStats iBatteryStats, UserManager userManager, DelayableExecutor delayableExecutor, DelayableExecutor delayableExecutor2, FalsingManager falsingManager, AuthController authController, LockPatternUtils lockPatternUtils, ScreenLifecycle screenLifecycle, KeyguardBypassController keyguardBypassController, AccessibilityManager accessibilityManager, FaceHelpMessageDeferral faceHelpMessageDeferral, KeyguardLogger keyguardLogger, AlternateBouncerInteractor alternateBouncerInteractor, AlarmManager alarmManager, UserTracker userTracker, FeatureFlags featureFlags) {
        final int i = 0;
        final int i2 = 1;
        ?? r5 = new ScreenLifecycle.Observer() { // from class: com.android.systemui.statusbar.KeyguardIndicationController.1
            @Override // com.android.systemui.keyguard.ScreenLifecycle.Observer
            public final void onScreenTurnedOn() {
                String str;
                int i3;
                KeyguardIndicationController keyguardIndicationController = KeyguardIndicationController.this;
                keyguardIndicationController.mHandler.removeMessages(2);
                if (keyguardIndicationController.mBiometricErrorMessageToShowOnScreenOn != null) {
                    if (keyguardIndicationController.mFaceLockedOutThisAuthSession) {
                        if (keyguardIndicationController.canUnlockWithFingerprint()) {
                            i3 = R.string.keyguard_suggest_fingerprint;
                        } else {
                            i3 = R.string.keyguard_unlock;
                        }
                        str = keyguardIndicationController.mContext.getString(i3);
                    } else {
                        str = null;
                    }
                    keyguardIndicationController.showBiometricMessage(keyguardIndicationController.mBiometricErrorMessageToShowOnScreenOn, str);
                    keyguardIndicationController.mHideBiometricMessageHandler.schedule(2, 4100L);
                    keyguardIndicationController.mBiometricErrorMessageToShowOnScreenOn = null;
                }
            }
        };
        this.mScreenObserver = r5;
        this.mStatusBarStateListener = new AnonymousClass4();
        this.mKeyguardStateCallback = new KeyguardStateController.Callback() { // from class: com.android.systemui.statusbar.KeyguardIndicationController.5
            @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
            public final void onKeyguardShowingChanged() {
                KeyguardIndicationController keyguardIndicationController = KeyguardIndicationController.this;
                if (!((KeyguardStateControllerImpl) keyguardIndicationController.mKeyguardStateController).mShowing) {
                    keyguardIndicationController.mKeyguardLogger.buffer.log("KeyguardIndication", LogLevel.DEBUG, "clear messages", (Throwable) null);
                    KeyguardIndicationTextView keyguardIndicationTextView = keyguardIndicationController.mTopIndicationView;
                    if (keyguardIndicationTextView != null) {
                        keyguardIndicationTextView.clearMessages();
                    }
                    KeyguardIndicationTextView keyguardIndicationTextView2 = keyguardIndicationController.mLifeStyleIndicationView;
                    if (keyguardIndicationTextView2 != null) {
                        keyguardIndicationTextView2.clearMessages();
                    }
                    KeyguardIndicationRotateTextViewController keyguardIndicationRotateTextViewController = keyguardIndicationController.mRotateTextViewController;
                    if (keyguardIndicationRotateTextViewController != null) {
                        keyguardIndicationRotateTextViewController.mCurrIndicationType = -1;
                        ((ArrayList) keyguardIndicationRotateTextViewController.mIndicationQueue).clear();
                        ((HashMap) keyguardIndicationRotateTextViewController.mIndicationMessages).clear();
                        ((KeyguardIndicationTextView) keyguardIndicationRotateTextViewController.mView).clearMessages();
                    }
                }
            }

            @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
            public final void onUnlockedChanged() {
                KeyguardIndicationController.this.getClass();
            }
        };
        this.mContext = context;
        this.mBroadcastDispatcher = broadcastDispatcher;
        this.mDevicePolicyManager = devicePolicyManager;
        this.mKeyguardStateController = keyguardStateController;
        this.mStatusBarStateController = statusBarStateController;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mDockManager = dockManager;
        builder.mTag = "Doze:KeyguardIndication";
        this.mWakeLock = new SettableWakeLock(builder.build(), "KeyguardIndication");
        this.mBatteryInfo = iBatteryStats;
        this.mUserManager = userManager;
        this.mExecutor = delayableExecutor;
        this.mBackgroundExecutor = delayableExecutor2;
        this.mAuthController = authController;
        this.mFalsingManager = falsingManager;
        this.mKeyguardBypassController = keyguardBypassController;
        this.mAccessibilityManager = accessibilityManager;
        this.mScreenLifecycle = screenLifecycle;
        this.mKeyguardLogger = keyguardLogger;
        screenLifecycle.addObserver(r5);
        this.mAlternateBouncerInteractor = alternateBouncerInteractor;
        this.mUserTracker = userTracker;
        this.mFeatureFlags = featureFlags;
        this.mFaceAcquiredMessageDeferral = faceHelpMessageDeferral;
        this.mCoExFaceAcquisitionMsgIdsToShow = new HashSet();
        for (int i3 : context.getResources().getIntArray(R.array.config_face_help_msgs_when_fingerprint_enrolled)) {
            ((HashSet) this.mCoExFaceAcquisitionMsgIdsToShow).add(Integer.valueOf(i3));
        }
        ?? r1 = new Handler(looper) { // from class: com.android.systemui.statusbar.KeyguardIndicationController.2
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                int i4 = message.what;
                if (i4 == 1) {
                    KeyguardIndicationController.this.showActionToUnlock();
                } else if (i4 == 2) {
                    KeyguardIndicationController.this.mBiometricErrorMessageToShowOnScreenOn = null;
                } else if (i4 == 100) {
                    KeyguardIndicationController.this.mIsNeededShowChargingType = false;
                }
            }
        };
        this.mHandler = r1;
        this.mHideTransientMessageHandler = new AlarmTimeout(alarmManager, new AlarmManager.OnAlarmListener(this) { // from class: com.android.systemui.statusbar.KeyguardIndicationController$$ExternalSyntheticLambda0
            public final /* synthetic */ KeyguardIndicationController f$0;

            {
                this.f$0 = this;
            }

            @Override // android.app.AlarmManager.OnAlarmListener
            public final void onAlarm() {
                switch (i) {
                    case 0:
                        this.f$0.hideTransientIndication();
                        return;
                    default:
                        this.f$0.hideBiometricMessage();
                        return;
                }
            }
        }, "KeyguardIndication", r1);
        this.mHideBiometricMessageHandler = new AlarmTimeout(alarmManager, new AlarmManager.OnAlarmListener(this) { // from class: com.android.systemui.statusbar.KeyguardIndicationController$$ExternalSyntheticLambda0
            public final /* synthetic */ KeyguardIndicationController f$0;

            {
                this.f$0 = this;
            }

            @Override // android.app.AlarmManager.OnAlarmListener
            public final void onAlarm() {
                switch (i2) {
                    case 0:
                        this.f$0.hideTransientIndication();
                        return;
                    default:
                        this.f$0.hideBiometricMessage();
                        return;
                }
            }
        }, "KeyguardIndication", r1);
    }

    public final boolean canUnlockWithFingerprint() {
        int userId = ((UserTrackerImpl) this.mUserTracker).getUserId();
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.mKeyguardUpdateMonitor;
        if (keyguardUpdateMonitor.getCachedIsUnlockWithFingerprintPossible(userId) && keyguardUpdateMonitor.isUnlockingWithFingerprintAllowed()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0135, code lost:
    
        if (r1 != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x016e, code lost:
    
        r4 = com.android.systemui.R.string.keyguard_plugged_in;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x016a, code lost:
    
        r4 = com.android.systemui.R.string.keyguard_indication_charging_time;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0168, code lost:
    
        if (r1 != false) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0193  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void dump(java.io.PrintWriter r9, java.lang.String[] r10) {
        /*
            Method dump skipped, instructions count: 473
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.KeyguardIndicationController.dump(java.io.PrintWriter, java.lang.String[]):void");
    }

    public KeyguardUpdateMonitorCallback getKeyguardCallback() {
        if (this.mUpdateMonitorCallback == null) {
            this.mUpdateMonitorCallback = new BaseKeyguardCallback();
        }
        return this.mUpdateMonitorCallback;
    }

    public String getTrustGrantedIndication() {
        CharSequence charSequence = this.mTrustGrantedIndication;
        if (charSequence == null) {
            return this.mContext.getString(R.string.keyguard_indication_trust_unlocked);
        }
        return ((String) charSequence).toString();
    }

    public final void hideBiometricMessage() {
        if (this.mBiometricMessage != null || this.mBiometricMessageFollowUp != null) {
            this.mBiometricMessage = null;
            this.mBiometricMessageFollowUp = null;
            this.mHideBiometricMessageHandler.cancel();
            updateBiometricMessage();
        }
    }

    public void hideTransientIndication() {
        if (this.mTransientIndication != null) {
            this.mTransientIndication = null;
            this.mHideTransientMessageHandler.cancel();
            updateTransient();
        }
    }

    public void hideTransientIndicationDelayed(long j) {
        this.mHideTransientMessageHandler.schedule(2, j);
    }

    public final void init() {
        if (this.mInited) {
            return;
        }
        this.mInited = true;
        this.mDockManager.getClass();
        this.mKeyguardUpdateMonitor.registerCallback(getKeyguardCallback());
        StatusBarStateController statusBarStateController = this.mStatusBarStateController;
        AnonymousClass4 anonymousClass4 = this.mStatusBarStateListener;
        statusBarStateController.addCallback(anonymousClass4);
        ((KeyguardStateControllerImpl) this.mKeyguardStateController).addCallback(this.mKeyguardStateCallback);
        anonymousClass4.onDozingChanged(statusBarStateController.isDozing());
    }

    public boolean isInLifeStyleArea(MotionEvent motionEvent) {
        return false;
    }

    /* JADX WARN: Type inference failed for: r7v15, types: [com.android.systemui.statusbar.KeyguardIndicationController$3] */
    public void setIndicationArea(ViewGroup viewGroup) {
        ColorStateList valueOf;
        this.mIndicationArea = viewGroup;
        this.mTopIndicationView = (KeyguardIndicationTextView) viewGroup.findViewById(R.id.keyguard_indication_text);
        this.mLifeStyleIndicationView = (KeyguardIndicationTextView) viewGroup.findViewById(R.id.keyguard_life_style_text);
        this.mLockScreenIndicationView = (KeyguardIndicationTextView) viewGroup.findViewById(R.id.keyguard_indication_text_bottom);
        KeyguardIndicationTextView keyguardIndicationTextView = this.mTopIndicationView;
        if (keyguardIndicationTextView != null) {
            valueOf = keyguardIndicationTextView.getTextColors();
        } else {
            valueOf = ColorStateList.valueOf(-1);
        }
        this.mInitialTextColorState = valueOf;
        KeyguardIndicationRotateTextViewController keyguardIndicationRotateTextViewController = this.mRotateTextViewController;
        if (keyguardIndicationRotateTextViewController != null) {
            keyguardIndicationRotateTextViewController.mView.removeOnAttachStateChangeListener(keyguardIndicationRotateTextViewController.mOnAttachStateListener);
            keyguardIndicationRotateTextViewController.onViewDetached();
        }
        if (this.mRotateTextViewController == null) {
            this.mRotateTextViewController = new KeyguardIndicationRotateTextViewController(this.mLockScreenIndicationView, this.mExecutor, this.mStatusBarStateController, this.mKeyguardLogger, this.mFeatureFlags);
        }
        boolean booleanValue = ((Boolean) DejankUtils.whitelistIpcs(new KeyguardIndicationController$$ExternalSyntheticLambda1(this, 0))).booleanValue();
        this.mOrganizationOwnedDevice = booleanValue;
        if (booleanValue) {
            ((ExecutorImpl) this.mBackgroundExecutor).execute(new KeyguardIndicationController$$ExternalSyntheticLambda2(this));
        } else {
            this.mRotateTextViewController.hideIndication(1);
        }
        if (this.mBroadcastReceiver == null) {
            this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.systemui.statusbar.KeyguardIndicationController.3
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context, Intent intent) {
                    String action = intent.getAction();
                    Log.i("KeyguardIndication", "onReceive : " + action);
                    if ("com.samsung.android.app.routines.MODE_INFO_FOR_LOCKSCREEN".equals(action)) {
                        KeyguardIndicationController.this.updateLifeStyleInfo(intent);
                        return;
                    }
                    if ("com.samsung.server.BatteryService.action.ACTION_SLEEP_CHARGING".equals(action)) {
                        KeyguardIndicationController keyguardIndicationController = KeyguardIndicationController.this;
                        keyguardIndicationController.getClass();
                        keyguardIndicationController.mSleepChargingEvent = intent.getStringExtra("sleep_charging_event");
                        Log.d("KeyguardIndication", "sleepCharging Changed - " + keyguardIndicationController.mSleepChargingEvent);
                        if (!"off".equals(intent.getStringExtra("sleep_charging_event"))) {
                            String stringExtra = intent.getStringExtra("sleep_charging_finish_time");
                            MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("sleepCharging finish time - ", stringExtra, "KeyguardIndication");
                            keyguardIndicationController.mSleepChargingEventFinishTime = stringExtra;
                            return;
                        } else {
                            if (keyguardIndicationController.mPowerPluggedInWithoutCharging) {
                                keyguardIndicationController.mResumedChargingAdaptiveProtection = true;
                            }
                            Log.d("KeyguardIndication", "sleepCharging finish time - null");
                            keyguardIndicationController.mSleepChargingEventFinishTime = null;
                            return;
                        }
                    }
                    KeyguardIndicationController keyguardIndicationController2 = KeyguardIndicationController.this;
                    keyguardIndicationController2.getClass();
                    boolean booleanValue2 = ((Boolean) DejankUtils.whitelistIpcs(new KeyguardIndicationController$$ExternalSyntheticLambda1(keyguardIndicationController2, 0))).booleanValue();
                    keyguardIndicationController2.mOrganizationOwnedDevice = booleanValue2;
                    if (booleanValue2) {
                        ((ExecutorImpl) keyguardIndicationController2.mBackgroundExecutor).execute(new KeyguardIndicationController$$ExternalSyntheticLambda2(keyguardIndicationController2));
                    } else {
                        keyguardIndicationController2.mRotateTextViewController.hideIndication(1);
                    }
                }
            };
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED");
            intentFilter.addAction("android.intent.action.USER_REMOVED");
            intentFilter.addAction("com.samsung.server.BatteryService.action.ACTION_SLEEP_CHARGING");
            intentFilter.addAction("com.samsung.android.app.routines.MODE_INFO_FOR_LOCKSCREEN");
            this.mBroadcastDispatcher.registerReceiver(intentFilter, this.mBroadcastReceiver);
        }
    }

    public void setPowerPluggedIn(boolean z) {
        this.mPowerPluggedIn = z;
    }

    public void setVisible(boolean z) {
        int i;
        int i2 = 0;
        if (this.mDozing) {
            Log.d("KeyguardIndication", "setVisible() false in dozing");
            z = false;
        }
        this.mVisible = z;
        ViewGroup viewGroup = this.mIndicationArea;
        if (viewGroup != null) {
            if (z) {
                i = 0;
            } else {
                i = 4;
            }
            viewGroup.setVisibility(i);
        }
        if (z) {
            if (!this.mHideTransientMessageHandler.mScheduled) {
                hideTransientIndication();
            }
        } else {
            hideTransientIndication();
            KeyguardIndicationTextView keyguardIndicationTextView = this.mTopIndicationView;
            if (keyguardIndicationTextView != null) {
                keyguardIndicationTextView.setText("");
            }
            KeyguardIndicationTextView keyguardIndicationTextView2 = this.mLifeStyleIndicationView;
            if (keyguardIndicationTextView2 != null) {
                keyguardIndicationTextView2.clearMessages();
            }
        }
        if (this.mLockScreenIndicationView != null) {
            if (this.mOrganizationOwnedDevice) {
                ((ExecutorImpl) this.mBackgroundExecutor).execute(new KeyguardIndicationController$$ExternalSyntheticLambda2(this));
            } else {
                this.mRotateTextViewController.hideIndication(1);
            }
            KeyguardIndicationTextView keyguardIndicationTextView3 = this.mLockScreenIndicationView;
            if (!z) {
                i2 = 8;
            }
            keyguardIndicationTextView3.setVisibility(i2);
        }
    }

    public final void showActionToUnlock() {
        boolean z;
        boolean z2 = this.mDozing;
        UserTracker userTracker = this.mUserTracker;
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.mKeyguardUpdateMonitor;
        if (z2 && !keyguardUpdateMonitor.getUserCanSkipBouncer(((UserTrackerImpl) userTracker).getUserId())) {
            return;
        }
        boolean isBouncerShowing = this.mStatusBarKeyguardViewManager.isBouncerShowing();
        Context context = this.mContext;
        if (isBouncerShowing) {
            if (!this.mAlternateBouncerInteractor.isVisibleState() && keyguardUpdateMonitor.mIsFaceEnrolled && !keyguardUpdateMonitor.getIsFaceAuthenticated()) {
                this.mStatusBarKeyguardViewManager.setKeyguardMessage(context.getString(R.string.keyguard_retry), this.mInitialTextColorState);
                return;
            }
            return;
        }
        if (keyguardUpdateMonitor.getUserCanSkipBouncer(((UserTrackerImpl) userTracker).getUserId())) {
            boolean isFaceAuthenticated = keyguardUpdateMonitor.getIsFaceAuthenticated();
            boolean isUdfpsSupported = keyguardUpdateMonitor.isUdfpsSupported();
            AccessibilityManager accessibilityManager = this.mAccessibilityManager;
            if (!accessibilityManager.isEnabled() && !accessibilityManager.isTouchExplorationEnabled()) {
                z = false;
            } else {
                z = true;
            }
            if (isUdfpsSupported && isFaceAuthenticated) {
                if (z) {
                    showBiometricMessage(context.getString(R.string.keyguard_face_successful_unlock), context.getString(R.string.keyguard_unlock));
                    return;
                } else {
                    showBiometricMessage(context.getString(R.string.keyguard_face_successful_unlock), context.getString(R.string.keyguard_unlock_press));
                    return;
                }
            }
            if (isFaceAuthenticated) {
                showBiometricMessage(context.getString(R.string.keyguard_face_successful_unlock), context.getString(R.string.keyguard_unlock));
                return;
            }
            if (isUdfpsSupported) {
                if (z) {
                    showBiometricMessage(context.getString(R.string.keyguard_unlock), null);
                    return;
                } else {
                    showBiometricMessage(context.getString(R.string.keyguard_unlock_press), null);
                    return;
                }
            }
            showBiometricMessage(context.getString(R.string.keyguard_unlock), null);
            return;
        }
        showBiometricMessage(context.getString(R.string.keyguard_unlock), null);
    }

    public final void showBiometricMessage(CharSequence charSequence, CharSequence charSequence2) {
        long j;
        if (TextUtils.equals(charSequence, this.mBiometricMessage) && TextUtils.equals(charSequence2, this.mBiometricMessageFollowUp)) {
            return;
        }
        this.mBiometricMessage = charSequence;
        this.mBiometricMessageFollowUp = charSequence2;
        removeMessages(1);
        if (!TextUtils.isEmpty(this.mBiometricMessage) && !TextUtils.isEmpty(this.mBiometricMessageFollowUp)) {
            j = 5200;
        } else {
            j = 4100;
        }
        this.mHideBiometricMessageHandler.schedule(2, j);
        updateBiometricMessage();
    }

    public final void showErrorMessageNowOrLater(String str, String str2) {
        if (this.mStatusBarKeyguardViewManager.isBouncerShowing()) {
            this.mStatusBarKeyguardViewManager.setKeyguardMessage(str, this.mInitialTextColorState);
        } else if (this.mScreenLifecycle.mScreenState == 2) {
            showBiometricMessage(str, str2);
        } else {
            this.mBiometricErrorMessageToShowOnScreenOn = str;
        }
    }

    public void showTransientIndication(int i) {
        showTransientIndication(this.mContext.getResources().getString(i));
    }

    public final void updateBiometricMessage() {
        if (this.mDozing) {
            return;
        }
        if (!TextUtils.isEmpty(this.mBiometricMessage)) {
            KeyguardIndicationRotateTextViewController keyguardIndicationRotateTextViewController = this.mRotateTextViewController;
            KeyguardIndication.Builder builder = new KeyguardIndication.Builder();
            builder.mMessage = this.mBiometricMessage;
            builder.mMinVisibilityMillis = 2600L;
            builder.mTextColor = this.mInitialTextColorState;
            keyguardIndicationRotateTextViewController.updateIndication(11, builder.build(), true);
        } else {
            this.mRotateTextViewController.hideIndication(11);
        }
        if (!TextUtils.isEmpty(this.mBiometricMessageFollowUp)) {
            KeyguardIndicationRotateTextViewController keyguardIndicationRotateTextViewController2 = this.mRotateTextViewController;
            KeyguardIndication.Builder builder2 = new KeyguardIndication.Builder();
            builder2.mMessage = this.mBiometricMessageFollowUp;
            builder2.mMinVisibilityMillis = 2600L;
            builder2.mTextColor = this.mInitialTextColorState;
            keyguardIndicationRotateTextViewController2.updateIndication(12, builder2.build(), true);
            return;
        }
        this.mRotateTextViewController.hideIndication(12);
    }

    public final void updateTransient() {
        if (this.mDozing) {
            return;
        }
        if (!TextUtils.isEmpty(this.mTransientIndication)) {
            KeyguardIndicationRotateTextViewController keyguardIndicationRotateTextViewController = this.mRotateTextViewController;
            CharSequence charSequence = this.mTransientIndication;
            keyguardIndicationRotateTextViewController.getClass();
            KeyguardIndication.Builder builder = new KeyguardIndication.Builder();
            builder.mMessage = charSequence;
            builder.mMinVisibilityMillis = 2600L;
            builder.mTextColor = keyguardIndicationRotateTextViewController.mInitialTextColorState;
            keyguardIndicationRotateTextViewController.updateIndication(5, builder.build(), true);
            return;
        }
        this.mRotateTextViewController.hideIndication(5);
    }

    public void showTransientIndication(CharSequence charSequence) {
        this.mTransientIndication = charSequence;
        hideTransientIndicationDelayed(4100L);
        updateTransient();
    }

    public void setDozing(boolean z) {
    }

    public void setUpperTextView(KeyguardIndicationTextView keyguardIndicationTextView) {
    }

    public void updateLifeStyleInfo(Intent intent) {
    }

    public void onConfigChanged() {
    }
}
