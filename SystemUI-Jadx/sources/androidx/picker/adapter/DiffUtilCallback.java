package androidx.picker.adapter;

import androidx.picker.model.viewdata.ViewData;
import androidx.recyclerview.widget.DiffUtil;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DiffUtilCallback extends DiffUtil.Callback {
    public final List mNewList;
    public final List mOldList;

    public DiffUtilCallback(List<ViewData> list, List<ViewData> list2) {
        this.mOldList = list;
        this.mNewList = list2;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public final boolean areContentsTheSame(int i, int i2) {
        ViewData viewData = (ViewData) this.mOldList.get(i);
        ViewData viewData2 = (ViewData) this.mNewList.get(i2);
        if (viewData == null || viewData2 == null || viewData != viewData2) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public final boolean areItemsTheSame(int i, int i2) {
        ViewData viewData = (ViewData) this.mOldList.get(i);
        ViewData viewData2 = (ViewData) this.mNewList.get(i2);
        if (viewData != null && viewData2 != null) {
            return viewData.getKey().equals(viewData2.getKey());
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public final Object getChangePayload(int i, int i2) {
        if (i >= 0) {
            List list = this.mOldList;
            if (list.size() > i && i2 >= 0) {
                List list2 = this.mNewList;
                if (list2.size() > i2 && ((ViewData) list.get(i)).equals((ViewData) list2.get(i2))) {
                    return Boolean.TRUE;
                }
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public final int getNewListSize() {
        return this.mNewList.size();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public final int getOldListSize() {
        return this.mOldList.size();
    }
}
