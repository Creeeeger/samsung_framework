package com.android.server.knox.dar.ddar.proxy;

import android.content.Context;
import com.android.server.knox.dar.ddar.DDCache;
import com.android.server.knox.dar.ddar.DDLog;
import com.android.server.knox.dar.ddar.core.DualDarManagerProxy;
import com.android.server.knox.dar.ddar.fsm.StateMachineProxy;
import com.android.server.knox.dar.ddar.nativedaemon.DualDARDaemonProxy;
import com.android.server.knox.dar.ddar.ta.TAProxy;
import com.samsung.android.knox.dar.ddar.proxy.KnoxProxyAgent;

/* loaded from: classes2.dex */
public class SystemProxyAgent extends KnoxProxyAgent {
    public static SystemProxyAgent mInstance;
    public final Context mContext;

    public static synchronized SystemProxyAgent getInstance(Context context) {
        SystemProxyAgent systemProxyAgent;
        synchronized (SystemProxyAgent.class) {
            if (mInstance == null) {
                mInstance = new SystemProxyAgent(context);
            }
            systemProxyAgent = mInstance;
        }
        return systemProxyAgent;
    }

    public SystemProxyAgent(Context context) {
        this.mContext = context;
    }

    public void init() {
        super.onCreate();
        register("TA_PROXY_SERVICE", TAProxy.getInstance(this.mContext));
        register("DAEMON_PROXY_SERVICE", DualDARDaemonProxy.getInstance(this.mContext));
        register("STATE_MACHINE_SERVICE", StateMachineProxy.getInstance(this.mContext));
        register("DDAR_LOG_SERVICE", DDLog.LoggerProxy.getInstance(this.mContext));
        register("DDAR_CACHE_SERVICE", DDCache.getInstance(this.mContext));
        register("DDAR_PLATFORM_SERVICE", DualDARPlatformProxy.getInstance(this.mContext));
        register("DDAR_MANAGER_SERVICE", DualDarManagerProxy.getInstance(this.mContext));
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005e A[Catch: Exception -> 0x0076, TRY_LEAVE, TryCatch #0 {Exception -> 0x0076, blocks: (B:3:0x001a, B:12:0x0047, B:15:0x004c, B:18:0x005e, B:19:0x002a, B:22:0x0034), top: B:2:0x001a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.os.Bundle relay(int r7, java.lang.String r8, java.lang.String r9, android.os.Bundle r10) {
        /*
            r6 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "relay to Service : "
            r0.append(r1)
            r0.append(r8)
            java.lang.String r0 = r0.toString()
            r1 = 0
            java.lang.Object[] r2 = new java.lang.Object[r1]
            java.lang.String r3 = "SystemProxyAgent"
            com.android.server.knox.dar.ddar.DDLog.d(r3, r0, r2)
            int r0 = r9.hashCode()     // Catch: java.lang.Exception -> L76
            r2 = 636043837(0x25e9423d, float:4.0463942E-16)
            r4 = 1
            if (r0 == r2) goto L34
            r2 = 681038700(0x2897d36c, float:1.6856057E-14)
            if (r0 == r2) goto L2a
            goto L3e
        L2a:
            java.lang.String r0 = "TERMINATE_SECURE_SESSION"
            boolean r0 = r9.equals(r0)     // Catch: java.lang.Exception -> L76
            if (r0 == 0) goto L3e
            r0 = r4
            goto L3f
        L34:
            java.lang.String r0 = "INITIALIZE_SECURE_SESSION"
            boolean r0 = r9.equals(r0)     // Catch: java.lang.Exception -> L76
            if (r0 == 0) goto L3e
            r0 = r1
            goto L3f
        L3e:
            r0 = -1
        L3f:
            java.lang.String r2 = "dual_dar_response"
            java.lang.String r5 = "SECURE_CLIENT_ID"
            if (r0 == 0) goto L5e
            if (r0 == r4) goto L4c
            android.os.Bundle r6 = super.relay(r7, r8, r9, r10)     // Catch: java.lang.Exception -> L76
            goto L75
        L4c:
            java.lang.String r10 = r10.getString(r5)     // Catch: java.lang.Exception -> L76
            boolean r6 = r6.teardownSecureSession(r7, r8, r10)     // Catch: java.lang.Exception -> L76
            android.os.Bundle r7 = new android.os.Bundle     // Catch: java.lang.Exception -> L76
            r7.<init>()     // Catch: java.lang.Exception -> L76
            r7.putBoolean(r2, r6)     // Catch: java.lang.Exception -> L76
        L5c:
            r6 = r7
            goto L75
        L5e:
            java.lang.String r0 = r10.getString(r5)     // Catch: java.lang.Exception -> L76
            java.lang.String r4 = "SECURE_CLIENT_PUB_KEY"
            java.lang.String r10 = r10.getString(r4)     // Catch: java.lang.Exception -> L76
            java.lang.String r6 = r6.establishSecureSession(r7, r8, r0, r10)     // Catch: java.lang.Exception -> L76
            android.os.Bundle r7 = new android.os.Bundle     // Catch: java.lang.Exception -> L76
            r7.<init>()     // Catch: java.lang.Exception -> L76
            r7.putString(r2, r6)     // Catch: java.lang.Exception -> L76
            goto L5c
        L75:
            return r6
        L76:
            r6 = move-exception
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r10 = "RemoteException: name:"
            r7.append(r10)
            r7.append(r8)
            java.lang.String r8 = " command:"
            r7.append(r8)
            r7.append(r9)
            java.lang.String r7 = r7.toString()
            java.lang.Object[] r8 = new java.lang.Object[r1]
            com.android.server.knox.dar.ddar.DDLog.e(r3, r7, r8)
            r6.printStackTrace()
            r6 = 0
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.knox.dar.ddar.proxy.SystemProxyAgent.relay(int, java.lang.String, java.lang.String, android.os.Bundle):android.os.Bundle");
    }
}
