package com.android.systemui.widget;

import android.content.Context;
import android.util.ArrayMap;
import android.util.Log;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SystemUIWidgetRes {
    public static final SystemUIWidgetRes sInstance = new SystemUIWidgetRes();
    public Context mContext;
    public final Map mResIds = new ArrayMap();

    private SystemUIWidgetRes() {
    }

    public static SystemUIWidgetRes getInstance(Context context) {
        SystemUIWidgetRes systemUIWidgetRes = sInstance;
        if (context != null && systemUIWidgetRes.mContext == null) {
            systemUIWidgetRes.mContext = context;
        }
        return systemUIWidgetRes;
    }

    public final int getResIdByName(String str, String str2) {
        String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str2, "#", str);
        ArrayMap arrayMap = (ArrayMap) this.mResIds;
        Integer num = (Integer) arrayMap.get(m);
        if (num != null) {
            return num.intValue();
        }
        int identifier = this.mContext.getResources().getIdentifier(str, str2, this.mContext.getPackageName());
        if (identifier <= 0) {
            Log.e("SystemUIWidgetRes", "Invalid " + str);
        } else {
            arrayMap.put(m, Integer.valueOf(identifier));
        }
        return identifier;
    }
}
