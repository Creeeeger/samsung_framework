package androidx.picker.features.composable.custom;

import android.view.View;
import androidx.picker.features.composable.ComposableViewHolder;
import androidx.picker.model.AppInfoData;
import androidx.picker.model.viewdata.AppInfoViewData;
import androidx.picker.model.viewdata.ViewData;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class CustomViewHolder extends ComposableViewHolder {
    public CustomViewHolder(View view) {
        super(view);
    }

    public abstract void bindData(AppInfoData appInfoData);

    @Override // androidx.picker.features.composable.ComposableViewHolder
    public void bindData(ViewData viewData) {
        if (viewData instanceof AppInfoViewData) {
            bindData(((AppInfoViewData) viewData).appInfoData);
        }
    }
}
