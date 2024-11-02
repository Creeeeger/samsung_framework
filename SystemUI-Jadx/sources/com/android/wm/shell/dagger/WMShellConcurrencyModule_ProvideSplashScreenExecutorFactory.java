package com.android.wm.shell.dagger;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.ICustomFrequencyManager;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import com.android.wm.shell.common.HandlerExecutor;
import com.samsung.android.rune.CoreRune;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory implements Provider {
    public static HandlerExecutor provideSplashScreenExecutor() {
        final HandlerThread handlerThread = new HandlerThread("wmshell.splashscreen", -10);
        handlerThread.start();
        if (CoreRune.SYSPERF_VI_BOOST) {
            new Handler().postDelayed(new Runnable() { // from class: com.android.wm.shell.dagger.WMShellConcurrencyModule$3
                @Override // java.lang.Runnable
                public final void run() {
                    ICustomFrequencyManager asInterface;
                    IBinder service = ServiceManager.getService("CustomFrequencyManagerService");
                    if (service != null && (asInterface = ICustomFrequencyManager.Stub.asInterface(service)) != null) {
                        try {
                            asInterface.sendTid(Process.myPid(), handlerThread.getThreadId(), 4);
                        } catch (RemoteException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }, 10000L);
        }
        return new HandlerExecutor(handlerThread.getThreadHandler());
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return provideSplashScreenExecutor();
    }
}
