package com.samsung.android.desktopsystemui.sharedlib.recents.view;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.view.AppTransitionAnimationSpec;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class AppTransitionAnimationSpecCompat {
    private Bitmap mBuffer;
    private Rect mRect;
    private int mTaskId;

    public AppTransitionAnimationSpecCompat(int i, Bitmap bitmap, Rect rect) {
        this.mTaskId = i;
        this.mBuffer = bitmap;
        this.mRect = rect;
    }

    public AppTransitionAnimationSpec toAppTransitionAnimationSpec() {
        HardwareBuffer hardwareBuffer;
        int i = this.mTaskId;
        Bitmap bitmap = this.mBuffer;
        if (bitmap != null) {
            hardwareBuffer = bitmap.getHardwareBuffer();
        } else {
            hardwareBuffer = null;
        }
        return new AppTransitionAnimationSpec(i, hardwareBuffer, this.mRect);
    }
}
