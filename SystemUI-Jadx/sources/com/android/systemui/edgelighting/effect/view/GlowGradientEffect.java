package com.android.systemui.edgelighting.effect.view;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class GlowGradientEffect extends FrameLayout {
    public ImageView mGlowView;
    public GradientEffectView mGradientView;
    public float mLightingAlpha;

    /* JADX WARN: Removed duplicated region for block: B:12:0x0098 A[LOOP:0: B:6:0x005e->B:12:0x0098, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x009c A[EDGE_INSN: B:13:0x009c->B:14:0x009c BREAK  A[LOOP:0: B:6:0x005e->B:12:0x0098], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public GlowGradientEffect(android.content.Context r9) {
        /*
            r8 = this;
            r8.<init>(r9)
            r9 = 1065353216(0x3f800000, float:1.0)
            r8.mLightingAlpha = r9
            com.android.systemui.edgelighting.effect.view.GradientEffectView r9 = new com.android.systemui.edgelighting.effect.view.GradientEffectView
            android.content.Context r0 = r8.getContext()
            r9.<init>(r0)
            r8.mGradientView = r9
            android.widget.ImageView r9 = new android.widget.ImageView
            android.content.Context r0 = r8.getContext()
            r9.<init>(r0)
            r8.mGlowView = r9
            android.widget.ImageView$ScaleType r0 = android.widget.ImageView.ScaleType.FIT_XY
            r9.setScaleType(r0)
            android.widget.ImageView r9 = r8.mGlowView
            android.widget.FrameLayout$LayoutParams r0 = new android.widget.FrameLayout$LayoutParams
            r1 = -1
            r0.<init>(r1, r1)
            r9.setLayoutParams(r0)
            boolean r9 = com.android.systemui.edgelighting.effect.utils.Utils.isLargeCoverFlipFolded()
            r0 = 0
            if (r9 == 0) goto Lab
            android.content.Context r9 = r8.getContext()
            java.lang.String r1 = "display"
            java.lang.Object r9 = r9.getSystemService(r1)
            android.hardware.display.DisplayManager r9 = (android.hardware.display.DisplayManager) r9
            java.lang.String r1 = "com.samsung.android.hardware.display.category.BUILTIN"
            android.view.Display[] r9 = r9.getDisplays(r1)
            if (r9 == 0) goto L9b
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "getSubDisplay() : length "
            r1.<init>(r2)
            int r2 = r9.length
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = com.android.systemui.edgelighting.effect.utils.Utils.TAG
            android.util.Slog.d(r2, r1)
            int r1 = r9.length
            r3 = r0
        L5e:
            if (r3 >= r1) goto L9b
            r4 = r9[r3]
            if (r4 != 0) goto L6a
            java.lang.String r5 = "Do not show SubScreen UI on null display"
            android.util.Slog.i(r2, r5)
            goto L94
        L6a:
            int r5 = r4.getDisplayId()
            r6 = 1
            if (r5 != r6) goto L83
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r7 = "Show SubScreen UI on this display "
            r5.<init>(r7)
            r5.append(r4)
            java.lang.String r5 = r5.toString()
            android.util.Slog.i(r2, r5)
            goto L95
        L83:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "Do not show SubScreen UI on this display "
            r5.<init>(r6)
            r5.append(r4)
            java.lang.String r5 = r5.toString()
            android.util.Slog.i(r2, r5)
        L94:
            r6 = r0
        L95:
            if (r6 == 0) goto L98
            goto L9c
        L98:
            int r3 = r3 + 1
            goto L5e
        L9b:
            r4 = 0
        L9c:
            int r9 = r4.getRotation()
            if (r9 != 0) goto Lab
            android.widget.ImageView r9 = r8.mGlowView
            r1 = 2131232630(0x7f080776, float:1.8081375E38)
            r9.setImageResource(r1)
            goto Lb3
        Lab:
            android.widget.ImageView r9 = r8.mGlowView
            r1 = 2131232629(0x7f080775, float:1.8081373E38)
            r9.setImageResource(r1)
        Lb3:
            android.widget.ImageView r9 = r8.mGlowView
            r8.addView(r9)
            com.android.systemui.edgelighting.effect.view.GradientEffectView r9 = r8.mGradientView
            r8.addView(r9)
            r8.setBackgroundColor(r0)
            java.lang.String r8 = "GLOW"
            java.lang.String r9 = "init"
            android.util.Log.i(r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.edgelighting.effect.view.GlowGradientEffect.<init>(android.content.Context):void");
    }

    public final void hide() {
        this.mGlowView.setAlpha(this.mLightingAlpha);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mGlowView, "alpha", 0.0f);
        ofFloat.setDuration(900L);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.android.systemui.edgelighting.effect.view.GlowGradientEffect.1
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ImageView imageView = GlowGradientEffect.this.mGlowView;
                if (imageView != null) {
                    imageView.setImageDrawable(null);
                }
                GradientEffectView gradientEffectView = GlowGradientEffect.this.mGradientView;
                if (gradientEffectView != null) {
                    AnimatorSet animatorSet = gradientEffectView.mAnimationSet;
                    if (animatorSet != null) {
                        animatorSet.cancel();
                    }
                    gradientEffectView.resetImageDrawable();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
            }
        });
        ofFloat.start();
        GradientEffectView gradientEffectView = this.mGradientView;
        gradientEffectView.mContainer.setAlpha(gradientEffectView.mStrokeAlpha);
        AbsEdgeLightingMaskView.changeRingImageAlpha(gradientEffectView.mContainer, 0.0f, 900L);
    }
}
