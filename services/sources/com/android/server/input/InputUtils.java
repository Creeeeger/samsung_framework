package com.android.server.input;

/* loaded from: classes2.dex */
public abstract class InputUtils {
    public static boolean isPogoKeyboard(int i, int i2, String str) {
        return i == 1256 && i2 == 41013;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0079, code lost:
    
        if (r2 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0042, code lost:
    
        if (r2 == null) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int sysfsReadInt(java.lang.String r6, int r7) {
        /*
            java.lang.String r0 = "Failed to read int from "
            java.lang.String r1 = "InputManager"
            r2 = 0
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b java.lang.NumberFormatException -> L48 java.io.IOException -> L62
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b java.lang.NumberFormatException -> L48 java.io.IOException -> L62
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b java.lang.NumberFormatException -> L48 java.io.IOException -> L62
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b java.lang.NumberFormatException -> L48 java.io.IOException -> L62
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b java.lang.NumberFormatException -> L48 java.io.IOException -> L62
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b java.lang.NumberFormatException -> L48 java.io.IOException -> L62
            java.lang.String r2 = r3.readLine()     // Catch: java.lang.Throwable -> L20 java.lang.Exception -> L23 java.lang.NumberFormatException -> L25 java.io.IOException -> L27
            int r7 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> L20 java.lang.Exception -> L23 java.lang.NumberFormatException -> L25 java.io.IOException -> L27
            r3.close()     // Catch: java.io.IOException -> L7c
            goto L7c
        L20:
            r6 = move-exception
            r2 = r3
            goto L7d
        L23:
            r2 = r3
            goto L2b
        L25:
            r2 = r3
            goto L48
        L27:
            r2 = r3
            goto L62
        L29:
            r6 = move-exception
            goto L7d
        L2b:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L29
            r3.<init>()     // Catch: java.lang.Throwable -> L29
            r3.append(r0)     // Catch: java.lang.Throwable -> L29
            r3.append(r6)     // Catch: java.lang.Throwable -> L29
            java.lang.String r6 = ", reason: Exception"
            r3.append(r6)     // Catch: java.lang.Throwable -> L29
            java.lang.String r6 = r3.toString()     // Catch: java.lang.Throwable -> L29
            android.util.Log.d(r1, r6)     // Catch: java.lang.Throwable -> L29
            if (r2 == 0) goto L7c
        L44:
            r2.close()     // Catch: java.io.IOException -> L7c
            goto L7c
        L48:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L29
            r3.<init>()     // Catch: java.lang.Throwable -> L29
            r3.append(r0)     // Catch: java.lang.Throwable -> L29
            r3.append(r6)     // Catch: java.lang.Throwable -> L29
            java.lang.String r6 = ", reason: NumberFormatException"
            r3.append(r6)     // Catch: java.lang.Throwable -> L29
            java.lang.String r6 = r3.toString()     // Catch: java.lang.Throwable -> L29
            android.util.Log.d(r1, r6)     // Catch: java.lang.Throwable -> L29
            if (r2 == 0) goto L7c
            goto L44
        L62:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L29
            r3.<init>()     // Catch: java.lang.Throwable -> L29
            r3.append(r0)     // Catch: java.lang.Throwable -> L29
            r3.append(r6)     // Catch: java.lang.Throwable -> L29
            java.lang.String r6 = ", reason: IOException"
            r3.append(r6)     // Catch: java.lang.Throwable -> L29
            java.lang.String r6 = r3.toString()     // Catch: java.lang.Throwable -> L29
            android.util.Log.d(r1, r6)     // Catch: java.lang.Throwable -> L29
            if (r2 == 0) goto L7c
            goto L44
        L7c:
            return r7
        L7d:
            if (r2 == 0) goto L82
            r2.close()     // Catch: java.io.IOException -> L82
        L82:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.input.InputUtils.sysfsReadInt(java.lang.String, int):int");
    }
}
