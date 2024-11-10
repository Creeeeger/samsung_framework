package com.android.server.knox.dar.ddar.ta;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.ServiceManager;
import android.os.UserHandle;
import com.android.server.knox.dar.ddar.DDLog;
import com.samsung.android.knox.dar.ddar.proxy.IProxyAgentService;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import vendor.samsung.hardware.tlc.ddar.ISehDdar;

/* loaded from: classes2.dex */
public class TAProxy extends IProxyAgentService {
    public static Context mContext;
    public static TAProxy mInstance;
    public ISehDdar iSehDdar;
    public Map mTAMap = new HashMap();

    /* loaded from: classes2.dex */
    public class TAInfo {
        public int maxRecvRespSize;
        public int maxSendCmdSize;
        public TZNative ta;
        public int taId;
        public String taProcessName;
        public String taRootName;
        public String taTechnology;

        public TAInfo() {
        }
    }

    public static synchronized TAProxy getInstance(Context context) {
        TAProxy tAProxy;
        synchronized (TAProxy.class) {
            if (mInstance == null) {
                mInstance = new TAProxy(context);
            }
            tAProxy = mInstance;
        }
        return tAProxy;
    }

    public TAProxy(Context context) {
        DDLog.d("TAProxy", "TAProxy() called updated", new Object[0]);
        mContext = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0051, code lost:
    
        if (r7.equals("SETUP_TA") != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.os.Bundle onMessage(int r6, java.lang.String r7, android.os.Bundle r8) {
        /*
            r5 = this;
            r5.enforceCallingUser(r6)
            java.lang.String r6 = "TAProxy"
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L80
            r0.<init>()     // Catch: java.lang.Exception -> L80
            java.lang.String r1 = "onMessage() "
            r0.append(r1)     // Catch: java.lang.Exception -> L80
            r0.append(r7)     // Catch: java.lang.Exception -> L80
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Exception -> L80
            r1 = 0
            java.lang.Object[] r2 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L80
            com.android.server.knox.dar.ddar.DDLog.d(r6, r0, r2)     // Catch: java.lang.Exception -> L80
            android.os.Bundle r6 = new android.os.Bundle     // Catch: java.lang.Exception -> L80
            r6.<init>()     // Catch: java.lang.Exception -> L80
            int r0 = r7.hashCode()     // Catch: java.lang.Exception -> L80
            r2 = 3
            r3 = 2
            r4 = 1
            switch(r0) {
                case -2076560497: goto L4b;
                case 540100525: goto L41;
                case 1054654566: goto L37;
                case 1663958331: goto L2d;
                default: goto L2c;
            }     // Catch: java.lang.Exception -> L80
        L2c:
            goto L54
        L2d:
            java.lang.String r0 = "PROCESS_COMMAND"
            boolean r7 = r7.equals(r0)     // Catch: java.lang.Exception -> L80
            if (r7 == 0) goto L54
            r1 = r2
            goto L55
        L37:
            java.lang.String r0 = "LOAD_TA"
            boolean r7 = r7.equals(r0)     // Catch: java.lang.Exception -> L80
            if (r7 == 0) goto L54
            r1 = r4
            goto L55
        L41:
            java.lang.String r0 = "UNLOAD_TA"
            boolean r7 = r7.equals(r0)     // Catch: java.lang.Exception -> L80
            if (r7 == 0) goto L54
            r1 = r3
            goto L55
        L4b:
            java.lang.String r0 = "SETUP_TA"
            boolean r7 = r7.equals(r0)     // Catch: java.lang.Exception -> L80
            if (r7 == 0) goto L54
            goto L55
        L54:
            r1 = -1
        L55:
            java.lang.String r7 = "dual_dar_response"
            if (r1 == 0) goto L78
            if (r1 == r4) goto L70
            if (r1 == r3) goto L68
            if (r1 == r2) goto L60
            goto L7f
        L60:
            android.os.Bundle r5 = r5.processCommandRequest(r8)     // Catch: java.lang.Exception -> L80
            r6.putBundle(r7, r5)     // Catch: java.lang.Exception -> L80
            goto L7f
        L68:
            boolean r5 = r5.unloadTARequest(r8)     // Catch: java.lang.Exception -> L80
            r6.putBoolean(r7, r5)     // Catch: java.lang.Exception -> L80
            goto L7f
        L70:
            boolean r5 = r5.loadTARequest(r8)     // Catch: java.lang.Exception -> L80
            r6.putBoolean(r7, r5)     // Catch: java.lang.Exception -> L80
            goto L7f
        L78:
            boolean r5 = r5.setupTARequest(r8)     // Catch: java.lang.Exception -> L80
            r6.putBoolean(r7, r5)     // Catch: java.lang.Exception -> L80
        L7f:
            return r6
        L80:
            r5 = move-exception
            r5.printStackTrace()
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.knox.dar.ddar.ta.TAProxy.onMessage(int, java.lang.String, android.os.Bundle):android.os.Bundle");
    }

    public final boolean setupTARequest(Bundle bundle) {
        DDLog.d("TAProxy", "setupTARequest called", new Object[0]);
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("ALL_TAS");
        for (int i = 0; i < parcelableArrayList.size(); i++) {
            Bundle bundle2 = (Bundle) parcelableArrayList.get(i);
            int i2 = bundle2.getInt("TA_ID");
            if (!this.mTAMap.containsKey(Integer.valueOf(i2))) {
                createTANative(bundle2, i2);
            }
        }
        DDLog.d("TAProxy", "setupTARequest completed", new Object[0]);
        return true;
    }

    public final void createTANative(Bundle bundle, int i) {
        TAInfo tAInfo = new TAInfo();
        tAInfo.taId = i;
        tAInfo.taTechnology = bundle.getString("TA_TECHNOLOGY");
        tAInfo.taRootName = bundle.getString("TA_ROOT_NAME");
        tAInfo.taProcessName = bundle.getString("TA_PROCESS_NAME");
        tAInfo.maxSendCmdSize = bundle.getInt("TA_SEND_CMD_SIZE");
        int i2 = bundle.getInt("TA_RECV_RESP_SIZE");
        tAInfo.maxRecvRespSize = i2;
        tAInfo.ta = new TZNative(tAInfo.taId, tAInfo.taTechnology, tAInfo.taRootName, tAInfo.taProcessName, tAInfo.maxSendCmdSize, i2);
        this.mTAMap.put(Integer.valueOf(tAInfo.taId), tAInfo);
    }

    public final boolean loadTARequest(Bundle bundle) {
        DDLog.d("TAProxy", "loadTARequest called", new Object[0]);
        return loadTA(bundle.getInt("TA_ID"), (ParcelFileDescriptor) bundle.getParcelable("TA_FD"), bundle.getLong("TA_FD_OFFSET"), bundle.getLong("TA_FD_SIZE"));
    }

    public final boolean unloadTARequest(Bundle bundle) {
        DDLog.d("TAProxy", "unloadTARequest called", new Object[0]);
        unloadTA(bundle.getInt("TA_ID"));
        return true;
    }

    public final Bundle processCommandRequest(Bundle bundle) {
        DDLog.d("TAProxy", "processCommandRequest called", new Object[0]);
        int i = bundle.getInt("TA_ID");
        Bundle bundle2 = new Bundle();
        TACommandRequest tACommandRequest = new TACommandRequest();
        tACommandRequest.init(bundle.getInt("TA_VERSION"), bundle.getByteArray("TA_MAGICNUM"), bundle.getInt("TA_CMD_ID"), bundle.getByteArray("TA_CMD_DATA"));
        TACommandResponse processTACommand = processTACommand(i, tACommandRequest);
        if (processTACommand != null) {
            bundle2.putInt("TA_RESP_CODE", processTACommand.mResponseCode);
            bundle2.putString("TA_ERROR_MSG", processTACommand.mErrorMsg);
            bundle2.putByteArray("TA_RESPDATA", processTACommand.mResponse);
        }
        return bundle2;
    }

    public TACommandResponse processTACommand(int i, TACommandRequest tACommandRequest) {
        DDLog.d("TAProxy", "TAProxy::processTACommand: request = " + tACommandRequest + "; request.mCommandId = " + tACommandRequest.mCommandId + "; this.mTAId = " + i, new Object[0]);
        return ((TAInfo) this.mTAMap.get(Integer.valueOf(i))).ta.processTACommand(tACommandRequest);
    }

    public boolean loadTA(int i, ParcelFileDescriptor parcelFileDescriptor, long j, long j2) {
        DDLog.d("TAProxy", "TAProxy::loadTA", new Object[0]);
        int fd = parcelFileDescriptor != null ? parcelFileDescriptor.getFd() : -1;
        DDLog.d("TAProxy", "TA fd=" + fd + " offset=" + j + " size=" + j2, new Object[0]);
        try {
            TAInfo tAInfo = (TAInfo) this.mTAMap.get(Integer.valueOf(i));
            if (tAInfo == null) {
                DDLog.d("TAProxy", "TAProxy::loadTA failed. TAInfo is null on Map.", new Object[0]);
                return false;
            }
            boolean loadTA = tAInfo.ta.loadTA(fd, j, j2);
            if (loadTA) {
                updateServiceHolder(true);
            }
            if (parcelFileDescriptor != null) {
                try {
                    parcelFileDescriptor.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return loadTA;
        } finally {
            if (parcelFileDescriptor != null) {
                try {
                    parcelFileDescriptor.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public void unloadTA(int i) {
        DDLog.d("TAProxy", "TAProxy::unloadTA", new Object[0]);
        TAInfo tAInfo = (TAInfo) this.mTAMap.get(Integer.valueOf(i));
        if (tAInfo == null) {
            DDLog.d("TAProxy", "TAProxy::unloadTA failed. TAInfo is null on Map.", new Object[0]);
            return;
        }
        tAInfo.ta.unloadTA();
        this.mTAMap.remove(Integer.valueOf(i));
        if (this.mTAMap.size() <= 0) {
            updateServiceHolder(false);
        }
    }

    public final void enforceCallingUser(int i) {
        DDLog.d("TAProxy", "enforceCallingUser", new Object[0]);
        int callingUid = Binder.getCallingUid();
        if (UserHandle.getAppId(callingUid) != 5250 && UserHandle.getAppId(callingUid) != Process.myUid()) {
            throw new SecurityException("Can only be called by system user");
        }
    }

    public final void updateServiceHolder(boolean z) {
        try {
            if (Integer.parseInt("33") >= 34) {
                boolean isDeclared = ServiceManager.isDeclared("vendor.samsung.hardware.tlc.ddar.ISehDdar/default");
                DDLog.d("TAProxy", "updateServiceHolder: " + isDeclared + ", " + z + ", " + this.iSehDdar, new Object[0]);
                if (isDeclared) {
                    if (z) {
                        ISehDdar iSehDdar = this.iSehDdar;
                        if (iSehDdar == null) {
                            iSehDdar = ISehDdar.Stub.asInterface(ServiceManager.waitForService("vendor.samsung.hardware.tlc.ddar.ISehDdar/default"));
                        }
                        this.iSehDdar = iSehDdar;
                        return;
                    }
                    this.iSehDdar = null;
                }
            }
        } catch (Exception e) {
            DDLog.e("TAProxy", "updateServiceHolder failed: " + e, new Object[0]);
        }
    }
}
