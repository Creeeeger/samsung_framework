package com.android.systemui.util;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TouchDelegateUtil {
    public static final TouchDelegateUtil INSTANCE = new TouchDelegateUtil();

    private TouchDelegateUtil() {
    }

    public static void expandTouchAreaAsParent(final View view, final View view2) {
        view.post(new Runnable() { // from class: com.android.systemui.util.TouchDelegateUtil$expandTouchAreaAsParent$1
            @Override // java.lang.Runnable
            public final void run() {
                Rect rect = new Rect();
                view2.getHitRect(rect);
                View view3 = view;
                rect.left = 0;
                rect.top = 0;
                rect.right = view3.getWidth();
                rect.bottom = view3.getHeight();
                view.setTouchDelegate(new TouchDelegate(rect, view2));
            }
        });
    }
}
