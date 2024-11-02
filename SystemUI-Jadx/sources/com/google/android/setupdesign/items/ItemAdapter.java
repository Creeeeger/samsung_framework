package com.google.android.setupdesign.items;

import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.google.android.setupdesign.items.ItemHierarchy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ItemAdapter extends BaseAdapter implements ItemHierarchy.Observer {
    public final ItemHierarchy itemHierarchy;
    public final ViewTypes viewTypes = new ViewTypes();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ViewTypes {
        public int nextPosition;
        public final SparseIntArray positionMap;

        private ViewTypes() {
            this.positionMap = new SparseIntArray();
            this.nextPosition = 0;
        }
    }

    public ItemAdapter(ItemHierarchy itemHierarchy) {
        this.itemHierarchy = itemHierarchy;
        ((AbstractItemHierarchy) itemHierarchy).observers.add(this);
        refreshViewTypes();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.itemHierarchy.getCount();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return this.itemHierarchy.getItemAt(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final int getItemViewType(int i) {
        return this.viewTypes.positionMap.get(this.itemHierarchy.getItemAt(i).getLayoutResource());
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        AbstractItem itemAt = this.itemHierarchy.getItemAt(i);
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(itemAt.getLayoutResource(), viewGroup, false);
        }
        itemAt.onBindView(view);
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final int getViewTypeCount() {
        return this.viewTypes.positionMap.size();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public final boolean isEnabled(int i) {
        return this.itemHierarchy.getItemAt(i).isEnabled();
    }

    @Override // com.google.android.setupdesign.items.ItemHierarchy.Observer
    public final void onItemRangeChanged(ItemHierarchy itemHierarchy, int i) {
        refreshViewTypes();
        notifyDataSetChanged();
    }

    @Override // com.google.android.setupdesign.items.ItemHierarchy.Observer
    public final void onItemRangeInserted(ItemHierarchy itemHierarchy, int i, int i2) {
        refreshViewTypes();
        notifyDataSetChanged();
    }

    public final void refreshViewTypes() {
        for (int i = 0; i < getCount(); i++) {
            AbstractItem itemAt = this.itemHierarchy.getItemAt(i);
            ViewTypes viewTypes = this.viewTypes;
            int layoutResource = itemAt.getLayoutResource();
            SparseIntArray sparseIntArray = viewTypes.positionMap;
            if (sparseIntArray.indexOfKey(layoutResource) < 0) {
                sparseIntArray.put(layoutResource, viewTypes.nextPosition);
                viewTypes.nextPosition++;
            }
            sparseIntArray.get(layoutResource);
        }
    }
}
