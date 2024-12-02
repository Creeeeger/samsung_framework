package com.samsung.android.biometrics.app.setting.fingerprint;

import android.hardware.fingerprint.IFingerprintService;
import android.os.Build;
import android.os.FileObserver;
import android.os.Handler;
import android.os.Looper;
import android.os.ServiceManager;
import android.util.Log;
import com.android.internal.annotations.VisibleForTesting;
import com.samsung.android.biometrics.ISemBiometricSysUiDisplayBrightnessCallback;
import com.samsung.android.biometrics.app.setting.DisplayStateManager$Injector$$ExternalSyntheticOutline0;
import com.samsung.android.biometrics.app.setting.Utils;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class DisplayBrightnessMonitor {
    private static DisplayBrightnessMonitor sInstance;

    @VisibleForTesting
    final ISemBiometricSysUiDisplayBrightnessCallback mBioSysUiDisplayBrightnessCallback;
    private final String mBrightnessFilePath;
    private int mCurrentBrightness;
    private final FileObserver mFileObserver;
    private IFingerprintService mIFingerprintService;
    private final Handler mH = new Handler(Looper.getMainLooper());
    private final List<OnBrightnessListener> mListenerList = new CopyOnWriteArrayList();

    /* renamed from: com.samsung.android.biometrics.app.setting.fingerprint.DisplayBrightnessMonitor$1, reason: invalid class name */
    final class AnonymousClass1 extends ISemBiometricSysUiDisplayBrightnessCallback.Stub {
        AnonymousClass1() {
        }

        public final void onBrightnessChanged(float f) {
            DisplayBrightnessMonitor.this.mH.removeCallbacksAndMessages(null);
            DisplayBrightnessMonitor.this.mH.post(new DisplayBrightnessMonitor$1$$ExternalSyntheticLambda0(this, f, 0));
        }
    }

    /* renamed from: com.samsung.android.biometrics.app.setting.fingerprint.DisplayBrightnessMonitor$2, reason: invalid class name */
    final class AnonymousClass2 extends FileObserver {
        AnonymousClass2(File file) {
            super(file, 2);
        }

        @Override // android.os.FileObserver
        public final void onEvent(int i, String str) {
            float brightnessFromFile = DisplayBrightnessMonitor.this.getBrightnessFromFile();
            if (brightnessFromFile != -1.0f) {
                DisplayBrightnessMonitor.this.mH.removeCallbacksAndMessages(null);
                DisplayBrightnessMonitor.this.mH.post(new DisplayBrightnessMonitor$1$$ExternalSyntheticLambda0(this, brightnessFromFile, 1));
            }
        }
    }

    public interface OnBrightnessListener {
        void onBrightnessChanged(int i);
    }

    @VisibleForTesting
    DisplayBrightnessMonitor() {
        if ("qcom".equals(Build.HARDWARE)) {
            this.mBrightnessFilePath = "/sys/class/backlight/panel0-backlight/brightness";
        } else {
            this.mBrightnessFilePath = "/sys/class/lcd/panel/device/backlight/panel/brightness";
        }
        if (Utils.Config.FEATURE_SUPPORT_DRM_PROPERTY_FOR_BRIGHTNESS) {
            this.mFileObserver = null;
            this.mBioSysUiDisplayBrightnessCallback = new AnonymousClass1();
        } else {
            this.mBioSysUiDisplayBrightnessCallback = null;
            this.mFileObserver = new AnonymousClass2(new File(this.mBrightnessFilePath));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int getBrightnessFromFile() {
        /*
            r8 = this;
            java.io.File r0 = new java.io.File
            java.lang.String r8 = r8.mBrightnessFilePath
            r0.<init>(r8)
            java.lang.String r8 = "failed to close file"
            java.lang.String r1 = "failure to read file : "
            boolean r2 = r0.exists()
            java.lang.String r3 = "BSS_DisplayBrightnessMonitor"
            r4 = 0
            if (r2 != 0) goto L1a
            java.lang.String r8 = "Invalid file info, "
            android.util.Log.d(r3, r8)
            goto L5c
        L1a:
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
            long r5 = r0.length()     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L35
            int r0 = (int) r5     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L35
            byte[] r4 = new byte[r0]     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L35
            int r0 = r2.read(r4)     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L35
            r2.close()     // Catch: java.lang.Exception -> L2e
            goto L5c
        L2e:
            r0 = move-exception
            android.util.Log.w(r3, r8, r0)
            goto L5c
        L33:
            r0 = move-exception
            goto L88
        L35:
            r0 = move-exception
            r7 = r4
            r4 = r2
            r2 = r7
            goto L3e
        L3a:
            r0 = move-exception
            goto L87
        L3c:
            r0 = move-exception
            r2 = r4
        L3e:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3a
            r5.<init>(r1)     // Catch: java.lang.Throwable -> L3a
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L3a
            r5.append(r0)     // Catch: java.lang.Throwable -> L3a
            java.lang.String r0 = r5.toString()     // Catch: java.lang.Throwable -> L3a
            android.util.Log.w(r3, r0)     // Catch: java.lang.Throwable -> L3a
            if (r4 == 0) goto L5b
            r4.close()     // Catch: java.lang.Exception -> L57
            goto L5b
        L57:
            r0 = move-exception
            android.util.Log.w(r3, r8, r0)
        L5b:
            r4 = r2
        L5c:
            if (r4 == 0) goto L85
            java.lang.String r8 = new java.lang.String
            java.nio.charset.Charset r0 = java.nio.charset.StandardCharsets.UTF_8
            r8.<init>(r4, r0)
            java.lang.String r8 = r8.trim()
            int r8 = java.lang.Integer.parseInt(r8)     // Catch: java.lang.Exception -> L7a
            java.lang.String r0 = "4"
            java.lang.String r1 = com.samsung.android.biometrics.app.setting.Utils.Config.FEATURE_CONFIG_CONTROL_AUTO_BRIGHTNESS     // Catch: java.lang.Exception -> L7a
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L7a
            if (r0 == 0) goto L79
            int r8 = r8 / 100
        L79:
            return r8
        L7a:
            r8 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "getBrightnessFromFile: "
            r0.<init>(r1)
            com.samsung.android.biometrics.app.setting.DisplayStateManager$Injector$$ExternalSyntheticOutline0.m(r8, r0, r3)
        L85:
            r8 = -1
            return r8
        L87:
            r2 = r4
        L88:
            if (r2 == 0) goto L92
            r2.close()     // Catch: java.lang.Exception -> L8e
            goto L92
        L8e:
            r1 = move-exception
            android.util.Log.w(r3, r8, r1)
        L92:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.biometrics.app.setting.fingerprint.DisplayBrightnessMonitor.getBrightnessFromFile():int");
    }

    public static DisplayBrightnessMonitor getInstance() {
        if (sInstance == null) {
            synchronized (DisplayBrightnessMonitor.class) {
                if (sInstance == null) {
                    sInstance = new DisplayBrightnessMonitor();
                }
            }
        }
        return sInstance;
    }

    private void observe(boolean z) {
        int semRegisterDisplayBrightnessCallback;
        if (!Utils.Config.FEATURE_SUPPORT_DRM_PROPERTY_FOR_BRIGHTNESS) {
            FileObserver fileObserver = this.mFileObserver;
            if (!z) {
                fileObserver.stopWatching();
                return;
            }
            fileObserver.startWatching();
            int brightnessFromFile = getBrightnessFromFile();
            if (this.mCurrentBrightness == brightnessFromFile || brightnessFromFile == -1) {
                return;
            }
            this.mCurrentBrightness = getBrightnessFromFile();
            return;
        }
        if (!z) {
            if (this.mIFingerprintService == null) {
                this.mIFingerprintService = IFingerprintService.Stub.asInterface(ServiceManager.getService("fingerprint"));
            }
            IFingerprintService iFingerprintService = this.mIFingerprintService;
            if (iFingerprintService == null) {
                Log.w("BSS_DisplayBrightnessMonitor", "IFingerprintService is NULL");
                return;
            }
            try {
                iFingerprintService.semUnregisterDisplayBrightnessCallback();
                return;
            } catch (Exception e) {
                DisplayStateManager$Injector$$ExternalSyntheticOutline0.m(e, new StringBuilder("unregisterDisplayBrightnessCallbackForOpt: "), "BSS_DisplayBrightnessMonitor");
                return;
            }
        }
        ISemBiometricSysUiDisplayBrightnessCallback iSemBiometricSysUiDisplayBrightnessCallback = this.mBioSysUiDisplayBrightnessCallback;
        if (this.mIFingerprintService == null) {
            this.mIFingerprintService = IFingerprintService.Stub.asInterface(ServiceManager.getService("fingerprint"));
        }
        IFingerprintService iFingerprintService2 = this.mIFingerprintService;
        if (iFingerprintService2 != null) {
            try {
                semRegisterDisplayBrightnessCallback = iFingerprintService2.semRegisterDisplayBrightnessCallback(iSemBiometricSysUiDisplayBrightnessCallback);
            } catch (Exception e2) {
                DisplayStateManager$Injector$$ExternalSyntheticOutline0.m(e2, new StringBuilder("registerDisplayBrightnessCallbackForOpt: "), "BSS_DisplayBrightnessMonitor");
            }
            this.mCurrentBrightness = semRegisterDisplayBrightnessCallback;
        }
        Log.w("BSS_DisplayBrightnessMonitor", "IFingerprintService is NULL");
        semRegisterDisplayBrightnessCallback = 127;
        this.mCurrentBrightness = semRegisterDisplayBrightnessCallback;
    }

    public final int getCurrentBrightness() {
        int brightnessFromFile;
        if (!Utils.Config.FEATURE_SUPPORT_DRM_PROPERTY_FOR_BRIGHTNESS && this.mCurrentBrightness != (brightnessFromFile = getBrightnessFromFile()) && brightnessFromFile != -1) {
            this.mCurrentBrightness = getBrightnessFromFile();
        }
        return this.mCurrentBrightness;
    }

    @VisibleForTesting
    protected void handleDisplayBrightnessChanged(float f) {
        int i = (int) f;
        if (Utils.DEBUG) {
            Log.d("BSS_DisplayBrightnessMonitor", "handleDisplayBrightnessChanged: " + this.mCurrentBrightness + " -> " + i);
        }
        if (this.mCurrentBrightness == i) {
            return;
        }
        this.mCurrentBrightness = i;
        Iterator it = ((CopyOnWriteArrayList) this.mListenerList).iterator();
        while (it.hasNext()) {
            ((OnBrightnessListener) it.next()).onBrightnessChanged(this.mCurrentBrightness);
        }
    }

    public final void registerListener(OnBrightnessListener onBrightnessListener) {
        if (onBrightnessListener == null) {
            return;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) this.mListenerList;
        if (!copyOnWriteArrayList.contains(onBrightnessListener)) {
            copyOnWriteArrayList.add(onBrightnessListener);
        }
        observe(true);
    }

    public final void stop() {
        ((CopyOnWriteArrayList) this.mListenerList).clear();
        this.mH.removeCallbacksAndMessages(null);
    }

    public final void unregisterListener(OnBrightnessListener onBrightnessListener) {
        if (onBrightnessListener == null) {
            return;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) this.mListenerList;
        copyOnWriteArrayList.remove(onBrightnessListener);
        if (copyOnWriteArrayList.isEmpty()) {
            this.mH.removeCallbacksAndMessages(null);
            observe(false);
        }
    }
}
