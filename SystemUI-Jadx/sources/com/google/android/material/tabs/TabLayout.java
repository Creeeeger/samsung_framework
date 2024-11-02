package com.google.android.material.tabs;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.animation.SeslAnimationUtils;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.util.SeslMisc;
import androidx.core.util.Pools$SimplePool;
import androidx.core.util.Pools$SynchronizedPool;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.reflect.SeslBaseReflector;
import androidx.reflect.widget.SeslHorizontalScrollViewReflector;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.android.systemui.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeUtils;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@ViewPager.DecorView
/* loaded from: classes2.dex */
public class TabLayout extends HorizontalScrollView {
    public static final Pools$SynchronizedPool tabPool = new Pools$SynchronizedPool(16);
    public AdapterChangeListener adapterChangeListener;
    public ViewPagerOnTabSelectedListener currentVpSelectedListener;
    public final boolean inlineLabel;
    public final Typeface mBoldTypeface;
    public int mCurrentTouchSlop;
    public final int mDefaultTouchSlop;
    public int mDepthStyle;
    public final int mFirstTabGravity;
    public final int mIconTextGap;
    public boolean mIsOverScreen;
    public final boolean mIsScaledTextSizeType;
    public int mMaxTouchSlop;
    public final Typeface mNormalTypeface;
    public int mOverScreenMaxWidth;
    public final int mRequestedTabWidth;
    public final int mSubTabIndicator2ndHeight;
    public final int mSubTabIndicatorHeight;
    public final int mSubTabSelectedIndicatorColor;
    public final int mSubTabSubTextAppearance;
    public final ColorStateList mSubTabSubTextColors;
    public final int mSubTabTextSize;
    public final int mTabMinSideSpace;
    public int mTabSelectedIndicatorColor;
    public final int mode;
    public TabLayoutOnPageChangeListener pageChangeListener;
    public PagerAdapter pagerAdapter;
    public PagerAdapterObserver pagerAdapterObserver;
    public final int requestedTabMaxWidth;
    public final int requestedTabMinWidth;
    public ValueAnimator scrollAnimator;
    public final ArrayList selectedListeners;
    public Tab selectedTab;
    public boolean setupViewPagerImplicitly;
    public final SlidingTabIndicator slidingTabIndicator;
    public final int tabBackgroundResId;
    public int tabGravity;
    public final ColorStateList tabIconTint;
    public final PorterDuff.Mode tabIconTintMode;
    public final int tabIndicatorAnimationDuration;
    public boolean tabIndicatorFullWidth;
    public int tabIndicatorGravity;
    public TabIndicatorInterpolator tabIndicatorInterpolator;
    public int tabMaxWidth;
    public final int tabPaddingBottom;
    public final int tabPaddingTop;
    public final ColorStateList tabRippleColorStateList;
    public Drawable tabSelectedIndicator;
    public final int tabTextAppearance;
    public ColorStateList tabTextColors;
    public final float tabTextMultiLineSize;
    public final float tabTextSize;
    public final Pools$SimplePool tabViewPool;
    public final ArrayList tabs;
    public ViewPager viewPager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class AdapterChangeListener implements ViewPager.OnAdapterChangeListener {
        public boolean autoRefresh;

        public AdapterChangeListener() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        public final void onAdapterChanged(ViewPager viewPager, PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.viewPager == viewPager) {
                tabLayout.setPagerAdapter(pagerAdapter2, this.autoRefresh);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface BaseOnTabSelectedListener {
        void onTabReselected();

        void onTabSelected(Tab tab);

        void onTabUnselected();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface OnTabSelectedListener extends BaseOnTabSelectedListener {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PagerAdapterObserver extends DataSetObserver {
        public PagerAdapterObserver() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            TabLayout.this.populateFromPagerAdapter();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            TabLayout.this.populateFromPagerAdapter();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SlidingTabIndicator extends LinearLayout {
        public static final /* synthetic */ int $r8$clinit = 0;

        public SlidingTabIndicator(Context context) {
            super(context);
            setWillNotDraw(false);
        }

        @Override // android.view.View
        public final void draw(Canvas canvas) {
            super.draw(canvas);
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onMeasure(int i, int i2) {
            int size;
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            int i3 = tabLayout.mode;
            int i4 = 0;
            boolean z = true;
            if (i3 != 11 && i3 != 12) {
                if (tabLayout.tabGravity == 1 || i3 == 2 || tabLayout.mFirstTabGravity == 1) {
                    int childCount = getChildCount();
                    TabLayout tabLayout2 = TabLayout.this;
                    if (tabLayout2.tabGravity == 0 && tabLayout2.mFirstTabGravity == 1) {
                        for (int i5 = 0; i5 < childCount; i5++) {
                            View childAt = getChildAt(i5);
                            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
                            layoutParams.width = -2;
                            layoutParams.weight = 0.0f;
                            childAt.measure(View.MeasureSpec.makeMeasureSpec(0, 0), i2);
                        }
                    }
                    int i6 = 0;
                    for (int i7 = 0; i7 < childCount; i7++) {
                        View childAt2 = getChildAt(i7);
                        if (childAt2.getVisibility() == 0) {
                            i6 = Math.max(i6, childAt2.getMeasuredWidth());
                        }
                    }
                    if (i6 <= 0) {
                        return;
                    }
                    if (i6 * childCount <= getMeasuredWidth() - (((int) ViewUtils.dpToPx(16, getContext())) * 2)) {
                        boolean z2 = false;
                        while (i4 < childCount) {
                            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) getChildAt(i4).getLayoutParams();
                            if (layoutParams2.width != i6 || layoutParams2.weight != 0.0f) {
                                layoutParams2.width = i6;
                                layoutParams2.weight = 0.0f;
                                z2 = true;
                            }
                            i4++;
                        }
                        TabLayout tabLayout3 = TabLayout.this;
                        if (tabLayout3.tabGravity == 0 && tabLayout3.mFirstTabGravity == 1) {
                            tabLayout3.tabGravity = 1;
                        }
                        z = z2;
                    } else {
                        TabLayout tabLayout4 = TabLayout.this;
                        tabLayout4.tabGravity = 0;
                        tabLayout4.updateTabViews(false);
                    }
                    if (z) {
                        super.onMeasure(i, i2);
                        return;
                    }
                    return;
                }
                return;
            }
            tabLayout.checkOverScreen();
            TabLayout tabLayout5 = TabLayout.this;
            if (tabLayout5.mIsOverScreen) {
                size = tabLayout5.mOverScreenMaxWidth;
            } else {
                size = View.MeasureSpec.getSize(i);
            }
            int childCount2 = getChildCount();
            int[] iArr = new int[childCount2];
            int i8 = 0;
            for (int i9 = 0; i9 < childCount2; i9++) {
                View childAt3 = getChildAt(i9);
                if (childAt3.getVisibility() == 0) {
                    childAt3.measure(View.MeasureSpec.makeMeasureSpec(TabLayout.this.tabMaxWidth, 0), i2);
                    int measuredWidth = (TabLayout.this.mTabMinSideSpace * 2) + childAt3.getMeasuredWidth();
                    iArr[i9] = measuredWidth;
                    i8 += measuredWidth;
                }
            }
            int i10 = size / childCount2;
            if (i8 > size) {
                while (i4 < childCount2) {
                    ((LinearLayout.LayoutParams) getChildAt(i4).getLayoutParams()).width = iArr[i4];
                    i4++;
                }
            } else {
                if (TabLayout.this.mode == 11) {
                    int i11 = 0;
                    while (true) {
                        if (i11 < childCount2) {
                            if (iArr[i11] > i10) {
                                break;
                            } else {
                                i11++;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                }
                if (z) {
                    int i12 = (size - i8) / childCount2;
                    while (i4 < childCount2) {
                        ((LinearLayout.LayoutParams) getChildAt(i4).getLayoutParams()).width = iArr[i4] + i12;
                        i4++;
                    }
                } else {
                    while (i4 < childCount2) {
                        ((LinearLayout.LayoutParams) getChildAt(i4).getLayoutParams()).width = i10;
                        i4++;
                    }
                }
            }
            if (i8 > size) {
                size = i8;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS), i2);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Tab {
        public CharSequence contentDesc;
        public View customView;
        public Drawable icon;
        public TabLayout parent;
        public CharSequence subText;
        public CharSequence text;
        public TabView view;
        public int position = -1;
        public final int labelVisibilityMode = 1;
        public int id = -1;

        public final void select() {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                tabLayout.selectTab(this, true);
                return;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TabLayoutOnPageChangeListener implements ViewPager.OnPageChangeListener {
        public int previousScrollState;
        public int scrollState;
        public final WeakReference tabLayoutRef;

        public TabLayoutOnPageChangeListener(TabLayout tabLayout) {
            this.tabLayoutRef = new WeakReference(tabLayout);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void onPageScrollStateChanged(int i) {
            this.previousScrollState = this.scrollState;
            this.scrollState = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void onPageScrolled(float f, int i, int i2) {
            boolean z;
            TabLayout tabLayout = (TabLayout) this.tabLayoutRef.get();
            if (tabLayout != null) {
                int i3 = this.scrollState;
                boolean z2 = false;
                if (i3 == 2 && this.previousScrollState != 1) {
                    z = false;
                } else {
                    z = true;
                }
                if (i3 != 2 || this.previousScrollState != 0) {
                    z2 = true;
                }
                tabLayout.setScrollPosition(f, i, z, z2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void onPageSelected(int i) {
            boolean z;
            TabLayout tabLayout = (TabLayout) this.tabLayoutRef.get();
            if (tabLayout != null && tabLayout.getSelectedTabPosition() != i && i < tabLayout.getTabCount()) {
                int i2 = this.scrollState;
                if (i2 != 0 && (i2 != 2 || this.previousScrollState != 0)) {
                    z = false;
                } else {
                    z = true;
                }
                tabLayout.selectTab(tabLayout.getTabAt(i), z);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class TabView extends LinearLayout {
        public static final /* synthetic */ int $r8$clinit = 0;
        public Drawable baseBackgroundDrawable;
        public ImageView customIconView;
        public TextView customTextView;
        public View customView;
        public int defaultMaxLines;
        public ImageView iconView;
        public int mIconSize;
        public SeslAbsIndicatorView mIndicatorView;
        public boolean mIsCallPerformClick;
        public View mMainTabTouchBackground;
        public TextView mSubTextView;
        public RelativeLayout mTabParentView;
        public final AnonymousClass1 mTabViewKeyListener;
        public Tab tab;
        public TextView textView;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View$OnKeyListener, com.google.android.material.tabs.TabLayout$TabView$1] */
        public TabView(Context context) {
            super(context);
            this.defaultMaxLines = 2;
            ?? r1 = new View.OnKeyListener(this) { // from class: com.google.android.material.tabs.TabLayout.TabView.1
                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                    return false;
                }
            };
            this.mTabViewKeyListener = r1;
            int i = TabLayout.this.tabBackgroundResId;
            if (i != 0 && TabLayout.this.mDepthStyle != 2) {
                Drawable drawable = AppCompatResources.getDrawable(i, context);
                this.baseBackgroundDrawable = drawable;
                if (drawable != null && drawable.isStateful()) {
                    this.baseBackgroundDrawable.setState(getDrawableState());
                }
                Drawable drawable2 = this.baseBackgroundDrawable;
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api16Impl.setBackground(this, drawable2);
            } else {
                this.baseBackgroundDrawable = null;
            }
            View view = this.mMainTabTouchBackground;
            if (view != null) {
                view.setBackgroundTintList(TabLayout.this.tabRippleColorStateList);
            }
            setGravity(17);
            setOrientation(!TabLayout.this.inlineLabel ? 1 : 0);
            setClickable(true);
            setOnKeyListener(r1);
            if (TabLayout.this.mDepthStyle == 1) {
                int i2 = TabLayout.this.tabPaddingTop;
                int i3 = TabLayout.this.tabPaddingBottom;
                WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api17Impl.setPaddingRelative(this, 0, i2, 0, i3);
            }
            this.mIconSize = getResources().getDimensionPixelOffset(R.dimen.sesl_tab_icon_size);
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.baseBackgroundDrawable;
            if (drawable != null && drawable.isStateful()) {
                this.baseBackgroundDrawable.setState(drawableState);
            }
        }

        @Override // android.view.View
        public final void onConfigurationChanged(Configuration configuration) {
            super.onConfigurationChanged(configuration);
            this.mIconSize = getResources().getDimensionPixelOffset(R.dimen.sesl_tab_icon_size);
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            AccessibilityNodeInfoCompat wrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
            wrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(false, 0, 1, this.tab.position, 1, isSelected()));
            if (isSelected()) {
                wrap.setClickable(false);
                wrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            }
            wrap.mInfo.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", getResources().getString(R.string.item_view_role_description));
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
            TextView textView;
            int i5;
            super.onLayout(z, i, i2, i3, i4);
            View view = this.mMainTabTouchBackground;
            if (view != null) {
                view.setLeft(0);
                View view2 = this.mMainTabTouchBackground;
                RelativeLayout relativeLayout = this.mTabParentView;
                if (relativeLayout != null) {
                    i5 = relativeLayout.getWidth();
                } else {
                    i5 = i3 - i;
                }
                view2.setRight(i5);
                if (this.mMainTabTouchBackground.getAnimation() != null && this.mMainTabTouchBackground.getAnimation().hasEnded()) {
                    this.mMainTabTouchBackground.setAlpha(0.0f);
                }
            }
            if (this.iconView != null && this.tab.icon != null && (textView = this.textView) != null && this.mIndicatorView != null && this.mTabParentView != null) {
                int measuredWidth = textView.getMeasuredWidth() + this.mIconSize;
                int i6 = TabLayout.this.mIconTextGap;
                if (i6 != -1) {
                    measuredWidth += i6;
                }
                int abs = Math.abs((getWidth() - measuredWidth) / 2);
                if (ViewUtils.isLayoutRtl(this)) {
                    int i7 = -abs;
                    if (this.iconView.getRight() == this.mTabParentView.getRight()) {
                        this.textView.offsetLeftAndRight(i7);
                        this.iconView.offsetLeftAndRight(i7);
                        this.mIndicatorView.offsetLeftAndRight(i7);
                        return;
                    }
                    return;
                }
                if (this.iconView.getLeft() == this.mTabParentView.getLeft()) {
                    this.textView.offsetLeftAndRight(abs);
                    this.iconView.offsetLeftAndRight(abs);
                    this.mIndicatorView.offsetLeftAndRight(abs);
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x00ca, code lost:
        
            if (((r4 / r2.getPaint().getTextSize()) * r2.getLineWidth(0)) > ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) goto L49;
         */
        @Override // android.widget.LinearLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onMeasure(int r11, int r12) {
            /*
                Method dump skipped, instructions count: 324
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.TabView.onMeasure(int, int):void");
        }

        @Override // android.view.View
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            SeslAbsIndicatorView seslAbsIndicatorView;
            TextView textView;
            if (isEnabled()) {
                View view = this.tab.customView;
                if (view != null) {
                    return super.onTouchEvent(motionEvent);
                }
                if (motionEvent == null || view != null || this.textView == null) {
                    return false;
                }
                int action = motionEvent.getAction() & 255;
                if (action != 0) {
                    if (action != 1) {
                        if (action == 3) {
                            this.textView.setTypeface(TabLayout.this.mNormalTypeface);
                            TabLayout.startTextColorChangeAnimation(TabLayout.this.tabTextColors.getDefaultColor(), this.textView);
                            SeslAbsIndicatorView seslAbsIndicatorView2 = this.mIndicatorView;
                            if (seslAbsIndicatorView2 != null && !seslAbsIndicatorView2.isSelected()) {
                                this.mIndicatorView.onHide();
                            }
                            TabLayout tabLayout = TabLayout.this;
                            Tab tabAt = tabLayout.getTabAt(tabLayout.getSelectedTabPosition());
                            if (tabAt != null) {
                                TextView textView2 = tabAt.view.textView;
                                if (textView2 != null) {
                                    textView2.setTypeface(TabLayout.this.mBoldTypeface);
                                    TabLayout.startTextColorChangeAnimation(TabLayout.this.getSelectedTabTextColor(), tabAt.view.textView);
                                }
                                SeslAbsIndicatorView seslAbsIndicatorView3 = tabAt.view.mIndicatorView;
                                if (seslAbsIndicatorView3 != null) {
                                    seslAbsIndicatorView3.onShow();
                                }
                            }
                            if (TabLayout.this.mDepthStyle == 1) {
                                showMainTabTouchBackground(3);
                            } else {
                                SeslAbsIndicatorView seslAbsIndicatorView4 = this.mIndicatorView;
                                if (seslAbsIndicatorView4 != null && seslAbsIndicatorView4.isSelected()) {
                                    this.mIndicatorView.startReleaseEffect();
                                }
                            }
                        }
                    } else {
                        showMainTabTouchBackground(1);
                        SeslAbsIndicatorView seslAbsIndicatorView5 = this.mIndicatorView;
                        if (seslAbsIndicatorView5 != null) {
                            seslAbsIndicatorView5.startReleaseEffect();
                            this.mIndicatorView.onTouchEvent(motionEvent);
                        }
                        performClick();
                        this.mIsCallPerformClick = true;
                    }
                } else {
                    this.mIsCallPerformClick = false;
                    if (this.tab.position != TabLayout.this.getSelectedTabPosition() && (textView = this.textView) != null) {
                        textView.setTypeface(TabLayout.this.mBoldTypeface);
                        TabLayout.startTextColorChangeAnimation(TabLayout.this.getSelectedTabTextColor(), this.textView);
                        SeslAbsIndicatorView seslAbsIndicatorView6 = this.mIndicatorView;
                        if (seslAbsIndicatorView6 != null) {
                            seslAbsIndicatorView6.startPressEffect();
                        }
                        TabLayout tabLayout2 = TabLayout.this;
                        Tab tabAt2 = tabLayout2.getTabAt(tabLayout2.getSelectedTabPosition());
                        if (tabAt2 != null) {
                            TextView textView3 = tabAt2.view.textView;
                            if (textView3 != null) {
                                textView3.setTypeface(TabLayout.this.mNormalTypeface);
                                TabLayout.startTextColorChangeAnimation(TabLayout.this.tabTextColors.getDefaultColor(), tabAt2.view.textView);
                            }
                            SeslAbsIndicatorView seslAbsIndicatorView7 = tabAt2.view.mIndicatorView;
                            if (seslAbsIndicatorView7 != null) {
                                seslAbsIndicatorView7.onHide();
                            }
                        }
                    } else if (this.tab.position == TabLayout.this.getSelectedTabPosition() && (seslAbsIndicatorView = this.mIndicatorView) != null) {
                        seslAbsIndicatorView.startPressEffect();
                    }
                    showMainTabTouchBackground(0);
                }
                return super.onTouchEvent(motionEvent);
            }
            return super.onTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public final boolean performClick() {
            if (this.mIsCallPerformClick) {
                this.mIsCallPerformClick = false;
                return true;
            }
            boolean performClick = super.performClick();
            if (this.tab != null) {
                if (!performClick) {
                    playSoundEffect(0);
                }
                this.tab.select();
                return true;
            }
            return performClick;
        }

        @Override // android.view.View
        public final void setEnabled(boolean z) {
            int i;
            super.setEnabled(z);
            View view = this.mMainTabTouchBackground;
            if (view != null) {
                if (z) {
                    i = 0;
                } else {
                    i = 8;
                }
                view.setVisibility(i);
            }
        }

        @Override // android.view.View
        public final void setSelected(boolean z) {
            if (!isEnabled()) {
                return;
            }
            if (isSelected() != z) {
            }
            super.setSelected(z);
            TextView textView = this.textView;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.iconView;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.customView;
            if (view != null) {
                view.setSelected(z);
            }
            SeslAbsIndicatorView seslAbsIndicatorView = this.mIndicatorView;
            if (seslAbsIndicatorView != null) {
                seslAbsIndicatorView.setSelected(z);
            }
            TextView textView2 = this.mSubTextView;
            if (textView2 != null) {
                textView2.setSelected(z);
            }
        }

        public final void showMainTabTouchBackground(int i) {
            View view = this.mMainTabTouchBackground;
            if (view != null) {
                TabLayout tabLayout = TabLayout.this;
                if (tabLayout.mDepthStyle == 1 && tabLayout.tabBackgroundResId == 0) {
                    view.setAlpha(1.0f);
                    AnimationSet animationSet = new AnimationSet(true);
                    animationSet.setFillAfter(true);
                    if (i != 0) {
                        if ((i == 1 || i == 3) && this.mMainTabTouchBackground.getAnimation() != null) {
                            if (this.mMainTabTouchBackground.getAnimation().hasEnded()) {
                                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                                alphaAnimation.setDuration(400L);
                                alphaAnimation.setFillAfter(true);
                                animationSet.addAnimation(alphaAnimation);
                                this.mMainTabTouchBackground.startAnimation(animationSet);
                                return;
                            }
                            this.mMainTabTouchBackground.getAnimation().setAnimationListener(new Animation.AnimationListener() { // from class: com.google.android.material.tabs.TabLayout.TabView.3
                                @Override // android.view.animation.Animation.AnimationListener
                                public final void onAnimationEnd(Animation animation) {
                                    AnimationSet animationSet2 = new AnimationSet(true);
                                    animationSet2.setFillAfter(true);
                                    AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
                                    alphaAnimation2.setDuration(400L);
                                    alphaAnimation2.setFillAfter(true);
                                    animationSet2.addAnimation(alphaAnimation2);
                                    TabView.this.mMainTabTouchBackground.startAnimation(alphaAnimation2);
                                }

                                @Override // android.view.animation.Animation.AnimationListener
                                public final void onAnimationRepeat(Animation animation) {
                                }

                                @Override // android.view.animation.Animation.AnimationListener
                                public final void onAnimationStart(Animation animation) {
                                }
                            });
                            return;
                        }
                        return;
                    }
                    AlphaAnimation alphaAnimation2 = new AlphaAnimation(0.0f, 1.0f);
                    alphaAnimation2.setDuration(100L);
                    alphaAnimation2.setFillAfter(true);
                    animationSet.addAnimation(alphaAnimation2);
                    ScaleAnimation scaleAnimation = new ScaleAnimation(0.95f, 1.0f, 0.95f, 1.0f, 1, 0.5f, 1, 0.5f);
                    scaleAnimation.setDuration(350L);
                    scaleAnimation.setInterpolator(SeslAnimationUtils.SINE_IN_OUT_80);
                    scaleAnimation.setFillAfter(true);
                    animationSet.addAnimation(scaleAnimation);
                    this.mMainTabTouchBackground.startAnimation(animationSet);
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:134:0x02a3, code lost:
        
            if (r0 != false) goto L167;
         */
        /* JADX WARN: Removed duplicated region for block: B:118:0x025e  */
        /* JADX WARN: Removed duplicated region for block: B:121:0x026b  */
        /* JADX WARN: Removed duplicated region for block: B:143:0x024f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void update() {
            /*
                Method dump skipped, instructions count: 691
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.TabView.update():void");
        }

        public final void updateTextAndIcon(TextView textView, ImageView imageView) {
            Drawable drawable;
            CharSequence charSequence;
            CharSequence charSequence2;
            int i;
            Drawable drawable2;
            Tab tab = this.tab;
            CharSequence charSequence3 = null;
            if (tab != null && (drawable2 = tab.icon) != null) {
                drawable = drawable2.mutate();
            } else {
                drawable = null;
            }
            if (drawable != null) {
                drawable.setTintList(TabLayout.this.tabIconTint);
                PorterDuff.Mode mode = TabLayout.this.tabIconTintMode;
                if (mode != null) {
                    drawable.setTintMode(mode);
                }
            }
            Tab tab2 = this.tab;
            if (tab2 != null) {
                charSequence = tab2.text;
            } else {
                charSequence = null;
            }
            if (imageView != null) {
                if (drawable != null) {
                    imageView.setImageDrawable(drawable);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(charSequence);
            if (textView != null) {
                if (z) {
                    textView.setText(charSequence);
                    if (this.tab.labelVisibilityMode == 1) {
                        textView.setVisibility(0);
                    } else {
                        textView.setVisibility(8);
                    }
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                if (z && imageView.getVisibility() == 0) {
                    i = TabLayout.this.mIconTextGap;
                    if (i == -1) {
                        i = (int) ViewUtils.dpToPx(8, getContext());
                    }
                } else {
                    i = 0;
                }
                if (i != marginLayoutParams.getMarginEnd()) {
                    marginLayoutParams.setMarginEnd(i);
                    marginLayoutParams.bottomMargin = 0;
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                    if (textView != null) {
                        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) textView.getLayoutParams();
                        layoutParams.addRule(13, 0);
                        layoutParams.addRule(15, 1);
                        layoutParams.addRule(17, R.id.icon);
                        textView.setLayoutParams(layoutParams);
                    }
                }
            }
            Tab tab3 = this.tab;
            if (tab3 != null) {
                charSequence2 = tab3.contentDesc;
            } else {
                charSequence2 = null;
            }
            if (!z) {
                charSequence3 = charSequence2;
            }
            setTooltipText(charSequence3);
        }
    }

    public TabLayout(Context context) {
        this(context, null);
    }

    public static void access$1700(TabLayout tabLayout, TextView textView, int i) {
        float f = tabLayout.getResources().getConfiguration().fontScale;
        if (textView != null && tabLayout.mIsScaledTextSizeType && f > 1.3f) {
            textView.setTextSize(0, (i / f) * 1.3f);
        }
    }

    public static void startTextColorChangeAnimation(int i, TextView textView) {
        if (textView != null) {
            textView.setTextColor(i);
        }
    }

    public final void addOnTabSelectedListener(OnTabSelectedListener onTabSelectedListener) {
        if (!this.selectedListeners.contains(onTabSelectedListener)) {
            this.selectedListeners.add(onTabSelectedListener);
        }
    }

    public final void addTab(Tab tab, boolean z) {
        int size = this.tabs.size();
        if (tab.parent == this) {
            tab.position = size;
            this.tabs.add(size, tab);
            int size2 = this.tabs.size();
            while (true) {
                size++;
                if (size >= size2) {
                    break;
                } else {
                    ((Tab) this.tabs.get(size)).position = size;
                }
            }
            TabView tabView = tab.view;
            tabView.setSelected(false);
            tabView.setActivated(false);
            SlidingTabIndicator slidingTabIndicator = this.slidingTabIndicator;
            int i = tab.position;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
            updateTabViewLayoutParams(layoutParams);
            slidingTabIndicator.addView(tabView, i, layoutParams);
            if (z) {
                tab.select();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view) {
        addViewInternal(view);
    }

    public final void addViewInternal(View view) {
        if (view instanceof TabItem) {
            TabItem tabItem = (TabItem) view;
            Tab newTab = newTab();
            CharSequence charSequence = tabItem.text;
            if (charSequence != null) {
                if (TextUtils.isEmpty(newTab.contentDesc) && !TextUtils.isEmpty(charSequence)) {
                    newTab.view.setContentDescription(charSequence);
                }
                newTab.text = charSequence;
                TabView tabView = newTab.view;
                if (tabView != null) {
                    tabView.update();
                }
            }
            Drawable drawable = tabItem.icon;
            if (drawable != null) {
                newTab.icon = drawable;
                TabLayout tabLayout = newTab.parent;
                if (tabLayout.tabGravity == 1 || tabLayout.mode == 2) {
                    tabLayout.updateTabViews(true);
                }
                TabView tabView2 = newTab.view;
                if (tabView2 != null) {
                    tabView2.update();
                }
            }
            int i = tabItem.customLayout;
            if (i != 0) {
                View inflate = LayoutInflater.from(newTab.view.getContext()).inflate(i, (ViewGroup) newTab.view, false);
                TabView tabView3 = newTab.view;
                if (tabView3.textView != null) {
                    tabView3.removeAllViews();
                }
                newTab.customView = inflate;
                TabView tabView4 = newTab.view;
                if (tabView4 != null) {
                    tabView4.update();
                }
            }
            if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
                newTab.contentDesc = tabItem.getContentDescription();
                TabView tabView5 = newTab.view;
                if (tabView5 != null) {
                    tabView5.update();
                }
            }
            addTab(newTab, this.tabs.isEmpty());
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    public final void animateToTab(int i) {
        if (i == -1) {
            return;
        }
        if (getWindowToken() != null) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            if (ViewCompat.Api19Impl.isLaidOut(this)) {
                SlidingTabIndicator slidingTabIndicator = this.slidingTabIndicator;
                int childCount = slidingTabIndicator.getChildCount();
                boolean z = false;
                int i2 = 0;
                while (true) {
                    if (i2 >= childCount) {
                        break;
                    }
                    if (slidingTabIndicator.getChildAt(i2).getWidth() <= 0) {
                        z = true;
                        break;
                    }
                    i2++;
                }
                if (!z) {
                    int scrollX = getScrollX();
                    int calculateScrollXForTab = calculateScrollXForTab(0.0f, i);
                    if (scrollX != calculateScrollXForTab) {
                        if (this.scrollAnimator == null) {
                            ValueAnimator valueAnimator = new ValueAnimator();
                            this.scrollAnimator = valueAnimator;
                            valueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
                            this.scrollAnimator.setDuration(this.tabIndicatorAnimationDuration);
                            this.scrollAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.tabs.TabLayout.1
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                                    TabLayout.this.scrollTo(((Integer) valueAnimator2.getAnimatedValue()).intValue(), 0);
                                }
                            });
                        }
                        this.scrollAnimator.setIntValues(scrollX, calculateScrollXForTab);
                        this.scrollAnimator.start();
                    }
                    this.slidingTabIndicator.getClass();
                    return;
                }
            }
        }
        setScrollPosition(0.0f, i, true, true);
    }

    public final int calculateScrollXForTab(float f, int i) {
        View childAt;
        View view;
        int i2 = this.mode;
        int i3 = 0;
        if ((i2 != 0 && i2 != 2 && i2 != 11 && i2 != 12) || (childAt = this.slidingTabIndicator.getChildAt(i)) == null) {
            return 0;
        }
        int i4 = i + 1;
        if (i4 < this.slidingTabIndicator.getChildCount()) {
            view = this.slidingTabIndicator.getChildAt(i4);
        } else {
            view = null;
        }
        int width = childAt.getWidth();
        if (view != null) {
            i3 = view.getWidth();
        }
        int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
        int i5 = (int) ((width + i3) * 0.5f * f);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        if (ViewCompat.Api17Impl.getLayoutDirection(this) == 0) {
            return left + i5;
        }
        return left - i5;
    }

    public final void checkOverScreen() {
        int measuredWidth = getMeasuredWidth();
        if (measuredWidth > ((int) ((getContext().getResources().getDisplayMetrics().densityDpi / 160.0f) * getResources().getInteger(R.integer.sesl_tablayout_over_screen_width_dp)))) {
            this.mIsOverScreen = true;
            this.mOverScreenMaxWidth = (int) (getResources().getFloat(R.dimen.sesl_tablayout_over_screen_max_width_rate) * measuredWidth);
        } else {
            this.mIsOverScreen = false;
        }
    }

    public final int getSelectedTabPosition() {
        Tab tab = this.selectedTab;
        if (tab != null) {
            return tab.position;
        }
        return -1;
    }

    public final int getSelectedTabTextColor() {
        ColorStateList colorStateList = this.tabTextColors;
        if (colorStateList != null) {
            return colorStateList.getColorForState(new int[]{android.R.attr.state_selected, android.R.attr.state_enabled}, colorStateList.getDefaultColor());
        }
        return -1;
    }

    public final Tab getTabAt(int i) {
        if (i >= 0 && i < getTabCount()) {
            return (Tab) this.tabs.get(i);
        }
        return null;
    }

    public final int getTabCount() {
        return this.tabs.size();
    }

    public final Tab newTab() {
        TabView tabView;
        Tab tab = (Tab) tabPool.acquire();
        if (tab == null) {
            tab = new Tab();
        }
        tab.parent = this;
        Pools$SimplePool pools$SimplePool = this.tabViewPool;
        if (pools$SimplePool != null) {
            tabView = (TabView) pools$SimplePool.acquire();
        } else {
            tabView = null;
        }
        if (tabView == null) {
            tabView = new TabView(getContext());
        }
        View view = tabView.mMainTabTouchBackground;
        if (view != null) {
            view.setAlpha(0.0f);
        }
        if (tab != tabView.tab) {
            tabView.tab = tab;
            tabView.update();
        }
        tabView.setFocusable(true);
        int i = this.requestedTabMinWidth;
        if (i == -1) {
            i = 0;
        }
        tabView.setMinimumWidth(i);
        if (TextUtils.isEmpty(tab.contentDesc)) {
            tabView.setContentDescription(tab.text);
        } else {
            tabView.setContentDescription(tab.contentDesc);
        }
        tab.view = tabView;
        int i2 = tab.id;
        if (i2 != -1) {
            tabView.setId(i2);
        }
        return tab;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        TabView tabView;
        super.onAttachedToWindow();
        for (int i = 0; i < getTabCount(); i++) {
            Tab tabAt = getTabAt(i);
            if (tabAt != null && (tabView = tabAt.view) != null) {
                View view = tabView.mMainTabTouchBackground;
                if (view != null) {
                    view.setAlpha(0.0f);
                }
                if (tabAt.view.mIndicatorView != null) {
                    if (getSelectedTabPosition() == i) {
                        tabAt.view.mIndicatorView.onShow();
                    } else {
                        tabAt.view.mIndicatorView.onHide();
                    }
                }
            }
        }
        MaterialShapeUtils.setParentAbsoluteElevation(this);
        if (this.viewPager == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                setupWithViewPager((ViewPager) parent, true);
            }
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        TabView tabView;
        View view;
        super.onConfigurationChanged(configuration);
        for (int i = 0; i < getTabCount(); i++) {
            Tab tabAt = getTabAt(i);
            if (tabAt != null && (tabView = tabAt.view) != null && (view = tabView.mMainTabTouchBackground) != null) {
                view.setAlpha(0.0f);
            }
        }
        updateBadgePosition();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.setupViewPagerImplicitly) {
            setupWithViewPager(null, false);
            this.setupViewPagerImplicitly = false;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        TabView tabView;
        Drawable drawable;
        for (int i = 0; i < this.slidingTabIndicator.getChildCount(); i++) {
            View childAt = this.slidingTabIndicator.getChildAt(i);
            if ((childAt instanceof TabView) && (drawable = (tabView = (TabView) childAt).baseBackgroundDrawable) != null) {
                drawable.setBounds(tabView.getLeft(), tabView.getTop(), tabView.getRight(), tabView.getBottom());
                tabView.baseBackgroundDrawable.draw(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getTabCount(), 1));
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int i = this.mode;
        if (i != 0 && i != 2) {
            z = false;
        } else {
            z = true;
        }
        if (!z || !super.onInterceptTouchEvent(motionEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        super.onLayout(z, i, i2, i3, i4);
        updateBadgePosition();
        if (z) {
            this.mMaxTouchSlop = Math.max(this.mMaxTouchSlop, i3 - i);
        }
        if (this.mode != 1 && (canScrollHorizontally(1) || canScrollHorizontally(-1))) {
            i5 = this.mDefaultTouchSlop;
        } else {
            i5 = this.mMaxTouchSlop;
        }
        if (this.mCurrentTouchSlop != i5) {
            Method declaredMethod = SeslBaseReflector.getDeclaredMethod(SeslHorizontalScrollViewReflector.mClass, "hidden_setTouchSlop", Integer.TYPE);
            if (declaredMethod != null) {
                SeslBaseReflector.invoke(this, declaredMethod, Integer.valueOf(i5));
            }
            this.mCurrentTouchSlop = i5;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x007f, code lost:
    
        if (r0 != 12) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0081, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008b, code lost:
    
        if (r9.getMeasuredWidth() != getMeasuredWidth()) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0096, code lost:
    
        if (r9.getMeasuredWidth() < getMeasuredWidth()) goto L39;
     */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onMeasure(int r9, int r10) {
        /*
            r8 = this;
            android.content.Context r0 = r8.getContext()
            int r1 = r8.mDepthStyle
            r2 = 56
            r3 = 2
            if (r1 != r3) goto Ld
            r1 = r2
            goto Lf
        Ld:
            r1 = 60
        Lf:
            float r0 = com.google.android.material.internal.ViewUtils.dpToPx(r1, r0)
            int r0 = java.lang.Math.round(r0)
            int r1 = android.view.View.MeasureSpec.getMode(r10)
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = 1073741824(0x40000000, float:2.0)
            r6 = 1
            r7 = 0
            if (r1 == r4) goto L35
            if (r1 == 0) goto L26
            goto L48
        L26:
            int r10 = r8.getPaddingTop()
            int r10 = r10 + r0
            int r0 = r8.getPaddingBottom()
            int r0 = r0 + r10
            int r10 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r5)
            goto L48
        L35:
            int r1 = r8.getChildCount()
            if (r1 != r6) goto L48
            int r1 = android.view.View.MeasureSpec.getSize(r10)
            if (r1 < r0) goto L48
            android.view.View r1 = r8.getChildAt(r7)
            r1.setMinimumHeight(r0)
        L48:
            int r0 = android.view.View.MeasureSpec.getSize(r9)
            int r1 = android.view.View.MeasureSpec.getMode(r9)
            if (r1 == 0) goto L64
            int r1 = r8.requestedTabMaxWidth
            if (r1 <= 0) goto L57
            goto L62
        L57:
            float r0 = (float) r0
            android.content.Context r1 = r8.getContext()
            float r1 = com.google.android.material.internal.ViewUtils.dpToPx(r2, r1)
            float r0 = r0 - r1
            int r1 = (int) r0
        L62:
            r8.tabMaxWidth = r1
        L64:
            super.onMeasure(r9, r10)
            int r9 = r8.getChildCount()
            if (r9 != r6) goto Le2
            android.view.View r9 = r8.getChildAt(r7)
            int r0 = r8.mode
            if (r0 == 0) goto L8e
            if (r0 == r6) goto L83
            if (r0 == r3) goto L8e
            r1 = 11
            if (r0 == r1) goto L98
            r1 = 12
            if (r0 == r1) goto L98
        L81:
            r6 = r7
            goto L98
        L83:
            int r0 = r9.getMeasuredWidth()
            int r1 = r8.getMeasuredWidth()
            if (r0 == r1) goto L81
            goto L98
        L8e:
            int r0 = r9.getMeasuredWidth()
            int r1 = r8.getMeasuredWidth()
            if (r0 >= r1) goto L81
        L98:
            if (r6 == 0) goto Lb8
            int r0 = r8.getPaddingTop()
            int r1 = r8.getPaddingBottom()
            int r1 = r1 + r0
            android.view.ViewGroup$LayoutParams r0 = r9.getLayoutParams()
            int r0 = r0.height
            int r10 = android.widget.HorizontalScrollView.getChildMeasureSpec(r10, r1, r0)
            int r0 = r8.getMeasuredWidth()
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r5)
            r9.measure(r0, r10)
        Lb8:
            r8.checkOverScreen()
            boolean r9 = r8.mIsOverScreen
            if (r9 == 0) goto Ldf
            android.view.View r9 = r8.getChildAt(r7)
            int r9 = r9.getMeasuredWidth()
            int r10 = r8.getMeasuredWidth()
            if (r9 >= r10) goto Ldf
            int r9 = r8.getMeasuredWidth()
            android.view.View r10 = r8.getChildAt(r7)
            int r10 = r10.getMeasuredWidth()
            int r9 = r9 - r10
            int r9 = r9 / r3
            r8.setPaddingRelative(r9, r7, r7, r7)
            goto Le2
        Ldf:
            r8.setPaddingRelative(r7, r7, r7, r7)
        Le2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.onMeasure(int, int):void");
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (motionEvent.getActionMasked() == 8) {
            int i = this.mode;
            if (i != 0 && i != 2) {
                z = false;
            } else {
                z = true;
            }
            if (!z) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        TabView tabView;
        View view2;
        super.onVisibilityChanged(view, i);
        for (int i2 = 0; i2 < getTabCount(); i2++) {
            Tab tabAt = getTabAt(i2);
            if (tabAt != null && (tabView = tabAt.view) != null && (view2 = tabView.mMainTabTouchBackground) != null) {
                view2.setAlpha(0.0f);
            }
        }
    }

    public final void populateFromPagerAdapter() {
        int currentItem;
        removeAllTabs();
        PagerAdapter pagerAdapter = this.pagerAdapter;
        if (pagerAdapter != null) {
            int count = pagerAdapter.getCount();
            for (int i = 0; i < count; i++) {
                Tab newTab = newTab();
                this.pagerAdapter.getClass();
                if (TextUtils.isEmpty(newTab.contentDesc) && !TextUtils.isEmpty(null)) {
                    newTab.view.setContentDescription(null);
                }
                newTab.text = null;
                TabView tabView = newTab.view;
                if (tabView != null) {
                    tabView.update();
                }
                addTab(newTab, false);
            }
            ViewPager viewPager = this.viewPager;
            if (viewPager != null && count > 0 && (currentItem = viewPager.getCurrentItem()) != getSelectedTabPosition() && currentItem < getTabCount()) {
                selectTab(getTabAt(currentItem), true);
            }
        }
    }

    public final void removeAllTabs() {
        for (int childCount = this.slidingTabIndicator.getChildCount() - 1; childCount >= 0; childCount--) {
            TabView tabView = (TabView) this.slidingTabIndicator.getChildAt(childCount);
            this.slidingTabIndicator.removeViewAt(childCount);
            if (tabView != null) {
                if (tabView.tab != null) {
                    tabView.tab = null;
                    tabView.update();
                }
                tabView.setSelected(false);
                this.tabViewPool.release(tabView);
            }
            requestLayout();
        }
        Iterator it = this.tabs.iterator();
        while (it.hasNext()) {
            Tab tab = (Tab) it.next();
            it.remove();
            tab.parent = null;
            tab.view = null;
            tab.icon = null;
            tab.id = -1;
            tab.text = null;
            tab.contentDesc = null;
            tab.position = -1;
            tab.customView = null;
            tab.subText = null;
            tabPool.release(tab);
        }
        this.selectedTab = null;
    }

    public final void selectTab(Tab tab, boolean z) {
        int i;
        ViewPager viewPager;
        if (tab != null && !tab.view.isEnabled() && (viewPager = this.viewPager) != null) {
            viewPager.setCurrentItem(getSelectedTabPosition());
            return;
        }
        Tab tab2 = this.selectedTab;
        if (tab2 == tab) {
            if (tab2 != null) {
                for (int size = this.selectedListeners.size() - 1; size >= 0; size--) {
                    ((BaseOnTabSelectedListener) this.selectedListeners.get(size)).onTabReselected();
                }
                animateToTab(tab.position);
                return;
            }
            return;
        }
        if (tab != null) {
            i = tab.position;
        } else {
            i = -1;
        }
        if (z) {
            if ((tab2 == null || tab2.position == -1) && i != -1) {
                setScrollPosition(0.0f, i, true, true);
            } else {
                animateToTab(i);
            }
            if (i != -1) {
                setSelectedTabView(i);
            }
        }
        this.selectedTab = tab;
        if (tab2 != null) {
            for (int size2 = this.selectedListeners.size() - 1; size2 >= 0; size2--) {
                ((BaseOnTabSelectedListener) this.selectedListeners.get(size2)).onTabUnselected();
            }
        }
        if (tab != null) {
            for (int size3 = this.selectedListeners.size() - 1; size3 >= 0; size3--) {
                ((BaseOnTabSelectedListener) this.selectedListeners.get(size3)).onTabSelected(tab);
            }
        }
    }

    public final void seslSetSubTabStyle() {
        int i;
        boolean z;
        if (this.mDepthStyle == 1) {
            this.mDepthStyle = 2;
            Resources resources = getResources();
            if (SeslMisc.isLightTheme(getContext())) {
                i = R.color.sesl_tablayout_subtab_text_color_light;
            } else {
                i = R.color.sesl_tablayout_subtab_text_color_dark;
            }
            this.tabTextColors = resources.getColorStateList(i);
            if (this.tabs.size() > 0) {
                int selectedTabPosition = getSelectedTabPosition();
                ArrayList arrayList = new ArrayList(this.tabs.size());
                for (int i2 = 0; i2 < this.tabs.size(); i2++) {
                    Tab newTab = newTab();
                    newTab.text = ((Tab) this.tabs.get(i2)).text;
                    newTab.icon = ((Tab) this.tabs.get(i2)).icon;
                    newTab.customView = ((Tab) this.tabs.get(i2)).customView;
                    newTab.subText = ((Tab) this.tabs.get(i2)).subText;
                    if (i2 == selectedTabPosition) {
                        newTab.select();
                    }
                    newTab.view.update();
                    arrayList.add(newTab);
                }
                removeAllTabs();
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    Tab tab = (Tab) arrayList.get(i3);
                    if (i3 == selectedTabPosition) {
                        z = true;
                    } else {
                        z = false;
                    }
                    addTab(tab, z);
                    if (this.tabs.get(i3) != null) {
                        ((Tab) this.tabs.get(i3)).view.update();
                    }
                }
                arrayList.clear();
            }
        }
    }

    @Override // android.view.View
    public final void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.setElevation(this, f);
    }

    public final void setPagerAdapter(PagerAdapter pagerAdapter, boolean z) {
        PagerAdapterObserver pagerAdapterObserver;
        PagerAdapter pagerAdapter2 = this.pagerAdapter;
        if (pagerAdapter2 != null && (pagerAdapterObserver = this.pagerAdapterObserver) != null) {
            pagerAdapter2.mObservable.unregisterObserver(pagerAdapterObserver);
        }
        this.pagerAdapter = pagerAdapter;
        if (z && pagerAdapter != null) {
            if (this.pagerAdapterObserver == null) {
                this.pagerAdapterObserver = new PagerAdapterObserver();
            }
            pagerAdapter.mObservable.registerObserver(this.pagerAdapterObserver);
        }
        populateFromPagerAdapter();
    }

    public final void setScrollPosition(float f, int i, boolean z, boolean z2) {
        int calculateScrollXForTab;
        boolean z3;
        int round = Math.round(i + f);
        if (round >= 0 && round < this.slidingTabIndicator.getChildCount()) {
            if (z2) {
                SlidingTabIndicator slidingTabIndicator = this.slidingTabIndicator;
                View childAt = slidingTabIndicator.getChildAt(i);
                View childAt2 = slidingTabIndicator.getChildAt(i + 1);
                if (childAt != null && childAt.getWidth() > 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3) {
                    TabLayout tabLayout = TabLayout.this;
                    tabLayout.tabIndicatorInterpolator.updateIndicatorForOffset(tabLayout, childAt, childAt2, f, tabLayout.tabSelectedIndicator);
                } else {
                    Drawable drawable = TabLayout.this.tabSelectedIndicator;
                    drawable.setBounds(-1, drawable.getBounds().top, -1, TabLayout.this.tabSelectedIndicator.getBounds().bottom);
                }
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api16Impl.postInvalidateOnAnimation(slidingTabIndicator);
            }
            ValueAnimator valueAnimator = this.scrollAnimator;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.scrollAnimator.cancel();
            }
            if (i < 0) {
                calculateScrollXForTab = 0;
            } else {
                calculateScrollXForTab = calculateScrollXForTab(f, i);
            }
            scrollTo(calculateScrollXForTab, 0);
            if (z) {
                setSelectedTabView(round);
            }
        }
    }

    public final void setSelectedTabView(int i) {
        TextView textView;
        TextView textView2;
        int i2;
        boolean z;
        int childCount = this.slidingTabIndicator.getChildCount();
        if (i < childCount) {
            int i3 = 0;
            while (true) {
                boolean z2 = true;
                if (i3 >= childCount) {
                    break;
                }
                View childAt = this.slidingTabIndicator.getChildAt(i3);
                if (i3 == i) {
                    z = true;
                } else {
                    z = false;
                }
                childAt.setSelected(z);
                if (i3 != i) {
                    z2 = false;
                }
                childAt.setActivated(z2);
                i3++;
            }
            ((Tab) this.tabs.get(i)).view.setSelected(true);
            for (int i4 = 0; i4 < getTabCount(); i4++) {
                TabView tabView = ((Tab) this.tabs.get(i4)).view;
                if (i4 == i) {
                    TextView textView3 = tabView.textView;
                    if (textView3 != null) {
                        startTextColorChangeAnimation(getSelectedTabTextColor(), textView3);
                        tabView.textView.setTypeface(this.mBoldTypeface);
                        tabView.textView.setSelected(true);
                    }
                    if (this.mDepthStyle == 2 && (textView2 = tabView.mSubTextView) != null) {
                        ColorStateList colorStateList = this.mSubTabSubTextColors;
                        if (colorStateList != null) {
                            i2 = colorStateList.getColorForState(new int[]{android.R.attr.state_selected, android.R.attr.state_enabled}, colorStateList.getDefaultColor());
                        } else {
                            i2 = -1;
                        }
                        startTextColorChangeAnimation(i2, textView2);
                        tabView.mSubTextView.setSelected(true);
                    }
                    SeslAbsIndicatorView seslAbsIndicatorView = tabView.mIndicatorView;
                    if (seslAbsIndicatorView != null && seslAbsIndicatorView.getAlpha() != 1.0f) {
                        tabView.mIndicatorView.onShow();
                    }
                } else {
                    SeslAbsIndicatorView seslAbsIndicatorView2 = tabView.mIndicatorView;
                    if (seslAbsIndicatorView2 != null) {
                        seslAbsIndicatorView2.onHide();
                    }
                    TextView textView4 = tabView.textView;
                    if (textView4 != null) {
                        textView4.setTypeface(this.mNormalTypeface);
                        startTextColorChangeAnimation(this.tabTextColors.getDefaultColor(), tabView.textView);
                        tabView.textView.setSelected(false);
                    }
                    if (this.mDepthStyle == 2 && (textView = tabView.mSubTextView) != null) {
                        startTextColorChangeAnimation(this.mSubTabSubTextColors.getDefaultColor(), textView);
                        tabView.mSubTextView.setSelected(false);
                    }
                }
            }
        }
    }

    public final void setupWithViewPager(ViewPager viewPager, boolean z) {
        List list;
        List list2;
        ViewPager viewPager2 = this.viewPager;
        if (viewPager2 != null) {
            TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener = this.pageChangeListener;
            if (tabLayoutOnPageChangeListener != null && (list2 = viewPager2.mOnPageChangeListeners) != null) {
                ((ArrayList) list2).remove(tabLayoutOnPageChangeListener);
            }
            AdapterChangeListener adapterChangeListener = this.adapterChangeListener;
            if (adapterChangeListener != null && (list = this.viewPager.mAdapterChangeListeners) != null) {
                ((ArrayList) list).remove(adapterChangeListener);
            }
        }
        ViewPagerOnTabSelectedListener viewPagerOnTabSelectedListener = this.currentVpSelectedListener;
        if (viewPagerOnTabSelectedListener != null) {
            this.selectedListeners.remove(viewPagerOnTabSelectedListener);
            this.currentVpSelectedListener = null;
        }
        if (viewPager != null) {
            this.viewPager = viewPager;
            if (this.pageChangeListener == null) {
                this.pageChangeListener = new TabLayoutOnPageChangeListener(this);
            }
            TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener2 = this.pageChangeListener;
            tabLayoutOnPageChangeListener2.scrollState = 0;
            tabLayoutOnPageChangeListener2.previousScrollState = 0;
            viewPager.addOnPageChangeListener(tabLayoutOnPageChangeListener2);
            ViewPagerOnTabSelectedListener viewPagerOnTabSelectedListener2 = new ViewPagerOnTabSelectedListener(viewPager);
            this.currentVpSelectedListener = viewPagerOnTabSelectedListener2;
            addOnTabSelectedListener(viewPagerOnTabSelectedListener2);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                setPagerAdapter(adapter, true);
            }
            if (this.adapterChangeListener == null) {
                this.adapterChangeListener = new AdapterChangeListener();
            }
            AdapterChangeListener adapterChangeListener2 = this.adapterChangeListener;
            adapterChangeListener2.autoRefresh = true;
            if (viewPager.mAdapterChangeListeners == null) {
                viewPager.mAdapterChangeListeners = new ArrayList();
            }
            ((ArrayList) viewPager.mAdapterChangeListeners).add(adapterChangeListener2);
            setScrollPosition(0.0f, viewPager.getCurrentItem(), true, true);
        } else {
            this.viewPager = null;
            setPagerAdapter(null, false);
        }
        this.setupViewPagerImplicitly = z;
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        if (Math.max(0, ((this.slidingTabIndicator.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight()) <= 0) {
            return false;
        }
        return true;
    }

    public final void updateBadgePosition() {
        ArrayList arrayList = this.tabs;
        if (arrayList != null && arrayList.size() != 0) {
            for (int i = 0; i < this.tabs.size(); i++) {
                Tab tab = (Tab) this.tabs.get(i);
                TabView tabView = ((Tab) this.tabs.get(i)).view;
                if (tab != null && tabView != null && tabView.getWidth() > 0) {
                    getContext().getResources().getDimensionPixelSize(R.dimen.sesl_tablayout_subtab_n_badge_xoffset);
                }
            }
        }
    }

    public final void updateTabViewLayoutParams(LinearLayout.LayoutParams layoutParams) {
        int i = this.mode;
        if (i == 1 && this.tabGravity == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else if (i != 11 && i != 12) {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
    }

    public final void updateTabViews(boolean z) {
        for (int i = 0; i < this.slidingTabIndicator.getChildCount(); i++) {
            View childAt = this.slidingTabIndicator.getChildAt(i);
            int i2 = this.requestedTabMinWidth;
            if (i2 == -1) {
                i2 = 0;
            }
            childAt.setMinimumWidth(i2);
            updateTabViewLayoutParams((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z) {
                childAt.requestLayout();
            }
        }
        updateBadgePosition();
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.tabStyle);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i) {
        addViewInternal(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x031c, code lost:
    
        if (r13 != 12) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0334, code lost:
    
        if (r13 != 2) goto L68;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public TabLayout(android.content.Context r13, android.util.AttributeSet r14, int r15) {
        /*
            Method dump skipped, instructions count: 854
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        addViewInternal(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        addViewInternal(view);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ViewPagerOnTabSelectedListener implements OnTabSelectedListener {
        public final ViewPager viewPager;

        public ViewPagerOnTabSelectedListener(ViewPager viewPager) {
            this.viewPager = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public final void onTabSelected(Tab tab) {
            this.viewPager.setCurrentItem(tab.position);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public final void onTabReselected() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public final void onTabUnselected() {
        }
    }
}
