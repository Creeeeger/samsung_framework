package com.android.systemui.classifier;

import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FalsingA11yDelegate extends View.AccessibilityDelegate {
    public final FalsingCollector falsingCollector;

    public FalsingA11yDelegate(FalsingCollector falsingCollector) {
        this.falsingCollector = falsingCollector;
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        if (i == 16) {
            FalsingCollectorImpl falsingCollectorImpl = (FalsingCollectorImpl) this.falsingCollector;
            MotionEvent motionEvent = falsingCollectorImpl.mPendingDownEvent;
            if (motionEvent != null) {
                motionEvent.recycle();
                falsingCollectorImpl.mPendingDownEvent = null;
            }
            FalsingDataProvider falsingDataProvider = falsingCollectorImpl.mFalsingDataProvider;
            falsingDataProvider.completePriorGesture();
            falsingDataProvider.mA11YAction = true;
        }
        return super.performAccessibilityAction(view, i, bundle);
    }
}
