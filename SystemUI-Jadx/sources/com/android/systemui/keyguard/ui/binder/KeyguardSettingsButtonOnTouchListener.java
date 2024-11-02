package com.android.systemui.keyguard.ui.binder;

import android.graphics.PointF;
import android.util.MathUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.android.systemui.animation.view.LaunchableLinearLayout;
import com.android.systemui.keyguard.domain.interactor.KeyguardLongPressInteractor;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardSettingsMenuViewModel;
import kotlinx.coroutines.StandaloneCoroutine;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardSettingsButtonOnTouchListener implements View.OnTouchListener {
    public final PointF downPositionDisplayCoords = new PointF();
    public final KeyguardSettingsMenuViewModel viewModel;

    public KeyguardSettingsButtonOnTouchListener(LaunchableLinearLayout launchableLinearLayout, KeyguardSettingsMenuViewModel keyguardSettingsMenuViewModel) {
        this.viewModel = keyguardSettingsMenuViewModel;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            boolean z = false;
            if (actionMasked != 1) {
                if (actionMasked == 3) {
                    view.setPressed(false);
                    this.viewModel.interactor.onMenuTouchGestureEnded(false);
                }
            } else {
                view.setPressed(false);
                PointF pointF = this.downPositionDisplayCoords;
                if (MathUtils.dist(motionEvent.getRawX(), motionEvent.getRawY(), pointF.x, pointF.y) < ViewConfiguration.getTouchSlop()) {
                    z = true;
                }
                this.viewModel.interactor.onMenuTouchGestureEnded(z);
                if (z) {
                    view.performClick();
                }
            }
        } else {
            view.setPressed(true);
            this.downPositionDisplayCoords.set(motionEvent.getRawX(), motionEvent.getRawY());
            KeyguardLongPressInteractor keyguardLongPressInteractor = this.viewModel.interactor;
            StandaloneCoroutine standaloneCoroutine = keyguardLongPressInteractor.delayedHideMenuJob;
            if (standaloneCoroutine != null) {
                standaloneCoroutine.cancel(null);
            }
            keyguardLongPressInteractor.delayedHideMenuJob = null;
        }
        return true;
    }
}
