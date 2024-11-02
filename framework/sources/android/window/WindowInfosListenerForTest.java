package android.window;

import android.graphics.Rect;
import android.graphics.RectF;
import android.os.IBinder;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import android.view.InputWindowHandle;
import android.window.WindowInfosListener;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.function.Consumer;

/* loaded from: classes4.dex */
public class WindowInfosListenerForTest {
    private static final String TAG = "WindowInfosListenerForTest";
    private ArrayMap<Consumer<List<WindowInfo>>, WindowInfosListener> mListeners = new ArrayMap<>();

    /* loaded from: classes4.dex */
    public static class WindowInfo {
        public final Rect bounds;
        public final int displayId;
        public final boolean isTrustedOverlay;
        public final boolean isVisible;
        public final String name;
        public final IBinder windowToken;

        WindowInfo(IBinder windowToken, String name, int displayId, Rect bounds, int inputConfig) {
            this.windowToken = windowToken;
            this.name = name;
            this.displayId = displayId;
            this.bounds = bounds;
            this.isTrustedOverlay = (inputConfig & 256) != 0;
            this.isVisible = (inputConfig & 2) == 0;
        }
    }

    /* renamed from: android.window.WindowInfosListenerForTest$1 */
    /* loaded from: classes4.dex */
    class AnonymousClass1 extends WindowInfosListener {
        final /* synthetic */ CountDownLatch val$calledWithInitialState;
        final /* synthetic */ Consumer val$consumer;

        AnonymousClass1(CountDownLatch countDownLatch, Consumer consumer) {
            calledWithInitialState = countDownLatch;
            consumer = consumer;
        }

        @Override // android.window.WindowInfosListener
        public void onWindowInfosChanged(InputWindowHandle[] windowHandles, WindowInfosListener.DisplayInfo[] displayInfos) {
            try {
                calledWithInitialState.await();
            } catch (InterruptedException e) {
                Log.e(WindowInfosListenerForTest.TAG, "Exception thrown while waiting for listener to be called with initial state");
            }
            consumer.accept(WindowInfosListenerForTest.buildWindowInfos(windowHandles, displayInfos));
        }
    }

    public void addWindowInfosListener(Consumer<List<WindowInfo>> consumer) {
        CountDownLatch calledWithInitialState = new CountDownLatch(1);
        AnonymousClass1 listener = new WindowInfosListener() { // from class: android.window.WindowInfosListenerForTest.1
            final /* synthetic */ CountDownLatch val$calledWithInitialState;
            final /* synthetic */ Consumer val$consumer;

            AnonymousClass1(CountDownLatch calledWithInitialState2, Consumer consumer2) {
                calledWithInitialState = calledWithInitialState2;
                consumer = consumer2;
            }

            @Override // android.window.WindowInfosListener
            public void onWindowInfosChanged(InputWindowHandle[] windowHandles, WindowInfosListener.DisplayInfo[] displayInfos) {
                try {
                    calledWithInitialState.await();
                } catch (InterruptedException e) {
                    Log.e(WindowInfosListenerForTest.TAG, "Exception thrown while waiting for listener to be called with initial state");
                }
                consumer.accept(WindowInfosListenerForTest.buildWindowInfos(windowHandles, displayInfos));
            }
        };
        this.mListeners.put(consumer2, listener);
        Pair<InputWindowHandle[], WindowInfosListener.DisplayInfo[]> initialState = listener.register();
        consumer2.accept(buildWindowInfos(initialState.first, initialState.second));
        calledWithInitialState2.countDown();
    }

    public void removeWindowInfosListener(Consumer<List<WindowInfo>> consumer) {
        WindowInfosListener listener = this.mListeners.remove(consumer);
        if (listener == null) {
            return;
        }
        listener.unregister();
    }

    public static List<WindowInfo> buildWindowInfos(InputWindowHandle[] windowHandles, WindowInfosListener.DisplayInfo[] displayInfos) {
        ArrayList<WindowInfo> windowInfos = new ArrayList<>(windowHandles.length);
        SparseArray<WindowInfosListener.DisplayInfo> displayInfoById = new SparseArray<>(displayInfos.length);
        for (WindowInfosListener.DisplayInfo displayInfo : displayInfos) {
            displayInfoById.put(displayInfo.mDisplayId, displayInfo);
        }
        RectF tmp = new RectF();
        for (InputWindowHandle handle : windowHandles) {
            Rect bounds = new Rect(handle.frameLeft, handle.frameTop, handle.frameRight, handle.frameBottom);
            WindowInfosListener.DisplayInfo display = displayInfoById.get(handle.displayId);
            if (display != null) {
                tmp.set(bounds);
                display.mTransform.mapRect(tmp);
                tmp.round(bounds);
            }
            windowInfos.add(new WindowInfo(handle.getWindowToken(), handle.name, handle.displayId, bounds, handle.inputConfig));
        }
        return windowInfos;
    }
}
