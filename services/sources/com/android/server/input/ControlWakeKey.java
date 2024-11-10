package com.android.server.input;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.text.TextUtils;
import android.util.Slog;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class ControlWakeKey {
    public static String TAG = "InputManager.ControlWakeKey";
    public Context mContext;
    public HashMap mWakeKeyRefCount;
    public String mWakeKeyFilePath = "/sys/class/sec/sec_key/wakeup_keys";
    public String mWakeKeyFilePath1 = "/sys/power/volkey_wakeup";
    public String mWakeKeyFilePath2 = "/sys/class/sec/ap_pmic/volkey_wakeup";
    public String mDefaultWakeKey = "116,172";

    public ControlWakeKey(Context context) {
        this.mWakeKeyRefCount = null;
        this.mContext = context;
        this.mWakeKeyRefCount = new HashMap();
        boolean z = true;
        makeWakeKeyRefCount(true, this.mDefaultWakeKey);
        if (!this.mWakeKeyRefCount.containsKey("114") && !this.mWakeKeyRefCount.containsKey("115")) {
            z = false;
        }
        writeWakeKeyVolume(z, this.mWakeKeyFilePath1);
        writeWakeKeyVolume(z, this.mWakeKeyFilePath2);
        writeWakeKeyString(makeWakeKeyString());
    }

    public void setWakeKeyDynamicallyInternal(boolean z, String str) {
        boolean z2 = true;
        if (this.mWakeKeyRefCount.isEmpty()) {
            makeWakeKeyRefCount(true, this.mDefaultWakeKey);
        }
        makeWakeKeyRefCount(z, str);
        if (!this.mWakeKeyRefCount.containsKey("114") && !this.mWakeKeyRefCount.containsKey("115")) {
            z2 = false;
        }
        writeWakeKeyVolume(z2, this.mWakeKeyFilePath1);
        writeWakeKeyVolume(z2, this.mWakeKeyFilePath2);
        writeWakeKeyString(makeWakeKeyString());
    }

    public final void makeWakeKeyRefCount(boolean z, String str) {
        String[] split = str.split(",");
        int i = 0;
        if (z) {
            int length = split.length;
            while (i < length) {
                String trim = split[i].trim();
                int intValue = this.mWakeKeyRefCount.containsKey(trim) ? ((Integer) this.mWakeKeyRefCount.get(trim)).intValue() + 1 : 1;
                this.mWakeKeyRefCount.put(trim, Integer.valueOf(intValue));
                Slog.d(TAG, "mWakeKeyRefCount(" + trim + ") is increased: " + intValue);
                i++;
            }
            return;
        }
        int length2 = split.length;
        while (i < length2) {
            String trim2 = split[i].trim();
            if (this.mWakeKeyRefCount.containsKey(trim2)) {
                int intValue2 = ((Integer) this.mWakeKeyRefCount.get(trim2)).intValue() - 1;
                if (intValue2 <= 0) {
                    this.mWakeKeyRefCount.remove(trim2);
                    Slog.i(TAG, "keyCode is removed: " + trim2);
                } else {
                    this.mWakeKeyRefCount.put(trim2, Integer.valueOf(intValue2));
                    Slog.d(TAG, "mWakeKeyRefCount(" + trim2 + ") is decreased: " + intValue2);
                }
            }
            i++;
        }
    }

    public final String makeWakeKeyString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (!this.mWakeKeyRefCount.isEmpty()) {
            int size = this.mWakeKeyRefCount.size();
            String[] strArr = new String[size];
            this.mWakeKeyRefCount.keySet().toArray(strArr);
            for (int i = 0; i < size; i++) {
                stringBuffer.append(strArr[i]);
                stringBuffer.append(",");
            }
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
            Slog.d(TAG, "keyCodes in makeWakeKeyString is " + stringBuffer.toString());
        } else {
            Slog.d(TAG, "mWakeKeyRefCount is empty");
        }
        return new String(stringBuffer.toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0034 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void writeWakeKeyVolume(boolean r4, java.lang.String r5) {
        /*
            r3 = this;
            if (r4 == 0) goto L5
            java.lang.String r3 = "1"
            goto L7
        L5:
            java.lang.String r3 = "0"
        L7:
            java.io.File r4 = new java.io.File
            r4.<init>(r5)
            r0 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.io.FileNotFoundException -> L1b
            r1.<init>(r4)     // Catch: java.io.FileNotFoundException -> L1b
            java.lang.String r4 = com.android.server.input.ControlWakeKey.TAG     // Catch: java.io.FileNotFoundException -> L1a
            java.lang.String r0 = "FileOutputStreamvolume is passed"
            android.util.Slog.i(r4, r0)     // Catch: java.io.FileNotFoundException -> L1a
            goto L32
        L1a:
            r0 = r1
        L1b:
            java.lang.String r4 = com.android.server.input.ControlWakeKey.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "file not found: "
            r1.append(r2)
            r1.append(r5)
            java.lang.String r5 = r1.toString()
            android.util.Slog.i(r4, r5)
            r1 = r0
        L32:
            if (r1 == 0) goto L59
            byte[] r4 = r3.getBytes()     // Catch: java.io.IOException -> L52
            r1.write(r4)     // Catch: java.io.IOException -> L52
            java.lang.String r4 = com.android.server.input.ControlWakeKey.TAG     // Catch: java.io.IOException -> L52
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L52
            r5.<init>()     // Catch: java.io.IOException -> L52
            java.lang.String r0 = "fosWakeKeyvolume writing is passed "
            r5.append(r0)     // Catch: java.io.IOException -> L52
            r5.append(r3)     // Catch: java.io.IOException -> L52
            java.lang.String r3 = r5.toString()     // Catch: java.io.IOException -> L52
            android.util.Slog.i(r4, r3)     // Catch: java.io.IOException -> L52
            goto L59
        L52:
            java.lang.String r3 = com.android.server.input.ControlWakeKey.TAG
            java.lang.String r4 = "fosWakeKeyvolume writing is failed"
            android.util.Slog.i(r3, r4)
        L59:
            if (r1 == 0) goto L6d
            r1.close()     // Catch: java.io.IOException -> L66
            java.lang.String r3 = com.android.server.input.ControlWakeKey.TAG     // Catch: java.io.IOException -> L66
            java.lang.String r4 = "closing fosWakeKeyvolume is passed"
            android.util.Slog.i(r3, r4)     // Catch: java.io.IOException -> L66
            goto L6d
        L66:
            java.lang.String r3 = com.android.server.input.ControlWakeKey.TAG
            java.lang.String r4 = "closing fosWakeKeyvolume is failed"
            android.util.Slog.i(r3, r4)
        L6d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.input.ControlWakeKey.writeWakeKeyVolume(boolean, java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0031 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void writeWakeKeyString(java.lang.String r5) {
        /*
            r4 = this;
            java.io.File r0 = new java.io.File
            java.lang.String r1 = r4.mWakeKeyFilePath
            r0.<init>(r1)
            r1 = 0
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.io.FileNotFoundException -> L16
            r2.<init>(r0)     // Catch: java.io.FileNotFoundException -> L16
            java.lang.String r0 = com.android.server.input.ControlWakeKey.TAG     // Catch: java.io.FileNotFoundException -> L15
            java.lang.String r1 = "FileOutputStream is passed"
            android.util.Slog.i(r0, r1)     // Catch: java.io.FileNotFoundException -> L15
            goto L2f
        L15:
            r1 = r2
        L16:
            java.lang.String r0 = com.android.server.input.ControlWakeKey.TAG
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "file not found: "
            r2.append(r3)
            java.lang.String r4 = r4.mWakeKeyFilePath
            r2.append(r4)
            java.lang.String r4 = r2.toString()
            android.util.Slog.i(r0, r4)
            r2 = r1
        L2f:
            if (r2 == 0) goto L47
            byte[] r4 = r5.getBytes()     // Catch: java.io.IOException -> L40
            r2.write(r4)     // Catch: java.io.IOException -> L40
            java.lang.String r4 = com.android.server.input.ControlWakeKey.TAG     // Catch: java.io.IOException -> L40
            java.lang.String r5 = "fosWakeKey writing is passed"
            android.util.Slog.i(r4, r5)     // Catch: java.io.IOException -> L40
            goto L47
        L40:
            java.lang.String r4 = com.android.server.input.ControlWakeKey.TAG
            java.lang.String r5 = "fosWakeKey writing is failed"
            android.util.Slog.i(r4, r5)
        L47:
            if (r2 == 0) goto L5b
            r2.close()     // Catch: java.io.IOException -> L54
            java.lang.String r4 = com.android.server.input.ControlWakeKey.TAG     // Catch: java.io.IOException -> L54
            java.lang.String r5 = "closing fosWakeKey is passed"
            android.util.Slog.i(r4, r5)     // Catch: java.io.IOException -> L54
            goto L5b
        L54:
            java.lang.String r4 = com.android.server.input.ControlWakeKey.TAG
            java.lang.String r5 = "closing fosWakeKey is failed"
            android.util.Slog.i(r4, r5)
        L5b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.input.ControlWakeKey.writeWakeKeyString(java.lang.String):void");
    }

    public void setWakeKeyDynamically(String str, boolean z, String str2) {
        boolean z2;
        if (TextUtils.isEmpty(str)) {
            String str3 = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("setWakeKeyDynamically: pkg=");
            sb.append(str != null ? "empty" : "null");
            Slog.i(str3, sb.toString());
            return;
        }
        if (TextUtils.isEmpty(str2)) {
            String str4 = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("setWakeKeyDynamically: pkg=");
            sb2.append(str);
            sb2.append(", keyCodes=");
            sb2.append(str2 != null ? "empty" : "null");
            Slog.d(str4, sb2.toString());
            return;
        }
        int callingUid = Binder.getCallingUid();
        Slog.i(TAG, "setWakeKeyDynamically: pkg=" + str + ", uid=" + callingUid + ", keyCodes=" + str2 + ", put=" + z);
        PackageManager packageManager = this.mContext.getPackageManager();
        if (packageManager == null) {
            Slog.i(TAG, "pm is null");
            return;
        }
        String[] packagesForUid = packageManager.getPackagesForUid(callingUid);
        if (packagesForUid == null || packagesForUid.length == 0) {
            String str5 = TAG;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("packages: ");
            sb3.append(packagesForUid != null ? "empty" : "null");
            Slog.i(str5, sb3.toString());
            return;
        }
        int length = packagesForUid.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z2 = false;
                break;
            } else {
                if (str.equals(packagesForUid[i])) {
                    z2 = true;
                    break;
                }
                i++;
            }
        }
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 0);
            if (applicationInfo == null) {
                Slog.i(TAG, "appinfo is null");
                return;
            }
            if (!z2 || !applicationInfo.isPrivilegedApp()) {
                Slog.i(TAG, "uidHasPackage is " + z2 + ", appinfo.privateFlags is " + applicationInfo.privateFlags);
                if (!z2) {
                    for (String str6 : packagesForUid) {
                        Slog.d(TAG, "packages with uid " + callingUid + ": " + str6);
                    }
                }
                if (Binder.getCallingUid() != 1000) {
                    throw new SecurityException("only system app can use this method, but " + str + " is not system app");
                }
            }
            try {
                setWakeKeyDynamicallyInternal(z, str2);
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
        } catch (PackageManager.NameNotFoundException unused) {
            Slog.i(TAG, "NameNotFoundException is occured");
        }
    }
}
