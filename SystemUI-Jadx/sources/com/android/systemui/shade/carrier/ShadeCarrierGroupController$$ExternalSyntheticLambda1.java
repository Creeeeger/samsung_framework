package com.android.systemui.shade.carrier;

import com.android.keyguard.CarrierTextManager;
import com.android.keyguard.CarrierTextManager$$ExternalSyntheticLambda0;
import com.android.systemui.shade.carrier.ShadeCarrierGroupController;
import com.android.systemui.statusbar.connectivity.NetworkController;
import com.android.systemui.statusbar.connectivity.NetworkControllerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ShadeCarrierGroupController$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ShadeCarrierGroupController f$0;

    public /* synthetic */ ShadeCarrierGroupController$$ExternalSyntheticLambda1(ShadeCarrierGroupController shadeCarrierGroupController, int i) {
        this.$r8$classId = i;
        this.f$0 = shadeCarrierGroupController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        switch (this.$r8$classId) {
            case 0:
                this.f$0.handleUpdateState();
                return;
            default:
                ShadeCarrierGroupController shadeCarrierGroupController = this.f$0;
                boolean z2 = shadeCarrierGroupController.mListening;
                ShadeCarrierGroupController.AnonymousClass1 anonymousClass1 = shadeCarrierGroupController.mSignalCallback;
                CarrierTextManager carrierTextManager = shadeCarrierGroupController.mCarrierTextManager;
                NetworkController networkController = shadeCarrierGroupController.mNetworkController;
                if (z2) {
                    NetworkControllerImpl networkControllerImpl = (NetworkControllerImpl) networkController;
                    if (networkControllerImpl.mPhone.getPhoneType() != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        networkControllerImpl.addCallback(anonymousClass1);
                    }
                    carrierTextManager.getClass();
                    carrierTextManager.mBgExecutor.execute(new CarrierTextManager$$ExternalSyntheticLambda0(carrierTextManager, shadeCarrierGroupController.mCallback));
                    return;
                }
                ((NetworkControllerImpl) networkController).removeCallback(anonymousClass1);
                carrierTextManager.getClass();
                carrierTextManager.mBgExecutor.execute(new CarrierTextManager$$ExternalSyntheticLambda0(carrierTextManager, (CarrierTextManager.CarrierTextCallback) null));
                return;
        }
    }
}
