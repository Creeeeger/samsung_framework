package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ChildHelper {
    public final Callback mCallback;
    public final Bucket mBucket = new Bucket();
    public final List mHiddenViews = new ArrayList();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Bucket {
        public long mData = 0;
        public Bucket mNext;

        public final void clear(int i) {
            if (i >= 64) {
                Bucket bucket = this.mNext;
                if (bucket != null) {
                    bucket.clear(i - 64);
                    return;
                }
                return;
            }
            this.mData &= ~(1 << i);
        }

        public final int countOnesBefore(int i) {
            Bucket bucket = this.mNext;
            if (bucket == null) {
                if (i >= 64) {
                    return Long.bitCount(this.mData);
                }
                return Long.bitCount(((1 << i) - 1) & this.mData);
            }
            if (i < 64) {
                return Long.bitCount(((1 << i) - 1) & this.mData);
            }
            return Long.bitCount(this.mData) + bucket.countOnesBefore(i - 64);
        }

        public final void ensureNext() {
            if (this.mNext == null) {
                this.mNext = new Bucket();
            }
        }

        public final boolean get(int i) {
            if (i >= 64) {
                ensureNext();
                return this.mNext.get(i - 64);
            }
            if (((1 << i) & this.mData) != 0) {
                return true;
            }
            return false;
        }

        public final void insert(int i, boolean z) {
            boolean z2;
            if (i >= 64) {
                ensureNext();
                this.mNext.insert(i - 64, z);
                return;
            }
            long j = this.mData;
            if ((Long.MIN_VALUE & j) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            long j2 = (1 << i) - 1;
            this.mData = ((j & (~j2)) << 1) | (j & j2);
            if (z) {
                set(i);
            } else {
                clear(i);
            }
            if (z2 || this.mNext != null) {
                ensureNext();
                this.mNext.insert(0, z2);
            }
        }

        public final boolean remove(int i) {
            boolean z;
            if (i >= 64) {
                ensureNext();
                return this.mNext.remove(i - 64);
            }
            long j = 1 << i;
            long j2 = this.mData;
            if ((j2 & j) != 0) {
                z = true;
            } else {
                z = false;
            }
            long j3 = j2 & (~j);
            this.mData = j3;
            long j4 = j - 1;
            this.mData = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
            Bucket bucket = this.mNext;
            if (bucket != null) {
                if (bucket.get(0)) {
                    set(63);
                }
                this.mNext.remove(0);
            }
            return z;
        }

        public final void reset() {
            this.mData = 0L;
            Bucket bucket = this.mNext;
            if (bucket != null) {
                bucket.reset();
            }
        }

        public final void set(int i) {
            if (i >= 64) {
                ensureNext();
                this.mNext.set(i - 64);
            } else {
                this.mData |= 1 << i;
            }
        }

        public final String toString() {
            if (this.mNext == null) {
                return Long.toBinaryString(this.mData);
            }
            return this.mNext.toString() + "xx" + Long.toBinaryString(this.mData);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Callback {
    }

    public ChildHelper(Callback callback) {
        this.mCallback = callback;
    }

    public final void addView(View view, int i, boolean z) {
        int offset;
        Callback callback = this.mCallback;
        if (i < 0) {
            offset = ((RecyclerView.AnonymousClass10) callback).getChildCount();
        } else {
            offset = getOffset(i);
        }
        this.mBucket.insert(offset, z);
        if (z) {
            hideViewInternal(view);
        }
        RecyclerView recyclerView = RecyclerView.this;
        recyclerView.addView(view, offset);
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        RecyclerView.Adapter adapter = recyclerView.mAdapter;
        if (adapter != null && childViewHolderInt != null) {
            adapter.onViewAttachedToWindow(childViewHolderInt);
        }
        List list = recyclerView.mOnChildAttachStateListeners;
        if (list != null) {
            int size = ((ArrayList) list).size();
            while (true) {
                size--;
                if (size >= 0) {
                    ((RecyclerView.OnChildAttachStateChangeListener) ((ArrayList) recyclerView.mOnChildAttachStateListeners).get(size)).onChildViewAttachedToWindow(view);
                } else {
                    return;
                }
            }
        }
    }

    public final void attachViewToParent(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int offset;
        Callback callback = this.mCallback;
        if (i < 0) {
            offset = ((RecyclerView.AnonymousClass10) callback).getChildCount();
        } else {
            offset = getOffset(i);
        }
        this.mBucket.insert(offset, z);
        if (z) {
            hideViewInternal(view);
        }
        RecyclerView.AnonymousClass10 anonymousClass10 = (RecyclerView.AnonymousClass10) callback;
        anonymousClass10.getClass();
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        RecyclerView recyclerView = RecyclerView.this;
        if (childViewHolderInt != null) {
            if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                throw new IllegalArgumentException("Called attach on a child which is not detached: " + childViewHolderInt + recyclerView.exceptionLabel());
            }
            childViewHolderInt.mFlags &= -257;
        }
        RecyclerView.access$4800(recyclerView, view, offset, layoutParams);
    }

    public final void detachViewFromParent(int i) {
        RecyclerView.ViewHolder childViewHolderInt;
        int offset = getOffset(i);
        this.mBucket.remove(offset);
        RecyclerView.AnonymousClass10 anonymousClass10 = (RecyclerView.AnonymousClass10) this.mCallback;
        View childAt = RecyclerView.this.getChildAt(offset);
        RecyclerView recyclerView = RecyclerView.this;
        if (childAt != null && (childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt)) != null) {
            if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                throw new IllegalArgumentException("called detach on an already detached child " + childViewHolderInt + recyclerView.exceptionLabel());
            }
            childViewHolderInt.addFlags(256);
        }
        RecyclerView.access$4900(recyclerView, offset);
    }

    public final View getChildAt(int i) {
        return RecyclerView.this.getChildAt(getOffset(i));
    }

    public final int getChildCount() {
        return ((RecyclerView.AnonymousClass10) this.mCallback).getChildCount() - ((ArrayList) this.mHiddenViews).size();
    }

    public final int getOffset(int i) {
        if (i < 0) {
            return -1;
        }
        int childCount = ((RecyclerView.AnonymousClass10) this.mCallback).getChildCount();
        int i2 = i;
        while (i2 < childCount) {
            Bucket bucket = this.mBucket;
            int countOnesBefore = i - (i2 - bucket.countOnesBefore(i2));
            if (countOnesBefore == 0) {
                while (bucket.get(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += countOnesBefore;
        }
        return -1;
    }

    public final View getUnfilteredChildAt(int i) {
        return RecyclerView.this.getChildAt(i);
    }

    public final int getUnfilteredChildCount() {
        return ((RecyclerView.AnonymousClass10) this.mCallback).getChildCount();
    }

    public final void hideViewInternal(View view) {
        ((ArrayList) this.mHiddenViews).add(view);
        RecyclerView.AnonymousClass10 anonymousClass10 = (RecyclerView.AnonymousClass10) this.mCallback;
        anonymousClass10.getClass();
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            int i = childViewHolderInt.mPendingAccessibilityState;
            if (i != -1) {
                childViewHolderInt.mWasImportantForAccessibilityBeforeHidden = i;
            } else {
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                childViewHolderInt.mWasImportantForAccessibilityBeforeHidden = ViewCompat.Api16Impl.getImportantForAccessibility(childViewHolderInt.itemView);
            }
            RecyclerView.this.setChildImportantForAccessibilityInternal(childViewHolderInt, 4);
        }
    }

    public final int indexOfChild(View view) {
        int indexOfChild = RecyclerView.this.indexOfChild(view);
        if (indexOfChild == -1) {
            return -1;
        }
        Bucket bucket = this.mBucket;
        if (bucket.get(indexOfChild)) {
            return -1;
        }
        return indexOfChild - bucket.countOnesBefore(indexOfChild);
    }

    public final boolean isHidden(View view) {
        return ((ArrayList) this.mHiddenViews).contains(view);
    }

    public final String toString() {
        return this.mBucket.toString() + ", hidden list:" + ((ArrayList) this.mHiddenViews).size();
    }

    public final void unhideViewInternal(View view) {
        if (((ArrayList) this.mHiddenViews).remove(view)) {
            RecyclerView.AnonymousClass10 anonymousClass10 = (RecyclerView.AnonymousClass10) this.mCallback;
            anonymousClass10.getClass();
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                RecyclerView.this.setChildImportantForAccessibilityInternal(childViewHolderInt, childViewHolderInt.mWasImportantForAccessibilityBeforeHidden);
                childViewHolderInt.mWasImportantForAccessibilityBeforeHidden = 0;
            }
        }
    }
}
