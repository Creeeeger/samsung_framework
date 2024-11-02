package com.android.systemui.qs;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import com.android.systemui.R$styleable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class AutoSizingList extends LinearLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ListAdapter mAdapter;
    public final AutoSizingList$$ExternalSyntheticLambda0 mBindChildren;
    public int mCount;
    public final AnonymousClass1 mDataObserver;
    public final boolean mEnableAutoSizing;
    public final Handler mHandler;
    public final int mItemSize;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.systemui.qs.AutoSizingList$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.systemui.qs.AutoSizingList$1] */
    public AutoSizingList(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mBindChildren = new Runnable() { // from class: com.android.systemui.qs.AutoSizingList$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                View view;
                AutoSizingList autoSizingList = AutoSizingList.this;
                if (autoSizingList.mAdapter != null) {
                    for (int i = 0; i < autoSizingList.mCount; i++) {
                        if (i < autoSizingList.getChildCount()) {
                            view = autoSizingList.getChildAt(i);
                        } else {
                            view = null;
                        }
                        View view2 = autoSizingList.mAdapter.getView(i, view, autoSizingList);
                        if (view2 != view) {
                            if (view != null) {
                                autoSizingList.removeView(view);
                            }
                            autoSizingList.addView(view2, i);
                        }
                    }
                    while (autoSizingList.getChildCount() > autoSizingList.mCount) {
                        autoSizingList.removeViewAt(autoSizingList.getChildCount() - 1);
                    }
                }
            }
        };
        this.mDataObserver = new DataSetObserver() { // from class: com.android.systemui.qs.AutoSizingList.1
            @Override // android.database.DataSetObserver
            public final void onChanged() {
                int i;
                AutoSizingList autoSizingList = AutoSizingList.this;
                int i2 = AutoSizingList.$r8$clinit;
                ListAdapter listAdapter = autoSizingList.mAdapter;
                if (listAdapter != null) {
                    i = listAdapter.getCount();
                } else {
                    i = 0;
                }
                autoSizingList.mCount = i;
                AutoSizingList autoSizingList2 = AutoSizingList.this;
                autoSizingList2.mHandler.post(autoSizingList2.mBindChildren);
            }

            @Override // android.database.DataSetObserver
            public final void onInvalidated() {
                AutoSizingList autoSizingList = AutoSizingList.this;
                int i = AutoSizingList.$r8$clinit;
                autoSizingList.mHandler.post(autoSizingList.mBindChildren);
            }
        };
        this.mHandler = new Handler();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AutoSizingList);
        this.mItemSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.mEnableAutoSizing = obtainStyledAttributes.getBoolean(0, true);
        obtainStyledAttributes.recycle();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int size = View.MeasureSpec.getSize(i2);
        if (size != 0) {
            ListAdapter listAdapter = this.mAdapter;
            if (listAdapter != null) {
                i3 = listAdapter.getCount();
            } else {
                i3 = 0;
            }
            if (this.mEnableAutoSizing) {
                i3 = Math.min(size / this.mItemSize, i3);
            }
            if (this.mCount != i3) {
                this.mHandler.post(this.mBindChildren);
                this.mCount = i3;
            }
        }
        super.onMeasure(i, i2);
    }

    public final void setAdapter(ListAdapter listAdapter) {
        ListAdapter listAdapter2 = this.mAdapter;
        if (listAdapter2 != null) {
            listAdapter2.unregisterDataSetObserver(this.mDataObserver);
        }
        this.mAdapter = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.mDataObserver);
        }
    }
}
