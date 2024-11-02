package com.android.systemui.qs.customize;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SecQSCustomizerController$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SecQSCustomizerController$$ExternalSyntheticLambda2(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((SecQSCustomizerController) this.f$0).mDoneCallBack.this$0.finish();
                return;
            case 1:
                ((SecQSCustomizerController) this.f$0).mIsReadyToClick = true;
                return;
            case 2:
                ((SecQSCustomizerController) this.f$0).mIsReadyToMove = true;
                return;
            default:
                SecQSCustomizerController secQSCustomizerController = SecQSCustomizerController.this;
                if (!((SecQSCustomizerBase) secQSCustomizerController.mView).mIsDragging) {
                    secQSCustomizerController.animationDrop(secQSCustomizerController.mLongClickedViewInfo);
                    return;
                }
                return;
        }
    }
}
