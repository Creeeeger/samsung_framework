package androidx.picker.adapter.viewholder;

import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.ImageView;
import androidx.picker.model.viewdata.AppInfoViewData;
import androidx.picker.model.viewdata.ViewData;
import com.android.systemui.R;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class GridRemoveViewHolder extends GridViewHolder {
    public final ImageView removeIcon;

    public GridRemoveViewHolder(View view) {
        super(view);
        View findViewById = view.findViewById(R.id.remove_icon);
        Intrinsics.checkNotNull(findViewById);
        this.removeIcon = (ImageView) findViewById;
    }

    @Override // androidx.picker.adapter.viewholder.GridViewHolder, androidx.picker.adapter.viewholder.PickerViewHolder
    public final void bindData(ViewData viewData) {
        AccessibilityManager accessibilityManager;
        int i;
        super.bindData(viewData);
        if (viewData instanceof AppInfoViewData) {
            if (((AppInfoViewData) viewData).getDimmed()) {
                i = 8;
            } else {
                i = 0;
            }
            this.removeIcon.setVisibility(i);
        }
        Object systemService = this.itemView.getContext().getSystemService("accessibility");
        if (systemService instanceof AccessibilityManager) {
            accessibilityManager = (AccessibilityManager) systemService;
        } else {
            accessibilityManager = null;
        }
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            View view = this.item;
            view.setContentDescription(String.format(view.getContext().getResources().getText(R.string.accs_remove).toString(), Arrays.copyOf(new Object[]{this.appName.getText()}, 1)));
        }
    }

    @Override // androidx.picker.adapter.viewholder.PickerViewHolder
    public final void setViewEnableState(boolean z) {
        this.item.setEnabled(z);
    }
}
