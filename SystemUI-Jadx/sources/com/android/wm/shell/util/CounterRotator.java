package com.android.wm.shell.util;

import android.graphics.Point;
import android.util.RotationUtils;
import android.view.SurfaceControl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CounterRotator {
    public SurfaceControl mSurface = null;

    public final void setup(float f, float f2, int i, SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
        if (i == 0) {
            return;
        }
        SurfaceControl build = new SurfaceControl.Builder().setName("Transition Unrotate").setContainerLayer().setParent(surfaceControl).build();
        this.mSurface = build;
        RotationUtils.rotateSurface(transaction, build, i);
        Point point = new Point(0, 0);
        if (i % 2 != 0) {
            f2 = f;
            f = f2;
        }
        RotationUtils.rotatePoint(point, i, (int) f, (int) f2);
        transaction.setPosition(this.mSurface, point.x, point.y);
        transaction.show(this.mSurface);
    }
}
