package com.google.android.setupdesign.items;

import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.setupcompat.partnerconfig.PartnerConfig;
import com.google.android.setupcompat.partnerconfig.PartnerConfigHelper;
import com.google.android.setupdesign.R$styleable;
import com.google.android.setupdesign.items.ItemHierarchy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RecyclerItemAdapter extends RecyclerView.Adapter implements ItemHierarchy.Observer {
    public final boolean applyPartnerHeavyThemeResource;
    public final ItemHierarchy itemHierarchy;
    public final boolean useFullDynamicColor;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    class PatchedLayerDrawable extends LayerDrawable {
        public PatchedLayerDrawable(Drawable[] drawableArr) {
            super(drawableArr);
        }

        @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
        public final boolean getPadding(Rect rect) {
            if (super.getPadding(rect) && (rect.left != 0 || rect.top != 0 || rect.right != 0 || rect.bottom != 0)) {
                return true;
            }
            return false;
        }
    }

    public RecyclerItemAdapter(ItemHierarchy itemHierarchy) {
        this(itemHierarchy, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.itemHierarchy.getCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        int i2;
        AbstractItem itemAt = this.itemHierarchy.getItemAt(i);
        if ((itemAt instanceof AbstractItem) && (i2 = itemAt.id) > 0) {
            return i2;
        }
        return -1L;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        return this.itemHierarchy.getItemAt(i).getLayoutResource();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ItemViewHolder itemViewHolder = (ItemViewHolder) viewHolder;
        AbstractItem itemAt = this.itemHierarchy.getItemAt(i);
        boolean isEnabled = itemAt.isEnabled();
        itemViewHolder.isEnabled = isEnabled;
        View view = itemViewHolder.itemView;
        view.setClickable(isEnabled);
        view.setEnabled(isEnabled);
        view.setFocusable(isEnabled);
        itemViewHolder.item = itemAt;
        itemAt.onBindView(view);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(RecyclerView recyclerView, int i) {
        Drawable drawable;
        View inflate = LayoutInflater.from(recyclerView.getContext()).inflate(i, (ViewGroup) recyclerView, false);
        final ItemViewHolder itemViewHolder = new ItemViewHolder(inflate);
        if (!"noBackground".equals(inflate.getTag())) {
            TypedArray obtainStyledAttributes = recyclerView.getContext().obtainStyledAttributes(R$styleable.SudRecyclerItemAdapter);
            Drawable drawable2 = obtainStyledAttributes.getDrawable(1);
            if (drawable2 == null) {
                drawable2 = obtainStyledAttributes.getDrawable(2);
                drawable = null;
            } else {
                Drawable background = inflate.getBackground();
                if (background == null) {
                    if (this.applyPartnerHeavyThemeResource && !this.useFullDynamicColor) {
                        background = new ColorDrawable(PartnerConfigHelper.get(inflate.getContext()).getColor(inflate.getContext(), PartnerConfig.CONFIG_LAYOUT_BACKGROUND_COLOR));
                    } else {
                        drawable = obtainStyledAttributes.getDrawable(0);
                    }
                }
                drawable = background;
            }
            if (drawable2 != null && drawable != null) {
                inflate.setBackgroundDrawable(new PatchedLayerDrawable(new Drawable[]{drawable, drawable2}));
            } else {
                Log.e("RecyclerItemAdapter", "Cannot resolve required attributes. selectableItemBackground=" + drawable2 + " background=" + drawable);
            }
            obtainStyledAttributes.recycle();
        }
        inflate.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.setupdesign.items.RecyclerItemAdapter.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AbstractItem abstractItem = itemViewHolder.item;
                RecyclerItemAdapter.this.getClass();
            }
        });
        return itemViewHolder;
    }

    @Override // com.google.android.setupdesign.items.ItemHierarchy.Observer
    public final void onItemRangeChanged(ItemHierarchy itemHierarchy, int i) {
        this.mObservable.notifyItemRangeChanged(i, 1, null);
    }

    @Override // com.google.android.setupdesign.items.ItemHierarchy.Observer
    public final void onItemRangeInserted(ItemHierarchy itemHierarchy, int i, int i2) {
        notifyItemRangeInserted(i, i2);
    }

    public RecyclerItemAdapter(ItemHierarchy itemHierarchy, boolean z) {
        this(itemHierarchy, z, false);
    }

    public RecyclerItemAdapter(ItemHierarchy itemHierarchy, boolean z, boolean z2) {
        this.applyPartnerHeavyThemeResource = z;
        this.useFullDynamicColor = z2;
        this.itemHierarchy = itemHierarchy;
        ((AbstractItemHierarchy) itemHierarchy).observers.add(this);
    }
}
