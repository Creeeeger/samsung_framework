package com.android.systemui.navigationbar;

import com.android.wm.shell.back.BackAnimationController;
import com.android.wm.shell.pip.Pip;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class NavigationBar$$ExternalSyntheticLambda6 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NavigationBarView f$0;

    public /* synthetic */ NavigationBar$$ExternalSyntheticLambda6(NavigationBarView navigationBarView, int i) {
        this.$r8$classId = i;
        this.f$0 = navigationBarView;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((Pip) obj).removePipExclusionBoundsChangeListener(this.f$0.mPipListener);
                return;
            case 1:
                ((Pip) obj).addPipExclusionBoundsChangeListener(this.f$0.mPipListener);
                return;
            default:
                this.f$0.mEdgeBackGestureHandler.setBackAnimation((BackAnimationController.BackAnimationImpl) obj);
                return;
        }
    }
}
