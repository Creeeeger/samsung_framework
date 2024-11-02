package com.android.systemui.biometrics;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AuthPanelController extends ViewOutlineProvider {
    public int mContainerHeight;
    public int mContainerWidth;
    public int mContentHeight;
    public int mContentWidth;
    public final Context mContext;
    public float mCornerRadius;
    public int mMargin;
    public final View mPanelView;
    public int mPosition = 1;
    public boolean mUseFullScreen;

    public AuthPanelController(Context context, View view) {
        this.mContext = context;
        this.mPanelView = view;
        this.mCornerRadius = context.getResources().getDimension(R.dimen.biometric_dialog_corner_size);
        this.mMargin = (int) context.getResources().getDimension(R.dimen.biometric_dialog_border_padding);
        view.setOutlineProvider(this);
        view.setClipToOutline(true);
    }

    public final int getLeftBound(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    Log.e("BiometricPrompt/AuthPanelController", "Unrecognized position: " + i);
                    return getLeftBound(1);
                }
                return (this.mContainerWidth - this.mContentWidth) - this.mMargin;
            }
            if (!this.mUseFullScreen) {
                return this.mMargin + Utils.getNavbarInsets(this.mContext).left;
            }
            return this.mMargin;
        }
        return (this.mContainerWidth - this.mContentWidth) / 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0063  */
    @Override // android.view.ViewOutlineProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void getOutline(android.view.View r7, android.graphics.Outline r8) {
        /*
            r6 = this;
            int r7 = r6.mPosition
            int r1 = r6.getLeftBound(r7)
            int r7 = r6.mPosition
            boolean r0 = r6.mUseFullScreen
            r2 = 2
            r3 = 3
            if (r0 != 0) goto L25
            android.content.Context r0 = r6.mContext
            android.graphics.Insets r0 = com.android.systemui.biometrics.Utils.getNavbarInsets(r0)
            if (r7 != r3) goto L1d
            int r7 = r6.mContentWidth
            int r7 = r7 + r1
            int r0 = r0.right
        L1b:
            int r7 = r7 - r0
            goto L28
        L1d:
            if (r7 != r2) goto L25
            int r7 = r6.mContentWidth
            int r7 = r7 + r1
            int r0 = r0.left
            goto L1b
        L25:
            int r7 = r6.mContentWidth
            int r7 = r7 + r1
        L28:
            int r0 = r6.mPosition
            if (r0 == r2) goto L3b
            if (r0 == r3) goto L3b
            int r0 = r6.mContainerHeight
            int r2 = r6.mContentHeight
            int r0 = r0 - r2
            int r2 = r6.mMargin
            int r0 = r0 - r2
            int r0 = java.lang.Math.max(r0, r2)
            goto L47
        L3b:
            int r0 = r6.mContainerHeight
            int r3 = r6.mContentHeight
            int r0 = r0 - r3
            int r0 = r0 / r2
            int r2 = r6.mMargin
            int r0 = java.lang.Math.max(r0, r2)
        L47:
            r2 = r0
            boolean r0 = r6.mUseFullScreen
            if (r0 != 0) goto L63
            android.content.Context r0 = r6.mContext
            android.graphics.Insets r0 = com.android.systemui.biometrics.Utils.getNavbarInsets(r0)
            int r3 = r6.mContentHeight
            int r3 = r3 + r2
            int r0 = r0.bottom
            int r3 = r3 - r0
            int r4 = r6.mContainerHeight
            int r5 = r6.mMargin
            int r4 = r4 - r5
            int r4 = r4 - r0
            int r0 = java.lang.Math.min(r3, r4)
            goto L6f
        L63:
            int r0 = r6.mContentHeight
            int r0 = r0 + r2
            int r3 = r6.mContainerHeight
            int r4 = r6.mMargin
            int r3 = r3 - r4
            int r0 = java.lang.Math.min(r0, r3)
        L6f:
            r4 = r0
            float r5 = r6.mCornerRadius
            r0 = r8
            r3 = r7
            r0.setRoundRect(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.biometrics.AuthPanelController.getOutline(android.view.View, android.graphics.Outline):void");
    }

    public final void updateForContentDimensions(int i, int i2, int i3) {
        int dimension;
        float dimension2;
        if (this.mContainerWidth != 0 && this.mContainerHeight != 0) {
            final int i4 = 0;
            if (this.mUseFullScreen) {
                dimension = 0;
            } else {
                dimension = (int) this.mContext.getResources().getDimension(R.dimen.biometric_dialog_border_padding);
            }
            if (this.mUseFullScreen) {
                dimension2 = 0.0f;
            } else {
                dimension2 = this.mContext.getResources().getDimension(R.dimen.biometric_dialog_corner_size);
            }
            if (i3 > 0) {
                ValueAnimator ofInt = ValueAnimator.ofInt(this.mMargin, dimension);
                ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.android.systemui.biometrics.AuthPanelController$$ExternalSyntheticLambda0
                    public final /* synthetic */ AuthPanelController f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        switch (i4) {
                            case 0:
                                AuthPanelController authPanelController = this.f$0;
                                authPanelController.getClass();
                                authPanelController.mMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                                return;
                            case 1:
                                AuthPanelController authPanelController2 = this.f$0;
                                authPanelController2.getClass();
                                authPanelController2.mCornerRadius = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                return;
                            case 2:
                                AuthPanelController authPanelController3 = this.f$0;
                                authPanelController3.getClass();
                                authPanelController3.mContentHeight = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                                authPanelController3.mPanelView.invalidateOutline();
                                return;
                            default:
                                AuthPanelController authPanelController4 = this.f$0;
                                authPanelController4.getClass();
                                authPanelController4.mContentWidth = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                                return;
                        }
                    }
                });
                final int i5 = 2;
                final int i6 = 1;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(this.mCornerRadius, dimension2);
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.android.systemui.biometrics.AuthPanelController$$ExternalSyntheticLambda0
                    public final /* synthetic */ AuthPanelController f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        switch (i6) {
                            case 0:
                                AuthPanelController authPanelController = this.f$0;
                                authPanelController.getClass();
                                authPanelController.mMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                                return;
                            case 1:
                                AuthPanelController authPanelController2 = this.f$0;
                                authPanelController2.getClass();
                                authPanelController2.mCornerRadius = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                return;
                            case 2:
                                AuthPanelController authPanelController3 = this.f$0;
                                authPanelController3.getClass();
                                authPanelController3.mContentHeight = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                                authPanelController3.mPanelView.invalidateOutline();
                                return;
                            default:
                                AuthPanelController authPanelController4 = this.f$0;
                                authPanelController4.getClass();
                                authPanelController4.mContentWidth = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                                return;
                        }
                    }
                });
                ValueAnimator ofInt2 = ValueAnimator.ofInt(this.mContentHeight, i2);
                ofInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.android.systemui.biometrics.AuthPanelController$$ExternalSyntheticLambda0
                    public final /* synthetic */ AuthPanelController f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        switch (i5) {
                            case 0:
                                AuthPanelController authPanelController = this.f$0;
                                authPanelController.getClass();
                                authPanelController.mMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                                return;
                            case 1:
                                AuthPanelController authPanelController2 = this.f$0;
                                authPanelController2.getClass();
                                authPanelController2.mCornerRadius = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                return;
                            case 2:
                                AuthPanelController authPanelController3 = this.f$0;
                                authPanelController3.getClass();
                                authPanelController3.mContentHeight = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                                authPanelController3.mPanelView.invalidateOutline();
                                return;
                            default:
                                AuthPanelController authPanelController4 = this.f$0;
                                authPanelController4.getClass();
                                authPanelController4.mContentWidth = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                                return;
                        }
                    }
                });
                ValueAnimator ofInt3 = ValueAnimator.ofInt(this.mContentWidth, i);
                final int i7 = 3;
                ofInt3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.android.systemui.biometrics.AuthPanelController$$ExternalSyntheticLambda0
                    public final /* synthetic */ AuthPanelController f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        switch (i7) {
                            case 0:
                                AuthPanelController authPanelController = this.f$0;
                                authPanelController.getClass();
                                authPanelController.mMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                                return;
                            case 1:
                                AuthPanelController authPanelController2 = this.f$0;
                                authPanelController2.getClass();
                                authPanelController2.mCornerRadius = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                return;
                            case 2:
                                AuthPanelController authPanelController3 = this.f$0;
                                authPanelController3.getClass();
                                authPanelController3.mContentHeight = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                                authPanelController3.mPanelView.invalidateOutline();
                                return;
                            default:
                                AuthPanelController authPanelController4 = this.f$0;
                                authPanelController4.getClass();
                                authPanelController4.mContentWidth = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                                return;
                        }
                    }
                });
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.setDuration(i3);
                animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
                animatorSet.playTogether(ofFloat, ofInt2, ofInt3, ofInt);
                animatorSet.start();
                return;
            }
            this.mMargin = dimension;
            this.mCornerRadius = dimension2;
            this.mContentWidth = i;
            this.mContentHeight = i2;
            this.mPanelView.invalidateOutline();
            return;
        }
        Log.w("BiometricPrompt/AuthPanelController", "Not done measuring yet");
    }
}
