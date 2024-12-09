package com.sec.internal.ims.settings;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import java.util.HashMap;

/* loaded from: classes.dex */
public class GlobalSettingsManager {
    private static final HashMap<Integer, GlobalSettingsManager> sInstances = new HashMap<>();
    private GlobalSettingsRepo mGlobalSettingsRepo;

    private GlobalSettingsManager(Context context, int i) {
        this.mGlobalSettingsRepo = new GlobalSettingsRepo(context, i);
    }

    public static GlobalSettingsManager getInstance(Context context, int i) {
        HashMap<Integer, GlobalSettingsManager> hashMap = sInstances;
        synchronized (hashMap) {
            if (hashMap.containsKey(Integer.valueOf(i))) {
                return hashMap.get(Integer.valueOf(i));
            }
            hashMap.put(Integer.valueOf(i), new GlobalSettingsManager(context, i));
            return hashMap.get(Integer.valueOf(i));
        }
    }

    public synchronized GlobalSettingsRepo getGlobalSettings() {
        return this.mGlobalSettingsRepo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002d, code lost:
    
        if ("1".equalsIgnoreCase(r0) != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean getBoolean(java.lang.String r3, boolean r4) {
        /*
            r2 = this;
            com.sec.internal.ims.settings.GlobalSettingsRepo r2 = r2.mGlobalSettingsRepo
            java.lang.String[] r3 = new java.lang.String[]{r3}
            r0 = 0
            android.database.Cursor r2 = r2.query(r3, r0, r0)
            if (r2 == 0) goto L3e
            boolean r3 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L34
            if (r3 == 0) goto L3e
            r3 = 0
            java.lang.String r0 = r2.getString(r3)     // Catch: java.lang.Throwable -> L34
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L34
            if (r1 != 0) goto L3e
            java.lang.String r4 = "true"
            boolean r4 = r4.equalsIgnoreCase(r0)     // Catch: java.lang.Throwable -> L34
            if (r4 != 0) goto L2f
            java.lang.String r4 = "1"
            boolean r4 = r4.equalsIgnoreCase(r0)     // Catch: java.lang.Throwable -> L34
            if (r4 == 0) goto L30
        L2f:
            r3 = 1
        L30:
            r2.close()
            return r3
        L34:
            r3 = move-exception
            r2.close()     // Catch: java.lang.Throwable -> L39
            goto L3d
        L39:
            r2 = move-exception
            r3.addSuppressed(r2)
        L3d:
            throw r3
        L3e:
            if (r2 == 0) goto L43
            r2.close()
        L43:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.settings.GlobalSettingsManager.getBoolean(java.lang.String, boolean):boolean");
    }

    public String getString(String str, String str2) {
        Cursor query = this.mGlobalSettingsRepo.query(new String[]{str}, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst() && query.getString(0) != null) {
                    str2 = query.getString(0);
                }
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (query != null) {
            query.close();
        }
        return str2;
    }

    public String[] getStringArray(String str, String[] strArr) {
        Cursor query = this.mGlobalSettingsRepo.query(new String[]{str}, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    String string = query.getString(0);
                    if (!TextUtils.isEmpty(string)) {
                        String[] split = string.replaceAll("\\[|\\]|\"", "").trim().split(",");
                        query.close();
                        return split;
                    }
                }
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (query != null) {
            query.close();
        }
        return strArr;
    }

    public int getInt(String str, int i) {
        Cursor query = this.mGlobalSettingsRepo.query(new String[]{str}, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst() && !TextUtils.isEmpty(query.getString(0))) {
                    try {
                        i = Integer.parseInt(query.getString(0));
                    } catch (NumberFormatException e) {
                        e.printStackTrace();
                        query.close();
                        return i;
                    }
                }
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (query != null) {
            query.close();
        }
        return i;
    }
}
