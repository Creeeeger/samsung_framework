package com.android.wm.shell.pip.phone;

import android.graphics.Rect;
import com.android.wm.shell.pip.PipBoundsState;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PipMotionHelper$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PipMotionHelper f$0;

    public /* synthetic */ PipMotionHelper$$ExternalSyntheticLambda0(PipMotionHelper pipMotionHelper, int i) {
        this.$r8$classId = i;
        this.f$0 = pipMotionHelper;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                PhonePipMenuController phonePipMenuController = this.f$0.mMenuController;
                if (phonePipMenuController.isMenuVisible()) {
                    phonePipMenuController.mPipMenuView.mPipMenuIconsAlgorithm.getClass();
                    return;
                }
                return;
            default:
                PipMotionHelper pipMotionHelper = this.f$0;
                Rect rect = (Rect) obj;
                PipBoundsState pipBoundsState = pipMotionHelper.mPipBoundsState;
                if (!pipBoundsState.getBounds().equals(rect)) {
                    PhonePipMenuController phonePipMenuController2 = pipMotionHelper.mMenuController;
                    if (phonePipMenuController2.isMenuVisible()) {
                        phonePipMenuController2.mPipMenuView.mPipMenuIconsAlgorithm.getClass();
                    }
                    pipBoundsState.setBounds(rect);
                    return;
                }
                return;
        }
    }
}
