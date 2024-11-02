package com.android.systemui.util;

import android.content.res.Resources;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LargeScreenUtils {
    static {
        new LargeScreenUtils();
    }

    private LargeScreenUtils() {
    }

    public static final boolean shouldUseSplitNotificationShade(Resources resources) {
        return resources.getBoolean(R.bool.config_use_split_notification_shade);
    }
}
