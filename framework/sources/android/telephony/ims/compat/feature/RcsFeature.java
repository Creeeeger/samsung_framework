package android.telephony.ims.compat.feature;

import com.android.ims.internal.IImsRcsFeature;

/* loaded from: classes3.dex */
public class RcsFeature extends ImsFeature {
    private final IImsRcsFeature mImsRcsBinder = new IImsRcsFeature.Stub() { // from class: android.telephony.ims.compat.feature.RcsFeature.1
        AnonymousClass1() {
        }
    };

    /* renamed from: android.telephony.ims.compat.feature.RcsFeature$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends IImsRcsFeature.Stub {
        AnonymousClass1() {
        }
    }

    @Override // android.telephony.ims.compat.feature.ImsFeature
    public void onFeatureReady() {
    }

    @Override // android.telephony.ims.compat.feature.ImsFeature
    public void onFeatureRemoved() {
    }

    @Override // android.telephony.ims.compat.feature.ImsFeature
    public final IImsRcsFeature getBinder() {
        return this.mImsRcsBinder;
    }
}
