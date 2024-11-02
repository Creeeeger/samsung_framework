package com.android.keyguard;

import com.android.keyguard.KeyguardUCMViewController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Thread f$0;

    public /* synthetic */ KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda1(Thread thread, int i) {
        this.$r8$classId = i;
        this.f$0 = thread;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((KeyguardUCMViewController.CheckUcmPin) this.f$0).onVerifyPinResponse(-1, -1, null);
                return;
            default:
                KeyguardUCMViewController.CheckUcmPuk checkUcmPuk = (KeyguardUCMViewController.CheckUcmPuk) this.f$0;
                int i = KeyguardUCMViewController.CheckUcmPuk.$r8$clinit;
                checkUcmPuk.onVerifyPukResponse(-1, -1, null);
                return;
        }
    }
}
