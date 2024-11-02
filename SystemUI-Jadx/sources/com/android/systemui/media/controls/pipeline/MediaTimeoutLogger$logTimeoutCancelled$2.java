package com.android.systemui.media.controls.pipeline;

import androidx.core.provider.FontProvider$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogMessage;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
final class MediaTimeoutLogger$logTimeoutCancelled$2 extends Lambda implements Function1 {
    public static final MediaTimeoutLogger$logTimeoutCancelled$2 INSTANCE = new MediaTimeoutLogger$logTimeoutCancelled$2();

    public MediaTimeoutLogger$logTimeoutCancelled$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        LogMessage logMessage = (LogMessage) obj;
        return FontProvider$$ExternalSyntheticOutline0.m("timeout cancelled for ", logMessage.getStr1(), ", reason: ", logMessage.getStr2());
    }
}
