package com.android.systemui.doze;

import android.hardware.display.IDisplayManager;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import com.android.keyguard.EmergencyButton$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.LsRune;
import com.android.systemui.aod.AODTouchModeManager;
import com.android.systemui.biometrics.AuthController;
import com.android.systemui.biometrics.UdfpsController;
import com.android.systemui.doze.DozeMachine;
import com.android.systemui.statusbar.phone.DozeParameters;
import com.android.systemui.subscreen.SubScreenManager;
import com.android.systemui.util.wakelock.SettableWakeLock;
import com.android.systemui.util.wakelock.WakeLock;
import com.samsung.android.hardware.display.IRefreshRateToken;
import dagger.Lazy;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DozeScreenState implements DozeMachine.Part {
    public static final boolean DEBUG = DozeService.DEBUG;
    public AODTouchModeManager mAODTouchModeManager;
    public final AuthController mAuthController;
    public final AnonymousClass1 mAuthControllerCallback;
    public final DozeHost mDozeHost;
    public final DozeLog mDozeLog;
    public final DozeScreenBrightness mDozeScreenBrightness;
    public final DozeMachine.Service mDozeService;
    public PowerManager.WakeLock mDrawWakeLock;
    public final Handler mHandler;
    public IDisplayManager mIDisplayManager;
    public boolean mIsExecutedClockTransition;
    public IRefreshRateToken mMaxRefreshRateToken;
    public final DozeParameters mParameters;
    public Lazy mPluginAODManagerLazy;
    public PowerManager mPowerManager;
    public SubScreenManager mSubScreenManager;
    public UdfpsController mUdfpsController;
    public final Provider mUdfpsControllerProvider;
    public final SettableWakeLock mWakeLock;
    public final DozeScreenState$$ExternalSyntheticLambda0 mApplyPendingScreenState = new DozeScreenState$$ExternalSyntheticLambda0(this, 0);
    public int mPendingScreenState = 0;
    public final IBinder mRefreshRateToken = new Binder();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.systemui.doze.DozeScreenState$1, com.android.systemui.biometrics.AuthController$Callback] */
    public DozeScreenState(DozeMachine.Service service, Handler handler, DozeHost dozeHost, DozeParameters dozeParameters, WakeLock wakeLock, AuthController authController, Provider provider, DozeLog dozeLog, DozeScreenBrightness dozeScreenBrightness) {
        ?? r0 = new AuthController.Callback() { // from class: com.android.systemui.doze.DozeScreenState.1
            @Override // com.android.systemui.biometrics.AuthController.Callback
            public final void onAllAuthenticatorsRegistered(int i) {
                if (i == 2) {
                    boolean z = DozeScreenState.DEBUG;
                    DozeScreenState.this.updateUdfpsController();
                }
            }

            @Override // com.android.systemui.biometrics.AuthController.Callback
            public final void onEnrollmentsChanged(int i) {
                if (i == 2) {
                    boolean z = DozeScreenState.DEBUG;
                    DozeScreenState.this.updateUdfpsController();
                }
            }
        };
        this.mAuthControllerCallback = r0;
        this.mDozeService = service;
        this.mHandler = handler;
        this.mParameters = dozeParameters;
        this.mDozeHost = dozeHost;
        this.mWakeLock = new SettableWakeLock(wakeLock, "DozeScreenState");
        this.mAuthController = authController;
        this.mUdfpsControllerProvider = provider;
        this.mDozeLog = dozeLog;
        this.mDozeScreenBrightness = dozeScreenBrightness;
        updateUdfpsController();
        if (this.mUdfpsController == null) {
            authController.addCallback(r0);
        }
    }

    public final void applyScreenState(int i, boolean z) {
        boolean z2;
        if (i != 0) {
            Log.d("DozeScreenState", "applyScreenState(" + i + ", shouldWaitForTransitionToAodUi = " + z + ")");
            if (i == 4) {
                if (this.mIsExecutedClockTransition) {
                    this.mIsExecutedClockTransition = false;
                } else {
                    try {
                        if (this.mDrawWakeLock == null) {
                            this.mDrawWakeLock = this.mPowerManager.newWakeLock(128, "DozeScreenState");
                        }
                        this.mDrawWakeLock.acquire(1000L);
                    } catch (Exception e) {
                        EmergencyButton$$ExternalSyntheticOutline0.m("applyDrawWakeLock exception = ", e, "DozeScreenState");
                    }
                }
            }
            AODParameters aODParameters = this.mParameters.mAODParameters;
            if (i != 2 && i != 4) {
                z2 = false;
            } else {
                z2 = true;
            }
            aODParameters.mDozeUiState = z2;
            if (LsRune.AOD_FULLSCREEN) {
                updateRefreshRate(i);
            }
            this.mDozeService.setDozeScreenState(i, z);
            if (LsRune.SUBSCREEN_PLUGIN_DISCONNECT_WHEN_UNFOLDING && i == 4) {
                SubScreenManager subScreenManager = this.mSubScreenManager;
                ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("runPendingPluginConnectRunnable mPendingPluginConnect="), subScreenManager.mPendingPluginConnect, "SubScreenManager");
                Runnable runnable = subScreenManager.mPendingPluginConnectRunnable;
                if (runnable != null) {
                    runnable.run();
                    Log.d("SubScreenManager", "clearPendingPluginConnectRunnable");
                    subScreenManager.mPendingPluginConnect = false;
                    subScreenManager.mPendingPluginConnectRunnable = null;
                }
            }
            if (LsRune.AOD_TSP_CONTROL && i == 4) {
                this.mAODTouchModeManager.setTouchMode(0);
            }
            if (i == 3) {
                this.mDozeScreenBrightness.updateBrightnessAndReady(false);
            }
            this.mPendingScreenState = 0;
            this.mWakeLock.setAcquired(false);
        }
    }

    @Override // com.android.systemui.doze.DozeMachine.Part
    public final void destroy() {
        this.mAuthController.removeCallback(this.mAuthControllerCallback);
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:0x0013, code lost:
    
        if (r3.mControlScreenOffAnimation != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x001a, code lost:
    
        if (r3.getDisplayNeedsBlanking() != false) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0161 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0158  */
    @Override // com.android.systemui.doze.DozeMachine.Part
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void transitionTo(com.android.systemui.doze.DozeMachine.State r14, com.android.systemui.doze.DozeMachine.State r15) {
        /*
            Method dump skipped, instructions count: 420
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.doze.DozeScreenState.transitionTo(com.android.systemui.doze.DozeMachine$State, com.android.systemui.doze.DozeMachine$State):void");
    }

    public final void updateRefreshRate(int i) {
        boolean z;
        if (!LsRune.AOD_FULLSCREEN) {
            return;
        }
        if (i == 4) {
            z = true;
        } else {
            z = false;
        }
        Log.i("DozeScreenState", "updateRefreshRate: displayState=" + i + " dozeSuspend=" + z);
        if (z) {
            if (this.mMaxRefreshRateToken == null) {
                if (this.mIDisplayManager == null) {
                    this.mIDisplayManager = IDisplayManager.Stub.asInterface(ServiceManager.getService("display"));
                }
                IDisplayManager iDisplayManager = this.mIDisplayManager;
                if (iDisplayManager != null) {
                    try {
                        this.mMaxRefreshRateToken = iDisplayManager.acquireRefreshRateMaxLimitToken(this.mRefreshRateToken, 30, "DozeScreenState");
                        Log.d("DozeScreenState", "updateRefreshRate enabled 30hz");
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
            if (this.mMaxRefreshRateToken == null) {
                Log.w("DozeScreenState", "updateRefreshRate failed");
                return;
            }
            return;
        }
        IRefreshRateToken iRefreshRateToken = this.mMaxRefreshRateToken;
        if (iRefreshRateToken != null) {
            try {
                iRefreshRateToken.release();
                Log.d("DozeScreenState", "updateRefreshRate disabled");
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
            this.mMaxRefreshRateToken = null;
        }
    }

    public final void updateUdfpsController() {
        if (this.mAuthController.isUdfpsEnrolled(KeyguardUpdateMonitor.getCurrentUser())) {
            this.mUdfpsController = (UdfpsController) this.mUdfpsControllerProvider.get();
        } else {
            this.mUdfpsController = null;
        }
    }
}
