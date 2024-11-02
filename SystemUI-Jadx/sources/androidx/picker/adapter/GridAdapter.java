package androidx.picker.adapter;

import android.content.Context;
import androidx.picker.adapter.viewholder.GridCheckBoxViewHolder;
import androidx.picker.adapter.viewholder.GridRemoveViewHolder;
import androidx.picker.adapter.viewholder.GridViewHolder;
import androidx.picker.adapter.viewholder.GroupTitleViewHolder;
import androidx.picker.model.viewdata.AppInfoViewData;
import androidx.picker.model.viewdata.CustomViewData;
import androidx.picker.model.viewdata.GroupTitleViewData;
import androidx.picker.model.viewdata.ViewData;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.R;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class GridAdapter extends AbsAdapter {
    public GridAdapter(Context context) {
        super(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        ViewData viewData = (ViewData) ((ArrayList) this.mDataSetFiltered).get(i);
        if (viewData instanceof CustomViewData) {
            return 261;
        }
        if (viewData instanceof GroupTitleViewData) {
            return 260;
        }
        if (viewData instanceof AppInfoViewData) {
            AppInfoViewData appInfoViewData = (AppInfoViewData) viewData;
            if (appInfoViewData.getItemType() == 2) {
                return 258;
            }
            if (appInfoViewData.getItemType() == 3) {
                return 259;
            }
            return 257;
        }
        return 257;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(RecyclerView recyclerView, int i) {
        if (i == 260) {
            return new GroupTitleViewHolder(AbsAdapter.inflate(recyclerView, R.layout.picker_app_text));
        }
        if (i == 258) {
            return new GridCheckBoxViewHolder(AbsAdapter.inflate(recyclerView, R.layout.picker_app_grid_item_view));
        }
        if (i == 259) {
            return new GridRemoveViewHolder(AbsAdapter.inflate(recyclerView, R.layout.picker_app_grid_item_view_remove));
        }
        return new GridViewHolder(AbsAdapter.inflate(recyclerView, R.layout.picker_app_grid_item_view));
    }
}
