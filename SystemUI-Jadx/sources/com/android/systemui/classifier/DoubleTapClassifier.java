package com.android.systemui.classifier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DoubleTapClassifier extends FalsingClassifier {
    public final float mDoubleTapSlop;
    public final long mDoubleTapTimeMs;
    public final SingleTapClassifier mSingleTapClassifier;

    public DoubleTapClassifier(FalsingDataProvider falsingDataProvider, SingleTapClassifier singleTapClassifier, float f, long j) {
        super(falsingDataProvider);
        this.mSingleTapClassifier = singleTapClassifier;
        this.mDoubleTapSlop = f;
        this.mDoubleTapTimeMs = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00e6  */
    @Override // com.android.systemui.classifier.FalsingClassifier
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.systemui.classifier.FalsingClassifier.Result calculateFalsingResult(int r11) {
        /*
            r10 = this;
            java.util.List r11 = r10.getRecentMotionEvents()
            com.android.systemui.classifier.FalsingDataProvider r0 = r10.mDataProvider
            java.util.List r0 = r0.mPriorMotionEvents
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            if (r0 != 0) goto L18
            r0 = 0
            java.lang.String r11 = "Only one gesture recorded"
            com.android.systemui.classifier.FalsingClassifier$Result r10 = r10.falsed(r0, r11)
            return r10
        L18:
            com.android.systemui.classifier.SingleTapClassifier r2 = r10.mSingleTapClassifier
            r3 = 4602678819172646912(0x3fe0000000000000, double:0.5)
            com.android.systemui.classifier.FalsingClassifier$Result r5 = r2.isTap(r0, r3)
            boolean r6 = r5.mFalsed
            if (r6 == 0) goto L32
            java.lang.String r11 = "First gesture is not a tap. "
            r1.append(r11)
            java.lang.String r11 = r5.getReason()
            r1.append(r11)
            goto Lda
        L32:
            com.android.systemui.classifier.FalsingClassifier$Result r2 = r2.isTap(r11, r3)
            boolean r5 = r2.mFalsed
            if (r5 == 0) goto L48
            java.lang.String r11 = "Second gesture is not a tap. "
            r1.append(r11)
            java.lang.String r11 = r2.getReason()
            r1.append(r11)
            goto Lda
        L48:
            int r2 = r0.size()
            r5 = 1
            int r2 = r2 - r5
            java.lang.Object r0 = r0.get(r2)
            android.view.MotionEvent r0 = (android.view.MotionEvent) r0
            int r2 = r11.size()
            int r2 = r2 - r5
            java.lang.Object r11 = r11.get(r2)
            android.view.MotionEvent r11 = (android.view.MotionEvent) r11
            long r6 = r11.getEventTime()
            long r8 = r0.getEventTime()
            long r6 = r6 - r8
            long r8 = r10.mDoubleTapTimeMs
            int r2 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r2 <= 0) goto L7d
            java.lang.String r11 = "Time between taps too large: "
            r1.append(r11)
            r1.append(r6)
            java.lang.String r11 = "ms"
            r1.append(r11)
            goto Lda
        L7d:
            float r2 = r0.getX()
            float r6 = r11.getX()
            float r2 = r2 - r6
            float r2 = java.lang.Math.abs(r2)
            float r6 = r10.mDoubleTapSlop
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            java.lang.String r7 = " vs "
            if (r2 < 0) goto Lae
            java.lang.String r2 = "Delta X between taps too large:"
            r1.append(r2)
            float r0 = r0.getX()
            float r11 = r11.getX()
            float r0 = r0 - r11
            float r11 = java.lang.Math.abs(r0)
            r1.append(r11)
            r1.append(r7)
            r1.append(r6)
            goto Lda
        Lae:
            float r2 = r0.getY()
            float r8 = r11.getY()
            float r2 = r2 - r8
            float r2 = java.lang.Math.abs(r2)
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r2 < 0) goto Ldb
            java.lang.String r2 = "Delta Y between taps too large:"
            r1.append(r2)
            float r0 = r0.getY()
            float r11 = r11.getY()
            float r0 = r0 - r11
            float r11 = java.lang.Math.abs(r0)
            r1.append(r11)
            r1.append(r7)
            r1.append(r6)
        Lda:
            r5 = 0
        Ldb:
            if (r5 != 0) goto Le6
            java.lang.String r11 = r1.toString()
            com.android.systemui.classifier.FalsingClassifier$Result r10 = r10.falsed(r3, r11)
            goto Lea
        Le6:
            com.android.systemui.classifier.FalsingClassifier$Result r10 = com.android.systemui.classifier.FalsingClassifier.Result.passed(r3)
        Lea:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.classifier.DoubleTapClassifier.calculateFalsingResult(int):com.android.systemui.classifier.FalsingClassifier$Result");
    }
}
