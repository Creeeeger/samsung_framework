package com.android.wm.shell.splitscreen;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SplitBackgroundController$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SplitBackgroundController f$0;

    public /* synthetic */ SplitBackgroundController$$ExternalSyntheticLambda0(SplitBackgroundController splitBackgroundController, int i) {
        this.$r8$classId = i;
        this.f$0 = splitBackgroundController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                SplitBackgroundController splitBackgroundController = this.f$0;
                if (splitBackgroundController.canShow()) {
                    splitBackgroundController.updateBackgroundVisibility(true, true);
                    return;
                }
                return;
            case 1:
                this.f$0.updateBackgroundLayerColor(true);
                return;
            default:
                SplitBackgroundController splitBackgroundController2 = this.f$0;
                splitBackgroundController2.updateBackgroundLayer(splitBackgroundController2.mVisible);
                return;
        }
    }
}
