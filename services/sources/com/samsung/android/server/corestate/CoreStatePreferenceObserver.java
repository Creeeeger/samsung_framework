package com.samsung.android.server.corestate;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class CoreStatePreferenceObserver {
    public static final String TAG = "CoreStatePreferenceObserver";
    public final Context mContext;
    public SharedPreferences mPref;
    public final Map mSharedPrefKeyTypeMap = new HashMap();
    public final Map mIntegerDefaultKeyMap = new HashMap();

    public CoreStatePreferenceObserver(Context context) {
        this.mContext = context;
        registerObservingItems();
    }

    public void registerObservingItems() {
        this.mSharedPrefKeyTypeMap.put("mw_immersive_mode", Integer.TYPE);
    }

    public int populateState(Bundle bundle, int i) {
        return (populate(bundle, this.mSharedPrefKeyTypeMap) ? 1 : 0) | 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0054 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x000a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean populate(android.os.Bundle r8, java.util.Map r9) {
        /*
            r7 = this;
            java.util.Set r0 = r9.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r1 = 0
            r2 = r1
        La:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L59
            java.lang.Object r3 = r0.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r3.getKey()
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r3 = r3.getValue()
            java.lang.Class r3 = (java.lang.Class) r3
            java.lang.Class r5 = java.lang.Integer.TYPE
            if (r3 != r5) goto La
            java.util.Map r3 = r7.mSharedPrefKeyTypeMap
            if (r9 != r3) goto L3d
            android.content.SharedPreferences r3 = r7.getSharedPreference()
            if (r3 == 0) goto L35
            int r3 = r3.getInt(r4, r1)
            goto L3e
        L35:
            java.lang.String r3 = com.samsung.android.server.corestate.CoreStatePreferenceObserver.TAG
            java.lang.String r5 = "populate: failed to get getSharedPreference"
            android.util.Slog.w(r3, r5)
        L3d:
            r3 = r1
        L3e:
            java.util.Map r5 = r7.mIntegerDefaultKeyMap
            java.lang.Integer r6 = java.lang.Integer.valueOf(r1)
            java.lang.Object r5 = r5.getOrDefault(r4, r6)
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            int r5 = r8.getInt(r4, r5)
            if (r3 == r5) goto La
            r8.putInt(r4, r3)
            r2 = 1
            goto La
        L59:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.server.corestate.CoreStatePreferenceObserver.populate(android.os.Bundle, java.util.Map):boolean");
    }

    public final SharedPreferences getSharedPreference() {
        if (this.mPref == null) {
            this.mPref = this.mContext.getSharedPreferences("multiwindow.property", 0);
        }
        return this.mPref;
    }
}
