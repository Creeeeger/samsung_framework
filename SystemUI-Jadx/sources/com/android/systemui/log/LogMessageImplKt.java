package com.android.systemui.log;

import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class LogMessageImplKt {
    public static final Function1 DEFAULT_PRINTER = new Function1() { // from class: com.android.systemui.log.LogMessageImplKt$DEFAULT_PRINTER$1
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return "Unknown message: " + ((LogMessage) obj);
        }
    };
}
