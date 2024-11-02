package com.android.wm.shell.transition;

import android.view.SurfaceControl;
import android.view.SurfaceSession;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DimTransitionProvider {
    public static SurfaceControl attachDimTransitionSurface(SurfaceSession surfaceSession, SurfaceControl surfaceControl, SurfaceControl surfaceControl2, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2) {
        SurfaceControl build = new SurfaceControl.Builder(surfaceSession).setParent(surfaceControl).setColorLayer().setName("DimTransitionLayer for " + surfaceControl2).setCallsite("DimTransitionProvider#attachDimTransitionSurface").build();
        transaction.setRelativeLayer(build, surfaceControl2, -1);
        transaction.setAlpha(build, 0.0f);
        transaction.show(build);
        if (build.isValid()) {
            transaction2.reparent(build, null);
        }
        return build;
    }
}
