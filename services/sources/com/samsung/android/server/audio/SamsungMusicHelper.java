package com.samsung.android.server.audio;

/* loaded from: classes2.dex */
public abstract class SamsungMusicHelper {
    /* JADX WARN: Removed duplicated region for block: B:24:0x007a A[Catch: Exception -> 0x0089, TRY_ENTER, TRY_LEAVE, TryCatch #3 {Exception -> 0x0089, blocks: (B:20:0x0053, B:24:0x007a, B:29:0x0088, B:34:0x0085, B:36:0x0059, B:39:0x0060, B:22:0x0072, B:31:0x0080), top: B:19:0x0053, inners: #0, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isScreenOffMusicEnabled(android.content.Context r9) {
        /*
            android.content.ContentResolver r0 = r9.getContentResolver()
            android.content.pm.PackageManager r1 = r9.getPackageManager()
            java.lang.String r2 = "com.sec.android.app.music.shared"
            r6 = 0
            android.content.pm.ProviderInfo r1 = r1.resolveContentProvider(r2, r6)
            r7 = 1
            if (r1 == 0) goto L14
            r1 = r7
            goto L15
        L14:
            r1 = r6
        L15:
            android.content.pm.PackageManager r9 = r9.getPackageManager()
            java.lang.String r3 = "com.samsung.android.app.music.chn.setting"
            android.content.pm.ProviderInfo r9 = r9.resolveContentProvider(r3, r6)
            if (r9 == 0) goto L23
            r9 = r7
            goto L24
        L23:
            r9 = r6
        L24:
            java.lang.String r8 = "AS.SamsungMusicHelper"
            if (r1 != 0) goto L30
            if (r9 != 0) goto L30
            java.lang.String r9 = "ScreenOffMusicProvider does not exist"
            android.util.Log.i(r8, r9)
            goto L8d
        L30:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.NullPointerException -> L8d
            r1.<init>()     // Catch: java.lang.NullPointerException -> L8d
            java.lang.String r4 = "content://"
            r1.append(r4)     // Catch: java.lang.NullPointerException -> L8d
            if (r9 == 0) goto L3d
            r2 = r3
        L3d:
            r1.append(r2)     // Catch: java.lang.NullPointerException -> L8d
            java.lang.String r9 = r1.toString()     // Catch: java.lang.NullPointerException -> L8d
            android.net.Uri r9 = android.net.Uri.parse(r9)     // Catch: java.lang.NullPointerException -> L8d
            java.lang.String r1 = "setting/ready_screen_off_music"
            android.net.Uri r1 = android.net.Uri.withAppendedPath(r9, r1)     // Catch: java.lang.NullPointerException -> L8d
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r9 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.Exception -> L89
            if (r9 == 0) goto L72
            int r0 = r9.getCount()     // Catch: java.lang.Throwable -> L70
            if (r0 > 0) goto L60
            goto L72
        L60:
            r9.moveToFirst()     // Catch: java.lang.Throwable -> L70
            java.lang.String r0 = r9.getString(r7)     // Catch: java.lang.Throwable -> L70
            java.lang.String r1 = "true"
            boolean r0 = r1.equals(r0)     // Catch: java.lang.Throwable -> L70
            r6 = r0
            goto L78
        L70:
            r0 = move-exception
            goto L7e
        L72:
            java.lang.String r0 = "screen off music query failed"
            android.util.Log.e(r8, r0)     // Catch: java.lang.Throwable -> L70
        L78:
            if (r9 == 0) goto L8d
            r9.close()     // Catch: java.lang.Exception -> L89
            goto L8d
        L7e:
            if (r9 == 0) goto L88
            r9.close()     // Catch: java.lang.Throwable -> L84
            goto L88
        L84:
            r9 = move-exception
            r0.addSuppressed(r9)     // Catch: java.lang.Exception -> L89
        L88:
            throw r0     // Catch: java.lang.Exception -> L89
        L89:
            r9 = move-exception
            r9.printStackTrace()
        L8d:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.server.audio.SamsungMusicHelper.isScreenOffMusicEnabled(android.content.Context):boolean");
    }
}
