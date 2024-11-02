package com.android.systemui.volume.util;

import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ViewVisibilityUtil {
    public static final ViewVisibilityUtil INSTANCE = new ViewVisibilityUtil();

    private ViewVisibilityUtil() {
    }

    public static void setGone(View view) {
        view.setVisibility(8);
    }
}
