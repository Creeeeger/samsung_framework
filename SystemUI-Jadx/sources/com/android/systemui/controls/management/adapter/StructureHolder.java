package com.android.systemui.controls.management.adapter;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.android.systemui.R;
import com.android.systemui.controls.management.model.MainControlModel;
import com.android.systemui.controls.management.model.MainModel;
import com.android.systemui.controls.ui.util.ControlsUtil;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class StructureHolder extends Holder {
    public final String emptyStructure;
    public final TextView structureTextView;

    public StructureHolder(View view) {
        super(view, null);
        TextView textView = (TextView) this.itemView.requireViewById(R.id.controls_custom_main_zone_header);
        ControlsUtil.Companion.updateFontSize$default(ControlsUtil.Companion, textView, R.dimen.basic_interaction_subheader_text_size);
        this.structureTextView = textView;
        this.emptyStructure = this.itemView.getContext().getResources().getString(R.string.controls_favorite_other_structure_zone_header);
    }

    @Override // com.android.systemui.controls.management.adapter.Holder
    public final void bindData(MainModel mainModel) {
        String str;
        if (!(mainModel instanceof MainControlModel)) {
            return;
        }
        MainControlModel mainControlModel = (MainControlModel) mainModel;
        if (TextUtils.isEmpty(mainControlModel.structure)) {
            str = this.emptyStructure;
        } else {
            str = mainControlModel.structure;
        }
        this.structureTextView.setText(str);
        boolean z = mainControlModel.needToHide;
        View view = this.itemView;
        if (z) {
            view.setVisibility(8);
            view.getLayoutParams().height = view.getResources().getDimensionPixelOffset(R.dimen.controls_custom_management_list_padding);
        } else {
            view.setVisibility(0);
            view.getLayoutParams().height = -2;
        }
    }
}
