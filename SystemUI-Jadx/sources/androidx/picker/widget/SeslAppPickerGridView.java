package androidx.picker.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.picker.adapter.AbsAdapter;
import androidx.picker.adapter.GridAdapter;
import androidx.picker.adapter.HeaderFooterAdapter;
import androidx.picker.adapter.layoutmanager.AutoFitGridLayoutManager;
import androidx.picker.decorator.GridSpacingItemDecoration;
import androidx.picker.model.SpanData;
import androidx.picker.model.viewdata.ViewData;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SeslAppPickerGridView extends SeslAppPickerView {
    public SeslAppPickerGridView(Context context) {
        this(context, null);
    }

    @Override // androidx.picker.widget.SeslAppPickerView
    public final AbsAdapter getAppPickerAdapter() {
        GridAdapter gridAdapter = new GridAdapter(((SeslAppPickerView) this).mContext);
        gridAdapter.setHasStableIds(true);
        return gridAdapter;
    }

    @Override // androidx.picker.widget.SeslAppPickerView
    public final RecyclerView.LayoutManager getLayoutManager() {
        final AutoFitGridLayoutManager autoFitGridLayoutManager = new AutoFitGridLayoutManager(((SeslAppPickerView) this).mContext);
        autoFitGridLayoutManager.mSpanSizeLookup = new GridLayoutManager.SpanSizeLookup() { // from class: androidx.picker.widget.SeslAppPickerGridView.1
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public final int getSpanSize(int i) {
                SeslAppPickerGridView seslAppPickerGridView = SeslAppPickerGridView.this;
                HeaderFooterAdapter headerFooterAdapter = ((SeslAppPickerView) seslAppPickerGridView).mAdapter;
                if (headerFooterAdapter != null && i >= 0 && i < headerFooterAdapter.getItemCount()) {
                    ViewData item = ((SeslAppPickerView) seslAppPickerGridView).mAdapter.getItem(i);
                    boolean z = item instanceof SpanData;
                    GridLayoutManager gridLayoutManager = autoFitGridLayoutManager;
                    if (z) {
                        int spanCount = ((SpanData) item).getSpanCount();
                        if (spanCount == -1) {
                            return gridLayoutManager.mSpanCount;
                        }
                        return spanCount;
                    }
                    return gridLayoutManager.mSpanCount;
                }
                return 1;
            }
        };
        return autoFitGridLayoutManager;
    }

    @Override // androidx.picker.widget.SeslAppPickerView, androidx.picker.common.log.LogTag
    public final String getLogTag() {
        return "SeslAppPickerGridView";
    }

    @Override // androidx.picker.widget.SeslAppPickerView
    public final void setItemDecoration(int i, HeaderFooterAdapter headerFooterAdapter) {
        super.setItemDecoration(i, headerFooterAdapter);
        addItemDecoration(new GridSpacingItemDecoration(getContext().getResources().getDimensionPixelOffset(R.dimen.picker_app_grid_item_interval_spacing)));
    }

    public SeslAppPickerGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SeslAppPickerGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int dimensionPixelOffset = getContext().getResources().getDimensionPixelOffset(R.dimen.picker_app_grid_item_interval_spacing) / 2;
        setPadding(0, dimensionPixelOffset, 0, dimensionPixelOffset);
        setClipToPadding(false);
        this.mViewType = 1;
        initialize();
    }
}
