package com.android.systemui.statusbar;

import android.graphics.Insets;
import android.util.Pair;
import android.view.DisplayCutout;
import android.view.WindowInsets;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationInsetsImpl extends NotificationInsetsController {
    @Override // com.android.systemui.statusbar.NotificationInsetsController
    public final Pair getinsets(WindowInsets windowInsets, DisplayCutout displayCutout) {
        int i;
        int i2;
        Insets insetsIgnoringVisibility = windowInsets.getInsetsIgnoringVisibility(WindowInsets.Type.systemBars());
        if (displayCutout != null) {
            i = displayCutout.getSafeInsetLeft();
            i2 = displayCutout.getSafeInsetRight();
        } else {
            i = 0;
            i2 = 0;
        }
        return new Pair(Integer.valueOf(Math.max(insetsIgnoringVisibility.left, i)), Integer.valueOf(Math.max(insetsIgnoringVisibility.right, i2)));
    }
}
