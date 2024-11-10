package com.android.server.pm;

import android.app.IInstantAppResolver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.InstantAppRequestInfo;
import android.content.pm.InstantAppResolveInfo;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IRemoteCallback;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Slog;
import android.util.TimedRemoteCaller;
import com.android.internal.os.BackgroundThread;
import com.android.server.pm.InstantAppResolverConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class InstantAppResolverConnection implements IBinder.DeathRecipient {
    public static final long BIND_SERVICE_TIMEOUT_MS;
    public static final long CALL_SERVICE_TIMEOUT_MS;
    public static final boolean DEBUG_INSTANT;
    public final Context mContext;
    public final Intent mIntent;
    public IInstantAppResolver mRemoteInstance;
    public final Object mLock = new Object();
    public final GetInstantAppResolveInfoCaller mGetInstantAppResolveInfoCaller = new GetInstantAppResolveInfoCaller();
    public final ServiceConnection mServiceConnection = new MyServiceConnection();
    public int mBindState = 0;
    public final Handler mBgHandler = BackgroundThread.getHandler();

    /* loaded from: classes3.dex */
    public abstract class PhaseTwoCallback {
        public abstract void onPhaseTwoResolved(List list, long j);
    }

    static {
        boolean z = Build.IS_ENG;
        BIND_SERVICE_TIMEOUT_MS = z ? 500L : 300L;
        CALL_SERVICE_TIMEOUT_MS = z ? 200L : 100L;
        DEBUG_INSTANT = Build.IS_DEBUGGABLE;
    }

    public InstantAppResolverConnection(Context context, ComponentName componentName, String str) {
        this.mContext = context;
        this.mIntent = new Intent(str).setComponent(componentName);
    }

    public List getInstantAppResolveInfoList(InstantAppRequestInfo instantAppRequestInfo) {
        throwIfCalledOnMainThread();
        try {
            try {
                try {
                    List instantAppResolveInfoList = this.mGetInstantAppResolveInfoCaller.getInstantAppResolveInfoList(getRemoteInstanceLazy(instantAppRequestInfo.getToken()), instantAppRequestInfo);
                    synchronized (this.mLock) {
                        this.mLock.notifyAll();
                    }
                    return instantAppResolveInfoList;
                } catch (RemoteException unused) {
                    synchronized (this.mLock) {
                        this.mLock.notifyAll();
                        return null;
                    }
                } catch (TimeoutException unused2) {
                    throw new ConnectionException(2);
                }
            } catch (InterruptedException unused3) {
                throw new ConnectionException(3);
            } catch (TimeoutException unused4) {
                throw new ConnectionException(1);
            }
        } catch (Throwable th) {
            synchronized (this.mLock) {
                this.mLock.notifyAll();
                throw th;
            }
        }
    }

    /* renamed from: com.android.server.pm.InstantAppResolverConnection$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends IRemoteCallback.Stub {
        public final /* synthetic */ PhaseTwoCallback val$callback;
        public final /* synthetic */ Handler val$callbackHandler;
        public final /* synthetic */ long val$startTime;

        public AnonymousClass1(Handler handler, PhaseTwoCallback phaseTwoCallback, long j) {
            this.val$callbackHandler = handler;
            this.val$callback = phaseTwoCallback;
            this.val$startTime = j;
        }

        public void sendResult(Bundle bundle) {
            final ArrayList parcelableArrayList = bundle.getParcelableArrayList("android.app.extra.RESOLVE_INFO", InstantAppResolveInfo.class);
            Handler handler = this.val$callbackHandler;
            final PhaseTwoCallback phaseTwoCallback = this.val$callback;
            final long j = this.val$startTime;
            handler.post(new Runnable() { // from class: com.android.server.pm.InstantAppResolverConnection$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    InstantAppResolverConnection.PhaseTwoCallback.this.onPhaseTwoResolved(parcelableArrayList, j);
                }
            });
        }
    }

    public void getInstantAppIntentFilterList(InstantAppRequestInfo instantAppRequestInfo, PhaseTwoCallback phaseTwoCallback, Handler handler, long j) {
        try {
            getRemoteInstanceLazy(instantAppRequestInfo.getToken()).getInstantAppIntentFilterList(instantAppRequestInfo, new AnonymousClass1(handler, phaseTwoCallback, j));
        } catch (RemoteException unused) {
        } catch (InterruptedException unused2) {
            throw new ConnectionException(3);
        } catch (TimeoutException unused3) {
            throw new ConnectionException(1);
        }
    }

    public final IInstantAppResolver getRemoteInstanceLazy(String str) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return bind(str);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final void waitForBindLocked(String str) {
        long uptimeMillis = SystemClock.uptimeMillis();
        while (this.mBindState != 0 && this.mRemoteInstance == null) {
            long uptimeMillis2 = BIND_SERVICE_TIMEOUT_MS - (SystemClock.uptimeMillis() - uptimeMillis);
            if (uptimeMillis2 <= 0) {
                throw new TimeoutException("[" + str + "] Didn't bind to resolver in time!");
            }
            this.mLock.wait(uptimeMillis2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0118 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.app.IInstantAppResolver bind(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.InstantAppResolverConnection.bind(java.lang.String):android.app.IInstantAppResolver");
    }

    public final void throwIfCalledOnMainThread() {
        if (Thread.currentThread() == this.mContext.getMainLooper().getThread()) {
            throw new RuntimeException("Cannot invoke on the main thread");
        }
    }

    public void optimisticBind() {
        this.mBgHandler.post(new Runnable() { // from class: com.android.server.pm.InstantAppResolverConnection$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                InstantAppResolverConnection.this.lambda$optimisticBind$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$optimisticBind$0() {
        try {
            if (bind("Optimistic Bind") == null || !DEBUG_INSTANT) {
                return;
            }
            Slog.i("PackageManager", "Optimistic bind succeeded.");
        } catch (ConnectionException | InterruptedException | TimeoutException e) {
            Slog.e("PackageManager", "Optimistic bind failed.", e);
        }
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        if (DEBUG_INSTANT) {
            Slog.d("PackageManager", "Binder to instant app resolver died");
        }
        synchronized (this.mLock) {
            handleBinderDiedLocked();
        }
        optimisticBind();
    }

    public final void handleBinderDiedLocked() {
        IInstantAppResolver iInstantAppResolver = this.mRemoteInstance;
        if (iInstantAppResolver != null) {
            try {
                iInstantAppResolver.asBinder().unlinkToDeath(this, 0);
            } catch (NoSuchElementException unused) {
            }
        }
        this.mRemoteInstance = null;
    }

    /* loaded from: classes3.dex */
    public class ConnectionException extends Exception {
        public final int failure;

        public ConnectionException(int i) {
            this.failure = i;
        }
    }

    /* loaded from: classes3.dex */
    public final class MyServiceConnection implements ServiceConnection {
        public MyServiceConnection() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (InstantAppResolverConnection.DEBUG_INSTANT) {
                Slog.d("PackageManager", "Connected to instant app resolver");
            }
            synchronized (InstantAppResolverConnection.this.mLock) {
                InstantAppResolverConnection.this.mRemoteInstance = IInstantAppResolver.Stub.asInterface(iBinder);
                if (InstantAppResolverConnection.this.mBindState == 2) {
                    InstantAppResolverConnection.this.mBindState = 0;
                }
                try {
                    iBinder.linkToDeath(InstantAppResolverConnection.this, 0);
                } catch (RemoteException unused) {
                    InstantAppResolverConnection.this.handleBinderDiedLocked();
                }
                InstantAppResolverConnection.this.mLock.notifyAll();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (InstantAppResolverConnection.DEBUG_INSTANT) {
                Slog.d("PackageManager", "Disconnected from instant app resolver");
            }
            synchronized (InstantAppResolverConnection.this.mLock) {
                InstantAppResolverConnection.this.handleBinderDiedLocked();
            }
        }
    }

    /* loaded from: classes3.dex */
    public final class GetInstantAppResolveInfoCaller extends TimedRemoteCaller {
        public final IRemoteCallback mCallback;

        public GetInstantAppResolveInfoCaller() {
            super(InstantAppResolverConnection.CALL_SERVICE_TIMEOUT_MS);
            this.mCallback = new IRemoteCallback.Stub() { // from class: com.android.server.pm.InstantAppResolverConnection.GetInstantAppResolveInfoCaller.1
                public void sendResult(Bundle bundle) {
                    GetInstantAppResolveInfoCaller.this.onRemoteMethodResult(bundle.getParcelableArrayList("android.app.extra.RESOLVE_INFO", InstantAppResolveInfo.class), bundle.getInt("android.app.extra.SEQUENCE", -1));
                }
            };
        }

        public List getInstantAppResolveInfoList(IInstantAppResolver iInstantAppResolver, InstantAppRequestInfo instantAppRequestInfo) {
            int onBeforeRemoteCall = onBeforeRemoteCall();
            iInstantAppResolver.getInstantAppResolveInfoList(instantAppRequestInfo, onBeforeRemoteCall, this.mCallback);
            return (List) getResultTimed(onBeforeRemoteCall);
        }
    }
}
