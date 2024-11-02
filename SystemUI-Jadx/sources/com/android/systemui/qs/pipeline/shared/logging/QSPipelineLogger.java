package com.android.systemui.qs.pipeline.shared.logging;

import com.android.keyguard.KeyguardFMMViewController$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QSPipelineLogger {
    public final LogBuffer tileListLogBuffer;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public QSPipelineLogger(LogBuffer logBuffer) {
        this.tileListLogBuffer = logBuffer;
    }

    public final void logParsedTiles(List list, int i, boolean z) {
        LogLevel logLevel = LogLevel.DEBUG;
        QSPipelineLogger$logParsedTiles$2 qSPipelineLogger$logParsedTiles$2 = new Function1() { // from class: com.android.systemui.qs.pipeline.shared.logging.QSPipelineLogger$logParsedTiles$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                boolean bool1 = logMessage.getBool1();
                int int1 = logMessage.getInt1();
                String str1 = logMessage.getStr1();
                StringBuilder m = KeyguardFMMViewController$$ExternalSyntheticOutline0.m("Parsed tiles (default=", bool1, ", user=", int1, "): ");
                m.append(str1);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.tileListLogBuffer;
        LogMessage obtain = logBuffer.obtain("QSTileListLog", logLevel, qSPipelineLogger$logParsedTiles$2, null);
        obtain.setStr1(list.toString());
        obtain.setBool1(z);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logTilesChangedInSettings(int i, String str) {
        LogLevel logLevel = LogLevel.VERBOSE;
        QSPipelineLogger$logTilesChangedInSettings$2 qSPipelineLogger$logTilesChangedInSettings$2 = new Function1() { // from class: com.android.systemui.qs.pipeline.shared.logging.QSPipelineLogger$logTilesChangedInSettings$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "Tiles changed in settings for user " + logMessage.getInt1() + ": " + logMessage.getStr1();
            }
        };
        LogBuffer logBuffer = this.tileListLogBuffer;
        LogMessage obtain = logBuffer.obtain("QSTileListLog", logLevel, qSPipelineLogger$logTilesChangedInSettings$2, null);
        obtain.setStr1(str);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logUsingRetailTiles() {
        LogLevel logLevel = LogLevel.DEBUG;
        QSPipelineLogger$logUsingRetailTiles$2 qSPipelineLogger$logUsingRetailTiles$2 = new Function1() { // from class: com.android.systemui.qs.pipeline.shared.logging.QSPipelineLogger$logUsingRetailTiles$2
            @Override // kotlin.jvm.functions.Function1
            public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return "Using retail tiles";
            }
        };
        LogBuffer logBuffer = this.tileListLogBuffer;
        logBuffer.commit(logBuffer.obtain("QSTileListLog", logLevel, qSPipelineLogger$logUsingRetailTiles$2, null));
    }
}
