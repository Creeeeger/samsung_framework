package com.android.server.knox.zt.devicetrust;

import android.net.INetd;
import android.os.ServiceManager;
import android.util.Log;
import com.android.internal.net.IOemNetd;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;

/* loaded from: classes2.dex */
public class OemNetdAdapterImpl implements OemNetdAdapter {
    public static final String TAG = OemNetdAdapterImpl.class.getSimpleName() + ".ztd";

    public final IOemNetd getOemNetdService() {
        try {
            return IOemNetd.Stub.asInterface(INetd.Stub.asInterface(ServiceManager.getService(KnoxVpnFirewallHelper.NETD_SERVICE_NAME)).getOemNetd());
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // com.android.server.knox.zt.devicetrust.OemNetdAdapter
    public int attachProbes(int i) {
        Log.i(TAG, "attachProbes(" + i + ")");
        if ((i & 64) > 0) {
            return enablePacketTracing();
        }
        return -2;
    }

    @Override // com.android.server.knox.zt.devicetrust.OemNetdAdapter
    public int detachProbes(int i) {
        Log.i(TAG, "detachProbes(" + i + ")");
        if ((i & 64) > 0) {
            return disablePacketTracing();
        }
        return -2;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int enablePacketTracing() {
        /*
            r3 = this;
            com.android.internal.net.IOemNetd r3 = r3.getOemNetdService()
            if (r3 == 0) goto L12
            java.lang.String r0 = "wlan0"
            int r3 = r3.enableTlsPacketTracing(r0)     // Catch: android.os.RemoteException -> Le
            goto L13
        Le:
            r3 = move-exception
            r3.printStackTrace()
        L12:
            r3 = -6
        L13:
            if (r3 == 0) goto L30
            java.lang.String r0 = com.android.server.knox.zt.devicetrust.OemNetdAdapterImpl.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Failed to enable packet tracing("
            r1.append(r2)
            r1.append(r3)
            java.lang.String r2 = ")"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            android.util.Log.e(r0, r1)
        L30:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.knox.zt.devicetrust.OemNetdAdapterImpl.enablePacketTracing():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int disablePacketTracing() {
        /*
            r3 = this;
            com.android.internal.net.IOemNetd r3 = r3.getOemNetdService()
            if (r3 == 0) goto L12
            java.lang.String r0 = "wlan0"
            int r3 = r3.disableTlsPacketTracing(r0)     // Catch: android.os.RemoteException -> Le
            goto L13
        Le:
            r3 = move-exception
            r3.printStackTrace()
        L12:
            r3 = -6
        L13:
            if (r3 == 0) goto L30
            java.lang.String r0 = com.android.server.knox.zt.devicetrust.OemNetdAdapterImpl.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Failed to disable packet tracing("
            r1.append(r2)
            r1.append(r3)
            java.lang.String r2 = ")"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            android.util.Log.e(r0, r1)
        L30:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.knox.zt.devicetrust.OemNetdAdapterImpl.disablePacketTracing():int");
    }
}
