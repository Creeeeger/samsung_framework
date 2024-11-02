package com.android.systemui.accessibility.floatingmenu;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.systemui.recents.TriangleShape;
import com.samsung.android.nexus.video.VideoPlayer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class BaseTooltipView extends FrameLayout {
    public final AccessibilityFloatingMenuView mAnchorView;
    public int mArrowCornerRadius;
    public int mArrowHeight;
    public int mArrowMargin;
    public int mArrowWidth;
    public final WindowManager.LayoutParams mCurrentLayoutParams;
    public int mFontSize;
    public boolean mIsShowing;
    public int mScreenWidth;
    public TextView mTextView;
    public int mTextViewCornerRadius;
    public int mTextViewMargin;
    public int mTextViewPadding;
    public final WindowManager mWindowManager;

    public BaseTooltipView(Context context, AccessibilityFloatingMenuView accessibilityFloatingMenuView) {
        super(context);
        this.mWindowManager = (WindowManager) context.getSystemService(WindowManager.class);
        this.mAnchorView = accessibilityFloatingMenuView;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2024, 262152, -3);
        layoutParams.windowAnimations = R.style.Animation.Translucent;
        layoutParams.gravity = 8388659;
        this.mCurrentLayoutParams = layoutParams;
        View inflate = LayoutInflater.from(getContext()).inflate(com.android.systemui.R.layout.accessibility_floating_menu_tooltip, (ViewGroup) this, false);
        this.mTextView = (TextView) inflate.findViewById(com.android.systemui.R.id.text);
        addView(inflate);
    }

    public final int getTextWidthWith(Rect rect) {
        this.mTextView.measure(View.MeasureSpec.makeMeasureSpec((((this.mScreenWidth - rect.width()) - this.mArrowWidth) - this.mArrowMargin) - this.mTextViewMargin, VideoPlayer.MEDIA_ERROR_SYSTEM), View.MeasureSpec.makeMeasureSpec(0, 0));
        return this.mTextView.getMeasuredWidth();
    }

    public final int getWindowWidthWith(Rect rect) {
        return getResources().getDimensionPixelSize(com.android.systemui.R.dimen.accessibility_floating_tooltip_space) + getTextWidthWith(rect) + this.mArrowWidth + this.mArrowMargin;
    }

    public void hide() {
        if (!this.mIsShowing) {
            return;
        }
        this.mIsShowing = false;
        this.mWindowManager.removeView(this);
    }

    public final boolean isAnchorViewOnLeft(Rect rect) {
        if (rect.centerX() < this.mScreenWidth / 2) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mAnchorView.onConfigurationChanged(configuration);
        updateTooltipView();
        this.mWindowManager.updateViewLayout(this, this.mCurrentLayoutParams);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_DISMISS);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 4) {
            hide();
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i, Bundle bundle) {
        if (i == AccessibilityNodeInfo.AccessibilityAction.ACTION_DISMISS.getId()) {
            hide();
            return true;
        }
        return super.performAccessibilityAction(i, bundle);
    }

    public final void updateTooltipView() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int windowWidthWith;
        int windowWidthWith2;
        Resources resources = getResources();
        this.mScreenWidth = resources.getDisplayMetrics().widthPixels;
        this.mArrowWidth = resources.getDimensionPixelSize(com.android.systemui.R.dimen.accessibility_floating_tooltip_arrow_width);
        this.mArrowHeight = resources.getDimensionPixelSize(com.android.systemui.R.dimen.accessibility_floating_tooltip_arrow_height);
        this.mArrowMargin = resources.getDimensionPixelSize(com.android.systemui.R.dimen.accessibility_floating_tooltip_arrow_margin);
        this.mArrowCornerRadius = resources.getDimensionPixelSize(com.android.systemui.R.dimen.accessibility_floating_tooltip_arrow_corner_radius);
        this.mFontSize = resources.getDimensionPixelSize(com.android.systemui.R.dimen.accessibility_floating_tooltip_font_size);
        this.mTextViewMargin = resources.getDimensionPixelSize(com.android.systemui.R.dimen.accessibility_floating_tooltip_margin);
        this.mTextViewPadding = resources.getDimensionPixelSize(com.android.systemui.R.dimen.accessibility_floating_tooltip_padding);
        this.mTextViewCornerRadius = resources.getDimensionPixelSize(com.android.systemui.R.dimen.accessibility_floating_tooltip_text_corner_radius);
        this.mTextView.setTextSize(0, this.mFontSize);
        TextView textView = this.mTextView;
        int i6 = this.mTextViewPadding;
        textView.setPadding(i6, i6, i6, i6);
        GradientDrawable gradientDrawable = (GradientDrawable) this.mTextView.getBackground();
        gradientDrawable.setCornerRadius(this.mTextViewCornerRadius);
        gradientDrawable.setColor(getResources().getColor(com.android.systemui.R.color.accessibility_floating_menu_background));
        AccessibilityFloatingMenuView accessibilityFloatingMenuView = this.mAnchorView;
        if (accessibilityFloatingMenuView.mIsHideHandle) {
            WindowManager.LayoutParams layoutParams = accessibilityFloatingMenuView.mHideHandleLayoutParams;
            i = layoutParams.x;
            i2 = layoutParams.y;
        } else {
            WindowManager.LayoutParams layoutParams2 = accessibilityFloatingMenuView.mCurrentLayoutParams;
            i = layoutParams2.x;
            i2 = layoutParams2.y;
        }
        Rect rect = new Rect(i, i2, accessibilityFloatingMenuView.getWindowWidth() + i, accessibilityFloatingMenuView.getWindowHeight() + i2);
        boolean isAnchorViewOnLeft = isAnchorViewOnLeft(rect);
        if (isAnchorViewOnLeft) {
            i3 = com.android.systemui.R.id.arrow_left;
        } else {
            i3 = com.android.systemui.R.id.arrow_right;
        }
        View findViewById = findViewById(i3);
        findViewById.setVisibility(0);
        ViewGroup.LayoutParams layoutParams3 = findViewById.getLayoutParams();
        ShapeDrawable shapeDrawable = new ShapeDrawable(TriangleShape.createHorizontal(layoutParams3.width, layoutParams3.height, isAnchorViewOnLeft));
        Paint paint = shapeDrawable.getPaint();
        paint.setColor(getResources().getColor(com.android.systemui.R.color.accessibility_floating_menu_background));
        float f = layoutParams3.width;
        float f2 = layoutParams3.height;
        int i7 = TriangleStrokeShape.$r8$clinit;
        Path path = new Path();
        if (isAnchorViewOnLeft) {
            path.moveTo(f, f2);
            path.lineTo(0.0f, f2 / 2.0f);
            path.lineTo(f, 0.0f);
        } else {
            path.moveTo(0.0f, f2);
            path.lineTo(f, f2 / 2.0f);
            path.lineTo(0.0f, 0.0f);
        }
        ShapeDrawable shapeDrawable2 = new ShapeDrawable(new TriangleStrokeShape(path, f, f2));
        Paint paint2 = shapeDrawable2.getPaint();
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setColor(getResources().getColor(com.android.systemui.R.color.accessibility_floating_menu_stroke));
        paint2.setStrokeWidth(getResources().getDimensionPixelSize(com.android.systemui.R.dimen.accessibility_floating_menu_stroke_width));
        paint.setPathEffect(new CornerPathEffect(this.mArrowCornerRadius));
        findViewById.setBackground(new InstantInsetLayerDrawable(new Drawable[]{shapeDrawable, shapeDrawable2}));
        RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) findViewById.getLayoutParams();
        layoutParams4.width = this.mArrowWidth;
        layoutParams4.height = this.mArrowHeight;
        if (isAnchorViewOnLeft) {
            i4 = 0;
        } else {
            i4 = this.mArrowMargin;
        }
        if (isAnchorViewOnLeft) {
            i5 = this.mArrowMargin;
        } else {
            i5 = 0;
        }
        layoutParams4.setMargins(i4, 0, i5, 0);
        findViewById.setLayoutParams(layoutParams4);
        ViewGroup.LayoutParams layoutParams5 = this.mTextView.getLayoutParams();
        if (isAnchorViewOnLeft(rect)) {
            int i8 = this.mScreenWidth - rect.right;
            int windowWidthWith3 = getWindowWidthWith(rect);
            int i9 = this.mArrowWidth;
            if (i8 < windowWidthWith3 + i9) {
                layoutParams5.width = (this.mScreenWidth - rect.right) - i9;
            } else {
                layoutParams5.width = getTextWidthWith(rect);
            }
        } else {
            int i10 = rect.left;
            int windowWidthWith4 = getWindowWidthWith(rect);
            int i11 = this.mArrowWidth;
            if (i10 < windowWidthWith4 + i11) {
                layoutParams5.width = rect.left - i11;
            } else {
                layoutParams5.width = getTextWidthWith(rect);
            }
        }
        this.mTextView.setLayoutParams(layoutParams5);
        if (this.mAnchorView.mIsHideHandle) {
            WindowManager.LayoutParams layoutParams6 = this.mCurrentLayoutParams;
            if (isAnchorViewOnLeft(rect)) {
                windowWidthWith2 = this.mAnchorView.mHideHandleWidth;
            } else {
                windowWidthWith2 = (this.mScreenWidth - getWindowWidthWith(rect)) - this.mAnchorView.mHideHandleWidth;
            }
            layoutParams6.x = windowWidthWith2;
            this.mCurrentLayoutParams.y = rect.top;
        } else {
            WindowManager.LayoutParams layoutParams7 = this.mCurrentLayoutParams;
            if (isAnchorViewOnLeft(rect)) {
                windowWidthWith = rect.right;
            } else {
                windowWidthWith = rect.left - getWindowWidthWith(rect);
            }
            layoutParams7.x = windowWidthWith;
            WindowManager.LayoutParams layoutParams8 = this.mCurrentLayoutParams;
            int centerY = rect.centerY();
            this.mTextView.measure(View.MeasureSpec.makeMeasureSpec((((this.mScreenWidth - rect.width()) - this.mArrowWidth) - this.mArrowMargin) - this.mTextViewMargin, VideoPlayer.MEDIA_ERROR_SYSTEM), View.MeasureSpec.makeMeasureSpec(0, 0));
            layoutParams8.y = centerY - (this.mTextView.getMeasuredHeight() / 2);
        }
        if (this.mAnchorView.offsetForLeftNaviBar()) {
            WindowManager.LayoutParams layoutParams9 = this.mCurrentLayoutParams;
            layoutParams9.x = this.mAnchorView.getNavigationBarHeight() + layoutParams9.x;
        }
    }
}
