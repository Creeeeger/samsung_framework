package com.samsung.android.knox.sdp.internal;

import android.os.ServiceManager;
import com.samsung.android.knox.dar.IDarManagerService;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class SdpAuthenticator {
    private static final String TAG = "SdpAuthenticator";
    private static SdpAuthenticator sInstance;
    private IDarManagerService mService = IDarManagerService.Stub.asInterface(ServiceManager.getService("dar"));

    private SdpAuthenticator() {
    }

    public static synchronized SdpAuthenticator getInstance() {
        SdpAuthenticator sdpAuthenticator;
        synchronized (SdpAuthenticator.class) {
            if (sInstance == null) {
                sInstance = new SdpAuthenticator();
            }
            sdpAuthenticator = sInstance;
        }
        return sdpAuthenticator;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0015 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onBiometricsAuthenticated(int r2) {
        /*
            r1 = this;
            com.samsung.android.knox.dar.IDarManagerService r1 = r1.mService
            if (r1 == 0) goto L11
            r1.onBiometricsAuthenticated(r2)     // Catch: android.os.RemoteException -> L9
            r1 = 0
            goto L13
        L9:
            r1 = move-exception
            java.lang.String r2 = "SdpAuthenticator"
            java.lang.String r0 = "Failed to call SDP API"
            android.util.Log.e(r2, r0, r1)
        L11:
            r1 = -13
        L13:
            if (r1 != 0) goto L16
            return
        L16:
            com.samsung.android.knox.sdp.core.SdpException r2 = new com.samsung.android.knox.sdp.core.SdpException
            r2.<init>(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.knox.sdp.internal.SdpAuthenticator.onBiometricsAuthenticated(int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0015 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onDeviceOwnerLocked(int r2) {
        /*
            r1 = this;
            com.samsung.android.knox.dar.IDarManagerService r1 = r1.mService
            if (r1 == 0) goto L11
            r1.onDeviceOwnerLocked(r2)     // Catch: android.os.RemoteException -> L9
            r1 = 0
            goto L13
        L9:
            r1 = move-exception
            java.lang.String r2 = "SdpAuthenticator"
            java.lang.String r0 = "Failed to call SDP API"
            android.util.Log.e(r2, r0, r1)
        L11:
            r1 = -13
        L13:
            if (r1 != 0) goto L16
            return
        L16:
            com.samsung.android.knox.sdp.core.SdpException r2 = new com.samsung.android.knox.sdp.core.SdpException
            r2.<init>(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.knox.sdp.internal.SdpAuthenticator.onDeviceOwnerLocked(int):void");
    }
}
