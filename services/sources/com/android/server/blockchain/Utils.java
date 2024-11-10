package com.android.server.blockchain;

import android.content.Context;
import android.content.Intent;
import android.os.UserHandle;
import android.util.Log;

/* loaded from: classes.dex */
public abstract class Utils {
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
            java.lang.String r2 = "com.android.server.blockchain.Utils"
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
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.blockchain.Utils.readFile(java.lang.String):byte[]");
    }

    public static boolean sendSecureUIAbortIntent(Context context) {
        Log.d("com.android.server.blockchain.Utils", "sendSecureUIAbortIntent");
        Intent intent = new Intent();
        intent.setAction("com.qualcomm.qti.services.secureui.action.ACTION_SUI_ABORT_MSG");
        intent.setPackage("com.qualcomm.qti.services.secureui");
        context.sendBroadcastAsUser(intent, UserHandle.CURRENT);
        return true;
    }
}
