package androidx.viewpager2.widget;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ScrollEventAdapter extends RecyclerView.OnScrollListener {
    public int mAdapterState;
    public ViewPager2.OnPageChangeCallback mCallback;
    public boolean mDataSetChangeHappened;
    public boolean mDispatchSelected;
    public int mDragStartPosition;
    public boolean mFakeDragging;
    public final LinearLayoutManager mLayoutManager;
    public final RecyclerView mRecyclerView;
    public boolean mScrollHappened;
    public int mScrollState;
    public final ScrollEventValues mScrollValues;
    public int mTarget;
    public final ViewPager2 mViewPager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ScrollEventValues {
        public float mOffset;
        public int mOffsetPx;
        public int mPosition;
    }

    public ScrollEventAdapter(ViewPager2 viewPager2) {
        this.mViewPager = viewPager2;
        ViewPager2.RecyclerViewImpl recyclerViewImpl = viewPager2.mRecyclerView;
        this.mRecyclerView = recyclerViewImpl;
        this.mLayoutManager = (LinearLayoutManager) recyclerViewImpl.getLayoutManager$1();
        this.mScrollValues = new ScrollEventValues();
        resetState();
    }

    public final void dispatchStateChanged(int i) {
        if ((this.mAdapterState == 3 && this.mScrollState == 0) || this.mScrollState == i) {
            return;
        }
        this.mScrollState = i;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void onScrollStateChanged(RecyclerView recyclerView, int i) {
        boolean z;
        boolean z2;
        ViewPager2.OnPageChangeCallback onPageChangeCallback;
        ViewPager2.OnPageChangeCallback onPageChangeCallback2;
        int i2 = this.mAdapterState;
        boolean z3 = true;
        if ((i2 != 1 || this.mScrollState != 1) && i == 1) {
            this.mFakeDragging = false;
            this.mAdapterState = 1;
            int i3 = this.mTarget;
            if (i3 != -1) {
                this.mDragStartPosition = i3;
                this.mTarget = -1;
            } else if (this.mDragStartPosition == -1) {
                this.mDragStartPosition = this.mLayoutManager.findFirstVisibleItemPosition();
            }
            dispatchStateChanged(1);
            return;
        }
        if (i2 != 1 && i2 != 4) {
            z = false;
        } else {
            z = true;
        }
        if (z && i == 2) {
            if (this.mScrollHappened) {
                dispatchStateChanged(2);
                this.mDispatchSelected = true;
                return;
            }
            return;
        }
        if (i2 != 1 && i2 != 4) {
            z2 = false;
        } else {
            z2 = true;
        }
        ScrollEventValues scrollEventValues = this.mScrollValues;
        if (z2 && i == 0) {
            updateScrollEventValues();
            if (!this.mScrollHappened) {
                int i4 = scrollEventValues.mPosition;
                if (i4 != -1 && (onPageChangeCallback2 = this.mCallback) != null) {
                    onPageChangeCallback2.onPageScrolled(0.0f, i4, 0);
                }
            } else if (scrollEventValues.mOffsetPx == 0) {
                int i5 = this.mDragStartPosition;
                int i6 = scrollEventValues.mPosition;
                if (i5 != i6 && (onPageChangeCallback = this.mCallback) != null) {
                    onPageChangeCallback.onPageSelected(i6);
                }
            } else {
                z3 = false;
            }
            if (z3) {
                dispatchStateChanged(0);
                resetState();
            }
        }
        if (this.mAdapterState == 2 && i == 0 && this.mDataSetChangeHappened) {
            updateScrollEventValues();
            if (scrollEventValues.mOffsetPx == 0) {
                int i7 = this.mTarget;
                int i8 = scrollEventValues.mPosition;
                if (i7 != i8) {
                    if (i8 == -1) {
                        i8 = 0;
                    }
                    ViewPager2.OnPageChangeCallback onPageChangeCallback3 = this.mCallback;
                    if (onPageChangeCallback3 != null) {
                        onPageChangeCallback3.onPageSelected(i8);
                    }
                }
                dispatchStateChanged(0);
                resetState();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
    
        if (r7 == r8) goto L17;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onScrolled(androidx.recyclerview.widget.RecyclerView r6, int r7, int r8) {
        /*
            r5 = this;
            r6 = 1
            r5.mScrollHappened = r6
            r5.updateScrollEventValues()
            boolean r0 = r5.mDispatchSelected
            r1 = -1
            androidx.viewpager2.widget.ScrollEventAdapter$ScrollEventValues r2 = r5.mScrollValues
            r3 = 0
            if (r0 == 0) goto L46
            r5.mDispatchSelected = r3
            if (r8 > 0) goto L2b
            if (r8 != 0) goto L29
            if (r7 >= 0) goto L18
            r7 = r6
            goto L19
        L18:
            r7 = r3
        L19:
            androidx.viewpager2.widget.ViewPager2 r8 = r5.mViewPager
            androidx.viewpager2.widget.ViewPager2$LinearLayoutManagerImpl r8 = r8.mLayoutManager
            int r8 = r8.getLayoutDirection()
            if (r8 != r6) goto L25
            r8 = r6
            goto L26
        L25:
            r8 = r3
        L26:
            if (r7 != r8) goto L29
            goto L2b
        L29:
            r7 = r3
            goto L2c
        L2b:
            r7 = r6
        L2c:
            if (r7 == 0) goto L36
            int r7 = r2.mOffsetPx
            if (r7 == 0) goto L36
            int r7 = r2.mPosition
            int r7 = r7 + r6
            goto L38
        L36:
            int r7 = r2.mPosition
        L38:
            r5.mTarget = r7
            int r8 = r5.mDragStartPosition
            if (r8 == r7) goto L56
            androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback r8 = r5.mCallback
            if (r8 == 0) goto L56
            r8.onPageSelected(r7)
            goto L56
        L46:
            int r7 = r5.mAdapterState
            if (r7 != 0) goto L56
            int r7 = r2.mPosition
            if (r7 != r1) goto L4f
            r7 = r3
        L4f:
            androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback r8 = r5.mCallback
            if (r8 == 0) goto L56
            r8.onPageSelected(r7)
        L56:
            int r7 = r2.mPosition
            if (r7 != r1) goto L5b
            r7 = r3
        L5b:
            float r8 = r2.mOffset
            int r0 = r2.mOffsetPx
            androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback r4 = r5.mCallback
            if (r4 == 0) goto L66
            r4.onPageScrolled(r8, r7, r0)
        L66:
            int r7 = r2.mPosition
            int r8 = r5.mTarget
            if (r7 == r8) goto L6e
            if (r8 != r1) goto L7c
        L6e:
            int r7 = r2.mOffsetPx
            if (r7 != 0) goto L7c
            int r7 = r5.mScrollState
            if (r7 == r6) goto L7c
            r5.dispatchStateChanged(r3)
            r5.resetState()
        L7c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.ScrollEventAdapter.onScrolled(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    public final void resetState() {
        this.mAdapterState = 0;
        this.mScrollState = 0;
        ScrollEventValues scrollEventValues = this.mScrollValues;
        scrollEventValues.mPosition = -1;
        scrollEventValues.mOffset = 0.0f;
        scrollEventValues.mOffsetPx = 0;
        this.mDragStartPosition = -1;
        this.mTarget = -1;
        this.mDispatchSelected = false;
        this.mScrollHappened = false;
        this.mFakeDragging = false;
        this.mDataSetChangeHappened = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0140, code lost:
    
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x013b, code lost:
    
        if (r5[r1 - 1][1] >= r3) goto L66;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateScrollEventValues() {
        /*
            Method dump skipped, instructions count: 399
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.ScrollEventAdapter.updateScrollEventValues():void");
    }
}
