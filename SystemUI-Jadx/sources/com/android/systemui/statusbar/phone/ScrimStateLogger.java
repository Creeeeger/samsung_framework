package com.android.systemui.statusbar.phone;

import com.android.systemui.scrim.ScrimView;
import com.android.systemui.scrim.ScrimViewBase;
import java.util.function.IntConsumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ScrimStateLogger {
    public final Callback mCallback;
    public final ScrimViewBase[] mScrimViews;
    public final int[] mColors = new int[3];
    public final float[] mAlphas = new float[3];
    public boolean mForceChanged = false;
    public int mScrimVisibility = -1;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Callback {
    }

    public ScrimStateLogger(ScrimViewBase scrimViewBase, ScrimViewBase scrimViewBase2, ScrimViewBase scrimViewBase3, Callback callback) {
        this.mScrimViews = r0;
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        ScrimViewBase[] scrimViewBaseArr = {scrimViewBase, scrimViewBase2, scrimViewBase3};
        this.mCallback = callback;
        ((ScrimView) scrimViewBase).mVisibilityChangedListener = new IntConsumer(this) { // from class: com.android.systemui.statusbar.phone.ScrimStateLogger$$ExternalSyntheticLambda0
            public final /* synthetic */ ScrimStateLogger f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.IntConsumer
            public final void accept(int i4) {
                switch (i) {
                    case 0:
                        ScrimStateLogger scrimStateLogger = this.f$0;
                        scrimStateLogger.mForceChanged = true;
                        scrimStateLogger.logScrimColor(true);
                        return;
                    case 1:
                        ScrimStateLogger scrimStateLogger2 = this.f$0;
                        scrimStateLogger2.mForceChanged = true;
                        scrimStateLogger2.logScrimColor(true);
                        return;
                    default:
                        ScrimStateLogger scrimStateLogger3 = this.f$0;
                        scrimStateLogger3.mForceChanged = true;
                        scrimStateLogger3.logScrimColor(true);
                        return;
                }
            }
        };
        ((ScrimView) scrimViewBase2).mVisibilityChangedListener = new IntConsumer(this) { // from class: com.android.systemui.statusbar.phone.ScrimStateLogger$$ExternalSyntheticLambda0
            public final /* synthetic */ ScrimStateLogger f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.IntConsumer
            public final void accept(int i4) {
                switch (i2) {
                    case 0:
                        ScrimStateLogger scrimStateLogger = this.f$0;
                        scrimStateLogger.mForceChanged = true;
                        scrimStateLogger.logScrimColor(true);
                        return;
                    case 1:
                        ScrimStateLogger scrimStateLogger2 = this.f$0;
                        scrimStateLogger2.mForceChanged = true;
                        scrimStateLogger2.logScrimColor(true);
                        return;
                    default:
                        ScrimStateLogger scrimStateLogger3 = this.f$0;
                        scrimStateLogger3.mForceChanged = true;
                        scrimStateLogger3.logScrimColor(true);
                        return;
                }
            }
        };
        ((ScrimView) scrimViewBase3).mVisibilityChangedListener = new IntConsumer(this) { // from class: com.android.systemui.statusbar.phone.ScrimStateLogger$$ExternalSyntheticLambda0
            public final /* synthetic */ ScrimStateLogger f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.IntConsumer
            public final void accept(int i4) {
                switch (i3) {
                    case 0:
                        ScrimStateLogger scrimStateLogger = this.f$0;
                        scrimStateLogger.mForceChanged = true;
                        scrimStateLogger.logScrimColor(true);
                        return;
                    case 1:
                        ScrimStateLogger scrimStateLogger2 = this.f$0;
                        scrimStateLogger2.mForceChanged = true;
                        scrimStateLogger2.logScrimColor(true);
                        return;
                    default:
                        ScrimStateLogger scrimStateLogger3 = this.f$0;
                        scrimStateLogger3.mForceChanged = true;
                        scrimStateLogger3.logScrimColor(true);
                        return;
                }
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0057 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void logScrimColor(boolean r19) {
        /*
            r18 = this;
            r0 = r18
            com.android.systemui.statusbar.phone.ScrimStateLogger$Callback r1 = r0.mCallback
            com.android.systemui.statusbar.phone.ScrimController$3 r1 = (com.android.systemui.statusbar.phone.ScrimController.AnonymousClass3) r1
            com.android.systemui.statusbar.phone.ScrimController r2 = com.android.systemui.statusbar.phone.ScrimController.this
            int r2 = r2.mScrimsVisibility
            boolean r3 = r0.mForceChanged
            r4 = 0
            r5 = 1
            if (r3 == 0) goto L13
            r0.mForceChanged = r4
            goto L17
        L13:
            int r3 = r0.mScrimVisibility
            if (r3 == r2) goto L19
        L17:
            r3 = r5
            goto L1a
        L19:
            r3 = r4
        L1a:
            com.android.systemui.scrim.ScrimViewBase[] r6 = r0.mScrimViews
            if (r3 != 0) goto L59
            boolean r3 = r0.mForceChanged
            if (r3 == 0) goto L25
            r0.mForceChanged = r4
            goto L29
        L25:
            int r3 = r0.mScrimVisibility
            if (r3 == r2) goto L2b
        L29:
            r3 = r5
            goto L2c
        L2b:
            r3 = r4
        L2c:
            if (r3 == 0) goto L2f
            goto L52
        L2f:
            int r3 = r6.length
            r7 = r4
            r8 = r7
        L32:
            if (r7 >= r3) goto L54
            r9 = r6[r7]
            com.android.systemui.scrim.ScrimView r9 = (com.android.systemui.scrim.ScrimView) r9
            int r10 = r9.getMainColor()
            int[] r11 = r0.mColors
            r11 = r11[r8]
            if (r10 != r11) goto L52
            float r9 = r9.mViewAlpha
            float[] r10 = r0.mAlphas
            r10 = r10[r8]
            int r9 = (r9 > r10 ? 1 : (r9 == r10 ? 0 : -1))
            if (r9 == 0) goto L4d
            goto L52
        L4d:
            int r8 = r8 + 1
            int r7 = r7 + 1
            goto L32
        L52:
            r0 = r5
            goto L55
        L54:
            r0 = r4
        L55:
            if (r0 == 0) goto Lcd
            if (r19 == 0) goto Lcd
        L59:
            r0 = r6[r4]
            r3 = r6[r5]
            r4 = 2
            r4 = r6[r4]
            java.util.Locale r5 = java.util.Locale.US
            com.android.systemui.statusbar.phone.ScrimController r6 = com.android.systemui.statusbar.phone.ScrimController.this
            com.android.internal.colorextraction.ColorExtractor$GradientColors r6 = r6.mColors
            int r6 = r6.getMainColor()
            java.lang.Integer r7 = java.lang.Integer.valueOf(r6)
            com.android.systemui.scrim.ScrimView r0 = (com.android.systemui.scrim.ScrimView) r0
            int r6 = r0.getMainColor()
            java.lang.Integer r8 = java.lang.Integer.valueOf(r6)
            float r6 = r0.mViewAlpha
            java.lang.Float r9 = java.lang.Float.valueOf(r6)
            int r0 = r0.getVisibility()
            java.lang.Integer r10 = java.lang.Integer.valueOf(r0)
            com.android.systemui.scrim.ScrimView r3 = (com.android.systemui.scrim.ScrimView) r3
            int r0 = r3.getMainColor()
            java.lang.Integer r11 = java.lang.Integer.valueOf(r0)
            float r0 = r3.mViewAlpha
            java.lang.Float r12 = java.lang.Float.valueOf(r0)
            int r0 = r3.getVisibility()
            java.lang.Integer r13 = java.lang.Integer.valueOf(r0)
            com.android.systemui.scrim.ScrimView r4 = (com.android.systemui.scrim.ScrimView) r4
            int r0 = r4.getMainColor()
            java.lang.Integer r14 = java.lang.Integer.valueOf(r0)
            float r0 = r4.mViewAlpha
            java.lang.Float r15 = java.lang.Float.valueOf(r0)
            int r0 = r4.getVisibility()
            java.lang.Integer r16 = java.lang.Integer.valueOf(r0)
            java.lang.Integer r17 = java.lang.Integer.valueOf(r2)
            java.lang.Object[] r0 = new java.lang.Object[]{r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17}
            java.lang.String r2 = "updateScrimColor main=0x%x front=0x%x|%f|%d noti=0x%x|%f|%d behind=0x%x|%f|%d vis=%d"
            java.lang.String r0 = java.lang.String.format(r5, r2, r0)
            r1.getClass()
            java.lang.String r1 = "ScrimController"
            android.util.Log.d(r1, r0)
        Lcd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.ScrimStateLogger.logScrimColor(boolean):void");
    }
}
