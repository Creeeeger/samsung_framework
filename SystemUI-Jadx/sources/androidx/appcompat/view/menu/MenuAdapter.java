package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import androidx.appcompat.view.menu.MenuView;
import com.android.systemui.R;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MenuAdapter extends BaseAdapter {
    public final MenuBuilder mAdapterMenu;
    public int mExpandedIndex = -1;
    public boolean mForceShowIcon;
    public final LayoutInflater mInflater;
    public int mInitPaddingBottom;
    public int mInitPaddingTop;
    public final int mItemLayoutRes;
    public final boolean mOverflowOnly;

    public MenuAdapter(MenuBuilder menuBuilder, LayoutInflater layoutInflater, boolean z, int i) {
        this.mOverflowOnly = z;
        this.mInflater = layoutInflater;
        this.mAdapterMenu = menuBuilder;
        this.mItemLayoutRes = i;
        findExpandedIndex();
    }

    public final void findExpandedIndex() {
        MenuBuilder menuBuilder = this.mAdapterMenu;
        MenuItemImpl menuItemImpl = menuBuilder.mExpandedItem;
        if (menuItemImpl != null) {
            menuBuilder.flagActionItems();
            ArrayList arrayList = menuBuilder.mNonActionItems;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((MenuItemImpl) arrayList.get(i)) == menuItemImpl) {
                    this.mExpandedIndex = i;
                    return;
                }
            }
        }
        this.mExpandedIndex = -1;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList visibleItems;
        if (this.mOverflowOnly) {
            MenuBuilder menuBuilder = this.mAdapterMenu;
            menuBuilder.flagActionItems();
            visibleItems = menuBuilder.mNonActionItems;
        } else {
            visibleItems = this.mAdapterMenu.getVisibleItems();
        }
        if (this.mExpandedIndex < 0) {
            return visibleItems.size();
        }
        return visibleItems.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        int i2;
        boolean z;
        int i3 = 0;
        if (view == null) {
            view = this.mInflater.inflate(this.mItemLayoutRes, viewGroup, false);
            this.mInitPaddingTop = view.getPaddingTop();
            this.mInitPaddingBottom = view.getPaddingBottom();
        }
        int i4 = getItem(i).mGroup;
        int i5 = i - 1;
        if (i5 >= 0) {
            i2 = getItem(i5).mGroup;
        } else {
            i2 = i4;
        }
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.mAdapterMenu.isGroupDividerEnabled() && i4 != i2) {
            z = true;
        } else {
            z = false;
        }
        ImageView imageView = listMenuItemView.mGroupDivider;
        if (imageView != null) {
            if (listMenuItemView.mHasListDivider || !z) {
                i3 = 8;
            }
            imageView.setVisibility(i3);
        }
        MenuView.ItemView itemView = (MenuView.ItemView) view;
        if (this.mForceShowIcon) {
            listMenuItemView.mForceShowIcon = true;
            listMenuItemView.mPreserveIconSpacing = true;
        }
        itemView.initialize(getItem(i));
        int dimensionPixelSize = view.getResources().getDimensionPixelSize(R.dimen.sesl_popup_menu_first_last_item_vertical_edge_padding);
        int i6 = this.mInitPaddingTop + dimensionPixelSize;
        int i7 = this.mInitPaddingBottom + dimensionPixelSize;
        int paddingLeft = view.getPaddingLeft();
        if (i != 0) {
            i6 = this.mInitPaddingTop;
        }
        int paddingRight = view.getPaddingRight();
        if (i != getCount() - 1) {
            i7 = this.mInitPaddingBottom;
        }
        view.setPadding(paddingLeft, i6, paddingRight, i7);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        findExpandedIndex();
        super.notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public final MenuItemImpl getItem(int i) {
        ArrayList visibleItems;
        if (this.mOverflowOnly) {
            MenuBuilder menuBuilder = this.mAdapterMenu;
            menuBuilder.flagActionItems();
            visibleItems = menuBuilder.mNonActionItems;
        } else {
            visibleItems = this.mAdapterMenu.getVisibleItems();
        }
        int i2 = this.mExpandedIndex;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (MenuItemImpl) visibleItems.get(i);
    }
}
