package com.samsung.android.sdk.scs.base.connection;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.samsung.android.sdk.scs.base.utils.Log;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class ServiceExecutor extends ThreadPoolExecutor implements InternalServiceConnectionListener, Application.ActivityLifecycleCallbacks {
    public final Condition mConnectionCondition;
    public final AnonymousClass1 mConnectionListener;
    public final ReentrantLock mConnectionLock;
    public final ConnectionManager mConnectionManager;
    public final Context mContext;
    public boolean mIsConnected;
    public final AtomicInteger mTaskCount;

    /* renamed from: -$$Nest$munlockConnection, reason: not valid java name */
    public static void m2504$$Nest$munlockConnection(ServiceExecutor serviceExecutor, boolean z, String str) {
        serviceExecutor.mConnectionLock.lock();
        try {
            serviceExecutor.mIsConnected = z;
            Log.d("ScsApi@ServiceExecutor", str);
            serviceExecutor.mConnectionCondition.signalAll();
        } finally {
            serviceExecutor.mConnectionLock.unlock();
        }
    }

    /* JADX WARN: Type inference failed for: r10v1, types: [com.samsung.android.sdk.scs.base.connection.ServiceExecutor$1] */
    public ServiceExecutor(Context context, int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue) {
        super(i, i2, j, timeUnit, blockingQueue);
        ReentrantLock reentrantLock = new ReentrantLock();
        this.mConnectionLock = reentrantLock;
        this.mConnectionCondition = reentrantLock.newCondition();
        this.mIsConnected = false;
        this.mConnectionListener = new InternalServiceConnectionListener() { // from class: com.samsung.android.sdk.scs.base.connection.ServiceExecutor.1
            @Override // com.samsung.android.sdk.scs.base.connection.InternalServiceConnectionListener
            public final void onConnected(ComponentName componentName, IBinder iBinder) {
                Log.d("ScsApi@ServiceExecutor", "onConnected");
                ServiceExecutor serviceExecutor = ServiceExecutor.this;
                serviceExecutor.onConnected(componentName, iBinder);
                ServiceExecutor.m2504$$Nest$munlockConnection(serviceExecutor, true, "connected, signal all");
            }

            @Override // com.samsung.android.sdk.scs.base.connection.InternalServiceConnectionListener
            public final void onDisconnected(ComponentName componentName) {
                Log.d("ScsApi@ServiceExecutor", "onDisconnected");
                ServiceExecutor serviceExecutor = ServiceExecutor.this;
                serviceExecutor.onDisconnected(componentName);
                ServiceExecutor.m2504$$Nest$munlockConnection(serviceExecutor, false, "disconnected, signal all");
            }

            @Override // com.samsung.android.sdk.scs.base.connection.InternalServiceConnectionListener
            public final void onError() {
                Log.d("ScsApi@ServiceExecutor", "onError");
                ServiceExecutor serviceExecutor = ServiceExecutor.this;
                serviceExecutor.getClass();
                ServiceExecutor.m2504$$Nest$munlockConnection(serviceExecutor, false, "onError, signal all");
            }
        };
        allowCoreThreadTimeOut(true);
        Log.d("ScsApi@ServiceExecutor", "use application context");
        this.mContext = context.getApplicationContext();
        this.mTaskCount = new AtomicInteger(0);
        this.mConnectionManager = new ConnectionManager();
        Log.d("ScsApi@ServiceExecutor", "ServiceExecutor. ctor()");
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public final void afterExecute(Runnable runnable, Throwable th) {
        super.afterExecute(runnable, th);
        this.mTaskCount.getAndDecrement();
        Log.d("ScsApi@ServiceExecutor", "afterExecute(). mTaskCount: " + this.mTaskCount);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01e9  */
    @Override // java.util.concurrent.ThreadPoolExecutor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void beforeExecute(java.lang.Thread r14, java.lang.Runnable r15) {
        /*
            Method dump skipped, instructions count: 760
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.sdk.scs.base.connection.ServiceExecutor.beforeExecute(java.lang.Thread, java.lang.Runnable):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean connect(android.content.Context r5, android.content.Intent r6, com.samsung.android.sdk.scs.base.connection.ServiceExecutor.AnonymousClass1 r7) {
        /*
            r4 = this;
            java.lang.String r0 = "ScsApi@ServiceExecutor"
            java.lang.String r1 = "connect"
            com.samsung.android.sdk.scs.base.utils.Log.d(r0, r1)
            com.samsung.android.sdk.scs.base.connection.ConnectionManager r0 = r4.mConnectionManager
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "isServiceConnected = "
            r1.<init>(r2)
            boolean r3 = r0.mIsConnected
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            java.lang.String r3 = "ScsApi@ConnectionManager"
            com.samsung.android.sdk.scs.base.utils.Log.d(r3, r1)
            boolean r0 = r0.mIsConnected
            r1 = 1
            if (r0 == 0) goto L24
            return r1
        L24:
            com.samsung.android.sdk.scs.base.connection.ConnectionManager r4 = r4.mConnectionManager
            r4.mInternalServiceConnectionListener = r7
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>(r2)
            boolean r0 = r4.mIsConnected
            r7.append(r0)
            java.lang.String r7 = r7.toString()
            com.samsung.android.sdk.scs.base.utils.Log.d(r3, r7)
            boolean r7 = r4.mIsConnected
            if (r7 == 0) goto L43
            java.lang.String r4 = "just return already bound service obj"
            com.samsung.android.sdk.scs.base.utils.Log.d(r3, r4)
            goto L96
        L43:
            if (r5 != 0) goto L4b
            java.lang.String r5 = "Context is null"
            com.samsung.android.sdk.scs.base.utils.Log.e(r3, r5)
            goto L52
        L4b:
            if (r6 != 0) goto L54
            java.lang.String r5 = "Intent is null"
            com.samsung.android.sdk.scs.base.utils.Log.e(r3, r5)
        L52:
            r1 = 0
            goto L7e
        L54:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r0 = "connectToService mIsConnected = "
            r7.<init>(r0)
            boolean r0 = r4.mIsConnected
            r7.append(r0)
            java.lang.String r7 = r7.toString()
            com.samsung.android.sdk.scs.base.utils.Log.d(r3, r7)
            boolean r7 = r4.mIsConnected
            if (r7 != 0) goto L79
            java.lang.String r7 = "Binding service with app context"
            com.samsung.android.sdk.scs.base.utils.Log.d(r3, r7)
            r4.mContext = r5
            com.samsung.android.sdk.scs.base.connection.ConnectionManager$1 r7 = r4.mServiceConnection
            boolean r1 = r5.bindService(r6, r7, r1)
            goto L7e
        L79:
            java.lang.String r5 = "already bound"
            com.samsung.android.sdk.scs.base.utils.Log.d(r3, r5)
        L7e:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "connectToService result : "
            r5.<init>(r6)
            r5.append(r1)
            java.lang.String r5 = r5.toString()
            com.samsung.android.sdk.scs.base.utils.Log.d(r3, r5)
            if (r1 != 0) goto L96
            r5 = 3
            r6 = 0
            r4.notifyServiceConnection(r5, r6, r6)
        L96:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.sdk.scs.base.connection.ServiceExecutor.connect(android.content.Context, android.content.Intent, com.samsung.android.sdk.scs.base.connection.ServiceExecutor$1):boolean");
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public final void finalize() {
        super.finalize();
        Log.d("ScsApi@ServiceExecutor", "finalize");
        ConnectionManager connectionManager = this.mConnectionManager;
        if (connectionManager != null) {
            connectionManager.disconnect();
        }
    }

    public abstract Intent getServiceIntent();

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Log.d("ScsApi@ServiceExecutor", "onActivityDestroyed");
        Log.d("ScsApi@ServiceExecutor", "deInit");
        ConnectionManager connectionManager = this.mConnectionManager;
        if (connectionManager != null) {
            connectionManager.disconnect();
        }
    }

    /* JADX WARN: Type inference failed for: r10v1, types: [com.samsung.android.sdk.scs.base.connection.ServiceExecutor$1] */
    public ServiceExecutor(Activity activity, int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue) {
        super(i, i2, j, timeUnit, blockingQueue);
        ReentrantLock reentrantLock = new ReentrantLock();
        this.mConnectionLock = reentrantLock;
        this.mConnectionCondition = reentrantLock.newCondition();
        this.mIsConnected = false;
        this.mConnectionListener = new InternalServiceConnectionListener() { // from class: com.samsung.android.sdk.scs.base.connection.ServiceExecutor.1
            @Override // com.samsung.android.sdk.scs.base.connection.InternalServiceConnectionListener
            public final void onConnected(ComponentName componentName, IBinder iBinder) {
                Log.d("ScsApi@ServiceExecutor", "onConnected");
                ServiceExecutor serviceExecutor = ServiceExecutor.this;
                serviceExecutor.onConnected(componentName, iBinder);
                ServiceExecutor.m2504$$Nest$munlockConnection(serviceExecutor, true, "connected, signal all");
            }

            @Override // com.samsung.android.sdk.scs.base.connection.InternalServiceConnectionListener
            public final void onDisconnected(ComponentName componentName) {
                Log.d("ScsApi@ServiceExecutor", "onDisconnected");
                ServiceExecutor serviceExecutor = ServiceExecutor.this;
                serviceExecutor.onDisconnected(componentName);
                ServiceExecutor.m2504$$Nest$munlockConnection(serviceExecutor, false, "disconnected, signal all");
            }

            @Override // com.samsung.android.sdk.scs.base.connection.InternalServiceConnectionListener
            public final void onError() {
                Log.d("ScsApi@ServiceExecutor", "onError");
                ServiceExecutor serviceExecutor = ServiceExecutor.this;
                serviceExecutor.getClass();
                ServiceExecutor.m2504$$Nest$munlockConnection(serviceExecutor, false, "onError, signal all");
            }
        };
        allowCoreThreadTimeOut(true);
        Log.d("ScsApi@ServiceExecutor", "use activity context");
        this.mContext = activity;
        activity.registerActivityLifecycleCallbacks(this);
        this.mTaskCount = new AtomicInteger(0);
        this.mConnectionManager = new ConnectionManager();
        Log.d("ScsApi@ServiceExecutor", "ServiceExecutor. ctor()");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
