package com.samsung.android.knox.zt.devicetrust.attestation;

import android.content.Context;
import com.android.systemui.statusbar.notification.row.RowInflaterTask$$ExternalSyntheticOutline0;
import com.samsung.android.knox.zt.KnoxZtException;
import com.samsung.android.knox.zt.service.KnoxZtService;
import java.security.cert.X509Certificate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class DeviceAttestationManager {
    public static volatile DeviceAttestationManager sInstance;
    public final KnoxZtService mService;

    private DeviceAttestationManager(Context context) {
        try {
            this.mService = new KnoxZtService(context);
        } catch (Throwable th) {
            throw new KnoxZtException(RowInflaterTask$$ExternalSyntheticOutline0.m("DeviceAttestationManager failed : ", th));
        }
    }

    public static DeviceAttestationManager getInstance(Context context) {
        if (sInstance == null) {
            synchronized (DeviceAttestationManager.class) {
                if (sInstance == null) {
                    sInstance = new DeviceAttestationManager(context);
                }
            }
        }
        return sInstance;
    }

    public final boolean attestKey(String str, byte[] bArr) {
        try {
            return this.mService.attestKey(str, bArr);
        } catch (Throwable th) {
            throw new KnoxZtException(RowInflaterTask$$ExternalSyntheticOutline0.m("attestKey failed : ", th));
        }
    }

    public final int getAppIdStatus(X509Certificate x509Certificate, Context context) {
        try {
            return this.mService.getAppIdStatus(x509Certificate, context);
        } catch (Throwable th) {
            throw new KnoxZtException(RowInflaterTask$$ExternalSyntheticOutline0.m("getAppIdStatus failed : ", th));
        }
    }

    public final byte[] getChallenge(X509Certificate x509Certificate) {
        try {
            return this.mService.getChallenge(x509Certificate);
        } catch (Throwable th) {
            throw new KnoxZtException(RowInflaterTask$$ExternalSyntheticOutline0.m("getChallenge failed : ", th));
        }
    }

    public final String getDeviceId(X509Certificate x509Certificate) {
        try {
            return this.mService.getDeviceId(x509Certificate);
        } catch (Throwable th) {
            throw new KnoxZtException(RowInflaterTask$$ExternalSyntheticOutline0.m("getDeviceId failed : ", th));
        }
    }

    public final int getDeviceIdStatus(X509Certificate x509Certificate) {
        try {
            return this.mService.getDeviceIdStatus(x509Certificate);
        } catch (Throwable th) {
            throw new KnoxZtException(RowInflaterTask$$ExternalSyntheticOutline0.m("getDeviceIdStatus failed : ", th));
        }
    }

    public final int getIntegrityStatus(X509Certificate x509Certificate) {
        try {
            return this.mService.getIntegrityStatus(x509Certificate);
        } catch (Throwable th) {
            throw new KnoxZtException(RowInflaterTask$$ExternalSyntheticOutline0.m("getIntegrityStatus failed : ", th));
        }
    }

    public final int getOrigin(X509Certificate x509Certificate) {
        try {
            return this.mService.getOrigin(x509Certificate);
        } catch (Throwable th) {
            throw new KnoxZtException(RowInflaterTask$$ExternalSyntheticOutline0.m("getOrigin failed : ", th));
        }
    }

    public final int getRootOfTrustStatus(X509Certificate x509Certificate) {
        try {
            return this.mService.getRootOfTrustStatus(x509Certificate);
        } catch (Throwable th) {
            throw new KnoxZtException(RowInflaterTask$$ExternalSyntheticOutline0.m("getRootOfTrustStatus failed : ", th));
        }
    }

    public final int getSecurityLevel(X509Certificate x509Certificate) {
        try {
            return this.mService.getSecurityLevel(x509Certificate);
        } catch (Throwable th) {
            throw new KnoxZtException(RowInflaterTask$$ExternalSyntheticOutline0.m("getSecurityLevel failed : ", th));
        }
    }
}
