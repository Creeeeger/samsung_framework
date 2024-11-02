package kotlinx.coroutines;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ThreadLocalEventLoop {
    public static final ThreadLocalEventLoop INSTANCE = new ThreadLocalEventLoop();
    public static final ThreadLocal ref = new ThreadLocal();

    private ThreadLocalEventLoop() {
    }

    public static EventLoop getEventLoop$external__kotlinx_coroutines__android_common__kotlinx_coroutines() {
        ThreadLocal threadLocal = ref;
        EventLoop eventLoop = (EventLoop) threadLocal.get();
        if (eventLoop == null) {
            BlockingEventLoop blockingEventLoop = new BlockingEventLoop(Thread.currentThread());
            threadLocal.set(blockingEventLoop);
            return blockingEventLoop;
        }
        return eventLoop;
    }
}
