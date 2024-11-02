package com.android.systemui.qs;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class QSFragment$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ QSFragment f$0;

    public /* synthetic */ QSFragment$$ExternalSyntheticLambda0(QSFragment qSFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = qSFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.updateQsState();
                return;
            case 1:
                this.f$0.mContainer.requestLayout();
                return;
            default:
                this.f$0.mLastQSExpansion = -1.0f;
                return;
        }
    }
}
