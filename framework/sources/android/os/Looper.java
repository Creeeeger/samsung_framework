package android.os;

import android.media.MediaMetrics;
import android.util.PerfLog;
import android.util.Printer;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;

/* loaded from: classes3.dex */
public final class Looper {
    private static final String TAG = "Looper";
    private static Looper sMainLooper;
    private static Observer sObserver;
    static final ThreadLocal<Looper> sThreadLocal = new ThreadLocal<>();
    private boolean mInLoop;
    private Printer mLogging;
    final MessageQueue mQueue;
    private boolean mSlowDeliveryDetected;
    private long mSlowDeliveryThresholdMs;
    private long mSlowDispatchThresholdMs;
    private long mTraceTag;
    private boolean mPerfLogStart = false;
    final Thread mThread = Thread.currentThread();

    /* loaded from: classes3.dex */
    public interface Observer {
        void dispatchingThrewException(Object obj, Message message, Exception exc);

        Object messageDispatchStarting();

        void messageDispatched(Object obj, Message message);
    }

    public static void prepare() {
        prepare(true);
    }

    private static void prepare(boolean quitAllowed) {
        ThreadLocal<Looper> threadLocal = sThreadLocal;
        if (threadLocal.get() != null) {
            throw new RuntimeException("Only one Looper may be created per thread");
        }
        threadLocal.set(new Looper(quitAllowed));
    }

    @Deprecated
    public static void prepareMainLooper() {
        prepare(false);
        synchronized (Looper.class) {
            if (sMainLooper != null) {
                throw new IllegalStateException("The main Looper has already been prepared.");
            }
            sMainLooper = myLooper();
        }
    }

    public static Looper getMainLooper() {
        Looper looper;
        synchronized (Looper.class) {
            looper = sMainLooper;
        }
        return looper;
    }

    public static void setObserver(Observer observer) {
        sObserver = observer;
    }

    public void setPerfLogEnable() {
        synchronized (Looper.class) {
            this.mPerfLogStart = true;
        }
    }

    public boolean isPerfLogEnable() {
        boolean z;
        synchronized (Looper.class) {
            z = this.mPerfLogStart;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x01f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean loopOnce(android.os.Looper r36, long r37, int r39) {
        /*
            Method dump skipped, instructions count: 505
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.os.Looper.loopOnce(android.os.Looper, long, int):boolean");
    }

    public static void loop() {
        Looper me = myLooper();
        if (me == null) {
            throw new RuntimeException("No Looper; Looper.prepare() wasn't called on this thread.");
        }
        if (me.mInLoop) {
            Slog.w(TAG, "Loop again would have the queued messages be executed before this one completed.");
        }
        me.mInLoop = true;
        Binder.clearCallingIdentity();
        long ident = Binder.clearCallingIdentity();
        int thresholdOverride = SystemProperties.getInt("log.looper." + Process.myUid() + MediaMetrics.SEPARATOR + Thread.currentThread().getName() + ".slow", -1);
        me.mSlowDeliveryDetected = false;
        do {
        } while (loopOnce(me, ident, thresholdOverride));
    }

    private static boolean showSlowLog(long threshold, long measureStart, long measureEnd, String what, Message msg) {
        long actualTime = measureEnd - measureStart;
        if (actualTime < threshold) {
            return false;
        }
        boolean perfLogEnable = myLooper().isPerfLogEnable();
        Slog.w(TAG, "Slow " + what + " took " + actualTime + "ms " + Thread.currentThread().getName() + " h=" + msg.target.getClass().getName() + " c=" + msg.callback + " m=" + msg.what);
        if (perfLogEnable) {
            PerfLog.d(6, " Slow" + what + " took " + actualTime + "ms " + Thread.currentThread().getName() + " h=" + msg.target.getClass().getName() + " c=" + msg.callback + " m=" + msg.what);
            return true;
        }
        return true;
    }

    public static Looper myLooper() {
        return sThreadLocal.get();
    }

    public static MessageQueue myQueue() {
        return myLooper().mQueue;
    }

    private Looper(boolean quitAllowed) {
        this.mQueue = new MessageQueue(quitAllowed);
    }

    public boolean isCurrentThread() {
        return Thread.currentThread() == this.mThread;
    }

    public void setMessageLogging(Printer printer) {
        this.mLogging = printer;
    }

    public void setTraceTag(long traceTag) {
        this.mTraceTag = traceTag;
    }

    public void setSlowLogThresholdMs(long slowDispatchThresholdMs, long slowDeliveryThresholdMs) {
        this.mSlowDispatchThresholdMs = slowDispatchThresholdMs;
        this.mSlowDeliveryThresholdMs = slowDeliveryThresholdMs;
    }

    public void quit() {
        this.mQueue.quit(false);
    }

    public void quitSafely() {
        this.mQueue.quit(true);
    }

    public Thread getThread() {
        return this.mThread;
    }

    public MessageQueue getQueue() {
        return this.mQueue;
    }

    public void dump(Printer pw, String prefix) {
        pw.println(prefix + toString());
        this.mQueue.dump(pw, prefix + "  ", null);
    }

    public void dump(Printer pw, String prefix, Handler handler) {
        pw.println(prefix + toString());
        this.mQueue.dump(pw, prefix + "  ", handler);
    }

    public void dumpDebug(ProtoOutputStream proto, long fieldId) {
        long looperToken = proto.start(fieldId);
        proto.write(1138166333441L, this.mThread.getName());
        proto.write(1112396529666L, this.mThread.getId());
        MessageQueue messageQueue = this.mQueue;
        if (messageQueue != null) {
            messageQueue.dumpDebug(proto, 1146756268035L);
        }
        proto.end(looperToken);
    }

    public String toString() {
        return "Looper (" + this.mThread.getName() + ", tid " + this.mThread.getId() + ") {" + Integer.toHexString(System.identityHashCode(this)) + "}";
    }
}
