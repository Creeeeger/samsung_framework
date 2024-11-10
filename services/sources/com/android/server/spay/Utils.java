package com.android.server.spay;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.UserHandle;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public abstract class Utils {
    public static ArrayList mRegisteredUid = new ArrayList();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0069 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0075 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.io.FileInputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] readFile(java.lang.String r7) {
        /*
            java.lang.String r0 = "Error closing InputStream"
            java.io.File r1 = new java.io.File
            r1.<init>(r7)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "In readFile - Path "
            r2.append(r3)
            r2.append(r7)
            java.lang.String r7 = r2.toString()
            java.lang.String r2 = "com.android.server.spay.Utils"
            android.util.Log.d(r2, r7)
            r7 = 0
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L60
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L5c java.lang.Exception -> L60
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L72
            r4.<init>()     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L72
            java.lang.String r5 = "File Read - Length = "
            r4.append(r5)     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L72
            long r5 = r1.length()     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L72
            r4.append(r5)     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L72
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L72
            android.util.Log.d(r2, r4)     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L72
            long r4 = r1.length()     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L72
            int r1 = (int) r4     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L72
            byte[] r4 = new byte[r1]     // Catch: java.lang.Exception -> L59 java.lang.Throwable -> L72
            int r5 = r3.read(r4)     // Catch: java.lang.Exception -> L57 java.lang.Throwable -> L72
            if (r5 == r1) goto L4e
            java.lang.String r1 = "File Read Failed"
            android.util.Log.d(r2, r1)     // Catch: java.lang.Exception -> L57 java.lang.Throwable -> L72
            goto L4f
        L4e:
            r7 = r4
        L4f:
            r3.close()     // Catch: java.io.IOException -> L53
            goto L71
        L53:
            android.util.Log.d(r2, r0)
            goto L71
        L57:
            r7 = move-exception
            goto L64
        L59:
            r1 = move-exception
            r4 = r7
            goto L63
        L5c:
            r1 = move-exception
            r3 = r7
            r7 = r1
            goto L73
        L60:
            r1 = move-exception
            r3 = r7
            r4 = r3
        L63:
            r7 = r1
        L64:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L72
            if (r3 == 0) goto L70
            r3.close()     // Catch: java.io.IOException -> L6d
            goto L70
        L6d:
            android.util.Log.d(r2, r0)
        L70:
            r7 = r4
        L71:
            return r7
        L72:
            r7 = move-exception
        L73:
            if (r3 == 0) goto L7c
            r3.close()     // Catch: java.io.IOException -> L79
            goto L7c
        L79:
            android.util.Log.d(r2, r0)
        L7c:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.spay.Utils.readFile(java.lang.String):byte[]");
    }

    public static boolean deleteDirectory(File file) {
        File[] listFiles;
        if (file.exists() && (listFiles = file.listFiles()) != null) {
            for (int i = 0; i < listFiles.length; i++) {
                if (listFiles[i].isDirectory()) {
                    deleteDirectory(listFiles[i]);
                } else {
                    listFiles[i].delete();
                }
            }
        }
        return file.delete();
    }

    public static boolean backgroundWhitelist(Context context, String str) {
        return backgroundWhitelist(context, str, false);
    }

    public static boolean backgroundWhitelist(Context context, String str, boolean z) {
        Log.i("com.android.server.spay.Utils", "backgroundWhitelist called, fromInit: " + z);
        if (str == null || (!"com.samsung.android.spay".equals(str) && !"com.samsung.android.spayfw".equals(str) && !"com.samsung.android.spaymini".equals(str) && !"com.samsung.android.samsungpay.gear".equals(str) && !"com.samsung.android.rajaampat".equals(str))) {
            Log.e("com.android.server.spay.Utils", "backgroundWhitelist: bad packageName: " + str);
            return false;
        }
        if (!hasValidSignature(context, str)) {
            Log.e("com.android.server.spay.Utils", "backgroundWhitelist: bad signature or not found: " + str);
            return false;
        }
        try {
            int i = context.getPackageManager().getApplicationInfo(str, 0).uid;
            String num = Integer.toString(i);
            if (i < 1000 || num == null) {
                Log.e("com.android.server.spay.Utils", "backgroundWhitelist: bad uid: " + i + ", uidString: " + num);
                return false;
            }
            Log.d("com.android.server.spay.Utils", "mRegisteredUid: " + mRegisteredUid.toString() + ", uidString: " + num);
            if (mRegisteredUid.contains(num)) {
                Log.d("com.android.server.spay.Utils", "uid already added");
                return true;
            }
            ActivityManager.getService().backgroundAllowlistUid(i);
            if (!z) {
                mRegisteredUid.add(num);
            }
            Log.d("com.android.server.spay.Utils", "call backgroundWhitelistUid done");
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("com.android.server.spay.Utils", "backgroundWhitelistUid exception " + e.toString());
            return false;
        }
    }

    public static boolean sendSecureUIAbortIntent(Context context) {
        Log.d("com.android.server.spay.Utils", "sendSecureUIAbortIntent");
        Intent intent = new Intent();
        intent.setAction("com.qualcomm.qti.services.secureui.action.ACTION_SUI_ABORT_MSG");
        intent.setPackage("com.qualcomm.qti.services.secureui");
        context.sendBroadcastAsUser(intent, UserHandle.CURRENT);
        return true;
    }

    public static boolean hasValidSignature(Context context, String str) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager.getPackageInfo("android", 64).signatures[0].equals(packageManager.getPackageInfo(str, 64).signatures[0])) {
                Log.d("com.android.server.spay.Utils", "hasValidSignature, VALID : " + str);
                return true;
            }
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            Log.e("com.android.server.spay.Utils", "hasValidSignature, exception " + e.toString());
        }
        return false;
    }
}
