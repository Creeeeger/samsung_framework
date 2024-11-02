package com.android.wm.shell.pip.phone;

import android.graphics.Rect;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.TabletopModeController;
import com.android.wm.shell.pip.PipBoundsState;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PipController$$ExternalSyntheticLambda10 {
    public final /* synthetic */ PipController f$0;

    public /* synthetic */ PipController$$ExternalSyntheticLambda10(PipController pipController) {
        this.f$0 = pipController;
    }

    public final void onTabletopModeChanged(boolean z) {
        PipController pipController = this.f$0;
        PipBoundsState pipBoundsState = pipController.mPipBoundsState;
        if (!z) {
            ((HashMap) pipBoundsState.mNamedUnrestrictedKeepClearAreas).remove("tabletop-mode");
            return;
        }
        Rect displayBounds = pipBoundsState.getDisplayBounds();
        pipController.mTabletopModeController.getClass();
        boolean z2 = true;
        boolean z3 = !TabletopModeController.PREFER_TOP_HALF_IN_TABLETOP;
        Map map = pipBoundsState.mNamedUnrestrictedKeepClearAreas;
        if (!z3) {
            ((HashMap) map).put("tabletop-mode", new Rect(displayBounds.left, displayBounds.centerY(), displayBounds.right, displayBounds.bottom));
        } else {
            ((HashMap) map).put("tabletop-mode", new Rect(displayBounds.left, displayBounds.top, displayBounds.right, displayBounds.centerY()));
        }
        if (pipController.mPipTransitionState.mState != 4) {
            z2 = false;
        }
        if (z2) {
            Rect bounds = pipBoundsState.getBounds();
            if ((pipController.mPipSizeSpecHandler.mScreenEdgeInsets.y * 2) + bounds.height() <= displayBounds.height() / 2) {
                HandlerExecutor handlerExecutor = (HandlerExecutor) pipController.mMainExecutor;
                PipController$$ExternalSyntheticLambda1 pipController$$ExternalSyntheticLambda1 = pipController.mMovePipInResponseToKeepClearAreasChangeCallback;
                handlerExecutor.removeCallbacks(pipController$$ExternalSyntheticLambda1);
                handlerExecutor.execute(pipController$$ExternalSyntheticLambda1);
            }
        }
    }
}
