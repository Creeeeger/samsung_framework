package com.android.systemui.statusbar.notification.row;

import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StackScrollerDecorView$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ StackScrollerDecorView$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                StackScrollerDecorView stackScrollerDecorView = (StackScrollerDecorView) this.f$0;
                stackScrollerDecorView.mSecondaryAnimating = false;
                if (stackScrollerDecorView.mSecondaryView != null && stackScrollerDecorView.getVisibility() != 8 && stackScrollerDecorView.mSecondaryView.getVisibility() != 8 && !stackScrollerDecorView.mIsSecondaryVisible) {
                    stackScrollerDecorView.mSecondaryView.setVisibility(8);
                    return;
                }
                return;
            default:
                Runnable runnable = (Runnable) this.f$0;
                int i = StackScrollerDecorView.$r8$clinit;
                runnable.run();
                return;
        }
    }
}
