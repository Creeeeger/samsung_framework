package com.android.wm.shell.windowdecor;

import android.app.ActivityManager;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import com.airbnb.lottie.utils.LottieValueAnimator;
import com.android.systemui.R;
import com.android.wm.shell.windowdecor.WindowDecoration;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class MultitaskingWindowDecoration$$ExternalSyntheticLambda0 implements View.OnTouchListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MultitaskingWindowDecoration f$0;

    public /* synthetic */ MultitaskingWindowDecoration$$ExternalSyntheticLambda0(int i, MultitaskingWindowDecoration multitaskingWindowDecoration) {
        this.$r8$classId = i;
        this.f$0 = multitaskingWindowDecoration;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        WindowMenuAnimationView windowMenuAnimationView;
        boolean z = false;
        switch (this.$r8$classId) {
            case 0:
                MultitaskingWindowDecoration multitaskingWindowDecoration = this.f$0;
                multitaskingWindowDecoration.getClass();
                if (motionEvent.getAction() == 4) {
                    WindowMenuItemView windowMenuItemView = (WindowMenuItemView) multitaskingWindowDecoration.mCaptionMenuPresenter.mButtons.get(R.id.more_window);
                    if (windowMenuItemView != null) {
                        PointF pointF = new PointF(motionEvent.getRawX(), motionEvent.getRawY());
                        WindowDecoration.RelayoutParams relayoutParams = multitaskingWindowDecoration.mRelayoutParams;
                        pointF.offset(-relayoutParams.mCaptionX, -relayoutParams.mCaptionY);
                        ActivityManager.RunningTaskInfo runningTaskInfo = multitaskingWindowDecoration.mTaskOrganizer.getRunningTaskInfo(multitaskingWindowDecoration.mTaskInfo.taskId);
                        if (runningTaskInfo != null) {
                            Point point = runningTaskInfo.positionInParent;
                            pointF.offset(-point.x, -point.y);
                        }
                        Rect rect = new Rect();
                        windowMenuItemView.getBoundsOnScreen(rect);
                        z = rect.contains((int) pointF.x, (int) pointF.y);
                    }
                    if (!z) {
                        multitaskingWindowDecoration.closeMoreMenu();
                    }
                }
                return true;
            case 1:
                MultitaskingWindowDecoration multitaskingWindowDecoration2 = this.f$0;
                multitaskingWindowDecoration2.getClass();
                if (motionEvent.getAction() == 4) {
                    multitaskingWindowDecoration2.closeSliderPopup();
                }
                return true;
            default:
                MultitaskingWindowDecoration multitaskingWindowDecoration3 = this.f$0;
                multitaskingWindowDecoration3.getClass();
                if (motionEvent.getAction() == 4) {
                    WindowMenuPopupPresenter windowMenuPopupPresenter = multitaskingWindowDecoration3.mPopupMenuPresenter;
                    if (windowMenuPopupPresenter != null && (windowMenuAnimationView = windowMenuPopupPresenter.mPinButton) != null && windowMenuPopupPresenter.mPinAnimRunnable != null) {
                        LottieValueAnimator lottieValueAnimator = windowMenuAnimationView.lottieDrawable.animator;
                        if (lottieValueAnimator != null) {
                            z = lottieValueAnimator.running;
                        }
                        if (z) {
                            windowMenuAnimationView.cancelAnimation();
                        }
                        View view2 = windowMenuPopupPresenter.mRootView;
                        if (view2 != null) {
                            view2.removeCallbacks(windowMenuPopupPresenter.mPinAnimRunnable);
                        }
                    }
                    multitaskingWindowDecoration3.closeHandleMenu(true);
                }
                return true;
        }
    }
}
