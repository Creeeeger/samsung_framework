package androidx.picker.adapter;

import androidx.recyclerview.widget.ListUpdateCallback;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NearbyListUpdateCallback implements ListUpdateCallback {
    public final RecyclerView.Adapter mAdapter;

    public NearbyListUpdateCallback(RecyclerView.Adapter adapter) {
        this.mAdapter = adapter;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public final void onChanged(int i, int i2, Object obj) {
        this.mAdapter.mObservable.notifyItemRangeChanged(i, i2, obj);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public final void onInserted(int i, int i2) {
        int i3;
        RecyclerView.Adapter adapter = this.mAdapter;
        adapter.notifyItemRangeInserted(i, i2);
        int itemCount = adapter.getItemCount() - 1;
        if (itemCount == i && (i3 = itemCount - 1) >= 0) {
            adapter.notifyItemChanged(i3, 1);
        }
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public final void onMoved(int i, int i2) {
        this.mAdapter.notifyItemMoved(i, i2);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public final void onRemoved(int i, int i2) {
        int i3;
        RecyclerView.Adapter adapter = this.mAdapter;
        adapter.notifyItemRangeRemoved(i, i2);
        int itemCount = adapter.getItemCount() - 1;
        if (itemCount == i && (i3 = itemCount - 1) >= 0) {
            adapter.notifyItemChanged(i3, 1);
        }
    }
}
