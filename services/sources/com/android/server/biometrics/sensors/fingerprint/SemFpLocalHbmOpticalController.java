package com.android.server.biometrics.sensors.fingerprint;

import android.os.Handler;
import android.os.PowerManagerInternal;
import com.android.server.LocalServices;
import com.android.server.biometrics.SemBiometricFeature;
import com.android.server.biometrics.Utils;
import com.android.server.biometrics.sensors.fingerprint.SemBiometricDisplayMonitor;
import java.io.File;
import java.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
public class SemFpLocalHbmOpticalController implements SemBiometricDisplayMonitor.Callback {
    public SemBiometricDisplayStateMonitor mDisplayStateMonitor;
    public final Handler mHandler;
    public Runnable mLocalHbmModeChangeAfterScreenOn;
    public LocalHbmStatus mCurrentLocalHbmStatus = LocalHbmStatus.LOCAL_HBM_MODE_OFF;
    public PowerManagerInternal mPowerManagerInternal = (PowerManagerInternal) LocalServices.getService(PowerManagerInternal.class);

    public SemFpLocalHbmOpticalController(Handler handler, SemBiometricDisplayStateMonitor semBiometricDisplayStateMonitor) {
        this.mHandler = handler;
        this.mDisplayStateMonitor = semBiometricDisplayStateMonitor;
        semBiometricDisplayStateMonitor.registerCallback(this);
        this.mDisplayStateMonitor.mRunnableLocalHbmOff = new Runnable() { // from class: com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                SemFpLocalHbmOpticalController.this.lambda$new$0();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        handleLocalHbm(0, true);
    }

    public void handleLocalHbm(final int i, boolean z) {
        Runnable runnable = new Runnable() { // from class: com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SemFpLocalHbmOpticalController.this.lambda$handleLocalHbm$2(i);
            }
        };
        if (z) {
            runnable.run();
        } else {
            this.mHandler.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleLocalHbm$2(final int i) {
        synchronized (this) {
            if (i == 0) {
                changeToNextState(LocalHbmStatus.LOCAL_HBM_MODE_OFF);
            } else if (!this.mDisplayStateMonitor.isChangingPhysicalState() && this.mDisplayStateMonitor.getPhysicalDisplayState() == 2) {
                if (i == 1) {
                    changeToNextState(LocalHbmStatus.LOCAL_HBM_MODE_ON_SOURCE_OFF);
                } else if (i == 2) {
                    changeToNextState(LocalHbmStatus.LOCAL_HBM_MODE_ON_SOURCE_ON);
                }
                this.mLocalHbmModeChangeAfterScreenOn = null;
            } else {
                this.mLocalHbmModeChangeAfterScreenOn = new Runnable() { // from class: com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        SemFpLocalHbmOpticalController.this.lambda$handleLocalHbm$1(i);
                    }
                };
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleLocalHbm$1(int i) {
        handleLocalHbm(i, false);
    }

    @Override // com.android.server.biometrics.sensors.fingerprint.SemBiometricDisplayMonitor.Callback
    public void onFinishDisplayState(int i, int i2, int i3) {
        Runnable runnable;
        if (SemBiometricFeature.FP_FEATURE_SUPPORT_LOCAL_HBM && i2 == 2 && (runnable = this.mLocalHbmModeChangeAfterScreenOn) != null) {
            runnable.run();
            this.mLocalHbmModeChangeAfterScreenOn = null;
        }
    }

    public final void freezingBrightness(boolean z) {
        PowerManagerInternal powerManagerInternal;
        if (!SemBiometricFeature.FP_FEATURE_SUPPORT_LOCAL_HBM || (powerManagerInternal = this.mPowerManagerInternal) == null) {
            return;
        }
        powerManagerInternal.setFreezeBrightnessMode(z);
    }

    public final boolean writeLocalHbmStatus(LocalHbmStatus localHbmStatus) {
        if (SemBiometricFeature.FP_FEATURE_SUPPORT_LOCAL_HBM) {
            if (localHbmStatus == LocalHbmStatus.LOCAL_HBM_MODE_ON_SOURCE_ON) {
                freezingBrightness(true);
            } else if (localHbmStatus == LocalHbmStatus.LOCAL_HBM_MODE_ON_SOURCE_OFF) {
                freezingBrightness(false);
            }
            return Utils.writeFile(new File("/sys/class/lcd/panel/local_hbm"), localHbmStatus.getString().getBytes(StandardCharsets.UTF_8));
        }
        if (SemBiometricFeature.FP_FEATURE_SUPPORT_JDM_LOCAL_HBM) {
            return Utils.writeFile(new File("/sys/class/display/display_ctrl/lhbm_mode_set"), localHbmStatus.getString().getBytes(StandardCharsets.UTF_8));
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0039, code lost:
    
        if (writeLocalHbmStatus(r3) != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0065, code lost:
    
        if (writeLocalHbmStatus(r3) != false) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void changeToNextState(com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController.LocalHbmStatus r5) {
        /*
            r4 = this;
            boolean r0 = com.android.server.biometrics.SemBiometricFeature.FP_FEATURE_SUPPORT_JDM_LOCAL_HBM
            if (r0 == 0) goto Ld
            com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController$LocalHbmStatus r0 = com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController.LocalHbmStatus.LOCAL_HBM_MODE_ON_SOURCE_ON
            if (r5 != r0) goto Lb
            com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController$LocalHbmStatus r5 = com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController.LocalHbmStatus.LOCAL_HBM_MODE_ON_SOURCE_OFF
            goto Ld
        Lb:
            com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController$LocalHbmStatus r5 = com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController.LocalHbmStatus.LOCAL_HBM_MODE_OFF
        Ld:
            int[] r0 = com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController.AnonymousClass1.$SwitchMap$com$android$server$biometrics$sensors$fingerprint$SemFpLocalHbmOpticalController$LocalHbmStatus
            com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController$LocalHbmStatus r1 = r4.mCurrentLocalHbmStatus
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r1 = 1
            r2 = 0
            if (r0 == r1) goto L4e
            r3 = 2
            if (r0 == r3) goto L3c
            r3 = 3
            if (r0 == r3) goto L22
            goto L6a
        L22:
            com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController$LocalHbmStatus r0 = com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController.LocalHbmStatus.LOCAL_HBM_MODE_ON_SOURCE_OFF
            if (r5 != r0) goto L2b
            boolean r2 = r4.writeLocalHbmStatus(r0)
            goto L6a
        L2b:
            com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController$LocalHbmStatus r3 = com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController.LocalHbmStatus.LOCAL_HBM_MODE_OFF
            if (r5 != r3) goto L6a
            boolean r0 = r4.writeLocalHbmStatus(r0)
            if (r0 == 0) goto L68
            boolean r0 = r4.writeLocalHbmStatus(r3)
            if (r0 == 0) goto L68
            goto L69
        L3c:
            com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController$LocalHbmStatus r0 = com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController.LocalHbmStatus.LOCAL_HBM_MODE_OFF
            if (r5 != r0) goto L45
            boolean r2 = r4.writeLocalHbmStatus(r0)
            goto L6a
        L45:
            com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController$LocalHbmStatus r0 = com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController.LocalHbmStatus.LOCAL_HBM_MODE_ON_SOURCE_ON
            if (r5 != r0) goto L6a
            boolean r2 = r4.writeLocalHbmStatus(r0)
            goto L6a
        L4e:
            com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController$LocalHbmStatus r0 = com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController.LocalHbmStatus.LOCAL_HBM_MODE_ON_SOURCE_OFF
            if (r5 != r0) goto L57
            boolean r2 = r4.writeLocalHbmStatus(r0)
            goto L6a
        L57:
            com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController$LocalHbmStatus r3 = com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController.LocalHbmStatus.LOCAL_HBM_MODE_ON_SOURCE_ON
            if (r5 != r3) goto L6a
            boolean r0 = r4.writeLocalHbmStatus(r0)
            if (r0 == 0) goto L68
            boolean r0 = r4.writeLocalHbmStatus(r3)
            if (r0 == 0) goto L68
            goto L69
        L68:
            r1 = r2
        L69:
            r2 = r1
        L6a:
            if (r2 == 0) goto L8e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "LocalHbmStatus change from : "
            r0.append(r1)
            com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController$LocalHbmStatus r1 = r4.mCurrentLocalHbmStatus
            r0.append(r1)
            java.lang.String r1 = ", to : "
            r0.append(r1)
            r0.append(r5)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "FingerprintService.SemFpLhbmOpticalController"
            android.util.Slog.i(r1, r0)
            r4.mCurrentLocalHbmStatus = r5
        L8e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController.changeToNextState(com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController$LocalHbmStatus):void");
    }

    /* renamed from: com.android.server.biometrics.sensors.fingerprint.SemFpLocalHbmOpticalController$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$server$biometrics$sensors$fingerprint$SemFpLocalHbmOpticalController$LocalHbmStatus;

        static {
            int[] iArr = new int[LocalHbmStatus.values().length];
            $SwitchMap$com$android$server$biometrics$sensors$fingerprint$SemFpLocalHbmOpticalController$LocalHbmStatus = iArr;
            try {
                iArr[LocalHbmStatus.LOCAL_HBM_MODE_OFF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$server$biometrics$sensors$fingerprint$SemFpLocalHbmOpticalController$LocalHbmStatus[LocalHbmStatus.LOCAL_HBM_MODE_ON_SOURCE_OFF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$server$biometrics$sensors$fingerprint$SemFpLocalHbmOpticalController$LocalHbmStatus[LocalHbmStatus.LOCAL_HBM_MODE_ON_SOURCE_ON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum LocalHbmStatus {
        LOCAL_HBM_MODE_OFF("0"),
        LOCAL_HBM_MODE_ON_SOURCE_OFF("1"),
        LOCAL_HBM_MODE_ON_SOURCE_ON("2");

        private String value;

        LocalHbmStatus(String str) {
            this.value = str;
        }

        public String getString() {
            return this.value;
        }
    }
}
