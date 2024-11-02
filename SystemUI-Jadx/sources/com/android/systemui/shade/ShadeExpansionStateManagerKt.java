package com.android.systemui.shade;

import kotlin.jvm.internal.Reflection;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class ShadeExpansionStateManagerKt {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        Reflection.getOrCreateKotlinClass(ShadeExpansionStateManager.class).getSimpleName();
    }

    public static final String panelStateToString(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return String.valueOf(i);
                }
                return "OPEN";
            }
            return "OPENING";
        }
        return "CLOSED";
    }
}
