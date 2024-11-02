package com.android.wm.shell.pip.tv;

import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import com.android.internal.widget.LinearLayoutManager;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class TvPipMenuController$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ TvPipMenuController f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ TvPipMenuController$$ExternalSyntheticLambda0(TvPipMenuController tvPipMenuController, boolean z) {
        this.f$0 = tvPipMenuController;
        this.f$1 = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TvPipMenuController tvPipMenuController = this.f$0;
        boolean z = this.f$1;
        TvPipMenuView tvPipMenuView = tvPipMenuController.mPipMenuView;
        if (tvPipMenuView != null) {
            int i = 0;
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.d(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, 1855178708, 0, "%s: onPipTransitionFinished()", "TvPipMenuView");
            }
            ViewPropertyAnimator duration = tvPipMenuView.mPipBackground.animate().alpha(0.0f).setDuration(tvPipMenuView.mResizeAnimationDuration / 2);
            Interpolator interpolator = TvPipInterpolators.ENTER;
            duration.setInterpolator(interpolator).start();
            if (z) {
                tvPipMenuView.mEduTextDrawer.init();
            }
            LinearLayoutManager linearLayoutManager = tvPipMenuView.mButtonLayoutManager;
            if (tvPipMenuView.mCurrentPipBounds.height() > tvPipMenuView.mCurrentPipBounds.width()) {
                i = 1;
            }
            linearLayoutManager.setOrientation(i);
            if (tvPipMenuView.mCurrentMenuMode == 2 && tvPipMenuView.mActionButtonsRecyclerView.getAlpha() != 1.0f) {
                tvPipMenuView.mActionButtonsRecyclerView.animate().alpha(1.0f).setInterpolator(interpolator).setDuration(tvPipMenuView.mResizeAnimationDuration / 2);
            }
        }
    }
}
