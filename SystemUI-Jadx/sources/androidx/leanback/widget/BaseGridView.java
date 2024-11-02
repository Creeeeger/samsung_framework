package androidx.leanback.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import androidx.leanback.R$styleable;
import androidx.leanback.widget.WindowAlignment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class BaseGridView extends RecyclerView {
    public final boolean mHasOverlappingRendering;
    public final int mInitialPrefetchItemCount;
    public GridLayoutManager mLayoutManager;
    public int mPrivateFlag;

    public BaseGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mHasOverlappingRendering = true;
        this.mInitialPrefetchItemCount = 4;
        GridLayoutManager gridLayoutManager = new GridLayoutManager(this);
        this.mLayoutManager = gridLayoutManager;
        setLayoutManager(gridLayoutManager);
        this.mPreserveFocusAfterLayout = false;
        setDescendantFocusability(262144);
        this.mHasFixedSize = true;
        setChildrenDrawingOrderEnabled(true);
        setWillNotDraw(true);
        setOverScrollMode(2);
        ((SimpleItemAnimator) this.mItemAnimator).mSupportsChangeAnimations = false;
        ((ArrayList) this.mRecyclerListeners).add(new RecyclerView.RecyclerListener() { // from class: androidx.leanback.widget.BaseGridView.1
            @Override // androidx.recyclerview.widget.RecyclerView.RecyclerListener
            public final void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
                GridLayoutManager gridLayoutManager2 = BaseGridView.this.mLayoutManager;
                gridLayoutManager2.getClass();
                if (viewHolder.getAbsoluteAdapterPosition() != -1) {
                    gridLayoutManager2.mChildrenStates.getClass();
                }
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchGenericFocusedEvent(MotionEvent motionEvent) {
        return super.dispatchGenericFocusedEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final View focusSearch(int i) {
        if (isFocused()) {
            GridLayoutManager gridLayoutManager = this.mLayoutManager;
            View findViewByPosition = gridLayoutManager.findViewByPosition(gridLayoutManager.mFocusPosition);
            if (findViewByPosition != null) {
                return focusSearch(findViewByPosition, i);
            }
        }
        return super.focusSearch(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        int indexOfChild;
        GridLayoutManager gridLayoutManager = this.mLayoutManager;
        View findViewByPosition = gridLayoutManager.findViewByPosition(gridLayoutManager.mFocusPosition);
        if (findViewByPosition != null && i2 >= (indexOfChild = indexOfChild(findViewByPosition))) {
            if (i2 < i - 1) {
                indexOfChild = ((indexOfChild + i) - 1) - i2;
            }
            return indexOfChild;
        }
        return i2;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return this.mHasOverlappingRendering;
    }

    public final void initBaseGridViewAttributes(Context context, AttributeSet attributeSet) {
        int i;
        int i2;
        int i3;
        int i4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.lbBaseGridView);
        boolean z = obtainStyledAttributes.getBoolean(4, false);
        boolean z2 = obtainStyledAttributes.getBoolean(3, false);
        GridLayoutManager gridLayoutManager = this.mLayoutManager;
        int i5 = gridLayoutManager.mFlag & (-6145);
        if (z) {
            i = 2048;
        } else {
            i = 0;
        }
        int i6 = i | i5;
        if (z2) {
            i2 = 4096;
        } else {
            i2 = 0;
        }
        gridLayoutManager.mFlag = i6 | i2;
        boolean z3 = obtainStyledAttributes.getBoolean(6, true);
        boolean z4 = obtainStyledAttributes.getBoolean(5, true);
        GridLayoutManager gridLayoutManager2 = this.mLayoutManager;
        int i7 = gridLayoutManager2.mFlag & (-24577);
        if (z3) {
            i3 = 8192;
        } else {
            i3 = 0;
        }
        int i8 = i3 | i7;
        if (z4) {
            i4 = 16384;
        } else {
            i4 = 0;
        }
        gridLayoutManager2.mFlag = i8 | i4;
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, obtainStyledAttributes.getDimensionPixelSize(8, 0));
        if (gridLayoutManager2.mOrientation == 1) {
            gridLayoutManager2.mVerticalSpacing = dimensionPixelSize;
            gridLayoutManager2.mSpacingPrimary = dimensionPixelSize;
        } else {
            gridLayoutManager2.mVerticalSpacing = dimensionPixelSize;
            gridLayoutManager2.mSpacingSecondary = dimensionPixelSize;
        }
        GridLayoutManager gridLayoutManager3 = this.mLayoutManager;
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(1, obtainStyledAttributes.getDimensionPixelSize(7, 0));
        if (gridLayoutManager3.mOrientation == 0) {
            gridLayoutManager3.mSpacingPrimary = dimensionPixelSize2;
        } else {
            gridLayoutManager3.mSpacingSecondary = dimensionPixelSize2;
        }
        if (obtainStyledAttributes.hasValue(0)) {
            this.mLayoutManager.mGravity = obtainStyledAttributes.getInt(0, 0);
            requestLayout();
        }
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        GridLayoutManager gridLayoutManager = this.mLayoutManager;
        if (z) {
            int i2 = gridLayoutManager.mFocusPosition;
            while (true) {
                View findViewByPosition = gridLayoutManager.findViewByPosition(i2);
                if (findViewByPosition != null) {
                    if (findViewByPosition.getVisibility() == 0 && findViewByPosition.hasFocusable()) {
                        findViewByPosition.requestFocus();
                        return;
                    }
                    i2++;
                } else {
                    return;
                }
            }
        } else {
            gridLayoutManager.getClass();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        if ((this.mPrivateFlag & 1) == 1) {
            return false;
        }
        GridLayoutManager gridLayoutManager = this.mLayoutManager;
        View findViewByPosition = gridLayoutManager.findViewByPosition(gridLayoutManager.mFocusPosition);
        if (findViewByPosition == null) {
            return false;
        }
        return findViewByPosition.requestFocus(i, rect);
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        int i2;
        GridLayoutManager gridLayoutManager = this.mLayoutManager;
        if (gridLayoutManager != null) {
            boolean z = false;
            if (gridLayoutManager.mOrientation == 0) {
                if (i == 1) {
                    i2 = 262144;
                }
                i2 = 0;
            } else {
                if (i == 1) {
                    i2 = 524288;
                }
                i2 = 0;
            }
            int i3 = gridLayoutManager.mFlag;
            if ((786432 & i3) != i2) {
                gridLayoutManager.mFlag = i2 | (i3 & (-786433)) | 256;
                WindowAlignment.Axis axis = gridLayoutManager.mWindowAlignment.horizontal;
                if (i == 1) {
                    z = true;
                }
                axis.mReversedFlow = z;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        boolean z;
        if (view.hasFocus() && isFocusable()) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            this.mPrivateFlag = 1 | this.mPrivateFlag;
            requestFocus();
        }
        super.removeView(view);
        if (z) {
            this.mPrivateFlag ^= -2;
        }
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i) {
        boolean hasFocus = getChildAt(i).hasFocus();
        if (hasFocus) {
            this.mPrivateFlag |= 1;
            requestFocus();
        }
        super.removeViewAt(i);
        if (hasFocus) {
            this.mPrivateFlag ^= -2;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void scrollToPosition(int i) {
        boolean z;
        GridLayoutManager gridLayoutManager = this.mLayoutManager;
        if ((gridLayoutManager.mFlag & 64) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            gridLayoutManager.setSelection$1(i, false);
        } else {
            super.scrollToPosition(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void setLayoutManager(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager == null) {
            super.setLayoutManager(null);
            GridLayoutManager gridLayoutManager = this.mLayoutManager;
            if (gridLayoutManager != null) {
                gridLayoutManager.mBaseGridView = null;
                gridLayoutManager.mGrid = null;
            }
            this.mLayoutManager = null;
            return;
        }
        GridLayoutManager gridLayoutManager2 = (GridLayoutManager) layoutManager;
        this.mLayoutManager = gridLayoutManager2;
        gridLayoutManager2.mBaseGridView = this;
        gridLayoutManager2.mGrid = null;
        super.setLayoutManager(layoutManager);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void smoothScrollBy(int i, int i2) {
        smoothScrollBy(i, i2, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void smoothScrollBy$2(int i, int i2) {
        smoothScrollBy(i, i2, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void smoothScrollToPosition(int i) {
        boolean z;
        GridLayoutManager gridLayoutManager = this.mLayoutManager;
        if ((gridLayoutManager.mFlag & 64) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            gridLayoutManager.setSelection$1(i, false);
        } else {
            super.smoothScrollToPosition(i);
        }
    }
}
