package com.google.android.setupdesign.items;

import android.content.Context;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ItemInflater extends ReflectionInflater {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface ItemParent {
        void addChild(ItemHierarchy itemHierarchy);
    }

    public ItemInflater(Context context) {
        super(context);
        this.defaultPackage = Item.class.getPackage().getName() + ".";
    }

    @Override // com.google.android.setupdesign.items.SimpleInflater
    public final void onAddChildItem(Object obj, Object obj2) {
        ItemHierarchy itemHierarchy = (ItemHierarchy) obj;
        ItemHierarchy itemHierarchy2 = (ItemHierarchy) obj2;
        if (itemHierarchy instanceof ItemParent) {
            ((ItemParent) itemHierarchy).addChild(itemHierarchy2);
        } else {
            throw new IllegalArgumentException("Cannot add child item to " + itemHierarchy);
        }
    }
}
