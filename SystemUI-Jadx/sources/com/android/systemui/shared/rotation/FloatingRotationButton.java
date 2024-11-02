package com.android.systemui.shared.rotation;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import androidx.core.view.OneShotPreDrawListener;
import com.android.systemui.navigationbar.BasicRuneWrapper;
import com.android.systemui.navigationbar.NavigationBarView;
import com.android.systemui.navigationbar.buttons.KeyButtonRipple;
import com.android.systemui.shared.rotation.FloatingRotationButtonPositionCalculator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FloatingRotationButton implements RotationButton {
    public AnimatedVectorDrawable mAnimatedDrawable;
    public final int mButtonDiameterResource;
    public int mContainerSize;
    public final int mContentDescriptionResource;
    public final Context mContext;
    public int mDisplayRotation;
    public final int mFloatingRotationBtnPositionLeftResource;
    public boolean mIsShowing;
    public final ViewGroup mKeyButtonContainer;
    public final FloatingRotationButtonView mKeyButtonView;
    public final int mMinMarginResource;
    public FloatingRotationButtonPositionCalculator.Position mPosition;
    public FloatingRotationButtonPositionCalculator mPositionCalculator;
    public RotationButtonController mRotationButtonController;
    public final int mRoundedContentPaddingResource;
    public int mSamsungBottomMarginResource;
    public int mSamsungDiameterResource;
    public int mSamsungHiddenVisualCueRotateBtnResource;
    public final int mTaskbarBottomMarginResource;
    public final int mTaskbarLeftMarginResource;
    public NavigationBarView.AnonymousClass2 mUpdatesCallback;
    public final WindowManager mWindowManager;
    public boolean mCanShow = true;
    public boolean mIsTaskbarVisible = false;
    public boolean mIsTaskbarStashed = false;

    public FloatingRotationButton(Context context, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        this.mWindowManager = (WindowManager) context.getSystemService(WindowManager.class);
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(i2, (ViewGroup) null);
        this.mKeyButtonContainer = viewGroup;
        FloatingRotationButtonView floatingRotationButtonView = (FloatingRotationButtonView) viewGroup.findViewById(i3);
        this.mKeyButtonView = floatingRotationButtonView;
        floatingRotationButtonView.setVisibility(0);
        floatingRotationButtonView.setContentDescription(context.getString(i));
        floatingRotationButtonView.getClass();
        KeyButtonRipple keyButtonRipple = new KeyButtonRipple(floatingRotationButtonView.getContext(), floatingRotationButtonView, i9);
        floatingRotationButtonView.mRipple = keyButtonRipple;
        floatingRotationButtonView.setBackground(keyButtonRipple);
        this.mContext = context;
        this.mContentDescriptionResource = i;
        this.mMinMarginResource = i4;
        this.mRoundedContentPaddingResource = i5;
        this.mTaskbarLeftMarginResource = i6;
        this.mTaskbarBottomMarginResource = i7;
        this.mButtonDiameterResource = i8;
        this.mFloatingRotationBtnPositionLeftResource = i10;
        if (!BasicRuneWrapper.NAVBAR_ENABLED) {
            updateDimensionResources();
        }
    }

    public final WindowManager.LayoutParams adjustViewPositionAndCreateLayoutParams() {
        int i;
        int i2;
        if (BasicRuneWrapper.NAVBAR_ENABLED) {
            i = 264;
        } else {
            i = 8;
        }
        int i3 = this.mContainerSize;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(i3, i3, 0, 0, 2024, i, -3);
        layoutParams.privateFlags |= 16;
        layoutParams.setTitle("FloatingRotationButton");
        layoutParams.setFitInsetsTypes(0);
        int rotation = this.mWindowManager.getDefaultDisplay().getRotation();
        this.mDisplayRotation = rotation;
        FloatingRotationButtonPositionCalculator.Position calculatePosition = this.mPositionCalculator.calculatePosition(rotation, this.mIsTaskbarVisible, this.mIsTaskbarStashed);
        this.mPosition = calculatePosition;
        if (BasicRuneWrapper.NAVBAR_ENABLED) {
            RotationUtil.Companion.getClass();
            i2 = RotationUtil.floatingButtonPosition;
        } else {
            i2 = calculatePosition.gravity;
        }
        layoutParams.gravity = i2;
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.mKeyButtonView.getLayoutParams();
        FloatingRotationButtonPositionCalculator.Position position = this.mPosition;
        layoutParams2.gravity = position.gravity;
        updateTranslation(position, false);
        return layoutParams;
    }

    @Override // com.android.systemui.shared.rotation.RotationButton
    public final View getCurrentView() {
        return this.mKeyButtonView;
    }

    @Override // com.android.systemui.shared.rotation.RotationButton
    public final Drawable getImageDrawable() {
        return this.mAnimatedDrawable;
    }

    @Override // com.android.systemui.shared.rotation.RotationButton
    public final boolean hide() {
        if (!this.mIsShowing) {
            return false;
        }
        this.mWindowManager.removeViewImmediate(this.mKeyButtonContainer);
        this.mIsShowing = false;
        NavigationBarView.AnonymousClass2 anonymousClass2 = this.mUpdatesCallback;
        if (anonymousClass2 != null) {
            NavigationBarView.this.notifyActiveTouchRegions();
            return true;
        }
        return true;
    }

    @Override // com.android.systemui.shared.rotation.RotationButton
    public final boolean isVisible() {
        return this.mIsShowing;
    }

    @Override // com.android.systemui.shared.rotation.RotationButton
    public final void setCanShowRotationButton(boolean z) {
        this.mCanShow = z;
        if (!z) {
            hide();
        }
    }

    @Override // com.android.systemui.shared.rotation.RotationButton
    public final void setDarkIntensity(float f) {
        this.mKeyButtonView.mRipple.setDarkIntensity(f);
    }

    @Override // com.android.systemui.shared.rotation.RotationButton
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.mKeyButtonView.setOnClickListener(onClickListener);
    }

    @Override // com.android.systemui.shared.rotation.RotationButton
    public final void setOnHoverListener(RotationButtonController$$ExternalSyntheticLambda3 rotationButtonController$$ExternalSyntheticLambda3) {
        this.mKeyButtonView.setOnHoverListener(rotationButtonController$$ExternalSyntheticLambda3);
    }

    @Override // com.android.systemui.shared.rotation.RotationButton
    public final void setRotationButtonController(RotationButtonController rotationButtonController) {
        this.mRotationButtonController = rotationButtonController;
        updateIcon(rotationButtonController.mLightIconColor, rotationButtonController.mDarkIconColor);
    }

    @Override // com.android.systemui.shared.rotation.RotationButton
    public final void setUpdatesCallback(NavigationBarView.AnonymousClass2 anonymousClass2) {
        this.mUpdatesCallback = anonymousClass2;
    }

    @Override // com.android.systemui.shared.rotation.RotationButton
    public final boolean show() {
        int i = 0;
        if (!this.mCanShow || this.mIsShowing) {
            return false;
        }
        this.mIsShowing = true;
        this.mWindowManager.addView(this.mKeyButtonContainer, adjustViewPositionAndCreateLayoutParams());
        AnimatedVectorDrawable animatedVectorDrawable = this.mAnimatedDrawable;
        if (animatedVectorDrawable != null) {
            animatedVectorDrawable.reset();
            this.mAnimatedDrawable.start();
        }
        OneShotPreDrawListener.add(this.mKeyButtonView, new FloatingRotationButton$$ExternalSyntheticLambda0(this, i));
        return true;
    }

    public final void updateDimensionResources() {
        int max;
        int dimensionPixelSize;
        Resources resources = this.mContext.getResources();
        if (BasicRuneWrapper.NAVBAR_ENABLED) {
            max = resources.getDimensionPixelSize(this.mSamsungBottomMarginResource);
        } else {
            max = Math.max(resources.getDimensionPixelSize(this.mMinMarginResource), resources.getDimensionPixelSize(this.mRoundedContentPaddingResource));
        }
        int dimensionPixelSize2 = resources.getDimensionPixelSize(this.mTaskbarLeftMarginResource);
        int dimensionPixelSize3 = resources.getDimensionPixelSize(this.mTaskbarBottomMarginResource);
        this.mPositionCalculator = new FloatingRotationButtonPositionCalculator(max, dimensionPixelSize2, dimensionPixelSize3, resources.getBoolean(this.mFloatingRotationBtnPositionLeftResource));
        if (BasicRuneWrapper.NAVBAR_ENABLED) {
            dimensionPixelSize = resources.getDimensionPixelSize(this.mSamsungDiameterResource);
        } else {
            dimensionPixelSize = resources.getDimensionPixelSize(this.mButtonDiameterResource);
        }
        this.mContainerSize = Math.max(max, Math.max(dimensionPixelSize2, dimensionPixelSize3)) + dimensionPixelSize;
        if (BasicRuneWrapper.NAVBAR_ENABLED) {
            FloatingRotationButtonView floatingRotationButtonView = this.mKeyButtonView;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) floatingRotationButtonView.getLayoutParams();
            layoutParams.width = dimensionPixelSize;
            layoutParams.height = dimensionPixelSize;
            floatingRotationButtonView.setLayoutParams(layoutParams);
        }
    }

    @Override // com.android.systemui.shared.rotation.RotationButton
    public final void updateIcon(int i, int i2) {
        boolean z = BasicRuneWrapper.NAVBAR_ENABLED;
        FloatingRotationButtonView floatingRotationButtonView = this.mKeyButtonView;
        if (z) {
            Drawable drawable = this.mRotationButtonController.getContext().getDrawable(this.mRotationButtonController.mIconResId);
            if (drawable instanceof AnimatedVectorDrawable) {
                this.mAnimatedDrawable = (AnimatedVectorDrawable) drawable;
            } else {
                Log.d("FloatingRotationButton", "updateIcon() drawable=" + drawable);
            }
            floatingRotationButtonView.setBackground(this.mContext.getResources().getDrawable(this.mSamsungHiddenVisualCueRotateBtnResource));
        } else {
            this.mAnimatedDrawable = (AnimatedVectorDrawable) floatingRotationButtonView.getContext().getDrawable(this.mRotationButtonController.mIconResId);
        }
        floatingRotationButtonView.setImageDrawable(this.mAnimatedDrawable);
        if (floatingRotationButtonView.getDrawable() != null) {
            floatingRotationButtonView.getDrawable().setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
            floatingRotationButtonView.mOvalBgPaint.setColor(Color.valueOf(Color.red(i2), Color.green(i2), Color.blue(i2), 0.92f).toArgb());
            floatingRotationButtonView.mRipple.mType = KeyButtonRipple.Type.OVAL;
        }
    }

    public final void updateTranslation(FloatingRotationButtonPositionCalculator.Position position, boolean z) {
        int i = position.translationX;
        FloatingRotationButtonView floatingRotationButtonView = this.mKeyButtonView;
        int i2 = position.translationY;
        if (z) {
            floatingRotationButtonView.animate().translationX(i).translationY(i2).setDuration(300L).setInterpolator(new AccelerateDecelerateInterpolator()).withEndAction(new FloatingRotationButton$$ExternalSyntheticLambda0(this, 1)).start();
        } else {
            floatingRotationButtonView.setTranslationX(i);
            floatingRotationButtonView.setTranslationY(i2);
        }
    }
}
