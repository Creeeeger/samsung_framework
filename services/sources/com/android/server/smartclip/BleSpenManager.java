package com.android.server.smartclip;

import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.Log;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.hardware.secinputdev.SemInputDeviceManager;
import com.samsung.android.knox.SemPersonaManager;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

/* compiled from: SpenGestureManagerService.java */
/* loaded from: classes3.dex */
public class BleSpenManager {
    public static final String TAG = "BleSpenManager";
    public boolean mBundledRemoteSpenSupport;
    public Context mContext;
    public Handler mHandler = new Handler();
    public SemInputDeviceManager mSemInputDeviceManager;
    public boolean mUnbundledRemoteSpenSupport;

    public BleSpenManager(Context context) {
        this.mBundledRemoteSpenSupport = false;
        this.mUnbundledRemoteSpenSupport = false;
        this.mContext = context;
        this.mBundledRemoteSpenSupport = SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_BLE_SPEN");
        this.mUnbundledRemoteSpenSupport = SpenGarageSpecManager.getInstance().isUnbundledRemoteSpenSupported();
        this.mSemInputDeviceManager = (SemInputDeviceManager) this.mContext.getSystemService("SemInputDeviceManagerService");
        if (isSupportBleSpen()) {
            registerAirActionSettingObserver();
        }
    }

    public synchronized String getBleSpenAddress() {
        if (!isSupportBleSpen()) {
            Log.e(TAG, "getBleSpenAddress : BLE Spen is not supported");
            return null;
        }
        return readStringFromFile("/efs/spen/blespen_addr");
    }

    public synchronized void setBleSpenAddress(String str) {
        if (!isSupportBleSpen()) {
            Log.e(TAG, "setBleSpenAddress : BLE Spen is not supported");
        } else {
            writeStringToFile("/efs/spen/blespen_addr", str);
        }
    }

    public synchronized String getBleSpenCmfCode() {
        if (!isSupportBleSpen()) {
            Log.e(TAG, "getBleSpenCmfCode : BLE Spen is not supported");
            return null;
        }
        return readStringFromFile("/efs/spen/blespen_cmf");
    }

    public synchronized void setBleSpenCmfCode(String str) {
        if (!isSupportBleSpen()) {
            Log.e(TAG, "setBleSpenCmfCode : BLE Spen is not supported");
        } else {
            writeStringToFile("/efs/spen/blespen_cmf", str);
        }
    }

    public synchronized boolean isSupportBleSpen() {
        boolean z;
        if (!this.mBundledRemoteSpenSupport) {
            z = this.mUnbundledRemoteSpenSupport;
        }
        return z;
    }

    public synchronized void writeBleSpenCommand(String str) {
        if (!isSupportBleSpen()) {
            Log.e(TAG, "writeBleSpenCommand : BLE Spen is not supported");
            return;
        }
        try {
            this.mSemInputDeviceManager.setSpenBleChargeMode(Integer.parseInt(str));
        } catch (Exception e) {
            Log.e(TAG, "mSemInputDeviceManager.setSpenBleChargeMode: Exception:" + e);
        }
    }

    public synchronized void setSpenPdctLowSensitivityEnable() {
        try {
            this.mSemInputDeviceManager.setSpenPdctLowSensitivityEnable(1);
        } catch (Exception e) {
            Log.e(TAG, "mSemInputDeviceManager.setSpenPdctLowSensitivityEnable: Exception:" + e);
        }
    }

    public synchronized void saveBleSpenLogFile(byte[] bArr) {
        if (bArr != null) {
            String str = TAG;
            Log.i(str, "saveBleSpenLogFile : length=" + bArr.length);
            File file = new File(Environment.getDataDirectory() + "/log/spen");
            if (!file.exists() && !file.mkdirs()) {
                Log.e(str, "saveBleSpenLogFile : failed to make dirs");
            }
            makeFilePublic(file);
            String str2 = file + File.separator + "Spen_dumpState.log";
            File file2 = new File(str2);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    fileOutputStream.write(bArr);
                    makeFilePublic(file2);
                    Log.i(str, "saveBleSpenLogFile : " + str2);
                    fileOutputStream.close();
                } finally {
                }
            } catch (Throwable th) {
                Log.e(TAG, "saveBleSpenLogFile fail : " + th.toString());
            }
            return;
        }
        Log.e(TAG, "saveBleSpenLogFile : no buffer");
    }

    public final void makeFilePublic(File file) {
        if (!file.setReadable(true, false)) {
            Log.e(TAG, "saveBleSpenLogFile : failed to set readable");
        }
        if (!file.setWritable(true, false)) {
            Log.e(TAG, "saveBleSpenLogFile : failed to set writable");
        }
        if (file.setExecutable(true, false)) {
            return;
        }
        Log.e(TAG, "saveBleSpenLogFile : failed to set executable");
    }

    public synchronized void startRemoteSpenService(Context context, Bundle bundle) {
        if (!isSupportBleSpen()) {
            Log.e(TAG, "startRemoteSpenService : BLE Spen is not supported");
            return;
        }
        if (SemPersonaManager.isKioskModeEnabled(context)) {
            Log.i(TAG, "startRemoteSpenService : BLE Spen is disabled on knox container enabled mode");
            return;
        }
        try {
            Intent intent = new Intent("com.samsung.android.service.aircommand.action.REMOTE_SPEN_SERVICE");
            intent.setPackage("com.samsung.android.service.aircommand");
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            if (context.startServiceAsUser(intent, UserHandle.CURRENT) == null) {
                Log.e(TAG, "startRemoteSpenService : failed to launch the service");
            }
        } catch (IllegalStateException | SecurityException e) {
            Log.e(TAG, "startRemoteSpenService : Failed to start BLE SPen service " + e);
        }
    }

    public synchronized void startBlindChargeService(Context context, Bundle bundle) {
        if (!isSupportBleSpen()) {
            Log.e(TAG, "startBlindChargeService : BLE Spen is not supported");
            return;
        }
        if (SemPersonaManager.isKioskModeEnabled(context)) {
            Log.i(TAG, "startBlindChargeService : BLE Spen is disabled on knox container enabled mode");
            return;
        }
        try {
            Intent intent = new Intent("com.samsung.android.service.aircommand.action.SPEN_BLIND_CHARGE_SERVICE");
            intent.setPackage("com.samsung.android.service.aircommand");
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            if (context.startServiceAsUser(intent, UserHandle.CURRENT) == null) {
                Log.e(TAG, "startBlindChargeService : failed to launch the service");
            }
        } catch (SecurityException e) {
            Log.e(TAG, "startBlindChargeService : Failed to start service " + e);
        }
    }

    public boolean isAirActionSettingEnabled() {
        return Settings.System.semGetIntForUser(this.mContext.getContentResolver(), "spen_air_action", 1, -2) != 0;
    }

    public final void registerAirActionSettingObserver() {
        this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("spen_air_action"), false, new ContentObserver(this.mHandler) { // from class: com.android.server.smartclip.BleSpenManager.1
            @Override // android.database.ContentObserver
            public void onChange(boolean z) {
                BleSpenManager.this.onAirActionSettingChanged();
            }
        }, -1);
    }

    public final void onAirActionSettingChanged() {
        boolean isAirActionSettingEnabled = isAirActionSettingEnabled();
        Log.i(TAG, "onAirActionSettingChanged : " + isAirActionSettingEnabled);
        if (isSupportBleSpen()) {
            if (isAirActionSettingEnabled) {
                startRemoteSpenService(this.mContext, null);
            } else {
                startBlindChargeService(this.mContext, null);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String readStringFromFile(java.lang.String r6) {
        /*
            r5 = this;
            r5 = 0
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.io.IOException -> L1f java.io.FileNotFoundException -> L3c
            java.io.InputStreamReader r1 = new java.io.InputStreamReader     // Catch: java.io.IOException -> L1f java.io.FileNotFoundException -> L3c
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.io.IOException -> L1f java.io.FileNotFoundException -> L3c
            r2.<init>(r6)     // Catch: java.io.IOException -> L1f java.io.FileNotFoundException -> L3c
            r1.<init>(r2)     // Catch: java.io.IOException -> L1f java.io.FileNotFoundException -> L3c
            r0.<init>(r1)     // Catch: java.io.IOException -> L1f java.io.FileNotFoundException -> L3c
            java.lang.String r6 = r0.readLine()     // Catch: java.io.IOException -> L1c java.io.FileNotFoundException -> L3c
            r0.close()     // Catch: java.io.IOException -> L18 java.io.FileNotFoundException -> L1a
            goto L54
        L18:
            r1 = move-exception
            goto L22
        L1a:
            r0 = move-exception
            goto L3e
        L1c:
            r1 = move-exception
            r6 = r5
            goto L22
        L1f:
            r1 = move-exception
            r6 = r5
            r0 = r6
        L22:
            java.lang.String r2 = com.android.server.smartclip.BleSpenManager.TAG
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "getBleSpenAddress : e="
            r3.append(r4)
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            android.util.Log.e(r2, r1)
            r0.close()     // Catch: java.io.IOException -> L54
            goto L54
        L3c:
            r0 = move-exception
            r6 = r5
        L3e:
            java.lang.String r1 = com.android.server.smartclip.BleSpenManager.TAG
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "getBleSpenAddress : file not exist. e="
            r2.append(r3)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            android.util.Log.e(r1, r0)
        L54:
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            if (r0 == 0) goto L63
            java.lang.String r6 = com.android.server.smartclip.BleSpenManager.TAG
            java.lang.String r0 = "readStringFromFile : empty file"
            android.util.Log.d(r6, r0)
            goto L64
        L63:
            r5 = r6
        L64:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.smartclip.BleSpenManager.readStringFromFile(java.lang.String):java.lang.String");
    }

    public final void writeStringToFile(String str, String str2) {
        if (str2 == null) {
            str2 = "";
        }
        BufferedWriter bufferedWriter = null;
        try {
            try {
                try {
                    File parentFile = new File(str).getParentFile();
                    if (parentFile == null) {
                        Log.e(TAG, "writeStringToFile : Parent dir is null! filePathName=" + str);
                        return;
                    }
                    if (!parentFile.isDirectory()) {
                        Log.e(TAG, "writeStringToFile : No directoy, make directoy : " + parentFile.getAbsolutePath());
                        parentFile.mkdirs();
                    }
                    if (!parentFile.canRead() && !parentFile.setReadable(true, false)) {
                        Log.e(TAG, "writeStringToFile : failed setreadable:" + parentFile.toString());
                    }
                    if (!parentFile.canExecute() && !parentFile.setExecutable(true, false)) {
                        Log.e(TAG, "writeStringToFile : failed setexecutable:" + parentFile.toString());
                    }
                    BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(str, false)));
                    try {
                        bufferedWriter2.write(str2);
                        File file = new File(str);
                        if (!file.setReadable(true, true)) {
                            Log.e(TAG, "writeStringToFile : failed setreadable:" + file.toString());
                        }
                        if (!file.setExecutable(false, true)) {
                            Log.e(TAG, "writeStringToFile : failed setexecutable:" + file.toString());
                        }
                        if (!file.setWritable(true, true)) {
                            Log.e(TAG, "writeStringToFile : failed setWritable:" + file.toString());
                        }
                        bufferedWriter2.close();
                    } catch (IOException e) {
                        e = e;
                        bufferedWriter = bufferedWriter2;
                        Log.e(TAG, "writeStringToFile : e=" + e);
                        if (bufferedWriter != null) {
                            bufferedWriter.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        bufferedWriter = bufferedWriter2;
                        if (bufferedWriter != null) {
                            try {
                                bufferedWriter.close();
                            } catch (IOException unused) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (IOException unused2) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
