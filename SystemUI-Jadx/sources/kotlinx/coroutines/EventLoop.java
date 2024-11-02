package kotlinx.coroutines;

import com.samsung.android.desktopsystemui.sharedlib.keyguard.SemWallpaperColorsWrapper;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlinx.coroutines.internal.ArrayQueue;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class EventLoop extends CoroutineDispatcher {
    public static final /* synthetic */ int $r8$clinit = 0;
    public boolean shared;
    public ArrayQueue unconfinedQueue;
    public long useCount;

    public final void decrementUseCount(boolean z) {
        long j;
        long j2 = this.useCount;
        if (z) {
            j = SemWallpaperColorsWrapper.LOCKSCREEN_STATUS_BAR;
        } else {
            j = 1;
        }
        long j3 = j2 - j;
        this.useCount = j3;
        if (j3 <= 0 && this.shared) {
            shutdown();
        }
    }

    public final void dispatchUnconfined(DispatchedTask dispatchedTask) {
        ArrayQueue arrayQueue = this.unconfinedQueue;
        if (arrayQueue == null) {
            arrayQueue = new ArrayQueue();
            this.unconfinedQueue = arrayQueue;
        }
        Object[] objArr = arrayQueue.elements;
        int i = arrayQueue.tail;
        objArr[i] = dispatchedTask;
        int length = (i + 1) & (objArr.length - 1);
        arrayQueue.tail = length;
        int i2 = arrayQueue.head;
        if (length == i2) {
            int length2 = objArr.length;
            Object[] objArr2 = new Object[length2 << 1];
            ArraysKt___ArraysJvmKt.copyInto$default(objArr, objArr2, 0, i2, 0, 10);
            Object[] objArr3 = arrayQueue.elements;
            int length3 = objArr3.length;
            int i3 = arrayQueue.head;
            ArraysKt___ArraysJvmKt.copyInto$default(objArr3, objArr2, length3 - i3, 0, i3, 4);
            arrayQueue.elements = objArr2;
            arrayQueue.head = 0;
            arrayQueue.tail = length2;
        }
    }

    public final void incrementUseCount(boolean z) {
        long j;
        long j2 = this.useCount;
        if (z) {
            j = SemWallpaperColorsWrapper.LOCKSCREEN_STATUS_BAR;
        } else {
            j = 1;
        }
        this.useCount = j + j2;
        if (!z) {
            this.shared = true;
        }
    }

    public final boolean isUnconfinedLoopActive() {
        if (this.useCount >= SemWallpaperColorsWrapper.LOCKSCREEN_STATUS_BAR) {
            return true;
        }
        return false;
    }

    public long processNextEvent() {
        if (!processUnconfinedEvent()) {
            return Long.MAX_VALUE;
        }
        return 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v0 */
    public final boolean processUnconfinedEvent() {
        ArrayQueue arrayQueue = this.unconfinedQueue;
        if (arrayQueue == null) {
            return false;
        }
        int i = arrayQueue.head;
        DispatchedTask dispatchedTask = null;
        if (i != arrayQueue.tail) {
            ?? r2 = arrayQueue.elements;
            ?? r5 = r2[i];
            r2[i] = 0;
            arrayQueue.head = (i + 1) & (r2.length - 1);
            dispatchedTask = r5;
        }
        DispatchedTask dispatchedTask2 = dispatchedTask;
        if (dispatchedTask2 == null) {
            return false;
        }
        dispatchedTask2.run();
        return true;
    }

    public void shutdown() {
    }
}
