package com.android.wm.shell.bubbles;

import android.view.WindowManager;
import com.android.wm.shell.bubbles.BubbleController;
import com.samsung.android.nexus.video.VideoPlayer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BubbleController$$ExternalSyntheticLambda19 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ BubbleController$$ExternalSyntheticLambda19(int i, Object obj, boolean z) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BubbleStackView bubbleStackView;
        boolean z;
        switch (this.$r8$classId) {
            case 0:
                BubbleController bubbleController = (BubbleController) this.f$0;
                boolean z2 = this.f$1;
                WindowManager windowManager = bubbleController.mWindowManager;
                if (windowManager != null && (bubbleStackView = bubbleController.mStackView) != null && bubbleController.mWmLayoutParams != null && bubbleStackView.isAttachedToWindow()) {
                    if (z2) {
                        bubbleController.mWmLayoutParams.semAddExtensionFlags(VideoPlayer.MEDIA_ERROR_SYSTEM);
                    } else {
                        bubbleController.mWmLayoutParams.semClearExtensionFlags(VideoPlayer.MEDIA_ERROR_SYSTEM);
                    }
                    windowManager.updateViewLayout(bubbleController.mStackView, bubbleController.mWmLayoutParams);
                    return;
                }
                return;
            case 1:
                BubbleController.BubblesImpl bubblesImpl = (BubbleController.BubblesImpl) this.f$0;
                boolean z3 = this.f$1;
                BubbleController bubbleController2 = BubbleController.this;
                BubbleStackView bubbleStackView2 = bubbleController2.mStackView;
                if (bubbleStackView2 != null) {
                    if (!z3 && !bubbleController2.isStackExpanded()) {
                        z = true;
                    } else {
                        z = false;
                    }
                    bubbleStackView2.mTemporarilyInvisible = z;
                    bubbleStackView2.updateTemporarilyInvisibleAnimation(z);
                    return;
                }
                return;
            case 2:
                BubbleController.this.onStatusBarStateChanged(this.f$1);
                return;
            default:
                BubbleController.BubblesImpl bubblesImpl2 = (BubbleController.BubblesImpl) this.f$0;
                boolean z4 = this.f$1;
                BubbleStackView bubbleStackView3 = BubbleController.this.mStackView;
                if (bubbleStackView3 != null && bubbleStackView3.mIsExpanded) {
                    if (z4) {
                        bubbleStackView3.stopMonitoringSwipeUpGestureInternal();
                        return;
                    } else {
                        bubbleStackView3.startMonitoringSwipeUpGesture();
                        return;
                    }
                }
                return;
        }
    }
}
