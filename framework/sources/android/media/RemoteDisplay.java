package android.media;

import android.os.Handler;
import android.util.Log;
import android.view.Surface;
import dalvik.system.CloseGuard;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class RemoteDisplay {
    public static final int DISPLAY_ERROR_CONNECTION_DROPPED = 2;
    public static final int DISPLAY_ERROR_UNKOWN = 1;
    public static final int DISPLAY_FLAG_AUDIO_ONLY = 16;
    public static final int DISPLAY_FLAG_DMR_SUPPORT = 64;
    public static final int DISPLAY_FLAG_HIGH_RESOLUTION_SUPPORT = 32;
    public static final int DISPLAY_FLAG_LANDSCAPE = 2;
    public static final int DISPLAY_FLAG_PORTRAIT_270 = 8;
    public static final int DISPLAY_FLAG_PORTRAIT_90 = 4;
    public static final int DISPLAY_FLAG_SECURE = 1;
    private static final String TAG = "RemoteDisplay_Java";
    private final CloseGuard mGuard;
    private final Handler mHandler;
    private final Listener mListener;
    private final NativeListener mNativeListener;
    private final String mOpPackageName;
    private long mPtr;

    /* loaded from: classes2.dex */
    public interface Listener {
        void onDisplayChanged(Surface surface, int i, int i2, int i3);

        void onDisplayConnected(Surface surface, int i, int i2, int i3, int i4, String str);

        void onDisplayDisconnected();

        void onDisplayError(int i);
    }

    /* loaded from: classes2.dex */
    public interface NativeListener {
        void onNotify(int i, String str);
    }

    private native void nativeDispose(long j);

    private native long nativeListen(String str, String str2);

    private native long nativeListen(String str, String str2, String str3);

    private native void nativePause(long j);

    private native void nativeResume(long j);

    private static native int nativeSetParam(String str);

    private RemoteDisplay(Listener listener, Handler handler, String opPackageName) {
        this.mGuard = CloseGuard.get();
        this.mListener = listener;
        this.mHandler = handler;
        this.mOpPackageName = opPackageName;
        this.mNativeListener = null;
    }

    private RemoteDisplay(Listener listener, Handler handler, String opPackageName, NativeListener nativeListener) {
        this.mGuard = CloseGuard.get();
        this.mListener = listener;
        this.mHandler = handler;
        this.mOpPackageName = opPackageName;
        this.mNativeListener = nativeListener;
    }

    protected void finalize() throws Throwable {
        try {
            dispose(true);
        } finally {
            super.finalize();
        }
    }

    public static RemoteDisplay listen(String iface, Listener listener, Handler handler, String opPackageName) {
        if (iface == null) {
            throw new IllegalArgumentException("iface must not be null");
        }
        if (listener == null) {
            throw new IllegalArgumentException("listener must not be null");
        }
        if (handler == null) {
            throw new IllegalArgumentException("handler must not be null");
        }
        RemoteDisplay display = new RemoteDisplay(listener, handler, opPackageName);
        display.startListening(iface);
        return display;
    }

    public static RemoteDisplay listen(String iface, Listener listener, Handler handler, String opPackageName, String setparamInfo, NativeListener nativeListener) {
        if (iface == null) {
            throw new IllegalArgumentException("iface must not be null");
        }
        if (listener == null) {
            throw new IllegalArgumentException("listener must not be null");
        }
        if (handler == null) {
            throw new IllegalArgumentException("handler must not be null");
        }
        RemoteDisplay display = new RemoteDisplay(listener, handler, opPackageName, nativeListener);
        display.startListening(iface, setparamInfo);
        return display;
    }

    public void dispose() {
        dispose(false);
    }

    public void pause() {
        nativePause(this.mPtr);
    }

    public void resume() {
        nativeResume(this.mPtr);
    }

    public int setParam(String key, Object data) {
        JSONObject mParam = new JSONObject();
        try {
            mParam.put(key, data);
        } catch (JSONException e) {
            Log.w(TAG, e.toString());
        }
        int iRet = nativeSetParam(mParam.toString());
        Log.d(TAG, "setParam >> ret is " + iRet);
        mParam.remove(key);
        return iRet;
    }

    private void dispose(boolean finalized) {
        if (this.mPtr != 0) {
            CloseGuard closeGuard = this.mGuard;
            if (closeGuard != null) {
                if (finalized) {
                    closeGuard.warnIfOpen();
                } else {
                    closeGuard.close();
                }
            }
            nativeDispose(this.mPtr);
            this.mPtr = 0L;
        }
    }

    private void startListening(String iface) {
        long nativeListen = nativeListen(iface, this.mOpPackageName);
        this.mPtr = nativeListen;
        if (nativeListen == 0) {
            throw new IllegalStateException("Could not start listening for remote display connection on \"" + iface + "\"");
        }
        this.mGuard.open("dispose");
    }

    private void startListening(String iface, String initParam) {
        long nativeListen = nativeListen(iface, this.mOpPackageName, initParam);
        this.mPtr = nativeListen;
        if (nativeListen == 0) {
            throw new IllegalStateException("Could not start listening for remote display connection on \"" + iface + "\"");
        }
        this.mGuard.open("dispose");
    }

    /* renamed from: android.media.RemoteDisplay$1 */
    /* loaded from: classes2.dex */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ int val$flags;
        final /* synthetic */ int val$height;
        final /* synthetic */ String val$msg;
        final /* synthetic */ int val$session;
        final /* synthetic */ Surface val$surface;
        final /* synthetic */ int val$width;

        AnonymousClass1(Surface surface, int i, int i2, int i3, int i4, String str) {
            surface = surface;
            width = i;
            height = i2;
            flags = i3;
            session = i4;
            msg = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RemoteDisplay.this.mListener.onDisplayConnected(surface, width, height, flags, session, msg);
        }
    }

    private void notifyDisplayConnected(Surface surface, int width, int height, int flags, int session, String msg) {
        this.mHandler.post(new Runnable() { // from class: android.media.RemoteDisplay.1
            final /* synthetic */ int val$flags;
            final /* synthetic */ int val$height;
            final /* synthetic */ String val$msg;
            final /* synthetic */ int val$session;
            final /* synthetic */ Surface val$surface;
            final /* synthetic */ int val$width;

            AnonymousClass1(Surface surface2, int width2, int height2, int flags2, int session2, String msg2) {
                surface = surface2;
                width = width2;
                height = height2;
                flags = flags2;
                session = session2;
                msg = msg2;
            }

            @Override // java.lang.Runnable
            public void run() {
                RemoteDisplay.this.mListener.onDisplayConnected(surface, width, height, flags, session, msg);
            }
        });
    }

    /* renamed from: android.media.RemoteDisplay$2 */
    /* loaded from: classes2.dex */
    class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RemoteDisplay.this.mListener.onDisplayDisconnected();
        }
    }

    private void notifyDisplayDisconnected() {
        this.mHandler.post(new Runnable() { // from class: android.media.RemoteDisplay.2
            AnonymousClass2() {
            }

            @Override // java.lang.Runnable
            public void run() {
                RemoteDisplay.this.mListener.onDisplayDisconnected();
            }
        });
    }

    /* renamed from: android.media.RemoteDisplay$3 */
    /* loaded from: classes2.dex */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ int val$error;

        AnonymousClass3(int i) {
            error = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            RemoteDisplay.this.mListener.onDisplayError(error);
        }
    }

    private void notifyDisplayError(int error) {
        this.mHandler.post(new Runnable() { // from class: android.media.RemoteDisplay.3
            final /* synthetic */ int val$error;

            AnonymousClass3(int error2) {
                error = error2;
            }

            @Override // java.lang.Runnable
            public void run() {
                RemoteDisplay.this.mListener.onDisplayError(error);
            }
        });
    }

    /* renamed from: android.media.RemoteDisplay$4 */
    /* loaded from: classes2.dex */
    class AnonymousClass4 implements Runnable {
        final /* synthetic */ int val$flags;
        final /* synthetic */ int val$height;
        final /* synthetic */ Surface val$surface;
        final /* synthetic */ int val$width;

        AnonymousClass4(Surface surface, int i, int i2, int i3) {
            surface = surface;
            width = i;
            height = i2;
            flags = i3;
        }

        @Override // java.lang.Runnable
        public void run() {
            RemoteDisplay.this.mListener.onDisplayChanged(surface, width, height, flags);
        }
    }

    private void notifyDisplayChanged(Surface surface, int width, int height, int flags) {
        this.mHandler.post(new Runnable() { // from class: android.media.RemoteDisplay.4
            final /* synthetic */ int val$flags;
            final /* synthetic */ int val$height;
            final /* synthetic */ Surface val$surface;
            final /* synthetic */ int val$width;

            AnonymousClass4(Surface surface2, int width2, int height2, int flags2) {
                surface = surface2;
                width = width2;
                height = height2;
                flags = flags2;
            }

            @Override // java.lang.Runnable
            public void run() {
                RemoteDisplay.this.mListener.onDisplayChanged(surface, width, height, flags);
            }
        });
    }

    /* renamed from: android.media.RemoteDisplay$5 */
    /* loaded from: classes2.dex */
    class AnonymousClass5 implements Runnable {
        final /* synthetic */ String val$data;
        final /* synthetic */ int val$msg;

        AnonymousClass5(int i, String str) {
            msg = i;
            data = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (RemoteDisplay.this.mNativeListener != null) {
                RemoteDisplay.this.mNativeListener.onNotify(msg, data);
            }
        }
    }

    private void cbFromNativeWFD(int msg, String data) {
        this.mHandler.post(new Runnable() { // from class: android.media.RemoteDisplay.5
            final /* synthetic */ String val$data;
            final /* synthetic */ int val$msg;

            AnonymousClass5(int msg2, String data2) {
                msg = msg2;
                data = data2;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (RemoteDisplay.this.mNativeListener != null) {
                    RemoteDisplay.this.mNativeListener.onNotify(msg, data);
                }
            }
        });
    }
}
