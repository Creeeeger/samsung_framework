package com.android.keyguard;

import com.android.keyguard.StrongAuthPopup;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class StrongAuthPopup$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ StrongAuthPopup$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((StrongAuthPopup) this.f$0).show();
                return;
            case 1:
                ((StrongAuthPopup) this.f$0).updatePopup();
                return;
            default:
                ((StrongAuthPopup.AnonymousClass2) this.f$0).this$0.dismiss();
                return;
        }
    }
}
