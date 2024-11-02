package com.android.systemui.volume.util;

import android.graphics.Rect;
import android.view.View;
import kotlin.math.MathKt__MathJVMKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ViewUtil {
    public static final ViewUtil INSTANCE = new ViewUtil();

    private ViewUtil() {
    }

    public static boolean isTouched(View view, float f, float f2) {
        ViewLocationUtil.INSTANCE.getClass();
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        return new Rect(i, iArr[1], view.getWidth() + i, view.getHeight() + iArr[1]).contains(MathKt__MathJVMKt.roundToInt(f), MathKt__MathJVMKt.roundToInt(f2));
    }
}
