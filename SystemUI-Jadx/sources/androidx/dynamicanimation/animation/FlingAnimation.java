package androidx.dynamicanimation.animation;

import androidx.dynamicanimation.animation.DynamicAnimation;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FlingAnimation extends DynamicAnimation {
    public final DragForce mFlingForce;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DragForce {
        public float mFriction = -4.2f;
        public final DynamicAnimation.MassState mMassState = new DynamicAnimation.MassState();
        public float mVelocityThreshold;
    }

    public FlingAnimation(FloatValueHolder floatValueHolder) {
        super(floatValueHolder);
        DragForce dragForce = new DragForce();
        this.mFlingForce = dragForce;
        dragForce.mVelocityThreshold = this.mMinVisibleChange * 0.75f * 62.5f;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public final void setValueThreshold(float f) {
        this.mFlingForce.mVelocityThreshold = f * 62.5f;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0068 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0069 A[RETURN] */
    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean updateValueAndVelocity(long r7) {
        /*
            r6 = this;
            float r0 = r6.mValue
            float r1 = r6.mVelocity
            double r2 = (double) r1
            float r7 = (float) r7
            r8 = 1148846080(0x447a0000, float:1000.0)
            float r7 = r7 / r8
            androidx.dynamicanimation.animation.FlingAnimation$DragForce r8 = r6.mFlingForce
            float r4 = r8.mFriction
            float r7 = r7 * r4
            double r4 = (double) r7
            double r4 = java.lang.Math.exp(r4)
            double r4 = r4 * r2
            float r7 = (float) r4
            androidx.dynamicanimation.animation.DynamicAnimation$MassState r2 = r8.mMassState
            r2.mVelocity = r7
            float r1 = r7 - r1
            float r3 = r8.mFriction
            float r1 = r1 / r3
            float r1 = r1 + r0
            r2.mValue = r1
            float r7 = java.lang.Math.abs(r7)
            float r0 = r8.mVelocityThreshold
            int r7 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            r0 = 1
            r1 = 0
            if (r7 >= 0) goto L2f
            r7 = r0
            goto L30
        L2f:
            r7 = r1
        L30:
            if (r7 == 0) goto L35
            r7 = 0
            r2.mVelocity = r7
        L35:
            float r7 = r2.mValue
            r6.mValue = r7
            float r2 = r2.mVelocity
            r6.mVelocity = r2
            float r3 = r6.mMinValue
            int r4 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r4 >= 0) goto L46
            r6.mValue = r3
            return r0
        L46:
            float r3 = r6.mMaxValue
            int r7 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r7 <= 0) goto L4f
            r6.mValue = r3
            return r0
        L4f:
            if (r7 >= 0) goto L65
            if (r4 <= 0) goto L65
            float r6 = java.lang.Math.abs(r2)
            float r7 = r8.mVelocityThreshold
            int r6 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r6 >= 0) goto L5f
            r6 = r0
            goto L60
        L5f:
            r6 = r1
        L60:
            if (r6 == 0) goto L63
            goto L65
        L63:
            r6 = r1
            goto L66
        L65:
            r6 = r0
        L66:
            if (r6 == 0) goto L69
            return r0
        L69:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.dynamicanimation.animation.FlingAnimation.updateValueAndVelocity(long):boolean");
    }

    public <K> FlingAnimation(K k, FloatPropertyCompat floatPropertyCompat) {
        super(k, floatPropertyCompat);
        DragForce dragForce = new DragForce();
        this.mFlingForce = dragForce;
        dragForce.mVelocityThreshold = this.mMinVisibleChange * 0.75f * 62.5f;
    }
}
