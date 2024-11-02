package com.android.systemui.keyguard;

import com.android.systemui.keyguard.KeyguardIndicationRotateTextViewController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardIndicationRotateTextViewController$ShowNextIndication$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ KeyguardIndicationRotateTextViewController.ShowNextIndication f$0;

    @Override // java.lang.Runnable
    public final void run() {
        int intValue;
        KeyguardIndicationRotateTextViewController keyguardIndicationRotateTextViewController = this.f$0.this$0;
        if (keyguardIndicationRotateTextViewController.mIndicationQueue.size() == 0) {
            intValue = -1;
        } else {
            intValue = ((Integer) keyguardIndicationRotateTextViewController.mIndicationQueue.get(0)).intValue();
        }
        keyguardIndicationRotateTextViewController.showIndication(intValue);
    }
}
