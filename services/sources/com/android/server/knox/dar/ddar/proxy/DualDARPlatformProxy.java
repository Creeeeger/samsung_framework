package com.android.server.knox.dar.ddar.proxy;

import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import com.android.server.knox.dar.ddar.DDLog;
import com.samsung.android.knox.ContextInfo;
import com.samsung.android.knox.SemPersonaManager;
import com.samsung.android.knox.dar.ddar.proxy.IProxyAgentService;
import com.samsung.android.knox.ddar.IDualDARPolicy;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;

/* loaded from: classes2.dex */
public class DualDARPlatformProxy extends IProxyAgentService {
    public static DualDARPlatformProxy mInstance;
    public final Context mContext;
    public IDualDARPolicy mDualDARPolicyService = null;

    public DualDARPlatformProxy(Context context) {
        DDLog.d("DualDARPlatformProxy", "DualDARPlatformProxy() constructor", new Object[0]);
        this.mContext = context;
    }

    public static synchronized DualDARPlatformProxy getInstance(Context context) {
        DualDARPlatformProxy dualDARPlatformProxy;
        synchronized (DualDARPlatformProxy.class) {
            if (mInstance == null) {
                mInstance = new DualDARPlatformProxy(context);
            }
            dualDARPlatformProxy = mInstance;
        }
        return dualDARPlatformProxy;
    }

    public final Optional getDualDARPolicyService() {
        if (this.mDualDARPolicyService == null) {
            this.mDualDARPolicyService = IDualDARPolicy.Stub.asInterface(ServiceManager.getService("DualDARPolicy"));
        }
        return Optional.ofNullable(this.mDualDARPolicyService);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003f, code lost:
    
        if (r6.equals("SET_CLIENT_INFO") != false) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0052 A[Catch: Exception -> 0x0059, TRY_LEAVE, TryCatch #0 {Exception -> 0x0059, blocks: (B:2:0x0000, B:11:0x004a, B:15:0x0052, B:17:0x002f, B:20:0x0039), top: B:1:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.os.Bundle onMessage(int r5, java.lang.String r6, android.os.Bundle r7) {
        /*
            r4 = this;
            java.lang.String r5 = "DualDARPlatformProxy"
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L59
            r0.<init>()     // Catch: java.lang.Exception -> L59
            java.lang.String r1 = "onMessage() "
            r0.append(r1)     // Catch: java.lang.Exception -> L59
            r0.append(r6)     // Catch: java.lang.Exception -> L59
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Exception -> L59
            r1 = 0
            java.lang.Object[] r2 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L59
            com.android.server.knox.dar.ddar.DDLog.d(r5, r0, r2)     // Catch: java.lang.Exception -> L59
            android.os.Bundle r5 = new android.os.Bundle     // Catch: java.lang.Exception -> L59
            r5.<init>()     // Catch: java.lang.Exception -> L59
            int r0 = r6.hashCode()     // Catch: java.lang.Exception -> L59
            r2 = -1735614427(0xffffffff988ca025, float:-3.6350856E-24)
            r3 = 1
            if (r0 == r2) goto L39
            r1 = -566780687(0xffffffffde379cf1, float:-3.3076787E18)
            if (r0 == r1) goto L2f
            goto L42
        L2f:
            java.lang.String r0 = "GET_DUALDAR_CONFIG"
            boolean r6 = r6.equals(r0)     // Catch: java.lang.Exception -> L59
            if (r6 == 0) goto L42
            r1 = r3
            goto L43
        L39:
            java.lang.String r0 = "SET_CLIENT_INFO"
            boolean r6 = r6.equals(r0)     // Catch: java.lang.Exception -> L59
            if (r6 == 0) goto L42
            goto L43
        L42:
            r1 = -1
        L43:
            java.lang.String r6 = "dual_dar_response"
            if (r1 == 0) goto L52
            if (r1 == r3) goto L4a
            goto L58
        L4a:
            android.os.Bundle r5 = r4.getConfig(r7)     // Catch: java.lang.Exception -> L59
            r5.putBoolean(r6, r3)     // Catch: java.lang.Exception -> L59
            goto L58
        L52:
            r4.setClientInfo(r7)     // Catch: java.lang.Exception -> L59
            r5.putBoolean(r6, r3)     // Catch: java.lang.Exception -> L59
        L58:
            return r5
        L59:
            r4 = move-exception
            r4.printStackTrace()
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.knox.dar.ddar.proxy.DualDARPlatformProxy.onMessage(int, java.lang.String, android.os.Bundle):android.os.Bundle");
    }

    public final Bundle getConfig(final Bundle bundle) {
        return (Bundle) getDualDARPolicyService().map(new Function() { // from class: com.android.server.knox.dar.ddar.proxy.DualDARPlatformProxy$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Bundle lambda$getConfig$0;
                lambda$getConfig$0 = DualDARPlatformProxy.this.lambda$getConfig$0(bundle, (IDualDARPolicy) obj);
                return lambda$getConfig$0;
            }
        }).orElse(new Bundle());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bundle lambda$getConfig$0(Bundle bundle, IDualDARPolicy iDualDARPolicy) {
        int i;
        int i2 = bundle.getInt("user_id");
        try {
            i = this.mContext.getPackageManager().getPackageUidAsUser(getAdminComponentName(i2).getPackageName(), i2);
        } catch (Exception e) {
            DDLog.e("DualDARPlatformProxy", "getConfig failed ! Component may be null" + e.getMessage(), new Object[0]);
            i = -1;
        }
        try {
            return iDualDARPolicy.getConfig(new ContextInfo(i, i2));
        } catch (RemoteException unused) {
            DDLog.e("DualDARPlatformProxy", "getConfig Failed", new Object[0]);
            return new Bundle();
        }
    }

    public final ComponentName getAdminComponentName(int i) {
        return SemPersonaManager.getAdminComponentName(i);
    }

    public final void setClientInfo(final Bundle bundle) {
        getDualDARPolicyService().ifPresent(new Consumer() { // from class: com.android.server.knox.dar.ddar.proxy.DualDARPlatformProxy$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DualDARPlatformProxy.this.lambda$setClientInfo$1(bundle, (IDualDARPolicy) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setClientInfo$1(Bundle bundle, IDualDARPolicy iDualDARPolicy) {
        int i;
        int i2 = -1;
        try {
            i = bundle.getInt("user_id");
            try {
                String string = bundle.getString("DUAL_DAR_ADMIN_PACKAGE", "null");
                if (string.equals("null")) {
                    string = getAdminComponentName(i).getPackageName();
                }
                DDLog.d("DualDARPlatformProxy", "setClientInfo adminPackage : " + string, new Object[0]);
                i2 = this.mContext.getPackageManager().getPackageUidAsUser(string, i);
                DDLog.d("DualDARPlatformProxy", "setClientInfo adminUid : " + i2, new Object[0]);
            } catch (Exception e) {
                e = e;
                DDLog.e("DualDARPlatformProxy", "setClientInfo failed ! Component may be null" + e.getMessage(), new Object[0]);
                String string2 = bundle.getString("CLIENT_PACKAGE_NAME");
                String string3 = bundle.getString("CLIENT_PACKAGE_SIGNATURE");
                String string4 = bundle.getString("CLIENT_VERSION");
                DDLog.d("DualDARPlatformProxy", "setClientInfo packageName " + string2 + "packageSig " + string3 + "client version " + string4 + "user id " + i, new Object[0]);
                iDualDARPolicy.setClientInfo(new ContextInfo(i2, i), string2, string3, string4);
            }
        } catch (Exception e2) {
            e = e2;
            i = -1;
        }
        String string22 = bundle.getString("CLIENT_PACKAGE_NAME");
        String string32 = bundle.getString("CLIENT_PACKAGE_SIGNATURE");
        String string42 = bundle.getString("CLIENT_VERSION");
        DDLog.d("DualDARPlatformProxy", "setClientInfo packageName " + string22 + "packageSig " + string32 + "client version " + string42 + "user id " + i, new Object[0]);
        try {
            iDualDARPolicy.setClientInfo(new ContextInfo(i2, i), string22, string32, string42);
        } catch (RemoteException unused) {
            DDLog.e("DualDARPlatformProxy", "setClientInfo Failed", new Object[0]);
        }
    }
}
