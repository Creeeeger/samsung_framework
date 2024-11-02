package com.android.systemui.shared.clocks;

import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogMessage;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
final class ClockRegistry$createCurrentClock$6 extends Lambda implements Function1 {
    public static final ClockRegistry$createCurrentClock$6 INSTANCE = new ClockRegistry$createCurrentClock$6();

    public ClockRegistry$createCurrentClock$6() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return PathParser$$ExternalSyntheticOutline0.m("Clock ", ((LogMessage) obj).getStr1(), " not found; using default");
    }
}
