package com.android.systemui.edgelighting.utils;

import java.lang.reflect.Field;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class EdgeLightingAnalytics$$ExternalSyntheticLambda0 implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        Field field = (Field) obj;
        if (field.getType() == String.class && (field.getName().startsWith("SID_") || field.getName().startsWith("EID_"))) {
            return true;
        }
        return false;
    }
}
