package com.android.systemui.edgelighting.utils;

import android.util.Slog;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class EdgeLightingAnalytics$$ExternalSyntheticLambda1 implements Consumer {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Field field = (Field) obj;
        String str = null;
        try {
            str = (String) field.get(null);
        } catch (IllegalAccessException unused) {
        }
        if (str != null) {
            HashMap hashMap = (HashMap) EdgeLightingAnalytics.sIDMap;
            if (hashMap.containsKey(str)) {
                if (field.getName().startsWith("SID_")) {
                    Slog.d("EdgeLightingAnalytics", "Duplicated Key!! : " + field.getName() + " with " + ((String) hashMap.get(str)));
                    return;
                }
                return;
            }
            hashMap.put(str, field.getName());
        }
    }
}
