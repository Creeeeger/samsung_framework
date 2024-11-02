package androidx.slidingpanelayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.appcompat.util.SeslMisc;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import androidx.slidingpanelayout.R$styleable;
import com.android.systemui.R;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SlidingPaneLayout extends ViewGroup {
    public boolean mCanSlide;
    public int mDoubleCheckState;
    public final ViewDragHelper mDragHelper;
    public final boolean mDrawRoundedCorner;
    public View mDrawerPanel;
    public boolean mFirstLayout;
    public int mFixedPaneStartX;
    public float mInitialMotionX;
    public float mInitialMotionY;
    public boolean mIsAnimate;
    public boolean mIsLock;
    public boolean mIsNeedClose;
    public boolean mIsNeedOpen;
    public final boolean mIsSinglePanel;
    public boolean mIsSlideableViewTouched;
    public boolean mIsUnableToDrag;
    public int mLastValidVelocity;
    public final int mMarginBottom;
    public final int mMarginTop;
    public final int mOverhangSize;
    public int mPendingAction;
    public final ArrayList mPostedRunnables;
    public final TypedValue mPrefContentWidth;
    public final TypedValue mPrefDrawerWidth;
    public boolean mPreservedOpenState;
    public float mPrevMotionX;
    public int mPrevOrientation;
    public int mPrevWindowVisibility;
    public View mResizeChild;
    public final boolean mResizeOff;
    public final int mRoundedColor;
    public float mSlideOffset;
    public int mSlideRange;
    public View mSlideableView;
    public final int mSliderFadeColor;
    public final int mSlidingPaneDragArea;
    public final SlidingPaneRoundedCorner mSlidingPaneRoundedCorner;
    public final SeslSlidingState mSlidingState;
    public int mSmoothWidth;
    public int mStartMargin;
    public float mStartOffset;
    public int mStartSlideX;
    public final Rect mTmpRect;
    public final int mUserPreferredContentSize;
    public final int mUserPreferredDrawerSize;
    public VelocityTracker mVelocityTracker;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class AccessibilityDelegate extends AccessibilityDelegateCompat {
        public final Rect mTmpRect = new Rect();

        public AccessibilityDelegate() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName("androidx.slidingpanelayout.widget.SlidingPaneLayout");
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
            View.AccessibilityDelegate accessibilityDelegate = this.mOriginalDelegate;
            AccessibilityNodeInfo accessibilityNodeInfo = obtain.mInfo;
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            Rect rect = this.mTmpRect;
            accessibilityNodeInfo.getBoundsInScreen(rect);
            AccessibilityNodeInfo accessibilityNodeInfo2 = accessibilityNodeInfoCompat.mInfo;
            accessibilityNodeInfo2.setBoundsInScreen(rect);
            accessibilityNodeInfo2.setVisibleToUser(accessibilityNodeInfo.isVisibleToUser());
            accessibilityNodeInfo2.setPackageName(accessibilityNodeInfo.getPackageName());
            accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfo.getClassName());
            accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfo.getContentDescription());
            accessibilityNodeInfo2.setEnabled(accessibilityNodeInfo.isEnabled());
            accessibilityNodeInfoCompat.setClickable(accessibilityNodeInfo.isClickable());
            accessibilityNodeInfo2.setFocusable(accessibilityNodeInfo.isFocusable());
            accessibilityNodeInfo2.setFocused(accessibilityNodeInfo.isFocused());
            accessibilityNodeInfo2.setAccessibilityFocused(accessibilityNodeInfo.isAccessibilityFocused());
            accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfo.isSelected());
            accessibilityNodeInfo2.setLongClickable(accessibilityNodeInfo.isLongClickable());
            accessibilityNodeInfoCompat.addAction(accessibilityNodeInfo.getActions());
            accessibilityNodeInfo2.setMovementGranularities(accessibilityNodeInfo.getMovementGranularities());
            accessibilityNodeInfo.recycle();
            accessibilityNodeInfoCompat.setClassName("androidx.slidingpanelayout.widget.SlidingPaneLayout");
            accessibilityNodeInfoCompat.mVirtualDescendantId = -1;
            accessibilityNodeInfo2.setSource(view);
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            Object parentForAccessibility = ViewCompat.Api16Impl.getParentForAccessibility(view);
            if (parentForAccessibility instanceof View) {
                accessibilityNodeInfoCompat.mParentVirtualDescendantId = -1;
                accessibilityNodeInfo2.setParent((View) parentForAccessibility);
            }
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            int childCount = slidingPaneLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = slidingPaneLayout.getChildAt(i);
                if (!slidingPaneLayout.isDimmed(childAt) && childAt.getVisibility() == 0) {
                    ViewCompat.Api16Impl.setImportantForAccessibility(childAt, 1);
                    accessibilityNodeInfo2.addChild(childAt);
                }
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            int dimensionPixelSize = slidingPaneLayout.getResources().getDimensionPixelSize(R.dimen.sesl_sliding_pane_contents_drag_width_default);
            boolean z = true;
            if (slidingPaneLayout.mSlideOffset == 0.0f && slidingPaneLayout.mStartMargin < dimensionPixelSize) {
                View view2 = slidingPaneLayout.mDrawerPanel;
                if (view != view2) {
                    if (view2 instanceof ViewGroup) {
                        ViewGroup viewGroup2 = (ViewGroup) view2;
                        int childCount = viewGroup2.getChildCount();
                        for (int i = 0; i < childCount; i++) {
                            if (view == viewGroup2.getChildAt(i)) {
                                break;
                            }
                        }
                    }
                    z = false;
                }
                if (z) {
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    ViewCompat.Api16Impl.setImportantForAccessibility(view, 4);
                }
            } else {
                WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api16Impl.setImportantForAccessibility(view, 1);
            }
            if (slidingPaneLayout.isDimmed(view)) {
                return false;
            }
            return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DisableLayerRunnable implements Runnable {
        public final View mChildView;

        public DisableLayerRunnable(View view) {
            this.mChildView = view;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.mChildView.getParent() == SlidingPaneLayout.this) {
                this.mChildView.setLayerType(0, null);
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                View view = this.mChildView;
                slidingPaneLayout.getClass();
                Paint paint = ((LayoutParams) view.getLayoutParams()).dimPaint;
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api17Impl.setLayerPaint(view, paint);
            }
            SlidingPaneLayout.this.mPostedRunnables.remove(this);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DragHelperCallback extends ViewDragHelper.Callback {
        public DragHelperCallback() {
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final int clampViewPositionHorizontal(View view, int i) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            LayoutParams layoutParams = (LayoutParams) slidingPaneLayout.mSlideableView.getLayoutParams();
            if (slidingPaneLayout.isLayoutRtlSupport()) {
                int width = slidingPaneLayout.getWidth() - (slidingPaneLayout.mSlideableView.getWidth() + (slidingPaneLayout.getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin));
                return Math.max(Math.min(i, width), width - slidingPaneLayout.mSlideRange);
            }
            int paddingLeft = slidingPaneLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            return Math.min(Math.max(i, paddingLeft), slidingPaneLayout.mSlideRange + paddingLeft);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final int clampViewPositionVertical(View view, int i) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final int getViewHorizontalDragRange(View view) {
            return SlidingPaneLayout.this.mSlideRange;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void onEdgeDragStarted(int i, int i2) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            slidingPaneLayout.mDragHelper.captureChildView(slidingPaneLayout.mSlideableView, i2);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void onViewCaptured(View view, int i) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            int childCount = slidingPaneLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = slidingPaneLayout.getChildAt(i2);
                if (childAt.getVisibility() == 4) {
                    childAt.setVisibility(0);
                }
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void onViewDragStateChanged(int i) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            if (slidingPaneLayout.mDragHelper.mDragState == 0) {
                slidingPaneLayout.mIsAnimate = false;
                float f = slidingPaneLayout.mSlideOffset;
                if (f == 0.0f) {
                    slidingPaneLayout.updateObscuredViewsVisibility(slidingPaneLayout.mSlideableView);
                    slidingPaneLayout.mStartOffset = slidingPaneLayout.mSlideOffset;
                    slidingPaneLayout.sendAccessibilityEvent(32);
                    slidingPaneLayout.mPreservedOpenState = false;
                    return;
                }
                slidingPaneLayout.mStartOffset = f;
                slidingPaneLayout.sendAccessibilityEvent(32);
                slidingPaneLayout.mPreservedOpenState = true;
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void onViewPositionChanged(View view, int i, int i2, int i3) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            float f = slidingPaneLayout.mStartOffset;
            if (f == 0.0f && slidingPaneLayout.mLastValidVelocity > 0 && slidingPaneLayout.mSlideOffset > 0.2f) {
                if (i3 < 0) {
                    return;
                }
            } else if (f == 1.0f && slidingPaneLayout.mLastValidVelocity < 0 && slidingPaneLayout.mSlideOffset < 0.8f && i3 > 0) {
                return;
            }
            slidingPaneLayout.onPanelDragged(i);
            slidingPaneLayout.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void onViewReleased(View view, float f, float f2) {
            int paddingLeft;
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            if (slidingPaneLayout.isLayoutRtlSupport()) {
                int paddingRight = slidingPaneLayout.getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                if (f < 0.0f || (f == 0.0f && slidingPaneLayout.mSlideOffset > 0.5f)) {
                    paddingRight += slidingPaneLayout.mSlideRange;
                }
                paddingLeft = (slidingPaneLayout.getWidth() - paddingRight) - slidingPaneLayout.mSlideableView.getWidth();
            } else {
                paddingLeft = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + slidingPaneLayout.getPaddingLeft();
                if (f > 0.0f || (f == 0.0f && slidingPaneLayout.mSlideOffset > 0.5f)) {
                    paddingLeft += slidingPaneLayout.mSlideRange;
                }
            }
            slidingPaneLayout.mDragHelper.settleCapturedViewAt(paddingLeft, view.getTop());
            slidingPaneLayout.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final boolean tryCaptureView(View view, int i) {
            if (SlidingPaneLayout.this.mIsUnableToDrag) {
                return false;
            }
            return ((LayoutParams) view.getLayoutParams()).slideable;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator() { // from class: androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        };
        public boolean isOpen;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.mSuperState, i);
            parcel.writeInt(this.isOpen ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.isOpen = parcel.readInt() != 0;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SeslSlidingState {
        public int mCurrentState = 2;
    }

    public SlidingPaneLayout(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if ((layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams)) {
            return true;
        }
        return false;
    }

    public final boolean closePane(boolean z) {
        int i;
        int i2;
        if (this.mIsAnimate) {
            return true;
        }
        if (this.mSlideableView == null || this.mIsLock) {
            return false;
        }
        if (z) {
            if (!this.mFirstLayout && !smoothSlideTo(0.0f)) {
                return false;
            }
            this.mPreservedOpenState = false;
            return true;
        }
        if (isLayoutRtlSupport()) {
            i = this.mSlideRange;
        } else {
            i = this.mStartMargin;
        }
        onPanelDragged(i);
        if (this.mResizeOff) {
            resizeSlideableView(0.0f);
            if (isLayoutRtlSupport()) {
                this.mSlideableView.setRight(getWindowWidth() - this.mStartMargin);
                View view = this.mSlideableView;
                view.setLeft((view.getRight() - getWindowWidth()) + this.mStartMargin);
            } else {
                View view2 = this.mSlideableView;
                if (isLayoutRtlSupport()) {
                    i2 = this.mSlideRange;
                } else {
                    i2 = this.mStartMargin;
                }
                view2.setLeft(i2);
            }
        } else {
            resizeSlideableView(0.0f);
        }
        this.mPreservedOpenState = false;
        return true;
    }

    @Override // android.view.View
    public final void computeScroll() {
        if (this.mDragHelper.continueSettling()) {
            if (!this.mCanSlide) {
                this.mDragHelper.abort();
            } else {
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api16Impl.postInvalidateOnAnimation(this);
            }
        }
    }

    public final void dimChildView(float f, int i, View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f > 0.0f && i != 0) {
            int i2 = (((int) ((((-16777216) & i) >>> 24) * f)) << 24) | (16777215 & i);
            if (layoutParams.dimPaint == null) {
                layoutParams.dimPaint = new Paint();
            }
            layoutParams.dimPaint.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_OVER));
            if (view.getLayerType() != 2) {
                view.setLayerType(2, layoutParams.dimPaint);
            }
            Paint paint = ((LayoutParams) view.getLayoutParams()).dimPaint;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            ViewCompat.Api17Impl.setLayerPaint(view, paint);
            return;
        }
        if (view.getLayerType() != 0) {
            Paint paint2 = layoutParams.dimPaint;
            if (paint2 != null) {
                paint2.setColorFilter(null);
            }
            DisableLayerRunnable disableLayerRunnable = new DisableLayerRunnable(view);
            this.mPostedRunnables.add(disableLayerRunnable);
            WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
            ViewCompat.Api16Impl.postOnAnimation(this, disableLayerRunnable);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        boolean z;
        int left;
        int top;
        super.dispatchDraw(canvas);
        if (this.mDrawRoundedCorner && this.mSlideableView != null) {
            SlidingPaneRoundedCorner slidingPaneRoundedCorner = this.mSlidingPaneRoundedCorner;
            int i = this.mRoundedColor;
            if (slidingPaneRoundedCorner.mStartTopDrawable == null || slidingPaneRoundedCorner.mStartBottomDrawable == null || slidingPaneRoundedCorner.mEndTopDrawable == null || slidingPaneRoundedCorner.mEndBottomDrawable == null) {
                slidingPaneRoundedCorner.initRoundedCorner();
            }
            PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN);
            slidingPaneRoundedCorner.mStartTopDrawable.setColorFilter(porterDuffColorFilter);
            slidingPaneRoundedCorner.mEndTopDrawable.setColorFilter(porterDuffColorFilter);
            slidingPaneRoundedCorner.mEndBottomDrawable.setColorFilter(porterDuffColorFilter);
            slidingPaneRoundedCorner.mStartBottomDrawable.setColorFilter(porterDuffColorFilter);
            SlidingPaneRoundedCorner slidingPaneRoundedCorner2 = this.mSlidingPaneRoundedCorner;
            View view = this.mSlideableView;
            slidingPaneRoundedCorner2.getClass();
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            if (ViewCompat.Api17Impl.getLayoutDirection(view) == 1) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                slidingPaneRoundedCorner2.mRoundedCornerMode = 1;
            } else {
                slidingPaneRoundedCorner2.mRoundedCornerMode = 0;
            }
            if (view.getTranslationY() != 0.0f) {
                left = Math.round(view.getX());
                top = Math.round(view.getY());
            } else {
                left = view.getLeft();
                top = view.getTop();
            }
            int i2 = slidingPaneRoundedCorner2.mMarginTop + top;
            int width = view.getWidth() + left + slidingPaneRoundedCorner2.mRoundRadius;
            int height = (view.getHeight() + top) - slidingPaneRoundedCorner2.mMarginBottom;
            Rect rect = slidingPaneRoundedCorner2.mTmpRect;
            canvas.getClipBounds(rect);
            rect.right = Math.max(rect.left, view.getRight() + slidingPaneRoundedCorner2.mRoundRadius);
            canvas.clipRect(rect);
            Rect rect2 = slidingPaneRoundedCorner2.mRoundedCornerBounds;
            rect2.set(left, i2, width, height);
            int i3 = rect2.left;
            int i4 = rect2.right;
            int i5 = rect2.top;
            int i6 = rect2.bottom;
            if (slidingPaneRoundedCorner2.mRoundedCornerMode == 0) {
                Drawable drawable = slidingPaneRoundedCorner2.mStartTopDrawable;
                int i7 = slidingPaneRoundedCorner2.mRoundRadius;
                drawable.setBounds(i3 - i7, i5, i3, i7 + i5);
                slidingPaneRoundedCorner2.mStartTopDrawable.draw(canvas);
                Drawable drawable2 = slidingPaneRoundedCorner2.mStartBottomDrawable;
                int i8 = slidingPaneRoundedCorner2.mRoundRadius;
                drawable2.setBounds(i3 - i8, i6 - i8, i3, i6);
                slidingPaneRoundedCorner2.mStartBottomDrawable.draw(canvas);
                return;
            }
            Drawable drawable3 = slidingPaneRoundedCorner2.mEndTopDrawable;
            int i9 = slidingPaneRoundedCorner2.mRoundRadius;
            drawable3.setBounds(i4 - i9, i5, i4, i9 + i5);
            slidingPaneRoundedCorner2.mEndTopDrawable.draw(canvas);
            Drawable drawable4 = slidingPaneRoundedCorner2.mEndBottomDrawable;
            int i10 = slidingPaneRoundedCorner2.mRoundRadius;
            drawable4.setBounds(i4 - i10, i6 - i10, i4, i6);
            slidingPaneRoundedCorner2.mEndBottomDrawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        isLayoutRtlSupport();
        if (getChildCount() > 1) {
            getChildAt(1);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save();
        if (this.mCanSlide && !layoutParams.slideable && this.mSlideableView != null) {
            canvas.getClipBounds(this.mTmpRect);
            if (isLayoutRtlSupport()) {
                Rect rect = this.mTmpRect;
                rect.left = Math.max(rect.left, this.mSlideableView.getRight());
            } else {
                Rect rect2 = this.mTmpRect;
                rect2.right = Math.min(rect2.right, this.mSlideableView.getLeft());
            }
            canvas.clipRect(this.mTmpRect);
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        return drawChild;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    public final int getWindowWidth() {
        return getResources().getDisplayMetrics().widthPixels;
    }

    public final boolean isDimmed(View view) {
        if (view == null) {
            return false;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!this.mCanSlide || !layoutParams.dimWhenOffset || this.mSlideOffset <= 0.0f) {
            return false;
        }
        return true;
    }

    public final boolean isLayoutRtlSupport() {
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        if (ViewCompat.Api17Impl.getLayoutDirection(this) == 1) {
            return true;
        }
        return false;
    }

    public final boolean isOpen() {
        if (this.mCanSlide && this.mSlideOffset != 1.0f) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onConfigurationChanged(android.content.res.Configuration r4) {
        /*
            r3 = this;
            super.onConfigurationChanged(r4)
            boolean r0 = r3.isOpen()
            r1 = 2
            r2 = 1
            if (r0 == 0) goto L17
            int r0 = r4.orientation
            if (r0 != r2) goto L14
            int r0 = r3.mPrevOrientation
            if (r0 != r1) goto L14
            goto L17
        L14:
            r3.mPendingAction = r2
            goto L19
        L17:
            r3.mPendingAction = r1
        L19:
            boolean r0 = r3.mIsLock
            if (r0 == 0) goto L28
            boolean r0 = r3.isOpen()
            if (r0 == 0) goto L26
            r3.mPendingAction = r2
            goto L28
        L26:
            r3.mPendingAction = r1
        L28:
            int r4 = r4.orientation
            r3.mPrevOrientation = r4
            android.view.View r4 = r3.mDrawerPanel
            if (r4 != 0) goto L38
            java.lang.String r3 = "SeslSlidingPaneLayout"
            java.lang.String r4 = "mDrawerPanel is null"
            android.util.Log.e(r3, r4)
            goto L79
        L38:
            android.util.TypedValue r4 = new android.util.TypedValue
            r4.<init>()
            android.content.res.Resources r0 = r3.getResources()
            r1 = 2131169534(0x7f0710fe, float:1.79534E38)
            r0.getValue(r1, r4, r2)
            int r0 = r4.type
            r1 = 4
            r2 = -1
            if (r0 != r1) goto L58
            int r0 = r3.getWindowWidth()
            float r0 = (float) r0
            float r4 = r4.getFloat()
            float r4 = r4 * r0
            goto L67
        L58:
            r1 = 5
            if (r0 != r1) goto L69
            android.content.res.Resources r0 = r3.getResources()
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()
            float r4 = r4.getDimension(r0)
        L67:
            int r4 = (int) r4
            goto L6a
        L69:
            r4 = r2
        L6a:
            if (r4 == r2) goto L79
            android.view.View r0 = r3.mDrawerPanel
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            r0.width = r4
            android.view.View r3 = r3.mDrawerPanel
            r3.setLayoutParams(r0)
        L79:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.onConfigurationChanged(android.content.res.Configuration):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = true;
        int size = this.mPostedRunnables.size();
        for (int i = 0; i < size; i++) {
            ((DisableLayerRunnable) this.mPostedRunnables.get(i)).run();
        }
        this.mPostedRunnables.clear();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001e, code lost:
    
        if (r0 != 3) goto L67;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onInterceptTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 392
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:90:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:97:? A[RETURN, SYNTHETIC] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 415
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00aa, code lost:
    
        if (((android.view.ViewGroup.MarginLayoutParams) r7).width == 0) goto L34;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onMeasure(int r21, int r22) {
        /*
            Method dump skipped, instructions count: 678
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.onMeasure(int, int):void");
    }

    public final void onPanelDragged(int i) {
        int paddingLeft;
        int i2;
        if (this.mIsLock) {
            return;
        }
        if (this.mSlideableView == null) {
            this.mSlideOffset = 0.0f;
            return;
        }
        boolean isLayoutRtlSupport = isLayoutRtlSupport();
        LayoutParams layoutParams = (LayoutParams) this.mSlideableView.getLayoutParams();
        if (isLayoutRtlSupport) {
            paddingLeft = getPaddingRight();
        } else {
            paddingLeft = getPaddingLeft();
        }
        if (isLayoutRtlSupport) {
            i2 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        } else {
            i2 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        }
        int i3 = paddingLeft + i2;
        int width = this.mSlideableView.getWidth();
        if (isLayoutRtlSupport && this.mResizeOff) {
            width = getWidth() - i3;
        } else if (this.mIsNeedClose) {
            width = Math.max((getWidth() - this.mSlideRange) - i3, this.mSmoothWidth);
        } else if (this.mIsNeedOpen) {
            int width2 = getWidth() - i3;
            int i4 = this.mSmoothWidth;
            if (i4 == 0) {
                i4 = getWidth() - i3;
            }
            width = Math.min(width2, i4);
        }
        if (isLayoutRtlSupport) {
            i = (getWidth() - i) - width;
        }
        float f = i - i3;
        int i5 = this.mSlideRange;
        if (i5 == 0) {
            i5 = 1;
        }
        float f2 = f / i5;
        this.mSlideOffset = f2;
        float f3 = 1.0f;
        if (f2 <= 1.0f) {
            f3 = Math.max(f2, 0.0f);
        }
        this.mSlideOffset = f3;
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null && velocityTracker.getXVelocity() != 0.0f) {
            this.mLastValidVelocity = (int) this.mVelocityTracker.getXVelocity();
        }
        updateSlidingState();
        if (layoutParams.dimWhenOffset) {
            dimChildView(this.mSlideOffset, this.mSliderFadeColor, this.mSlideableView);
        }
        if (!this.mResizeOff) {
            resizeSlideableView(this.mSlideOffset);
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.mSuperState);
        boolean z = false;
        if (savedState.isOpen) {
            this.mIsNeedOpen = true;
            this.mIsNeedClose = false;
            if (Settings.System.getInt(getContext().getContentResolver(), "remove_animations", 0) == 1) {
                z = true;
            }
            openPane(!z);
        } else {
            this.mIsNeedOpen = false;
            this.mIsNeedClose = true;
            if (Settings.System.getInt(getContext().getContentResolver(), "remove_animations", 0) == 1) {
                z = true;
            }
            closePane(!z);
        }
        this.mPreservedOpenState = savedState.isOpen;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        boolean z;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.mCanSlide) {
            z = isOpen();
        } else {
            z = this.mPreservedOpenState;
        }
        savedState.isOpen = z;
        return savedState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.mFirstLayout = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0033, code lost:
    
        if (r0 != 3) goto L88;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouchEvent(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 539
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        int i2 = this.mPrevWindowVisibility;
        if ((i2 == 8 || i2 == 4) && i == 0) {
            if (isOpen()) {
                this.mPendingAction = 1;
            } else {
                this.mPendingAction = 2;
            }
        }
        if (this.mPrevWindowVisibility != i) {
            this.mPrevWindowVisibility = i;
        }
    }

    public final boolean openPane(boolean z) {
        int i;
        if (this.mIsAnimate) {
            return true;
        }
        if (this.mSlideableView == null || this.mIsLock) {
            return false;
        }
        if (z) {
            if (!this.mFirstLayout && !smoothSlideTo(1.0f)) {
                return false;
            }
            this.mPreservedOpenState = true;
            return true;
        }
        int i2 = this.mFixedPaneStartX;
        if (isLayoutRtlSupport()) {
            i = -this.mSlideRange;
        } else {
            i = this.mSlideRange;
        }
        int i3 = i2 + i;
        onPanelDragged(i3);
        if (this.mResizeOff) {
            resizeSlideableView(0.0f);
            if (isLayoutRtlSupport()) {
                this.mSlideableView.setRight((getWindowWidth() - this.mStartMargin) - this.mSlideRange);
                this.mSlideableView.setLeft(this.mSlideableView.getRight() - (getWindowWidth() - this.mStartMargin));
            } else {
                this.mSlideableView.setLeft(i3);
                this.mSlideableView.setRight((getWindowWidth() + i3) - this.mStartMargin);
            }
        } else {
            resizeSlideableView(1.0f);
        }
        this.mPreservedOpenState = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        boolean z;
        super.requestChildFocus(view, view2);
        if (!isInTouchMode() && !this.mCanSlide) {
            if (view == this.mSlideableView) {
                z = true;
            } else {
                z = false;
            }
            this.mPreservedOpenState = z;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void resizeSlideableView(float r15) {
        /*
            Method dump skipped, instructions count: 209
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.resizeSlideableView(float):void");
    }

    public final boolean smoothSlideTo(float f) {
        int paddingLeft;
        int width;
        this.mIsAnimate = false;
        if (!this.mCanSlide) {
            return false;
        }
        boolean isLayoutRtlSupport = isLayoutRtlSupport();
        LayoutParams layoutParams = (LayoutParams) this.mSlideableView.getLayoutParams();
        if (isLayoutRtlSupport) {
            int paddingRight = getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            int width2 = this.mSlideableView.getWidth();
            if (this.mIsNeedClose) {
                if (this.mResizeOff) {
                    width = getWidth();
                } else {
                    width = getWidth() - this.mSlideRange;
                }
            } else {
                if (this.mIsNeedOpen) {
                    width = getWidth();
                }
                paddingLeft = (int) (getWidth() - (((f * this.mSlideRange) + paddingRight) + width2));
            }
            width2 = width - paddingRight;
            paddingLeft = (int) (getWidth() - (((f * this.mSlideRange) + paddingRight) + width2));
        } else {
            paddingLeft = (int) ((f * this.mSlideRange) + getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
        }
        ViewDragHelper viewDragHelper = this.mDragHelper;
        View view = this.mSlideableView;
        if (!viewDragHelper.smoothSlideViewTo(view, paddingLeft, view.getTop())) {
            return false;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api16Impl.postInvalidateOnAnimation(this);
        this.mIsAnimate = true;
        return true;
    }

    public final void updateObscuredViewsVisibility(View view) {
        int paddingLeft;
        int width;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z;
        int i6;
        int i7;
        View view2 = view;
        boolean isLayoutRtlSupport = isLayoutRtlSupport();
        if (isLayoutRtlSupport) {
            paddingLeft = getWidth() - getPaddingRight();
        } else {
            paddingLeft = getPaddingLeft();
        }
        if (isLayoutRtlSupport) {
            width = getPaddingLeft();
        } else {
            width = getWidth() - getPaddingRight();
        }
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        if (view2 != null && view.isOpaque()) {
            i = view.getLeft();
            i2 = view.getRight();
            i3 = view.getTop();
            i4 = view.getBottom();
        } else {
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        }
        int childCount = getChildCount();
        int i8 = 0;
        while (i8 < childCount) {
            View childAt = getChildAt(i8);
            if (childAt != view2) {
                if (childAt.getVisibility() == 8) {
                    z = isLayoutRtlSupport;
                } else {
                    if (isLayoutRtlSupport) {
                        i5 = width;
                    } else {
                        i5 = paddingLeft;
                    }
                    int max = Math.max(i5, childAt.getLeft());
                    int max2 = Math.max(paddingTop, childAt.getTop());
                    z = isLayoutRtlSupport;
                    if (isLayoutRtlSupport) {
                        i6 = paddingLeft;
                    } else {
                        i6 = width;
                    }
                    int min = Math.min(i6, childAt.getRight());
                    int min2 = Math.min(height, childAt.getBottom());
                    if (max >= i && max2 >= i3 && min <= i2 && min2 <= i4) {
                        i7 = 4;
                    } else {
                        i7 = 0;
                    }
                    childAt.setVisibility(i7);
                }
                i8++;
                view2 = view;
                isLayoutRtlSupport = z;
            } else {
                return;
            }
        }
    }

    public final void updateSlidingState() {
        SeslSlidingState seslSlidingState = this.mSlidingState;
        if (seslSlidingState != null && this.mSlideableView != null) {
            float f = this.mSlideOffset;
            if (f == 0.0f) {
                if (seslSlidingState.mCurrentState != 0) {
                    seslSlidingState.mCurrentState = 0;
                    this.mStartOffset = f;
                    sendAccessibilityEvent(32);
                    return;
                }
                return;
            }
            if (f == 1.0f) {
                if (seslSlidingState.mCurrentState != 1) {
                    seslSlidingState.mCurrentState = 1;
                    this.mStartOffset = f;
                    sendAccessibilityEvent(32);
                    return;
                }
                return;
            }
            if (seslSlidingState.mCurrentState != 2) {
                seslSlidingState.mCurrentState = 2;
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public static final int[] ATTRS = {android.R.attr.layout_weight};
        public Paint dimPaint;
        public boolean dimWhenOffset;
        public boolean slideable;
        public final float weight;

        public LayoutParams() {
            super(-1, -1);
            this.weight = 0.0f;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.weight = 0.0f;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.weight = 0.0f;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.weight = 0.0f;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.weight = 0.0f;
            this.weight = layoutParams.weight;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.weight = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ATTRS);
            this.weight = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int color;
        this.mSliderFadeColor = -858993460;
        new CopyOnWriteArrayList();
        this.mFirstLayout = true;
        this.mTmpRect = new Rect();
        this.mPostedRunnables = new ArrayList();
        this.mDoubleCheckState = -1;
        this.mIsNeedClose = false;
        this.mIsNeedOpen = false;
        this.mSmoothWidth = 0;
        this.mStartOffset = 0.0f;
        this.mSlidingPaneDragArea = 0;
        this.mVelocityTracker = null;
        this.mStartMargin = 0;
        this.mRoundedColor = -1;
        this.mPrevWindowVisibility = 0;
        this.mFixedPaneStartX = 0;
        this.mPrevOrientation = 0;
        this.mStartSlideX = 0;
        this.mLastValidVelocity = 0;
        this.mResizeChild = null;
        this.mIsLock = false;
        this.mMarginTop = 0;
        this.mMarginBottom = 0;
        this.mUserPreferredContentSize = -1;
        this.mUserPreferredDrawerSize = -1;
        float f = context.getResources().getDisplayMetrics().density;
        this.mOverhangSize = (int) ((32.0f * f) + 0.5f);
        setWillNotDraw(false);
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegate());
        ViewCompat.Api16Impl.setImportantForAccessibility(this, 1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SlidingPaneLayout, i, 0);
        this.mIsSinglePanel = obtainStyledAttributes.getBoolean(4, false);
        boolean z = obtainStyledAttributes.getBoolean(0, true);
        this.mDrawRoundedCorner = z;
        if (SeslMisc.isLightTheme(context)) {
            color = getResources().getColor(R.color.sesl_sliding_pane_background_light, null);
        } else {
            color = getResources().getColor(R.color.sesl_sliding_pane_background_dark, null);
        }
        this.mRoundedColor = obtainStyledAttributes.getColor(1, color);
        boolean z2 = obtainStyledAttributes.getBoolean(7, false);
        this.mResizeOff = z2;
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(3, 0);
        this.mMarginTop = dimensionPixelSize;
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.mMarginBottom = dimensionPixelSize2;
        if (obtainStyledAttributes.hasValue(6)) {
            TypedValue typedValue = new TypedValue();
            this.mPrefDrawerWidth = typedValue;
            obtainStyledAttributes.getValue(6, typedValue);
        }
        if (obtainStyledAttributes.hasValue(5)) {
            TypedValue typedValue2 = new TypedValue();
            this.mPrefContentWidth = typedValue2;
            obtainStyledAttributes.getValue(5, typedValue2);
        }
        obtainStyledAttributes.recycle();
        ViewDragHelper seslCreate = ViewDragHelper.seslCreate(this, new DragHelperCallback());
        this.mDragHelper = seslCreate;
        seslCreate.mMinVelocity = f * 400.0f;
        seslCreate.mIsUpdateOffsetLR = z2;
        if (z) {
            SlidingPaneRoundedCorner slidingPaneRoundedCorner = new SlidingPaneRoundedCorner(context);
            this.mSlidingPaneRoundedCorner = slidingPaneRoundedCorner;
            slidingPaneRoundedCorner.mRoundedCornerMode = 0;
            if (slidingPaneRoundedCorner.mStartTopDrawable == null || slidingPaneRoundedCorner.mStartBottomDrawable == null || slidingPaneRoundedCorner.mEndTopDrawable == null || slidingPaneRoundedCorner.mEndBottomDrawable == null) {
                slidingPaneRoundedCorner.initRoundedCorner();
            }
            slidingPaneRoundedCorner.mMarginTop = dimensionPixelSize;
            slidingPaneRoundedCorner.mMarginBottom = dimensionPixelSize2;
        }
        Resources resources = getResources();
        boolean z3 = resources.getBoolean(R.dimen.sesl_sliding_layout_default_open);
        this.mSlidingPaneDragArea = resources.getDimensionPixelSize(R.dimen.sesl_sliding_pane_contents_drag_width_default);
        this.mPendingAction = z3 ? 1 : 2;
        this.mPrevOrientation = resources.getConfiguration().orientation;
        this.mSlidingState = new SeslSlidingState();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }
}
