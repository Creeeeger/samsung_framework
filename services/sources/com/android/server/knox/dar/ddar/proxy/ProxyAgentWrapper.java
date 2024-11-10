package com.android.server.knox.dar.ddar.proxy;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.UserHandle;
import com.android.server.knox.dar.ddar.DDLog;
import com.samsung.android.knox.dar.ddar.proxy.IProxyAgent;

/* loaded from: classes2.dex */
public class ProxyAgentWrapper {
    public Context mContext;
    public ProxyAgentInfo mInfo;
    public IProxyAgent mProxyAgent;
    public DualDARComnService mService;
    public final Object mProxyAgentLock = new Object();
    public boolean mBindPending = false;
    public boolean mIsReconnection = false;
    public boolean mIsStale = false;
    public boolean mIsNotify = false;
    public final ServiceConnection mConnection = new ServiceConnection() { // from class: com.android.server.knox.dar.ddar.proxy.ProxyAgentWrapper.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            DDLog.v("KnoxService::ProxyAgentWrapper", "Knox Proxy Agent started : " + ProxyAgentWrapper.this.mInfo.toString(), new Object[0]);
            ProxyAgentWrapper.this.mService.getHandler().removeMessages(1);
            synchronized (ProxyAgentWrapper.this.mProxyAgentLock) {
                ProxyAgentWrapper.this.mProxyAgent = IProxyAgent.Stub.asInterface(iBinder);
                if (ProxyAgentWrapper.this.mProxyAgent == null) {
                    DDLog.e("KnoxService::ProxyAgentWrapper", "onServiceConnected: Unable to find Knox Proxy Agent!", new Object[0]);
                    return;
                }
                ProxyAgentWrapper.this.mBindPending = false;
                ProxyAgentWrapper.this.mIsNotify = true;
                ProxyAgentWrapper.this.mProxyAgentLock.notifyAll();
                if (ProxyAgentWrapper.this.mIsReconnection) {
                    ProxyAgentWrapper.this.onAgentReconnected();
                    ProxyAgentWrapper.this.mIsReconnection = false;
                }
                ProxyAgentWrapper.this.mService.getHandler().removeMessages(4);
                ProxyAgentWrapper.this.mService.getHandler().sendMessage(ProxyAgentWrapper.this.mService.getHandler().obtainMessage(4, ProxyAgentWrapper.this.mInfo));
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            DDLog.d("KnoxService::ProxyAgentWrapper", "Knox Proxy Agent disconnected : " + ProxyAgentWrapper.this.mInfo.toString(), new Object[0]);
            synchronized (ProxyAgentWrapper.this.mProxyAgentLock) {
                ProxyAgentWrapper.this.mProxyAgent = null;
                ProxyAgentWrapper.this.mBindPending = false;
                ProxyAgentWrapper.this.triggerRestart();
            }
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(ComponentName componentName) {
            DDLog.d("KnoxService::ProxyAgentWrapper", "onNullBinding : " + ProxyAgentWrapper.this.mInfo.toString(), new Object[0]);
            synchronized (ProxyAgentWrapper.this.mProxyAgentLock) {
                ProxyAgentWrapper.this.mProxyAgent = null;
                ProxyAgentWrapper.this.mBindPending = false;
                ProxyAgentWrapper.this.triggerRestart();
            }
        }

        @Override // android.content.ServiceConnection
        public void onBindingDied(ComponentName componentName) {
            DDLog.d("KnoxService::ProxyAgentWrapper", "onBindingDied : " + ProxyAgentWrapper.this.mInfo.toString(), new Object[0]);
            synchronized (ProxyAgentWrapper.this.mProxyAgentLock) {
                ProxyAgentWrapper.this.mProxyAgent = null;
                ProxyAgentWrapper.this.mBindPending = false;
                ProxyAgentWrapper.this.triggerRestart();
            }
        }
    };

    public ProxyAgentWrapper(Context context, DualDARComnService dualDARComnService, ProxyAgentInfo proxyAgentInfo) {
        DDLog.d("KnoxService::ProxyAgentWrapper", "ProxyAgentWrapper()", new Object[0]);
        this.mContext = context;
        this.mService = dualDARComnService;
        this.mInfo = proxyAgentInfo;
    }

    public boolean connectSync() {
        boolean connectAsync;
        DDLog.d("KnoxService::ProxyAgentWrapper", "try connectSync : " + this.mInfo.toString(), new Object[0]);
        try {
            synchronized (this.mProxyAgentLock) {
                if (!isServiceConnected()) {
                    if (!this.mBindPending && !(connectAsync = connectAsync())) {
                        DDLog.e("KnoxService::ProxyAgentWrapper", "connection to Proxy Agent failed", new Object[0]);
                        return connectAsync;
                    }
                    this.mIsNotify = false;
                    this.mProxyAgentLock.wait(3000L);
                    if (!this.mIsNotify) {
                        DDLog.d("KnoxService::ProxyAgentWrapper", "thread waken up without notify", new Object[0]);
                        return false;
                    }
                }
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean connectAsync() {
        DDLog.d("KnoxService::ProxyAgentWrapper", "try connectAsync : " + this.mInfo.toString(), new Object[0]);
        synchronized (this.mProxyAgentLock) {
            ComponentName componentName = this.mInfo.mCompName;
            if (isServiceConnected()) {
                DDLog.e("KnoxService::ProxyAgentWrapper", "service " + componentName.flattenToShortString() + " already bound", new Object[0]);
                return true;
            }
            try {
                boolean bindServiceAsUser = this.mContext.bindServiceAsUser(new Intent().setComponent(componentName), this.mConnection, 67108865, new UserHandle(this.mInfo.mUserId));
                this.mBindPending = bindServiceAsUser;
                if (bindServiceAsUser) {
                    return true;
                }
                DDLog.e("KnoxService::ProxyAgentWrapper", "Can't bind to container service " + componentName.flattenToShortString(), new Object[0]);
                return false;
            } catch (Exception e) {
                DDLog.e("KnoxService::ProxyAgentWrapper", "Exception: " + e.getMessage(), new Object[0]);
                e.printStackTrace();
                return false;
            }
        }
    }

    public void disconnect() {
        DDLog.d("KnoxService::ProxyAgentWrapper", "disconnect", new Object[0]);
        if (isServiceConnected()) {
            synchronized (this.mProxyAgentLock) {
                this.mContext.unbindService(this.mConnection);
                this.mProxyAgent = null;
                this.mBindPending = false;
            }
            DDLog.d("KnoxService::ProxyAgentWrapper", "Unbinding to agent done", new Object[0]);
        }
    }

    public boolean isServiceConnected() {
        boolean z;
        synchronized (this.mProxyAgentLock) {
            z = this.mProxyAgent != null;
        }
        return z;
    }

    public final void triggerRestart() {
        if (!this.mIsStale) {
            DDLog.d("KnoxService::ProxyAgentWrapper", "triggerRestart", new Object[0]);
            this.mService.getHandler().removeMessages(1);
            this.mService.getHandler().sendMessage(this.mService.getHandler().obtainMessage(1, this.mInfo));
            return;
        }
        DDLog.d("KnoxService::ProxyAgentWrapper", "skipping triggerRestart because this is a stale object", new Object[0]);
    }

    public void markStale() {
        DDLog.d("KnoxService::ProxyAgentWrapper", "markStale: " + this, new Object[0]);
        this.mIsStale = true;
    }

    public void enableReconnectionFlag() {
        DDLog.d("KnoxService::ProxyAgentWrapper", "enableReconnectionFlag: " + this, new Object[0]);
        this.mIsReconnection = true;
    }

    public final void onAgentReconnected() {
        try {
            if (this.mProxyAgent != null) {
                DDLog.d("KnoxService::ProxyAgentWrapper", "sending onAgentReconnected signal", new Object[0]);
                this.mProxyAgent.onAgentReconnected();
            }
        } catch (RemoteException e) {
            DDLog.e("KnoxService::ProxyAgentWrapper", "RemoteException: name:" + this.mInfo.mCompName.flattenToShortString() + " -- onAgentReconnected", new Object[0]);
            e.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006b A[Catch: RemoteException -> 0x007b, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x007b, blocks: (B:3:0x001a, B:5:0x001e, B:14:0x0055, B:17:0x005c, B:20:0x006b, B:21:0x003a, B:24:0x0044), top: B:2:0x001a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.os.Bundle relay(int r8, java.lang.String r9, java.lang.String r10, android.os.Bundle r11) {
        /*
            r7 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "relay to Service : "
            r0.append(r1)
            r0.append(r9)
            java.lang.String r0 = r0.toString()
            r1 = 0
            java.lang.Object[] r2 = new java.lang.Object[r1]
            java.lang.String r3 = "KnoxService::ProxyAgentWrapper"
            com.android.server.knox.dar.ddar.DDLog.d(r3, r0, r2)
            com.samsung.android.knox.dar.ddar.proxy.IProxyAgent r0 = r7.mProxyAgent     // Catch: android.os.RemoteException -> L7b
            if (r0 == 0) goto La5
            java.lang.String r0 = "SECURE_CLIENT_ID"
            java.lang.String r0 = r11.getString(r0)     // Catch: android.os.RemoteException -> L7b
            java.lang.String r2 = "SECURE_CLIENT_PUB_KEY"
            java.lang.String r2 = r11.getString(r2)     // Catch: android.os.RemoteException -> L7b
            int r4 = r10.hashCode()     // Catch: android.os.RemoteException -> L7b
            r5 = 636043837(0x25e9423d, float:4.0463942E-16)
            r6 = 1
            if (r4 == r5) goto L44
            r5 = 681038700(0x2897d36c, float:1.6856057E-14)
            if (r4 == r5) goto L3a
            goto L4e
        L3a:
            java.lang.String r4 = "TERMINATE_SECURE_SESSION"
            boolean r4 = r10.equals(r4)     // Catch: android.os.RemoteException -> L7b
            if (r4 == 0) goto L4e
            r4 = r6
            goto L4f
        L44:
            java.lang.String r4 = "INITIALIZE_SECURE_SESSION"
            boolean r4 = r10.equals(r4)     // Catch: android.os.RemoteException -> L7b
            if (r4 == 0) goto L4e
            r4 = r1
            goto L4f
        L4e:
            r4 = -1
        L4f:
            java.lang.String r5 = "dual_dar_response"
            if (r4 == 0) goto L6b
            if (r4 == r6) goto L5c
            com.samsung.android.knox.dar.ddar.proxy.IProxyAgent r0 = r7.mProxyAgent     // Catch: android.os.RemoteException -> L7b
            android.os.Bundle r7 = r0.onMessage(r8, r9, r10, r11)     // Catch: android.os.RemoteException -> L7b
            goto L7a
        L5c:
            com.samsung.android.knox.dar.ddar.proxy.IProxyAgent r11 = r7.mProxyAgent     // Catch: android.os.RemoteException -> L7b
            boolean r8 = r11.terminateSecureSession(r8, r9, r0)     // Catch: android.os.RemoteException -> L7b
            android.os.Bundle r9 = new android.os.Bundle     // Catch: android.os.RemoteException -> L7b
            r9.<init>()     // Catch: android.os.RemoteException -> L7b
            r9.putBoolean(r5, r8)     // Catch: android.os.RemoteException -> L7b
            goto L79
        L6b:
            com.samsung.android.knox.dar.ddar.proxy.IProxyAgent r11 = r7.mProxyAgent     // Catch: android.os.RemoteException -> L7b
            java.lang.String r8 = r11.initializeSecureSession(r8, r9, r0, r2)     // Catch: android.os.RemoteException -> L7b
            android.os.Bundle r9 = new android.os.Bundle     // Catch: android.os.RemoteException -> L7b
            r9.<init>()     // Catch: android.os.RemoteException -> L7b
            r9.putString(r5, r8)     // Catch: android.os.RemoteException -> L7b
        L79:
            r7 = r9
        L7a:
            return r7
        L7b:
            r8 = move-exception
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r11 = "RemoteException: name:"
            r9.append(r11)
            com.android.server.knox.dar.ddar.proxy.ProxyAgentInfo r7 = r7.mInfo
            android.content.ComponentName r7 = r7.mCompName
            java.lang.String r7 = r7.flattenToShortString()
            r9.append(r7)
            java.lang.String r7 = " command:"
            r9.append(r7)
            r9.append(r10)
            java.lang.String r7 = r9.toString()
            java.lang.Object[] r9 = new java.lang.Object[r1]
            com.android.server.knox.dar.ddar.DDLog.e(r3, r7, r9)
            r8.printStackTrace()
        La5:
            r7 = 0
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.knox.dar.ddar.proxy.ProxyAgentWrapper.relay(int, java.lang.String, java.lang.String, android.os.Bundle):android.os.Bundle");
    }

    public boolean isProxyAgentBindPending() {
        boolean z;
        synchronized (this.mProxyAgentLock) {
            z = this.mBindPending;
        }
        return z;
    }
}
