package com.android.wm.shell.windowdecor;

import com.android.wm.shell.windowdecor.widget.HandleView;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda2 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda2(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((MultitaskingWindowDecoration) obj).onDisplayAdded(true);
                return;
            case 1:
                MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) obj;
                WindowMenuCaptionPresenter windowMenuCaptionPresenter = multitaskingWindowDecoration.mCaptionMenuPresenter;
                if (windowMenuCaptionPresenter != null) {
                    windowMenuCaptionPresenter.updateButtonColor();
                    return;
                }
                HandleView handleView = multitaskingWindowDecoration.getHandleView();
                if (handleView != null) {
                    handleView.updateHandleViewColor();
                    return;
                }
                return;
            default:
                MultitaskingWindowDecoration multitaskingWindowDecoration2 = (MultitaskingWindowDecoration) obj;
                multitaskingWindowDecoration2.mIsAdditionalDisplayAdded = false;
                WindowMenuCaptionPresenter windowMenuCaptionPresenter2 = multitaskingWindowDecoration2.mCaptionMenuPresenter;
                if (windowMenuCaptionPresenter2 != null) {
                    windowMenuCaptionPresenter2.mIsDisplayAdded = false;
                    windowMenuCaptionPresenter2.setupAddDisplayButton(false);
                }
                multitaskingWindowDecoration2.relayout(multitaskingWindowDecoration2.mTaskInfo, false);
                return;
        }
    }
}
