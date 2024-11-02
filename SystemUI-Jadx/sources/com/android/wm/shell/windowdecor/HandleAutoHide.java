package com.android.wm.shell.windowdecor;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Handler;
import com.android.wm.shell.windowdecor.animation.CaptionAnimationUtils;
import com.android.wm.shell.windowdecor.widget.HandleView;
import com.samsung.android.util.InterpolatorUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class HandleAutoHide {
    public final Handler mHandler;
    public Animator mHide;
    public Animator mShow;
    public final HandleAutoHide$$ExternalSyntheticLambda0 mHideRunnable = new Runnable() { // from class: com.android.wm.shell.windowdecor.HandleAutoHide$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            HandleAutoHide handleAutoHide = HandleAutoHide.this;
            if (handleAutoHide.mEnabled && handleAutoHide.mIsShowing) {
                handleAutoHide.mHide.start();
            }
        }
    };
    public boolean mEnabled = false;
    public boolean mIsShowing = true;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.wm.shell.windowdecor.HandleAutoHide$$ExternalSyntheticLambda0] */
    public HandleAutoHide(Handler handler, HandleView handleView) {
        this.mHandler = handler;
        updateHandleAnimation(handleView);
    }

    public final void updateHandleAnimation(HandleView handleView) {
        Animator createViewAlphaAnimator = CaptionAnimationUtils.createViewAlphaAnimator(handleView, true, 1000L, InterpolatorUtils.SINE_OUT_70);
        this.mShow = createViewAlphaAnimator;
        createViewAlphaAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.windowdecor.HandleAutoHide.1
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator, boolean z) {
                HandleAutoHide handleAutoHide = HandleAutoHide.this;
                if (handleAutoHide.mEnabled && handleAutoHide.mIsShowing) {
                    handleAutoHide.mHandler.postDelayed(handleAutoHide.mHideRunnable, 2000L);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator, boolean z) {
                HandleAutoHide.this.mIsShowing = true;
            }
        });
        Animator createViewAlphaAnimator2 = CaptionAnimationUtils.createViewAlphaAnimator(handleView, false, 1000L, InterpolatorUtils.SINE_OUT_70);
        this.mHide = createViewAlphaAnimator2;
        createViewAlphaAnimator2.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.windowdecor.HandleAutoHide.2
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator, boolean z) {
                HandleAutoHide.this.mIsShowing = false;
            }
        });
    }
}
