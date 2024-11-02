package com.android.systemui.classifier;

import android.view.MotionEvent;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class FalsingCollectorImpl$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ FalsingDataProvider f$0;

    public /* synthetic */ FalsingCollectorImpl$$ExternalSyntheticLambda0(FalsingDataProvider falsingDataProvider) {
        this.f$0 = falsingDataProvider;
    }

    @Override // java.lang.Runnable
    public final void run() {
        FalsingDataProvider falsingDataProvider = this.f$0;
        if (!falsingDataProvider.mRecentMotionEvents.isEmpty()) {
            TimeLimitedMotionEventBuffer timeLimitedMotionEventBuffer = falsingDataProvider.mRecentMotionEvents;
            int actionMasked = ((MotionEvent) ((ArrayList) timeLimitedMotionEventBuffer.mMotionEvents).get(timeLimitedMotionEventBuffer.size() - 1)).getActionMasked();
            if (actionMasked == 1 || actionMasked == 3) {
                falsingDataProvider.completePriorGesture();
            }
        }
    }
}
