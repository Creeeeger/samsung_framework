package androidx.asynclayoutinflater.view;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.util.Pools$SynchronizedPool;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AsyncLayoutInflater {
    public final Handler mHandler;
    public final AnonymousClass1 mHandlerCallback;
    public final InflateThread mInflateThread;
    public final BasicInflater mInflater;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.asynclayoutinflater.view.AsyncLayoutInflater$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements Handler.Callback {
        public AnonymousClass1() {
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            InflateRequest inflateRequest = (InflateRequest) message.obj;
            if (inflateRequest.view == null) {
                inflateRequest.view = inflateRequest.mInflater.inflate(inflateRequest.resid, inflateRequest.parent, false);
            }
            Executor executor = inflateRequest.mExecutor;
            if (executor != null) {
                executor.execute(new AsyncLayoutInflater$1$$ExternalSyntheticLambda0(this, inflateRequest, 0));
                return true;
            }
            AsyncLayoutInflater.triggerCallbacks(inflateRequest, AsyncLayoutInflater.this.mInflateThread);
            return true;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class BasicInflater extends LayoutInflater {
        public static final String[] sClassPrefixList = {"android.widget.", "android.webkit.", "android.app."};

        public BasicInflater(Context context) {
            super(context);
        }

        @Override // android.view.LayoutInflater
        public final LayoutInflater cloneInContext(Context context) {
            return new BasicInflater(context);
        }

        @Override // android.view.LayoutInflater
        public final View onCreateView(String str, AttributeSet attributeSet) {
            View createView;
            String[] strArr = sClassPrefixList;
            for (int i = 0; i < 3; i++) {
                try {
                    createView = createView(str, strArr[i], attributeSet);
                } catch (ClassNotFoundException unused) {
                }
                if (createView != null) {
                    return createView;
                }
            }
            return super.onCreateView(str, attributeSet);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class InflateRequest {
        public OnInflateFinishedListener callback;
        public Executor mExecutor;
        public Handler mHandler;
        public LayoutInflater mInflater;
        public ViewGroup parent;
        public int resid;
        public View view;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class InflateThread extends Thread {
        public static final InflateThread sInstance;
        public final ArrayBlockingQueue mQueue = new ArrayBlockingQueue(10);
        public final Pools$SynchronizedPool mRequestPool = new Pools$SynchronizedPool(10);

        static {
            InflateThread inflateThread = new InflateThread();
            sInstance = inflateThread;
            inflateThread.setName("AsyncLayoutInflator");
            inflateThread.start();
        }

        private InflateThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Executor executor;
            while (true) {
                try {
                    InflateRequest inflateRequest = (InflateRequest) this.mQueue.take();
                    try {
                        inflateRequest.view = inflateRequest.mInflater.inflate(inflateRequest.resid, inflateRequest.parent, false);
                    } catch (RuntimeException e) {
                        Log.w("AsyncLayoutInflater", "Failed to inflate resource in the background! Retrying on the UI thread", e);
                    }
                    if (inflateRequest.view != null && (executor = inflateRequest.mExecutor) != null) {
                        executor.execute(new AsyncLayoutInflater$1$$ExternalSyntheticLambda0(this, inflateRequest, 1));
                    } else {
                        Message.obtain(inflateRequest.mHandler, 0, inflateRequest).sendToTarget();
                    }
                } catch (InterruptedException e2) {
                    Log.w("AsyncLayoutInflater", e2);
                }
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface OnInflateFinishedListener {
        void onInflateFinished(View view, ViewGroup viewGroup);
    }

    public AsyncLayoutInflater(Context context) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.mHandlerCallback = anonymousClass1;
        this.mInflater = new BasicInflater(context);
        this.mHandler = new Handler(Looper.myLooper(), anonymousClass1);
        this.mInflateThread = InflateThread.sInstance;
    }

    public static void triggerCallbacks(InflateRequest inflateRequest, InflateThread inflateThread) {
        inflateRequest.callback.onInflateFinished(inflateRequest.view, inflateRequest.parent);
        inflateThread.getClass();
        inflateRequest.callback = null;
        inflateRequest.mInflater = null;
        inflateRequest.mHandler = null;
        inflateRequest.parent = null;
        inflateRequest.resid = 0;
        inflateRequest.view = null;
        inflateRequest.mExecutor = null;
        inflateThread.mRequestPool.release(inflateRequest);
    }

    public final void inflate(int i, ViewGroup viewGroup, OnInflateFinishedListener onInflateFinishedListener) {
        if (onInflateFinishedListener != null) {
            InflateThread inflateThread = this.mInflateThread;
            InflateRequest inflateRequest = (InflateRequest) inflateThread.mRequestPool.acquire();
            if (inflateRequest == null) {
                inflateRequest = new InflateRequest();
            }
            inflateRequest.mInflater = this.mInflater;
            inflateRequest.mHandler = this.mHandler;
            inflateRequest.resid = i;
            inflateRequest.parent = viewGroup;
            inflateRequest.callback = onInflateFinishedListener;
            inflateRequest.mExecutor = null;
            try {
                inflateThread.mQueue.put(inflateRequest);
                return;
            } catch (InterruptedException e) {
                throw new RuntimeException("Failed to enqueue async inflate request", e);
            }
        }
        throw new NullPointerException("callback argument may not be null!");
    }

    public AsyncLayoutInflater(Context context, AsyncLayoutFactory asyncLayoutFactory) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.mHandlerCallback = anonymousClass1;
        BasicInflater basicInflater = new BasicInflater(context);
        this.mInflater = basicInflater;
        basicInflater.setFactory2(asyncLayoutFactory);
        this.mHandler = new Handler(Looper.myLooper(), anonymousClass1);
        this.mInflateThread = InflateThread.sInstance;
    }
}
