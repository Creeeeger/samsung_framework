package com.android.wm.shell.windowdecor;

import android.graphics.PointF;
import android.graphics.Rect;
import com.android.wm.shell.common.DisplayController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DragPositioningCallbackUtility {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface DragStartListener {
        void onDragStart(int i);
    }

    public static boolean changeBounds(int i, Rect rect, Rect rect2, Rect rect3, PointF pointF, DisplayController displayController, WindowDecoration windowDecoration) {
        float f;
        float f2;
        if (i == 0) {
            return false;
        }
        int i2 = rect.left;
        int i3 = rect.top;
        int i4 = rect.right;
        int i5 = rect.bottom;
        rect.set(rect2);
        displayController.getDisplayLayout(windowDecoration.mDisplay.getDisplayId()).getStableBounds(rect3, false);
        if ((i & 1) != 0) {
            int i6 = rect.left + ((int) pointF.x);
            if (i6 <= rect3.left) {
                i6 = i2;
            }
            rect.left = i6;
        }
        if ((i & 2) != 0) {
            int i7 = rect.right + ((int) pointF.x);
            if (i7 >= rect3.right) {
                i7 = i4;
            }
            rect.right = i7;
        }
        if ((i & 4) != 0) {
            int i8 = rect.top + ((int) pointF.y);
            if (i8 <= rect3.top) {
                i8 = i3;
            }
            rect.top = i8;
        }
        if ((i & 8) != 0) {
            int i9 = rect.bottom + ((int) pointF.y);
            if (i9 >= rect3.bottom) {
                i9 = i5;
            }
            rect.bottom = i9;
        }
        float width = rect.width();
        int i10 = windowDecoration.mTaskInfo.minWidth;
        if (i10 < 0) {
            f = windowDecoration.mTaskInfo.defaultMinSize * displayController.getDisplayLayout(r8.displayId).mDensityDpi * 0.00625f;
        } else {
            f = i10;
        }
        if (width < f) {
            rect.right = i4;
            rect.left = i2;
        }
        float height = rect.height();
        int i11 = windowDecoration.mTaskInfo.minHeight;
        if (i11 < 0) {
            f2 = windowDecoration.mTaskInfo.defaultMinSize * displayController.getDisplayLayout(r8.displayId).mDensityDpi * 0.00625f;
        } else {
            f2 = i11;
        }
        if (height < f2) {
            rect.top = i3;
            rect.bottom = i5;
        }
        if (i2 == rect.left && i3 == rect.top && i4 == rect.right && i5 == rect.bottom) {
            return false;
        }
        return true;
    }
}
