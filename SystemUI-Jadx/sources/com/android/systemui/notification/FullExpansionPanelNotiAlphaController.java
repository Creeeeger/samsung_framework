package com.android.systemui.notification;

import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import com.android.systemui.keyguard.KeyguardEditModeController;
import com.android.systemui.keyguard.animator.KeyguardTouchAnimator;
import com.android.systemui.qs.TouchAnimator;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FullExpansionPanelNotiAlphaController {
    public final KeyguardEditModeController mKeyguardEditModeController;
    public final KeyguardTouchAnimator mKeyguardTouchAnimator;
    public final Interpolator mSineInOut33 = new PathInterpolator(0.33f, 0.0f, 0.67f, 1.0f);
    public NotificationStackScrollLayout mStackScrollLayout;
    public TouchAnimator mStackScrollerAlphaAnimator;
    public boolean mStackScrollerOverscrolling;

    public FullExpansionPanelNotiAlphaController(KeyguardTouchAnimator keyguardTouchAnimator, KeyguardEditModeController keyguardEditModeController) {
        this.mKeyguardTouchAnimator = keyguardTouchAnimator;
        this.mKeyguardEditModeController = keyguardEditModeController;
    }
}
