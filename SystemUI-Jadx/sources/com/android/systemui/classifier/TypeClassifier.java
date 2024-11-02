package com.android.systemui.classifier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TypeClassifier extends FalsingClassifier {
    public TypeClassifier(FalsingDataProvider falsingDataProvider) {
        super(falsingDataProvider);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x003c, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002a, code lost:
    
        if (r5 != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
    
        if (r5 != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0034, code lost:
    
        if (r5 != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0039, code lost:
    
        if (r5 == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
    
        if (r5 != false) goto L26;
     */
    @Override // com.android.systemui.classifier.FalsingClassifier
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.systemui.classifier.FalsingClassifier.Result calculateFalsingResult(int r8) {
        /*
            r7 = this;
            r0 = 13
            r1 = 0
            if (r8 != r0) goto Lb
            com.android.systemui.classifier.FalsingClassifier$Result r7 = com.android.systemui.classifier.FalsingClassifier.Result.passed(r1)
            return r7
        Lb:
            com.android.systemui.classifier.FalsingDataProvider r0 = r7.mDataProvider
            boolean r3 = r0.isHorizontal()
            r4 = 1
            r3 = r3 ^ r4
            boolean r5 = r7.isUp()
            boolean r6 = r7.isRight()
            switch(r8) {
                case 0: goto L37;
                case 1: goto L3f;
                case 2: goto L37;
                case 3: goto L1e;
                case 4: goto L32;
                case 5: goto L2d;
                case 6: goto L28;
                case 7: goto L1e;
                case 8: goto L32;
                case 9: goto L37;
                case 10: goto L41;
                case 11: goto L24;
                case 12: goto L1f;
                case 13: goto L1e;
                case 14: goto L1e;
                case 15: goto L3f;
                case 16: goto L1e;
                case 17: goto L24;
                case 18: goto L41;
                default: goto L1e;
            }
        L1e:
            goto L3e
        L1f:
            if (r3 == 0) goto L3e
            if (r5 != 0) goto L3c
            goto L3e
        L24:
            r1 = r3 ^ 1
        L26:
            r3 = r1
            goto L3f
        L28:
            if (r6 != 0) goto L3e
            if (r5 != 0) goto L3c
            goto L3e
        L2d:
            if (r6 == 0) goto L3e
            if (r5 != 0) goto L3c
            goto L3e
        L32:
            if (r3 == 0) goto L3e
            if (r5 != 0) goto L3c
            goto L3e
        L37:
            if (r3 == 0) goto L3e
            if (r5 == 0) goto L3c
            goto L3e
        L3c:
            r1 = 0
            goto L26
        L3e:
            r3 = r4
        L3f:
            r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
        L41:
            if (r3 == 0) goto L70
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            boolean r0 = r0.isHorizontal()
            r0 = r0 ^ r4
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            boolean r3 = r7.isUp()
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)
            boolean r4 = r7.isRight()
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            java.lang.Object[] r8 = new java.lang.Object[]{r8, r0, r3, r4}
            java.lang.String r0 = "{interaction=%s, vertical=%s, up=%s, right=%s}"
            java.lang.String r8 = java.lang.String.format(r0, r8)
            com.android.systemui.classifier.FalsingClassifier$Result r7 = r7.falsed(r1, r8)
            goto L76
        L70:
            r7 = 4602678819172646912(0x3fe0000000000000, double:0.5)
            com.android.systemui.classifier.FalsingClassifier$Result r7 = com.android.systemui.classifier.FalsingClassifier.Result.passed(r7)
        L76:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.classifier.TypeClassifier.calculateFalsingResult(int):com.android.systemui.classifier.FalsingClassifier$Result");
    }
}
