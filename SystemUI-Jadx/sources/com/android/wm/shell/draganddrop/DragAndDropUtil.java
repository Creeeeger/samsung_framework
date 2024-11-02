package com.android.wm.shell.draganddrop;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DragAndDropUtil {
    public static float calculateFontSizeWithScale(float f, float f2) {
        double ceil;
        if (f2 > 1.3f) {
            ceil = Math.floor(Math.ceil(f / f2) * 1.2999999523162842d);
        } else {
            ceil = Math.ceil(f);
        }
        return (float) ceil;
    }
}
