package com.android.systemui.accessibility;

import android.graphics.Rect;
import android.view.WindowInsets;
import android.view.inputmethod.InputMethodManager;
import com.android.internal.view.TooltipPopup;
import java.util.Collections;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class MagnificationModeSwitch$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MagnificationModeSwitch f$0;

    public /* synthetic */ MagnificationModeSwitch$$ExternalSyntheticLambda1(MagnificationModeSwitch magnificationModeSwitch, int i) {
        this.$r8$classId = i;
        this.f$0 = magnificationModeSwitch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                MagnificationModeSwitch magnificationModeSwitch = this.f$0;
                TooltipPopup tooltipPopup = magnificationModeSwitch.mTooltipPopup;
                if (tooltipPopup != null && tooltipPopup.isShowing()) {
                    magnificationModeSwitch.mTooltipPopup.hide();
                    return;
                }
                return;
            case 1:
                MagnificationModeSwitch magnificationModeSwitch2 = this.f$0;
                Rect rect = magnificationModeSwitch2.mWindowManager.getCurrentWindowMetrics().getWindowInsets().getInsets(WindowInsets.Type.ime()).toRect();
                InputMethodManager inputMethodManager = (InputMethodManager) magnificationModeSwitch2.mContext.getSystemService(InputMethodManager.class);
                if (!rect.equals(magnificationModeSwitch2.mImeInsetsRect)) {
                    if (inputMethodManager.semIsInputMethodShown()) {
                        magnificationModeSwitch2.mImeInsetsRect.set(rect);
                    } else {
                        magnificationModeSwitch2.mImeInsetsRect.setEmpty();
                        magnificationModeSwitch2.removeButton();
                        magnificationModeSwitch2.showButton(magnificationModeSwitch2.mMagnificationMode, true);
                    }
                }
                Rect draggableWindowBounds = magnificationModeSwitch2.getDraggableWindowBounds();
                if (!magnificationModeSwitch2.mDraggableWindowBounds.equals(draggableWindowBounds)) {
                    magnificationModeSwitch2.mDraggableWindowBounds.set(draggableWindowBounds);
                    magnificationModeSwitch2.stickToScreenEdge(magnificationModeSwitch2.mToLeftScreenEdge);
                    return;
                }
                return;
            case 2:
                this.f$0.mImageView.animate().alpha(1.0f).setDuration(300L).start();
                return;
            case 3:
                MagnificationModeSwitch magnificationModeSwitch3 = this.f$0;
                magnificationModeSwitch3.mImageView.animate().alpha(0.0f).setDuration(300L).withEndAction(new MagnificationModeSwitch$$ExternalSyntheticLambda1(magnificationModeSwitch3, 5)).start();
                magnificationModeSwitch3.mIsFadeOutAnimating = true;
                return;
            case 4:
                MagnificationModeSwitch magnificationModeSwitch4 = this.f$0;
                magnificationModeSwitch4.mImageView.setSystemGestureExclusionRects(Collections.singletonList(new Rect(0, 0, magnificationModeSwitch4.mImageView.getWidth(), magnificationModeSwitch4.mImageView.getHeight())));
                return;
            default:
                this.f$0.removeButton();
                return;
        }
    }
}
