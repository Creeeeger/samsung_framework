package com.android.systemui.qs;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.android.systemui.QpRune;
import com.android.systemui.R$styleable;
import com.android.systemui.util.DeviceState;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.lang.ref.WeakReference;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class PseudoGridView extends ViewGroup {
    public final int mFixedChildWidth;
    public final int mHorizontalSpacing;
    public final int mNumColumns;
    public final int mVerticalSpacing;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ViewGroupAdapterBridge extends DataSetObserver {
        public final BaseAdapter mAdapter;
        public boolean mReleased = false;
        public final WeakReference mViewGroup;

        private ViewGroupAdapterBridge(ViewGroup viewGroup, BaseAdapter baseAdapter) {
            this.mViewGroup = new WeakReference(viewGroup);
            this.mAdapter = baseAdapter;
            baseAdapter.registerDataSetObserver(this);
            refresh();
        }

        public static void link(ViewGroup viewGroup, BaseAdapter baseAdapter) {
            new ViewGroupAdapterBridge(viewGroup, baseAdapter);
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            refresh();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            if (!this.mReleased) {
                this.mReleased = true;
                this.mAdapter.unregisterDataSetObserver(this);
            }
        }

        public final void refresh() {
            View view;
            if (this.mReleased) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) this.mViewGroup.get();
            if (viewGroup == null) {
                if (!this.mReleased) {
                    this.mReleased = true;
                    this.mAdapter.unregisterDataSetObserver(this);
                    return;
                }
                return;
            }
            int childCount = viewGroup.getChildCount();
            int count = this.mAdapter.getCount();
            int max = Math.max(childCount, count);
            for (int i = 0; i < max; i++) {
                if (i < count) {
                    if (i < childCount) {
                        view = viewGroup.getChildAt(i);
                    } else {
                        view = null;
                    }
                    View view2 = this.mAdapter.getView(i, view, viewGroup);
                    if (view == null) {
                        viewGroup.addView(view2);
                    } else if (view != view2) {
                        viewGroup.removeViewAt(i);
                        viewGroup.addView(view2, i);
                    }
                } else {
                    viewGroup.removeViewAt(viewGroup.getChildCount() - 1);
                }
            }
        }
    }

    public PseudoGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mNumColumns = 3;
        this.mFixedChildWidth = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PseudoGridView);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == 2) {
                this.mNumColumns = obtainStyledAttributes.getInt(index, 3);
            } else if (index == 3) {
                this.mVerticalSpacing = obtainStyledAttributes.getDimensionPixelSize(index, 0);
            } else if (index == 1) {
                this.mHorizontalSpacing = obtainStyledAttributes.getDimensionPixelSize(index, 0);
            } else if (index == 0) {
                this.mFixedChildWidth = obtainStyledAttributes.getDimensionPixelSize(index, -1);
            }
        }
        obtainStyledAttributes.recycle();
        if (QpRune.QUICK_MANAGE_TWO_PHONE && DeviceState.supportsMultipleUsers()) {
            this.mNumColumns = 2;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        boolean isLayoutRtl = isLayoutRtl();
        int childCount = getChildCount();
        int i6 = ((childCount + r13) - 1) / this.mNumColumns;
        int i7 = 0;
        for (int i8 = 0; i8 < i6; i8++) {
            if (isLayoutRtl) {
                i5 = getWidth();
            } else {
                i5 = 0;
            }
            int i9 = this.mNumColumns;
            int i10 = i8 * i9;
            int min = Math.min(i9 + i10, childCount);
            int i11 = 0;
            while (i10 < min) {
                View childAt = getChildAt(i10);
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (isLayoutRtl) {
                    i5 -= measuredWidth;
                }
                childAt.layout(i5, i7, i5 + measuredWidth, i7 + measuredHeight);
                i11 = Math.max(i11, measuredHeight);
                if (isLayoutRtl) {
                    i5 -= this.mHorizontalSpacing;
                } else {
                    i5 = measuredWidth + this.mHorizontalSpacing + i5;
                }
                i10++;
            }
            i7 += i11 + this.mVerticalSpacing;
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i) != 0) {
            int size = View.MeasureSpec.getSize(i);
            int i3 = this.mFixedChildWidth;
            int i4 = this.mNumColumns;
            int i5 = this.mHorizontalSpacing;
            int i6 = ((i4 - 1) * i5) + (i3 * i4);
            if (i3 != -1 && i6 <= size) {
                size = (i3 * i4) + ((i4 - 1) * i5);
            } else {
                i3 = (size - ((i4 - 1) * i5)) / i4;
            }
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS);
            int childCount = getChildCount();
            int i7 = ((childCount + r3) - 1) / this.mNumColumns;
            int i8 = 0;
            for (int i9 = 0; i9 < i7; i9++) {
                int i10 = this.mNumColumns;
                int i11 = i9 * i10;
                int min = Math.min(i10 + i11, childCount);
                int i12 = 0;
                for (int i13 = i11; i13 < min; i13++) {
                    View childAt = getChildAt(i13);
                    childAt.measure(makeMeasureSpec, 0);
                    i12 = Math.max(i12, childAt.getMeasuredHeight());
                }
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i12, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS);
                while (i11 < min) {
                    View childAt2 = getChildAt(i11);
                    if (childAt2.getMeasuredHeight() != i12) {
                        childAt2.measure(makeMeasureSpec, makeMeasureSpec2);
                    }
                    i11++;
                }
                i8 += i12;
                if (i9 > 0) {
                    i8 += this.mVerticalSpacing;
                }
            }
            setMeasuredDimension(size, ViewGroup.resolveSizeAndState(i8, i2, 0));
            return;
        }
        throw new UnsupportedOperationException("Needs a maximum width");
    }
}
