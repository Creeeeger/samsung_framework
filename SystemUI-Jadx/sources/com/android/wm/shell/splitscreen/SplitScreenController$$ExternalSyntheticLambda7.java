package com.android.wm.shell.splitscreen;

import com.android.wm.shell.splitscreen.SplitScreenController;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SplitScreenController$$ExternalSyntheticLambda7 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$0;
    public final /* synthetic */ String f$1;

    public /* synthetic */ SplitScreenController$$ExternalSyntheticLambda7(int i, String str, int i2) {
        this.$r8$classId = i2;
        this.f$0 = i;
        this.f$1 = str;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((SplitScreenController.SplitTwoFingerGestureStarter) obj).startSplitByTwoTouchSwipeIfPossible(this.f$0, this.f$1);
                return;
            default:
                ((SplitScreenController.SplitTwoFingerGestureStarter) obj).startSplitByTwoTouchSwipeIfPossible(this.f$0, this.f$1);
                return;
        }
    }
}
