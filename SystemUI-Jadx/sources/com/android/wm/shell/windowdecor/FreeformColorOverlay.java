package com.android.wm.shell.windowdecor;

import android.graphics.Rect;
import android.view.SurfaceControl;
import android.view.SurfaceSession;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FreeformColorOverlay {
    public final Rect mCropRect;
    public SurfaceControl mLeash;
    public final Object mLock;
    public final SurfaceControl.Transaction mTransaction;

    public FreeformColorOverlay() {
        Object obj = new Object();
        this.mLock = obj;
        this.mTransaction = new SurfaceControl.Transaction();
        this.mCropRect = new Rect();
        synchronized (obj) {
            this.mLeash = new SurfaceControl.Builder(new SurfaceSession()).setCallsite("FreeformColorOverlay").setName("FreeformColorOverlay").setContainerLayer().setHidden(true).build();
        }
    }

    public final boolean isLeashValidLocked() {
        SurfaceControl surfaceControl = this.mLeash;
        if (surfaceControl != null && surfaceControl.isValid()) {
            return true;
        }
        return false;
    }
}
