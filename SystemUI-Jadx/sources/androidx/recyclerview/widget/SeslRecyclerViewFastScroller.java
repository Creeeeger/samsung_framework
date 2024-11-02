package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.IntProperty;
import android.util.Log;
import android.util.Property;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.SectionIndexer;
import android.widget.TextView;
import androidx.appcompat.animation.SeslAnimationUtils;
import androidx.core.math.MathUtils;
import androidx.recyclerview.R$styleable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.reflect.view.SeslHapticFeedbackConstantsReflector;
import com.android.systemui.R;
import com.samsung.android.nexus.video.VideoPlayer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SeslRecyclerViewFastScroller {
    public static final AnonymousClass6 BOTTOM;
    public static final AnonymousClass3 LEFT;
    public static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    public static final AnonymousClass5 RIGHT;
    public static final AnonymousClass4 TOP;
    public final float mAdditionalTouchArea;
    public int mColorPrimary;
    public AnimatorSet mDecorAnimation;
    public boolean mEnabled;
    public int mImmersiveBottomPadding;
    public boolean mLayoutFromRight;
    public RecyclerView.Adapter mListAdapter;
    public boolean mLongList;
    public final boolean mMatchDragPosition;
    public int mOldChildCount;
    public int mOldItemCount;
    public final int mOverlayPosition;
    public AnimatorSet mPreviewAnimation;
    public final View mPreviewImage;
    public final int mPreviewMarginEnd;
    public final int[] mPreviewResId;
    public final TextView mPrimaryText;
    public final RecyclerView mRecyclerView;
    public final int mScaledTouchSlop;
    public final int mScrollBarStyle;
    public boolean mScrollCompleted;
    public final TextView mSecondaryText;
    public SectionIndexer mSectionIndexer;
    public Object[] mSections;
    public boolean mShowingPreview;
    public boolean mShowingPrimary;
    public int mState;
    public int mThumbBackgroundColor;
    public final Drawable mThumbDrawable;
    public final ImageView mThumbImage;
    public final int mThumbMarginEnd;
    public float mThumbOffset;
    public final int mThumbPosition;
    public float mThumbRange;
    public final int mTrackBottomPadding;
    public final ImageView mTrackImage;
    public final int mTrackTopPadding;
    public boolean mUpdatingLayout;
    public final int mVibrateIndex;
    public int mWidth;
    public final Rect mTempBounds = new Rect();
    public final Rect mTempMargins = new Rect();
    public final Rect mContainerRect = new Rect();
    public int mCurrentSection = -1;
    public int mScrollbarPosition = -1;
    public long mPendingDrag = -1;
    public float mScrollY = 0.0f;
    public float mOldThumbPosition = -1.0f;
    public final AnonymousClass1 mDeferHide = new Runnable() { // from class: androidx.recyclerview.widget.SeslRecyclerViewFastScroller.1
        @Override // java.lang.Runnable
        public final void run() {
            SeslRecyclerViewFastScroller seslRecyclerViewFastScroller = SeslRecyclerViewFastScroller.this;
            Interpolator interpolator = SeslRecyclerViewFastScroller.LINEAR_INTERPOLATOR;
            seslRecyclerViewFastScroller.setState(0);
        }
    };
    public final AnonymousClass2 mSwitchPrimaryListener = new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.SeslRecyclerViewFastScroller.2
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            SeslRecyclerViewFastScroller.this.mShowingPrimary = !r0.mShowingPrimary;
        }
    };

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.recyclerview.widget.SeslRecyclerViewFastScroller$3] */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.recyclerview.widget.SeslRecyclerViewFastScroller$4] */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.recyclerview.widget.SeslRecyclerViewFastScroller$5] */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.recyclerview.widget.SeslRecyclerViewFastScroller$6] */
    static {
        ViewConfiguration.getTapTimeout();
        LEFT = new IntProperty("left") { // from class: androidx.recyclerview.widget.SeslRecyclerViewFastScroller.3
            @Override // android.util.Property
            public final Integer get(Object obj) {
                return Integer.valueOf(((View) obj).getLeft());
            }

            @Override // android.util.IntProperty
            public final void setValue(Object obj, int i) {
                ((View) obj).setLeft(i);
            }
        };
        TOP = new IntProperty("top") { // from class: androidx.recyclerview.widget.SeslRecyclerViewFastScroller.4
            @Override // android.util.Property
            public final Integer get(Object obj) {
                return Integer.valueOf(((View) obj).getTop());
            }

            @Override // android.util.IntProperty
            public final void setValue(Object obj, int i) {
                ((View) obj).setTop(i);
            }
        };
        RIGHT = new IntProperty("right") { // from class: androidx.recyclerview.widget.SeslRecyclerViewFastScroller.5
            @Override // android.util.Property
            public final Integer get(Object obj) {
                return Integer.valueOf(((View) obj).getRight());
            }

            @Override // android.util.IntProperty
            public final void setValue(Object obj, int i) {
                ((View) obj).setRight(i);
            }
        };
        BOTTOM = new IntProperty("bottom") { // from class: androidx.recyclerview.widget.SeslRecyclerViewFastScroller.6
            @Override // android.util.Property
            public final Integer get(Object obj) {
                return Integer.valueOf(((View) obj).getBottom());
            }

            @Override // android.util.IntProperty
            public final void setValue(Object obj, int i) {
                ((View) obj).setBottom(i);
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [android.view.ViewGroupOverlay] */
    /* JADX WARN: Type inference failed for: r2v10, types: [android.widget.TextView, android.view.View] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [android.widget.TextView, android.view.View] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r5v2, types: [androidx.recyclerview.widget.SeslRecyclerViewFastScroller$1] */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.recyclerview.widget.SeslRecyclerViewFastScroller$2] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [int, boolean] */
    public SeslRecyclerViewFastScroller(RecyclerView recyclerView) {
        int itemCount;
        boolean z;
        int i;
        ?? r3;
        ?? r2;
        ?? r6;
        boolean z2;
        int[] iArr = new int[2];
        this.mPreviewResId = iArr;
        this.mColorPrimary = -1;
        this.mThumbBackgroundColor = -1;
        this.mAdditionalTouchArea = 0.0f;
        this.mRecyclerView = recyclerView;
        RecyclerView.Adapter adapter = recyclerView.mAdapter;
        if (adapter == null) {
            itemCount = 0;
        } else {
            itemCount = adapter.getItemCount();
        }
        this.mOldItemCount = itemCount;
        this.mOldChildCount = recyclerView.getChildCount();
        Context context = recyclerView.getContext();
        this.mScaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mScrollBarStyle = recyclerView.getScrollBarStyle();
        this.mScrollCompleted = true;
        this.mState = 1;
        if (context.getApplicationInfo().targetSdkVersion >= 11) {
            z = true;
        } else {
            z = false;
        }
        this.mMatchDragPosition = z;
        ImageView imageView = new ImageView(context);
        this.mTrackImage = imageView;
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        ImageView imageView2 = new ImageView(context);
        this.mThumbImage = imageView2;
        imageView2.setScaleType(ImageView.ScaleType.FIT_XY);
        View view = new View(context);
        this.mPreviewImage = view;
        view.setAlpha(0.0f);
        TextView createPreviewTextView = createPreviewTextView(context);
        this.mPrimaryText = createPreviewTextView;
        TextView createPreviewTextView2 = createPreviewTextView(context);
        this.mSecondaryText = createPreviewTextView2;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, R$styleable.FastScroll, 0, 2132019190);
        try {
            this.mOverlayPosition = obtainStyledAttributes.getInt(8, 0);
            iArr[0] = obtainStyledAttributes.getResourceId(6, 0);
            iArr[1] = obtainStyledAttributes.getResourceId(7, 0);
            Drawable drawable = obtainStyledAttributes.getDrawable(9);
            this.mThumbDrawable = drawable;
            Drawable drawable2 = obtainStyledAttributes.getDrawable(13);
            int resourceId = obtainStyledAttributes.getResourceId(0, 0);
            ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(2);
            float dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
            int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(4, 0);
            int dimensionPixelSize3 = obtainStyledAttributes.getDimensionPixelSize(5, 0);
            int dimensionPixelSize4 = obtainStyledAttributes.getDimensionPixelSize(11, 0);
            int dimensionPixelSize5 = obtainStyledAttributes.getDimensionPixelSize(10, 0);
            int dimensionPixelSize6 = obtainStyledAttributes.getDimensionPixelSize(3, 0);
            this.mThumbPosition = obtainStyledAttributes.getInt(12, 0);
            obtainStyledAttributes.recycle();
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.colorPrimary, typedValue, true);
            int color = context.getResources().getColor(typedValue.resourceId);
            this.mColorPrimary = Color.argb(Math.round(Color.alpha(color) * 0.9f), Color.red(color), Color.green(color), Color.blue(color));
            this.mThumbBackgroundColor = context.getResources().getColor(R.color.sesl_fast_scrollbar_bg_color);
            imageView.setImageDrawable(drawable2);
            if (drawable2 != null) {
                i = Math.max(0, drawable2.getIntrinsicWidth());
            } else {
                i = 0;
            }
            if (drawable != null) {
                drawable.setTint(this.mThumbBackgroundColor);
            }
            imageView2.setImageDrawable(drawable);
            imageView2.setMinimumWidth(dimensionPixelSize4);
            imageView2.setMinimumHeight(dimensionPixelSize5);
            this.mWidth = Math.max(drawable != null ? Math.max(i, drawable.getIntrinsicWidth()) : i, dimensionPixelSize4);
            view.setMinimumWidth(dimensionPixelSize2);
            view.setMinimumHeight(dimensionPixelSize3);
            if (resourceId != 0) {
                TextView textView = createPreviewTextView;
                textView.setTextAppearance(context, resourceId);
                TextView textView2 = createPreviewTextView2;
                textView2.setTextAppearance(context, resourceId);
                r2 = textView;
                r3 = textView2;
            } else {
                r3 = createPreviewTextView2;
                r2 = createPreviewTextView;
            }
            if (colorStateList != null) {
                r2.setTextColor(colorStateList);
                r3.setTextColor(colorStateList);
            }
            if (dimensionPixelSize > 0.0f) {
                r6 = 0;
                r2.setTextSize(0, dimensionPixelSize);
                r3.setTextSize(0, dimensionPixelSize);
            } else {
                r6 = 0;
            }
            int max = Math.max((int) r6, dimensionPixelSize3);
            r2.setMinimumWidth(dimensionPixelSize2);
            r2.setMinimumHeight(max);
            r2.setIncludeFontPadding(r6);
            r3.setMinimumWidth(dimensionPixelSize2);
            r3.setMinimumHeight(max);
            r3.setIncludeFontPadding(r6);
            if (this.mState == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            imageView2.setPressed(z2);
            imageView.setPressed(z2);
            ?? overlay = recyclerView.getOverlay();
            overlay.add(imageView);
            overlay.add(imageView2);
            overlay.add(view);
            overlay.add(r2);
            overlay.add(r3);
            Resources resources = context.getResources();
            this.mPreviewMarginEnd = resources.getDimensionPixelOffset(R.dimen.sesl_fast_scroll_preview_margin_end);
            this.mThumbMarginEnd = resources.getDimensionPixelOffset(R.dimen.sesl_fast_scroll_thumb_margin_end);
            this.mAdditionalTouchArea = resources.getDimension(R.dimen.sesl_fast_scroll_additional_touch_area);
            this.mTrackTopPadding = resources.getDimensionPixelOffset(R.dimen.sesl_fast_scroller_track_top_padding);
            this.mTrackBottomPadding = resources.getDimensionPixelOffset(R.dimen.sesl_fast_scroller_track_bottom_padding);
            this.mImmersiveBottomPadding = 0;
            r2.setPadding(dimensionPixelSize6, 0, dimensionPixelSize6, 0);
            r3.setPadding(dimensionPixelSize6, 0, dimensionPixelSize6, 0);
            getSectionsFromIndexer();
            updateLongList(this.mOldChildCount);
            setScrollbarPosition(recyclerView.getVerticalScrollbarPosition());
            postAutoHide();
            this.mVibrateIndex = SeslHapticFeedbackConstantsReflector.semGetVibrationIndex(26);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public static Animator groupAnimatorOfFloat(Property property, float f, View... viewArr) {
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSet.Builder builder = null;
        for (int length = viewArr.length - 1; length >= 0; length--) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(viewArr[length], (Property<View, Float>) property, f);
            if (builder == null) {
                builder = animatorSet.play(ofFloat);
            } else {
                builder.with(ofFloat);
            }
        }
        return animatorSet;
    }

    public final void applyLayout(Rect rect, View view) {
        float f;
        view.layout(rect.left, rect.top, rect.right, rect.bottom);
        if (this.mLayoutFromRight) {
            f = rect.right - rect.left;
        } else {
            f = 0.0f;
        }
        view.setPivotX(f);
    }

    public final void beginDrag() {
        this.mPendingDrag = -1L;
        if (this.mListAdapter == null) {
            getSectionsFromIndexer();
        }
        RecyclerView recyclerView = this.mRecyclerView;
        recyclerView.requestDisallowInterceptTouchEvent(true);
        MotionEvent obtain = MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0);
        recyclerView.onTouchEvent(obtain);
        obtain.recycle();
        setState(2);
    }

    public final boolean canScrollList(int i) {
        int itemCount;
        RecyclerView recyclerView = this.mRecyclerView;
        int childCount = recyclerView.getChildCount();
        if (childCount == 0) {
            return false;
        }
        int findFirstVisibleItemPosition = recyclerView.findFirstVisibleItemPosition();
        Rect rect = recyclerView.mListPadding;
        if (i > 0) {
            int bottom = recyclerView.getChildAt(childCount - 1).getBottom();
            int i2 = findFirstVisibleItemPosition + childCount;
            RecyclerView.Adapter adapter = recyclerView.mAdapter;
            if (adapter == null) {
                itemCount = 0;
            } else {
                itemCount = adapter.getItemCount();
            }
            if (i2 >= itemCount && bottom <= recyclerView.getHeight() - rect.bottom) {
                return false;
            }
            return true;
        }
        int top = recyclerView.getChildAt(0).getTop();
        if (findFirstVisibleItemPosition <= 0 && top >= rect.top) {
            return false;
        }
        return true;
    }

    public final TextView createPreviewTextView(Context context) {
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
        TextView textView = new TextView(context);
        textView.setLayoutParams(layoutParams);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        textView.setGravity(17);
        textView.setAlpha(0.0f);
        textView.setLayoutDirection(this.mRecyclerView.getLayoutDirection());
        return textView;
    }

    public final float getPosFromItemCount(int i, int i2, int i3) {
        float f;
        boolean z;
        int i4;
        float f2;
        int i5;
        int i6;
        Object[] objArr;
        if (this.mSectionIndexer == null || this.mListAdapter == null) {
            getSectionsFromIndexer();
        }
        float f3 = 0.0f;
        if (i2 == 0 || i3 == 0) {
            return 0.0f;
        }
        SectionIndexer sectionIndexer = this.mSectionIndexer;
        RecyclerView recyclerView = this.mRecyclerView;
        int paddingTop = recyclerView.getPaddingTop();
        RecyclerView.LayoutManager layoutManager = recyclerView.mLayout;
        if (paddingTop > 0 && (layoutManager instanceof LinearLayoutManager)) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            while (i > 0) {
                int i7 = i - 1;
                if (linearLayoutManager.findViewByPosition(i7) == null) {
                    break;
                }
                i = i7;
            }
        }
        int childAdapterPosition = i - RecyclerView.getChildAdapterPosition(recyclerView.getChildAt(0));
        if (childAdapterPosition < 0) {
            childAdapterPosition = 0;
        }
        View childAt = recyclerView.getChildAt(childAdapterPosition);
        if (childAt != null && childAt.getHeight() != 0) {
            if (i == 0) {
                f = (paddingTop - childAt.getTop()) / (childAt.getHeight() + paddingTop);
            } else {
                f = (-childAt.getTop()) / childAt.getHeight();
            }
        } else {
            f = 0.0f;
        }
        if (sectionIndexer != null && (objArr = this.mSections) != null && objArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        if (z && this.mMatchDragPosition) {
            if (i < 0) {
                return 0.0f;
            }
            int sectionForPosition = sectionIndexer.getSectionForPosition(i);
            int positionForSection = sectionIndexer.getPositionForSection(sectionForPosition);
            int length = this.mSections.length;
            if (sectionForPosition < length - 1) {
                int i8 = sectionForPosition + 1;
                if (i8 < length) {
                    i6 = sectionIndexer.getPositionForSection(i8);
                } else {
                    i6 = i3 - 1;
                }
                i5 = i6 - positionForSection;
            } else {
                i5 = i3 - positionForSection;
            }
            if (i5 != 0) {
                f3 = ((i + f) - positionForSection) / i5;
            }
            f2 = (sectionForPosition + f3) / length;
        } else {
            if (i2 == i3 && (i == 0 || (layoutManager instanceof StaggeredGridLayoutManager))) {
                if ((layoutManager instanceof StaggeredGridLayoutManager) && i != 0 && childAt != null) {
                    ((StaggeredGridLayoutManager.LayoutParams) childAt.getLayoutParams()).getClass();
                }
                return 0.0f;
            }
            if (layoutManager instanceof GridLayoutManager) {
                GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
                i4 = gridLayoutManager.mSpanCount / gridLayoutManager.mSpanSizeLookup.getSpanSize(i);
            } else if (layoutManager instanceof StaggeredGridLayoutManager) {
                i4 = ((StaggeredGridLayoutManager) layoutManager).mSpanCount;
            } else {
                i4 = 1;
            }
            f2 = ((f * i4) + i) / i3;
        }
        if (i + i2 == i3) {
            View childAt2 = recyclerView.getChildAt(i2 - 1);
            View childAt3 = recyclerView.getChildAt(0);
            int paddingBottom = recyclerView.getPaddingBottom() + (childAt2.getBottom() - recyclerView.getHeight());
            int top = paddingBottom - (childAt3.getTop() - recyclerView.getPaddingTop());
            if (top > childAt2.getHeight() || i > 0) {
                top = childAt2.getHeight();
            }
            int i9 = top - paddingBottom;
            if (i9 > 0 && top > 0) {
                return f2 + ((i9 / top) * (1.0f - f2));
            }
            return f2;
        }
        return f2;
    }

    public final float getPosFromMotionEvent(float f) {
        float f2 = this.mThumbRange;
        if (f2 <= 0.0f) {
            return 0.0f;
        }
        return MathUtils.clamp((f - this.mThumbOffset) / f2, 0.0f, 1.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void getSectionsFromIndexer() {
        this.mSectionIndexer = null;
        RecyclerView.Adapter adapter = this.mRecyclerView.mAdapter;
        if (adapter instanceof SectionIndexer) {
            this.mListAdapter = adapter;
            SectionIndexer sectionIndexer = (SectionIndexer) adapter;
            this.mSectionIndexer = sectionIndexer;
            this.mSections = sectionIndexer.getSections();
            return;
        }
        this.mListAdapter = adapter;
        this.mSections = null;
    }

    public final boolean isEnabled() {
        boolean z;
        if (this.mEnabled && !this.mLongList) {
            if (!canScrollList(1) && !canScrollList(-1)) {
                z = false;
            } else {
                z = true;
            }
            this.mLongList = z;
        }
        if (!this.mEnabled || !this.mLongList) {
            return false;
        }
        return true;
    }

    public final boolean isPointInside(float f, float f2) {
        boolean z;
        boolean z2;
        boolean z3 = this.mLayoutFromRight;
        ImageView imageView = this.mThumbImage;
        float f3 = this.mAdditionalTouchArea;
        if (!z3 ? f <= imageView.getRight() + f3 : f >= imageView.getLeft() - f3) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        float translationY = imageView.getTranslationY();
        float top = imageView.getTop() + translationY;
        float bottom = imageView.getBottom() + translationY;
        if (f2 >= top && f2 <= bottom) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2 || this.mState == 0) {
            return false;
        }
        return true;
    }

    public final void measurePreview(Rect rect, View view) {
        View view2 = this.mPreviewImage;
        int paddingLeft = view2.getPaddingLeft();
        Rect rect2 = this.mTempMargins;
        rect2.left = paddingLeft;
        rect2.top = view2.getPaddingTop();
        rect2.right = view2.getPaddingRight();
        rect2.bottom = view2.getPaddingBottom();
        if (this.mOverlayPosition == 0) {
            int i = rect2.left;
            int i2 = rect2.top;
            int i3 = rect2.right;
            Rect rect3 = this.mContainerRect;
            int width = rect3.width();
            view.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, (width - i) - i3), VideoPlayer.MEDIA_ERROR_SYSTEM), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(Math.max(0, rect3.height())), 0));
            int height = rect3.height();
            int measuredWidth = view.getMeasuredWidth();
            int i4 = (height / 10) + i2 + rect3.top;
            int measuredHeight = view.getMeasuredHeight() + i4;
            int i5 = ((width - measuredWidth) / 2) + rect3.left;
            rect.set(i5, i4, measuredWidth + i5, measuredHeight);
            return;
        }
        measureViewToSide(view, this.mThumbImage, rect);
    }

    public final void measureViewToSide(View view, View view2, Rect rect) {
        int i;
        int right;
        int i2;
        int i3;
        int left;
        boolean z = this.mLayoutFromRight;
        int i4 = this.mThumbMarginEnd;
        int i5 = this.mPreviewMarginEnd;
        if (z) {
            if (view2 != null) {
                i4 = i5;
            }
            i = i4;
            i4 = 0;
        } else {
            if (view2 != null) {
                i4 = i5;
            }
            i = 0;
        }
        Rect rect2 = this.mContainerRect;
        int width = rect2.width();
        if (view2 != null) {
            if (this.mLayoutFromRight) {
                width = view2.getLeft();
            } else {
                width -= view2.getRight();
            }
        }
        int max = Math.max(0, rect2.height());
        int max2 = Math.max(0, (width - i4) - i);
        view.measure(View.MeasureSpec.makeMeasureSpec(max2, VideoPlayer.MEDIA_ERROR_SYSTEM), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(max), 0));
        int min = Math.min(max2, view.getMeasuredWidth());
        if (this.mLayoutFromRight) {
            if (view2 == null) {
                left = rect2.right;
            } else {
                left = view2.getLeft();
            }
            i3 = left - i;
            i2 = i3 - min;
        } else {
            if (view2 == null) {
                right = rect2.left;
            } else {
                right = view2.getRight();
            }
            i2 = right + i4;
            i3 = i2 + min;
        }
        rect.set(i2, 0, i3, view.getMeasuredHeight() + 0);
    }

    public final void onScroll(int i, int i2, int i3) {
        if (!isEnabled()) {
            setState(0);
            return;
        }
        if ((canScrollList(1) || canScrollList(-1)) && this.mState != 2) {
            float f = this.mOldThumbPosition;
            if (f != -1.0f) {
                setThumbPos(f);
                this.mOldThumbPosition = -1.0f;
            } else {
                setThumbPos(getPosFromItemCount(i, i2, i3));
            }
        }
        this.mScrollCompleted = true;
        if (this.mState != 2) {
            setState(1);
            postAutoHide();
        }
    }

    public final void onStateDependencyChanged() {
        if (isEnabled()) {
            if (this.mState == 1) {
                postAutoHide();
                return;
            } else {
                setState(1);
                postAutoHide();
                return;
            }
        }
        setState(0);
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        Rect rect = this.mContainerRect;
        int i = rect.top;
        int i2 = rect.bottom;
        ImageView imageView = this.mTrackImage;
        float top = imageView.getTop();
        float bottom = imageView.getBottom();
        this.mScrollY = motionEvent.getY();
        if (!isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked == 3) {
                        this.mPendingDrag = -1L;
                        if (this.mState == 2) {
                            setState(0);
                        }
                        this.mScrollY = 0.0f;
                    }
                } else {
                    if (this.mPendingDrag >= 0 && Math.abs(motionEvent.getY() - 0.0f) > this.mScaledTouchSlop) {
                        beginDrag();
                        float f = this.mScrollY;
                        float f2 = i;
                        if (f > f2 && f < i2) {
                            float f3 = f2 + top;
                            if (f < f3) {
                                this.mScrollY = f3;
                            } else if (f > bottom) {
                                this.mScrollY = bottom;
                            }
                        }
                    }
                    if (this.mState == 2) {
                        float posFromMotionEvent = getPosFromMotionEvent(motionEvent.getY());
                        this.mOldThumbPosition = posFromMotionEvent;
                        setThumbPos(posFromMotionEvent);
                        if (this.mScrollCompleted) {
                            scrollTo(posFromMotionEvent);
                        }
                        float f4 = this.mScrollY;
                        float f5 = i;
                        if (f4 > f5 && f4 < i2) {
                            float f6 = f5 + top;
                            if (f4 < f6) {
                                this.mScrollY = f6;
                            } else if (f4 > bottom) {
                                this.mScrollY = bottom;
                            }
                        }
                        return true;
                    }
                }
            } else {
                if (this.mPendingDrag >= 0) {
                    beginDrag();
                    float posFromMotionEvent2 = getPosFromMotionEvent(motionEvent.getY());
                    this.mOldThumbPosition = posFromMotionEvent2;
                    setThumbPos(posFromMotionEvent2);
                    scrollTo(posFromMotionEvent2);
                }
                if (this.mState == 2) {
                    this.mRecyclerView.requestDisallowInterceptTouchEvent(false);
                    setState(1);
                    postAutoHide();
                    this.mScrollY = 0.0f;
                    return true;
                }
            }
        } else if (isPointInside(motionEvent.getX(), motionEvent.getY())) {
            beginDrag();
            return true;
        }
        return false;
    }

    public final void postAutoHide() {
        RecyclerView recyclerView = this.mRecyclerView;
        AnonymousClass1 anonymousClass1 = this.mDeferHide;
        recyclerView.removeCallbacks(anonymousClass1);
        recyclerView.postDelayed(anonymousClass1, 1500L);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void scrollTo(float r15) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.SeslRecyclerViewFastScroller.scrollTo(float):void");
    }

    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v3 */
    public final void setScrollbarPosition(int i) {
        RecyclerView.LayoutManager layoutManager = this.mRecyclerView.mLayout;
        ?? r1 = 1;
        if (i == 0 && layoutManager != null) {
            if (layoutManager.getLayoutDirection() == 1) {
                i = 1;
            } else {
                i = 2;
            }
        }
        if (this.mScrollbarPosition != i) {
            this.mScrollbarPosition = i;
            if (i == 1) {
                r1 = 0;
            }
            this.mLayoutFromRight = r1;
            int i2 = this.mPreviewResId[r1];
            View view = this.mPreviewImage;
            view.setBackgroundResource(i2);
            view.getBackground().setTintMode(PorterDuff.Mode.MULTIPLY);
            view.getBackground().setTint(this.mColorPrimary);
            updateLayout();
        }
    }

    public final void setState(int i) {
        int i2;
        this.mRecyclerView.removeCallbacks(this.mDeferHide);
        if (i == this.mState) {
            return;
        }
        ImageView imageView = this.mThumbImage;
        ImageView imageView2 = this.mTrackImage;
        boolean z = true;
        if (i != 0) {
            Drawable drawable = this.mThumbDrawable;
            if (i != 1) {
                if (i == 2) {
                    if (drawable != null) {
                        drawable.setTint(this.mColorPrimary);
                    }
                    transitionPreviewLayout(this.mCurrentSection);
                }
            } else {
                if (drawable != null) {
                    drawable.setTint(this.mThumbBackgroundColor);
                }
                transitionToVisible();
            }
        } else {
            this.mShowingPreview = false;
            this.mCurrentSection = -1;
            AnimatorSet animatorSet = this.mDecorAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                i2 = 150;
            } else {
                i2 = 0;
            }
            Animator duration = groupAnimatorOfFloat(View.ALPHA, 0.0f, imageView, imageView2, this.mPreviewImage, this.mPrimaryText, this.mSecondaryText).setDuration(i2);
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.mDecorAnimation = animatorSet2;
            animatorSet2.playTogether(duration);
            this.mDecorAnimation.setInterpolator(LINEAR_INTERPOLATOR);
            this.mDecorAnimation.start();
        }
        this.mState = i;
        if (i != 2) {
            z = false;
        }
        imageView.setPressed(z);
        imageView2.setPressed(z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0011, code lost:
    
        if (r6 < 0.0f) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setThumbPos(float r6) {
        /*
            r5 = this;
            android.graphics.Rect r0 = r5.mContainerRect
            int r1 = r0.top
            int r0 = r0.bottom
            r2 = 1065353216(0x3f800000, float:1.0)
            int r3 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r3 <= 0) goto Le
        Lc:
            r6 = r2
            goto L14
        Le:
            r2 = 0
            int r3 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r3 >= 0) goto L14
            goto Lc
        L14:
            float r2 = r5.mThumbRange
            float r6 = r6 * r2
            float r2 = r5.mThumbOffset
            float r6 = r6 + r2
            android.widget.ImageView r2 = r5.mThumbImage
            int r3 = r2.getHeight()
            float r3 = (float) r3
            r4 = 1073741824(0x40000000, float:2.0)
            float r3 = r3 / r4
            float r3 = r6 - r3
            r2.setTranslationY(r3)
            android.view.View r2 = r5.mPreviewImage
            int r3 = r2.getHeight()
            float r3 = (float) r3
            float r3 = r3 / r4
            float r1 = (float) r1
            float r1 = r1 + r3
            float r0 = (float) r0
            float r0 = r0 - r3
            float r6 = androidx.core.math.MathUtils.clamp(r6, r1, r0)
            float r6 = r6 - r3
            r2.setTranslationY(r6)
            android.widget.TextView r0 = r5.mPrimaryText
            r0.setTranslationY(r6)
            android.widget.TextView r5 = r5.mSecondaryText
            r5.setTranslationY(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.SeslRecyclerViewFastScroller.setThumbPos(float):void");
    }

    public final boolean transitionPreviewLayout(int i) {
        String str;
        boolean isEmpty;
        Object obj;
        Object[] objArr = this.mSections;
        if (objArr != null && i >= 0 && i < objArr.length && (obj = objArr[i]) != null) {
            str = obj.toString();
        } else {
            str = null;
        }
        boolean z = this.mShowingPrimary;
        TextView textView = this.mPrimaryText;
        TextView textView2 = this.mSecondaryText;
        if (z) {
            textView2 = textView;
            textView = textView2;
        }
        textView.setText(str);
        Rect rect = this.mTempBounds;
        measurePreview(rect, textView);
        applyLayout(rect, textView);
        int i2 = this.mState;
        if (i2 == 1) {
            textView2.setText("");
        } else if (i2 == 2 && textView2.getText().equals(str) && textView2.getAlpha() != 0.0f) {
            isEmpty = TextUtils.isEmpty(str);
            return !isEmpty;
        }
        AnimatorSet animatorSet = this.mPreviewAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        if (!textView2.getText().equals("")) {
            this.mRecyclerView.performHapticFeedback(this.mVibrateIndex);
        }
        Animator duration = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, 1.0f).setDuration(0L);
        Animator duration2 = ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) View.ALPHA, 0.0f).setDuration(0L);
        duration2.addListener(this.mSwitchPrimaryListener);
        int i3 = rect.left;
        View view = this.mPreviewImage;
        rect.left = i3 - view.getPaddingLeft();
        rect.top -= view.getPaddingTop();
        rect.right = view.getPaddingRight() + rect.right;
        rect.bottom = view.getPaddingBottom() + rect.bottom;
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofInt(LEFT, rect.left), PropertyValuesHolder.ofInt(TOP, rect.top), PropertyValuesHolder.ofInt(RIGHT, rect.right), PropertyValuesHolder.ofInt(BOTTOM, rect.bottom));
        ofPropertyValuesHolder.setDuration(100L);
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.mPreviewAnimation = animatorSet2;
        AnimatorSet.Builder with = animatorSet2.play(duration2).with(duration);
        with.with(ofPropertyValuesHolder);
        int width = (view.getWidth() - view.getPaddingLeft()) - view.getPaddingRight();
        int width2 = textView.getWidth();
        if (width2 > width) {
            textView.setScaleX(width / width2);
            with.with(ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.SCALE_X, 1.0f).setDuration(100L));
        } else {
            textView.setScaleX(1.0f);
        }
        int width3 = textView2.getWidth();
        if (width3 > width2) {
            with.with(ObjectAnimator.ofFloat(textView2, (Property<TextView, Float>) View.SCALE_X, width2 / width3).setDuration(100L));
        }
        this.mPreviewAnimation.setInterpolator(SeslAnimationUtils.SINE_IN_OUT_70);
        this.mPreviewAnimation.start();
        isEmpty = TextUtils.isEmpty(str);
        return !isEmpty;
    }

    public final void transitionToVisible() {
        AnimatorSet animatorSet = this.mDecorAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        Animator duration = groupAnimatorOfFloat(View.ALPHA, 1.0f, this.mThumbImage, this.mTrackImage).setDuration(167L);
        Animator duration2 = groupAnimatorOfFloat(View.ALPHA, 0.0f, this.mPreviewImage, this.mPrimaryText, this.mSecondaryText).setDuration(150L);
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.mDecorAnimation = animatorSet2;
        animatorSet2.playTogether(duration, duration2);
        this.mDecorAnimation.setInterpolator(SeslAnimationUtils.SINE_IN_OUT_70);
        this.mShowingPreview = false;
        this.mDecorAnimation.start();
    }

    public final void updateLayout() {
        int i;
        int i2;
        if (this.mUpdatingLayout) {
            return;
        }
        this.mUpdatingLayout = true;
        Rect rect = this.mContainerRect;
        rect.left = 0;
        rect.top = 0;
        RecyclerView recyclerView = this.mRecyclerView;
        rect.right = recyclerView.getWidth();
        rect.bottom = recyclerView.getHeight();
        int i3 = this.mScrollBarStyle;
        if (i3 == 16777216 || i3 == 0) {
            rect.left = recyclerView.getPaddingLeft() + rect.left;
            rect.top = recyclerView.getPaddingTop() + rect.top;
            rect.right -= recyclerView.getPaddingRight();
            rect.bottom -= recyclerView.getPaddingBottom();
            if (i3 == 16777216) {
                int i4 = this.mWidth;
                if (this.mScrollbarPosition == 2) {
                    rect.right += i4;
                } else {
                    rect.left -= i4;
                }
            }
        }
        ImageView imageView = this.mThumbImage;
        Rect rect2 = this.mTempBounds;
        measureViewToSide(imageView, null, rect2);
        applyLayout(rect2, imageView);
        int max = Math.max(0, rect.width());
        int max2 = Math.max(0, rect.height());
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max, VideoPlayer.MEDIA_ERROR_SYSTEM);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(max2), 0);
        ImageView imageView2 = this.mTrackImage;
        imageView2.measure(makeMeasureSpec, makeMeasureSpec2);
        int i5 = this.mThumbPosition;
        int i6 = this.mTrackBottomPadding;
        int i7 = this.mTrackTopPadding;
        if (i5 == 1) {
            i2 = rect.top + i7 + 0;
            i = (rect.bottom - i6) - 0;
        } else {
            int height = imageView.getHeight() / 2;
            int i8 = rect.top + height + i7 + 0;
            i = ((rect.bottom - height) - i6) - 0;
            i2 = i8;
        }
        if (i < i2) {
            Log.e("SeslFastScroller", SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0.m("Error occured during layoutTrack() because bottom[", i, "] is less than top[", i, "]."));
            i = i2;
        }
        int measuredWidth = imageView2.getMeasuredWidth();
        int width = ((imageView.getWidth() - measuredWidth) / 2) + imageView.getLeft();
        imageView2.layout(width, i2, measuredWidth + width, i);
        updateOffsetAndRange();
        this.mUpdatingLayout = false;
        TextView textView = this.mPrimaryText;
        measurePreview(rect2, textView);
        applyLayout(rect2, textView);
        TextView textView2 = this.mSecondaryText;
        measurePreview(rect2, textView2);
        applyLayout(rect2, textView2);
        int i9 = rect2.left;
        View view = this.mPreviewImage;
        rect2.left = i9 - view.getPaddingLeft();
        rect2.top -= view.getPaddingTop();
        rect2.right = view.getPaddingRight() + rect2.right;
        rect2.bottom = view.getPaddingBottom() + rect2.bottom;
        applyLayout(rect2, view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
    
        if (canScrollList(-1) == false) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateLongList(int r2) {
        /*
            r1 = this;
            if (r2 <= 0) goto L11
            r2 = 1
            boolean r0 = r1.canScrollList(r2)
            if (r0 != 0) goto L12
            r0 = -1
            boolean r0 = r1.canScrollList(r0)
            if (r0 == 0) goto L11
            goto L12
        L11:
            r2 = 0
        L12:
            boolean r0 = r1.mLongList
            if (r0 == r2) goto L1b
            r1.mLongList = r2
            r1.onStateDependencyChanged()
        L1b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.SeslRecyclerViewFastScroller.updateLongList(int):void");
    }

    public final void updateOffsetAndRange() {
        float top;
        float bottom;
        int i = this.mThumbPosition;
        ImageView imageView = this.mTrackImage;
        if (i == 1) {
            float height = this.mThumbImage.getHeight() / 2.0f;
            top = imageView.getTop() + height;
            bottom = imageView.getBottom() - height;
        } else {
            top = imageView.getTop();
            bottom = imageView.getBottom();
        }
        this.mThumbOffset = top;
        float f = (bottom - top) - this.mImmersiveBottomPadding;
        this.mThumbRange = f;
        if (f < 0.0f) {
            this.mThumbRange = 0.0f;
        }
    }
}
