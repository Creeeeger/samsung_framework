package com.android.keyguard;

import com.android.keyguard.CarrierTextManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class CarrierTextManager$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ CarrierTextManager$$ExternalSyntheticLambda2(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                CarrierTextManager carrierTextManager = (CarrierTextManager) this.f$0;
                boolean isDataCapable = carrierTextManager.mTelephonyManager.isDataCapable();
                if (isDataCapable && carrierTextManager.mNetworkSupported.compareAndSet(false, isDataCapable)) {
                    carrierTextManager.handleSetListening(carrierTextManager.mCarrierTextCallback);
                    return;
                }
                return;
            case 1:
                CarrierTextManager carrierTextManager2 = (CarrierTextManager) this.f$0;
                carrierTextManager2.mKeyguardUpdateMonitor.registerCallback(carrierTextManager2.mCallback);
                carrierTextManager2.mWakefulnessLifecycle.addObserver(carrierTextManager2.mWakefulnessObserver);
                return;
            case 2:
                CarrierTextManager carrierTextManager3 = (CarrierTextManager) this.f$0;
                carrierTextManager3.mKeyguardUpdateMonitor.registerCallback(carrierTextManager3.mCallback);
                return;
            case 3:
                CarrierTextManager carrierTextManager4 = (CarrierTextManager) this.f$0;
                carrierTextManager4.mKeyguardUpdateMonitor.removeCallback(carrierTextManager4.mCallback);
                carrierTextManager4.mWakefulnessLifecycle.removeObserver(carrierTextManager4.mWakefulnessObserver);
                return;
            default:
                ((CarrierTextManager.CarrierTextCallback) this.f$0).updateCarrierInfo(new CarrierTextManager.CarrierTextCallbackInfo("", null, false, null));
                return;
        }
    }
}
