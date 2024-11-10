package com.android.server.am.mars.filter.filter;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.util.Slog;
import com.android.server.am.mars.filter.IFilter;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class LockScreenFilter implements IFilter {
    public static String TAG = "MARs:" + LockScreenFilter.class.getSimpleName();
    public boolean isLockTypeClockFace;
    public boolean isLockTypeClockFaceSub;
    public Context mContext;
    public String mKeyguardPkg;
    public Map mKeyguardPkgMap;
    public int mKeyguardPkgUid;
    public ContentObserver mLockClockFaceObserver;
    public ContentObserver mLockClockFaceSubObserver;

    /* loaded from: classes.dex */
    public abstract class LockScreenFilterHolder {
        public static final LockScreenFilter INSTANCE = new LockScreenFilter();
    }

    public LockScreenFilter() {
        this.mContext = null;
        this.mKeyguardPkg = null;
        this.mKeyguardPkgUid = -1;
        this.mKeyguardPkgMap = new LinkedHashMap();
    }

    public static LockScreenFilter getInstance() {
        return LockScreenFilterHolder.INSTANCE;
    }

    @Override // com.android.server.am.mars.filter.IFilter
    public void init(Context context) {
        this.mContext = context;
        registerContentObserver();
        getLockClockFace();
        getLockClockFaceSub();
    }

    @Override // com.android.server.am.mars.filter.IFilter
    public void deInit() {
        unregisterContentObserver();
    }

    public final void registerContentObserver() {
        if (this.mContext != null) {
            if (this.mLockClockFaceObserver == null) {
                this.mLockClockFaceObserver = new ContentObserver(new Handler()) { // from class: com.android.server.am.mars.filter.filter.LockScreenFilter.1
                    @Override // android.database.ContentObserver
                    public void onChange(boolean z, Uri uri) {
                        LockScreenFilter.this.getLockClockFace();
                    }
                };
            }
            if (this.mLockClockFaceSubObserver == null) {
                this.mLockClockFaceSubObserver = new ContentObserver(new Handler()) { // from class: com.android.server.am.mars.filter.filter.LockScreenFilter.2
                    @Override // android.database.ContentObserver
                    public void onChange(boolean z, Uri uri) {
                        LockScreenFilter.this.getLockClockFaceSub();
                    }
                };
            }
            try {
                this.mContext.getContentResolver().registerContentObserver(Uri.parse("content://com.samsung.android.app.clockpack.provider/lock_settings/lock_clock_type"), false, this.mLockClockFaceObserver);
                this.mContext.getContentResolver().registerContentObserver(Uri.parse("content://com.samsung.android.app.clockpack.provider/lock_settings/lock_sub_clock_type"), false, this.mLockClockFaceSubObserver);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public final void unregisterContentObserver() {
        try {
            Context context = this.mContext;
            if (context != null) {
                if (this.mLockClockFaceObserver != null) {
                    context.getContentResolver().unregisterContentObserver(this.mLockClockFaceObserver);
                    this.mLockClockFaceObserver = null;
                }
                if (this.mLockClockFaceSubObserver != null) {
                    this.mContext.getContentResolver().unregisterContentObserver(this.mLockClockFaceSubObserver);
                    this.mLockClockFaceSubObserver = null;
                }
            }
        } catch (IllegalArgumentException unused) {
            Slog.e(TAG, "IllegalArgumentException occurred in unregisterContentObserver()");
        }
    }

    @Override // com.android.server.am.mars.filter.IFilter
    public int filter(String str, int i, int i2, int i3) {
        String str2;
        String str3;
        if ((this.isLockTypeClockFace || this.isLockTypeClockFaceSub) && "com.samsung.android.app.clockface".equals(str)) {
            return 13;
        }
        if (this.mKeyguardPkgUid == i2 && (str3 = this.mKeyguardPkg) != null && str3.equals(str)) {
            return 13;
        }
        return (i3 == 17 && (str2 = (String) this.mKeyguardPkgMap.get(Integer.valueOf(i2))) != null && str2.equals(str)) ? 13 : 0;
    }

    public void setKeyguardInfo(String str, int i) {
        this.mKeyguardPkg = str;
        this.mKeyguardPkgUid = i;
        if (str != null) {
            this.mKeyguardPkgMap.remove(Integer.valueOf(i));
            if (this.mKeyguardPkgMap.size() >= 5) {
                Map map = this.mKeyguardPkgMap;
                map.remove(((Map.Entry) map.entrySet().iterator().next()).getKey());
            }
            this.mKeyguardPkgMap.put(Integer.valueOf(i), str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0032 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void getLockClockFace() {
        /*
            r8 = this;
            r0 = 0
            android.content.Context r1 = r8.mContext     // Catch: java.lang.Exception -> L38
            android.content.ContentResolver r2 = r1.getContentResolver()     // Catch: java.lang.Exception -> L38
            java.lang.String r1 = "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_clock_type"
            android.net.Uri r3 = android.net.Uri.parse(r1)     // Catch: java.lang.Exception -> L38
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r1 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L38
            if (r1 == 0) goto L2f
            int r2 = r1.getCount()     // Catch: java.lang.Throwable -> L25
            if (r2 <= 0) goto L2f
            r1.moveToFirst()     // Catch: java.lang.Throwable -> L25
            int r2 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L25
            goto L30
        L25:
            r2 = move-exception
            r1.close()     // Catch: java.lang.Throwable -> L2a
            goto L2e
        L2a:
            r1 = move-exception
            r2.addSuppressed(r1)     // Catch: java.lang.Exception -> L38
        L2e:
            throw r2     // Catch: java.lang.Exception -> L38
        L2f:
            r2 = r0
        L30:
            if (r1 == 0) goto L3d
            r1.close()     // Catch: java.lang.Exception -> L36
            goto L3d
        L36:
            r1 = move-exception
            goto L3a
        L38:
            r1 = move-exception
            r2 = r0
        L3a:
            r1.printStackTrace()
        L3d:
            r1 = 40000(0x9c40, float:5.6052E-41)
            if (r2 < r1) goto L48
            r1 = 80000(0x13880, float:1.12104E-40)
            if (r2 > r1) goto L48
            r0 = 1
        L48:
            r8.isLockTypeClockFace = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.mars.filter.filter.LockScreenFilter.getLockClockFace():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0032 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void getLockClockFaceSub() {
        /*
            r8 = this;
            r0 = 0
            android.content.Context r1 = r8.mContext     // Catch: java.lang.Exception -> L38
            android.content.ContentResolver r2 = r1.getContentResolver()     // Catch: java.lang.Exception -> L38
            java.lang.String r1 = "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_sub_clock_type"
            android.net.Uri r3 = android.net.Uri.parse(r1)     // Catch: java.lang.Exception -> L38
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r1 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L38
            if (r1 == 0) goto L2f
            int r2 = r1.getCount()     // Catch: java.lang.Throwable -> L25
            if (r2 <= 0) goto L2f
            r1.moveToFirst()     // Catch: java.lang.Throwable -> L25
            int r2 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L25
            goto L30
        L25:
            r2 = move-exception
            r1.close()     // Catch: java.lang.Throwable -> L2a
            goto L2e
        L2a:
            r1 = move-exception
            r2.addSuppressed(r1)     // Catch: java.lang.Exception -> L38
        L2e:
            throw r2     // Catch: java.lang.Exception -> L38
        L2f:
            r2 = r0
        L30:
            if (r1 == 0) goto L3d
            r1.close()     // Catch: java.lang.Exception -> L36
            goto L3d
        L36:
            r1 = move-exception
            goto L3a
        L38:
            r1 = move-exception
            r2 = r0
        L3a:
            r1.printStackTrace()
        L3d:
            r1 = 40000(0x9c40, float:5.6052E-41)
            if (r2 < r1) goto L48
            r1 = 80000(0x13880, float:1.12104E-40)
            if (r2 > r1) goto L48
            r0 = 1
        L48:
            r8.isLockTypeClockFaceSub = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.mars.filter.filter.LockScreenFilter.getLockClockFaceSub():void");
    }
}
