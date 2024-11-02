package androidx.picker.adapter.viewholder;

import android.view.View;
import android.widget.TextView;
import androidx.picker.model.viewdata.GroupTitleViewData;
import androidx.picker.model.viewdata.ViewData;
import com.android.systemui.R;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class GroupTitleViewHolder extends PickerViewHolder {
    public final TextView label;
    public final TextView title;

    public GroupTitleViewHolder(View view) {
        super(view);
        this.title = (TextView) view.findViewById(R.id.title);
        this.label = (TextView) view.findViewById(R.id.label);
    }

    @Override // androidx.picker.adapter.viewholder.PickerViewHolder
    public final void bindData(ViewData viewData) {
        int i;
        if (viewData instanceof GroupTitleViewData) {
            GroupTitleViewData groupTitleViewData = (GroupTitleViewData) viewData;
            this.title.setText(groupTitleViewData.appData.group);
            String str = groupTitleViewData.label;
            if (StringsKt__StringsJVMKt.isBlank(str)) {
                i = 8;
            } else {
                i = 0;
            }
            TextView textView = this.label;
            textView.setVisibility(i);
            textView.setText(str);
        }
        super.bindData(viewData);
    }
}
