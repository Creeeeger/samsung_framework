package com.android.systemui.classifier;

import android.os.Build;
import android.view.MotionEvent;
import com.android.systemui.classifier.BrightLineFalsingManager;
import com.android.systemui.classifier.FalsingClassifier;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import java.util.stream.Collectors;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class FalsingDataProvider$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ FalsingDataProvider$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        double d;
        switch (this.$r8$classId) {
            case 0:
                ((FalsingClassifier$$ExternalSyntheticLambda0) obj).f$0.onTouchEvent((MotionEvent) this.f$0);
                return;
            default:
                long eventTime = ((MotionEvent) ((ArrayList) ((FalsingDataProvider) this.f$0).mRecentMotionEvents.mMotionEvents).get(r8.size() - 1)).getEventTime();
                BrightLineFalsingManager brightLineFalsingManager = BrightLineFalsingManager.this;
                Collection collection = brightLineFalsingManager.mPriorResults;
                HistoryTracker historyTracker = brightLineFalsingManager.mHistoryTracker;
                FalsingDataProvider falsingDataProvider = brightLineFalsingManager.mDataProvider;
                if (collection != null) {
                    boolean anyMatch = collection.stream().anyMatch(new BrightLineFalsingManager$3$$ExternalSyntheticLambda0());
                    brightLineFalsingManager.mPriorResults.forEach(new BrightLineFalsingManager$$ExternalSyntheticLambda0(5));
                    if (Build.IS_ENG || Build.IS_USERDEBUG) {
                        ((ArrayDeque) BrightLineFalsingManager.RECENT_SWIPES).add(new BrightLineFalsingManager.DebugSwipeRecord(anyMatch, brightLineFalsingManager.mPriorInteractionType, (List) falsingDataProvider.getRecentMotionEvents().stream().map(new BrightLineFalsingManager$3$$ExternalSyntheticLambda1()).collect(Collectors.toList())));
                        while (true) {
                            ArrayDeque arrayDeque = (ArrayDeque) BrightLineFalsingManager.RECENT_SWIPES;
                            if (arrayDeque.size() > 40) {
                                arrayDeque.remove();
                            }
                        }
                    }
                    historyTracker.addResults(brightLineFalsingManager.mPriorResults, eventTime);
                    brightLineFalsingManager.mPriorResults = null;
                    brightLineFalsingManager.mPriorInteractionType = 7;
                    return;
                }
                if (brightLineFalsingManager.mSingleTapClassifier.isTap(falsingDataProvider.getRecentMotionEvents(), 0.0d).mFalsed) {
                    d = 0.7d;
                } else {
                    d = 0.8d;
                }
                historyTracker.addResults(Collections.singleton(FalsingClassifier.Result.falsed(d, BrightLineFalsingManager.AnonymousClass3.class.getSimpleName(), "unclassified")), eventTime);
                return;
        }
    }
}
