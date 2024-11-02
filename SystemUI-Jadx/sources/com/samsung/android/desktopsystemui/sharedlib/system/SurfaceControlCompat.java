package com.samsung.android.desktopsystemui.sharedlib.system;

import android.view.SurfaceControl;
import android.view.View;
import android.view.ViewRootImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SurfaceControlCompat {
    final SurfaceControl mSurfaceControl;

    public SurfaceControlCompat(SurfaceControl surfaceControl) {
        this.mSurfaceControl = surfaceControl;
    }

    public SurfaceControl getSurfaceControl() {
        return this.mSurfaceControl;
    }

    public boolean isValid() {
        SurfaceControl surfaceControl = this.mSurfaceControl;
        if (surfaceControl != null && surfaceControl.isValid()) {
            return true;
        }
        return false;
    }

    public SurfaceControlCompat(View view) {
        ViewRootImpl viewRootImpl = view.getViewRootImpl();
        this.mSurfaceControl = viewRootImpl != null ? viewRootImpl.getSurfaceControl() : null;
    }
}
