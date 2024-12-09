package com.sec.internal.helper.os;

import android.os.IInterface;
import android.os.RemoteCallbackList;
import android.os.RemoteException;

/* loaded from: classes.dex */
public class RemoteCallbackListWrapper<T extends IInterface> extends RemoteCallbackList<T> {
    private final Object mBroadcastLock = new Object();

    @FunctionalInterface
    public interface Broadcaster<T extends IInterface> {
        void broadcast(T t) throws RemoteException;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void broadcastCallback(Broadcaster<T> broadcaster) {
        synchronized (this.mBroadcastLock) {
            int beginBroadcast = beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    broadcaster.broadcast(getBroadcastItem(i));
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            finishBroadcast();
        }
    }
}
