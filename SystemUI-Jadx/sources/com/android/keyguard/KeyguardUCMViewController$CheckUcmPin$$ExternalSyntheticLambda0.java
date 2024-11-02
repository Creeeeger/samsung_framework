package com.android.keyguard;

import android.os.Bundle;
import com.android.keyguard.KeyguardUCMViewController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Thread f$0;
    public final /* synthetic */ int[] f$1;
    public final /* synthetic */ Bundle f$2;

    public /* synthetic */ KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0(Thread thread, int[] iArr, Bundle bundle, int i) {
        this.$r8$classId = i;
        this.f$0 = thread;
        this.f$1 = iArr;
        this.f$2 = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                KeyguardUCMViewController.CheckUcmPin checkUcmPin = (KeyguardUCMViewController.CheckUcmPin) this.f$0;
                int[] iArr = this.f$1;
                Bundle bundle = this.f$2;
                checkUcmPin.getClass();
                checkUcmPin.onVerifyPinResponse(iArr[0], iArr[2], bundle);
                return;
            default:
                KeyguardUCMViewController.CheckUcmPuk checkUcmPuk = (KeyguardUCMViewController.CheckUcmPuk) this.f$0;
                int[] iArr2 = this.f$1;
                Bundle bundle2 = this.f$2;
                int i = KeyguardUCMViewController.CheckUcmPuk.$r8$clinit;
                checkUcmPuk.getClass();
                checkUcmPuk.onVerifyPukResponse(iArr2[0], iArr2[2], bundle2);
                return;
        }
    }
}
