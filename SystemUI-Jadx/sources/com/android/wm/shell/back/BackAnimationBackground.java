package com.android.wm.shell.back;

import android.graphics.Color;
import android.graphics.Rect;
import android.view.SurfaceControl;
import com.android.internal.graphics.ColorUtils;
import com.android.internal.view.AppearanceRegion;
import com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler;
import com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler$$ExternalSyntheticLambda5;
import com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler$$ExternalSyntheticLambda7;
import com.android.wm.shell.RootTaskDisplayAreaOrganizer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BackAnimationBackground {
    public boolean mBackgroundIsDark;
    public SurfaceControl mBackgroundSurface;
    public EdgeBackGestureHandler$$ExternalSyntheticLambda5 mCustomizer;
    public boolean mIsRequestingStatusBarAppearance;
    public final RootTaskDisplayAreaOrganizer mRootTaskDisplayAreaOrganizer;
    public Rect mStartBounds;

    public BackAnimationBackground(RootTaskDisplayAreaOrganizer rootTaskDisplayAreaOrganizer) {
        this.mRootTaskDisplayAreaOrganizer = rootTaskDisplayAreaOrganizer;
    }

    public final void ensureBackground(Rect rect, int i, SurfaceControl.Transaction transaction) {
        boolean z;
        if (this.mBackgroundSurface != null) {
            return;
        }
        if (ColorUtils.calculateLuminance(i) < 0.5d) {
            z = true;
        } else {
            z = false;
        }
        this.mBackgroundIsDark = z;
        float[] fArr = {Color.red(i) / 255.0f, Color.green(i) / 255.0f, Color.blue(i) / 255.0f};
        SurfaceControl.Builder colorLayer = new SurfaceControl.Builder().setName("back-animation-background").setCallsite("BackAnimationBackground").setColorLayer();
        colorLayer.setParent((SurfaceControl) this.mRootTaskDisplayAreaOrganizer.mLeashes.get(0));
        SurfaceControl build = colorLayer.build();
        this.mBackgroundSurface = build;
        transaction.setColor(build, fArr).setLayer(this.mBackgroundSurface, -1).show(this.mBackgroundSurface);
        this.mStartBounds = rect;
        this.mIsRequestingStatusBarAppearance = false;
    }

    public final void onBackProgressed(float f) {
        boolean z;
        if (this.mCustomizer != null && !this.mStartBounds.isEmpty()) {
            int i = 0;
            if (f > 0.2f) {
                z = true;
            } else {
                z = false;
            }
            if (z == this.mIsRequestingStatusBarAppearance) {
                return;
            }
            this.mIsRequestingStatusBarAppearance = z;
            if (z) {
                if (!this.mBackgroundIsDark) {
                    i = 8;
                }
                AppearanceRegion appearanceRegion = new AppearanceRegion(i, this.mStartBounds);
                EdgeBackGestureHandler edgeBackGestureHandler = this.mCustomizer.f$0;
                edgeBackGestureHandler.getClass();
                edgeBackGestureHandler.mMainExecutor.execute(new EdgeBackGestureHandler$$ExternalSyntheticLambda7(edgeBackGestureHandler, appearanceRegion));
                return;
            }
            EdgeBackGestureHandler edgeBackGestureHandler2 = this.mCustomizer.f$0;
            edgeBackGestureHandler2.getClass();
            edgeBackGestureHandler2.mMainExecutor.execute(new EdgeBackGestureHandler$$ExternalSyntheticLambda7(edgeBackGestureHandler2, null));
        }
    }

    public final void removeBackground(SurfaceControl.Transaction transaction) {
        SurfaceControl surfaceControl = this.mBackgroundSurface;
        if (surfaceControl == null) {
            return;
        }
        if (surfaceControl.isValid()) {
            transaction.remove(this.mBackgroundSurface);
        }
        this.mBackgroundSurface = null;
        this.mIsRequestingStatusBarAppearance = false;
    }
}
