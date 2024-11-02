package com.android.systemui.shade.carrier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ShadeCarrierGroupController$$ExternalSyntheticLambda2 {
    public final /* synthetic */ ShadeCarrierGroupController f$0;

    public final void updateCarrierInfo(final String str) {
        final ShadeCarrierGroupController shadeCarrierGroupController = this.f$0;
        shadeCarrierGroupController.getClass();
        shadeCarrierGroupController.mMainHandler.post(new Runnable() { // from class: com.android.systemui.shade.carrier.ShadeCarrierGroupController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ShadeCarrierGroupController shadeCarrierGroupController2 = ShadeCarrierGroupController.this;
                shadeCarrierGroupController2.mCarrierGroups[0].setCarrierText(str);
            }
        });
    }
}
