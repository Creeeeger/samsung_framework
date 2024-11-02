package com.android.wm.shell.dagger;

import android.os.HandlerThread;
import android.os.IBinder;
import android.os.ICustomFrequencyManager;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellConcurrencyModule$1 implements Runnable {
    public final /* synthetic */ HandlerThread val$mainThread;

    public WMShellConcurrencyModule$1(HandlerThread handlerThread) {
        this.val$mainThread = handlerThread;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ICustomFrequencyManager asInterface;
        IBinder service = ServiceManager.getService("CustomFrequencyManagerService");
        if (service != null && (asInterface = ICustomFrequencyManager.Stub.asInterface(service)) != null) {
            try {
                asInterface.sendTid(Process.myPid(), this.val$mainThread.getThreadId(), 4);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }
}
