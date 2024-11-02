package com.android.systemui.qs.animator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class QsTransitionAnimator$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ QsTransitionAnimator f$0;

    public /* synthetic */ QsTransitionAnimator$$ExternalSyntheticLambda0(QsTransitionAnimator qsTransitionAnimator, int i) {
        this.$r8$classId = i;
        this.f$0 = qsTransitionAnimator;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.mContext.getResources();
                return;
            default:
                this.f$0.updateAnimators();
                return;
        }
    }
}
