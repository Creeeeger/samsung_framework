package com.android.server.am.mars.filter.filter;

import android.content.Context;
import android.util.ArrayMap;
import com.android.server.am.mars.filter.IFilter;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class LatestProtectedPackageFilter implements IFilter {
    public static String TAG = "MARs:" + LatestProtectedPackageFilter.class.getSimpleName();
    public Context mContext;
    public ArrayMap mLatestProtectedPackages;
    public int mProtectedAppSizeForGame;

    /* loaded from: classes.dex */
    public abstract class LatestProtectedPackageFilterHolder {
        public static final LatestProtectedPackageFilter INSTANCE = new LatestProtectedPackageFilter();
    }

    @Override // com.android.server.am.mars.filter.IFilter
    public void deInit() {
    }

    public LatestProtectedPackageFilter() {
        this.mProtectedAppSizeForGame = 0;
        this.mContext = null;
        this.mLatestProtectedPackages = new ArrayMap();
    }

    public static LatestProtectedPackageFilter getInstance() {
        return LatestProtectedPackageFilterHolder.INSTANCE;
    }

    public final void setContext(Context context) {
        this.mContext = context;
    }

    @Override // com.android.server.am.mars.filter.IFilter
    public void init(Context context) {
        setContext(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0045, code lost:
    
        if (r3 > 2) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0052 A[Catch: all -> 0x006f, TryCatch #0 {, blocks: (B:13:0x001a, B:15:0x0028, B:17:0x002e, B:26:0x0052, B:30:0x005e, B:34:0x0068, B:32:0x006a, B:39:0x0047, B:41:0x0049, B:43:0x004d, B:44:0x006d), top: B:12:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005e A[Catch: all -> 0x006f, TryCatch #0 {, blocks: (B:13:0x001a, B:15:0x0028, B:17:0x002e, B:26:0x0052, B:30:0x005e, B:34:0x0068, B:32:0x006a, B:39:0x0047, B:41:0x0049, B:43:0x004d, B:44:0x006d), top: B:12:0x001a }] */
    @Override // com.android.server.am.mars.filter.IFilter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int filter(java.lang.String r8, int r9, int r10, int r11) {
        /*
            r7 = this;
            r10 = 0
            if (r8 != 0) goto L4
            return r10
        L4:
            com.android.server.am.MARsPolicyManager r0 = com.android.server.am.MARsPolicyManager.getInstance()
            boolean r0 = r0.checkIsChinaModel()
            r1 = 11
            r2 = 15
            if (r0 == 0) goto L17
            if (r11 == r1) goto L16
            if (r11 != r2) goto L17
        L16:
            return r10
        L17:
            android.util.ArrayMap r0 = r7.mLatestProtectedPackages
            monitor-enter(r0)
            android.util.ArrayMap r3 = r7.mLatestProtectedPackages     // Catch: java.lang.Throwable -> L6f
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L6f
            java.lang.Object r9 = r3.get(r9)     // Catch: java.lang.Throwable -> L6f
            java.util.ArrayList r9 = (java.util.ArrayList) r9     // Catch: java.lang.Throwable -> L6f
            if (r9 == 0) goto L6d
            int r3 = r9.size()     // Catch: java.lang.Throwable -> L6f
            if (r3 <= 0) goto L6d
            int r3 = r9.size()     // Catch: java.lang.Throwable -> L6f
            int r4 = r3 + (-1)
            r5 = 9
            r6 = 2
            if (r11 == r5) goto L49
            if (r11 == r1) goto L45
            if (r11 == r2) goto L42
            r1 = 18
            if (r11 == r1) goto L49
            goto L4f
        L42:
            if (r3 <= r6) goto L4f
            goto L47
        L45:
            if (r3 <= r6) goto L4f
        L47:
            int r3 = r3 - r6
            goto L50
        L49:
            int r7 = r7.mProtectedAppSizeForGame     // Catch: java.lang.Throwable -> L6f
            if (r3 <= r7) goto L4f
            int r3 = r3 - r7
            goto L50
        L4f:
            r3 = r10
        L50:
            if (r11 != r2) goto L5c
            com.android.server.am.MARsPolicyManager r7 = com.android.server.am.MARsPolicyManager.getInstance()     // Catch: java.lang.Throwable -> L6f
            boolean r7 = r7.getScreenOnState()     // Catch: java.lang.Throwable -> L6f
            if (r7 == 0) goto L6d
        L5c:
            if (r4 < r3) goto L6d
            java.lang.Object r7 = r9.get(r4)     // Catch: java.lang.Throwable -> L6f
            boolean r7 = r8.equals(r7)     // Catch: java.lang.Throwable -> L6f
            if (r7 == 0) goto L6a
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6f
            return r6
        L6a:
            int r4 = r4 + (-1)
            goto L5c
        L6d:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6f
            return r10
        L6f:
            r7 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6f
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.mars.filter.filter.LatestProtectedPackageFilter.filter(java.lang.String, int, int, int):int");
    }

    public void setLatestProtectedPkg(String str, int i) {
        ArrayMap arrayMap = this.mLatestProtectedPackages;
        if (arrayMap != null) {
            synchronized (arrayMap) {
                ArrayList arrayList = (ArrayList) this.mLatestProtectedPackages.get(Integer.valueOf(i));
                if (arrayList != null) {
                    if (arrayList.contains(str)) {
                        arrayList.remove(str);
                        arrayList.add(str);
                    } else if (arrayList.size() == 6) {
                        arrayList.remove(0);
                        arrayList.add(str);
                    } else {
                        arrayList.add(str);
                    }
                } else {
                    arrayList = new ArrayList();
                    arrayList.add(str);
                }
                this.mLatestProtectedPackages.put(Integer.valueOf(i), arrayList);
            }
        }
    }

    public void setProtectAppCntForGame(int i) {
        this.mProtectedAppSizeForGame = i;
    }
}
