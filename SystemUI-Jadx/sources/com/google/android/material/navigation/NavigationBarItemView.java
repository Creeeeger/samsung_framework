package com.google.android.material.navigation;

import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.content.ContextCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.ripple.RippleUtils;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class NavigationBarItemView extends FrameLayout implements MenuView.ItemView {
    public static final ActiveIndicatorTransform ACTIVE_INDICATOR_LABELED_TRANSFORM;
    public static final ActiveIndicatorUnlabeledTransform ACTIVE_INDICATOR_UNLABELED_TRANSFORM;
    public static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    public final String TAG;
    public ValueAnimator activeIndicatorAnimator;
    public int activeIndicatorDesiredHeight;
    public int activeIndicatorDesiredWidth;
    public boolean activeIndicatorEnabled;
    public int activeIndicatorMarginHorizontal;
    public float activeIndicatorProgress;
    public boolean activeIndicatorResizeable;
    public ActiveIndicatorTransform activeIndicatorTransform;
    public final View activeIndicatorView;
    public BadgeDrawable badgeDrawable;
    public int defaultMargin;
    public final ImageView icon;
    public final FrameLayout iconContainer;
    public ColorStateList iconTint;
    public boolean initialized;
    public boolean isShifting;
    public Drawable itemBackground;
    public MenuItemImpl itemData;
    public int itemPaddingBottom;
    public int itemPaddingTop;
    public ColorStateList itemRippleColor;
    public final ViewGroup labelGroup;
    public int labelVisibilityMode;
    public final TextView largeLabel;
    public int mBadgeType;
    public boolean mIsBadgeNumberless;
    public SpannableStringBuilder mLabelImgSpan;
    public int mLargeLabelAppearance;
    public int mSmallLabelAppearance;
    public final int mViewType;
    public Drawable originalIconDrawable;
    public float scaleDownFactor;
    public float scaleUpFactor;
    public float shiftAmount;
    public final TextView smallLabel;
    public Drawable wrappedIconDrawable;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public class ActiveIndicatorTransform {
        private ActiveIndicatorTransform() {
        }

        public float calculateScaleY(float f, float f2) {
            return 1.0f;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ActiveIndicatorUnlabeledTransform extends ActiveIndicatorTransform {
        private ActiveIndicatorUnlabeledTransform() {
            super();
        }

        @Override // com.google.android.material.navigation.NavigationBarItemView.ActiveIndicatorTransform
        public final float calculateScaleY(float f, float f2) {
            TimeInterpolator timeInterpolator = AnimationUtils.LINEAR_INTERPOLATOR;
            return (f * 0.6f) + 0.4f;
        }
    }

    static {
        ACTIVE_INDICATOR_LABELED_TRANSFORM = new ActiveIndicatorTransform();
        ACTIVE_INDICATOR_UNLABELED_TRANSFORM = new ActiveIndicatorUnlabeledTransform();
    }

    public NavigationBarItemView(Context context) {
        this(context, null, 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:8:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void setTextAppearanceWithoutFontScaling(int r4, android.widget.TextView r5) {
        /*
            r5.setTextAppearance(r4)
            android.content.Context r0 = r5.getContext()
            r1 = 0
            if (r4 != 0) goto Lc
        La:
            r4 = r1
            goto L4c
        Lc:
            int[] r2 = androidx.appcompat.R$styleable.TextAppearance
            android.content.res.TypedArray r4 = r0.obtainStyledAttributes(r4, r2)
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            boolean r3 = r4.getValue(r1, r2)
            r4.recycle()
            if (r3 != 0) goto L21
            goto La
        L21:
            int r4 = r2.getComplexUnit()
            r3 = 2
            if (r4 != r3) goto L3e
            int r4 = r2.data
            float r4 = android.util.TypedValue.complexToFloat(r4)
            android.content.res.Resources r0 = r0.getResources()
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()
            float r0 = r0.density
            float r4 = r4 * r0
            int r4 = java.lang.Math.round(r4)
            goto L4c
        L3e:
            int r4 = r2.data
            android.content.res.Resources r0 = r0.getResources()
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()
            int r4 = android.util.TypedValue.complexToDimensionPixelSize(r4, r0)
        L4c:
            if (r4 == 0) goto L52
            float r4 = (float) r4
            r5.setTextSize(r1, r4)
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.navigation.NavigationBarItemView.setTextAppearanceWithoutFontScaling(int, android.widget.TextView):void");
    }

    public static void setViewScaleValues(float f, float f2, int i, View view) {
        view.setScaleX(f);
        view.setScaleY(f2);
        view.setVisibility(i);
    }

    public static void setViewTopMarginAndGravity(View view, int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.bottomMargin = i;
        layoutParams.gravity = i2;
        view.setLayoutParams(layoutParams);
    }

    public static void updateViewPaddingBottom(View view, int i) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i);
    }

    public final void calculateTextScaleFactors(float f, float f2) {
        if (f2 != 0.0f && f != 0.0f) {
            this.shiftAmount = f - f2;
            float f3 = (f2 * 1.0f) / f;
            this.scaleUpFactor = f3;
            this.scaleDownFactor = (f * 1.0f) / f2;
            if (f3 >= Float.MAX_VALUE || f3 <= -3.4028235E38f) {
                Log.e(this.TAG, "scaleUpFactor is invalid");
                this.scaleUpFactor = 1.0f;
                this.shiftAmount = 0.0f;
            }
            float f4 = this.scaleDownFactor;
            if (f4 >= Float.MAX_VALUE || f4 <= -3.4028235E38f) {
                Log.e(this.TAG, "scaleDownFactor is invalid");
                this.scaleDownFactor = 1.0f;
                this.shiftAmount = 0.0f;
                return;
            }
            return;
        }
        Log.e(this.TAG, "LabelSize is invalid");
        this.scaleUpFactor = 1.0f;
        this.scaleDownFactor = 1.0f;
        this.shiftAmount = 0.0f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        FrameLayout frameLayout = this.iconContainer;
        if (frameLayout != null && this.activeIndicatorEnabled) {
            frameLayout.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final View getIconOrContainer() {
        FrameLayout frameLayout = this.iconContainer;
        if (frameLayout == null) {
            return this.icon;
        }
        return frameLayout;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public final MenuItemImpl getItemData() {
        return this.itemData;
    }

    public abstract int getItemLayoutResId();

    @Override // android.view.View
    public final int getSuggestedMinimumHeight() {
        int i;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.labelGroup.getLayoutParams();
        BadgeDrawable badgeDrawable = this.badgeDrawable;
        if (badgeDrawable != null) {
            i = badgeDrawable.getMinimumHeight() / 2;
        } else {
            i = 0;
        }
        return this.labelGroup.getMeasuredHeight() + this.icon.getMeasuredWidth() + Math.max(i, ((FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams()).topMargin) + i + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // android.view.View
    public final int getSuggestedMinimumWidth() {
        int minimumWidth;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.labelGroup.getLayoutParams();
        int measuredWidth = this.labelGroup.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
        BadgeDrawable badgeDrawable = this.badgeDrawable;
        if (badgeDrawable == null) {
            minimumWidth = 0;
        } else {
            minimumWidth = badgeDrawable.getMinimumWidth() - this.badgeDrawable.state.currentState.horizontalOffsetWithoutText.intValue();
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams();
        return Math.max(Math.max(minimumWidth, layoutParams2.rightMargin) + this.icon.getMeasuredWidth() + Math.max(minimumWidth, layoutParams2.leftMargin), measuredWidth);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public final void initialize(MenuItemImpl menuItemImpl) {
        CharSequence charSequence;
        int i;
        this.itemData = menuItemImpl;
        menuItemImpl.getClass();
        refreshDrawableState();
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        Drawable icon = menuItemImpl.getIcon();
        if (icon != this.originalIconDrawable) {
            this.originalIconDrawable = icon;
            if (icon != null) {
                Drawable.ConstantState constantState = icon.getConstantState();
                if (constantState != null) {
                    icon = constantState.newDrawable();
                }
                icon = icon.mutate();
                this.wrappedIconDrawable = icon;
                ColorStateList colorStateList = this.iconTint;
                if (colorStateList != null) {
                    icon.setTintList(colorStateList);
                }
            }
            this.icon.setImageDrawable(icon);
        }
        CharSequence charSequence2 = menuItemImpl.mTitle;
        this.smallLabel.setText(charSequence2);
        this.largeLabel.setText(charSequence2);
        if (TextUtils.isEmpty(charSequence2)) {
            this.smallLabel.setVisibility(8);
            this.largeLabel.setVisibility(8);
        }
        MenuItemImpl menuItemImpl2 = this.itemData;
        if (menuItemImpl2 == null || TextUtils.isEmpty(menuItemImpl2.mContentDescription)) {
            setContentDescription(charSequence2);
        }
        MenuItemImpl menuItemImpl3 = this.itemData;
        if (menuItemImpl3 != null) {
            charSequence = menuItemImpl3.mTooltipText;
        } else {
            charSequence = null;
        }
        setTooltipText(charSequence);
        setId(menuItemImpl.mId);
        if (!TextUtils.isEmpty(menuItemImpl.mContentDescription)) {
            setContentDescription(menuItemImpl.mContentDescription);
        }
        setTooltipText(menuItemImpl.mTooltipText);
        String str = menuItemImpl.mBadgeText;
        if (str != null && !str.equals("") && !str.isEmpty()) {
            if (menuItemImpl.mId == com.android.systemui.R.id.bottom_overflow) {
                i = 0;
            } else {
                i = 2;
            }
        } else {
            i = 1;
        }
        this.mBadgeType = i;
        this.initialized = true;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setLargeTextSize(this.mLargeLabelAppearance, this.largeLabel);
        setLargeTextSize(this.mSmallLabelAppearance, this.smallLabel);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        MenuItemImpl menuItemImpl = this.itemData;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.itemData.isChecked()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, CHECKED_STATE_SET);
        }
        return onCreateDrawableState;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0117  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onInitializeAccessibilityNodeInfo(android.view.accessibility.AccessibilityNodeInfo r11) {
        /*
            Method dump skipped, instructions count: 495
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.navigation.NavigationBarItemView.onInitializeAccessibilityNodeInfo(android.view.accessibility.AccessibilityNodeInfo):void");
    }

    @Override // android.view.View
    public final void onSizeChanged(final int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        post(new Runnable() { // from class: com.google.android.material.navigation.NavigationBarItemView.2
            @Override // java.lang.Runnable
            public final void run() {
                NavigationBarItemView navigationBarItemView = NavigationBarItemView.this;
                int i5 = i;
                int[] iArr = NavigationBarItemView.CHECKED_STATE_SET;
                navigationBarItemView.updateActiveIndicatorLayoutParams(i5);
            }
        });
    }

    public final void refreshItemBackground() {
        Drawable background;
        Drawable background2;
        Drawable drawable = this.itemBackground;
        RippleDrawable rippleDrawable = null;
        boolean z = true;
        if (this.itemRippleColor != null) {
            View view = this.activeIndicatorView;
            if (view == null) {
                background = null;
            } else {
                background = view.getBackground();
            }
            if (this.activeIndicatorEnabled) {
                View view2 = this.activeIndicatorView;
                if (view2 == null) {
                    background2 = null;
                } else {
                    background2 = view2.getBackground();
                }
                if (background2 != null && this.iconContainer != null && background != null) {
                    rippleDrawable = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(this.itemRippleColor), null, background);
                    z = false;
                }
            }
            if (drawable == null) {
                ColorStateList colorStateList = this.itemRippleColor;
                int[] iArr = RippleUtils.SELECTED_STATE_SET;
                int colorForState = RippleUtils.getColorForState(colorStateList, RippleUtils.SELECTED_PRESSED_STATE_SET);
                int[] iArr2 = RippleUtils.FOCUSED_STATE_SET;
                drawable = new RippleDrawable(new ColorStateList(new int[][]{iArr, iArr2, StateSet.NOTHING}, new int[]{colorForState, RippleUtils.getColorForState(colorStateList, iArr2), RippleUtils.getColorForState(colorStateList, RippleUtils.PRESSED_STATE_SET)}), null, null);
            }
        }
        FrameLayout frameLayout = this.iconContainer;
        if (frameLayout != null) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            ViewCompat.Api16Impl.setBackground(frameLayout, rippleDrawable);
        }
        WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api16Impl.setBackground(this, drawable);
        setDefaultFocusHighlightEnabled(z);
    }

    public final void seslSetLabelTextAppearance(int i) {
        this.mLargeLabelAppearance = i;
        this.mSmallLabelAppearance = i;
        this.smallLabel.setTextAppearance(i);
        calculateTextScaleFactors(this.smallLabel.getTextSize(), this.largeLabel.getTextSize());
        setLargeTextSize(this.mLargeLabelAppearance, this.largeLabel);
        setLargeTextSize(this.mSmallLabelAppearance, this.smallLabel);
    }

    public final void setActiveIndicatorProgress(float f, float f2) {
        float f3;
        float f4;
        View view = this.activeIndicatorView;
        if (view != null) {
            ActiveIndicatorTransform activeIndicatorTransform = this.activeIndicatorTransform;
            activeIndicatorTransform.getClass();
            TimeInterpolator timeInterpolator = AnimationUtils.LINEAR_INTERPOLATOR;
            view.setScaleX((0.6f * f) + 0.4f);
            view.setScaleY(activeIndicatorTransform.calculateScaleY(f, f2));
            if (f2 == 0.0f) {
                f3 = 0.8f;
            } else {
                f3 = 0.0f;
            }
            if (f2 == 0.0f) {
                f4 = 1.0f;
            } else {
                f4 = 0.2f;
            }
            view.setAlpha(AnimationUtils.lerp(0.0f, 1.0f, f3, f4, f));
        }
        this.activeIndicatorProgress = f;
    }

    public final void setBadge(BadgeDrawable badgeDrawable) {
        boolean z;
        boolean z2;
        BadgeDrawable badgeDrawable2 = this.badgeDrawable;
        if (badgeDrawable2 == badgeDrawable) {
            return;
        }
        boolean z3 = true;
        if (badgeDrawable2 != null) {
            z = true;
        } else {
            z = false;
        }
        if (z && this.icon != null) {
            Log.w("NavigationBar", "Multiple badges shouldn't be attached to one item.");
            ImageView imageView = this.icon;
            if (this.badgeDrawable != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                if (imageView != null) {
                    setClipChildren(true);
                    setClipToPadding(true);
                    BadgeDrawable badgeDrawable3 = this.badgeDrawable;
                    if (badgeDrawable3 != null) {
                        if (badgeDrawable3.getCustomBadgeParent() != null) {
                            badgeDrawable3.getCustomBadgeParent().setForeground(null);
                        } else {
                            imageView.getOverlay().remove(badgeDrawable3);
                        }
                    }
                }
                this.badgeDrawable = null;
            }
        }
        this.badgeDrawable = badgeDrawable;
        ImageView imageView2 = this.icon;
        if (imageView2 != null) {
            if (badgeDrawable == null) {
                z3 = false;
            }
            if (z3) {
                setClipChildren(false);
                setClipToPadding(false);
                BadgeDrawable badgeDrawable4 = this.badgeDrawable;
                Rect rect = new Rect();
                imageView2.getDrawingRect(rect);
                badgeDrawable4.setBounds(rect);
                badgeDrawable4.updateBadgeCoordinates(imageView2, null);
                if (badgeDrawable4.getCustomBadgeParent() != null) {
                    badgeDrawable4.getCustomBadgeParent().setForeground(badgeDrawable4);
                } else {
                    imageView2.getOverlay().add(badgeDrawable4);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x015f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setChecked(boolean r11) {
        /*
            Method dump skipped, instructions count: 475
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.navigation.NavigationBarItemView.setChecked(boolean):void");
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        this.smallLabel.setEnabled(z);
        this.largeLabel.setEnabled(z);
        this.icon.setEnabled(z);
        if (z) {
            PointerIconCompat systemIcon = PointerIconCompat.getSystemIcon(getContext());
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            ViewCompat.Api24Impl.setPointerIcon(this, systemIcon.mPointerIcon);
        } else {
            WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
            ViewCompat.Api24Impl.setPointerIcon(this, null);
        }
    }

    public final void setIconSize(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.icon.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        this.icon.setLayoutParams(layoutParams);
    }

    public final void setIconTintList(ColorStateList colorStateList) {
        Drawable drawable;
        this.iconTint = colorStateList;
        MenuItemImpl menuItemImpl = this.itemData;
        if ((menuItemImpl != null || this.wrappedIconDrawable != null) && menuItemImpl != null && (drawable = this.wrappedIconDrawable) != null) {
            drawable.setTintList(colorStateList);
            this.wrappedIconDrawable.invalidateSelf();
        }
    }

    public final void setItemBackground(int i) {
        Drawable drawable;
        if (i == 0) {
            drawable = null;
        } else {
            Context context = getContext();
            Object obj = ContextCompat.sLock;
            drawable = context.getDrawable(i);
        }
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        this.itemBackground = drawable;
        refreshItemBackground();
    }

    public final void setLabelVisibilityMode(int i) {
        boolean z;
        if (this.labelVisibilityMode != i) {
            this.labelVisibilityMode = i;
            if (this.activeIndicatorResizeable && i == 2) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.activeIndicatorTransform = ACTIVE_INDICATOR_UNLABELED_TRANSFORM;
            } else {
                this.activeIndicatorTransform = ACTIVE_INDICATOR_LABELED_TRANSFORM;
            }
            updateActiveIndicatorLayoutParams(getWidth());
            MenuItemImpl menuItemImpl = this.itemData;
            if (menuItemImpl != null) {
                setChecked(menuItemImpl.isChecked());
            }
        }
    }

    public final void setLargeTextSize(int i, TextView textView) {
        if (textView != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(i, R$styleable.TextAppearance);
            TypedValue peekValue = obtainStyledAttributes.peekValue(0);
            obtainStyledAttributes.recycle();
            textView.setTextSize(1, Math.min(getResources().getConfiguration().fontScale, 1.3f) * TypedValue.complexToFloat(peekValue.data));
        }
    }

    public final void setTextAppearanceActive(int i) {
        setTextAppearanceWithoutFontScaling(i, this.largeLabel);
        calculateTextScaleFactors(this.smallLabel.getTextSize(), this.largeLabel.getTextSize());
    }

    public final void setTextAppearanceInactive(int i) {
        setTextAppearanceWithoutFontScaling(i, this.smallLabel);
        calculateTextScaleFactors(this.smallLabel.getTextSize(), this.largeLabel.getTextSize());
    }

    public final void setTextColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.smallLabel.setTextColor(colorStateList);
            this.largeLabel.setTextColor(colorStateList);
        }
    }

    public final void updateActiveIndicatorLayoutParams(int i) {
        boolean z;
        int i2;
        if (this.activeIndicatorView == null) {
            return;
        }
        int min = Math.min(this.activeIndicatorDesiredWidth, i - (this.activeIndicatorMarginHorizontal * 2));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.activeIndicatorView.getLayoutParams();
        if (this.activeIndicatorResizeable && this.labelVisibilityMode == 2) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i2 = min;
        } else {
            i2 = this.activeIndicatorDesiredHeight;
        }
        layoutParams.height = i2;
        layoutParams.width = min;
        this.activeIndicatorView.setLayoutParams(layoutParams);
    }

    public NavigationBarItemView(Context context, int i) {
        this(context, null, i);
    }

    public NavigationBarItemView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, 0, i);
    }

    public NavigationBarItemView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.TAG = "NavigationBarItemView";
        this.initialized = false;
        this.activeIndicatorTransform = ACTIVE_INDICATOR_LABELED_TRANSFORM;
        this.activeIndicatorProgress = 0.0f;
        this.activeIndicatorEnabled = false;
        this.activeIndicatorDesiredWidth = 0;
        this.activeIndicatorDesiredHeight = 0;
        this.activeIndicatorResizeable = false;
        this.activeIndicatorMarginHorizontal = 0;
        this.mBadgeType = 1;
        this.mViewType = i2;
        LayoutInflater.from(context).inflate(getItemLayoutResId(), (ViewGroup) this, true);
        this.iconContainer = (FrameLayout) findViewById(com.android.systemui.R.id.navigation_bar_item_icon_container);
        this.activeIndicatorView = findViewById(com.android.systemui.R.id.navigation_bar_item_active_indicator_view);
        ImageView imageView = (ImageView) findViewById(com.android.systemui.R.id.navigation_bar_item_icon_view);
        this.icon = imageView;
        ViewGroup viewGroup = (ViewGroup) findViewById(com.android.systemui.R.id.navigation_bar_item_labels_group);
        this.labelGroup = viewGroup;
        TextView textView = (TextView) findViewById(com.android.systemui.R.id.navigation_bar_item_small_label_view);
        this.smallLabel = textView;
        TextView textView2 = (TextView) findViewById(com.android.systemui.R.id.navigation_bar_item_large_label_view);
        this.largeLabel = textView2;
        setBackgroundResource(com.android.systemui.R.drawable.mtrl_navigation_bar_item_background);
        this.itemPaddingTop = getResources().getDimensionPixelSize(com.android.systemui.R.dimen.mtrl_navigation_bar_item_default_margin);
        this.itemPaddingBottom = viewGroup.getPaddingBottom();
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api16Impl.setImportantForAccessibility(textView, 2);
        ViewCompat.Api16Impl.setImportantForAccessibility(textView2, 2);
        setFocusable(true);
        calculateTextScaleFactors(textView.getTextSize(), textView2.getTextSize());
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.material.navigation.NavigationBarItemView.1
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                    boolean z;
                    if (NavigationBarItemView.this.icon.getVisibility() == 0) {
                        NavigationBarItemView navigationBarItemView = NavigationBarItemView.this;
                        ImageView imageView2 = navigationBarItemView.icon;
                        BadgeDrawable badgeDrawable = navigationBarItemView.badgeDrawable;
                        if (badgeDrawable != null) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            Rect rect = new Rect();
                            imageView2.getDrawingRect(rect);
                            badgeDrawable.setBounds(rect);
                            badgeDrawable.updateBadgeCoordinates(imageView2, null);
                        }
                    }
                }
            });
        }
        ViewCompat.setAccessibilityDelegate(this, null);
    }
}
