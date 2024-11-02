package com.samsung.android.sdk.cover;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.samsung.android.cover.ICoverStateListenerCallback;
import com.samsung.android.sdk.cover.ScoverManager;
import java.lang.ref.WeakReference;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class CoverStateListenerDelegate extends ICoverStateListenerCallback.Stub {
    public final ListenerDelegateHandler mHandler;
    public final ScoverManager.CoverStateListener mListener;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class ListenerDelegateHandler extends Handler {
        public final WeakReference mListenerRef;

        public ListenerDelegateHandler(Looper looper, ScoverManager.CoverStateListener coverStateListener) {
            super(looper);
            this.mListenerRef = new WeakReference(coverStateListener);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            ScoverManager.CoverStateListener coverStateListener = (ScoverManager.CoverStateListener) this.mListenerRef.get();
            if (coverStateListener != null) {
                int i = message.what;
                boolean z = false;
                if (i != 0) {
                    if (i == 1) {
                        if (message.arg1 == 1) {
                            z = true;
                        }
                        coverStateListener.onCoverAttachStateChanged(z);
                        return;
                    }
                    return;
                }
                if (message.arg1 == 1) {
                    z = true;
                }
                coverStateListener.onCoverSwitchStateChanged(z);
            }
        }
    }

    public CoverStateListenerDelegate(ScoverManager.CoverStateListener coverStateListener, Handler handler, Context context) {
        Looper looper;
        this.mListener = coverStateListener;
        if (handler == null) {
            looper = context.getMainLooper();
        } else {
            looper = handler.getLooper();
        }
        this.mHandler = new ListenerDelegateHandler(looper, coverStateListener);
    }

    public final String getListenerInfo() {
        return this.mListener.toString();
    }

    public final void onCoverAttachStateChanged(boolean z) {
        Message.obtain(this.mHandler, 1, z ? 1 : 0, 0).sendToTarget();
    }

    public final void onCoverSwitchStateChanged(boolean z) {
        Message.obtain(this.mHandler, 0, z ? 1 : 0, 0).sendToTarget();
    }
}
