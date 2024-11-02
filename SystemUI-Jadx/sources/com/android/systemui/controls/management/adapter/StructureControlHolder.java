package com.android.systemui.controls.management.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.R;
import com.android.systemui.controls.management.model.AllControlsModel;
import com.android.systemui.controls.management.model.ControlWrapper;
import com.android.systemui.controls.management.model.StructureElementWrapper;
import com.android.systemui.controls.ui.util.ControlsUtil;
import com.android.systemui.controls.ui.util.LayoutUtil;
import com.android.systemui.controls.util.ControlsRuneWrapper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class StructureControlHolder extends CustomStructureHolder {
    public final Context context;
    public CustomControlAdapter controlAdapter;
    public final LinearLayout structureLayout;

    public StructureControlHolder(View view, int i, LayoutUtil layoutUtil, ControlsUtil controlsUtil, ControlsRuneWrapper controlsRuneWrapper) {
        super(view, null);
        this.structureLayout = (LinearLayout) this.itemView.requireViewById(R.id.structure_layout);
        RecyclerView recyclerView = (RecyclerView) this.itemView.requireViewById(R.id.structure_recyclerview);
        Context context = this.itemView.getContext();
        this.context = context;
        CustomControlAdapter customControlAdapter = new CustomControlAdapter(context, layoutUtil, controlsUtil, controlsRuneWrapper, i);
        this.controlAdapter = customControlAdapter;
        recyclerView.setAdapter(customControlAdapter);
        recyclerView.setItemAnimator(null);
        Resources resources = recyclerView.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.controls_list_margin_horizontal) - resources.getDimensionPixelSize(R.dimen.control_base_item_side_margin);
        layoutUtil.getClass();
        ViewGroup.LayoutParams layoutParams = recyclerView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            marginLayoutParams.setMargins(dimensionPixelSize, marginLayoutParams.topMargin, dimensionPixelSize, marginLayoutParams.bottomMargin);
            recyclerView.requestLayout();
        }
    }

    @Override // com.android.systemui.controls.management.adapter.CustomStructureHolder
    public final void bindData(StructureElementWrapper structureElementWrapper) {
        Drawable drawable;
        ControlWrapper controlWrapper = (ControlWrapper) structureElementWrapper;
        CustomControlAdapter customControlAdapter = null;
        if (controlWrapper.needChunk) {
            drawable = this.context.getDrawable(R.drawable.control_structure_background);
        } else {
            drawable = null;
        }
        this.structureLayout.setBackground(drawable);
        CustomControlAdapter customControlAdapter2 = this.controlAdapter;
        if (customControlAdapter2 == null) {
            customControlAdapter2 = null;
        }
        AllControlsModel allControlsModel = controlWrapper.controlsModel;
        customControlAdapter2.model = allControlsModel;
        customControlAdapter2.notifyDataSetChanged();
        CustomControlAdapter customControlAdapter3 = this.controlAdapter;
        if (customControlAdapter3 != null) {
            customControlAdapter = customControlAdapter3;
        }
        allControlsModel.adapter = customControlAdapter;
    }
}
