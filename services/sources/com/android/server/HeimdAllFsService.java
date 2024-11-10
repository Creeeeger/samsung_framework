package com.android.server;

import android.app.usage.UsageStats;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.IInstalld;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.incremental.IncrementalManager;
import android.util.Slog;
import com.android.internal.util.IndentingPrintWriter;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
public class HeimdAllFsService {
    public static Boolean heimdAllFSSupported = null;
    public static boolean mDebugMode = true;
    public static boolean mDryrun = false;
    public final Context mContext;
    public volatile IInstalld mInstalld;
    public SortedMap mUsageStats = null;
    public List mPackagesInfo = null;
    public Thread mHeimdallFsThread = null;
    public CountDownLatch mHeimdallFsLatch = null;

    /* loaded from: classes.dex */
    enum PKG_LIST_TYPE_IDX {
        COMPRESS,
        AI_MODEL
    }

    public HeimdAllFsService(Context context) {
        this.mContext = context;
        connectInstalld();
        mDryrun = SystemProperties.get("persist.sys.heimdallfs.dryrun").equals("true");
        StringBuilder sb = new StringBuilder();
        sb.append("DEBUG: ");
        sb.append(mDebugMode ? "TRUE" : "FALSE");
        sb.append(" Dry-run: ");
        sb.append(mDryrun ? "TRUE" : "FALSE");
        sb.append(" Last-run: ");
        sb.append(SystemProperties.get("sys.heimdallfs.todayinfo"));
        Slog.i("HeimdAllFS", sb.toString());
    }

    public static boolean checkSysfsPath(String str) {
        return new File(str).exists();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a2  */
    /* JADX WARN: Type inference failed for: r5v10, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isServiceActivate() {
        /*
            Method dump skipped, instructions count: 210
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.HeimdAllFsService.isServiceActivate():boolean");
    }

    public static String getMetadata(Context context, String str, String str2) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(str, 128).metaData;
            if (bundle != null && bundle.get(str2) != null) {
                return bundle.get(str2).toString();
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x014b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0133 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.List getPackagesOnUserdata() {
        /*
            Method dump skipped, instructions count: 385
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.HeimdAllFsService.getPackagesOnUserdata():java.util.List");
    }

    public static /* synthetic */ boolean lambda$getPackagesOnUserdata$0(Path path) {
        return Files.isRegularFile(path, new LinkOption[0]);
    }

    public static /* synthetic */ boolean lambda$getPackagesOnUserdata$1(Path path) {
        return path.getFileName().toString().matches(".*\\.[ov]dex");
    }

    public static /* synthetic */ void lambda$getPackagesOnUserdata$2(Path path) {
        Slog.d("HeimdAllFS", path.toString());
    }

    public SortedMap getAppUsageStats() {
        UsageStatsManager usageStatsManager = (UsageStatsManager) this.mContext.getSystemService("usagestats");
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - 1296000000;
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(currentTimeMillis);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(j);
        List<UsageStats> queryUsageStats = usageStatsManager.queryUsageStats(2, calendar2.getTimeInMillis(), calendar.getTimeInMillis());
        TreeMap treeMap = new TreeMap();
        if (queryUsageStats != null) {
            for (UsageStats usageStats : queryUsageStats) {
                if (mDebugMode) {
                    Slog.d("HeimdAllFS", "Used package : " + usageStats.getPackageName() + " - " + usageStats.getLastTimeUsed());
                }
                treeMap.put(usageStats.getPackageName(), Long.valueOf(usageStats.getLastTimeUsed()));
            }
        }
        return treeMap;
    }

    public List getCandidatePackages(List list, SortedMap sortedMap, boolean z) {
        ArrayList arrayList = new ArrayList();
        boolean equals = SystemProperties.get("persist.sys.heimdallfs.force").equals("true");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            PackageInfo packageInfo = (PackageInfo) it.next();
            if (z && (equals || sortedMap.get(packageInfo.packageName) == null)) {
                if (mDebugMode) {
                    Slog.d("HeimdAllFS", "compressCandidate App : " + packageInfo.packageName);
                }
                arrayList.add(packageInfo);
            } else if (!z && (equals || sortedMap.get(packageInfo.packageName) != null)) {
                if (mDebugMode) {
                    Slog.d("HeimdAllFS", "de-compressCandidate App : " + packageInfo.packageName);
                }
                arrayList.add(packageInfo);
            }
        }
        return arrayList;
    }

    public final void connectInstalld() {
        this.mInstalld = IInstalld.Stub.asInterface(ServiceManager.getService("installd"));
    }

    public void doCompressAction(String str, boolean z) {
        try {
            if (mDebugMode) {
                StringBuilder sb = new StringBuilder();
                sb.append("doCompressAction: ");
                sb.append(z ? "Comp" : "Decomp");
                sb.append(": ");
                sb.append(str);
                Slog.d("HeimdAllFS", sb.toString());
            }
            if (mDryrun) {
                return;
            }
            this.mInstalld.compressFile(str, z);
        } catch (RemoteException unused) {
            Slog.w("HeimdAllFS", "Error: Compress/Decompress RemoteException, " + str);
        } catch (Exception unused2) {
            Slog.e("HeimdAllFS", "Error: Exception!! " + str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x008f A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void doCompressFilesInDir(java.lang.String r7) {
        /*
            r6 = this;
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "doCompressFilesInDir Start!! "
            r1.append(r2)
            r1.append(r7)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "HeimdAllFS"
            android.util.Slog.d(r2, r1)
            r1 = 0
            r3 = 0
            java.lang.String[] r4 = new java.lang.String[r1]     // Catch: java.io.IOException -> L56
            java.nio.file.Path r4 = java.nio.file.Paths.get(r7, r4)     // Catch: java.io.IOException -> L56
            java.nio.file.FileVisitOption[] r1 = new java.nio.file.FileVisitOption[r1]     // Catch: java.io.IOException -> L56
            java.util.stream.Stream r1 = java.nio.file.Files.walk(r4, r1)     // Catch: java.io.IOException -> L56
            com.android.server.HeimdAllFsService$$ExternalSyntheticLambda5 r4 = new com.android.server.HeimdAllFsService$$ExternalSyntheticLambda5     // Catch: java.lang.Throwable -> L4a
            r4.<init>()     // Catch: java.lang.Throwable -> L4a
            java.util.stream.Stream r4 = r1.filter(r4)     // Catch: java.lang.Throwable -> L4a
            com.android.server.HeimdAllFsService$$ExternalSyntheticLambda6 r5 = new com.android.server.HeimdAllFsService$$ExternalSyntheticLambda6     // Catch: java.lang.Throwable -> L4a
            r5.<init>()     // Catch: java.lang.Throwable -> L4a
            java.util.stream.Stream r4 = r4.filter(r5)     // Catch: java.lang.Throwable -> L4a
            java.util.stream.Collector r5 = java.util.stream.Collectors.toList()     // Catch: java.lang.Throwable -> L4a
            java.lang.Object r4 = r4.collect(r5)     // Catch: java.lang.Throwable -> L4a
            java.util.List r4 = (java.util.List) r4     // Catch: java.lang.Throwable -> L4a
            r1.close()     // Catch: java.io.IOException -> L48
            goto L6b
        L48:
            r3 = r4
            goto L56
        L4a:
            r4 = move-exception
            if (r1 == 0) goto L55
            r1.close()     // Catch: java.lang.Throwable -> L51
            goto L55
        L51:
            r1 = move-exception
            r4.addSuppressed(r1)     // Catch: java.io.IOException -> L56
        L55:
            throw r4     // Catch: java.io.IOException -> L56
        L56:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r4 = "Error while reading dir: "
            r1.append(r4)
            r1.append(r7)
            java.lang.String r7 = r1.toString()
            android.util.Slog.w(r2, r7)
            r4 = r3
        L6b:
            if (r4 == 0) goto L8f
            java.util.Iterator r7 = r4.iterator()
        L71:
            boolean r1 = r7.hasNext()
            if (r1 == 0) goto L8f
            java.lang.Object r1 = r7.next()
            java.nio.file.Path r1 = (java.nio.file.Path) r1
            java.lang.Thread r2 = r6.mHeimdallFsThread
            boolean r2 = r2.equals(r0)
            if (r2 != 0) goto L86
            goto L8f
        L86:
            java.lang.String r1 = r1.toString()
            r2 = 1
            r6.doCompressAction(r1, r2)
            goto L71
        L8f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.HeimdAllFsService.doCompressFilesInDir(java.lang.String):void");
    }

    public static /* synthetic */ boolean lambda$doCompressFilesInDir$3(Path path) {
        return Files.isRegularFile(path, new LinkOption[0]);
    }

    public static /* synthetic */ boolean lambda$doCompressFilesInDir$4(Path path) {
        return !path.getFileName().toString().matches(".*\\.(zip|gz)$");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00e8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0038 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void doCompressPackages(java.util.List r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.HeimdAllFsService.doCompressPackages(java.util.List, boolean):void");
    }

    public static /* synthetic */ boolean lambda$doCompressPackages$5(Path path) {
        return Files.isRegularFile(path, new LinkOption[0]);
    }

    public static /* synthetic */ boolean lambda$doCompressPackages$6(Path path) {
        return path.getFileName().toString().matches(".*\\.[ov]dex");
    }

    public void scanCompressedFileAction(String str, int i) {
        if (mDebugMode) {
            Slog.d("HeimdAllFS", "Scan Compressed File!! (" + i + "): " + str);
        }
        try {
            this.mInstalld.scanApkStats(str, i);
        } catch (RemoteException unused) {
            Slog.w("HeimdAllFS", "Error: scanApkStats RemoteException, " + str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x010f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void scanApkPackagesForBigdata() {
        /*
            Method dump skipped, instructions count: 337
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.HeimdAllFsService.scanApkPackagesForBigdata():void");
    }

    public static /* synthetic */ boolean lambda$scanApkPackagesForBigdata$7(Path path) {
        return Files.isRegularFile(path, new LinkOption[0]);
    }

    public static /* synthetic */ boolean lambda$scanApkPackagesForBigdata$8(Path path) {
        return path.getFileName().toString().matches(".*\\.[ov]dex");
    }

    public void start() {
        Thread thread = new Thread("HeimdAllFS") { // from class: com.android.server.HeimdAllFsService.1
            /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
            @Override // java.lang.Thread, java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 421
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.server.HeimdAllFsService.AnonymousClass1.run():void");
            }
        };
        this.mHeimdallFsThread = thread;
        thread.start();
    }

    public void waitForFinished() {
        try {
            if (this.mHeimdallFsLatch != null) {
                Slog.i("HeimdAllFS", "waitForFinished, HeimdAllLatch await");
                this.mHeimdallFsLatch.await();
                this.mHeimdallFsLatch = null;
            }
            Slog.i("HeimdAllFS", "waitForFinished, HeimdAllLatch await End");
        } catch (InterruptedException unused) {
            Slog.w("HeimdAllFS", "Interrupt while waiting for heimdallFsLatch:CountDownLatch(1)");
        }
    }

    public void abort() {
        Slog.w("HeimdAllFS", "Abort()");
        this.mHeimdallFsThread = null;
    }

    public long[] dumpPackageState(IndentingPrintWriter indentingPrintWriter, String str) {
        long[] jArr = {0, 0};
        indentingPrintWriter.println("path: " + str);
        try {
        } catch (RemoteException unused) {
            indentingPrintWriter.println("Error: getCompressedStats RemoteException, " + str);
            Slog.w("HeimdAllFS", "Error: getCompressedStats RemoteException, " + str);
        } catch (Exception unused2) {
            indentingPrintWriter.println("Error: Exception, " + str);
            Slog.w("HeimdAllFS", "Error: Exception, " + str);
        }
        if (IncrementalManager.isIncrementalPath(str)) {
            indentingPrintWriter.println("Incremental Delivery APK: SKIP! : " + str);
            return jArr;
        }
        indentingPrintWriter.print("Compressed? ");
        if (this.mInstalld.getCompressedStats(str, jArr) && jArr[0] > jArr[1]) {
            indentingPrintWriter.println("True");
            indentingPrintWriter.println("Size info: " + jArr[0] + ", " + jArr[1]);
        } else if (jArr[0] == 4303) {
            indentingPrintWriter.println("Unknown - failed to acquire installd mLock");
        } else {
            indentingPrintWriter.println("False");
        }
        return jArr;
    }
}
