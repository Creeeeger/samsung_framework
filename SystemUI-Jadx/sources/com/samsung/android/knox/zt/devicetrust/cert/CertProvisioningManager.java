package com.samsung.android.knox.zt.devicetrust.cert;

import android.content.Context;
import com.android.systemui.statusbar.notification.row.RowInflaterTask$$ExternalSyntheticOutline0;
import com.samsung.android.knox.zt.KnoxZtException;
import com.samsung.android.knox.zt.service.KnoxZtService;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class CertProvisioningManager {
    public static volatile CertProvisioningManager sInstance;
    public final KnoxZtService mService;

    private CertProvisioningManager(Context context) {
        try {
            this.mService = new KnoxZtService(context);
        } catch (Throwable th) {
            throw new KnoxZtException(RowInflaterTask$$ExternalSyntheticOutline0.m("CertProvisioningManager failed : ", th));
        }
    }

    public static CertProvisioningManager getInstance(Context context) {
        if (sInstance == null) {
            synchronized (CertProvisioningManager.class) {
                if (sInstance == null) {
                    sInstance = new CertProvisioningManager(context);
                }
            }
        }
        return sInstance;
    }

    public final int provisionCert(CertProvisionProfile certProvisionProfile, ICertProvisionListener iCertProvisionListener) {
        try {
            return this.mService.provisionCert(certProvisionProfile, iCertProvisionListener);
        } catch (Throwable th) {
            throw new KnoxZtException(RowInflaterTask$$ExternalSyntheticOutline0.m("provisionCert failed : ", th));
        }
    }
}
