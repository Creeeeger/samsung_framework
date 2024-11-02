package com.android.systemui.coverlauncher.utils.badge;

import android.content.Context;
import android.net.Uri;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BadgeUtils {
    public static final Uri BADGE_URI = Uri.parse("content://com.sec.badge/apps");
    public static final String[] COLUMNS = {"package", "class", "badgecount"};
    public final Context mContext;

    public BadgeUtils(Context context) {
        this.mContext = context;
    }
}
