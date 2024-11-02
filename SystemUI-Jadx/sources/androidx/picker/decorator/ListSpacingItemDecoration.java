package androidx.picker.decorator;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import androidx.picker.adapter.HeaderFooterAdapter;
import androidx.picker.adapter.viewholder.AppListItemViewHolder;
import androidx.picker.features.composable.ComposableType;
import androidx.picker.features.composable.ComposableTypeSet;
import androidx.picker.helper.ContextHelperKt;
import androidx.picker.model.viewdata.CategoryViewData;
import androidx.picker.model.viewdata.ViewData;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.R;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ListSpacingItemDecoration extends RecyclerView.ItemDecoration {
    public final Context context;
    public final int spacing;

    public ListSpacingItemDecoration(Context context) {
        this.context = context;
        this.spacing = context.getResources().getDimensionPixelOffset(R.dimen.picker_app_list_category_margin_left);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        HeaderFooterAdapter headerFooterAdapter;
        boolean z;
        RecyclerView.Adapter adapter = recyclerView.mAdapter;
        if (adapter instanceof HeaderFooterAdapter) {
            headerFooterAdapter = (HeaderFooterAdapter) adapter;
        } else {
            headerFooterAdapter = null;
        }
        if (headerFooterAdapter == null) {
            return;
        }
        RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(view);
        if (!(childViewHolder instanceof AppListItemViewHolder)) {
            return;
        }
        ComposableType composableType = ((AppListItemViewHolder) childViewHolder).composableType;
        ComposableType.Companion companion = ComposableType.Companion;
        ComposableTypeSet composableTypeSet = ComposableTypeSet.CheckBox_Expander;
        companion.getClass();
        boolean isSame = ComposableType.Companion.isSame(composableType, composableTypeSet);
        boolean z2 = true;
        if (!isSame && !ComposableType.Companion.isSame(composableType, ComposableTypeSet.AllSwitch)) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            return;
        }
        ArrayList arrayList = (ArrayList) headerFooterAdapter.wrappedAdapter.mDataSetFiltered;
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (((ViewData) it.next()) instanceof CategoryViewData) {
                    break;
                }
            }
        }
        z2 = false;
        if (z2) {
            boolean isRTL = ContextHelperKt.isRTL(this.context);
            int i = this.spacing;
            if (isRTL) {
                rect.set(0, 0, i, 0);
                return;
            } else {
                rect.set(i, 0, 0, 0);
                return;
            }
        }
        rect.set(0, 0, 0, 0);
    }
}
