package com.android.systemui.edgelighting.effect.container;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.provider.Settings;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.utils.LottieValueAnimator;
import com.airbnb.lottie.value.LottieValueCallback;
import com.android.systemui.R;
import com.android.systemui.edgelighting.effect.data.EdgeEffectInfo;
import com.android.systemui.edgelighting.effect.view.EdgeLightNotiEffectView;
import com.samsung.android.feature.SemFloatingFeature;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class NotificationBubbleEffect extends NotificationNormalEffect {
    public float[] mBubbleScale;
    public LottieAnimationView mDotEffect;

    public NotificationBubbleEffect(Context context) {
        super(context);
    }

    @Override // com.android.systemui.edgelighting.effect.container.NotificationEffect
    public final void dismissToastPopup() {
        LottieAnimationView lottieAnimationView = this.mDotEffect;
        if (lottieAnimationView != null) {
            lottieAnimationView.pauseAnimation();
            this.mDotEffect.setVisibility(8);
        }
    }

    @Override // com.android.systemui.edgelighting.effect.container.NotificationEffect
    public final void finishToastPopupAnimation() {
        LottieAnimationView lottieAnimationView = this.mDotEffect;
        if (lottieAnimationView != null) {
            lottieAnimationView.setVisibility(0);
            this.mDotEffect.addValueCallback(new KeyPath("**"), LottieProperty.COLOR_FILTER, new LottieValueCallback(new PorterDuffColorFilter(this.mConvertColor, PorterDuff.Mode.SRC_ATOP)));
            this.mDotEffect.setRepeatMode(1);
            this.mDotEffect.setRepeatCount(5);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mDotEffect.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.topMargin = (int) (((this.mMorphView.mMinWidth / 2) + (this.mMorphView.getTop() + getResources().getDimensionPixelOffset(R.dimen.toast_effect_top_margin))) - ((getResources().getDimensionPixelOffset(R.dimen.dot_effect_size) * this.mBubbleScale[Settings.Global.getInt(getContext().getContentResolver(), "font_size", 2)]) / 2.0f));
                this.mDotEffect.setLayoutParams(layoutParams);
            }
            this.mDotEffect.playAnimation();
        }
    }

    @Override // com.android.systemui.edgelighting.effect.container.NotificationNormalEffect, com.android.systemui.edgelighting.effect.container.NotificationEffect
    public final void init() {
        super.init();
        this.mBubbleScale = new float[]{0.8f, 0.9f, 1.0f, 1.05f, 1.1f, 1.15f, 1.2f, 1.25f};
        LottieAnimationView lottieAnimationView = new LottieAnimationView(getContext());
        this.mDotEffect = lottieAnimationView;
        lottieAnimationView.setVisibility(0);
        String string = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_EDGELIGHTING_FRAME_EFFECT");
        if (string != null && string.contains("frame_effect")) {
            this.mDotEffect.setAnimation("edge_lighting_dot_type.json");
        } else {
            this.mDotEffect.setAnimation("dot_bottom.json");
        }
        int dimensionPixelOffset = (int) (getResources().getDimensionPixelOffset(R.dimen.dot_effect_size) * this.mBubbleScale[Settings.Global.getInt(getContext().getContentResolver(), "font_size", 2)]);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dimensionPixelOffset, dimensionPixelOffset);
        layoutParams.addRule(14, -1);
        this.mNotificationContainer.addView(this.mDotEffect, layoutParams);
    }

    @Override // com.android.systemui.edgelighting.effect.container.NotificationNormalEffect, com.android.systemui.edgelighting.effect.container.NotificationEffect
    public final void requestHideEffectView() {
        super.requestHideEffectView();
        LottieAnimationView lottieAnimationView = this.mDotEffect;
        if (lottieAnimationView != null) {
            lottieAnimationView.pauseAnimation();
            this.mDotEffect.setVisibility(8);
        }
    }

    @Override // com.android.systemui.edgelighting.effect.container.NotificationNormalEffect, com.android.systemui.edgelighting.effect.container.NotificationEffect
    public final void setEdgeEffectInfo(EdgeEffectInfo edgeEffectInfo) {
        super.setEdgeEffectInfo(edgeEffectInfo);
        float f = edgeEffectInfo.mStrokeAlpha;
        if (f > 0.0f) {
            this.mDotEffect.setAlpha(f);
        }
    }

    @Override // com.android.systemui.edgelighting.effect.container.NotificationNormalEffect, com.android.systemui.edgelighting.effect.container.NotificationEffect
    public final void setEffectColors(int[] iArr) {
        super.setEffectColors(iArr);
        if (this.mDotEffect != null) {
            this.mDotEffect.addValueCallback(new KeyPath("**"), LottieProperty.COLOR_FILTER, new LottieValueCallback(new PorterDuffColorFilter(this.mConvertColor, PorterDuff.Mode.SRC_ATOP)));
        }
    }

    @Override // com.android.systemui.edgelighting.effect.container.NotificationNormalEffect, com.android.systemui.edgelighting.effect.container.NotificationEffect
    public final void update() {
        LottieAnimationView lottieAnimationView;
        boolean z;
        super.update();
        EdgeLightNotiEffectView edgeLightNotiEffectView = this.mLightEffectView;
        if (edgeLightNotiEffectView != null && edgeLightNotiEffectView.isRotateAnimating() && (lottieAnimationView = this.mDotEffect) != null) {
            LottieValueAnimator lottieValueAnimator = lottieAnimationView.lottieDrawable.animator;
            if (lottieValueAnimator == null) {
                z = false;
            } else {
                z = lottieValueAnimator.running;
            }
            if (z) {
                lottieAnimationView.playAnimation();
            }
        }
    }

    @Override // com.android.systemui.edgelighting.effect.container.NotificationEffect
    public final void updateEffectLocation() {
        LottieAnimationView lottieAnimationView = this.mDotEffect;
        if (lottieAnimationView != null) {
            lottieAnimationView.cancelAnimation();
            this.mDotEffect.setVisibility(8);
            this.mNotificationContainer.removeView(this.mDotEffect);
            int dimensionPixelOffset = (int) (getResources().getDimensionPixelOffset(R.dimen.dot_effect_size) * this.mBubbleScale[Settings.Global.getInt(getContext().getContentResolver(), "font_size", 2)]);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dimensionPixelOffset, dimensionPixelOffset);
            layoutParams.addRule(14, -1);
            this.mNotificationContainer.addView(this.mDotEffect, layoutParams);
        }
    }

    public NotificationBubbleEffect(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
