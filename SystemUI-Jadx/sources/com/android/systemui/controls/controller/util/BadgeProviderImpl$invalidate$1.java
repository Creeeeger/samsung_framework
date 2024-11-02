package com.android.systemui.controls.controller.util;

import androidx.appcompat.view.menu.MenuItemImpl;
import com.android.systemui.R;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BadgeProviderImpl$invalidate$1 implements Runnable {
    public final /* synthetic */ BadgeProviderImpl this$0;

    public BadgeProviderImpl$invalidate$1(BadgeProviderImpl badgeProviderImpl) {
        this.this$0 = badgeProviderImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        if (!this.this$0.badgeRequiredSet.isEmpty()) {
            str = this.this$0.context.getResources().getString(R.string.controls_badge_symbol);
        } else {
            str = null;
        }
        Iterator it = this.this$0.badgeObservers.iterator();
        while (it.hasNext()) {
            ((MenuItemImpl) ((BadgeObserver) it.next()).menuItem).setBadgeText(str);
        }
    }
}
