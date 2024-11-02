package com.android.systemui.classifier;

import android.provider.DeviceConfig;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import com.android.systemui.util.DeviceConfigProxy;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DistanceClassifier extends FalsingClassifier {
    public DistanceVectors mCachedDistance;
    public boolean mDistanceDirty;
    public final float mHorizontalFlingThresholdPx;
    public final float mHorizontalSwipeThresholdPx;
    public final float mVelocityToDistanceMultiplier;
    public final float mVerticalFlingThresholdPx;
    public final float mVerticalSwipeThresholdPx;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DistanceVectors {
        public final float mDx;
        public final float mDy;
        public final float mVx;
        public final float mVy;

        public DistanceVectors(DistanceClassifier distanceClassifier, float f, float f2, float f3, float f4) {
            this.mDx = f;
            this.mDy = f2;
            this.mVx = f3;
            this.mVy = f4;
        }

        public final String toString() {
            return String.format(null, "{dx=%f, vx=%f, dy=%f, vy=%f}", Float.valueOf(this.mDx), Float.valueOf(this.mVx), Float.valueOf(this.mDy), Float.valueOf(this.mVy));
        }
    }

    public DistanceClassifier(FalsingDataProvider falsingDataProvider, DeviceConfigProxy deviceConfigProxy) {
        super(falsingDataProvider);
        deviceConfigProxy.getClass();
        this.mVelocityToDistanceMultiplier = DeviceConfig.getFloat("systemui", "brightline_falsing_distance_velcoity_to_distance", 30.0f);
        float f = DeviceConfig.getFloat("systemui", "brightline_falsing_distance_horizontal_fling_threshold_in", 1.0f);
        float f2 = DeviceConfig.getFloat("systemui", "brightline_falsing_distance_vertical_fling_threshold_in", 1.5f);
        float f3 = DeviceConfig.getFloat("systemui", "brightline_falsing_distance_horizontal_swipe_threshold_in", 3.0f);
        float f4 = DeviceConfig.getFloat("systemui", "brightline_falsing_distance_horizontal_swipe_threshold_in", 3.0f);
        float f5 = DeviceConfig.getFloat("systemui", "brightline_falsing_distance_screen_fraction_max_distance", 0.8f);
        this.mHorizontalFlingThresholdPx = Math.min(r2.mWidthPixels * f5, f * this.mDataProvider.mXdpi);
        this.mVerticalFlingThresholdPx = Math.min(r7.mHeightPixels * f5, f2 * this.mDataProvider.mYdpi);
        this.mHorizontalSwipeThresholdPx = Math.min(r7.mWidthPixels * f5, f3 * this.mDataProvider.mXdpi);
        this.mVerticalSwipeThresholdPx = Math.min(r7.mHeightPixels * f5, f4 * this.mDataProvider.mYdpi);
        this.mDistanceDirty = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0041, code lost:
    
        if (java.lang.Math.abs(r1) >= r3.mHorizontalFlingThresholdPx) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0052, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0050, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004e, code lost:
    
        if (java.lang.Math.abs(r0) >= r3.mVerticalFlingThresholdPx) goto L24;
     */
    @Override // com.android.systemui.classifier.FalsingClassifier
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.systemui.classifier.FalsingClassifier.Result calculateFalsingResult(int r4) {
        /*
            r3 = this;
            r0 = 10
            if (r4 == r0) goto L65
            r0 = 18
            if (r4 == r0) goto L65
            r0 = 11
            if (r4 == r0) goto L65
            r0 = 12
            if (r4 == r0) goto L65
            r0 = 13
            if (r4 == r0) goto L65
            r0 = 15
            if (r4 == r0) goto L65
            r0 = 17
            if (r4 != r0) goto L1d
            goto L65
        L1d:
            com.android.systemui.classifier.DistanceClassifier$DistanceVectors r4 = r3.getDistances()
            float r0 = r4.mDx
            float r1 = r4.mVx
            float r2 = r3.mVelocityToDistanceMultiplier
            float r1 = r1 * r2
            float r1 = r1 + r0
            float r0 = r4.mVy
            float r0 = r0 * r2
            float r4 = r4.mDy
            float r0 = r0 + r4
            com.android.systemui.classifier.FalsingDataProvider r4 = r3.mDataProvider
            boolean r4 = r4.isHorizontal()
            if (r4 == 0) goto L44
            boolean r4 = com.android.systemui.classifier.BrightLineFalsingManager.DEBUG
            float r4 = java.lang.Math.abs(r1)
            float r0 = r3.mHorizontalFlingThresholdPx
            int r4 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r4 < 0) goto L52
            goto L50
        L44:
            boolean r4 = com.android.systemui.classifier.BrightLineFalsingManager.DEBUG
            float r4 = java.lang.Math.abs(r0)
            float r0 = r3.mVerticalFlingThresholdPx
            int r4 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r4 < 0) goto L52
        L50:
            r4 = 1
            goto L53
        L52:
            r4 = 0
        L53:
            r0 = 4602678819172646912(0x3fe0000000000000, double:0.5)
            if (r4 != 0) goto L60
            java.lang.String r4 = r3.getReason()
            com.android.systemui.classifier.FalsingClassifier$Result r3 = r3.falsed(r0, r4)
            goto L64
        L60:
            com.android.systemui.classifier.FalsingClassifier$Result r3 = com.android.systemui.classifier.FalsingClassifier.Result.passed(r0)
        L64:
            return r3
        L65:
            r3 = 0
            com.android.systemui.classifier.FalsingClassifier$Result r3 = com.android.systemui.classifier.FalsingClassifier.Result.passed(r3)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.classifier.DistanceClassifier.calculateFalsingResult(int):com.android.systemui.classifier.FalsingClassifier$Result");
    }

    public final DistanceVectors getDistances() {
        DistanceVectors distanceVectors;
        if (this.mDistanceDirty) {
            List recentMotionEvents = getRecentMotionEvents();
            if (recentMotionEvents.size() < 3) {
                recentMotionEvents.size();
                boolean z = BrightLineFalsingManager.DEBUG;
                distanceVectors = new DistanceVectors(this, 0.0f, 0.0f, 0.0f, 0.0f);
            } else {
                VelocityTracker obtain = VelocityTracker.obtain();
                Iterator it = recentMotionEvents.iterator();
                while (it.hasNext()) {
                    obtain.addMovement((MotionEvent) it.next());
                }
                obtain.computeCurrentVelocity(1);
                float xVelocity = obtain.getXVelocity();
                float yVelocity = obtain.getYVelocity();
                obtain.recycle();
                FalsingDataProvider falsingDataProvider = this.mDataProvider;
                falsingDataProvider.recalculateData();
                float x = falsingDataProvider.mLastMotionEvent.getX();
                falsingDataProvider.recalculateData();
                float x2 = x - falsingDataProvider.mFirstRecentMotionEvent.getX();
                falsingDataProvider.recalculateData();
                float y = falsingDataProvider.mLastMotionEvent.getY();
                falsingDataProvider.recalculateData();
                distanceVectors = new DistanceVectors(this, x2, y - falsingDataProvider.mFirstRecentMotionEvent.getY(), xVelocity, yVelocity);
            }
            this.mCachedDistance = distanceVectors;
            this.mDistanceDirty = false;
        }
        return this.mCachedDistance;
    }

    public final String getReason() {
        return String.format(null, "{distanceVectors=%s, isHorizontal=%s, velocityToDistanceMultiplier=%f, horizontalFlingThreshold=%f, verticalFlingThreshold=%f, horizontalSwipeThreshold=%f, verticalSwipeThreshold=%s}", getDistances(), Boolean.valueOf(this.mDataProvider.isHorizontal()), Float.valueOf(this.mVelocityToDistanceMultiplier), Float.valueOf(this.mHorizontalFlingThresholdPx), Float.valueOf(this.mVerticalFlingThresholdPx), Float.valueOf(this.mHorizontalSwipeThresholdPx), Float.valueOf(this.mVerticalSwipeThresholdPx));
    }

    @Override // com.android.systemui.classifier.FalsingClassifier
    public final void onTouchEvent(MotionEvent motionEvent) {
        this.mDistanceDirty = true;
    }
}
