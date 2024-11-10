package com.android.server.power;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import com.android.server.location.gnss.hal.GnssNative;
import com.android.server.power.AbuseWakeLockDetector;
import com.android.server.power.PowerManagerService;
import com.android.server.wm.WindowManagerService;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* loaded from: classes3.dex */
public class AbuseWakeLockDetector {
    public static final String[] SEC_APP_PREFIX = {"com.sec.", "com.samsung."};
    public final ActivityManager mAm;
    public final Callback mCallback;
    public final Context mContext;
    public boolean mIsAbuseWakeLockFound;
    public final Object mLock;
    public final PackageManager mPm;
    public final WindowManagerService mWms;

    /* loaded from: classes3.dex */
    public interface Callback {
        void onAbuseWakeLockAdded(List list);

        void onAbuseWakeLockRemoved();
    }

    public AbuseWakeLockDetector(Object obj, Context context, Callback callback, WindowManagerService windowManagerService) {
        this.mContext = context;
        this.mLock = obj;
        this.mPm = context.getPackageManager();
        this.mAm = (ActivityManager) context.getSystemService("activity");
        this.mWms = windowManagerService;
        this.mCallback = callback;
    }

    public void handleAbuseWakelockWhenUserActivityChanged(ArrayList arrayList) {
        synchronized (this.mLock) {
            if (!this.mIsAbuseWakeLockFound && !arrayList.isEmpty()) {
                List list = (List) arrayList.stream().filter(new Predicate() { // from class: com.android.server.power.AbuseWakeLockDetector$$ExternalSyntheticLambda0
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean isScreenLock;
                        isScreenLock = AbuseWakeLockDetector.isScreenLock((PowerManagerService.WakeLock) obj);
                        return isScreenLock;
                    }
                }).map(new Function() { // from class: com.android.server.power.AbuseWakeLockDetector$$ExternalSyntheticLambda1
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        AbuseWakeLockDetector.WakeLockInfoPair lambda$handleAbuseWakelockWhenUserActivityChanged$0;
                        lambda$handleAbuseWakelockWhenUserActivityChanged$0 = AbuseWakeLockDetector.lambda$handleAbuseWakelockWhenUserActivityChanged$0((PowerManagerService.WakeLock) obj);
                        return lambda$handleAbuseWakelockWhenUserActivityChanged$0;
                    }
                }).collect(Collectors.toList());
                final ArrayList visibleWinSurfacePkgList = this.mWms.getVisibleWinSurfacePkgList();
                if (visibleWinSurfacePkgList == null || visibleWinSurfacePkgList.isEmpty()) {
                    return;
                }
                List list2 = (List) list.stream().filter(new Predicate() { // from class: com.android.server.power.AbuseWakeLockDetector$$ExternalSyntheticLambda2
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean lambda$handleAbuseWakelockWhenUserActivityChanged$1;
                        lambda$handleAbuseWakelockWhenUserActivityChanged$1 = AbuseWakeLockDetector.this.lambda$handleAbuseWakelockWhenUserActivityChanged$1(visibleWinSurfacePkgList, (AbuseWakeLockDetector.WakeLockInfoPair) obj);
                        return lambda$handleAbuseWakelockWhenUserActivityChanged$1;
                    }
                }).map(new Function() { // from class: com.android.server.power.AbuseWakeLockDetector$$ExternalSyntheticLambda3
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        String str;
                        str = ((AbuseWakeLockDetector.WakeLockInfoPair) obj).packageName;
                        return str;
                    }
                }).distinct().collect(Collectors.toList());
                synchronized (this.mLock) {
                    boolean z = !list2.isEmpty();
                    this.mIsAbuseWakeLockFound = z;
                    if (z) {
                        this.mCallback.onAbuseWakeLockAdded(list2);
                    }
                }
            }
        }
    }

    public static /* synthetic */ WakeLockInfoPair lambda$handleAbuseWakelockWhenUserActivityChanged$0(PowerManagerService.WakeLock wakeLock) {
        return new WakeLockInfoPair(wakeLock.mOwnerUid, wakeLock.mPackageName);
    }

    public /* synthetic */ boolean lambda$handleAbuseWakelockWhenUserActivityChanged$1(ArrayList arrayList, WakeLockInfoPair wakeLockInfoPair) {
        return checkAppIsRunningBackground(wakeLockInfoPair.uid, wakeLockInfoPair.packageName, arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean checkAppIsRunningBackground(int r7, java.lang.String r8, java.util.ArrayList r9) {
        /*
            r6 = this;
            boolean r7 = android.os.UserHandle.isApp(r7)
            r0 = 0
            r1 = 1
            android.content.pm.PackageManager r2 = r6.mPm     // Catch: java.lang.Exception -> L49 android.content.pm.PackageManager.NameNotFoundException -> L4e
            android.content.pm.PackageInfo r2 = r2.getPackageInfo(r8, r0)     // Catch: java.lang.Exception -> L49 android.content.pm.PackageManager.NameNotFoundException -> L4e
            android.content.pm.ApplicationInfo r2 = r2.applicationInfo     // Catch: java.lang.Exception -> L49 android.content.pm.PackageManager.NameNotFoundException -> L4e
            int r2 = r2.flags     // Catch: java.lang.Exception -> L49 android.content.pm.PackageManager.NameNotFoundException -> L4e
            r2 = r2 & r1
            if (r2 == 0) goto L15
            r2 = r1
            goto L16
        L15:
            r2 = r0
        L16:
            boolean r3 = r6.isSecApp(r8)     // Catch: java.lang.Exception -> L43 android.content.pm.PackageManager.NameNotFoundException -> L46
            android.app.ActivityManager r4 = r6.mAm     // Catch: java.lang.Exception -> L3d android.content.pm.PackageManager.NameNotFoundException -> L40
            int r4 = r4.getPackageImportance(r8)     // Catch: java.lang.Exception -> L3d android.content.pm.PackageManager.NameNotFoundException -> L40
            r5 = 100
            if (r4 <= r5) goto L26
            r4 = r1
            goto L27
        L26:
            r4 = r0
        L27:
            android.content.pm.PackageManager r6 = r6.mPm     // Catch: java.lang.Exception -> L39 android.content.pm.PackageManager.NameNotFoundException -> L3b
            java.lang.String r5 = "android.permission.DEVICE_POWER"
            int r6 = r6.checkPermission(r5, r8)     // Catch: java.lang.Exception -> L39 android.content.pm.PackageManager.NameNotFoundException -> L3b
            if (r6 != 0) goto L33
            r6 = r1
            goto L34
        L33:
            r6 = r0
        L34:
            boolean r8 = r9.contains(r8)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L52 java.lang.Exception -> L68
            goto L69
        L39:
            r6 = r0
            goto L68
        L3b:
            r6 = r0
            goto L52
        L3d:
            r6 = r0
            r4 = r6
            goto L68
        L40:
            r6 = r0
            r4 = r6
            goto L52
        L43:
            r6 = r0
            r3 = r6
            goto L4c
        L46:
            r6 = r0
            r3 = r6
            goto L51
        L49:
            r6 = r0
            r2 = r6
            r3 = r2
        L4c:
            r4 = r3
            goto L68
        L4e:
            r6 = r0
            r2 = r6
            r3 = r2
        L51:
            r4 = r3
        L52:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r5 = "Process abuse wakelock; Failed to find "
            r9.append(r5)
            r9.append(r8)
            java.lang.String r8 = r9.toString()
            java.lang.String r9 = "AbuseWakeLockDetector"
            com.android.server.power.Slog.e(r9, r8)
        L68:
            r8 = r1
        L69:
            if (r4 == 0) goto L76
            if (r7 == 0) goto L76
            if (r2 != 0) goto L76
            if (r3 != 0) goto L76
            if (r8 != 0) goto L76
            if (r6 != 0) goto L76
            r0 = r1
        L76:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.power.AbuseWakeLockDetector.checkAppIsRunningBackground(int, java.lang.String, java.util.ArrayList):boolean");
    }

    public void onUserActivity() {
        if (this.mIsAbuseWakeLockFound) {
            clearAbuseWakeLockLocked();
        }
    }

    public final void clearAbuseWakeLockLocked() {
        this.mIsAbuseWakeLockFound = false;
        this.mCallback.onAbuseWakeLockRemoved();
    }

    public final boolean isSecApp(String str) {
        for (String str2 : SEC_APP_PREFIX) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isScreenLock(PowerManagerService.WakeLock wakeLock) {
        int i = wakeLock.mFlags & GnssNative.GNSS_AIDING_TYPE_ALL;
        return i == 6 || i == 10 || i == 26;
    }

    /* loaded from: classes3.dex */
    public class WakeLockInfoPair {
        public final String packageName;
        public final int uid;

        public WakeLockInfoPair(int i, String str) {
            this.uid = i;
            this.packageName = str;
        }
    }
}
