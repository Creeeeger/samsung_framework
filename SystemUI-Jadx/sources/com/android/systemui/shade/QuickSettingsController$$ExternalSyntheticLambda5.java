package com.android.systemui.shade;

import android.view.VelocityTracker;
import com.android.systemui.plugins.qs.QS;
import com.android.systemui.shade.QuickSettingsController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class QuickSettingsController$$ExternalSyntheticLambda5 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ QuickSettingsController$$ExternalSyntheticLambda5(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                QuickSettingsController quickSettingsController = (QuickSettingsController) this.f$0;
                if (!quickSettingsController.mSplitShadeEnabled) {
                    quickSettingsController.onExpansionStarted();
                    if (quickSettingsController.mExpanded) {
                        quickSettingsController.flingQs(0.0f, 1, null, true);
                        return;
                    } else {
                        if (quickSettingsController.isExpansionEnabled()) {
                            quickSettingsController.mLockscreenGestureLogger.write(195, 0, 0);
                            quickSettingsController.flingQs(0.0f, 0, null, true);
                            return;
                        }
                        return;
                    }
                }
                return;
            case 1:
                QuickSettingsController quickSettingsController2 = (QuickSettingsController) this.f$0;
                VelocityTracker velocityTracker = quickSettingsController2.mQsVelocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                }
                quickSettingsController2.mQsVelocityTracker = VelocityTracker.obtain();
                return;
            case 2:
                QuickSettingsController quickSettingsController3 = (QuickSettingsController) this.f$0;
                quickSettingsController3.setTracking(true);
                quickSettingsController3.traceQsJank(true, false);
                quickSettingsController3.onExpansionStarted();
                return;
            case 3:
                QuickSettingsController quickSettingsController4 = (QuickSettingsController) this.f$0;
                quickSettingsController4.mInitialHeightOnTouch = quickSettingsController4.mExpansionHeight;
                return;
            case 4:
                QS qs = ((QuickSettingsController) this.f$0).mQs;
                if (qs != null) {
                    qs.animateHeaderSlidingOut();
                    return;
                }
                return;
            case 5:
                QuickSettingsController quickSettingsController5 = (QuickSettingsController) this.f$0;
                VelocityTracker velocityTracker2 = quickSettingsController5.mQsVelocityTracker;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    quickSettingsController5.mQsVelocityTracker = null;
                    return;
                }
                return;
            default:
                QuickSettingsController quickSettingsController6 = ((QuickSettingsController.NsslOverscrollTopChangedListener) this.f$0).this$0;
                quickSettingsController6.mStackScrollerOverscrolling = false;
                QS qs2 = quickSettingsController6.mQs;
                if (qs2 != null) {
                    qs2.setOverscrolling(false);
                }
                quickSettingsController6.updateQsState();
                return;
        }
    }
}
