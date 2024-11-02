package com.android.systemui.scrim;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ScrimView$$ExternalSyntheticLambda4 implements Runnable {
    public final /* synthetic */ ScrimView f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ boolean f$2 = false;

    public /* synthetic */ ScrimView$$ExternalSyntheticLambda4(ScrimView scrimView, int i) {
        this.f$0 = scrimView;
        this.f$1 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ScrimView scrimView = this.f$0;
        int i = this.f$1;
        boolean z = this.f$2;
        if (scrimView.mTintColor != i) {
            scrimView.mTintColor = i;
            scrimView.updateColorWithTint(z);
        }
    }
}
