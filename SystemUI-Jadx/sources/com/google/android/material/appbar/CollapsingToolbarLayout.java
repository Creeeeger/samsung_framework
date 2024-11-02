package com.google.android.material.appbar;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.reflect.os.SeslBuildReflector$SeslVersionReflector;
import com.android.systemui.R;
import com.android.systemui.coverlauncher.utils.badge.NotificationListener$$ExternalSyntheticOutline0;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import com.sec.ims.volte2.data.VolteConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class CollapsingToolbarLayout extends FrameLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final CollapsingTextHelper collapsingTextHelper;
    public final boolean collapsingTitleEnabled;
    public Drawable contentScrim;
    public int currentOffset;
    public boolean drawCollapsingTitle;
    public View dummyView;
    public final int expandedMarginBottom;
    public final int expandedMarginEnd;
    public final int expandedMarginStart;
    public final int expandedMarginTop;
    public int extraMultilineHeight;
    public final boolean extraMultilineHeightEnabled;
    public final boolean forceApplySystemWindowInsetTop;
    public WindowInsetsCompat lastInsets;
    public float mDefaultHeight;
    public final int mExtendTitleAppearance;
    public TextView mExtendedSubTitle;
    public final TextView mExtendedTitle;
    public final boolean mFadeToolbarTitle;
    public float mHeightProportion;
    public boolean mSubTitleEnabled;
    public final boolean mTitleEnabled;
    public final LinearLayout mTitleLayout;
    public final ViewStubCompat mViewStubCompat;
    public OffsetUpdateListener onOffsetChangedListener;
    public boolean refreshToolbar;
    public int scrimAlpha;
    public final long scrimAnimationDuration;
    public ValueAnimator scrimAnimator;
    public final int scrimVisibleHeightTrigger;
    public boolean scrimsAreShown;
    public Drawable statusBarScrim;
    public final Rect tmpRect;
    public ViewGroup toolbar;
    public View toolbarDirectChild;
    public final int toolbarId;
    public int topInsetApplied;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class OffsetUpdateListener implements AppBarLayout.OnOffsetChangedListener {
        public OffsetUpdateListener() {
            int i = CollapsingToolbarLayout.$r8$clinit;
            CollapsingToolbarLayout.this.updateDefaultHeight();
        }

        /* JADX WARN: Removed duplicated region for block: B:53:0x0130  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x013f  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0154  */
        /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:71:0x0135  */
        @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onOffsetChanged(com.google.android.material.appbar.AppBarLayout r12, int r13) {
            /*
                Method dump skipped, instructions count: 395
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.OffsetUpdateListener.onOffsetChanged(com.google.android.material.appbar.AppBarLayout, int):void");
        }
    }

    public CollapsingToolbarLayout(Context context) {
        this(context, null);
    }

    public static ViewOffsetHelper getViewOffsetHelper(View view) {
        ViewOffsetHelper viewOffsetHelper = (ViewOffsetHelper) view.getTag(R.id.view_offset_helper);
        if (viewOffsetHelper == null) {
            ViewOffsetHelper viewOffsetHelper2 = new ViewOffsetHelper(view);
            view.setTag(R.id.view_offset_helper, viewOffsetHelper2);
            return viewOffsetHelper2;
        }
        return viewOffsetHelper;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        LayoutParams layoutParams2;
        super.addView(view, layoutParams);
        if (this.mTitleEnabled && (layoutParams2 = (LayoutParams) view.getLayoutParams()) != null && layoutParams2.isTitleCustom) {
            TextView textView = this.mExtendedTitle;
            if (textView != null) {
                ViewParent parent = textView.getParent();
                LinearLayout linearLayout = this.mTitleLayout;
                if (parent == linearLayout) {
                    linearLayout.removeView(this.mExtendedTitle);
                }
            }
            TextView textView2 = this.mExtendedSubTitle;
            if (textView2 != null) {
                ViewParent parent2 = textView2.getParent();
                LinearLayout linearLayout2 = this.mTitleLayout;
                if (parent2 == linearLayout2) {
                    linearLayout2.removeView(this.mExtendedSubTitle);
                }
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            this.mTitleLayout.addView(view, layoutParams);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        Drawable drawable;
        super.draw(canvas);
        ensureToolbar();
        if (this.toolbar == null && (drawable = this.contentScrim) != null && this.scrimAlpha > 0) {
            drawable.mutate().setAlpha(this.scrimAlpha);
            this.contentScrim.draw(canvas);
        }
        if (this.collapsingTitleEnabled && this.drawCollapsingTitle) {
            if (this.toolbar != null && this.contentScrim != null) {
                int i2 = this.scrimAlpha;
            }
            this.collapsingTextHelper.draw(canvas);
        }
        if (this.statusBarScrim != null && this.scrimAlpha > 0) {
            WindowInsetsCompat windowInsetsCompat = this.lastInsets;
            if (windowInsetsCompat != null) {
                i = windowInsetsCompat.getSystemWindowInsetTop();
            } else {
                i = 0;
            }
            if (i > 0) {
                this.statusBarScrim.setBounds(0, -this.currentOffset, getWidth(), i - this.currentOffset);
                this.statusBarScrim.mutate().setAlpha(this.scrimAlpha);
                this.statusBarScrim.draw(canvas);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0018, code lost:
    
        r3 = true;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean drawChild(android.graphics.Canvas r6, android.view.View r7, long r8) {
        /*
            r5 = this;
            android.graphics.drawable.Drawable r0 = r5.contentScrim
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L3a
            int r3 = r5.scrimAlpha
            if (r3 <= 0) goto L3a
            android.view.View r3 = r5.toolbarDirectChild
            if (r3 == 0) goto L14
            if (r3 != r5) goto L11
            goto L14
        L11:
            if (r7 != r3) goto L1a
            goto L18
        L14:
            android.view.ViewGroup r3 = r5.toolbar
            if (r7 != r3) goto L1a
        L18:
            r3 = r1
            goto L1b
        L1a:
            r3 = r2
        L1b:
            if (r3 == 0) goto L3a
            int r3 = r5.getWidth()
            int r4 = r5.getHeight()
            r0.setBounds(r2, r2, r3, r4)
            android.graphics.drawable.Drawable r0 = r5.contentScrim
            android.graphics.drawable.Drawable r0 = r0.mutate()
            int r3 = r5.scrimAlpha
            r0.setAlpha(r3)
            android.graphics.drawable.Drawable r0 = r5.contentScrim
            r0.draw(r6)
            r0 = r1
            goto L3b
        L3a:
            r0 = r2
        L3b:
            boolean r5 = super.drawChild(r6, r7, r8)
            if (r5 != 0) goto L45
            if (r0 == 0) goto L44
            goto L45
        L44:
            r1 = r2
        L45:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.statusBarScrim;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.contentScrim;
        if (drawable2 != null && drawable2.isStateful()) {
            z |= drawable2.setState(drawableState);
        }
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (collapsingTextHelper != null) {
            z |= collapsingTextHelper.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    public final void ensureToolbar() {
        View view;
        boolean z;
        if (!this.refreshToolbar) {
            return;
        }
        ViewGroup viewGroup = null;
        this.toolbar = null;
        this.toolbarDirectChild = null;
        int i = this.toolbarId;
        if (i != -1) {
            ViewGroup viewGroup2 = (ViewGroup) findViewById(i);
            this.toolbar = viewGroup2;
            if (viewGroup2 != null) {
                ViewParent parent = viewGroup2.getParent();
                View view2 = viewGroup2;
                while (parent != this && parent != null) {
                    if (parent instanceof View) {
                        view2 = (View) parent;
                    }
                    parent = parent.getParent();
                    view2 = view2;
                }
                this.toolbarDirectChild = view2;
            }
        }
        if (this.toolbar == null) {
            int childCount = getChildCount();
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    break;
                }
                View childAt = getChildAt(i2);
                if (!(childAt instanceof Toolbar) && !(childAt instanceof android.widget.Toolbar)) {
                    z = false;
                } else {
                    z = true;
                }
                if (z) {
                    viewGroup = (ViewGroup) childAt;
                    break;
                }
                i2++;
            }
            this.toolbar = viewGroup;
            ViewStubCompat viewStubCompat = this.mViewStubCompat;
            if (viewStubCompat != null) {
                viewStubCompat.bringToFront();
                this.mViewStubCompat.invalidate();
            }
        }
        if (!this.collapsingTitleEnabled && (view = this.dummyView) != null) {
            ViewParent parent2 = view.getParent();
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(this.dummyView);
            }
        }
        if (this.collapsingTitleEnabled && this.toolbar != null) {
            if (this.dummyView == null) {
                this.dummyView = new View(getContext());
            }
            if (this.dummyView.getParent() == null) {
                this.toolbar.addView(this.dummyView, -1, -1);
            }
        }
        this.refreshToolbar = false;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            setFitsSystemWindows(ViewCompat.Api16Impl.getFitsSystemWindows(appBarLayout));
            if (this.onOffsetChangedListener == null) {
                this.onOffsetChangedListener = new OffsetUpdateListener();
            }
            appBarLayout.addOnOffsetChangedListener(this.onOffsetChangedListener);
            ViewCompat.Api20Impl.requestApplyInsets(this);
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.collapsingTitleEnabled) {
            this.collapsingTextHelper.maybeUpdateFontWeightAdjustment(configuration);
        }
        Resources resources = getResources();
        ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
        this.mHeightProportion = resources.getFloat(R.dimen.sesl_appbar_height_proportion);
        updateDefaultHeight();
        updateTitleLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        List list;
        ViewParent parent = getParent();
        OffsetUpdateListener offsetUpdateListener = this.onOffsetChangedListener;
        if (offsetUpdateListener != null && (parent instanceof AppBarLayout) && (list = ((AppBarLayout) parent).listeners) != null) {
            ((ArrayList) list).remove(offsetUpdateListener);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        if (windowInsetsCompat != null) {
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                if (!ViewCompat.Api16Impl.getFitsSystemWindows(childAt) && childAt.getTop() < systemWindowInsetTop) {
                    childAt.offsetTopAndBottom(systemWindowInsetTop);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            ViewOffsetHelper viewOffsetHelper = getViewOffsetHelper(getChildAt(i6));
            View view = viewOffsetHelper.view;
            viewOffsetHelper.layoutTop = view.getTop();
            viewOffsetHelper.layoutLeft = view.getLeft();
        }
        updateTextBounds(false, i, i2, i3, i4);
        updateTitleFromToolbarIfNeeded();
        updateScrimVisibility();
        int childCount3 = getChildCount();
        for (int i7 = 0; i7 < childCount3; i7++) {
            getViewOffsetHelper(getChildAt(i7)).applyOffsets();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int measuredHeight;
        int measuredHeight2;
        ensureToolbar();
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        if (windowInsetsCompat != null) {
            i3 = windowInsetsCompat.getSystemWindowInsetTop();
        } else {
            i3 = 0;
        }
        if ((mode == 0 || this.forceApplySystemWindowInsetTop) && i3 > 0) {
            this.topInsetApplied = i3;
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + i3, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS));
        }
        if (this.extraMultilineHeightEnabled && this.collapsingTitleEnabled && this.collapsingTextHelper.maxLines > 1) {
            updateTitleFromToolbarIfNeeded();
            updateTextBounds(true, 0, 0, getMeasuredWidth(), getMeasuredHeight());
            CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
            int i4 = collapsingTextHelper.expandedLineCount;
            if (i4 > 1) {
                TextPaint textPaint = collapsingTextHelper.tmpPaint;
                textPaint.setTextSize(collapsingTextHelper.expandedTextSize);
                textPaint.setTypeface(collapsingTextHelper.expandedTypeface);
                textPaint.setLetterSpacing(collapsingTextHelper.expandedLetterSpacing);
                int i5 = i4 - 1;
                this.extraMultilineHeight = i5 * Math.round(textPaint.descent() + (-textPaint.ascent()));
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + this.extraMultilineHeight, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS));
            }
        }
        ViewGroup viewGroup = this.toolbar;
        if (viewGroup != null) {
            View view = this.toolbarDirectChild;
            if (view != null && view != this) {
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    measuredHeight2 = view.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                } else {
                    measuredHeight2 = view.getMeasuredHeight();
                }
                setMinimumHeight(measuredHeight2);
                return;
            }
            ViewGroup.LayoutParams layoutParams2 = viewGroup.getLayoutParams();
            if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                measuredHeight = viewGroup.getMeasuredHeight() + marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin;
            } else {
                measuredHeight = viewGroup.getMeasuredHeight();
            }
            setMinimumHeight(measuredHeight);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.contentScrim;
        if (drawable != null) {
            drawable.setBounds(0, 0, i, i2);
        }
    }

    public final void setTitle(CharSequence charSequence) {
        CharSequence text;
        if (this.collapsingTitleEnabled) {
            CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
            if (charSequence == null || !TextUtils.equals(collapsingTextHelper.text, charSequence)) {
                collapsingTextHelper.text = charSequence;
                collapsingTextHelper.textToDraw = null;
                Bitmap bitmap = collapsingTextHelper.expandedTitleTexture;
                if (bitmap != null) {
                    bitmap.recycle();
                    collapsingTextHelper.expandedTitleTexture = null;
                }
                collapsingTextHelper.recalculate(false);
            }
            if (this.collapsingTitleEnabled) {
                text = this.collapsingTextHelper.text;
            } else {
                text = this.mExtendedTitle.getText();
            }
            setContentDescription(text);
        } else {
            TextView textView = this.mExtendedTitle;
            if (textView != null) {
                textView.setText(charSequence);
            }
        }
        updateTitleLayout();
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        boolean z;
        super.setVisibility(i);
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        Drawable drawable = this.statusBarScrim;
        if (drawable != null && drawable.isVisible() != z) {
            this.statusBarScrim.setVisible(z, false);
        }
        Drawable drawable2 = this.contentScrim;
        if (drawable2 != null && drawable2.isVisible() != z) {
            this.contentScrim.setVisible(z, false);
        }
    }

    public final void updateDefaultHeight() {
        if (getParent() instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) getParent();
            if (appBarLayout.mUseCollapsedHeight) {
                this.mDefaultHeight = appBarLayout.seslGetCollapsedHeight();
                return;
            } else {
                this.mDefaultHeight = getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_height_with_padding);
                return;
            }
        }
        this.mDefaultHeight = getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_height_with_padding);
    }

    public final void updateScrimVisibility() {
        int i;
        int height;
        boolean z;
        ViewGroup viewGroup;
        TimeInterpolator timeInterpolator;
        if (this.contentScrim != null || this.statusBarScrim != null) {
            int height2 = getHeight() + this.currentOffset;
            int i2 = this.scrimVisibleHeightTrigger;
            int i3 = 0;
            if (i2 >= 0) {
                height = i2 + this.topInsetApplied + this.extraMultilineHeight;
            } else {
                WindowInsetsCompat windowInsetsCompat = this.lastInsets;
                if (windowInsetsCompat != null) {
                    i = windowInsetsCompat.getSystemWindowInsetTop();
                } else {
                    i = 0;
                }
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                int minimumHeight = ViewCompat.Api16Impl.getMinimumHeight(this);
                if (minimumHeight > 0) {
                    height = Math.min((minimumHeight * 2) + i, getHeight());
                } else {
                    height = getHeight() / 3;
                }
            }
            boolean z2 = true;
            if (height2 < height) {
                z = true;
            } else {
                z = false;
            }
            WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
            if (!ViewCompat.Api19Impl.isLaidOut(this) || isInEditMode()) {
                z2 = false;
            }
            if (this.scrimsAreShown != z) {
                if (z2) {
                    if (z) {
                        i3 = 255;
                    }
                    ensureToolbar();
                    ValueAnimator valueAnimator = this.scrimAnimator;
                    if (valueAnimator == null) {
                        ValueAnimator valueAnimator2 = new ValueAnimator();
                        this.scrimAnimator = valueAnimator2;
                        if (i3 > this.scrimAlpha) {
                            timeInterpolator = AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR;
                        } else {
                            timeInterpolator = AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR;
                        }
                        valueAnimator2.setInterpolator(timeInterpolator);
                        this.scrimAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.CollapsingToolbarLayout.2
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                                ViewGroup viewGroup2;
                                CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
                                int intValue = ((Integer) valueAnimator3.getAnimatedValue()).intValue();
                                if (intValue != collapsingToolbarLayout.scrimAlpha) {
                                    if (collapsingToolbarLayout.contentScrim != null && (viewGroup2 = collapsingToolbarLayout.toolbar) != null) {
                                        WeakHashMap weakHashMap3 = ViewCompat.sViewPropertyAnimatorMap;
                                        ViewCompat.Api16Impl.postInvalidateOnAnimation(viewGroup2);
                                    }
                                    collapsingToolbarLayout.scrimAlpha = intValue;
                                    WeakHashMap weakHashMap4 = ViewCompat.sViewPropertyAnimatorMap;
                                    ViewCompat.Api16Impl.postInvalidateOnAnimation(collapsingToolbarLayout);
                                }
                            }
                        });
                    } else if (valueAnimator.isRunning()) {
                        this.scrimAnimator.cancel();
                    }
                    this.scrimAnimator.setDuration(this.scrimAnimationDuration);
                    this.scrimAnimator.setIntValues(this.scrimAlpha, i3);
                    this.scrimAnimator.start();
                } else {
                    if (z) {
                        i3 = 255;
                    }
                    if (i3 != this.scrimAlpha) {
                        if (this.contentScrim != null && (viewGroup = this.toolbar) != null) {
                            ViewCompat.Api16Impl.postInvalidateOnAnimation(viewGroup);
                        }
                        this.scrimAlpha = i3;
                        ViewCompat.Api16Impl.postInvalidateOnAnimation(this);
                    }
                }
                this.scrimsAreShown = z;
            }
        }
    }

    public final void updateTextBounds(boolean z, int i, int i2, int i3, int i4) {
        View view;
        boolean z2;
        boolean z3;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z4;
        int i10;
        int i11;
        if (this.collapsingTitleEnabled && (view = this.dummyView) != null) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            boolean z5 = false;
            if (ViewCompat.Api19Impl.isAttachedToWindow(view) && this.dummyView.getVisibility() == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.drawCollapsingTitle = z2;
            if (z2 || z) {
                if (ViewCompat.Api17Impl.getLayoutDirection(this) == 1) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                View view2 = this.toolbarDirectChild;
                if (view2 == null) {
                    view2 = this.toolbar;
                }
                int height = ((getHeight() - getViewOffsetHelper(view2).layoutTop) - view2.getHeight()) - ((FrameLayout.LayoutParams) ((LayoutParams) view2.getLayoutParams())).bottomMargin;
                DescendantOffsetUtils.getDescendantRect(this, this.dummyView, this.tmpRect);
                ViewGroup viewGroup = this.toolbar;
                if (viewGroup instanceof Toolbar) {
                    Toolbar toolbar = (Toolbar) viewGroup;
                    i6 = toolbar.mTitleMarginStart;
                    i7 = toolbar.mTitleMarginEnd;
                    i8 = toolbar.mTitleMarginTop;
                    i5 = toolbar.mTitleMarginBottom;
                } else if (viewGroup instanceof android.widget.Toolbar) {
                    android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup;
                    i6 = toolbar2.getTitleMarginStart();
                    i7 = toolbar2.getTitleMarginEnd();
                    i8 = toolbar2.getTitleMarginTop();
                    i5 = toolbar2.getTitleMarginBottom();
                } else {
                    i5 = 0;
                    i6 = 0;
                    i7 = 0;
                    i8 = 0;
                }
                CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
                Rect rect = this.tmpRect;
                int i12 = rect.left;
                if (z3) {
                    i9 = i7;
                } else {
                    i9 = i6;
                }
                int i13 = i12 + i9;
                int i14 = rect.top + height + i8;
                int i15 = rect.right;
                if (!z3) {
                    i6 = i7;
                }
                int i16 = i15 - i6;
                int i17 = (rect.bottom + height) - i5;
                Rect rect2 = collapsingTextHelper.collapsedBounds;
                if (rect2.left == i13 && rect2.top == i14 && rect2.right == i16 && rect2.bottom == i17) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (!z4) {
                    rect2.set(i13, i14, i16, i17);
                    collapsingTextHelper.boundsChanged = true;
                }
                CollapsingTextHelper collapsingTextHelper2 = this.collapsingTextHelper;
                if (z3) {
                    i10 = this.expandedMarginEnd;
                } else {
                    i10 = this.expandedMarginStart;
                }
                int i18 = this.tmpRect.top + this.expandedMarginTop;
                int i19 = i3 - i;
                if (z3) {
                    i11 = this.expandedMarginStart;
                } else {
                    i11 = this.expandedMarginEnd;
                }
                int i20 = i19 - i11;
                int i21 = (i4 - i2) - this.expandedMarginBottom;
                Rect rect3 = collapsingTextHelper2.expandedBounds;
                if (rect3.left == i10 && rect3.top == i18 && rect3.right == i20 && rect3.bottom == i21) {
                    z5 = true;
                }
                if (!z5) {
                    rect3.set(i10, i18, i20, i21);
                    collapsingTextHelper2.boundsChanged = true;
                }
                this.collapsingTextHelper.recalculate(z);
            }
        }
    }

    public final void updateTitleFromToolbarIfNeeded() {
        CharSequence charSequence;
        if (this.toolbar != null && this.collapsingTitleEnabled && TextUtils.isEmpty(this.collapsingTextHelper.text)) {
            ViewGroup viewGroup = this.toolbar;
            if (viewGroup instanceof Toolbar) {
                charSequence = ((Toolbar) viewGroup).mTitleText;
            } else if (viewGroup instanceof android.widget.Toolbar) {
                charSequence = ((android.widget.Toolbar) viewGroup).getTitle();
            } else {
                charSequence = null;
            }
            setTitle(charSequence);
        }
    }

    public final void updateTitleLayout() {
        Resources resources = getResources();
        ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
        this.mHeightProportion = resources.getFloat(R.dimen.sesl_appbar_height_proportion);
        if (this.mTitleEnabled) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(this.mExtendTitleAppearance, R$styleable.TextAppearance);
            int i = 0;
            TypedValue peekValue = obtainStyledAttributes.peekValue(0);
            if (peekValue == null) {
                Log.i("Sesl_CTL", "ExtendTitleAppearance value is null");
                obtainStyledAttributes.recycle();
                return;
            }
            float complexToFloat = TypedValue.complexToFloat(peekValue.data);
            float min = Math.min(resources.getConfiguration().fontScale, 1.0f);
            obtainStyledAttributes.recycle();
            StringBuilder sb = new StringBuilder("updateTitleLayout : context : ");
            sb.append(getContext());
            sb.append(", textSize : ");
            sb.append(complexToFloat);
            sb.append(", fontScale : ");
            sb.append(min);
            sb.append(", mSubTitleEnabled : ");
            NotificationListener$$ExternalSyntheticOutline0.m(sb, this.mSubTitleEnabled, "Sesl_CTL");
            if (!this.mSubTitleEnabled) {
                this.mExtendedTitle.setTextSize(1, complexToFloat * min);
            } else {
                this.mExtendedTitle.setTextSize(0, resources.getDimensionPixelSize(R.dimen.sesl_appbar_extended_title_text_size_with_subtitle));
                TextView textView = this.mExtendedSubTitle;
                if (textView != null) {
                    textView.setTextSize(0, resources.getDimensionPixelSize(R.dimen.sesl_appbar_extended_subtitle_text_size));
                }
            }
            if (Math.abs(this.mHeightProportion - 0.3f) < 1.0E-5f) {
                if (this.mSubTitleEnabled) {
                    this.mExtendedTitle.setSingleLine(true);
                    this.mExtendedTitle.setMaxLines(1);
                } else {
                    this.mExtendedTitle.setSingleLine(false);
                    this.mExtendedTitle.setMaxLines(2);
                }
            } else {
                this.mExtendedTitle.setSingleLine(false);
                this.mExtendedTitle.setMaxLines(2);
            }
            int maxLines = this.mExtendedTitle.getMaxLines();
            if (SeslBuildReflector$SeslVersionReflector.getField_SEM_PLATFORM_INT() >= 120000) {
                if (maxLines > 1) {
                    try {
                        int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
                        if (identifier > 0) {
                            i = getResources().getDimensionPixelOffset(identifier);
                        }
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mTitleLayout.getLayoutParams();
                        if (this.mSubTitleEnabled && i > 0) {
                            layoutParams.bottomMargin = ((i / i) / 2) + getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_top_padding);
                        } else if (i > 0) {
                            layoutParams.bottomMargin = i / 2;
                        }
                        this.mTitleLayout.setLayoutParams(layoutParams);
                        return;
                    } catch (Exception e) {
                        Log.e("Sesl_CTL", Log.getStackTraceString(e));
                        return;
                    }
                }
                this.mExtendedTitle.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                this.mExtendedTitle.setAutoSizeTextTypeWithDefaults(0);
                this.mExtendedTitle.setTextSize(0, resources.getDimensionPixelSize(R.dimen.sesl_appbar_extended_title_text_size_with_subtitle));
            }
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        if (!super.verifyDrawable(drawable) && drawable != this.contentScrim && drawable != this.statusBarScrim) {
            return false;
        }
        return true;
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.collapsingToolbarLayoutStyle);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v34 */
    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, 2132018816), attributeSet, i);
        int i2;
        ?? r3;
        int i3;
        int i4;
        boolean z;
        ColorStateList colorStateList;
        TextUtils.TruncateAt truncateAt;
        int i5;
        this.refreshToolbar = true;
        this.tmpRect = new Rect();
        this.scrimVisibleHeightTrigger = -1;
        this.topInsetApplied = 0;
        this.extraMultilineHeight = 0;
        this.mFadeToolbarTitle = true;
        Context context2 = getContext();
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, com.google.android.material.R$styleable.CollapsingToolbarLayout, i, 2132018816, new int[0]);
        boolean z2 = obtainStyledAttributes.getBoolean(24, false);
        this.collapsingTitleEnabled = z2;
        boolean z3 = obtainStyledAttributes.getBoolean(13, true);
        this.mTitleEnabled = z3;
        if (z2 == z3 && z2) {
            this.collapsingTitleEnabled = false;
        }
        CollapsingTextHelper collapsingTextHelper = new CollapsingTextHelper(this);
        this.collapsingTextHelper = collapsingTextHelper;
        if (this.collapsingTitleEnabled) {
            collapsingTextHelper.textSizeInterpolator = AnimationUtils.DECELERATE_INTERPOLATOR;
            collapsingTextHelper.recalculate(false);
            collapsingTextHelper.isRtlTextDirectionHeuristicsEnabled = false;
            int i6 = obtainStyledAttributes.getInt(4, 8388691);
            if (collapsingTextHelper.expandedTextGravity != i6) {
                collapsingTextHelper.expandedTextGravity = i6;
                collapsingTextHelper.recalculate(false);
            }
            int i7 = obtainStyledAttributes.getInt(0, 8388627);
            if (collapsingTextHelper.collapsedTextGravity != i7) {
                collapsingTextHelper.collapsedTextGravity = i7;
                collapsingTextHelper.recalculate(false);
            }
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(5, 0);
            this.expandedMarginBottom = dimensionPixelSize;
            this.expandedMarginEnd = dimensionPixelSize;
            this.expandedMarginTop = dimensionPixelSize;
            this.expandedMarginStart = dimensionPixelSize;
        }
        new ElevationOverlayProvider(context2);
        this.mExtendTitleAppearance = obtainStyledAttributes.getResourceId(14, 0);
        int resourceId = obtainStyledAttributes.getResourceId(12, 0);
        if (obtainStyledAttributes.hasValue(10)) {
            this.mExtendTitleAppearance = obtainStyledAttributes.getResourceId(10, 0);
        }
        CharSequence text = obtainStyledAttributes.getText(21);
        this.mSubTitleEnabled = z3 && !TextUtils.isEmpty(text);
        LinearLayout linearLayout = new LinearLayout(context2);
        linearLayout.setId(R.id.collapsing_appbar_title_layout_parent);
        linearLayout.setBackgroundColor(0);
        addView(linearLayout, new FrameLayout.LayoutParams(-1, -1, 17));
        LinearLayout linearLayout2 = new LinearLayout(context2);
        this.mTitleLayout = linearLayout2;
        linearLayout2.setId(R.id.collapsing_appbar_title_layout);
        linearLayout2.setBackgroundColor(0);
        linearLayout2.setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2, 16.0f);
        layoutParams.gravity = 16;
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelOffset = identifier > 0 ? getResources().getDimensionPixelOffset(identifier) : 0;
        if (dimensionPixelOffset > 0) {
            layoutParams.bottomMargin = dimensionPixelOffset / 2;
        }
        linearLayout.addView(linearLayout2, layoutParams);
        if (z3) {
            TextView textView = new TextView(context2);
            this.mExtendedTitle = textView;
            textView.setId(R.id.collapsing_appbar_extended_title);
            textView.setHyphenationFrequency(1);
            linearLayout2.addView(textView);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setGravity(17);
            textView.setTextAppearance(getContext(), this.mExtendTitleAppearance);
            int dimension = (int) getResources().getDimension(R.dimen.sesl_appbar_extended_title_padding);
            textView.setPadding(dimension, 0, dimension, 0);
            textView.setLineSpacing(getResources().getDimension(R.dimen.sesl_appbar_extended_title_extra_line_space), 1.0f);
        }
        if (this.mSubTitleEnabled) {
            if (z3 && !TextUtils.isEmpty(text)) {
                this.mSubTitleEnabled = true;
                TextView textView2 = this.mExtendedSubTitle;
                if (textView2 == null) {
                    TextView textView3 = new TextView(getContext());
                    this.mExtendedSubTitle = textView3;
                    textView3.setId(R.id.collapsing_appbar_extended_subtitle);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    this.mExtendedSubTitle.setText(text);
                    layoutParams2.gravity = 1;
                    linearLayout2.addView(this.mExtendedSubTitle, layoutParams2);
                    this.mExtendedSubTitle.setSingleLine(false);
                    this.mExtendedSubTitle.setMaxLines(1);
                    this.mExtendedSubTitle.setEllipsize(TextUtils.TruncateAt.END);
                    this.mExtendedSubTitle.setGravity(1);
                    this.mExtendedSubTitle.setTextAppearance(getContext(), resourceId);
                    int dimension2 = (int) getResources().getDimension(R.dimen.sesl_appbar_extended_title_padding);
                    i5 = 0;
                    this.mExtendedSubTitle.setPadding(dimension2, 0, dimension2, 0);
                } else {
                    i5 = 0;
                    textView2.setText(text);
                }
                TextView textView4 = this.mExtendedTitle;
                if (textView4 != null) {
                    textView4.setTextSize(i5, getContext().getResources().getDimensionPixelSize(R.dimen.sesl_appbar_extended_title_text_size_with_subtitle));
                }
            } else {
                this.mSubTitleEnabled = false;
                TextView textView5 = this.mExtendedSubTitle;
                if (textView5 != null) {
                    ((ViewGroup) textView5.getParent()).removeView(this.mExtendedSubTitle);
                    this.mExtendedSubTitle = null;
                }
            }
            updateTitleLayout();
            requestLayout();
        }
        updateDefaultHeight();
        updateTitleLayout();
        if (obtainStyledAttributes.hasValue(8)) {
            i2 = 0;
            this.expandedMarginStart = obtainStyledAttributes.getDimensionPixelSize(8, 0);
        } else {
            i2 = 0;
        }
        if (obtainStyledAttributes.hasValue(7)) {
            this.expandedMarginEnd = obtainStyledAttributes.getDimensionPixelSize(7, i2);
        }
        if (obtainStyledAttributes.hasValue(9)) {
            this.expandedMarginTop = obtainStyledAttributes.getDimensionPixelSize(9, i2);
        }
        if (obtainStyledAttributes.hasValue(6)) {
            this.expandedMarginBottom = obtainStyledAttributes.getDimensionPixelSize(6, i2);
        }
        setTitle(obtainStyledAttributes.getText(22));
        if (this.collapsingTitleEnabled) {
            collapsingTextHelper.setExpandedTextAppearance(2132018126);
            collapsingTextHelper.setCollapsedTextAppearance(2132018068);
            if (obtainStyledAttributes.hasValue(10)) {
                i4 = 0;
                collapsingTextHelper.setExpandedTextAppearance(obtainStyledAttributes.getResourceId(10, 0));
            } else {
                i4 = 0;
            }
            if (obtainStyledAttributes.hasValue(1)) {
                collapsingTextHelper.setCollapsedTextAppearance(obtainStyledAttributes.getResourceId(1, i4));
            }
            if (obtainStyledAttributes.hasValue(26)) {
                int i8 = obtainStyledAttributes.getInt(26, -1);
                if (i8 == 0) {
                    truncateAt = TextUtils.TruncateAt.START;
                } else if (i8 == 1) {
                    truncateAt = TextUtils.TruncateAt.MIDDLE;
                } else if (i8 != 3) {
                    truncateAt = TextUtils.TruncateAt.END;
                } else {
                    truncateAt = TextUtils.TruncateAt.MARQUEE;
                }
                collapsingTextHelper.titleTextEllipsize = truncateAt;
                z = false;
                collapsingTextHelper.recalculate(false);
            } else {
                z = false;
            }
            if (obtainStyledAttributes.hasValue(11) && collapsingTextHelper.expandedTextColor != (colorStateList = MaterialResources.getColorStateList(context2, obtainStyledAttributes, 11))) {
                collapsingTextHelper.expandedTextColor = colorStateList;
                collapsingTextHelper.recalculate(z);
            }
            if (obtainStyledAttributes.hasValue(2)) {
                collapsingTextHelper.setCollapsedTextColor(MaterialResources.getColorStateList(context2, obtainStyledAttributes, 2));
            }
        }
        this.scrimVisibleHeightTrigger = obtainStyledAttributes.getDimensionPixelSize(19, -1);
        if (!obtainStyledAttributes.hasValue(17) || (i3 = obtainStyledAttributes.getInt(17, 1)) == collapsingTextHelper.maxLines) {
            r3 = 0;
        } else {
            collapsingTextHelper.maxLines = i3;
            Bitmap bitmap = collapsingTextHelper.expandedTitleTexture;
            if (bitmap != null) {
                bitmap.recycle();
                collapsingTextHelper.expandedTitleTexture = null;
            }
            r3 = 0;
            collapsingTextHelper.recalculate(false);
        }
        if (obtainStyledAttributes.hasValue(25)) {
            collapsingTextHelper.positionInterpolator = android.view.animation.AnimationUtils.loadInterpolator(context2, obtainStyledAttributes.getResourceId(25, r3));
            collapsingTextHelper.recalculate(r3);
        }
        this.scrimAnimationDuration = obtainStyledAttributes.getInt(18, VolteConstants.ErrorCode.BUSY_EVERYWHERE);
        Drawable drawable = obtainStyledAttributes.getDrawable(3);
        Drawable drawable2 = this.contentScrim;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.contentScrim = mutate;
            if (mutate != null) {
                mutate.setBounds(0, 0, getWidth(), getHeight());
                this.contentScrim.setCallback(this);
                this.contentScrim.setAlpha(this.scrimAlpha);
            }
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            ViewCompat.Api16Impl.postInvalidateOnAnimation(this);
        }
        Drawable drawable3 = obtainStyledAttributes.getDrawable(20);
        Drawable drawable4 = this.statusBarScrim;
        if (drawable4 != drawable3) {
            if (drawable4 != null) {
                drawable4.setCallback(null);
            }
            Drawable mutate2 = drawable3 != null ? drawable3.mutate() : null;
            this.statusBarScrim = mutate2;
            if (mutate2 != null) {
                if (mutate2.isStateful()) {
                    this.statusBarScrim.setState(getDrawableState());
                }
                Drawable drawable5 = this.statusBarScrim;
                WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                drawable5.setLayoutDirection(ViewCompat.Api17Impl.getLayoutDirection(this));
                this.statusBarScrim.setVisible(getVisibility() == 0, false);
                this.statusBarScrim.setCallback(this);
                this.statusBarScrim.setAlpha(this.scrimAlpha);
            }
            WeakHashMap weakHashMap3 = ViewCompat.sViewPropertyAnimatorMap;
            ViewCompat.Api16Impl.postInvalidateOnAnimation(this);
        }
        this.toolbarId = obtainStyledAttributes.getResourceId(27, -1);
        this.forceApplySystemWindowInsetTop = obtainStyledAttributes.getBoolean(16, false);
        this.extraMultilineHeightEnabled = obtainStyledAttributes.getBoolean(15, false);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(R$styleable.AppCompatTheme);
        if (!obtainStyledAttributes2.getBoolean(147, false)) {
            LayoutInflater.from(context2).inflate(R.layout.sesl_material_action_mode_view_stub, (ViewGroup) this, true);
            this.mViewStubCompat = (ViewStubCompat) findViewById(R.id.action_mode_bar_stub);
        }
        obtainStyledAttributes2.recycle();
        setWillNotDraw(false);
        OnApplyWindowInsetsListener onApplyWindowInsetsListener = new OnApplyWindowInsetsListener() { // from class: com.google.android.material.appbar.CollapsingToolbarLayout.1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                WindowInsetsCompat windowInsetsCompat2;
                CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
                collapsingToolbarLayout.getClass();
                WeakHashMap weakHashMap4 = ViewCompat.sViewPropertyAnimatorMap;
                if (ViewCompat.Api16Impl.getFitsSystemWindows(collapsingToolbarLayout)) {
                    windowInsetsCompat2 = windowInsetsCompat;
                } else {
                    windowInsetsCompat2 = null;
                }
                if (!Objects.equals(collapsingToolbarLayout.lastInsets, windowInsetsCompat2)) {
                    collapsingToolbarLayout.lastInsets = windowInsetsCompat2;
                    collapsingToolbarLayout.requestLayout();
                }
                return windowInsetsCompat.mImpl.consumeSystemWindowInsets();
            }
        };
        WeakHashMap weakHashMap4 = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(this, onApplyWindowInsetsListener);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static class LayoutParams extends FrameLayout.LayoutParams {
        public final int collapseMode;
        public final boolean isTitleCustom;
        public float parallaxMult;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.google.android.material.R$styleable.CollapsingToolbarLayout_Layout);
            this.collapseMode = obtainStyledAttributes.getInt(1, 0);
            this.parallaxMult = obtainStyledAttributes.getFloat(2, 0.5f);
            this.isTitleCustom = obtainStyledAttributes.getBoolean(0, false);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2, i3);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
        }

        public LayoutParams(FrameLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((FrameLayout.LayoutParams) layoutParams);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
            this.collapseMode = layoutParams.collapseMode;
            this.parallaxMult = layoutParams.parallaxMult;
        }
    }
}
