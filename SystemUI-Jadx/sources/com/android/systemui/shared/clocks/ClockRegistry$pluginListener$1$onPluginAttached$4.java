package com.android.systemui.shared.clocks;

import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogMessage;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
final class ClockRegistry$pluginListener$1$onPluginAttached$4 extends Lambda implements Function1 {
    public static final ClockRegistry$pluginListener$1$onPluginAttached$4 INSTANCE = new ClockRegistry$pluginListener$1$onPluginAttached$4();

    public ClockRegistry$pluginListener$1$onPluginAttached$4() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return KeyAttributes$$ExternalSyntheticOutline0.m("Skipping initial load of known clock package package: ", ((LogMessage) obj).getStr1());
    }
}
