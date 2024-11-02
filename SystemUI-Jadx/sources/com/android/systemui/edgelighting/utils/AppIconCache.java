package com.android.systemui.edgelighting.utils;

import android.content.Context;
import android.util.LruCache;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AppIconCache {
    public final Context mContext;
    public final LruCache mIconCache = new LruCache(7);
    public final String KEY_SMALL_ICON = "smallIcon";

    public AppIconCache(Context context) {
        this.mContext = context;
    }
}
