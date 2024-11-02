package com.android.systemui.qs.logging;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import androidx.core.provider.FontProvider$$ExternalSyntheticOutline0;
import androidx.fragment.app.FragmentTransaction$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.CarrierTextManagerLogger$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0;
import com.android.systemui.log.ConstantStringsLogger;
import com.android.systemui.log.ConstantStringsLoggerImpl;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.statusbar.StatusBarState;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QSLogger implements ConstantStringsLogger {
    public final /* synthetic */ ConstantStringsLoggerImpl $$delegate_0;
    public final LogBuffer buffer;

    public QSLogger(LogBuffer logBuffer, LogBuffer logBuffer2) {
        this.buffer = logBuffer;
        this.$$delegate_0 = new ConstantStringsLoggerImpl(logBuffer, "QSLog");
    }

    public static String toStateString(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return "wrong state";
                }
                return "active";
            }
            return "inactive";
        }
        return "unavailable";
    }

    @Override // com.android.systemui.log.ConstantStringsLogger
    public final void d(String str) {
        this.$$delegate_0.d(str);
    }

    @Override // com.android.systemui.log.ConstantStringsLogger
    public final void e(String str) {
        this.$$delegate_0.e(str);
    }

    public final void logAllTilesChangeListening(String str, String str2, boolean z) {
        LogLevel logLevel = LogLevel.DEBUG;
        QSLogger$logAllTilesChangeListening$2 qSLogger$logAllTilesChangeListening$2 = new Function1() { // from class: com.android.systemui.qs.logging.QSLogger$logAllTilesChangeListening$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "Tiles listening=" + logMessage.getBool1() + " in " + logMessage.getStr1() + ". " + logMessage.getStr2();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("QSLog", logLevel, qSLogger$logAllTilesChangeListening$2, null);
        obtain.setBool1(z);
        obtain.setStr1(str);
        obtain.setStr2(str2);
        logBuffer.commit(obtain);
    }

    public final void logException(final String str, Exception exc) {
        LogLevel logLevel = LogLevel.ERROR;
        Function1 function1 = new Function1() { // from class: com.android.systemui.qs.logging.QSLogger$logException$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return str;
            }
        };
        LogBuffer logBuffer = this.buffer;
        logBuffer.commit(logBuffer.obtain("QSLog", logLevel, function1, exc));
    }

    public final void logHandleClick(int i, String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        QSLogger$logHandleClick$2 qSLogger$logHandleClick$2 = new Function1() { // from class: com.android.systemui.qs.logging.QSLogger$logHandleClick$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "[" + logMessage.getStr1() + "][" + logMessage.getInt1() + "] Tile handling click.";
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("QSLog", logLevel, qSLogger$logHandleClick$2, null);
        obtain.setStr1(str);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logHandleLongClick(int i, String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        QSLogger$logHandleLongClick$2 qSLogger$logHandleLongClick$2 = new Function1() { // from class: com.android.systemui.qs.logging.QSLogger$logHandleLongClick$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "[" + logMessage.getStr1() + "][" + logMessage.getInt1() + "] Tile handling long click.";
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("QSLog", logLevel, qSLogger$logHandleLongClick$2, null);
        obtain.setStr1(str);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logHandleSecondaryClick(int i, String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        QSLogger$logHandleSecondaryClick$2 qSLogger$logHandleSecondaryClick$2 = new Function1() { // from class: com.android.systemui.qs.logging.QSLogger$logHandleSecondaryClick$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "[" + logMessage.getStr1() + "][" + logMessage.getInt1() + "] Tile handling secondary click.";
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("QSLog", logLevel, qSLogger$logHandleSecondaryClick$2, null);
        obtain.setStr1(str);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logPanelExpanded(String str, boolean z) {
        LogLevel logLevel = LogLevel.DEBUG;
        QSLogger$logPanelExpanded$2 qSLogger$logPanelExpanded$2 = new Function1() { // from class: com.android.systemui.qs.logging.QSLogger$logPanelExpanded$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return logMessage.getStr1() + " expanded=" + logMessage.getBool1();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("QSLog", logLevel, qSLogger$logPanelExpanded$2, null);
        obtain.setStr1(str);
        obtain.setBool1(z);
        logBuffer.commit(obtain);
    }

    public final void logTileAdded(String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        QSLogger$logTileAdded$2 qSLogger$logTileAdded$2 = new Function1() { // from class: com.android.systemui.qs.logging.QSLogger$logTileAdded$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PathParser$$ExternalSyntheticOutline0.m("[", ((LogMessage) obj).getStr1(), "] Tile added");
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("QSLog", logLevel, qSLogger$logTileAdded$2, null);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
    }

    public final void logTileChangeListening(String str, boolean z) {
        LogLevel logLevel = LogLevel.VERBOSE;
        QSLogger$logTileChangeListening$2 qSLogger$logTileChangeListening$2 = new Function1() { // from class: com.android.systemui.qs.logging.QSLogger$logTileChangeListening$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "[" + logMessage.getStr1() + "] Tile listening=" + logMessage.getBool1();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("QSLog", logLevel, qSLogger$logTileChangeListening$2, null);
        obtain.setBool1(z);
        obtain.setStr1(str);
        logBuffer.commit(obtain);
    }

    public final void logTileClick(int i, int i2, int i3, String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        QSLogger$logTileClick$2 qSLogger$logTileClick$2 = new Function1() { // from class: com.android.systemui.qs.logging.QSLogger$logTileClick$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                String str1 = logMessage.getStr1();
                int int1 = logMessage.getInt1();
                return FragmentTransaction$$ExternalSyntheticOutline0.m(CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0.m("[", str1, "][", int1, "] Tile clicked. StatusBarState="), logMessage.getStr2(), ". TileState=", logMessage.getStr3());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("QSLog", logLevel, qSLogger$logTileClick$2, null);
        obtain.setStr1(str);
        obtain.setInt1(i3);
        obtain.setStr2(StatusBarState.toString(i));
        obtain.setStr3(toStateString(i2));
        logBuffer.commit(obtain);
    }

    public final void logTileDestroyed(String str, String str2) {
        LogLevel logLevel = LogLevel.DEBUG;
        QSLogger$logTileDestroyed$2 qSLogger$logTileDestroyed$2 = new Function1() { // from class: com.android.systemui.qs.logging.QSLogger$logTileDestroyed$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return FontProvider$$ExternalSyntheticOutline0.m("[", logMessage.getStr1(), "] Tile destroyed. Reason: ", logMessage.getStr2());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("QSLog", logLevel, qSLogger$logTileDestroyed$2, null);
        CarrierTextManagerLogger$$ExternalSyntheticOutline0.m(obtain, str, str2, logBuffer, obtain);
    }

    public final void logTileDistributed(int i, String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        QSLogger$logTileDistributed$2 qSLogger$logTileDistributed$2 = new Function1() { // from class: com.android.systemui.qs.logging.QSLogger$logTileDistributed$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return "Adding " + logMessage.getStr1() + " to page number " + logMessage.getInt1();
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("QSLog", logLevel, qSLogger$logTileDistributed$2, null);
        obtain.setStr1(str);
        obtain.setInt1(i);
        logBuffer.commit(obtain);
    }

    public final void logTileDistributionInProgress(int i, int i2) {
        LogLevel logLevel = LogLevel.DEBUG;
        QSLogger$logTileDistributionInProgress$2 qSLogger$logTileDistributionInProgress$2 = new Function1() { // from class: com.android.systemui.qs.logging.QSLogger$logTileDistributionInProgress$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                return SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0.m("Distributing tiles: [tilesPerPageCount=", logMessage.getInt1(), "] [totalTilesCount=", logMessage.getInt2(), "]");
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("QSLog", logLevel, qSLogger$logTileDistributionInProgress$2, null);
        obtain.setInt1(i);
        obtain.setInt2(i2);
        logBuffer.commit(obtain);
    }

    public final void logTileLongClick(int i, int i2, int i3, String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        QSLogger$logTileLongClick$2 qSLogger$logTileLongClick$2 = new Function1() { // from class: com.android.systemui.qs.logging.QSLogger$logTileLongClick$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                String str1 = logMessage.getStr1();
                int int1 = logMessage.getInt1();
                return FragmentTransaction$$ExternalSyntheticOutline0.m(CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0.m("[", str1, "][", int1, "] Tile long clicked. StatusBarState="), logMessage.getStr2(), ". TileState=", logMessage.getStr3());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("QSLog", logLevel, qSLogger$logTileLongClick$2, null);
        obtain.setStr1(str);
        obtain.setInt1(i3);
        obtain.setStr2(StatusBarState.toString(i));
        obtain.setStr3(toStateString(i2));
        logBuffer.commit(obtain);
    }

    public final void logTileSecondaryClick(int i, int i2, int i3, String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        QSLogger$logTileSecondaryClick$2 qSLogger$logTileSecondaryClick$2 = new Function1() { // from class: com.android.systemui.qs.logging.QSLogger$logTileSecondaryClick$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LogMessage logMessage = (LogMessage) obj;
                String str1 = logMessage.getStr1();
                int int1 = logMessage.getInt1();
                return FragmentTransaction$$ExternalSyntheticOutline0.m(CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0.m("[", str1, "][", int1, "] Tile secondary clicked. StatusBarState="), logMessage.getStr2(), ". TileState=", logMessage.getStr3());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("QSLog", logLevel, qSLogger$logTileSecondaryClick$2, null);
        obtain.setStr1(str);
        obtain.setInt1(i3);
        obtain.setStr2(StatusBarState.toString(i));
        obtain.setStr3(toStateString(i2));
        logBuffer.commit(obtain);
    }

    public final void logTileUpdated(QSTile.State state, String str) {
        String str2;
        LogLevel logLevel = LogLevel.VERBOSE;
        QSLogger$logTileUpdated$2 qSLogger$logTileUpdated$2 = new Function1() { // from class: com.android.systemui.qs.logging.QSLogger$logTileUpdated$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                String str3;
                LogMessage logMessage = (LogMessage) obj;
                String str1 = logMessage.getStr1();
                String str22 = logMessage.getStr2();
                int int1 = logMessage.getInt1();
                String str32 = logMessage.getStr3();
                if (logMessage.getBool1()) {
                    str3 = " Activity in/out=" + logMessage.getBool2() + "/" + logMessage.getBool3();
                } else {
                    str3 = "";
                }
                StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("[", str1, "] Tile updated. Label=", str22, ". State=");
                m.append(int1);
                m.append(". Icon=");
                m.append(str32);
                m.append(".");
                m.append(str3);
                return m.toString();
            }
        };
        LogBuffer logBuffer = this.buffer;
        String str3 = null;
        LogMessage obtain = logBuffer.obtain("QSLog", logLevel, qSLogger$logTileUpdated$2, null);
        obtain.setStr1(str);
        CharSequence charSequence = state.label;
        if (charSequence != null) {
            str2 = charSequence.toString();
        } else {
            str2 = null;
        }
        obtain.setStr2(str2);
        QSTile.Icon icon = state.icon;
        if (icon != null) {
            str3 = icon.toString();
        }
        obtain.setStr3(str3);
        obtain.setInt1(state.state);
        if (state instanceof QSTile.SignalState) {
            obtain.setBool1(true);
            QSTile.SignalState signalState = (QSTile.SignalState) state;
            obtain.setBool2(signalState.activityIn);
            obtain.setBool3(signalState.activityOut);
        }
        logBuffer.commit(obtain);
    }

    @Override // com.android.systemui.log.ConstantStringsLogger
    public final void v(String str) {
        this.$$delegate_0.v(str);
    }

    @Override // com.android.systemui.log.ConstantStringsLogger
    public final void w(String str) {
        this.$$delegate_0.w(str);
    }

    public final void d(Object obj, final String str) {
        LogLevel logLevel = LogLevel.DEBUG;
        Function1 function1 = new Function1() { // from class: com.android.systemui.qs.logging.QSLogger$d$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, ": ", ((LogMessage) obj2).getStr1());
            }
        };
        LogBuffer logBuffer = this.buffer;
        LogMessage obtain = logBuffer.obtain("QSLog", logLevel, function1, null);
        obtain.setStr1(obj.toString());
        logBuffer.commit(obtain);
    }
}
