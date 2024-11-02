package com.android.systemui.util;

import android.content.Context;
import android.database.ContentObserver;
import android.hardware.biometrics.BiometricSourceType;
import android.net.Uri;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.os.Process;
import android.os.UserHandle;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.Log;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardFMMViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.keyguard.KeyguardViewController;
import com.android.systemui.BasicRune;
import com.android.systemui.controls.controller.CustomDeviceControlsController;
import com.android.systemui.controls.controller.CustomDeviceControlsControllerImpl;
import com.android.systemui.controls.management.ControlsListingControllerImpl$$ExternalSyntheticOutline0;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.statusbar.logging.IndicatorLogger;
import com.android.systemui.statusbar.phone.StatusBarSignalPolicy;
import com.android.systemui.statusbar.policy.SBluetoothControllerImpl;
import com.android.systemui.util.DesktopManager;
import com.samsung.android.desktopmode.SemDesktopModeManager;
import com.samsung.android.desktopmode.SemDesktopModeState;
import com.samsung.android.desktopsystemui.sharedlib.common.DesktopSystemUiBinder;
import com.samsung.android.desktopsystemui.sharedlib.common.IDesktopBarCallback;
import com.samsung.android.desktopsystemui.sharedlib.keyguard.KeyguardConstants;
import dagger.Lazy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DesktopManagerImpl implements DesktopManager {
    public static final Uri DESKTOP_SETTINGS_URI;
    public static final Uri DEX_SETTINGS_URI;
    public final List mCallbacks;
    public final Context mContext;
    public final Lazy mCustomDeviceControlsController;
    public final AnonymousClass4 mDesktopBinderCallback;
    public SBluetoothControllerImpl.AnonymousClass1 mDesktopBluetoothCallback;
    public final AnonymousClass6 mDesktopModeListener;
    public final AnonymousClass7 mDesktopSettingsObserver;
    public List mDesktopStatusBarIconCallback;
    public final Lazy mDesktopSystemUiBinderLazy;
    public final AnonymousClass3 mHandler;
    public final AnonymousClass5 mIDesktopCallback;
    public final IndicatorLogger mIndicatorLogger;
    public final KeyguardSecurityModel mKeyguardSecurityModel;
    public final Lazy mKeyguardViewControllerLazy;
    public final SemDesktopModeManager mSemDesktopModeManager;
    public final KeyguardUpdateMonitor mUpdateMonitor;
    public final WakefulnessLifecycle mWakefulnessLifecycle;
    public int mDesktopMode = 710;
    public boolean mDexOccluded = false;
    public final AnonymousClass1 mObserver = new WakefulnessLifecycle.Observer() { // from class: com.android.systemui.util.DesktopManagerImpl.1
        @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
        public final void onFinishedWakingUp() {
            DesktopManagerImpl.this.notifyScreenState(true);
        }

        @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
        public final void onStartedGoingToSleep() {
            DesktopManagerImpl.this.notifyScreenState(false);
        }
    };
    public final KeyguardUpdateMonitorCallback mUpdateMonitorCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.util.DesktopManagerImpl.2
        public boolean mIsFaceAuth;
        public boolean mTrustEnabled;
        public int mUserId = KeyguardUpdateMonitor.getCurrentUser();

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onBiometricRunningStateChanged(BiometricSourceType biometricSourceType, boolean z) {
            if (biometricSourceType == BiometricSourceType.FACE && z && this.mIsFaceAuth) {
                this.mIsFaceAuth = false;
                if (!this.mTrustEnabled) {
                    int i = this.mUserId;
                    DesktopManagerImpl desktopManagerImpl = DesktopManagerImpl.this;
                    desktopManagerImpl.notifyTrustChanged(i, false);
                    if (desktopManagerImpl.mUpdateMonitor.mKeyguardShowing) {
                        desktopManagerImpl.notifyShowKeyguard();
                    }
                }
            }
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onSecurityViewChanged(KeyguardSecurityModel.SecurityMode securityMode) {
            DesktopManagerImpl desktopManagerImpl = DesktopManagerImpl.this;
            if (desktopManagerImpl.mUpdateMonitor.mKeyguardShowing) {
                desktopManagerImpl.notifyShowKeyguard();
            }
        }

        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onTrustChanged(int i) {
            boolean z;
            DesktopManagerImpl desktopManagerImpl = DesktopManagerImpl.this;
            boolean userHasTrust = desktopManagerImpl.mUpdateMonitor.getUserHasTrust(i);
            boolean isBiometricsAuthenticatedOnLock = desktopManagerImpl.mUpdateMonitor.isBiometricsAuthenticatedOnLock();
            if (this.mTrustEnabled != userHasTrust || this.mUserId != i || this.mIsFaceAuth != isBiometricsAuthenticatedOnLock) {
                this.mTrustEnabled = userHasTrust;
                this.mIsFaceAuth = isBiometricsAuthenticatedOnLock;
                this.mUserId = i;
                if (!userHasTrust && !isBiometricsAuthenticatedOnLock) {
                    z = false;
                } else {
                    z = true;
                }
                desktopManagerImpl.notifyTrustChanged(i, z);
                if (desktopManagerImpl.mUpdateMonitor.mKeyguardShowing) {
                    desktopManagerImpl.notifyShowKeyguard();
                }
            }
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.util.DesktopManagerImpl$8, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass8 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode;

        static {
            int[] iArr = new int[KeyguardSecurityModel.SecurityMode.values().length];
            $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode = iArr;
            try {
                iArr[KeyguardSecurityModel.SecurityMode.Invalid.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.None.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.PIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.Pattern.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[KeyguardSecurityModel.SecurityMode.Password.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    static {
        DeviceType.isEngOrUTBinary();
        DESKTOP_SETTINGS_URI = Uri.parse("content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings");
        DEX_SETTINGS_URI = Uri.parse("content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings");
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.android.systemui.util.DesktopManagerImpl$1] */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.os.Handler, com.android.systemui.util.DesktopManagerImpl$3] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.systemui.util.DesktopManagerImpl$4] */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.android.systemui.util.DesktopManagerImpl$5] */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.samsung.android.desktopmode.SemDesktopModeManager$DesktopModeListener, com.android.systemui.util.DesktopManagerImpl$6] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.systemui.util.DesktopManagerImpl$7] */
    public DesktopManagerImpl(Context context, Lazy lazy, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardSecurityModel keyguardSecurityModel, WakefulnessLifecycle wakefulnessLifecycle, Lazy lazy2, IndicatorLogger indicatorLogger, Lazy lazy3) {
        ?? r1 = new Handler(Looper.getMainLooper()) { // from class: com.android.systemui.util.DesktopManagerImpl.3
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                Lazy lazy4;
                int i = message.what & (-65536);
                if (i != 65536) {
                    if (i != 196608) {
                        if (i != 458752) {
                            if (i != 524288) {
                                if (i == 589824) {
                                    DesktopManagerImpl desktopManagerImpl = DesktopManagerImpl.this;
                                    Uri uri = DesktopManagerImpl.DESKTOP_SETTINGS_URI;
                                    desktopManagerImpl.getClass();
                                    Log.i("DesktopManager", "handleNotifyPrivacyItemStateRequested");
                                    Iterator it = ((ArrayList) desktopManagerImpl.mCallbacks).iterator();
                                    while (it.hasNext()) {
                                        ((DesktopManager.Callback) it.next()).onPrivacyItemStateRequested();
                                    }
                                    return;
                                }
                                return;
                            }
                            List list = DesktopManagerImpl.this.mDesktopStatusBarIconCallback;
                            if (list != null) {
                                Iterator it2 = ((ArrayList) list).iterator();
                                while (it2.hasNext()) {
                                    ((StatusBarSignalPolicy.DesktopCallback) it2.next()).updateDesktopStatusBarIcons();
                                }
                                return;
                            }
                            return;
                        }
                        if (BasicRune.CONTROLS_DEX_SUPPORT && (lazy4 = DesktopManagerImpl.this.mCustomDeviceControlsController) != null) {
                            ((CustomDeviceControlsControllerImpl) ((CustomDeviceControlsController) lazy4.get())).start();
                            return;
                        }
                        return;
                    }
                    SBluetoothControllerImpl.AnonymousClass1 anonymousClass1 = DesktopManagerImpl.this.mDesktopBluetoothCallback;
                    if (anonymousClass1 != null) {
                        anonymousClass1.getClass();
                        Bundle bundle = new Bundle();
                        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                        SBluetoothControllerImpl sBluetoothControllerImpl = SBluetoothControllerImpl.this;
                        if (sBluetoothControllerImpl.getConnectedDevicesForGroup() != null) {
                            arrayList = new ArrayList<>(sBluetoothControllerImpl.getConnectedDevicesForGroup());
                        }
                        bundle.putParcelableArrayList("list", arrayList);
                        ((DesktopSystemUiBinder) ((DesktopManagerImpl) sBluetoothControllerImpl.mDesktopManager).mDesktopSystemUiBinderLazy.get()).setConnectedDeviceListForGroup(bundle);
                        return;
                    }
                    return;
                }
                ((KeyguardViewController) DesktopManagerImpl.this.mKeyguardViewControllerLazy.get()).requestUnlock((String) message.obj);
            }
        };
        this.mHandler = r1;
        this.mDesktopBinderCallback = new DesktopSystemUiBinder.Callback() { // from class: com.android.systemui.util.DesktopManagerImpl.4
            @Override // com.samsung.android.desktopsystemui.sharedlib.common.DesktopSystemUiBinder.Callback
            public final void onServiceConnected() {
                boolean z;
                Log.d("DesktopManager", "onServiceConnected");
                DesktopManagerImpl desktopManagerImpl = DesktopManagerImpl.this;
                desktopManagerImpl.notifyOccluded(desktopManagerImpl.mDexOccluded);
                if (desktopManagerImpl.mUpdateMonitor.mKeyguardShowing) {
                    desktopManagerImpl.notifyShowKeyguard();
                } else {
                    desktopManagerImpl.notifyDismissKeyguard();
                }
                if (desktopManagerImpl.mUpdateMonitor.getLockoutAttemptDeadline() > 0) {
                    z = true;
                } else {
                    z = false;
                }
                desktopManagerImpl.notifyKeyguardLockout(z);
                Iterator it = ((ArrayList) desktopManagerImpl.mCallbacks).iterator();
                while (it.hasNext()) {
                    ((DesktopManager.Callback) it.next()).getClass();
                }
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.common.DesktopSystemUiBinder.Callback
            public final void onServiceDisconnected() {
                Iterator it = ((ArrayList) DesktopManagerImpl.this.mCallbacks).iterator();
                while (it.hasNext()) {
                    ((DesktopManager.Callback) it.next()).getClass();
                }
            }
        };
        this.mIDesktopCallback = new IDesktopBarCallback.Stub() { // from class: com.android.systemui.util.DesktopManagerImpl.5
            @Override // com.samsung.android.desktopsystemui.sharedlib.common.IDesktopBarCallback
            public final void getConnectedDeviceListForGroup() {
                Log.d("DesktopManager", "getConnectedDeviceListForGroup");
                removeMessages(196608);
                obtainMessage(196608).sendToTarget();
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.common.IDesktopBarCallback
            public final int getFailedUnlockAttempt() {
                return DesktopManagerImpl.this.mUpdateMonitor.getFailedUnlockAttempts(KeyguardUpdateMonitor.getCurrentUser());
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.common.IDesktopBarCallback
            public final long getLockoutAttemptDeadline() {
                return DesktopManagerImpl.this.mUpdateMonitor.getLockoutAttemptDeadline();
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.common.IDesktopBarCallback
            public final int getRemainingAttemptBeforeWipe() {
                return DesktopManagerImpl.this.mUpdateMonitor.getRemainingAttemptsBeforeWipe();
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.common.IDesktopBarCallback
            public final void requestPrivacyItems() {
                Log.d("DesktopManager", "requestPrivacyItems");
                removeMessages(589824);
                obtainMessage(589824).sendToTarget();
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.common.IDesktopBarCallback
            public final void requestStatusIcons() {
                Log.d("DesktopManager", "requestStatusIcons");
                removeMessages(524288);
                obtainMessage(524288).sendToTarget();
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.common.IDesktopBarCallback
            public final void requestUnlock(String str) {
                Log.d("DesktopManager", "requestUnlock called!");
                removeMessages(65536);
                obtainMessage(65536, str).sendToTarget();
            }

            @Override // com.samsung.android.desktopsystemui.sharedlib.common.IDesktopBarCallback
            public final void showControls() {
                Log.d("DesktopManager", "showControls");
                removeMessages(458752);
                obtainMessage(458752).sendToTarget();
            }
        };
        ?? r2 = new SemDesktopModeManager.DesktopModeListener() { // from class: com.android.systemui.util.DesktopManagerImpl.6
            public final void onDesktopModeStateChanged(SemDesktopModeState semDesktopModeState) {
                Log.i("DesktopManager", "onDesktopModeStateChanged " + semDesktopModeState.toString());
                DesktopManagerImpl desktopManagerImpl = DesktopManagerImpl.this;
                Uri uri = DesktopManagerImpl.DESKTOP_SETTINGS_URI;
                desktopManagerImpl.updateDesktopMode(semDesktopModeState);
                DesktopManagerImpl.this.startSystemUIDesktopIfNeeded(semDesktopModeState, true);
                DesktopManagerImpl desktopManagerImpl2 = DesktopManagerImpl.this;
                desktopManagerImpl2.getClass();
                if (semDesktopModeState.getState() == 50) {
                    int i = semDesktopModeState.enabled;
                    AnonymousClass7 anonymousClass7 = desktopManagerImpl2.mDesktopSettingsObserver;
                    Context context2 = desktopManagerImpl2.mContext;
                    if (i == 4) {
                        context2.getContentResolver().registerContentObserver(DesktopManagerImpl.DESKTOP_SETTINGS_URI, true, anonymousClass7);
                    } else if (i == 2) {
                        context2.getContentResolver().unregisterContentObserver(anonymousClass7);
                    }
                }
                Iterator it = ((ArrayList) DesktopManagerImpl.this.mCallbacks).iterator();
                while (it.hasNext()) {
                    ((DesktopManager.Callback) it.next()).onDesktopModeStateChanged(semDesktopModeState);
                }
            }
        };
        this.mDesktopModeListener = r2;
        this.mCallbacks = new ArrayList();
        this.mDesktopSettingsObserver = new ContentObserver(r1) { // from class: com.android.systemui.util.DesktopManagerImpl.7
            @Override // android.database.ContentObserver
            public final void onChange(boolean z, Uri uri) {
                super.onChange(z, uri);
                String lastPathSegment = uri.getLastPathSegment();
                if (lastPathSegment != null && lastPathSegment.equals("touchpad_enabled")) {
                    DesktopManagerImpl desktopManagerImpl = DesktopManagerImpl.this;
                    Uri uri2 = DesktopManagerImpl.DESKTOP_SETTINGS_URI;
                    desktopManagerImpl.getClass();
                    Bundle bundle = new Bundle();
                    bundle.putString("key", lastPathSegment);
                    String str = "false";
                    bundle.putString("def", "false");
                    try {
                        Bundle call = desktopManagerImpl.mContext.getContentResolver().call(DesktopManagerImpl.DESKTOP_SETTINGS_URI, "getSettings", (String) null, bundle);
                        if (call != null) {
                            str = call.getString(lastPathSegment);
                        }
                    } catch (IllegalArgumentException e) {
                        Log.e("DesktopManager", "Failed to get settings", e);
                    }
                    "true".equals(str);
                    desktopManagerImpl.getClass();
                }
            }
        };
        this.mContext = context;
        this.mKeyguardViewControllerLazy = lazy;
        this.mUpdateMonitor = keyguardUpdateMonitor;
        this.mKeyguardSecurityModel = keyguardSecurityModel;
        this.mDesktopSystemUiBinderLazy = lazy2;
        this.mWakefulnessLifecycle = wakefulnessLifecycle;
        this.mIndicatorLogger = indicatorLogger;
        if (BasicRune.CONTROLS_DEX_SUPPORT) {
            this.mCustomDeviceControlsController = lazy3;
        } else {
            this.mCustomDeviceControlsController = null;
        }
        SemDesktopModeManager semDesktopModeManager = (SemDesktopModeManager) context.getSystemService("desktopmode");
        this.mSemDesktopModeManager = semDesktopModeManager;
        if (semDesktopModeManager != null && Process.myUserHandle().equals(UserHandle.SYSTEM)) {
            semDesktopModeManager.registerListener((SemDesktopModeManager.DesktopModeListener) r2);
            SemDesktopModeState desktopModeState = semDesktopModeManager.getDesktopModeState();
            updateDesktopMode(desktopModeState);
            startSystemUIDesktopIfNeeded(desktopModeState, false);
        }
    }

    public static Bundle getBouncerMessage(CharSequence charSequence, CharSequence charSequence2) {
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(charSequence)) {
            bundle.putCharSequence(KeyguardConstants.UpdateType.BouncerTextKey.MSG, charSequence);
        }
        if (!TextUtils.isEmpty("")) {
            bundle.putCharSequence(KeyguardConstants.UpdateType.BouncerTextKey.SUB_MSG, "");
        }
        if (!TextUtils.isEmpty(charSequence2)) {
            bundle.putCharSequence(KeyguardConstants.UpdateType.BouncerTextKey.POPUP_MSG, charSequence2);
        }
        return bundle;
    }

    public final int getCurrentSecurityMode() {
        int i;
        int currentUser = KeyguardUpdateMonitor.getCurrentUser();
        KeyguardUpdateMonitor keyguardUpdateMonitor = this.mUpdateMonitor;
        if (keyguardUpdateMonitor.is2StepVerification()) {
            return 5;
        }
        int i2 = AnonymousClass8.$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode[this.mKeyguardSecurityModel.getSecurityMode(currentUser).ordinal()];
        if (i2 != 1) {
            i = 2;
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            i = 5;
                        } else {
                            i = 3;
                        }
                    }
                } else {
                    i = 4;
                }
            } else {
                i = 1;
            }
        } else {
            i = 0;
        }
        if (i != 5 && (keyguardUpdateMonitor.getUserHasTrust(currentUser) || keyguardUpdateMonitor.isBiometricsAuthenticatedOnLock())) {
            return 1;
        }
        return i;
    }

    public final SemDesktopModeState getSemDesktopModeState() {
        SemDesktopModeManager semDesktopModeManager = this.mSemDesktopModeManager;
        if (semDesktopModeManager != null) {
            return semDesktopModeManager.getDesktopModeState();
        }
        return null;
    }

    public final boolean isDesktopMode() {
        if (this.mDesktopMode != 710) {
            return true;
        }
        return false;
    }

    public final boolean isDualView() {
        if (this.mDesktopMode == 712) {
            return true;
        }
        return false;
    }

    public final boolean isStandalone() {
        if (this.mDesktopMode == 711) {
            return true;
        }
        return false;
    }

    public final void notifyDismissKeyguard() {
        Log.i("DesktopManager", "notifyDismissKeyguard()");
        Lazy lazy = this.mDesktopSystemUiBinderLazy;
        if (((DesktopSystemUiBinder) lazy.get()).isDesktopBarConnected()) {
            ((DesktopSystemUiBinder) lazy.get()).onDismiss();
        }
    }

    public final void notifyKeyguardLockout(boolean z) {
        Lazy lazy = this.mDesktopSystemUiBinderLazy;
        if (((DesktopSystemUiBinder) lazy.get()).isDesktopBarConnected() && isDualView()) {
            ControlsListingControllerImpl$$ExternalSyntheticOutline0.m("notifyKeyguardLockout lockout=", z, "DesktopManager");
            if (z) {
                ((KeyguardViewController) this.mKeyguardViewControllerLazy.get()).updateLockoutWarningMessage();
            } else {
                ((DesktopSystemUiBinder) lazy.get()).onLockout(z, null);
            }
        }
    }

    public final void notifyOccluded(boolean z) {
        ControlsListingControllerImpl$$ExternalSyntheticOutline0.m("notifyOccluded() occluded=", z, "DesktopManager");
        Lazy lazy = this.mDesktopSystemUiBinderLazy;
        if (((DesktopSystemUiBinder) lazy.get()).isDesktopBarConnected()) {
            ((DesktopSystemUiBinder) lazy.get()).setOccluded(z);
        }
        this.mDexOccluded = z;
    }

    public final void notifyPrivacyItemsChanged(boolean z) {
        StringBuilder m = RowView$$ExternalSyntheticOutline0.m("notifyPrivacyItemsChanged() visible = ", z, " mDesktopMode = ");
        m.append(this.mDesktopMode);
        Log.i("DesktopManager", m.toString());
        if (isDesktopMode()) {
            ((DesktopSystemUiBinder) this.mDesktopSystemUiBinderLazy.get()).notifyPrivacyItemsChanged(z);
        }
    }

    public final void notifyScreenState(boolean z) {
        Lazy lazy = this.mDesktopSystemUiBinderLazy;
        if (((DesktopSystemUiBinder) lazy.get()).isDesktopBarConnected()) {
            Log.i("DesktopManager", "notifyScreenState() isScreenOn=" + z);
            DesktopSystemUiBinder desktopSystemUiBinder = (DesktopSystemUiBinder) lazy.get();
            Bundle bundle = new Bundle();
            bundle.putBoolean(KeyguardConstants.UpdateType.ScreenStateKey.IS_SCREEN_ON, z);
            desktopSystemUiBinder.onUpdate(3, bundle);
        }
    }

    public final void notifyShowKeyguard() {
        Log.i("DesktopManager", "notifyShowKeyguard() security mode=" + getCurrentSecurityMode());
        Lazy lazy = this.mDesktopSystemUiBinderLazy;
        if (((DesktopSystemUiBinder) lazy.get()).isDesktopBarConnected()) {
            ((DesktopSystemUiBinder) lazy.get()).onShow(getCurrentSecurityMode());
        }
    }

    public final void notifyTrustChanged(int i, boolean z) {
        Lazy lazy = this.mDesktopSystemUiBinderLazy;
        if (((DesktopSystemUiBinder) lazy.get()).isDesktopBarConnected() && isDualView()) {
            Log.i("DesktopManager", "notifyTrustChanged hasTrust=" + z + " userId=" + i);
            DesktopSystemUiBinder desktopSystemUiBinder = (DesktopSystemUiBinder) lazy.get();
            Bundle bundle = new Bundle();
            bundle.putBoolean(KeyguardConstants.UpdateType.TrustStateKey.TRUST, z);
            desktopSystemUiBinder.onUpdate(4, bundle);
        }
    }

    public final void notifyUpdateBouncerMessage(int i, CharSequence charSequence, CharSequence charSequence2) {
        CharSequence charSequence3;
        Lazy lazy = this.mDesktopSystemUiBinderLazy;
        if (((DesktopSystemUiBinder) lazy.get()).isDesktopBarConnected() && isDualView()) {
            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("notifyUpdateBouncerMessage type= ", i, "  msg=");
            CharSequence charSequence4 = "";
            if (charSequence == null) {
                charSequence3 = "";
            } else {
                charSequence3 = charSequence;
            }
            m.append((Object) charSequence3);
            m.append("  sub=");
            m.append((Object) "");
            m.append("  popupMsg=");
            if (charSequence2 != null) {
                charSequence4 = charSequence2;
            }
            m.append((Object) charSequence4);
            Log.i("DesktopManager", m.toString());
            ((DesktopSystemUiBinder) lazy.get()).onUpdate(i, getBouncerMessage(charSequence, charSequence2));
        }
    }

    public final void registerCallback(DesktopManager.Callback callback) {
        ((ArrayList) this.mCallbacks).add(callback);
    }

    public final void setAirplaneMode(boolean z, int i) {
        if (isDesktopMode()) {
            this.mIndicatorLogger.log("setAirplaneMode - visible:" + z + ",resId:" + i);
            ((DesktopSystemUiBinder) this.mDesktopSystemUiBinderLazy.get()).setAirplaneMode(z, i);
        }
    }

    public final void setDesktopStatusBarIconCallback(StatusBarSignalPolicy.DesktopCallback desktopCallback) {
        if (this.mDesktopStatusBarIconCallback == null) {
            this.mDesktopStatusBarIconCallback = new ArrayList();
        }
        this.mDesktopStatusBarIconCallback.add(desktopCallback);
    }

    public final void setWifiIcon(boolean z, int i, int i2) {
        if (isDesktopMode()) {
            StringBuilder m = KeyguardFMMViewController$$ExternalSyntheticOutline0.m("setWifiIcon - visible:", z, ",resId:", i, ",activityId:");
            m.append(i2);
            this.mIndicatorLogger.log(m.toString());
            ((DesktopSystemUiBinder) this.mDesktopSystemUiBinderLazy.get()).setWifiIcon(z, i, i2);
        }
    }

    public final void startSystemUIDesktopIfNeeded(SemDesktopModeState semDesktopModeState, boolean z) {
        if (z) {
            if (isStandalone()) {
                if (semDesktopModeState.getEnabled() == 1 && semDesktopModeState.getState() == 30) {
                    stopSystemUIDesktopService();
                    return;
                } else {
                    if (semDesktopModeState.getEnabled() == 4 && semDesktopModeState.getState() == 50) {
                        startSystemUIDesktopService();
                        return;
                    }
                    return;
                }
            }
            if (semDesktopModeState.getState() == 40) {
                if (semDesktopModeState.getEnabled() == 2) {
                    stopSystemUIDesktopService();
                    return;
                } else {
                    if (isDesktopMode()) {
                        startSystemUIDesktopService();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (semDesktopModeState.getState() == 40 && semDesktopModeState.getEnabled() == 2) {
            stopSystemUIDesktopService();
        } else if (isDesktopMode()) {
            startSystemUIDesktopService();
        }
    }

    public final void startSystemUIDesktopService() {
        boolean z;
        Log.i("DesktopManager", "startSystemUIDesktopService");
        Log.i("DesktopManager", Debug.getCallers(3, " "));
        Bundle bundle = new Bundle(2);
        bundle.putString("key", "enable_new_dex_home");
        bundle.putString("def", "false");
        Bundle call = this.mContext.getContentResolver().call(DEX_SETTINGS_URI, "getSettings", (String) null, bundle);
        if (call != null) {
            z = Boolean.valueOf(call.getString("enable_new_dex_home")).booleanValue();
        } else {
            z = false;
        }
        if (!z) {
            Lazy lazy = this.mDesktopSystemUiBinderLazy;
            ((DesktopSystemUiBinder) lazy.get()).start(this.mIDesktopCallback);
            ((DesktopSystemUiBinder) lazy.get()).registerCallback(this.mDesktopBinderCallback);
            post(new DesktopManagerImpl$$ExternalSyntheticLambda0(this, 1));
        }
    }

    public final void stopSystemUIDesktopService() {
        Log.i("DesktopManager", "stopSystemUIDesktopService");
        Log.i("DesktopManager", Debug.getCallers(3, " "));
        Lazy lazy = this.mDesktopSystemUiBinderLazy;
        ((DesktopSystemUiBinder) lazy.get()).stop();
        ((DesktopSystemUiBinder) lazy.get()).unregisterCallback(this.mDesktopBinderCallback);
        post(new DesktopManagerImpl$$ExternalSyntheticLambda0(this, 0));
    }

    public final void updateDesktopMode(SemDesktopModeState semDesktopModeState) {
        this.mDesktopMode = 710;
        if (semDesktopModeState.getEnabled() == 4) {
            int displayType = semDesktopModeState.getDisplayType();
            if (displayType != 101) {
                if (displayType == 102) {
                    this.mDesktopMode = 712;
                    return;
                }
                return;
            }
            this.mDesktopMode = 711;
        }
    }
}
