package androidx.leanback.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.CircularIntArray;
import androidx.collection.CollectionPlatformUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.leanback.widget.Grid;
import androidx.leanback.widget.ItemAlignment;
import androidx.leanback.widget.ItemAlignmentFacet;
import androidx.leanback.widget.WindowAlignment;
import androidx.recyclerview.widget.GapWorker;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.samsung.android.knox.container.KnoxContainerManager;
import com.samsung.android.nexus.video.VideoPlayer;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class GridLayoutManager extends RecyclerView.LayoutManager {
    public static final Rect sTempRect = new Rect();
    public static final int[] sTwoInts = new int[2];
    public BaseGridView mBaseGridView;
    public ArrayList mChildViewHolderSelectedListeners;
    public final int mChildVisibility;
    public final ViewsStateBundle mChildrenStates;
    public GridLinearSmoothScroller mCurrentSmoothScroller;
    public int[] mDisappearingPositions;
    public int mExtraLayoutSpaceInPreLayout;
    public int mFixedRowSizeSecondary;
    public int mFlag;
    public int mFocusPosition;
    public int mFocusPositionOffset;
    public int mGravity;
    public Grid mGrid;
    public final AnonymousClass2 mGridProvider;
    public final ItemAlignment mItemAlignment;
    public final int mMaxPendingMoves;
    public int mMaxSizeSecondary;
    public final int[] mMeasuredDimension;
    public int mNumRows;
    public int mNumRowsRequested;
    public int mOrientation;
    public OrientationHelper mOrientationHelper;
    public PendingMoveSmoothScroller mPendingMoveSmoothScroller;
    public int mPositionDeltaInPreLayout;
    public final SparseIntArray mPositionToRowInPostLayout;
    public int mPrimaryScrollExtra;
    public RecyclerView.Recycler mRecycler;
    public final AnonymousClass1 mRequestLayoutRunnable;
    public int[] mRowSizeSecondary;
    public int mRowSizeSecondaryRequested;
    public int mSaveContextLevel;
    public int mScrollOffsetSecondary;
    public int mSizePrimary;
    public final float mSmoothScrollSpeedFactor;
    public int mSpacingPrimary;
    public int mSpacingSecondary;
    public RecyclerView.State mState;
    public int mSubFocusPosition;
    public int mVerticalSpacing;
    public final WindowAlignment mWindowAlignment;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.leanback.widget.GridLayoutManager$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements Grid.Provider {
        public AnonymousClass2() {
        }

        public final void addItem(Object obj, int i, int i2, int i3) {
            int i4;
            int i5;
            PendingMoveSmoothScroller pendingMoveSmoothScroller;
            int i6;
            View view = (View) obj;
            GridLayoutManager gridLayoutManager = GridLayoutManager.this;
            if (i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE) {
                boolean z = gridLayoutManager.mGrid.mReversedFlow;
                WindowAlignment windowAlignment = gridLayoutManager.mWindowAlignment;
                if (!z) {
                    i3 = windowAlignment.mMainAxis.mPaddingMin;
                } else {
                    WindowAlignment.Axis axis = windowAlignment.mMainAxis;
                    i3 = axis.mSize - axis.mPaddingMax;
                }
            }
            if (!gridLayoutManager.mGrid.mReversedFlow) {
                i5 = i + i3;
                i4 = i3;
            } else {
                i4 = i3 - i;
                i5 = i3;
            }
            int rowStartSecondary = (gridLayoutManager.getRowStartSecondary(i2) + gridLayoutManager.mWindowAlignment.mSecondAxis.mPaddingMin) - gridLayoutManager.mScrollOffsetSecondary;
            gridLayoutManager.mChildrenStates.getClass();
            GridLayoutManager.this.layoutChild(view, i2, i4, i5, rowStartSecondary);
            if (!gridLayoutManager.mState.mInPreLayout) {
                gridLayoutManager.updateScrollLimits();
            }
            if ((gridLayoutManager.mFlag & 3) != 1 && (pendingMoveSmoothScroller = gridLayoutManager.mPendingMoveSmoothScroller) != null) {
                boolean z2 = pendingMoveSmoothScroller.mStaggeredGrid;
                GridLayoutManager gridLayoutManager2 = GridLayoutManager.this;
                if (z2 && (i6 = pendingMoveSmoothScroller.mPendingMoves) != 0) {
                    pendingMoveSmoothScroller.mPendingMoves = gridLayoutManager2.processSelectionMoves(i6, true);
                }
                int i7 = pendingMoveSmoothScroller.mPendingMoves;
                if (i7 == 0 || ((i7 > 0 && gridLayoutManager2.hasCreatedLastItem()) || (pendingMoveSmoothScroller.mPendingMoves < 0 && gridLayoutManager2.hasCreatedFirstItem()))) {
                    pendingMoveSmoothScroller.mTargetPosition = gridLayoutManager2.mFocusPosition;
                    pendingMoveSmoothScroller.stop();
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0065  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0087  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00a1  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x009d A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x009d -> B:19:0x009f). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final int createItem(int r8, boolean r9, java.lang.Object[] r10, boolean r11) {
            /*
                Method dump skipped, instructions count: 282
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.AnonymousClass2.createItem(int, boolean, java.lang.Object[], boolean):int");
        }

        public final int getCount() {
            GridLayoutManager gridLayoutManager = GridLayoutManager.this;
            return gridLayoutManager.mState.getItemCount() + gridLayoutManager.mPositionDeltaInPreLayout;
        }

        public final int getEdge(int i) {
            GridLayoutManager gridLayoutManager = GridLayoutManager.this;
            View findViewByPosition = gridLayoutManager.findViewByPosition(i - gridLayoutManager.mPositionDeltaInPreLayout);
            if ((gridLayoutManager.mFlag & 262144) != 0) {
                return gridLayoutManager.mOrientationHelper.getDecoratedEnd(findViewByPosition);
            }
            return gridLayoutManager.mOrientationHelper.getDecoratedStart(findViewByPosition);
        }

        public final int getSize(int i) {
            GridLayoutManager gridLayoutManager = GridLayoutManager.this;
            View findViewByPosition = gridLayoutManager.findViewByPosition(i - gridLayoutManager.mPositionDeltaInPreLayout);
            Rect rect = GridLayoutManager.sTempRect;
            gridLayoutManager.getDecoratedBoundsWithMargins(rect, findViewByPosition);
            if (gridLayoutManager.mOrientation == 0) {
                return rect.width();
            }
            return rect.height();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class GridLinearSmoothScroller extends LinearSmoothScroller {
        public boolean mSkipOnStopInternal;

        public GridLinearSmoothScroller() {
            super(GridLayoutManager.this.mBaseGridView.getContext());
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public final float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return (25.0f / displayMetrics.densityDpi) * GridLayoutManager.this.mSmoothScrollSpeedFactor;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public final int calculateTimeForScrolling(int i) {
            int calculateTimeForScrolling = super.calculateTimeForScrolling(i);
            int i2 = GridLayoutManager.this.mWindowAlignment.mMainAxis.mSize;
            if (i2 > 0) {
                float f = (30.0f / i2) * i;
                if (calculateTimeForScrolling < f) {
                    return (int) f;
                }
                return calculateTimeForScrolling;
            }
            return calculateTimeForScrolling;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
        public final void onStop() {
            super.onStop();
            if (!this.mSkipOnStopInternal) {
                onStopInternal();
            }
            GridLayoutManager gridLayoutManager = GridLayoutManager.this;
            if (gridLayoutManager.mCurrentSmoothScroller == this) {
                gridLayoutManager.mCurrentSmoothScroller = null;
            }
            if (gridLayoutManager.mPendingMoveSmoothScroller == this) {
                gridLayoutManager.mPendingMoveSmoothScroller = null;
            }
        }

        public void onStopInternal() {
            View findViewByPosition = findViewByPosition(this.mTargetPosition);
            GridLayoutManager gridLayoutManager = GridLayoutManager.this;
            if (findViewByPosition == null) {
                int i = this.mTargetPosition;
                if (i >= 0) {
                    gridLayoutManager.scrollToSelection(i, false);
                    return;
                }
                return;
            }
            int i2 = gridLayoutManager.mFocusPosition;
            int i3 = this.mTargetPosition;
            if (i2 != i3) {
                gridLayoutManager.mFocusPosition = i3;
            }
            if (gridLayoutManager.hasFocus()) {
                gridLayoutManager.mFlag |= 32;
                findViewByPosition.requestFocus();
                gridLayoutManager.mFlag &= -33;
            }
            gridLayoutManager.dispatchChildSelected();
            gridLayoutManager.dispatchChildSelectedAndPositioned();
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
        public final void onTargetFound(View view, RecyclerView.SmoothScroller.Action action) {
            int i;
            int i2;
            int[] iArr = GridLayoutManager.sTwoInts;
            GridLayoutManager gridLayoutManager = GridLayoutManager.this;
            if (gridLayoutManager.getScrollPosition(view, null, iArr)) {
                if (gridLayoutManager.mOrientation == 0) {
                    i = iArr[0];
                    i2 = iArr[1];
                } else {
                    i = iArr[1];
                    i2 = iArr[0];
                }
                action.update(i, i2, calculateTimeForDeceleration((int) Math.sqrt((i2 * i2) + (i * i))), this.mDecelerateInterpolator);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public static final class LayoutParams extends RecyclerView.LayoutParams {
        public int[] mAlignMultiple;
        public int mAlignX;
        public int mAlignY;
        public ItemAlignmentFacet mAlignmentFacet;
        public int mBottomInset;
        public int mLeftInset;
        public int mRightInset;
        public int mTopInset;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((RecyclerView.LayoutParams) layoutParams);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class PendingMoveSmoothScroller extends GridLinearSmoothScroller {
        public int mPendingMoves;
        public final boolean mStaggeredGrid;

        public PendingMoveSmoothScroller(int i, boolean z) {
            super();
            this.mPendingMoves = i;
            this.mStaggeredGrid = z;
            this.mTargetPosition = -2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
        public final PointF computeScrollVectorForPosition(int i) {
            int i2;
            int i3 = this.mPendingMoves;
            if (i3 == 0) {
                return null;
            }
            GridLayoutManager gridLayoutManager = GridLayoutManager.this;
            if ((gridLayoutManager.mFlag & 262144) == 0 ? i3 < 0 : i3 > 0) {
                i2 = -1;
            } else {
                i2 = 1;
            }
            if (gridLayoutManager.mOrientation == 0) {
                return new PointF(i2, 0.0f);
            }
            return new PointF(0.0f, i2);
        }

        @Override // androidx.leanback.widget.GridLayoutManager.GridLinearSmoothScroller
        public final void onStopInternal() {
            super.onStopInternal();
            this.mPendingMoves = 0;
            View findViewByPosition = findViewByPosition(this.mTargetPosition);
            if (findViewByPosition != null) {
                GridLayoutManager.this.scrollToView(findViewByPosition, true);
            }
        }
    }

    public GridLayoutManager() {
        this(null);
    }

    public static int getAdapterPositionByView(View view) {
        LayoutParams layoutParams;
        if (view == null || (layoutParams = (LayoutParams) view.getLayoutParams()) == null || layoutParams.isItemRemoved()) {
            return -1;
        }
        return layoutParams.mViewHolder.getAbsoluteAdapterPosition();
    }

    public static int getDecoratedMeasuredHeightWithMargin(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        return RecyclerView.LayoutManager.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
    }

    public static int getDecoratedMeasuredWidthWithMargin(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        return RecyclerView.LayoutManager.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    public static int getSubPositionByView(View view, View view2) {
        ItemAlignmentFacet itemAlignmentFacet;
        if (view != null && view2 != null && (itemAlignmentFacet = ((LayoutParams) view.getLayoutParams()).mAlignmentFacet) != null) {
            ItemAlignmentFacet.ItemAlignmentDef[] itemAlignmentDefArr = itemAlignmentFacet.mAlignmentDefs;
            if (itemAlignmentDefArr.length > 1) {
                while (view2 != view) {
                    int id = view2.getId();
                    if (id != -1) {
                        for (int i = 1; i < itemAlignmentDefArr.length; i++) {
                            ItemAlignmentFacet.ItemAlignmentDef itemAlignmentDef = itemAlignmentDefArr[i];
                            int i2 = itemAlignmentDef.mFocusViewId;
                            if (i2 == -1) {
                                i2 = itemAlignmentDef.mViewId;
                            }
                            if (i2 == id) {
                                return i;
                            }
                        }
                    }
                    view2 = (View) view2.getParent();
                }
                return 0;
            }
            return 0;
        }
        return 0;
    }

    public final void appendVisibleItems() {
        int i;
        Grid grid = this.mGrid;
        if ((this.mFlag & 262144) != 0) {
            i = 0 - this.mExtraLayoutSpaceInPreLayout;
        } else {
            i = this.mExtraLayoutSpaceInPreLayout + this.mSizePrimary + 0;
        }
        grid.appendVisibleItems(i, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollHorizontally() {
        if (this.mOrientation == 0 || this.mNumRows > 1) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollVertically() {
        if (this.mOrientation == 1 || this.mNumRows > 1) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.State state, GapWorker.LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl) {
        try {
            saveContext(null, state);
            if (this.mOrientation != 0) {
                i = i2;
            }
            if (getChildCount() != 0 && i != 0) {
                int i3 = 0;
                if (i >= 0) {
                    i3 = 0 + this.mSizePrimary;
                }
                this.mGrid.collectAdjacentPrefetchPositions(i3, i, layoutPrefetchRegistryImpl);
            }
        } finally {
            leaveContext();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void collectInitialPrefetchPositions(int i, GapWorker.LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl) {
        int i2 = this.mBaseGridView.mInitialPrefetchItemCount;
        if (i != 0 && i2 != 0) {
            int max = Math.max(0, Math.min(this.mFocusPosition - ((i2 - 1) / 2), i - i2));
            for (int i3 = max; i3 < i && i3 < max + i2; i3++) {
                layoutPrefetchRegistryImpl.addPosition(i3, 0);
            }
        }
    }

    public final void dispatchChildSelected() {
        boolean z;
        View findViewByPosition;
        ArrayList arrayList = this.mChildViewHolderSelectedListeners;
        if (arrayList != null && arrayList.size() > 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return;
        }
        int i = this.mFocusPosition;
        if (i == -1) {
            findViewByPosition = null;
        } else {
            findViewByPosition = findViewByPosition(i);
        }
        if (findViewByPosition != null) {
            RecyclerView.ViewHolder childViewHolder = this.mBaseGridView.getChildViewHolder(findViewByPosition);
            BaseGridView baseGridView = this.mBaseGridView;
            int i2 = this.mFocusPosition;
            ArrayList arrayList2 = this.mChildViewHolderSelectedListeners;
            if (arrayList2 != null) {
                int size = arrayList2.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    } else {
                        ((OnChildViewHolderSelectedListener) this.mChildViewHolderSelectedListeners.get(size)).onChildViewHolderSelected(baseGridView, childViewHolder, i2);
                    }
                }
            }
        } else {
            BaseGridView baseGridView2 = this.mBaseGridView;
            ArrayList arrayList3 = this.mChildViewHolderSelectedListeners;
            if (arrayList3 != null) {
                int size2 = arrayList3.size();
                while (true) {
                    size2--;
                    if (size2 < 0) {
                        break;
                    } else {
                        ((OnChildViewHolderSelectedListener) this.mChildViewHolderSelectedListeners.get(size2)).onChildViewHolderSelected(baseGridView2, null, -1);
                    }
                }
            }
        }
        if ((this.mFlag & 3) != 1 && !this.mBaseGridView.isLayoutRequested()) {
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                if (getChildAt(i3).isLayoutRequested()) {
                    BaseGridView baseGridView3 = this.mBaseGridView;
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    ViewCompat.Api16Impl.postOnAnimation(baseGridView3, this.mRequestLayoutRunnable);
                    return;
                }
            }
        }
    }

    public final void dispatchChildSelectedAndPositioned() {
        boolean z;
        View findViewByPosition;
        ArrayList arrayList = this.mChildViewHolderSelectedListeners;
        if (arrayList != null && arrayList.size() > 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return;
        }
        int i = this.mFocusPosition;
        if (i == -1) {
            findViewByPosition = null;
        } else {
            findViewByPosition = findViewByPosition(i);
        }
        if (findViewByPosition != null) {
            this.mBaseGridView.getChildViewHolder(findViewByPosition);
            ArrayList arrayList2 = this.mChildViewHolderSelectedListeners;
            if (arrayList2 != null) {
                int size = arrayList2.size();
                while (true) {
                    size--;
                    if (size >= 0) {
                        ((OnChildViewHolderSelectedListener) this.mChildViewHolderSelectedListeners.get(size)).getClass();
                    } else {
                        return;
                    }
                }
            }
        } else {
            ArrayList arrayList3 = this.mChildViewHolderSelectedListeners;
            if (arrayList3 != null) {
                int size2 = arrayList3.size();
                while (true) {
                    size2--;
                    if (size2 >= 0) {
                        ((OnChildViewHolderSelectedListener) this.mChildViewHolderSelectedListeners.get(size2)).getClass();
                    } else {
                        return;
                    }
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getColumnCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        Grid grid;
        if (this.mOrientation == 1 && (grid = this.mGrid) != null) {
            return grid.mNumRows;
        }
        return super.getColumnCountForAccessibility(recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getDecoratedBottom(View view) {
        return (((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets.bottom + view.getBottom()) - ((LayoutParams) view.getLayoutParams()).mBottomInset;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void getDecoratedBoundsWithMargins(Rect rect, View view) {
        super.getDecoratedBoundsWithMargins(rect, view);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        rect.left += layoutParams.mLeftInset;
        rect.top += layoutParams.mTopInset;
        rect.right -= layoutParams.mRightInset;
        rect.bottom -= layoutParams.mBottomInset;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getDecoratedLeft(View view) {
        return (view.getLeft() - ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets.left) + ((LayoutParams) view.getLayoutParams()).mLeftInset;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getDecoratedRight(View view) {
        return (((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets.right + view.getRight()) - ((LayoutParams) view.getLayoutParams()).mRightInset;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getDecoratedTop(View view) {
        return (view.getTop() - ((RecyclerView.LayoutParams) view.getLayoutParams()).mDecorInsets.top) + ((LayoutParams) view.getLayoutParams()).mTopInset;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0035, code lost:
    
        if (r10 != 130) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x003d, code lost:
    
        if ((r9.mFlag & 524288) == 0) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0043, code lost:
    
        if ((r9.mFlag & 524288) == 0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
    
        if (r10 != 130) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:?, code lost:
    
        return 3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int getMovement(int r10) {
        /*
            r9 = this;
            int r0 = r9.mOrientation
            r1 = 130(0x82, float:1.82E-43)
            r2 = 66
            r3 = 33
            r4 = 0
            r5 = 3
            r6 = 2
            r7 = 1
            r8 = 17
            if (r0 != 0) goto L2b
            r0 = 262144(0x40000, float:3.67342E-40)
            if (r10 == r8) goto L25
            if (r10 == r3) goto L23
            if (r10 == r2) goto L1d
            if (r10 == r1) goto L1b
            goto L46
        L1b:
            r4 = r5
            goto L47
        L1d:
            int r9 = r9.mFlag
            r9 = r9 & r0
            if (r9 != 0) goto L47
            goto L38
        L23:
            r4 = r6
            goto L47
        L25:
            int r9 = r9.mFlag
            r9 = r9 & r0
            if (r9 != 0) goto L38
            goto L47
        L2b:
            if (r0 != r7) goto L46
            r0 = 524288(0x80000, float:7.34684E-40)
            if (r10 == r8) goto L40
            if (r10 == r3) goto L47
            if (r10 == r2) goto L3a
            if (r10 == r1) goto L38
            goto L46
        L38:
            r4 = r7
            goto L47
        L3a:
            int r9 = r9.mFlag
            r9 = r9 & r0
            if (r9 != 0) goto L23
            goto L1b
        L40:
            int r9 = r9.mFlag
            r9 = r9 & r0
            if (r9 != 0) goto L1b
            goto L23
        L46:
            r4 = r8
        L47:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.getMovement(int):int");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getRowCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        Grid grid;
        if (this.mOrientation == 0 && (grid = this.mGrid) != null) {
            return grid.mNumRows;
        }
        return super.getRowCountForAccessibility(recycler, state);
    }

    public final int getRowSizeSecondary(int i) {
        int i2 = this.mFixedRowSizeSecondary;
        if (i2 != 0) {
            return i2;
        }
        int[] iArr = this.mRowSizeSecondary;
        if (iArr == null) {
            return 0;
        }
        return iArr[i];
    }

    public final int getRowStartSecondary(int i) {
        int i2 = 0;
        if ((this.mFlag & 524288) != 0) {
            for (int i3 = this.mNumRows - 1; i3 > i; i3--) {
                i2 += getRowSizeSecondary(i3) + this.mSpacingSecondary;
            }
            return i2;
        }
        int i4 = 0;
        while (i2 < i) {
            i4 += getRowSizeSecondary(i2) + this.mSpacingSecondary;
            i2++;
        }
        return i4;
    }

    public final boolean getScrollPosition(View view, View view2, int[] iArr) {
        int top;
        int i;
        int left;
        int i2;
        int subPositionByView;
        WindowAlignment windowAlignment = this.mWindowAlignment;
        WindowAlignment.Axis axis = windowAlignment.mMainAxis;
        if (this.mOrientation == 0) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.getClass();
            top = view.getLeft() + layoutParams.mLeftInset;
            i = layoutParams.mAlignX;
        } else {
            LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
            layoutParams2.getClass();
            top = view.getTop() + layoutParams2.mTopInset;
            i = layoutParams2.mAlignY;
        }
        int scroll = axis.getScroll(top + i);
        if (view2 != null && (subPositionByView = getSubPositionByView(view, view2)) != 0) {
            int[] iArr2 = ((LayoutParams) view.getLayoutParams()).mAlignMultiple;
            scroll += iArr2[subPositionByView] - iArr2[0];
        }
        if (this.mOrientation == 0) {
            LayoutParams layoutParams3 = (LayoutParams) view.getLayoutParams();
            layoutParams3.getClass();
            left = view.getTop() + layoutParams3.mTopInset;
            i2 = layoutParams3.mAlignY;
        } else {
            LayoutParams layoutParams4 = (LayoutParams) view.getLayoutParams();
            layoutParams4.getClass();
            left = view.getLeft() + layoutParams4.mLeftInset;
            i2 = layoutParams4.mAlignX;
        }
        int scroll2 = windowAlignment.mSecondAxis.getScroll(left + i2);
        int i3 = scroll + this.mPrimaryScrollExtra;
        if (i3 == 0 && scroll2 == 0) {
            iArr[0] = 0;
            iArr[1] = 0;
            return false;
        }
        iArr[0] = i3;
        iArr[1] = scroll2;
        return true;
    }

    public final int getSizeSecondary() {
        int i;
        if ((this.mFlag & 524288) != 0) {
            i = 0;
        } else {
            i = this.mNumRows - 1;
        }
        return getRowSizeSecondary(i) + getRowStartSecondary(i);
    }

    public final boolean hasCreatedFirstItem() {
        if (getItemCount() != 0 && this.mBaseGridView.findViewHolderForAdapterPosition(0) == null) {
            return false;
        }
        return true;
    }

    public final boolean hasCreatedLastItem() {
        int itemCount = getItemCount();
        if (itemCount == 0 || this.mBaseGridView.findViewHolderForAdapterPosition(itemCount - 1) != null) {
            return true;
        }
        return false;
    }

    public final boolean isItemFullyVisible(int i) {
        RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.mBaseGridView.findViewHolderForAdapterPosition(i);
        if (findViewHolderForAdapterPosition == null) {
            return false;
        }
        View view = findViewHolderForAdapterPosition.itemView;
        if (view.getLeft() < 0 || view.getRight() > this.mBaseGridView.getWidth() || view.getTop() < 0 || view.getBottom() > this.mBaseGridView.getHeight()) {
            return false;
        }
        return true;
    }

    public final void layoutChild(View view, int i, int i2, int i3, int i4) {
        int decoratedMeasuredWidthWithMargin;
        int i5;
        int rowSizeSecondary;
        if (this.mOrientation == 0) {
            decoratedMeasuredWidthWithMargin = getDecoratedMeasuredHeightWithMargin(view);
        } else {
            decoratedMeasuredWidthWithMargin = getDecoratedMeasuredWidthWithMargin(view);
        }
        int i6 = this.mFixedRowSizeSecondary;
        if (i6 > 0) {
            decoratedMeasuredWidthWithMargin = Math.min(decoratedMeasuredWidthWithMargin, i6);
        }
        int i7 = this.mGravity;
        int i8 = i7 & 112;
        if ((this.mFlag & 786432) != 0) {
            i5 = Gravity.getAbsoluteGravity(i7 & 8388615, 1);
        } else {
            i5 = i7 & 7;
        }
        int i9 = this.mOrientation;
        if ((i9 != 0 || i8 != 48) && (i9 != 1 || i5 != 3)) {
            if ((i9 == 0 && i8 == 80) || (i9 == 1 && i5 == 5)) {
                rowSizeSecondary = getRowSizeSecondary(i) - decoratedMeasuredWidthWithMargin;
            } else if ((i9 == 0 && i8 == 16) || (i9 == 1 && i5 == 1)) {
                rowSizeSecondary = (getRowSizeSecondary(i) - decoratedMeasuredWidthWithMargin) / 2;
            }
            i4 += rowSizeSecondary;
        }
        int i10 = decoratedMeasuredWidthWithMargin + i4;
        if (this.mOrientation != 0) {
            int i11 = i4;
            i4 = i2;
            i2 = i11;
            i10 = i3;
            i3 = i10;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        RecyclerView.LayoutManager.layoutDecoratedWithMargins(view, i2, i4, i3, i10);
        Rect rect = sTempRect;
        super.getDecoratedBoundsWithMargins(rect, view);
        int i12 = i2 - rect.left;
        int i13 = i4 - rect.top;
        int i14 = rect.right - i3;
        int i15 = rect.bottom - i10;
        layoutParams.mLeftInset = i12;
        layoutParams.mTopInset = i13;
        layoutParams.mRightInset = i14;
        layoutParams.mBottomInset = i15;
        LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
        ItemAlignmentFacet itemAlignmentFacet = layoutParams2.mAlignmentFacet;
        ItemAlignment itemAlignment = this.mItemAlignment;
        if (itemAlignmentFacet == null) {
            ItemAlignment.Axis axis = itemAlignment.horizontal;
            layoutParams2.mAlignX = ItemAlignmentFacetHelper.getAlignmentPosition(view, axis, axis.mOrientation);
            ItemAlignment.Axis axis2 = itemAlignment.vertical;
            layoutParams2.mAlignY = ItemAlignmentFacetHelper.getAlignmentPosition(view, axis2, axis2.mOrientation);
            return;
        }
        int i16 = this.mOrientation;
        int[] iArr = layoutParams2.mAlignMultiple;
        ItemAlignmentFacet.ItemAlignmentDef[] itemAlignmentDefArr = itemAlignmentFacet.mAlignmentDefs;
        if (iArr == null || iArr.length != itemAlignmentDefArr.length) {
            layoutParams2.mAlignMultiple = new int[itemAlignmentDefArr.length];
        }
        for (int i17 = 0; i17 < itemAlignmentDefArr.length; i17++) {
            layoutParams2.mAlignMultiple[i17] = ItemAlignmentFacetHelper.getAlignmentPosition(view, itemAlignmentDefArr[i17], i16);
        }
        if (i16 == 0) {
            layoutParams2.mAlignX = layoutParams2.mAlignMultiple[0];
        } else {
            layoutParams2.mAlignY = layoutParams2.mAlignMultiple[0];
        }
        if (this.mOrientation == 0) {
            ItemAlignment.Axis axis3 = itemAlignment.vertical;
            layoutParams2.mAlignY = ItemAlignmentFacetHelper.getAlignmentPosition(view, axis3, axis3.mOrientation);
        } else {
            ItemAlignment.Axis axis4 = itemAlignment.horizontal;
            layoutParams2.mAlignX = ItemAlignmentFacetHelper.getAlignmentPosition(view, axis4, axis4.mOrientation);
        }
    }

    public final void leaveContext() {
        int i = this.mSaveContextLevel - 1;
        this.mSaveContextLevel = i;
        if (i == 0) {
            this.mRecycler = null;
            this.mState = null;
            this.mPositionDeltaInPreLayout = 0;
            this.mExtraLayoutSpaceInPreLayout = 0;
        }
    }

    public final void measureChild(View view) {
        int makeMeasureSpec;
        int i;
        int i2;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = sTempRect;
        calculateItemDecorationsForChild(rect, view);
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.left + rect.right;
        int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + rect.top + rect.bottom;
        if (this.mRowSizeSecondaryRequested == -2) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.mFixedRowSizeSecondary, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS);
        }
        if (this.mOrientation == 0) {
            i2 = ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), i3, ((ViewGroup.MarginLayoutParams) layoutParams).width);
            i = ViewGroup.getChildMeasureSpec(makeMeasureSpec, i4, ((ViewGroup.MarginLayoutParams) layoutParams).height);
        } else {
            int childMeasureSpec = ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), i4, ((ViewGroup.MarginLayoutParams) layoutParams).height);
            int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(makeMeasureSpec, i3, ((ViewGroup.MarginLayoutParams) layoutParams).width);
            i = childMeasureSpec;
            i2 = childMeasureSpec2;
        }
        view.measure(i2, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onAdapterChanged(RecyclerView.Adapter adapter) {
        if (adapter != null) {
            this.mGrid = null;
            this.mRowSizeSecondary = null;
            this.mFlag &= KnoxContainerManager.ERROR_INVALID_PASSWORD_RESET_TOKEN;
            this.mFocusPosition = -1;
            this.mFocusPositionOffset = 0;
            this.mChildrenStates.getClass();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00ce  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onAddFocusables(androidx.recyclerview.widget.RecyclerView r18, java.util.ArrayList r19, int r20, int r21) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.onAddFocusables(androidx.recyclerview.widget.RecyclerView, java.util.ArrayList, int, int):boolean");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onInitializeAccessibilityNodeInfo(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        boolean z;
        AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat;
        AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat2;
        saveContext(recycler, state);
        int itemCount = state.getItemCount();
        int i = this.mFlag;
        if ((262144 & i) != 0) {
            z = true;
        } else {
            z = false;
        }
        if ((i & 2048) == 0 || (itemCount > 1 && !isItemFullyVisible(0))) {
            if (this.mOrientation == 0) {
                if (z) {
                    accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_RIGHT;
                } else {
                    accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_LEFT;
                }
                accessibilityNodeInfoCompat.addAction(accessibilityActionCompat);
            } else {
                accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_UP);
            }
            accessibilityNodeInfoCompat.setScrollable(true);
        }
        if ((this.mFlag & 4096) == 0 || (itemCount > 1 && !isItemFullyVisible(itemCount - 1))) {
            if (this.mOrientation == 0) {
                if (z) {
                    accessibilityActionCompat2 = AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_LEFT;
                } else {
                    accessibilityActionCompat2 = AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_RIGHT;
                }
                accessibilityNodeInfoCompat.addAction(accessibilityActionCompat2);
            } else {
                accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_DOWN);
            }
            accessibilityNodeInfoCompat.setScrollable(true);
        }
        accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(getRowCountForAccessibility(recycler, state), getColumnCountForAccessibility(recycler, state), 0));
        leaveContext();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler recycler, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        Grid.Location location;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (this.mGrid != null && (layoutParams instanceof LayoutParams)) {
            int absoluteAdapterPosition = ((LayoutParams) layoutParams).mViewHolder.getAbsoluteAdapterPosition();
            int i = -1;
            if (absoluteAdapterPosition >= 0 && (location = this.mGrid.getLocation(absoluteAdapterPosition)) != null) {
                i = location.row;
            }
            int i2 = i;
            if (i2 < 0) {
                return;
            }
            int i3 = absoluteAdapterPosition / this.mGrid.mNumRows;
            if (this.mOrientation == 0) {
                accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(false, i2, 1, i3, 1, false));
            } else {
                accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(false, i3, 1, i2, 1, false));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00c9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ca  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.view.View onInterceptFocusSearch(android.view.View r8, int r9) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.onInterceptFocusSearch(android.view.View, int):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsAdded(int i, int i2) {
        Grid grid;
        int i3;
        int i4 = this.mFocusPosition;
        if (i4 != -1 && (grid = this.mGrid) != null && grid.mFirstVisibleIndex >= 0 && (i3 = this.mFocusPositionOffset) != Integer.MIN_VALUE && i <= i4 + i3) {
            this.mFocusPositionOffset = i3 + i2;
        }
        this.mChildrenStates.getClass();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsChanged() {
        this.mFocusPositionOffset = 0;
        this.mChildrenStates.getClass();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsMoved(int i, int i2) {
        int i3;
        int i4 = this.mFocusPosition;
        if (i4 != -1 && (i3 = this.mFocusPositionOffset) != Integer.MIN_VALUE) {
            int i5 = i4 + i3;
            if (i <= i5 && i5 < i + 1) {
                this.mFocusPositionOffset = (i2 - i) + i3;
            } else if (i < i5 && i2 > i5 - 1) {
                this.mFocusPositionOffset = i3 - 1;
            } else if (i > i5 && i2 < i5) {
                this.mFocusPositionOffset = i3 + 1;
            }
        }
        this.mChildrenStates.getClass();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsRemoved(int i, int i2) {
        Grid grid;
        int i3;
        int i4;
        int i5 = this.mFocusPosition;
        if (i5 != -1 && (grid = this.mGrid) != null && grid.mFirstVisibleIndex >= 0 && (i3 = this.mFocusPositionOffset) != Integer.MIN_VALUE && i <= (i4 = i5 + i3)) {
            if (i + i2 > i4) {
                this.mFocusPosition = (i - i4) + i3 + i5;
                this.mFocusPositionOffset = VideoPlayer.MEDIA_ERROR_SYSTEM;
            } else {
                this.mFocusPositionOffset = i3 - i2;
            }
        }
        this.mChildrenStates.getClass();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onItemsUpdated(int i, int i2) {
        int i3 = i2 + i;
        while (i < i3) {
            this.mChildrenStates.getClass();
            i++;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: CFG modification limit reached, blocks count: 447
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:64)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutChildren(androidx.recyclerview.widget.RecyclerView.Recycler r28, androidx.recyclerview.widget.RecyclerView.State r29) {
        /*
            Method dump skipped, instructions count: 1708
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.onLayoutChildren(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2) {
        int size;
        int size2;
        int mode;
        int paddingLeft;
        int paddingRight;
        int i3;
        saveContext(recycler, state);
        if (this.mOrientation == 0) {
            size2 = View.MeasureSpec.getSize(i);
            size = View.MeasureSpec.getSize(i2);
            mode = View.MeasureSpec.getMode(i2);
            paddingLeft = getPaddingTop();
            paddingRight = getPaddingBottom();
        } else {
            size = View.MeasureSpec.getSize(i);
            size2 = View.MeasureSpec.getSize(i2);
            mode = View.MeasureSpec.getMode(i);
            paddingLeft = getPaddingLeft();
            paddingRight = getPaddingRight();
        }
        int i4 = paddingRight + paddingLeft;
        this.mMaxSizeSecondary = size;
        int i5 = this.mRowSizeSecondaryRequested;
        if (i5 == -2) {
            int i6 = this.mNumRowsRequested;
            if (i6 == 0) {
                i6 = 1;
            }
            this.mNumRows = i6;
            this.mFixedRowSizeSecondary = 0;
            int[] iArr = this.mRowSizeSecondary;
            if (iArr == null || iArr.length != i6) {
                this.mRowSizeSecondary = new int[i6];
            }
            if (this.mState.mInPreLayout) {
                updatePositionDeltaInPreLayout();
            }
            processRowSizeSecondary(true);
            if (mode != Integer.MIN_VALUE) {
                if (mode != 0) {
                    if (mode == 1073741824) {
                        size = this.mMaxSizeSecondary;
                    } else {
                        throw new IllegalStateException("wrong spec");
                    }
                } else {
                    i3 = getSizeSecondary();
                    size = i3 + i4;
                }
            } else {
                size = Math.min(getSizeSecondary() + i4, this.mMaxSizeSecondary);
            }
        } else {
            if (mode != Integer.MIN_VALUE) {
                if (mode != 0) {
                    if (mode != 1073741824) {
                        throw new IllegalStateException("wrong spec");
                    }
                } else {
                    if (i5 == 0) {
                        i5 = size - i4;
                    }
                    this.mFixedRowSizeSecondary = i5;
                    int i7 = this.mNumRowsRequested;
                    if (i7 == 0) {
                        i7 = 1;
                    }
                    this.mNumRows = i7;
                    i3 = ((i7 - 1) * this.mSpacingSecondary) + (i5 * i7);
                    size = i3 + i4;
                }
            }
            int i8 = this.mNumRowsRequested;
            if (i8 == 0 && i5 == 0) {
                this.mNumRows = 1;
                this.mFixedRowSizeSecondary = size - i4;
            } else if (i8 == 0) {
                this.mFixedRowSizeSecondary = i5;
                int i9 = this.mSpacingSecondary;
                this.mNumRows = (size + i9) / (i5 + i9);
            } else if (i5 == 0) {
                this.mNumRows = i8;
                this.mFixedRowSizeSecondary = ((size - i4) - ((i8 - 1) * this.mSpacingSecondary)) / i8;
            } else {
                this.mNumRows = i8;
                this.mFixedRowSizeSecondary = i5;
            }
            if (mode == Integer.MIN_VALUE) {
                int i10 = this.mFixedRowSizeSecondary;
                int i11 = this.mNumRows;
                int i12 = ((i11 - 1) * this.mSpacingSecondary) + (i10 * i11) + i4;
                if (i12 < size) {
                    size = i12;
                }
            }
        }
        if (this.mOrientation == 0) {
            this.mRecyclerView.setMeasuredDimension(size2, size);
        } else {
            this.mRecyclerView.setMeasuredDimension(size, size2);
        }
        leaveContext();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean onRequestChildFocus(RecyclerView recyclerView, View view, View view2) {
        if ((this.mFlag & 32768) == 0 && getAdapterPositionByView(view) != -1 && (this.mFlag & 35) == 0) {
            scrollToView(view, view2, true, 0, 0);
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            return;
        }
        this.mFocusPosition = ((SavedState) parcelable).index;
        this.mFocusPositionOffset = 0;
        this.mChildrenStates.getClass();
        this.mFlag |= 256;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.index = this.mFocusPosition;
        this.mChildrenStates.getClass();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getAdapterPositionByView(getChildAt(i));
        }
        savedState.childStates = null;
        return savedState;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002c, code lost:
    
        if (r5 != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x004c, code lost:
    
        r7 = 4096;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0037, code lost:
    
        if (r5 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x004a, code lost:
    
        if (r7 == androidx.core.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_DOWN.getId()) goto L27;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean performAccessibilityAction(androidx.recyclerview.widget.RecyclerView.Recycler r5, androidx.recyclerview.widget.RecyclerView.State r6, int r7, android.os.Bundle r8) {
        /*
            r4 = this;
            int r8 = r4.mFlag
            r0 = 131072(0x20000, float:1.83671E-40)
            r8 = r8 & r0
            r0 = 0
            r1 = 1
            if (r8 == 0) goto Lb
            r8 = r1
            goto Lc
        Lb:
            r8 = r0
        Lc:
            if (r8 != 0) goto Lf
            return r1
        Lf:
            r4.saveContext(r5, r6)
            int r5 = r4.mFlag
            r8 = 262144(0x40000, float:3.67342E-40)
            r5 = r5 & r8
            if (r5 == 0) goto L1b
            r5 = r1
            goto L1c
        L1b:
            r5 = r0
        L1c:
            int r8 = r4.mOrientation
            r2 = 8192(0x2000, float:1.14794E-41)
            r3 = 4096(0x1000, float:5.74E-42)
            if (r8 != 0) goto L3a
            androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat r8 = androidx.core.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_LEFT
            int r8 = r8.getId()
            if (r7 != r8) goto L2f
            if (r5 == 0) goto L42
            goto L4c
        L2f:
            androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat r8 = androidx.core.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_RIGHT
            int r8 = r8.getId()
            if (r7 != r8) goto L4d
            if (r5 == 0) goto L4c
            goto L42
        L3a:
            androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat r5 = androidx.core.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_UP
            int r5 = r5.getId()
            if (r7 != r5) goto L44
        L42:
            r7 = r2
            goto L4d
        L44:
            androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat r5 = androidx.core.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_DOWN
            int r5 = r5.getId()
            if (r7 != r5) goto L4d
        L4c:
            r7 = r3
        L4d:
            int r5 = r4.mFocusPosition
            if (r5 != 0) goto L55
            if (r7 != r2) goto L55
            r8 = r1
            goto L56
        L55:
            r8 = r0
        L56:
            int r6 = r6.getItemCount()
            int r6 = r6 - r1
            if (r5 != r6) goto L61
            if (r7 != r3) goto L61
            r5 = r1
            goto L62
        L61:
            r5 = r0
        L62:
            if (r8 != 0) goto L7b
            if (r5 == 0) goto L67
            goto L7b
        L67:
            if (r7 == r3) goto L74
            if (r7 == r2) goto L6c
            goto L89
        L6c:
            r4.processPendingMovement(r0)
            r5 = -1
            r4.processSelectionMoves(r5, r0)
            goto L89
        L74:
            r4.processPendingMovement(r1)
            r4.processSelectionMoves(r1, r0)
            goto L89
        L7b:
            android.view.accessibility.AccessibilityEvent r5 = android.view.accessibility.AccessibilityEvent.obtain(r3)
            androidx.leanback.widget.BaseGridView r6 = r4.mBaseGridView
            r6.onInitializeAccessibilityEvent(r5)
            androidx.leanback.widget.BaseGridView r6 = r4.mBaseGridView
            r6.requestSendAccessibilityEvent(r6, r5)
        L89:
            r4.leaveContext()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.performAccessibilityAction(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State, int, android.os.Bundle):boolean");
    }

    public final void prependVisibleItems() {
        int i;
        Grid grid = this.mGrid;
        if ((this.mFlag & 262144) != 0) {
            i = this.mSizePrimary + 0 + this.mExtraLayoutSpaceInPreLayout;
        } else {
            i = 0 - this.mExtraLayoutSpaceInPreLayout;
        }
        grid.prependVisibleItems(i, false);
    }

    public final void processPendingMovement(boolean z) {
        if (z) {
            if (hasCreatedLastItem()) {
                return;
            }
        } else if (hasCreatedFirstItem()) {
            return;
        }
        PendingMoveSmoothScroller pendingMoveSmoothScroller = this.mPendingMoveSmoothScroller;
        int i = -1;
        boolean z2 = true;
        if (pendingMoveSmoothScroller == null) {
            if (z) {
                i = 1;
            }
            if (this.mNumRows <= 1) {
                z2 = false;
            }
            PendingMoveSmoothScroller pendingMoveSmoothScroller2 = new PendingMoveSmoothScroller(i, z2);
            this.mFocusPositionOffset = 0;
            startSmoothScroll(pendingMoveSmoothScroller2);
            return;
        }
        if (z) {
            int i2 = pendingMoveSmoothScroller.mPendingMoves;
            if (i2 < GridLayoutManager.this.mMaxPendingMoves) {
                pendingMoveSmoothScroller.mPendingMoves = i2 + 1;
                return;
            }
            return;
        }
        int i3 = pendingMoveSmoothScroller.mPendingMoves;
        if (i3 > (-GridLayoutManager.this.mMaxPendingMoves)) {
            pendingMoveSmoothScroller.mPendingMoves = i3 - 1;
        }
    }

    public final boolean processRowSizeSecondary(boolean z) {
        CircularIntArray[] itemPositionsInRows;
        CircularIntArray circularIntArray;
        int i;
        int i2;
        int decoratedMeasuredWidthWithMargin;
        if (this.mFixedRowSizeSecondary != 0 || this.mRowSizeSecondary == null) {
            return false;
        }
        Grid grid = this.mGrid;
        if (grid == null) {
            itemPositionsInRows = null;
        } else {
            itemPositionsInRows = grid.getItemPositionsInRows(grid.mFirstVisibleIndex, grid.mLastVisibleIndex);
        }
        boolean z2 = false;
        int i3 = -1;
        for (int i4 = 0; i4 < this.mNumRows; i4++) {
            if (itemPositionsInRows == null) {
                circularIntArray = null;
            } else {
                circularIntArray = itemPositionsInRows[i4];
            }
            if (circularIntArray == null) {
                i = 0;
            } else {
                i = (circularIntArray.tail + 0) & circularIntArray.capacityBitmask;
            }
            int i5 = -1;
            for (int i6 = 0; i6 < i; i6 += 2) {
                if (i6 >= 0) {
                    int i7 = circularIntArray.tail;
                    int i8 = circularIntArray.capacityBitmask;
                    if (i6 < ((i7 + 0) & i8)) {
                        int[] iArr = circularIntArray.elements;
                        int i9 = i6 + 1;
                        if (i9 >= 0 && i9 < ((i7 + 0) & i8)) {
                            int i10 = iArr[(i9 + 0) & i8];
                            for (int i11 = iArr[(i6 + 0) & i8]; i11 <= i10; i11++) {
                                View findViewByPosition = findViewByPosition(i11 - this.mPositionDeltaInPreLayout);
                                if (findViewByPosition != null) {
                                    if (z) {
                                        measureChild(findViewByPosition);
                                    }
                                    if (this.mOrientation == 0) {
                                        decoratedMeasuredWidthWithMargin = getDecoratedMeasuredHeightWithMargin(findViewByPosition);
                                    } else {
                                        decoratedMeasuredWidthWithMargin = getDecoratedMeasuredWidthWithMargin(findViewByPosition);
                                    }
                                    if (decoratedMeasuredWidthWithMargin > i5) {
                                        i5 = decoratedMeasuredWidthWithMargin;
                                    }
                                }
                            }
                        } else {
                            int i12 = CollectionPlatformUtils.$r8$clinit;
                            throw new ArrayIndexOutOfBoundsException();
                        }
                    }
                } else {
                    circularIntArray.getClass();
                }
                int i13 = CollectionPlatformUtils.$r8$clinit;
                throw new ArrayIndexOutOfBoundsException();
            }
            int itemCount = this.mState.getItemCount();
            if (!this.mBaseGridView.mHasFixedSize && z && i5 < 0 && itemCount > 0) {
                if (i3 < 0) {
                    int i14 = this.mFocusPosition;
                    if (i14 < 0) {
                        i14 = 0;
                    } else if (i14 >= itemCount) {
                        i14 = itemCount - 1;
                    }
                    if (getChildCount() > 0) {
                        int layoutPosition = this.mBaseGridView.getChildViewHolder(getChildAt(0)).getLayoutPosition();
                        int layoutPosition2 = this.mBaseGridView.getChildViewHolder(getChildAt(getChildCount() - 1)).getLayoutPosition();
                        if (i14 >= layoutPosition && i14 <= layoutPosition2) {
                            i14 = i14 - layoutPosition <= layoutPosition2 - i14 ? layoutPosition - 1 : layoutPosition2 + 1;
                            if (i14 < 0 && layoutPosition2 < itemCount - 1) {
                                i14 = layoutPosition2 + 1;
                            } else if (i14 >= itemCount && layoutPosition > 0) {
                                i14 = layoutPosition - 1;
                            }
                        }
                    }
                    if (i14 >= 0 && i14 < itemCount) {
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
                        View viewForPosition = this.mRecycler.getViewForPosition(i14);
                        int[] iArr2 = this.mMeasuredDimension;
                        if (viewForPosition != null) {
                            LayoutParams layoutParams = (LayoutParams) viewForPosition.getLayoutParams();
                            Rect rect = sTempRect;
                            calculateItemDecorationsForChild(rect, viewForPosition);
                            viewForPosition.measure(ViewGroup.getChildMeasureSpec(makeMeasureSpec, getPaddingRight() + getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.left + rect.right, ((ViewGroup.MarginLayoutParams) layoutParams).width), ViewGroup.getChildMeasureSpec(makeMeasureSpec2, getPaddingBottom() + getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + rect.top + rect.bottom, ((ViewGroup.MarginLayoutParams) layoutParams).height));
                            iArr2[0] = getDecoratedMeasuredWidthWithMargin(viewForPosition);
                            iArr2[1] = getDecoratedMeasuredHeightWithMargin(viewForPosition);
                            this.mRecycler.recycleView(viewForPosition);
                        }
                        if (this.mOrientation == 0) {
                            i2 = iArr2[1];
                        } else {
                            i2 = iArr2[0];
                        }
                        i3 = i2;
                    }
                }
                if (i3 >= 0) {
                    i5 = i3;
                }
            }
            if (i5 < 0) {
                i5 = 0;
            }
            int[] iArr3 = this.mRowSizeSecondary;
            if (iArr3[i4] != i5) {
                iArr3[i4] = i5;
                z2 = true;
            }
        }
        return z2;
    }

    public final int processSelectionMoves(int i, boolean z) {
        int i2;
        int i3;
        int i4;
        Grid.Location location;
        Grid grid = this.mGrid;
        if (grid == null) {
            return i;
        }
        int i5 = this.mFocusPosition;
        if (i5 != -1 && (location = grid.getLocation(i5)) != null) {
            i2 = location.row;
        } else {
            i2 = -1;
        }
        int childCount = getChildCount();
        View view = null;
        int i6 = 0;
        while (true) {
            boolean z2 = true;
            if (i6 >= childCount || i == 0) {
                break;
            }
            if (i > 0) {
                i3 = i6;
            } else {
                i3 = (childCount - 1) - i6;
            }
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 0 || (hasFocus() && !childAt.hasFocusable())) {
                z2 = false;
            }
            if (z2) {
                int adapterPositionByView = getAdapterPositionByView(getChildAt(i3));
                Grid.Location location2 = this.mGrid.getLocation(adapterPositionByView);
                if (location2 == null) {
                    i4 = -1;
                } else {
                    i4 = location2.row;
                }
                if (i2 == -1) {
                    i5 = adapterPositionByView;
                    i2 = i4;
                } else if (i4 == i2 && ((i > 0 && adapterPositionByView > i5) || (i < 0 && adapterPositionByView < i5))) {
                    if (i > 0) {
                        i--;
                    } else {
                        i++;
                    }
                    i5 = adapterPositionByView;
                }
                view = childAt;
            }
            i6++;
        }
        if (view != null) {
            if (z) {
                if (hasFocus()) {
                    this.mFlag |= 32;
                    view.requestFocus();
                    this.mFlag &= -33;
                }
                this.mFocusPosition = i5;
                this.mSubFocusPosition = 0;
            } else {
                scrollToView(view, true);
            }
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void removeAndRecycleAllViews(RecyclerView.Recycler recycler) {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (childCount >= 0) {
                View childAt = getChildAt(childCount);
                removeViewAt(childCount);
                recycler.recycleView(childAt);
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x003b, code lost:
    
        r0 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void removeInvisibleViewsAtEnd() {
        /*
            r8 = this;
            int r0 = r8.mFlag
            r1 = 65600(0x10040, float:9.1925E-41)
            r1 = r1 & r0
            r2 = 65536(0x10000, float:9.18355E-41)
            if (r1 != r2) goto L77
            androidx.leanback.widget.Grid r1 = r8.mGrid
            int r2 = r8.mFocusPosition
            r3 = 262144(0x40000, float:3.67342E-40)
            r0 = r0 & r3
            r3 = 0
            if (r0 == 0) goto L16
            r8 = r3
            goto L19
        L16:
            int r8 = r8.mSizePrimary
            int r8 = r8 + r3
        L19:
            int r0 = r1.mLastVisibleIndex
            int r4 = r1.mFirstVisibleIndex
            if (r0 < r4) goto L6c
            if (r0 <= r2) goto L6c
            boolean r4 = r1.mReversedFlow
            r5 = 1
            if (r4 != 0) goto L31
            androidx.leanback.widget.Grid$Provider r4 = r1.mProvider
            androidx.leanback.widget.GridLayoutManager$2 r4 = (androidx.leanback.widget.GridLayoutManager.AnonymousClass2) r4
            int r0 = r4.getEdge(r0)
            if (r0 < r8) goto L3d
            goto L3b
        L31:
            androidx.leanback.widget.Grid$Provider r4 = r1.mProvider
            androidx.leanback.widget.GridLayoutManager$2 r4 = (androidx.leanback.widget.GridLayoutManager.AnonymousClass2) r4
            int r0 = r4.getEdge(r0)
            if (r0 > r8) goto L3d
        L3b:
            r0 = r5
            goto L3e
        L3d:
            r0 = r3
        L3e:
            if (r0 == 0) goto L6c
            androidx.leanback.widget.Grid$Provider r0 = r1.mProvider
            int r4 = r1.mLastVisibleIndex
            androidx.leanback.widget.GridLayoutManager$2 r0 = (androidx.leanback.widget.GridLayoutManager.AnonymousClass2) r0
            androidx.leanback.widget.GridLayoutManager r0 = androidx.leanback.widget.GridLayoutManager.this
            int r6 = r0.mPositionDeltaInPreLayout
            int r4 = r4 - r6
            android.view.View r4 = r0.findViewByPosition(r4)
            int r6 = r0.mFlag
            r6 = r6 & 3
            if (r6 != r5) goto L61
            androidx.recyclerview.widget.RecyclerView$Recycler r6 = r0.mRecycler
            androidx.recyclerview.widget.ChildHelper r7 = r0.mChildHelper
            int r7 = r7.indexOfChild(r4)
            r0.scrapOrRecycleView(r6, r7, r4)
            goto L66
        L61:
            androidx.recyclerview.widget.RecyclerView$Recycler r6 = r0.mRecycler
            r0.removeAndRecycleView(r4, r6)
        L66:
            int r0 = r1.mLastVisibleIndex
            int r0 = r0 - r5
            r1.mLastVisibleIndex = r0
            goto L19
        L6c:
            int r8 = r1.mLastVisibleIndex
            int r0 = r1.mFirstVisibleIndex
            if (r8 >= r0) goto L77
            r8 = -1
            r1.mLastVisibleIndex = r8
            r1.mFirstVisibleIndex = r8
        L77:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.removeInvisibleViewsAtEnd():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
    
        if ((((androidx.leanback.widget.GridLayoutManager.AnonymousClass2) r1.mProvider).getEdge(r1.mFirstVisibleIndex) + r0) <= r8) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004b, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0049, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0047, code lost:
    
        if ((((androidx.leanback.widget.GridLayoutManager.AnonymousClass2) r1.mProvider).getEdge(r1.mFirstVisibleIndex) - r0) >= r8) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void removeInvisibleViewsAtFront() {
        /*
            r8 = this;
            int r0 = r8.mFlag
            r1 = 65600(0x10040, float:9.1925E-41)
            r1 = r1 & r0
            r2 = 65536(0x10000, float:9.18355E-41)
            if (r1 != r2) goto L85
            androidx.leanback.widget.Grid r1 = r8.mGrid
            int r2 = r8.mFocusPosition
            r3 = 262144(0x40000, float:3.67342E-40)
            r0 = r0 & r3
            r3 = 0
            if (r0 == 0) goto L18
            int r8 = r8.mSizePrimary
            int r8 = r8 + r3
            goto L19
        L18:
            r8 = r3
        L19:
            int r0 = r1.mLastVisibleIndex
            int r4 = r1.mFirstVisibleIndex
            if (r0 < r4) goto L7a
            if (r4 >= r2) goto L7a
            androidx.leanback.widget.Grid$Provider r0 = r1.mProvider
            androidx.leanback.widget.GridLayoutManager$2 r0 = (androidx.leanback.widget.GridLayoutManager.AnonymousClass2) r0
            int r0 = r0.getSize(r4)
            boolean r4 = r1.mReversedFlow
            r5 = 1
            if (r4 != 0) goto L3c
            androidx.leanback.widget.Grid$Provider r4 = r1.mProvider
            int r6 = r1.mFirstVisibleIndex
            androidx.leanback.widget.GridLayoutManager$2 r4 = (androidx.leanback.widget.GridLayoutManager.AnonymousClass2) r4
            int r4 = r4.getEdge(r6)
            int r4 = r4 + r0
            if (r4 > r8) goto L4b
            goto L49
        L3c:
            androidx.leanback.widget.Grid$Provider r4 = r1.mProvider
            int r6 = r1.mFirstVisibleIndex
            androidx.leanback.widget.GridLayoutManager$2 r4 = (androidx.leanback.widget.GridLayoutManager.AnonymousClass2) r4
            int r4 = r4.getEdge(r6)
            int r4 = r4 - r0
            if (r4 < r8) goto L4b
        L49:
            r0 = r5
            goto L4c
        L4b:
            r0 = r3
        L4c:
            if (r0 == 0) goto L7a
            androidx.leanback.widget.Grid$Provider r0 = r1.mProvider
            int r4 = r1.mFirstVisibleIndex
            androidx.leanback.widget.GridLayoutManager$2 r0 = (androidx.leanback.widget.GridLayoutManager.AnonymousClass2) r0
            androidx.leanback.widget.GridLayoutManager r0 = androidx.leanback.widget.GridLayoutManager.this
            int r6 = r0.mPositionDeltaInPreLayout
            int r4 = r4 - r6
            android.view.View r4 = r0.findViewByPosition(r4)
            int r6 = r0.mFlag
            r6 = r6 & 3
            if (r6 != r5) goto L6f
            androidx.recyclerview.widget.RecyclerView$Recycler r6 = r0.mRecycler
            androidx.recyclerview.widget.ChildHelper r7 = r0.mChildHelper
            int r7 = r7.indexOfChild(r4)
            r0.scrapOrRecycleView(r6, r7, r4)
            goto L74
        L6f:
            androidx.recyclerview.widget.RecyclerView$Recycler r6 = r0.mRecycler
            r0.removeAndRecycleView(r4, r6)
        L74:
            int r0 = r1.mFirstVisibleIndex
            int r0 = r0 + r5
            r1.mFirstVisibleIndex = r0
            goto L19
        L7a:
            int r8 = r1.mLastVisibleIndex
            int r0 = r1.mFirstVisibleIndex
            if (r8 >= r0) goto L85
            r8 = -1
            r1.mLastVisibleIndex = r8
            r1.mFirstVisibleIndex = r8
        L85:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.removeInvisibleViewsAtFront():void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z) {
        return false;
    }

    public final void saveContext(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i = this.mSaveContextLevel;
        if (i == 0) {
            this.mRecycler = recycler;
            this.mState = state;
            this.mPositionDeltaInPreLayout = 0;
            this.mExtraLayoutSpaceInPreLayout = 0;
        }
        this.mSaveContextLevel = i + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
    
        if (r7 > r0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
    
        r7 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0034, code lost:
    
        if (r7 < r0) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int scrollDirectionPrimary(int r7) {
        /*
            Method dump skipped, instructions count: 204
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.scrollDirectionPrimary(int):int");
    }

    public final int scrollDirectionSecondary(int i) {
        int i2 = 0;
        if (i == 0) {
            return 0;
        }
        int i3 = -i;
        int childCount = getChildCount();
        if (this.mOrientation == 0) {
            while (i2 < childCount) {
                getChildAt(i2).offsetTopAndBottom(i3);
                i2++;
            }
        } else {
            while (i2 < childCount) {
                getChildAt(i2).offsetLeftAndRight(i3);
                i2++;
            }
        }
        this.mScrollOffsetSecondary += i;
        updateSecondaryScrollLimits();
        this.mBaseGridView.invalidate();
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        boolean z;
        int scrollDirectionSecondary;
        if ((this.mFlag & 512) != 0) {
            if (this.mGrid != null) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                saveContext(recycler, state);
                this.mFlag = (this.mFlag & (-4)) | 2;
                if (this.mOrientation == 0) {
                    scrollDirectionSecondary = scrollDirectionPrimary(i);
                } else {
                    scrollDirectionSecondary = scrollDirectionSecondary(i);
                }
                leaveContext();
                this.mFlag &= -4;
                return scrollDirectionSecondary;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void scrollToPosition(int i) {
        setSelection$1(i, false);
    }

    public final void scrollToSelection(int i, boolean z) {
        boolean z2;
        this.mPrimaryScrollExtra = 0;
        View findViewByPosition = findViewByPosition(i);
        RecyclerView.SmoothScroller smoothScroller = this.mSmoothScroller;
        boolean z3 = true;
        if (smoothScroller != null && smoothScroller.mRunning) {
            z2 = true;
        } else {
            z2 = false;
        }
        boolean z4 = !z2;
        if (z4 && !this.mBaseGridView.isLayoutRequested() && findViewByPosition != null && getAdapterPositionByView(findViewByPosition) == i) {
            this.mFlag |= 32;
            scrollToView(findViewByPosition, z);
            this.mFlag &= -33;
            return;
        }
        int i2 = this.mFlag;
        if ((i2 & 512) != 0 && (i2 & 64) == 0) {
            if (z && !this.mBaseGridView.isLayoutRequested()) {
                this.mFocusPosition = i;
                this.mSubFocusPosition = 0;
                this.mFocusPositionOffset = VideoPlayer.MEDIA_ERROR_SYSTEM;
                if (this.mGrid == null) {
                    z3 = false;
                }
                if (!z3) {
                    Log.w("GridLayoutManager:" + this.mBaseGridView.getId(), "setSelectionSmooth should not be called before first layout pass");
                    return;
                }
                GridLinearSmoothScroller gridLinearSmoothScroller = new GridLinearSmoothScroller() { // from class: androidx.leanback.widget.GridLayoutManager.4
                    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
                    public final PointF computeScrollVectorForPosition(int i3) {
                        if (getChildCount() == 0) {
                            return null;
                        }
                        GridLayoutManager gridLayoutManager = GridLayoutManager.this;
                        boolean z5 = false;
                        int position = RecyclerView.LayoutManager.getPosition(gridLayoutManager.getChildAt(0));
                        int i4 = 1;
                        if ((gridLayoutManager.mFlag & 262144) == 0 ? i3 < position : i3 > position) {
                            z5 = true;
                        }
                        if (z5) {
                            i4 = -1;
                        }
                        if (gridLayoutManager.mOrientation == 0) {
                            return new PointF(i4, 0.0f);
                        }
                        return new PointF(0.0f, i4);
                    }
                };
                gridLinearSmoothScroller.mTargetPosition = i;
                startSmoothScroll(gridLinearSmoothScroller);
                int i3 = gridLinearSmoothScroller.mTargetPosition;
                if (i3 != this.mFocusPosition) {
                    this.mFocusPosition = i3;
                    this.mSubFocusPosition = 0;
                    return;
                }
                return;
            }
            if (!z4) {
                GridLinearSmoothScroller gridLinearSmoothScroller2 = this.mCurrentSmoothScroller;
                if (gridLinearSmoothScroller2 != null) {
                    gridLinearSmoothScroller2.mSkipOnStopInternal = true;
                }
                this.mBaseGridView.stopScroll();
            }
            if (!this.mBaseGridView.isLayoutRequested() && findViewByPosition != null && getAdapterPositionByView(findViewByPosition) == i) {
                this.mFlag |= 32;
                scrollToView(findViewByPosition, z);
                this.mFlag &= -33;
                return;
            } else {
                this.mFocusPosition = i;
                this.mSubFocusPosition = 0;
                this.mFocusPositionOffset = VideoPlayer.MEDIA_ERROR_SYSTEM;
                this.mFlag |= 256;
                requestLayout();
                return;
            }
        }
        this.mFocusPosition = i;
        this.mSubFocusPosition = 0;
        this.mFocusPositionOffset = VideoPlayer.MEDIA_ERROR_SYSTEM;
    }

    public final void scrollToView(View view, boolean z) {
        scrollToView(view, view.findFocus(), z, 0, 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        boolean z;
        int scrollDirectionSecondary;
        int i2 = this.mFlag;
        if ((i2 & 512) != 0) {
            if (this.mGrid != null) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.mFlag = (i2 & (-4)) | 2;
                saveContext(recycler, state);
                if (this.mOrientation == 1) {
                    scrollDirectionSecondary = scrollDirectionPrimary(i);
                } else {
                    scrollDirectionSecondary = scrollDirectionSecondary(i);
                }
                leaveContext();
                this.mFlag &= -4;
                return scrollDirectionSecondary;
            }
        }
        return 0;
    }

    public final void setOrientation(int i) {
        if (i != 0 && i != 1) {
            return;
        }
        this.mOrientation = i;
        this.mOrientationHelper = OrientationHelper.createOrientationHelper(this, i);
        WindowAlignment windowAlignment = this.mWindowAlignment;
        windowAlignment.getClass();
        WindowAlignment.Axis axis = windowAlignment.horizontal;
        WindowAlignment.Axis axis2 = windowAlignment.vertical;
        if (i == 0) {
            windowAlignment.mMainAxis = axis;
            windowAlignment.mSecondAxis = axis2;
        } else {
            windowAlignment.mMainAxis = axis2;
            windowAlignment.mSecondAxis = axis;
        }
        this.mItemAlignment.getClass();
        this.mFlag |= 256;
    }

    public final void setRowHeight(int i) {
        if (i < 0 && i != -2) {
            throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Invalid row height: ", i));
        }
        this.mRowSizeSecondaryRequested = i;
    }

    public final void setSelection$1(int i, boolean z) {
        if ((this.mFocusPosition != i && i != -1) || this.mSubFocusPosition != 0 || this.mPrimaryScrollExtra != 0) {
            scrollToSelection(i, z);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void smoothScrollToPosition(RecyclerView recyclerView, int i) {
        setSelection$1(i, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void startSmoothScroll(RecyclerView.SmoothScroller smoothScroller) {
        GridLinearSmoothScroller gridLinearSmoothScroller = this.mCurrentSmoothScroller;
        if (gridLinearSmoothScroller != null) {
            gridLinearSmoothScroller.mSkipOnStopInternal = true;
        }
        super.startSmoothScroll(smoothScroller);
        if (smoothScroller.mRunning && (smoothScroller instanceof GridLinearSmoothScroller)) {
            GridLinearSmoothScroller gridLinearSmoothScroller2 = (GridLinearSmoothScroller) smoothScroller;
            this.mCurrentSmoothScroller = gridLinearSmoothScroller2;
            if (gridLinearSmoothScroller2 instanceof PendingMoveSmoothScroller) {
                this.mPendingMoveSmoothScroller = (PendingMoveSmoothScroller) gridLinearSmoothScroller2;
                return;
            } else {
                this.mPendingMoveSmoothScroller = null;
                return;
            }
        }
        this.mCurrentSmoothScroller = null;
        this.mPendingMoveSmoothScroller = null;
    }

    public final void updatePositionDeltaInPreLayout() {
        if (getChildCount() > 0) {
            this.mPositionDeltaInPreLayout = this.mGrid.mFirstVisibleIndex - ((LayoutParams) getChildAt(0).getLayoutParams()).getViewLayoutPosition();
        } else {
            this.mPositionDeltaInPreLayout = 0;
        }
    }

    public final void updateScrollLimits() {
        int i;
        int i2;
        int itemCount;
        int i3;
        boolean z;
        boolean z2;
        int i4;
        int i5;
        int top;
        int i6;
        int top2;
        int i7;
        boolean z3;
        boolean z4;
        if (this.mState.getItemCount() == 0) {
            return;
        }
        if ((this.mFlag & 262144) == 0) {
            i3 = this.mGrid.mLastVisibleIndex;
            int itemCount2 = this.mState.getItemCount() - 1;
            i = this.mGrid.mFirstVisibleIndex;
            i2 = itemCount2;
            itemCount = 0;
        } else {
            Grid grid = this.mGrid;
            int i8 = grid.mFirstVisibleIndex;
            i = grid.mLastVisibleIndex;
            i2 = 0;
            itemCount = this.mState.getItemCount() - 1;
            i3 = i8;
        }
        if (i3 >= 0 && i >= 0) {
            if (i3 == i2) {
                z = true;
            } else {
                z = false;
            }
            if (i == itemCount) {
                z2 = true;
            } else {
                z2 = false;
            }
            int i9 = VideoPlayer.MEDIA_ERROR_SYSTEM;
            int i10 = Integer.MAX_VALUE;
            WindowAlignment windowAlignment = this.mWindowAlignment;
            if (!z) {
                WindowAlignment.Axis axis = windowAlignment.mMainAxis;
                if (axis.mMaxEdge == Integer.MAX_VALUE) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3 && !z2) {
                    if (axis.mMinEdge == Integer.MIN_VALUE) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (z4) {
                        return;
                    }
                }
            }
            int[] iArr = sTwoInts;
            if (z) {
                i10 = this.mGrid.findRowMax(true, iArr);
                View findViewByPosition = findViewByPosition(iArr[1]);
                if (this.mOrientation == 0) {
                    LayoutParams layoutParams = (LayoutParams) findViewByPosition.getLayoutParams();
                    layoutParams.getClass();
                    top2 = findViewByPosition.getLeft() + layoutParams.mLeftInset;
                    i7 = layoutParams.mAlignX;
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) findViewByPosition.getLayoutParams();
                    layoutParams2.getClass();
                    top2 = findViewByPosition.getTop() + layoutParams2.mTopInset;
                    i7 = layoutParams2.mAlignY;
                }
                int i11 = i7 + top2;
                int[] iArr2 = ((LayoutParams) findViewByPosition.getLayoutParams()).mAlignMultiple;
                if (iArr2 != null && iArr2.length > 0) {
                    i4 = (iArr2[iArr2.length - 1] - iArr2[0]) + i11;
                } else {
                    i4 = i11;
                }
            } else {
                i4 = Integer.MAX_VALUE;
            }
            if (z2) {
                i9 = this.mGrid.findRowMin(false, iArr);
                View findViewByPosition2 = findViewByPosition(iArr[1]);
                if (this.mOrientation == 0) {
                    LayoutParams layoutParams3 = (LayoutParams) findViewByPosition2.getLayoutParams();
                    layoutParams3.getClass();
                    top = findViewByPosition2.getLeft() + layoutParams3.mLeftInset;
                    i6 = layoutParams3.mAlignX;
                } else {
                    LayoutParams layoutParams4 = (LayoutParams) findViewByPosition2.getLayoutParams();
                    layoutParams4.getClass();
                    top = findViewByPosition2.getTop() + layoutParams4.mTopInset;
                    i6 = layoutParams4.mAlignY;
                }
                i5 = i6 + top;
            } else {
                i5 = Integer.MIN_VALUE;
            }
            windowAlignment.mMainAxis.updateMinMax(i9, i10, i5, i4);
        }
    }

    public final void updateSecondaryScrollLimits() {
        WindowAlignment.Axis axis = this.mWindowAlignment.mSecondAxis;
        int i = axis.mPaddingMin - this.mScrollOffsetSecondary;
        int sizeSecondary = getSizeSecondary() + i;
        axis.updateMinMax(i, sizeSecondary, i, sizeSecondary);
    }

    /* JADX WARN: Type inference failed for: r2v7, types: [androidx.leanback.widget.GridLayoutManager$1] */
    public GridLayoutManager(BaseGridView baseGridView) {
        this.mSmoothScrollSpeedFactor = 1.0f;
        this.mMaxPendingMoves = 10;
        this.mOrientation = 0;
        this.mOrientationHelper = new OrientationHelper.AnonymousClass1(this);
        this.mPositionToRowInPostLayout = new SparseIntArray();
        this.mFlag = 221696;
        this.mChildViewHolderSelectedListeners = null;
        this.mFocusPosition = -1;
        this.mSubFocusPosition = 0;
        this.mFocusPositionOffset = 0;
        this.mGravity = 8388659;
        this.mNumRowsRequested = 1;
        this.mWindowAlignment = new WindowAlignment();
        this.mItemAlignment = new ItemAlignment();
        this.mMeasuredDimension = new int[2];
        this.mChildrenStates = new ViewsStateBundle();
        this.mRequestLayoutRunnable = new Runnable() { // from class: androidx.leanback.widget.GridLayoutManager.1
            @Override // java.lang.Runnable
            public final void run() {
                GridLayoutManager.this.requestLayout();
            }
        };
        this.mGridProvider = new AnonymousClass2();
        this.mBaseGridView = baseGridView;
        this.mChildVisibility = -1;
        if (this.mItemPrefetchEnabled) {
            this.mItemPrefetchEnabled = false;
            this.mPrefetchMaxCountObserved = 0;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.mRecycler.updateViewCacheSize();
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof RecyclerView.LayoutParams) {
            return new LayoutParams((RecyclerView.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    public final void scrollToView(View view, View view2, boolean z, int i, int i2) {
        if ((this.mFlag & 64) != 0) {
            return;
        }
        int adapterPositionByView = getAdapterPositionByView(view);
        int subPositionByView = getSubPositionByView(view, view2);
        if (adapterPositionByView != this.mFocusPosition || subPositionByView != this.mSubFocusPosition) {
            this.mFocusPosition = adapterPositionByView;
            this.mSubFocusPosition = subPositionByView;
            this.mFocusPositionOffset = 0;
            if ((this.mFlag & 3) != 1) {
                dispatchChildSelected();
            }
            if (this.mBaseGridView.isChildrenDrawingOrderEnabledInternal()) {
                this.mBaseGridView.invalidate();
            }
        }
        if (view == null) {
            return;
        }
        if (!view.hasFocus() && this.mBaseGridView.hasFocus()) {
            view.requestFocus();
        }
        if ((this.mFlag & 131072) == 0 && z) {
            return;
        }
        int[] iArr = sTwoInts;
        if (!getScrollPosition(view, view2, iArr) && i == 0 && i2 == 0) {
            return;
        }
        int i3 = iArr[0] + i;
        int i4 = iArr[1] + i2;
        if ((this.mFlag & 3) == 1) {
            scrollDirectionPrimary(i3);
            scrollDirectionSecondary(i4);
            return;
        }
        if (this.mOrientation != 0) {
            i4 = i3;
            i3 = i4;
        }
        if (z) {
            this.mBaseGridView.smoothScrollBy(i3, i4, false);
        } else {
            this.mBaseGridView.scrollBy(i3, i4);
            dispatchChildSelectedAndPositioned();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator() { // from class: androidx.leanback.widget.GridLayoutManager.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public Bundle childStates;
        public int index;

        public SavedState(Parcel parcel) {
            this.childStates = Bundle.EMPTY;
            this.index = parcel.readInt();
            this.childStates = parcel.readBundle(GridLayoutManager.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.index);
            parcel.writeBundle(this.childStates);
        }

        public SavedState() {
            this.childStates = Bundle.EMPTY;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void onLayoutCompleted(RecyclerView.State state) {
    }
}
