package com.android.server.pm.dex;

import com.android.internal.os.BackgroundThread;

/* loaded from: classes3.dex */
public abstract class OdsignStatsLogger {
    public static void triggerStatsWrite() {
        BackgroundThread.getExecutor().execute(new Runnable() { // from class: com.android.server.pm.dex.OdsignStatsLogger$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                OdsignStatsLogger.writeStats();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bd A[Catch: IOException -> 0x00fb, FileNotFoundException -> 0x0101, TryCatch #3 {FileNotFoundException -> 0x0101, IOException -> 0x00fb, blocks: (B:3:0x0006, B:5:0x0015, B:6:0x001a, B:8:0x0025, B:10:0x0033, B:13:0x0039, B:22:0x0067, B:25:0x0080, B:28:0x0085, B:31:0x009b, B:34:0x00a7, B:36:0x00bd, B:38:0x00c1, B:40:0x00d9, B:42:0x004a, B:45:0x0054, B:48:0x00f2), top: B:2:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void writeStats() {
        /*
            Method dump skipped, instructions count: 258
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.dex.OdsignStatsLogger.writeStats():void");
    }
}
