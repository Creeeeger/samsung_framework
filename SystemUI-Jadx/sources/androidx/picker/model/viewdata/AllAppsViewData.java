package androidx.picker.model.viewdata;

import androidx.picker.loader.select.SelectableItem;
import androidx.picker.model.Selectable;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AllAppsViewData implements ViewData, Selectable {
    public final SelectableItem selectableItem;

    public AllAppsViewData(SelectableItem selectableItem) {
        this.selectableItem = selectableItem;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AllAppsViewData)) {
            return false;
        }
        if (Intrinsics.areEqual(this.selectableItem, ((AllAppsViewData) obj).selectableItem)) {
            return true;
        }
        return false;
    }

    @Override // androidx.picker.model.Selectable
    public final SelectableItem getSelectableItem() {
        return this.selectableItem;
    }

    public final int hashCode() {
        return this.selectableItem.hashCode();
    }

    public final String toString() {
        return "AllAppsViewData(selectableItem=" + this.selectableItem + ')';
    }

    @Override // androidx.picker.model.viewdata.ViewData
    public final Object getKey() {
        return this;
    }
}
