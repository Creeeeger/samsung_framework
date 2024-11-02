package com.android.systemui.classifier;

import android.view.MotionEvent;
import com.android.systemui.plugins.FalsingManager;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class FalsingClassifier {
    public final FalsingDataProvider mDataProvider;
    public final FalsingClassifier$$ExternalSyntheticLambda0 mMotionEventListener;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Result {
        public final double mConfidence;
        public final String mContext;
        public final boolean mFalsed;
        public final String mReason;

        private Result(boolean z, double d, String str, String str2) {
            this.mFalsed = z;
            this.mConfidence = d;
            this.mContext = str;
            this.mReason = str2;
        }

        public static Result falsed(double d, String str, String str2) {
            return new Result(true, d, str, str2);
        }

        public static Result passed(double d) {
            return new Result(false, d, null, null);
        }

        public final String getReason() {
            return String.format("{context=%s reason=%s}", this.mContext, this.mReason);
        }
    }

    public FalsingClassifier(FalsingDataProvider falsingDataProvider) {
        FalsingClassifier$$ExternalSyntheticLambda0 falsingClassifier$$ExternalSyntheticLambda0 = new FalsingClassifier$$ExternalSyntheticLambda0(this);
        this.mMotionEventListener = falsingClassifier$$ExternalSyntheticLambda0;
        this.mDataProvider = falsingDataProvider;
        ((ArrayList) falsingDataProvider.mMotionEventListeners).add(falsingClassifier$$ExternalSyntheticLambda0);
    }

    public abstract Result calculateFalsingResult(int i);

    public final Result falsed(double d, String str) {
        return Result.falsed(d, getClass().getSimpleName(), str);
    }

    public final List getRecentMotionEvents() {
        return this.mDataProvider.getRecentMotionEvents();
    }

    public final boolean isRight() {
        FalsingDataProvider falsingDataProvider = this.mDataProvider;
        falsingDataProvider.recalculateData();
        if (falsingDataProvider.mRecentMotionEvents.isEmpty() || falsingDataProvider.mLastMotionEvent.getX() <= falsingDataProvider.mFirstRecentMotionEvent.getX()) {
            return false;
        }
        return true;
    }

    public final boolean isUp() {
        FalsingDataProvider falsingDataProvider = this.mDataProvider;
        falsingDataProvider.recalculateData();
        if (falsingDataProvider.mRecentMotionEvents.isEmpty() || falsingDataProvider.mLastMotionEvent.getY() >= falsingDataProvider.mFirstRecentMotionEvent.getY()) {
            return false;
        }
        return true;
    }

    public void onProximityEvent(FalsingManager.ProximityEvent proximityEvent) {
    }

    public void onTouchEvent(MotionEvent motionEvent) {
    }

    public void onSessionEnded() {
    }

    public void onSessionStarted() {
    }
}
