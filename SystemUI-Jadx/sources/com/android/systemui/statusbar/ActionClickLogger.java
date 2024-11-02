package com.android.systemui.statusbar;

import android.app.PendingIntent;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ActionClickLogger {
    public final LogBuffer buffer;

    public ActionClickLogger(LogBuffer logBuffer) {
        this.buffer = logBuffer;
    }

    public final void logKeyguardGone(PendingIntent pendingIntent) {
        LogLevel logLevel = LogLevel.DEBUG;
        ActionClickLogger$logKeyguardGone$2 actionClickLogger$logKeyguardGone$2 = new Function1() { // from class: com.android.systemui.statusbar.ActionClickLogger$logKeyguardGone$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("  [Action click] Keyguard dismissed, calling default handler for intent ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("ActionClickLogger", logLevel, actionClickLogger$logKeyguardGone$2, null);
        obtain.setStr1(pendingIntent.getIntent().toString());
        logBuffer.commit(obtain);
    }

    public final void logWaitingToCloseKeyguard(PendingIntent pendingIntent) {
        LogLevel logLevel = LogLevel.DEBUG;
        ActionClickLogger$logWaitingToCloseKeyguard$2 actionClickLogger$logWaitingToCloseKeyguard$2 = new Function1() { // from class: com.android.systemui.statusbar.ActionClickLogger$logWaitingToCloseKeyguard$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PathParser$$ExternalSyntheticOutline0.m("  [Action click] Intent ", ((LogMessage) obj).getStr1(), " launches an activity, dismissing keyguard first...");
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("ActionClickLogger", logLevel, actionClickLogger$logWaitingToCloseKeyguard$2, null);
        obtain.setStr1(pendingIntent.getIntent().toString());
        logBuffer.commit(obtain);
    }
}
