package com.android.systemui.media.controls.pipeline;

import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogMessage;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
final class MediaTimeoutLogger$logTimeout$2 extends Lambda implements Function1 {
    public static final MediaTimeoutLogger$logTimeout$2 INSTANCE = new MediaTimeoutLogger$logTimeout$2();

    public MediaTimeoutLogger$logTimeout$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return KeyAttributes$$ExternalSyntheticOutline0.m("execute timeout for ", ((LogMessage) obj).getStr1());
    }
}
