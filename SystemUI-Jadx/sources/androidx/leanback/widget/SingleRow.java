package androidx.leanback.widget;

import androidx.collection.CircularIntArray;
import androidx.leanback.widget.Grid;
import androidx.leanback.widget.GridLayoutManager;
import androidx.recyclerview.widget.GapWorker;
import com.samsung.android.nexus.video.VideoPlayer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SingleRow extends Grid {
    public final Grid.Location mTmpLocation = new Grid.Location(0);

    public SingleRow() {
        setNumRows(1);
    }

    @Override // androidx.leanback.widget.Grid
    public final boolean appendVisibleItems(int i, boolean z) {
        int i2;
        if (((GridLayoutManager.AnonymousClass2) this.mProvider).getCount() == 0) {
            return false;
        }
        if (!z && checkAppendOverLimit(i)) {
            return false;
        }
        int startIndexForAppend = getStartIndexForAppend();
        boolean z2 = false;
        while (startIndexForAppend < ((GridLayoutManager.AnonymousClass2) this.mProvider).getCount()) {
            GridLayoutManager.AnonymousClass2 anonymousClass2 = (GridLayoutManager.AnonymousClass2) this.mProvider;
            Object[] objArr = this.mTmpItem;
            int createItem = anonymousClass2.createItem(startIndexForAppend, true, objArr, false);
            if (this.mFirstVisibleIndex >= 0 && this.mLastVisibleIndex >= 0) {
                if (this.mReversedFlow) {
                    int i3 = startIndexForAppend - 1;
                    i2 = (((GridLayoutManager.AnonymousClass2) this.mProvider).getEdge(i3) - ((GridLayoutManager.AnonymousClass2) this.mProvider).getSize(i3)) - this.mSpacing;
                } else {
                    int i4 = startIndexForAppend - 1;
                    i2 = this.mSpacing + ((GridLayoutManager.AnonymousClass2) this.mProvider).getSize(i4) + ((GridLayoutManager.AnonymousClass2) this.mProvider).getEdge(i4);
                }
                this.mLastVisibleIndex = startIndexForAppend;
            } else {
                if (this.mReversedFlow) {
                    i2 = Integer.MAX_VALUE;
                } else {
                    i2 = VideoPlayer.MEDIA_ERROR_SYSTEM;
                }
                this.mFirstVisibleIndex = startIndexForAppend;
                this.mLastVisibleIndex = startIndexForAppend;
            }
            ((GridLayoutManager.AnonymousClass2) this.mProvider).addItem(objArr[0], createItem, 0, i2);
            if (z || checkAppendOverLimit(i)) {
                return true;
            }
            startIndexForAppend++;
            z2 = true;
        }
        return z2;
    }

    @Override // androidx.leanback.widget.Grid
    public final void collectAdjacentPrefetchPositions(int i, int i2, GapWorker.LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl) {
        int startIndexForPrepend;
        int i3;
        if (!this.mReversedFlow ? i2 < 0 : i2 > 0) {
            if (this.mFirstVisibleIndex == 0) {
                return;
            }
            startIndexForPrepend = getStartIndexForPrepend();
            int edge = ((GridLayoutManager.AnonymousClass2) this.mProvider).getEdge(this.mFirstVisibleIndex);
            boolean z = this.mReversedFlow;
            int i4 = this.mSpacing;
            if (!z) {
                i4 = -i4;
            }
            i3 = edge + i4;
        } else {
            if (this.mLastVisibleIndex == ((GridLayoutManager.AnonymousClass2) this.mProvider).getCount() - 1) {
                return;
            }
            startIndexForPrepend = getStartIndexForAppend();
            int size = ((GridLayoutManager.AnonymousClass2) this.mProvider).getSize(this.mLastVisibleIndex) + this.mSpacing;
            int edge2 = ((GridLayoutManager.AnonymousClass2) this.mProvider).getEdge(this.mLastVisibleIndex);
            if (this.mReversedFlow) {
                size = -size;
            }
            i3 = size + edge2;
        }
        layoutPrefetchRegistryImpl.addPosition(startIndexForPrepend, Math.abs(i3 - i));
    }

    @Override // androidx.leanback.widget.Grid
    public final int findRowMax(int i, boolean z, int[] iArr) {
        if (iArr != null) {
            iArr[0] = 0;
            iArr[1] = i;
        }
        if (this.mReversedFlow) {
            return ((GridLayoutManager.AnonymousClass2) this.mProvider).getEdge(i);
        }
        return ((GridLayoutManager.AnonymousClass2) this.mProvider).getSize(i) + ((GridLayoutManager.AnonymousClass2) this.mProvider).getEdge(i);
    }

    @Override // androidx.leanback.widget.Grid
    public final int findRowMin(int i, boolean z, int[] iArr) {
        if (iArr != null) {
            iArr[0] = 0;
            iArr[1] = i;
        }
        if (this.mReversedFlow) {
            return ((GridLayoutManager.AnonymousClass2) this.mProvider).getEdge(i) - ((GridLayoutManager.AnonymousClass2) this.mProvider).getSize(i);
        }
        return ((GridLayoutManager.AnonymousClass2) this.mProvider).getEdge(i);
    }

    @Override // androidx.leanback.widget.Grid
    public final CircularIntArray[] getItemPositionsInRows(int i, int i2) {
        CircularIntArray circularIntArray = this.mTmpItemPositionsInRows[0];
        circularIntArray.tail = 0;
        circularIntArray.addLast(i);
        this.mTmpItemPositionsInRows[0].addLast(i2);
        return this.mTmpItemPositionsInRows;
    }

    @Override // androidx.leanback.widget.Grid
    public final Grid.Location getLocation(int i) {
        return this.mTmpLocation;
    }

    public final int getStartIndexForAppend() {
        int i = this.mLastVisibleIndex;
        if (i >= 0) {
            return i + 1;
        }
        int i2 = this.mStartIndex;
        if (i2 != -1) {
            return Math.min(i2, ((GridLayoutManager.AnonymousClass2) this.mProvider).getCount() - 1);
        }
        return 0;
    }

    public final int getStartIndexForPrepend() {
        int i = this.mFirstVisibleIndex;
        if (i >= 0) {
            return i - 1;
        }
        int i2 = this.mStartIndex;
        if (i2 != -1) {
            return Math.min(i2, ((GridLayoutManager.AnonymousClass2) this.mProvider).getCount() - 1);
        }
        return ((GridLayoutManager.AnonymousClass2) this.mProvider).getCount() - 1;
    }

    @Override // androidx.leanback.widget.Grid
    public final boolean prependVisibleItems(int i, boolean z) {
        int i2;
        if (((GridLayoutManager.AnonymousClass2) this.mProvider).getCount() == 0) {
            return false;
        }
        if (!z && checkPrependOverLimit(i)) {
            return false;
        }
        int i3 = GridLayoutManager.this.mPositionDeltaInPreLayout;
        boolean z2 = false;
        for (int startIndexForPrepend = getStartIndexForPrepend(); startIndexForPrepend >= i3; startIndexForPrepend--) {
            GridLayoutManager.AnonymousClass2 anonymousClass2 = (GridLayoutManager.AnonymousClass2) this.mProvider;
            Object[] objArr = this.mTmpItem;
            int createItem = anonymousClass2.createItem(startIndexForPrepend, false, objArr, false);
            if (this.mFirstVisibleIndex >= 0 && this.mLastVisibleIndex >= 0) {
                if (this.mReversedFlow) {
                    i2 = ((GridLayoutManager.AnonymousClass2) this.mProvider).getEdge(startIndexForPrepend + 1) + this.mSpacing + createItem;
                } else {
                    i2 = (((GridLayoutManager.AnonymousClass2) this.mProvider).getEdge(startIndexForPrepend + 1) - this.mSpacing) - createItem;
                }
                this.mFirstVisibleIndex = startIndexForPrepend;
            } else {
                if (this.mReversedFlow) {
                    i2 = VideoPlayer.MEDIA_ERROR_SYSTEM;
                } else {
                    i2 = Integer.MAX_VALUE;
                }
                this.mFirstVisibleIndex = startIndexForPrepend;
                this.mLastVisibleIndex = startIndexForPrepend;
            }
            ((GridLayoutManager.AnonymousClass2) this.mProvider).addItem(objArr[0], createItem, 0, i2);
            z2 = true;
            if (z || checkPrependOverLimit(i)) {
                break;
            }
        }
        return z2;
    }
}
