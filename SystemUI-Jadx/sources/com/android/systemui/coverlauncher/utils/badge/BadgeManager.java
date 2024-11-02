package com.android.systemui.coverlauncher.utils.badge;

import android.util.Log;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BadgeManager {
    public static BadgeManager mInstance;
    public final HashMap mItems = new HashMap();

    public static BadgeManager getInstance() {
        if (mInstance == null) {
            mInstance = new BadgeManager();
        }
        return mInstance;
    }

    public final void addItem(BadgeItem badgeItem, String str) {
        Log.i("CoverLauncher_BadgeManager", "add item, key : " + str + ", item : " + badgeItem);
        this.mItems.put(str, badgeItem);
    }
}
