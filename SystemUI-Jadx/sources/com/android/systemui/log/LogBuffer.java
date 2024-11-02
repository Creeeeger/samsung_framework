package com.android.systemui.log;

import android.os.Trace;
import android.util.Log;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.systemui.common.buffer.RingBuffer;
import com.android.systemui.log.LogMessageImpl;
import java.io.PrintWriter;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class LogBuffer {
    private final RingBuffer buffer;
    private final BlockingQueue<LogMessage> echoMessageQueue;
    private boolean frozen;
    private final LogcatEchoTracker logcatEchoTracker;
    private final int maxSize;
    private final String name;
    private final boolean systrace;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LogLevel.values().length];
            try {
                iArr[LogLevel.VERBOSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LogLevel.DEBUG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LogLevel.INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LogLevel.WARNING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LogLevel.ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[LogLevel.WTF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public LogBuffer(String str, int i, LogcatEchoTracker logcatEchoTracker) {
        this(str, i, logcatEchoTracker, false, 8, null);
    }

    private final void dumpMessage(LogMessage logMessage, PrintWriter printWriter) {
        printWriter.print(LogMessageKt.DATE_FORMAT.format(Long.valueOf(logMessage.getTimestamp())));
        printWriter.print(" ");
        printWriter.print(logMessage.getLevel().getShortString());
        printWriter.print(" ");
        printWriter.print(logMessage.getTag());
        printWriter.print(": ");
    }

    private final void echo(LogMessage logMessage, boolean z, boolean z2) {
        if (z || z2) {
            String str = (String) logMessage.getMessagePrinter().invoke(logMessage);
            if (z2) {
                echoToSystrace(logMessage, str);
            }
            if (z) {
                echoToLogcat(logMessage, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void echoToDesiredEndpoints(LogMessage logMessage) {
        boolean z;
        if (!this.logcatEchoTracker.isBufferLoggable(this.name, logMessage.getLevel()) && !this.logcatEchoTracker.isTagLoggable(logMessage.getTag(), logMessage.getLevel())) {
            z = false;
        } else {
            z = true;
        }
        echo(logMessage, z, this.systrace);
    }

    private final void echoToLogcat(LogMessage logMessage, String str) {
        switch (WhenMappings.$EnumSwitchMapping$0[logMessage.getLevel().ordinal()]) {
            case 1:
                logMessage.getTag();
                logMessage.getException();
                return;
            case 2:
                Log.d(logMessage.getTag(), str, logMessage.getException());
                return;
            case 3:
                Log.i(logMessage.getTag(), str, logMessage.getException());
                return;
            case 4:
                Log.w(logMessage.getTag(), str, logMessage.getException());
                return;
            case 5:
                Log.e(logMessage.getTag(), str, logMessage.getException());
                return;
            case 6:
                Log.wtf(logMessage.getTag(), str, logMessage.getException());
                return;
            default:
                return;
        }
    }

    private final void echoToSystrace(LogMessage logMessage, String str) {
        if (Trace.isTagEnabled(4096L)) {
            String str2 = this.name;
            String shortString = logMessage.getLevel().getShortString();
            String tag = logMessage.getTag();
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(" - ");
            sb.append(shortString);
            sb.append(" ");
            sb.append(tag);
            Trace.instantForTrack(4096L, "UI Events", AbstractResolvableFuture$$ExternalSyntheticOutline0.m(sb, ": ", str));
        }
    }

    private final boolean getMutable() {
        if (!this.frozen && this.maxSize > 0) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ void log$default(LogBuffer logBuffer, String str, LogLevel logLevel, Function1 function1, Function1 function12, Throwable th, int i, Object obj) {
        if (obj == null) {
            if ((i & 16) != 0) {
                th = null;
            }
            LogMessage obtain = logBuffer.obtain(str, logLevel, function12, th);
            function1.invoke(obtain);
            logBuffer.commit(obtain);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: log");
    }

    public static /* synthetic */ LogMessage obtain$default(LogBuffer logBuffer, String str, LogLevel logLevel, Function1 function1, Throwable th, int i, Object obj) {
        if (obj == null) {
            if ((i & 8) != 0) {
                th = null;
            }
            return logBuffer.obtain(str, logLevel, function1, th);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: obtain");
    }

    public final synchronized void commit(LogMessage logMessage) {
        if (!getMutable()) {
            return;
        }
        BlockingQueue<LogMessage> blockingQueue = this.echoMessageQueue;
        if (blockingQueue != null && blockingQueue.remainingCapacity() > 0) {
            try {
                this.echoMessageQueue.put(logMessage);
            } catch (InterruptedException unused) {
                echoToDesiredEndpoints(logMessage);
            }
        } else {
            echoToDesiredEndpoints(logMessage);
        }
    }

    public final synchronized void dump(PrintWriter printWriter, int i) {
        int i2 = 0;
        if (i > 0) {
            i2 = Math.max(0, this.buffer.getSize() - i);
        }
        int size = this.buffer.getSize();
        while (i2 < size) {
            ((LogMessageImpl) this.buffer.get(i2)).dump(printWriter);
            i2++;
        }
    }

    public final synchronized void freeze() {
        if (!this.frozen) {
            LogMessage obtain = obtain("LogBuffer", LogLevel.DEBUG, new Function1() { // from class: com.android.systemui.log.LogBuffer$freeze$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(((LogMessage) obj).getStr1(), " frozen");
                }
            }, null);
            obtain.setStr1(this.name);
            commit(obtain);
            this.frozen = true;
        }
    }

    public final boolean getFrozen() {
        return this.frozen;
    }

    public final void log(String str, LogLevel logLevel, String str2) {
        log$default(this, str, logLevel, str2, null, 8, null);
    }

    public final synchronized LogMessage obtain(String str, LogLevel logLevel, Function1 function1, Throwable th) {
        if (!getMutable()) {
            return LogBufferKt.FROZEN_MESSAGE;
        }
        LogMessageImpl logMessageImpl = (LogMessageImpl) this.buffer.advance();
        logMessageImpl.reset(str, logLevel, System.currentTimeMillis(), function1, th);
        return logMessageImpl;
    }

    public final synchronized void unfreeze() {
        if (this.frozen) {
            this.frozen = false;
            LogMessage obtain = obtain("LogBuffer", LogLevel.DEBUG, new Function1() { // from class: com.android.systemui.log.LogBuffer$unfreeze$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(((LogMessage) obj).getStr1(), " unfrozen");
                }
            }, null);
            obtain.setStr1(this.name);
            commit(obtain);
        }
    }

    public LogBuffer(String str, int i, LogcatEchoTracker logcatEchoTracker, boolean z) {
        this.name = str;
        this.maxSize = i;
        this.logcatEchoTracker = logcatEchoTracker;
        this.systrace = z;
        this.buffer = new RingBuffer(i, new Function0() { // from class: com.android.systemui.log.LogBuffer$buffer$1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                LogMessageImpl.Factory.getClass();
                return LogMessageImpl.Factory.create();
            }
        });
        ArrayBlockingQueue arrayBlockingQueue = logcatEchoTracker.getLogInBackgroundThread() ? new ArrayBlockingQueue(10) : null;
        this.echoMessageQueue = arrayBlockingQueue;
        if (!logcatEchoTracker.getLogInBackgroundThread() || arrayBlockingQueue == null) {
            return;
        }
        String m = KeyAttributes$$ExternalSyntheticOutline0.m("LogBuffer-", str);
        final Function0 function0 = new Function0() { // from class: com.android.systemui.log.LogBuffer.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                while (true) {
                    try {
                        LogBuffer logBuffer = LogBuffer.this;
                        logBuffer.echoToDesiredEndpoints((LogMessage) logBuffer.echoMessageQueue.take());
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return Unit.INSTANCE;
                    }
                }
            }
        };
        Thread thread = new Thread() { // from class: kotlin.concurrent.ThreadsKt$thread$thread$1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                Function0.this.invoke();
            }
        };
        thread.setPriority(5);
        if (m != null) {
            thread.setName(m);
        }
        thread.start();
    }

    public final void log(String str, LogLevel logLevel, Function1 function1, Function1 function12, Throwable th) {
        LogMessage obtain = obtain(str, logLevel, function12, th);
        function1.invoke(obtain);
        commit(obtain);
    }

    public static /* synthetic */ void log$default(LogBuffer logBuffer, String str, LogLevel logLevel, String str2, Throwable th, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: log");
        }
        if ((i & 8) != 0) {
            th = null;
        }
        logBuffer.log(str, logLevel, str2, th);
    }

    public final void log(String str, LogLevel logLevel, String str2, Throwable th) {
        LogMessage obtain = obtain(str, logLevel, new Function1() { // from class: com.android.systemui.log.LogBuffer$log$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                String str1 = ((LogMessage) obj).getStr1();
                Intrinsics.checkNotNull(str1);
                return str1;
            }
        }, th);
        obtain.setStr1(str2);
        commit(obtain);
    }

    public final void log(String str, LogLevel logLevel, Function1 function1, Function1 function12) {
        LogMessage obtain = obtain(str, logLevel, function12, null);
        function1.invoke(obtain);
        commit(obtain);
    }

    public /* synthetic */ LogBuffer(String str, int i, LogcatEchoTracker logcatEchoTracker, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, logcatEchoTracker, (i2 & 8) != 0 ? true : z);
    }
}
