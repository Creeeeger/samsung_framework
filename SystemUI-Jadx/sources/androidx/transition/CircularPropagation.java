package androidx.transition;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CircularPropagation extends VisibilityPropagation {
    public final float mPropagationSpeed = 3.0f;

    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0038  */
    @Override // androidx.transition.TransitionPropagation
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long getStartDelay(android.view.ViewGroup r10, androidx.transition.Transition r11, androidx.transition.TransitionValues r12, androidx.transition.TransitionValues r13) {
        /*
            r9 = this;
            r0 = 0
            if (r12 != 0) goto L7
            if (r13 != 0) goto L7
            return r0
        L7:
            r2 = 1
            if (r13 == 0) goto L28
            r3 = 8
            if (r12 != 0) goto Lf
            goto L22
        Lf:
            java.util.Map r4 = r12.values
            java.lang.String r5 = "android:visibilityPropagation:visibility"
            java.util.HashMap r4 = (java.util.HashMap) r4
            java.lang.Object r4 = r4.get(r5)
            java.lang.Integer r4 = (java.lang.Integer) r4
            if (r4 != 0) goto L1e
            goto L22
        L1e:
            int r3 = r4.intValue()
        L22:
            if (r3 != 0) goto L25
            goto L28
        L25:
            r12 = r13
            r13 = r2
            goto L29
        L28:
            r13 = -1
        L29:
            r3 = 0
            int r4 = androidx.transition.VisibilityPropagation.getViewCoordinate(r12, r3)
            int r12 = androidx.transition.VisibilityPropagation.getViewCoordinate(r12, r2)
            androidx.transition.Transition$EpicenterCallback r5 = r11.mEpicenterCallback
            if (r5 != 0) goto L38
            r5 = 0
            goto L3c
        L38:
            android.graphics.Rect r5 = r5.onGetEpicenter()
        L3c:
            if (r5 == 0) goto L47
            int r2 = r5.centerX()
            int r3 = r5.centerY()
            goto L74
        L47:
            r5 = 2
            int[] r6 = new int[r5]
            r10.getLocationOnScreen(r6)
            r3 = r6[r3]
            int r7 = r10.getWidth()
            int r7 = r7 / r5
            int r7 = r7 + r3
            float r3 = (float) r7
            float r7 = r10.getTranslationX()
            float r7 = r7 + r3
            int r3 = java.lang.Math.round(r7)
            r2 = r6[r2]
            int r6 = r10.getHeight()
            int r6 = r6 / r5
            int r6 = r6 + r2
            float r2 = (float) r6
            float r5 = r10.getTranslationY()
            float r5 = r5 + r2
            int r2 = java.lang.Math.round(r5)
            r8 = r3
            r3 = r2
            r2 = r8
        L74:
            float r4 = (float) r4
            float r12 = (float) r12
            float r2 = (float) r2
            float r3 = (float) r3
            float r2 = r2 - r4
            float r3 = r3 - r12
            float r2 = r2 * r2
            float r3 = r3 * r3
            float r3 = r3 + r2
            double r2 = (double) r3
            double r2 = java.lang.Math.sqrt(r2)
            float r12 = (float) r2
            int r2 = r10.getWidth()
            float r2 = (float) r2
            int r10 = r10.getHeight()
            float r10 = (float) r10
            r3 = 0
            float r2 = r2 - r3
            float r10 = r10 - r3
            float r2 = r2 * r2
            float r10 = r10 * r10
            float r10 = r10 + r2
            double r2 = (double) r10
            double r2 = java.lang.Math.sqrt(r2)
            float r10 = (float) r2
            float r12 = r12 / r10
            long r10 = r11.mDuration
            int r0 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r0 >= 0) goto La2
            r10 = 300(0x12c, double:1.48E-321)
        La2:
            long r0 = (long) r13
            long r10 = r10 * r0
            float r10 = (float) r10
            float r9 = r9.mPropagationSpeed
            float r10 = r10 / r9
            float r10 = r10 * r12
            int r9 = java.lang.Math.round(r10)
            long r9 = (long) r9
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.CircularPropagation.getStartDelay(android.view.ViewGroup, androidx.transition.Transition, androidx.transition.TransitionValues, androidx.transition.TransitionValues):long");
    }
}
