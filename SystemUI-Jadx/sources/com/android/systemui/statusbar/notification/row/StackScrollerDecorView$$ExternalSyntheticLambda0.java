package com.android.systemui.statusbar.notification.row;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StackScrollerDecorView$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ StackScrollerDecorView f$0;

    public /* synthetic */ StackScrollerDecorView$$ExternalSyntheticLambda0(StackScrollerDecorView stackScrollerDecorView) {
        this.f$0 = stackScrollerDecorView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        StackScrollerDecorView stackScrollerDecorView = this.f$0;
        stackScrollerDecorView.mContentAnimating = false;
        if (stackScrollerDecorView.getVisibility() != 8 && !stackScrollerDecorView.mIsVisible) {
            stackScrollerDecorView.setVisibility(8);
            stackScrollerDecorView.mWillBeGone = false;
            stackScrollerDecorView.notifyHeightChanged(false);
        }
    }
}
