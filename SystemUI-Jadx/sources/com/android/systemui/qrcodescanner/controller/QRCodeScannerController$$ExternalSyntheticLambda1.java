package com.android.systemui.qrcodescanner.controller;

import com.android.systemui.qrcodescanner.controller.QRCodeScannerController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class QRCodeScannerController$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ QRCodeScannerController$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((QRCodeScannerController) this.f$0).updateQRCodeScannerActivityDetails();
                return;
            case 1:
                ((QRCodeScannerController) this.f$0).updateQRCodeScannerPreferenceDetails(true);
                return;
            default:
                ((QRCodeScannerController.AnonymousClass1) this.f$0).this$0.updateQRCodeScannerPreferenceDetails(false);
                return;
        }
    }
}
