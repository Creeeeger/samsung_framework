package com.android.wm.shell.pip.phone;

import com.android.wm.shell.pip.PipBoundsState;
import com.android.wm.shell.pip.PipUiEventLogger;
import com.android.wm.shell.pip.phone.PipTouchHandler;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PipTouchHandler$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ PipTouchHandler$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((PhonePipMenuController) this.f$0).hideMenu();
                return;
            case 1:
                PipTouchHandler pipTouchHandler = PipTouchHandler.this;
                int i = pipTouchHandler.mPipBoundsState.getBounds().left;
                PipUiEventLogger pipUiEventLogger = pipTouchHandler.mPipUiEventLogger;
                PipBoundsState pipBoundsState = pipTouchHandler.mPipBoundsState;
                if (i < 0 && pipBoundsState.mStashedState != 1) {
                    pipUiEventLogger.log(PipUiEventLogger.PipUiEventEnum.PICTURE_IN_PICTURE_STASH_LEFT);
                    pipBoundsState.setStashed(1, false);
                } else if (pipBoundsState.getBounds().left >= 0 && pipBoundsState.mStashedState != 2) {
                    pipUiEventLogger.log(PipUiEventLogger.PipUiEventEnum.PICTURE_IN_PICTURE_STASH_RIGHT);
                    pipBoundsState.setStashed(2, false);
                }
                pipTouchHandler.mMenuController.hideMenu();
                return;
            default:
                PipTouchHandler.DefaultPipTouchGesture defaultPipTouchGesture = (PipTouchHandler.DefaultPipTouchGesture) this.f$0;
                if (defaultPipTouchGesture.mShouldHideMenuAfterFling) {
                    PipTouchHandler.this.mMenuController.hideMenu();
                    return;
                }
                return;
        }
    }
}
