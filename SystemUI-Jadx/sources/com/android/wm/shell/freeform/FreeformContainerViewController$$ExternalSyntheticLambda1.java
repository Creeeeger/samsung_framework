package com.android.wm.shell.freeform;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class FreeformContainerViewController$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FreeformContainerViewController f$0;

    public /* synthetic */ FreeformContainerViewController$$ExternalSyntheticLambda1(FreeformContainerViewController freeformContainerViewController, int i) {
        this.$r8$classId = i;
        this.f$0 = freeformContainerViewController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                FreeformContainerView freeformContainerView = this.f$0.mContainerView;
                if (freeformContainerView != null) {
                    freeformContainerView.setVisibility(8);
                    return;
                }
                return;
            default:
                FreeformContainerViewController freeformContainerViewController = this.f$0;
                FreeformContainerDismissButtonView freeformContainerDismissButtonView = freeformContainerViewController.mDismissButtonView;
                if (freeformContainerDismissButtonView != null) {
                    freeformContainerDismissButtonView.mDismissButtonManager.cleanUpDismissTarget();
                    freeformContainerViewController.mDismissButtonView = null;
                    return;
                }
                return;
        }
    }
}
