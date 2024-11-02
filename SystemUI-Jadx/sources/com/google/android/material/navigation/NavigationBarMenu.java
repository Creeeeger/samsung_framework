package com.google.android.material.navigation;

import android.content.Context;
import android.view.SubMenu;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NavigationBarMenu extends MenuBuilder {
    public final Class viewClass;

    public NavigationBarMenu(Context context, Class<?> cls, int i) {
        super(context);
        this.viewClass = cls;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    public final MenuItemImpl addInternal(int i, int i2, int i3, CharSequence charSequence) {
        stopDispatchingItemsChanged();
        MenuItemImpl addInternal = super.addInternal(i, i2, i3, charSequence);
        addInternal.setExclusiveCheckable(true);
        startDispatchingItemsChanged();
        return addInternal;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        throw new UnsupportedOperationException(this.viewClass.getSimpleName().concat(" does not support submenus"));
    }
}
