package com.android.server.knox.dar.ddar;

import android.content.Context;
import android.os.Process;
import android.os.ServiceManager;
import android.os.UserHandle;
import com.samsung.android.knox.ISemPersonaManager;
import com.samsung.android.knox.dar.ddar.proxy.IProxyAgentService;

/* loaded from: classes2.dex */
public class DDCache extends IProxyAgentService {
    public static volatile DDCache _instance;
    public Context context;
    public ISemPersonaManager semPersonaManager;

    public static synchronized DDCache getInstance(Context context) {
        DDCache dDCache;
        synchronized (DDCache.class) {
            if (_instance == null) {
                _instance = new DDCache(context);
            }
            dDCache = _instance;
        }
        return dDCache;
    }

    public DDCache(Context context) {
        this.context = context;
    }

    public final ISemPersonaManager getPersonaService() {
        if (this.semPersonaManager == null) {
            try {
                this.semPersonaManager = ISemPersonaManager.Stub.asInterface(ServiceManager.getService("persona"));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return this.semPersonaManager;
    }

    public void set(int i, String str, String str2) {
        try {
            getPersonaService().updatePersonaCache(constructuctCacheKey(i, str), str2);
        } catch (Exception e) {
            e.printStackTrace();
            DDLog.e("DDCache", "set value failed", new Object[0]);
        }
    }

    public String get(int i, String str) {
        try {
            return getPersonaService().getPersonaCacheValue(constructuctCacheKey(i, str));
        } catch (Exception e) {
            e.printStackTrace();
            DDLog.e("DDCache", "get value failed", new Object[0]);
            return null;
        }
    }

    public final String constructuctCacheKey(int i, String str) {
        return "DUALDAR_User_" + i + "_" + str;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0088 A[Catch: Exception -> 0x009e, TRY_LEAVE, TryCatch #0 {Exception -> 0x009e, blocks: (B:3:0x0001, B:15:0x0063, B:18:0x0075, B:19:0x0088, B:20:0x0036, B:23:0x003f, B:26:0x0049), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.os.Bundle onMessage(int r9, java.lang.String r10, android.os.Bundle r11) {
        /*
            r8 = this;
            r0 = 0
            java.lang.String r1 = "DDCache"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L9e
            r2.<init>()     // Catch: java.lang.Exception -> L9e
            java.lang.String r3 = "onMessage() "
            r2.append(r3)     // Catch: java.lang.Exception -> L9e
            r2.append(r10)     // Catch: java.lang.Exception -> L9e
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L9e
            r3 = 0
            java.lang.Object[] r4 = new java.lang.Object[r3]     // Catch: java.lang.Exception -> L9e
            com.android.server.knox.dar.ddar.DDLog.d(r1, r2, r4)     // Catch: java.lang.Exception -> L9e
            android.os.Bundle r1 = new android.os.Bundle     // Catch: java.lang.Exception -> L9e
            r1.<init>()     // Catch: java.lang.Exception -> L9e
            int r2 = r10.hashCode()     // Catch: java.lang.Exception -> L9e
            r4 = -227631335(0xfffffffff26e9f19, float:-4.7263853E30)
            r5 = 2
            r6 = 1
            if (r2 == r4) goto L49
            r4 = 180589038(0xac391ee, float:1.883271E-32)
            if (r2 == r4) goto L3f
            r4 = 1729581666(0x67175262, float:7.14597E23)
            if (r2 == r4) goto L36
            goto L53
        L36:
            java.lang.String r2 = "SET_DATA_CMD"
            boolean r10 = r10.equals(r2)     // Catch: java.lang.Exception -> L9e
            if (r10 == 0) goto L53
            goto L54
        L3f:
            java.lang.String r2 = "GET_DATA_CMD"
            boolean r10 = r10.equals(r2)     // Catch: java.lang.Exception -> L9e
            if (r10 == 0) goto L53
            r3 = r6
            goto L54
        L49:
            java.lang.String r2 = "DELETE_DATA_CMD"
            boolean r10 = r10.equals(r2)     // Catch: java.lang.Exception -> L9e
            if (r10 == 0) goto L53
            r3 = r5
            goto L54
        L53:
            r3 = -1
        L54:
            java.lang.String r10 = "DUAL_DAR_VALUE"
            java.lang.String r2 = "dual_dar_response"
            java.lang.String r4 = "DUAL_DAR_KEY"
            java.lang.String r7 = "DUAL_DAR_USER_ID"
            if (r3 == 0) goto L88
            if (r3 == r6) goto L75
            if (r3 == r5) goto L63
            goto L9d
        L63:
            r8.enforceCallingUser(r9)     // Catch: java.lang.Exception -> L9e
            int r9 = r11.getInt(r7)     // Catch: java.lang.Exception -> L9e
            java.lang.String r10 = r11.getString(r4)     // Catch: java.lang.Exception -> L9e
            r8.set(r9, r10, r0)     // Catch: java.lang.Exception -> L9e
            r1.putBoolean(r2, r6)     // Catch: java.lang.Exception -> L9e
            goto L9d
        L75:
            int r9 = r11.getInt(r7)     // Catch: java.lang.Exception -> L9e
            java.lang.String r11 = r11.getString(r4)     // Catch: java.lang.Exception -> L9e
            java.lang.String r8 = r8.get(r9, r11)     // Catch: java.lang.Exception -> L9e
            r1.putString(r10, r8)     // Catch: java.lang.Exception -> L9e
            r1.putBoolean(r2, r6)     // Catch: java.lang.Exception -> L9e
            goto L9d
        L88:
            r8.enforceCallingUser(r9)     // Catch: java.lang.Exception -> L9e
            int r9 = r11.getInt(r7)     // Catch: java.lang.Exception -> L9e
            java.lang.String r3 = r11.getString(r4)     // Catch: java.lang.Exception -> L9e
            java.lang.String r10 = r11.getString(r10)     // Catch: java.lang.Exception -> L9e
            r8.set(r9, r3, r10)     // Catch: java.lang.Exception -> L9e
            r1.putBoolean(r2, r6)     // Catch: java.lang.Exception -> L9e
        L9d:
            return r1
        L9e:
            r8 = move-exception
            r8.printStackTrace()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.knox.dar.ddar.DDCache.onMessage(int, java.lang.String, android.os.Bundle):android.os.Bundle");
    }

    public final void enforceCallingUser(int i) {
        if (UserHandle.getAppId(i) == 5250 || UserHandle.getAppId(i) == 1000 || UserHandle.getAppId(i) == Process.myUid()) {
            return;
        }
        throw new SecurityException("Can only be called by system user. callingUid: " + i);
    }
}
