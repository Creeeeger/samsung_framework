package com.samsung.android.biometrics.app.setting;

import android.app.ActivityTaskManager;
import android.app.TaskStackListener;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.Point;
import android.hardware.biometrics.PromptInfo;
import android.hardware.fingerprint.FingerprintManager;
import android.hardware.fingerprint.IFingerprintService;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.util.Log;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.os.SomeArgs;
import com.samsung.android.biometrics.ISemBiometricSysUiCallback;
import com.samsung.android.biometrics.ISemBiometricSysUiService;
import com.samsung.android.biometrics.SemBiometricConstants;
import com.samsung.android.biometrics.app.setting.DisplayStateManager;
import com.samsung.android.biometrics.app.setting.Utils;
import com.samsung.android.biometrics.app.setting.fingerprint.AodStatusMonitor;
import com.samsung.android.biometrics.app.setting.fingerprint.DisplayBrightnessMonitor;
import com.samsung.android.biometrics.app.setting.fingerprint.FpGestureConsumer;
import com.samsung.android.biometrics.app.setting.fingerprint.FpServiceProvider;
import com.samsung.android.biometrics.app.setting.fingerprint.LhbmOpticalController;
import com.samsung.android.biometrics.app.setting.fingerprint.OpticalController;
import com.samsung.android.biometrics.app.setting.fingerprint.UdfpsAuthClient;
import com.samsung.android.biometrics.app.setting.fingerprint.UdfpsClient;
import com.samsung.android.biometrics.app.setting.fingerprint.UdfpsIconOptionMonitor;
import com.samsung.android.biometrics.app.setting.fingerprint.UdfpsInfo;
import com.samsung.android.biometrics.app.setting.fingerprint.UdfpsKeyguardClient;
import com.samsung.android.biometrics.app.setting.fingerprint.UdfpsSensorWindow;
import com.samsung.android.biometrics.app.setting.fingerprint.UdfpsUiCustom;
import com.samsung.android.hardware.secinputdev.SemInputDeviceManager;
import java.io.FileDescriptor;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class SysUiManager implements SemBiometricConstants, FpServiceProvider, DisplayStateManager.Callback, AodStatusMonitor.Callback {

    @VisibleForTesting
    AodStatusMonitor mAodStatusMonitor;

    @VisibleForTesting
    BroadcastReceiver mBroadCastReceiverForTSP;
    private final Context mContext;

    @VisibleForTesting
    SysUiClient mCurrentClient;
    private DisplayStateManager mDisplayStateManager;
    private final SysUiHandler mH;
    private boolean mHasPrepareRequest;
    private final IFingerprintService mIFingerprintService;

    @VisibleForTesting
    UdfpsIconOptionMonitor mIconOptionMonitor;
    private final Injector mInjector;
    private boolean mIsTouchDown;

    @VisibleForTesting
    OpticalController mOpticalController;
    private TaskStackObserver mTaskStackObserver;

    @VisibleForTesting
    UdfpsInfo mUdfpsInfo;
    UdfpsSensorWindow mUdfpsSensorWindow;
    private boolean mLastTspVisibilityCommand = false;
    private final SysUiServiceWrapper mSysUiServiceWrapper = new SysUiServiceWrapper();

    @VisibleForTesting
    public static class Injector {
        private final PowerManager.WakeLock mDrawWakeLock;
        private final PowerManager.WakeLock mPartialWakeLock;

        public Injector(Context context) {
            PowerManager powerManager = (PowerManager) context.getSystemService(PowerManager.class);
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, "BSS_SysUiManager:P");
            this.mPartialWakeLock = newWakeLock;
            newWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock newWakeLock2 = powerManager.newWakeLock(128, "BSS_SysUiManager:D");
            this.mDrawWakeLock = newWakeLock2;
            newWakeLock2.setReferenceCounted(false);
        }

        public final void acquireWakeLock(long j) {
            try {
                this.mPartialWakeLock.acquire(j);
            } catch (Exception e) {
                Log.e("BSS_SysUiManager", "acquireWakeLock: p=" + e.getMessage());
            }
            try {
                this.mDrawWakeLock.acquire(j);
            } catch (Exception e2) {
                Log.e("BSS_SysUiManager", "acquireWakeLock: d=" + e2.getMessage());
            }
        }

        public final void releaseWakeLock() {
            PowerManager.WakeLock wakeLock = this.mDrawWakeLock;
            PowerManager.WakeLock wakeLock2 = this.mPartialWakeLock;
            try {
                if (wakeLock2.isHeld()) {
                    wakeLock2.release();
                }
            } catch (Exception e) {
                Log.e("BSS_SysUiManager", "releaseWakeLock: p=" + e.getMessage());
            }
            try {
                if (wakeLock.isHeld()) {
                    wakeLock.release();
                }
            } catch (Exception e2) {
                Log.e("BSS_SysUiManager", "releaseWakeLock: d=" + e2.getMessage());
            }
        }
    }

    public final class SysUiHandler extends Handler {
        SysUiHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Log.i("BSS_SysUiManager", Utils.getLogFormat(message));
            switch (message.what) {
                case 1:
                    SomeArgs someArgs = (SomeArgs) message.obj;
                    SysUiManager.m27$$Nest$mhandleShow(SysUiManager.this, message.arg1, message.arg2, (Bundle) someArgs.arg1, (ISemBiometricSysUiCallback) someArgs.arg2, ((Boolean) someArgs.arg3).booleanValue(), someArgs.argi1, (String) someArgs.arg4, ((Long) someArgs.arg5).longValue(), (PromptInfo) someArgs.arg6);
                    someArgs.recycle();
                    break;
                case 2:
                    SysUiManager sysUiManager = SysUiManager.this;
                    int i = message.arg1;
                    SysUiClient sysUiClient = sysUiManager.mCurrentClient;
                    if (sysUiClient != null && sysUiClient.getSessionId() == i) {
                        sysUiManager.mCurrentClient.stop();
                        break;
                    }
                    break;
                case 3:
                    SysUiManager.m25$$Nest$mhandleAuthenticationSucceeded(SysUiManager.this, (String) message.obj);
                    break;
                case 4:
                    SysUiManager sysUiManager2 = SysUiManager.this;
                    String str = (String) message.obj;
                    Handler.Callback callback = sysUiManager2.mCurrentClient;
                    if (callback instanceof AuthenticationConsumer) {
                        ((AuthenticationConsumer) callback).onAuthenticationFailed(str);
                        break;
                    }
                    break;
                case 5:
                    SysUiManager sysUiManager3 = SysUiManager.this;
                    int i2 = message.arg1;
                    int i3 = message.arg2;
                    String str2 = (String) message.obj;
                    Handler.Callback callback2 = sysUiManager3.mCurrentClient;
                    if (callback2 instanceof AuthenticationConsumer) {
                        AuthenticationConsumer authenticationConsumer = (AuthenticationConsumer) callback2;
                        if (i2 == 6) {
                            i2 = i3;
                        }
                        authenticationConsumer.onAuthenticationHelp(i2, str2);
                        break;
                    }
                    break;
                case 6:
                    SysUiManager sysUiManager4 = SysUiManager.this;
                    int i4 = message.arg1;
                    int i5 = message.arg2;
                    String str3 = (String) message.obj;
                    Handler.Callback callback3 = sysUiManager4.mCurrentClient;
                    if (callback3 instanceof AuthenticationConsumer) {
                        ((AuthenticationConsumer) callback3).onAuthenticationError(i4, i5, str3);
                        break;
                    }
                    break;
                case 7:
                    SomeArgs someArgs2 = (SomeArgs) message.obj;
                    SysUiManager.m26$$Nest$mhandleCommand(SysUiManager.this, someArgs2.argi1, message.arg1, message.arg2, (Bundle) someArgs2.arg1);
                    someArgs2.recycle();
                    break;
                case 9:
                    SysUiManager sysUiManager5 = SysUiManager.this;
                    SysUiClient sysUiClient2 = sysUiManager5.mCurrentClient;
                    if (sysUiClient2 != null) {
                        sysUiClient2.handleOnTaskStackListener();
                    }
                    OpticalController opticalController = sysUiManager5.mOpticalController;
                    if (opticalController != null) {
                        opticalController.handleOnTaskStackChanged();
                        break;
                    }
                    break;
                case 10:
                    SysUiManager.this.onFodTouchEvent(16, 0.0f, 0.0f);
                    break;
            }
        }
    }

    @VisibleForTesting
    final class SysUiServiceWrapper extends ISemBiometricSysUiService.Stub {
        SysUiServiceWrapper() {
        }

        private static boolean isRestricted() {
            return Binder.getCallingUid() != 1000;
        }

        public final void hideBiometricDialog(int i, int i2, int i3) {
            if (isRestricted()) {
                return;
            }
            SysUiManager.this.mH.obtainMessage(2, i, i2, Integer.valueOf(i3)).sendToTarget();
        }

        public final void onBiometricAuthenticated(int i, int i2, boolean z, String str) {
            if (isRestricted()) {
                return;
            }
            if (z) {
                SysUiManager.this.mH.obtainMessage(3, str).sendToTarget();
            } else {
                SysUiManager.this.mH.obtainMessage(4, str).sendToTarget();
            }
        }

        public final void onBiometricError(int i, int i2, int i3, int i4, String str) {
            if (isRestricted()) {
                return;
            }
            SysUiManager.this.mH.obtainMessage(6, i3, i4, str).sendToTarget();
        }

        public final void onBiometricHelp(int i, int i2, int i3, int i4, String str) {
            if (isRestricted()) {
                return;
            }
            SysUiManager.this.mH.obtainMessage(5, i3, i4, str).sendToTarget();
        }

        public final void sendCommand(int i, int i2, int i3, Bundle bundle) {
            if (isRestricted()) {
                return;
            }
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i;
            if (bundle == null) {
                bundle = new Bundle();
            }
            obtain.arg1 = bundle;
            SysUiManager.this.mH.obtainMessage(7, i2, i3, obtain).sendToTarget();
        }

        public final void setBiometricTheme(int i, String str, byte[] bArr, FileDescriptor fileDescriptor) {
            if (i == 10000) {
                UdfpsUiCustom.setCustomTouchEffect(SysUiManager.this.mContext, str, fileDescriptor);
            } else if (i == 10001) {
                UdfpsUiCustom.setCustomFingerIcon(SysUiManager.this.mContext, str, fileDescriptor);
            }
        }

        public final void showBiometricDialog(int i, int i2, Bundle bundle, ISemBiometricSysUiCallback iSemBiometricSysUiCallback, boolean z, int i3, String str, long j, PromptInfo promptInfo) {
            if (isRestricted()) {
                return;
            }
            SomeArgs obtain = SomeArgs.obtain();
            obtain.argi1 = i3;
            obtain.arg1 = bundle;
            obtain.arg2 = iSemBiometricSysUiCallback;
            obtain.arg3 = Boolean.valueOf(z);
            obtain.arg4 = str;
            obtain.arg5 = Long.valueOf(j);
            obtain.arg6 = promptInfo;
            SysUiManager.this.mH.obtainMessage(1, i, i2, obtain).sendToTarget();
        }
    }

    public class TaskStackObserver extends TaskStackListener {
        private boolean mIsWatching;

        public TaskStackObserver() {
        }

        public final void observe(boolean z) {
            if (this.mIsWatching == z) {
                return;
            }
            try {
                if (z) {
                    ActivityTaskManager.getService().registerTaskStackListener(this);
                    this.mIsWatching = true;
                } else {
                    ActivityTaskManager.getService().unregisterTaskStackListener(this);
                    this.mIsWatching = false;
                }
            } catch (Exception e) {
                DisplayStateManager$Injector$$ExternalSyntheticOutline0.m(e, new StringBuilder("observe: "), "BSS_SysUiManager");
            }
        }

        public final void onTaskFocusChanged(int i, boolean z) {
            SysUiManager.this.mH.removeMessages(9);
            SysUiManager.this.mH.sendEmptyMessageDelayed(9, 100L);
        }

        public final void onTaskStackChanged() {
            SysUiManager.this.mH.removeMessages(9);
            SysUiManager.this.mH.sendEmptyMessageDelayed(9, 100L);
        }
    }

    /* renamed from: $r8$lambda$l3H5s4_NgC9-TiLIu72rmVBnrkU, reason: not valid java name */
    public static /* synthetic */ void m19$r8$lambda$l3H5s4_NgC9TiLIu72rmVBnrkU(SysUiManager sysUiManager, boolean z) {
        if (z == sysUiManager.mHasPrepareRequest) {
            return;
        }
        if (z) {
            sysUiManager.request(12, 1, 0L);
            sysUiManager.mHasPrepareRequest = true;
        } else {
            sysUiManager.request(12, 0, 0L);
            sysUiManager.mHasPrepareRequest = false;
        }
    }

    /* renamed from: $r8$lambda$nSeLkg2kR-riJWPIiXkWwUuGVHs, reason: not valid java name */
    public static void m20$r8$lambda$nSeLkg2kRriJWPIiXkWwUuGVHs(SysUiManager sysUiManager, boolean z) {
        if (sysUiManager.mLastTspVisibilityCommand == z) {
            return;
        }
        sysUiManager.mLastTspVisibilityCommand = z;
        Injector injector = sysUiManager.mInjector;
        Context context = sysUiManager.mContext;
        injector.getClass();
        SemInputDeviceManager semInputDeviceManager = (SemInputDeviceManager) context.getSystemService(SemInputDeviceManager.class);
        if (semInputDeviceManager != null) {
            semInputDeviceManager.setFodIconVisible(z ? 1 : 0);
            if (Utils.DEBUG) {
                Log.d("BSS_SysUiManager", "sendUdfpsIconVisibilityToTsp: " + z);
            }
        }
    }

    public static void $r8$lambda$nUdBqKsBc2BLgiXkXeBOwWKHMAo(SysUiManager sysUiManager, float f, float f2) {
        DisplayStateManager displayStateManager;
        sysUiManager.getClass();
        if (f == 0.0f || f2 == 0.0f || sysUiManager.mUdfpsInfo == null || (displayStateManager = sysUiManager.mDisplayStateManager) == null) {
            return;
        }
        int currentRotation = displayStateManager.getCurrentRotation();
        UdfpsInfo udfpsInfo = sysUiManager.mUdfpsInfo;
        boolean z = true;
        if (currentRotation != 1 && currentRotation != 3) {
            z = false;
        }
        Point centerPointInPortraitMode = udfpsInfo.getCenterPointInPortraitMode(z);
        int i = centerPointInPortraitMode.x - ((int) f);
        int i2 = centerPointInPortraitMode.y - ((int) f2);
        StringBuilder sb = new StringBuilder("onFodTouchEvent: distance = ");
        float f3 = centerPointInPortraitMode.x;
        sb.append((((float) Math.sqrt(Math.pow(centerPointInPortraitMode.y - f2, 2.0d) + Math.pow(f3 - f, 2.0d))) / Utils.getDisplayMetrics(sysUiManager.mContext).xdpi) * 25.4f);
        sb.append(", diff = ");
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        Log.i("BSS_SysUiManager", sb.toString());
    }

    /* renamed from: $r8$lambda$v-lAwftBEVxNmjPjEaZlziQbGck, reason: not valid java name */
    public static void m21$r8$lambda$vlAwftBEVxNmjPjEaZlziQbGck(SysUiManager sysUiManager) {
        OpticalController opticalController;
        if (sysUiManager.mIsTouchDown || sysUiManager.mDisplayStateManager.isOnState()) {
            return;
        }
        UdfpsIconOptionMonitor udfpsIconOptionMonitor = sysUiManager.mIconOptionMonitor;
        if ((udfpsIconOptionMonitor.isEnabledTapToShow() || udfpsIconOptionMonitor.isEnabledOnAod()) ? false : true) {
            return;
        }
        sysUiManager.mUdfpsInfo.getClass();
        if (Utils.Config.FP_FEATURE_SENSOR_IS_OPTICAL && (opticalController = sysUiManager.mOpticalController) != null) {
            opticalController.handleSingleTapEvent();
        }
        SysUiClient sysUiClient = sysUiManager.mCurrentClient;
        if (sysUiClient instanceof UdfpsKeyguardClient) {
            ((UdfpsKeyguardClient) sysUiClient).handleSingleTapEvent();
        }
    }

    /* renamed from: -$$Nest$mhandleAuthenticationSucceeded, reason: not valid java name */
    static void m25$$Nest$mhandleAuthenticationSucceeded(SysUiManager sysUiManager, String str) {
        OpticalController opticalController = sysUiManager.mOpticalController;
        if (opticalController != null) {
            if (sysUiManager.mCurrentClient instanceof UdfpsKeyguardClient) {
                if (Utils.Config.FEATURE_SUPPORT_AOD_TRANSITION_ANIMATION) {
                    sysUiManager.mH.postAtFrontOfQueue(new SysUiManager$$ExternalSyntheticLambda1(sysUiManager, 1));
                }
                sysUiManager.mOpticalController.handleAuthenticationSucceeded(sysUiManager.mCurrentClient.getSessionId());
            } else {
                opticalController.handleAuthenticationSucceeded(0);
            }
        }
        Handler.Callback callback = sysUiManager.mCurrentClient;
        if (callback instanceof AuthenticationConsumer) {
            ((AuthenticationConsumer) callback).onAuthenticationSucceeded(str);
            return;
        }
        Log.w("BSS_SysUiManager", "handleAuthenticationSucceeded: for non-authentication consumer: " + sysUiManager.mCurrentClient);
    }

    /* renamed from: -$$Nest$mhandleCommand, reason: not valid java name */
    static void m26$$Nest$mhandleCommand(SysUiManager sysUiManager, int i, int i2, int i3, Bundle bundle) {
        SysUiClient sysUiClient = sysUiManager.mCurrentClient;
        Object obj = sysUiClient;
        obj = sysUiClient;
        if (sysUiClient != null && i != 0) {
            int sessionId = sysUiClient.getSessionId();
            obj = sysUiClient;
            if (sessionId != i) {
                obj = null;
            }
        }
        if (i2 == 117) {
            if (obj instanceof UdfpsKeyguardClient) {
                ((UdfpsKeyguardClient) obj).onBouncerScreen();
            }
            return;
        }
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = true;
        if (i2 == 118) {
            OpticalController opticalController = sysUiManager.mOpticalController;
            if (opticalController == null || opticalController.hasMaskClient()) {
                return;
            }
            BackgroundThread backgroundThread = BackgroundThread.get();
            SysUiManager$$ExternalSyntheticLambda2 sysUiManager$$ExternalSyntheticLambda2 = new SysUiManager$$ExternalSyntheticLambda2(sysUiManager, z4, z2 ? 1 : 0);
            backgroundThread.getClass();
            BackgroundThread.post(sysUiManager$$ExternalSyntheticLambda2);
            return;
        }
        if (i2 == 500) {
            boolean z5 = bundle.getBoolean("KEY_KEYGUARD", false);
            bundle.getString("KEY_PACKAGE_NAME", "Unknown");
            OpticalController.MaskClient maskClient = new OpticalController.MaskClient(i, z5);
            if (i3 != 1) {
                sysUiManager.mOpticalController.removeMaskClient(i);
                return;
            }
            if (z5) {
                sysUiManager.mDisplayStateManager.updateDisplayState();
            }
            sysUiManager.mOpticalController.addMaskClient(maskClient);
            BackgroundThread backgroundThread2 = BackgroundThread.get();
            SysUiManager$$ExternalSyntheticLambda2 sysUiManager$$ExternalSyntheticLambda22 = new SysUiManager$$ExternalSyntheticLambda2(sysUiManager, z, z3 ? 1 : 0);
            backgroundThread2.getClass();
            BackgroundThread.post(sysUiManager$$ExternalSyntheticLambda22);
            return;
        }
        if (i2 == 501) {
            SysUiClient sysUiClient2 = sysUiManager.mCurrentClient;
            if (sysUiClient2 != null) {
                sysUiClient2.stop();
            }
            if (i3 != 1) {
                sysUiManager.mOpticalController.turnOffCalibrationLightSource();
                sysUiManager.mOpticalController.removeMaskClient(i);
                return;
            } else {
                sysUiManager.mUdfpsInfo.setCalibrationLightColor(bundle.getString("nits", ""));
                bundle.getString("KEY_PACKAGE_NAME", "UnknownCalibrationClient");
                sysUiManager.mOpticalController.addMaskClient(new OpticalController.MaskClient(i, false));
                sysUiManager.mH.post(new SysUiManager$$ExternalSyntheticLambda1(sysUiManager, 2));
                return;
            }
        }
        if (i2 == 600) {
            if (obj instanceof FpGestureConsumer) {
                ((FpGestureConsumer) obj).onGestureEvent();
                return;
            }
            return;
        }
        switch (i2) {
            case 112:
                if (obj instanceof UdfpsClient) {
                    ((UdfpsClient) obj).pause();
                    break;
                }
                break;
            case 113:
                if (obj instanceof UdfpsClient) {
                    ((UdfpsClient) obj).resume();
                    break;
                }
                break;
            case 114:
                if (obj instanceof UdfpsKeyguardClient) {
                    ((UdfpsKeyguardClient) obj).moveSensorIcon(bundle.getInt("x"), bundle.getInt("y"));
                    break;
                }
                break;
            case 115:
                if (i3 != 1) {
                    sysUiManager.mDisplayStateManager.onScreenOffFromKeyguard();
                    break;
                } else {
                    sysUiManager.mDisplayStateManager.onScreenOnFromKeyguard();
                    break;
                }
            default:
                switch (i2) {
                    case 201:
                        if (obj instanceof AuthenticationConsumer) {
                            ((AuthenticationConsumer) obj).onAuthenticationHelp(i3, FingerprintManager.getAcquiredString(sysUiManager.mContext, i3, 0));
                            break;
                        }
                        break;
                    case 202:
                        if (i3 == 1004) {
                            if (Utils.Config.FP_FEATURE_TSP_BLOCK && sysUiManager.mUdfpsSensorWindow.isVisible()) {
                                sysUiManager.mUdfpsSensorWindow.hideSensorIcon();
                                SysUiClient sysUiClient3 = sysUiManager.mCurrentClient;
                                if (sysUiClient3 instanceof UdfpsAuthClient) {
                                    ((UdfpsAuthClient) sysUiClient3).handleTspBlock(true);
                                    break;
                                }
                            }
                        } else if (i3 == 1005) {
                            if (Utils.Config.FP_FEATURE_TSP_BLOCK && sysUiManager.mUdfpsSensorWindow.isVisible()) {
                                sysUiManager.mUdfpsSensorWindow.showSensorIcon();
                                SysUiClient sysUiClient4 = sysUiManager.mCurrentClient;
                                if (sysUiClient4 instanceof UdfpsAuthClient) {
                                    ((UdfpsAuthClient) sysUiClient4).handleTspBlock(false);
                                    break;
                                }
                            }
                        } else if (i3 == 10002) {
                            SysUiClient sysUiClient5 = sysUiManager.mCurrentClient;
                            if ((sysUiClient5 instanceof UdfpsAuthClient) && i == sysUiClient5.getSessionId()) {
                                ((UdfpsAuthClient) sysUiManager.mCurrentClient).onCaptureStart();
                                break;
                            }
                        } else if (i3 == 10003) {
                            OpticalController opticalController2 = sysUiManager.mOpticalController;
                            if (opticalController2 != null) {
                                opticalController2.handleCaptureCompleted();
                            }
                            SysUiClient sysUiClient6 = sysUiManager.mCurrentClient;
                            if ((sysUiClient6 instanceof UdfpsAuthClient) && i == sysUiClient6.getSessionId()) {
                                if (Utils.Config.FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE) {
                                    sysUiManager.mH.sendEmptyMessageDelayed(10, 1000L);
                                }
                                ((UdfpsAuthClient) sysUiManager.mCurrentClient).onCaptureComplete();
                                break;
                            }
                        }
                        break;
                    case 203:
                        if (obj instanceof AuthenticationConsumer) {
                            ((AuthenticationConsumer) obj).onAuthenticationError(i3, 0, null);
                            break;
                        }
                        break;
                    case 204:
                        if (obj instanceof AuthenticationConsumer) {
                            ((AuthenticationConsumer) obj).onAuthenticationError(8, i3, null);
                            break;
                        }
                        break;
                }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0218  */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.samsung.android.biometrics.app.setting.SysUiManager$Injector$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r3v17, types: [com.samsung.android.biometrics.app.setting.SysUiManager$$ExternalSyntheticLambda3] */
    /* renamed from: -$$Nest$mhandleShow, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static void m27$$Nest$mhandleShow(final com.samsung.android.biometrics.app.setting.SysUiManager r19, int r20, int r21, android.os.Bundle r22, com.samsung.android.biometrics.ISemBiometricSysUiCallback r23, boolean r24, int r25, java.lang.String r26, long r27, android.hardware.biometrics.PromptInfo r29) {
        /*
            Method dump skipped, instructions count: 745
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.biometrics.app.setting.SysUiManager.m27$$Nest$mhandleShow(com.samsung.android.biometrics.app.setting.SysUiManager, int, int, android.os.Bundle, com.samsung.android.biometrics.ISemBiometricSysUiCallback, boolean, int, java.lang.String, long, android.hardware.biometrics.PromptInfo):void");
    }

    @VisibleForTesting
    SysUiManager(Context context, Injector injector) {
        this.mContext = context;
        this.mInjector = injector;
        this.mH = new SysUiHandler(context.getMainLooper());
        injector.getClass();
        this.mIFingerprintService = IFingerprintService.Stub.asInterface(ServiceManager.getService("fingerprint"));
    }

    private int requestToFpSvc(int i, int i2, long j, String str) {
        try {
            return this.mIFingerprintService.semBioSysUiRequest(i, i2, j, str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public final void acquireDVFS() {
        requestToFpSvc(8, 1, 0L, null);
    }

    public final void deliverTouchEvent(int i, int i2, int i3) {
        long j;
        if (i == 2) {
            j = i3 | (i2 << 16);
        } else {
            j = 0;
        }
        requestToFpSvc(9, i, j, null);
    }

    public final void destroy() {
        SysUiClient sysUiClient = this.mCurrentClient;
        if (sysUiClient != null) {
            sysUiClient.stopImmediate();
            this.mCurrentClient = null;
        }
        DisplayStateManager displayStateManager = this.mDisplayStateManager;
        if (displayStateManager != null) {
            displayStateManager.stop();
            this.mDisplayStateManager = null;
        }
        TaskStackObserver taskStackObserver = this.mTaskStackObserver;
        if (taskStackObserver != null) {
            taskStackObserver.observe(false);
        }
        BroadcastReceiver broadcastReceiver = this.mBroadCastReceiverForTSP;
        if (broadcastReceiver != null) {
            try {
                this.mContext.unregisterReceiver(broadcastReceiver);
                this.mBroadCastReceiverForTSP = null;
            } catch (Exception e) {
                DisplayStateManager$Injector$$ExternalSyntheticOutline0.m(e, new StringBuilder("unregisterBroadcastReceiver: "), "BSS_SysUiManager");
            }
        }
        UdfpsIconOptionMonitor udfpsIconOptionMonitor = this.mIconOptionMonitor;
        if (udfpsIconOptionMonitor != null) {
            udfpsIconOptionMonitor.stop();
        }
        AodStatusMonitor aodStatusMonitor = this.mAodStatusMonitor;
        if (aodStatusMonitor != null) {
            aodStatusMonitor.removeCallback(this);
            this.mAodStatusMonitor.stop();
        }
        UdfpsSensorWindow udfpsSensorWindow = this.mUdfpsSensorWindow;
        if (udfpsSensorWindow != null) {
            udfpsSensorWindow.removeView();
        }
        OpticalController opticalController = this.mOpticalController;
        if (opticalController != null) {
            opticalController.stop();
        }
        DisplayBrightnessMonitor.getInstance().stop();
        this.mH.removeCallbacksAndMessages(null);
    }

    public final void disableDisplayColorFunction() {
        requestToFpSvc(7, 0, 0L, null);
    }

    public final void enableDisplayColorFunction() {
        requestToFpSvc(7, 1, 0L, null);
    }

    public final void forceQDB() {
        requestToFpSvc(100, 0, 0L, null);
    }

    public final SysUiServiceWrapper getSysUiServiceWrapper() {
        return this.mSysUiServiceWrapper;
    }

    public final void init() {
        OpticalController opticalController;
        Injector injector = this.mInjector;
        Context context = this.mContext;
        SysUiHandler sysUiHandler = this.mH;
        injector.getClass();
        DisplayStateManager displayStateManager = new DisplayStateManager(context, sysUiHandler, BackgroundThread.get().getLooper(), new DisplayStateManager.Injector(context));
        this.mDisplayStateManager = displayStateManager;
        displayStateManager.start();
        this.mDisplayStateManager.registerCallback(this);
        TaskStackObserver taskStackObserver = new TaskStackObserver();
        this.mTaskStackObserver = taskStackObserver;
        taskStackObserver.observe(true);
        if (Utils.IS_DEBUG_LEVEL_MID_OR_HIGH) {
            Looper.myLooper().setPerfLogEnable();
            Looper.myLooper().setSlowLogThresholdMs(100L, 300L);
        }
        if (Utils.Config.FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE && this.mBroadCastReceiverForTSP == null) {
            this.mBroadCastReceiverForTSP = new BroadcastReceiver() { // from class: com.samsung.android.biometrics.app.setting.SysUiManager.3
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context2, Intent intent) {
                    float f;
                    float f2;
                    String action = intent.getAction();
                    if ("com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE".equals(action) || "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY".equals(action)) {
                        int intExtra = intent.getIntExtra("info", -1);
                        float[] floatArrayExtra = intent.getFloatArrayExtra("location");
                        Log.i("BSS_SysUiManager", action + ", " + intExtra);
                        if (floatArrayExtra == null || floatArrayExtra.length != 2) {
                            f = 0.0f;
                            f2 = 0.0f;
                        } else {
                            f = floatArrayExtra[0];
                            f2 = floatArrayExtra[1];
                        }
                        if (intExtra != 8) {
                            switch (intExtra) {
                                case 15:
                                case 16:
                                case 17:
                                    SysUiManager.this.onFodTouchEvent(intExtra, f, f2);
                                    break;
                            }
                        } else if (Utils.Config.FEATURE_SUPPORT_AOD || Utils.Config.FP_FEATURE_FAKE_AOD) {
                            SysUiManager.this.onFodSingleTap();
                        }
                    }
                }
            };
            try {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE");
                this.mContext.registerReceiverAsUser(this.mBroadCastReceiverForTSP, UserHandle.ALL, intentFilter, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER", this.mH);
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY");
                this.mContext.registerReceiverAsUser(this.mBroadCastReceiverForTSP, UserHandle.ALL, intentFilter2, "com.samsung.android.permission.BROADCAST_QUICKACCESS", this.mH);
            } catch (Exception e) {
                DisplayStateManager$Injector$$ExternalSyntheticOutline0.m(e, new StringBuilder("registerBroadcastReceiver: "), "BSS_SysUiManager");
            }
        }
        if (Utils.Config.FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE) {
            Injector injector2 = this.mInjector;
            Context context2 = this.mContext;
            injector2.getClass();
            Bundle bundle = new Bundle();
            try {
                IFingerprintService.Stub.asInterface(ServiceManager.getService("fingerprint")).semGetSensorData(bundle);
            } catch (RemoteException e2) {
                Log.w("BSS_SysUiManager", "SysUiManager: " + e2.getMessage());
            }
            this.mUdfpsInfo = new UdfpsInfo(context2, bundle);
            Injector injector3 = this.mInjector;
            Context context3 = this.mContext;
            injector3.getClass();
            AodStatusMonitor aodStatusMonitor = new AodStatusMonitor(context3);
            this.mAodStatusMonitor = aodStatusMonitor;
            aodStatusMonitor.start();
            this.mAodStatusMonitor.addCallback(this);
            Injector injector4 = this.mInjector;
            Context context4 = this.mContext;
            injector4.getClass();
            UdfpsIconOptionMonitor udfpsIconOptionMonitor = new UdfpsIconOptionMonitor(context4);
            this.mIconOptionMonitor = udfpsIconOptionMonitor;
            udfpsIconOptionMonitor.start();
            if (this.mUdfpsSensorWindow == null) {
                Injector injector5 = this.mInjector;
                Context context5 = this.mContext;
                UdfpsInfo udfpsInfo = this.mUdfpsInfo;
                DisplayStateManager displayStateManager2 = this.mDisplayStateManager;
                injector5.getClass();
                UdfpsSensorWindow udfpsSensorWindow = new UdfpsSensorWindow(context5, null, udfpsInfo, displayStateManager2);
                this.mUdfpsSensorWindow = udfpsSensorWindow;
                udfpsSensorWindow.init();
                this.mUdfpsSensorWindow.setVisibility(4);
                this.mUdfpsSensorWindow.addView();
            }
            this.mUdfpsInfo.getClass();
            if (Utils.Config.FP_FEATURE_SENSOR_IS_OPTICAL && this.mOpticalController == null) {
                Injector injector6 = this.mInjector;
                Context context6 = this.mContext;
                UdfpsInfo udfpsInfo2 = this.mUdfpsInfo;
                DisplayStateManager displayStateManager3 = this.mDisplayStateManager;
                UdfpsIconOptionMonitor udfpsIconOptionMonitor2 = this.mIconOptionMonitor;
                AodStatusMonitor aodStatusMonitor2 = this.mAodStatusMonitor;
                injector6.getClass();
                if (Utils.Config.FP_FEATURE_LOCAL_HBM) {
                    DisplayBrightnessMonitor.getInstance();
                    opticalController = new LhbmOpticalController(context6, udfpsInfo2, this, displayStateManager3, udfpsIconOptionMonitor2, aodStatusMonitor2);
                } else {
                    opticalController = new OpticalController(context6, udfpsInfo2, this, DisplayBrightnessMonitor.getInstance(), displayStateManager3, udfpsIconOptionMonitor2, aodStatusMonitor2);
                }
                this.mOpticalController = opticalController;
                opticalController.start();
            }
        }
    }

    public final boolean isKeyguardBouncerShowing() {
        return requestToFpSvc(6, 0, 0L, null) == 1;
    }

    @Override // com.samsung.android.biometrics.app.setting.fingerprint.AodStatusMonitor.Callback
    public final void onAodStart() {
        DisplayStateManager displayStateManager = this.mDisplayStateManager;
        if (displayStateManager != null) {
            displayStateManager.onAodStart();
        }
    }

    public final void onConfigurationChanged(Configuration configuration) {
        DisplayStateManager displayStateManager = this.mDisplayStateManager;
        if (displayStateManager != null) {
            displayStateManager.onConfigurationChanged();
        }
        OpticalController opticalController = this.mOpticalController;
        if (opticalController != null) {
            opticalController.handleConfigurationChanged(configuration);
        }
        SysUiClient sysUiClient = this.mCurrentClient;
        if (sysUiClient != null) {
            Iterator<SysUiWindow> it = sysUiClient.mWindows.iterator();
            while (it.hasNext()) {
                it.next().onConfigurationChanged(configuration);
            }
        }
        UdfpsInfo udfpsInfo = this.mUdfpsInfo;
        if (udfpsInfo != null) {
            udfpsInfo.updateSensorInfo();
        }
    }

    @Override // com.samsung.android.biometrics.app.setting.DisplayStateManager.Callback
    public final void onDisplayStateChanged(int i) {
        OpticalController opticalController = this.mOpticalController;
        if (opticalController != null) {
            opticalController.handleDisplayStateChanged(i);
        }
        SysUiClient sysUiClient = this.mCurrentClient;
        if (sysUiClient != null) {
            sysUiClient.onDisplayStateChanged(i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002c  */
    @com.android.internal.annotations.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void onFodSingleTap() {
        /*
            r4 = this;
            com.samsung.android.biometrics.app.setting.fingerprint.UdfpsInfo r0 = r4.mUdfpsInfo
            if (r0 != 0) goto L5
            return
        L5:
            boolean r1 = com.samsung.android.biometrics.app.setting.Utils.Config.FP_FEATURE_SENSOR_IS_ULTRASONIC
            r2 = 0
            if (r1 != 0) goto L1c
            r0.getClass()
            boolean r0 = com.samsung.android.biometrics.app.setting.Utils.Config.FP_FEATURE_SENSOR_IS_OPTICAL
            if (r0 == 0) goto L1a
            com.samsung.android.biometrics.app.setting.fingerprint.AodStatusMonitor r0 = r4.mAodStatusMonitor
            boolean r0 = r0.isEnabled()
            if (r0 != 0) goto L1a
            goto L1c
        L1a:
            r0 = r2
            goto L1d
        L1c:
            r0 = 1
        L1d:
            com.samsung.android.biometrics.app.setting.SysUiManager$$ExternalSyntheticLambda1 r1 = new com.samsung.android.biometrics.app.setting.SysUiManager$$ExternalSyntheticLambda1
            r1.<init>(r4, r2)
            if (r0 == 0) goto L2c
            com.samsung.android.biometrics.app.setting.SysUiManager$SysUiHandler r4 = r4.mH
            r2 = 300(0x12c, double:1.48E-321)
            r4.postDelayed(r1, r2)
            goto L2f
        L2c:
            r1.run()
        L2f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.biometrics.app.setting.SysUiManager.onFodSingleTap():void");
    }

    @VisibleForTesting
    void onFodTouchEvent(int i, final float f, final float f2) {
        if (this.mUdfpsInfo == null) {
            return;
        }
        if (Utils.Config.FP_FEATURE_SENSOR_IS_OPTICAL) {
            this.mH.removeMessages(10);
            if (i == 15) {
                this.mIsTouchDown = true;
                OpticalController opticalController = this.mOpticalController;
                if (opticalController != null) {
                    opticalController.onTouchDown();
                }
            } else if (this.mIsTouchDown) {
                this.mIsTouchDown = false;
                OpticalController opticalController2 = this.mOpticalController;
                if (opticalController2 != null) {
                    opticalController2.onTouchUp();
                }
            }
        }
        if (i == 15) {
            BackgroundThread backgroundThread = BackgroundThread.get();
            Runnable runnable = new Runnable() { // from class: com.samsung.android.biometrics.app.setting.SysUiManager$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SysUiManager.$r8$lambda$nUdBqKsBc2BLgiXkXeBOwWKHMAo(SysUiManager.this, f, f2);
                }
            };
            backgroundThread.getClass();
            BackgroundThread.post(runnable);
        }
    }

    @Override // com.samsung.android.biometrics.app.setting.DisplayStateManager.Callback
    public final void onRotationStateChanged(int i) {
        OpticalController opticalController = this.mOpticalController;
        if (opticalController != null) {
            opticalController.handleRotationInfoChanged(i);
        }
        SysUiClient sysUiClient = this.mCurrentClient;
        if (sysUiClient != null) {
            Iterator<SysUiWindow> it = sysUiClient.mWindows.iterator();
            while (it.hasNext()) {
                it.next().onRotationInfoChanged(i);
            }
        }
    }

    public final void request(int i, int i2, long j) {
        requestToFpSvc(i, i2, j, null);
    }

    public final void turnOffHwLightSource() {
        requestToFpSvc(5, 0, 0L, null);
    }

    public final void turnOnHwLightSource() {
        requestToFpSvc(5, 1, 0L, null);
    }

    public final void turnOnTsp() {
        this.mUdfpsInfo.getClass();
        if (Utils.Config.FP_FEATURE_SENSOR_IS_ULTRASONIC && this.mAodStatusMonitor.isAodTransitionAnimationEnabled()) {
            requestToFpSvc(4, 1, 0L, "BSS");
        } else {
            requestToFpSvc(4, 1, 0L, null);
        }
    }

    public final void turnOnTspHalfMode() {
        requestToFpSvc(4, 2, 0L, null);
    }

    @Override // com.samsung.android.biometrics.app.setting.fingerprint.AodStatusMonitor.Callback
    public final void onAodStop() {
    }
}
