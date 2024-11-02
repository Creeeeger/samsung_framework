package androidx.leanback.widget;

import androidx.collection.CircularArray;
import androidx.collection.CircularIntArray;
import androidx.collection.CollectionPlatformUtils;
import androidx.leanback.widget.Grid;
import androidx.leanback.widget.GridLayoutManager;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class StaggeredGrid extends Grid {
    public Object mPendingItem;
    public int mPendingItemSize;
    public final CircularArray mLocations = new CircularArray(64);
    public int mFirstIndex = -1;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Location extends Grid.Location {
        public int offset;
        public int size;

        public Location(int i, int i2, int i3) {
            super(i);
            this.offset = i2;
            this.size = i3;
        }
    }

    public final boolean appendVisbleItemsWithCache(int i, boolean z) {
        int i2;
        int i3;
        CircularArray circularArray = this.mLocations;
        if (circularArray.size() == 0) {
            return false;
        }
        int count = ((GridLayoutManager.AnonymousClass2) this.mProvider).getCount();
        int i4 = this.mLastVisibleIndex;
        if (i4 >= 0) {
            i2 = i4 + 1;
            i3 = ((GridLayoutManager.AnonymousClass2) this.mProvider).getEdge(i4);
        } else {
            int i5 = this.mStartIndex;
            if (i5 != -1) {
                i2 = i5;
            } else {
                i2 = 0;
            }
            if (i2 <= getLastIndex() + 1 && i2 >= this.mFirstIndex) {
                if (i2 > getLastIndex()) {
                    return false;
                }
                i3 = Integer.MAX_VALUE;
            } else {
                circularArray.removeFromStart(circularArray.size());
                return false;
            }
        }
        int lastIndex = getLastIndex();
        while (i2 < count && i2 <= lastIndex) {
            Location location = getLocation(i2);
            if (i3 != Integer.MAX_VALUE) {
                i3 += location.offset;
            }
            int i6 = location.row;
            GridLayoutManager.AnonymousClass2 anonymousClass2 = (GridLayoutManager.AnonymousClass2) this.mProvider;
            Object[] objArr = this.mTmpItem;
            int createItem = anonymousClass2.createItem(i2, true, objArr, false);
            if (createItem != location.size) {
                location.size = createItem;
                circularArray.removeFromEnd(lastIndex - i2);
                lastIndex = i2;
            }
            this.mLastVisibleIndex = i2;
            if (this.mFirstVisibleIndex < 0) {
                this.mFirstVisibleIndex = i2;
            }
            ((GridLayoutManager.AnonymousClass2) this.mProvider).addItem(objArr[0], createItem, i6, i3);
            if (!z && checkAppendOverLimit(i)) {
                return true;
            }
            if (i3 == Integer.MAX_VALUE) {
                i3 = ((GridLayoutManager.AnonymousClass2) this.mProvider).getEdge(i2);
            }
            if (i6 == this.mNumRows - 1 && z) {
                return true;
            }
            i2++;
        }
        return false;
    }

    public final int appendVisibleItemToRow(int i, int i2, int i3) {
        int edge;
        boolean z;
        int i4 = this.mLastVisibleIndex;
        if (i4 >= 0 && (i4 != getLastIndex() || this.mLastVisibleIndex != i - 1)) {
            throw new IllegalStateException();
        }
        int i5 = this.mLastVisibleIndex;
        CircularArray circularArray = this.mLocations;
        if (i5 < 0) {
            if (circularArray.size() > 0 && i == getLastIndex() + 1) {
                int lastIndex = getLastIndex();
                while (true) {
                    if (lastIndex >= this.mFirstIndex) {
                        if (getLocation(lastIndex).row == i2) {
                            z = true;
                            break;
                        }
                        lastIndex--;
                    } else {
                        z = false;
                        break;
                    }
                }
                if (!z) {
                    lastIndex = getLastIndex();
                }
                if (this.mReversedFlow) {
                    edge = (-getLocation(lastIndex).size) - this.mSpacing;
                } else {
                    edge = getLocation(lastIndex).size + this.mSpacing;
                }
                for (int i6 = lastIndex + 1; i6 <= getLastIndex(); i6++) {
                    edge -= getLocation(i6).offset;
                }
            } else {
                edge = 0;
            }
        } else {
            edge = i3 - ((GridLayoutManager.AnonymousClass2) this.mProvider).getEdge(i5);
        }
        Location location = new Location(i2, edge, 0);
        Object[] objArr = circularArray.elements;
        int i7 = circularArray.tail;
        objArr[i7] = location;
        int i8 = circularArray.capacityBitmask & (i7 + 1);
        circularArray.tail = i8;
        if (i8 == circularArray.head) {
            circularArray.doubleCapacity();
        }
        Object obj = this.mPendingItem;
        if (obj != null) {
            location.size = this.mPendingItemSize;
            this.mPendingItem = null;
        } else {
            GridLayoutManager.AnonymousClass2 anonymousClass2 = (GridLayoutManager.AnonymousClass2) this.mProvider;
            Object[] objArr2 = this.mTmpItem;
            location.size = anonymousClass2.createItem(i, true, objArr2, false);
            obj = objArr2[0];
        }
        if (circularArray.size() == 1) {
            this.mLastVisibleIndex = i;
            this.mFirstVisibleIndex = i;
            this.mFirstIndex = i;
        } else {
            int i9 = this.mLastVisibleIndex;
            if (i9 < 0) {
                this.mLastVisibleIndex = i;
                this.mFirstVisibleIndex = i;
            } else {
                this.mLastVisibleIndex = i9 + 1;
            }
        }
        ((GridLayoutManager.AnonymousClass2) this.mProvider).addItem(obj, location.size, i2, i3);
        return location.size;
    }

    @Override // androidx.leanback.widget.Grid
    public final boolean appendVisibleItems(int i, boolean z) {
        Object[] objArr = this.mTmpItem;
        if (((GridLayoutManager.AnonymousClass2) this.mProvider).getCount() == 0) {
            return false;
        }
        if (!z && checkAppendOverLimit(i)) {
            return false;
        }
        try {
            if (appendVisbleItemsWithCache(i, z)) {
                objArr[0] = null;
                this.mPendingItem = null;
                return true;
            }
            return appendVisibleItemsWithoutCache(i, z);
        } finally {
            objArr[0] = null;
            this.mPendingItem = null;
        }
    }

    public abstract boolean appendVisibleItemsWithoutCache(int i, boolean z);

    @Override // androidx.leanback.widget.Grid
    public final CircularIntArray[] getItemPositionsInRows(int i, int i2) {
        for (int i3 = 0; i3 < this.mNumRows; i3++) {
            this.mTmpItemPositionsInRows[i3].tail = 0;
        }
        if (i >= 0) {
            while (i <= i2) {
                CircularIntArray circularIntArray = this.mTmpItemPositionsInRows[getLocation(i).row];
                int i4 = circularIntArray.tail;
                int i5 = circularIntArray.capacityBitmask;
                if (((i4 + 0) & i5) > 0) {
                    if (i4 != 0) {
                        int i6 = i5 & (i4 - 1);
                        if (circularIntArray.elements[i6] == i - 1) {
                            if (i4 != 0) {
                                circularIntArray.tail = i6;
                                circularIntArray.addLast(i);
                                i++;
                            } else {
                                int i7 = CollectionPlatformUtils.$r8$clinit;
                                throw new ArrayIndexOutOfBoundsException();
                            }
                        }
                    } else {
                        int i8 = CollectionPlatformUtils.$r8$clinit;
                        throw new ArrayIndexOutOfBoundsException();
                    }
                }
                circularIntArray.addLast(i);
                circularIntArray.addLast(i);
                i++;
            }
        }
        return this.mTmpItemPositionsInRows;
    }

    public final int getLastIndex() {
        return (this.mLocations.size() + this.mFirstIndex) - 1;
    }

    @Override // androidx.leanback.widget.Grid
    public final void invalidateItemsAfter(int i) {
        super.invalidateItemsAfter(i);
        int lastIndex = (getLastIndex() - i) + 1;
        CircularArray circularArray = this.mLocations;
        circularArray.removeFromEnd(lastIndex);
        if (circularArray.size() == 0) {
            this.mFirstIndex = -1;
        }
    }

    public final boolean prependVisbleItemsWithCache(int i, boolean z) {
        int i2;
        int i3;
        int i4;
        CircularArray circularArray = this.mLocations;
        if (circularArray.size() == 0) {
            return false;
        }
        int i5 = this.mFirstVisibleIndex;
        if (i5 >= 0) {
            i3 = ((GridLayoutManager.AnonymousClass2) this.mProvider).getEdge(i5);
            i4 = getLocation(this.mFirstVisibleIndex).offset;
            i2 = this.mFirstVisibleIndex - 1;
        } else {
            int i6 = this.mStartIndex;
            if (i6 != -1) {
                i2 = i6;
            } else {
                i2 = 0;
            }
            if (i2 <= getLastIndex()) {
                int i7 = this.mFirstIndex;
                if (i2 >= i7 - 1) {
                    if (i2 < i7) {
                        return false;
                    }
                    i3 = Integer.MAX_VALUE;
                    i4 = 0;
                }
            }
            circularArray.removeFromStart(circularArray.size());
            return false;
        }
        int max = Math.max(GridLayoutManager.this.mPositionDeltaInPreLayout, this.mFirstIndex);
        while (i2 >= max) {
            Location location = getLocation(i2);
            int i8 = location.row;
            GridLayoutManager.AnonymousClass2 anonymousClass2 = (GridLayoutManager.AnonymousClass2) this.mProvider;
            Object[] objArr = this.mTmpItem;
            int createItem = anonymousClass2.createItem(i2, false, objArr, false);
            if (createItem != location.size) {
                circularArray.removeFromStart((i2 + 1) - this.mFirstIndex);
                this.mFirstIndex = this.mFirstVisibleIndex;
                this.mPendingItem = objArr[0];
                this.mPendingItemSize = createItem;
                return false;
            }
            this.mFirstVisibleIndex = i2;
            if (this.mLastVisibleIndex < 0) {
                this.mLastVisibleIndex = i2;
            }
            ((GridLayoutManager.AnonymousClass2) this.mProvider).addItem(objArr[0], createItem, i8, i3 - i4);
            if (!z && checkPrependOverLimit(i)) {
                return true;
            }
            i3 = ((GridLayoutManager.AnonymousClass2) this.mProvider).getEdge(i2);
            i4 = location.offset;
            if (i8 == 0 && z) {
                return true;
            }
            i2--;
        }
        return false;
    }

    public final int prependVisibleItemToRow(int i, int i2, int i3) {
        Location location;
        int i4;
        int i5 = this.mFirstVisibleIndex;
        if (i5 >= 0 && (i5 != this.mFirstIndex || i5 != i + 1)) {
            throw new IllegalStateException();
        }
        int i6 = this.mFirstIndex;
        if (i6 >= 0) {
            location = getLocation(i6);
        } else {
            location = null;
        }
        int edge = ((GridLayoutManager.AnonymousClass2) this.mProvider).getEdge(this.mFirstIndex);
        Location location2 = new Location(i2, 0, 0);
        CircularArray circularArray = this.mLocations;
        int i7 = (circularArray.head - 1) & circularArray.capacityBitmask;
        circularArray.head = i7;
        circularArray.elements[i7] = location2;
        if (i7 == circularArray.tail) {
            circularArray.doubleCapacity();
        }
        Object obj = this.mPendingItem;
        if (obj != null) {
            location2.size = this.mPendingItemSize;
            this.mPendingItem = null;
        } else {
            GridLayoutManager.AnonymousClass2 anonymousClass2 = (GridLayoutManager.AnonymousClass2) this.mProvider;
            Object[] objArr = this.mTmpItem;
            location2.size = anonymousClass2.createItem(i, false, objArr, false);
            obj = objArr[0];
        }
        this.mFirstVisibleIndex = i;
        this.mFirstIndex = i;
        if (this.mLastVisibleIndex < 0) {
            this.mLastVisibleIndex = i;
        }
        if (!this.mReversedFlow) {
            i4 = i3 - location2.size;
        } else {
            i4 = i3 + location2.size;
        }
        if (location != null) {
            location.offset = edge - i4;
        }
        ((GridLayoutManager.AnonymousClass2) this.mProvider).addItem(obj, location2.size, i2, i4);
        return location2.size;
    }

    @Override // androidx.leanback.widget.Grid
    public final boolean prependVisibleItems(int i, boolean z) {
        Object[] objArr = this.mTmpItem;
        if (((GridLayoutManager.AnonymousClass2) this.mProvider).getCount() == 0) {
            return false;
        }
        if (!z && checkPrependOverLimit(i)) {
            return false;
        }
        try {
            if (prependVisbleItemsWithCache(i, z)) {
                objArr[0] = null;
                this.mPendingItem = null;
                return true;
            }
            return prependVisibleItemsWithoutCache(i, z);
        } finally {
            objArr[0] = null;
            this.mPendingItem = null;
        }
    }

    public abstract boolean prependVisibleItemsWithoutCache(int i, boolean z);

    @Override // androidx.leanback.widget.Grid
    public final Location getLocation(int i) {
        int i2 = i - this.mFirstIndex;
        if (i2 < 0) {
            return null;
        }
        CircularArray circularArray = this.mLocations;
        if (i2 >= circularArray.size()) {
            return null;
        }
        if (i2 < 0) {
            circularArray.getClass();
        } else if (i2 < circularArray.size()) {
            Object obj = circularArray.elements[circularArray.capacityBitmask & (circularArray.head + i2)];
            Intrinsics.checkNotNull(obj);
            return (Location) obj;
        }
        int i3 = CollectionPlatformUtils.$r8$clinit;
        throw new ArrayIndexOutOfBoundsException();
    }
}
