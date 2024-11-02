package com.android.systemui.decor;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.FaceScanningOverlay;
import com.android.systemui.R;
import com.android.systemui.RegionInterceptingFrameLayout;
import com.android.systemui.biometrics.AuthController;
import com.android.systemui.log.ScreenDecorationsLogger;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FaceScanningOverlayProviderImpl extends BoundDecorProvider {
    public final int alignedBound;
    public final AuthController authController;
    public final KeyguardUpdateMonitor keyguardUpdateMonitor;
    public final ScreenDecorationsLogger logger;
    public final Executor mainExecutor;
    public final StatusBarStateController statusBarStateController;
    public final int viewId = R.id.face_scanning_anim;

    public FaceScanningOverlayProviderImpl(int i, AuthController authController, StatusBarStateController statusBarStateController, KeyguardUpdateMonitor keyguardUpdateMonitor, Executor executor, ScreenDecorationsLogger screenDecorationsLogger) {
        this.alignedBound = i;
        this.authController = authController;
        this.statusBarStateController = statusBarStateController;
        this.keyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mainExecutor = executor;
        this.logger = screenDecorationsLogger;
    }

    @Override // com.android.systemui.decor.BoundDecorProvider
    public final int getAlignedBound() {
        return this.alignedBound;
    }

    @Override // com.android.systemui.decor.DecorProvider
    public final int getViewId() {
        return this.viewId;
    }

    @Override // com.android.systemui.decor.DecorProvider
    public final View inflateView(Context context, RegionInterceptingFrameLayout regionInterceptingFrameLayout, int i, int i2) {
        FaceScanningOverlay faceScanningOverlay = new FaceScanningOverlay(context, this.alignedBound, this.statusBarStateController, this.keyguardUpdateMonitor, this.mainExecutor, this.logger, this.authController);
        faceScanningOverlay.setId(this.viewId);
        faceScanningOverlay.setColor(i2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        updateLayoutParams(layoutParams, i);
        regionInterceptingFrameLayout.addView(faceScanningOverlay, layoutParams);
        return faceScanningOverlay;
    }

    @Override // com.android.systemui.decor.DecorProvider
    public final void onReloadResAndMeasure(View view, int i, int i2, int i3, String str) {
        FaceScanningOverlay faceScanningOverlay;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        updateLayoutParams(layoutParams, i2);
        view.setLayoutParams(layoutParams);
        if (view instanceof FaceScanningOverlay) {
            faceScanningOverlay = (FaceScanningOverlay) view;
        } else {
            faceScanningOverlay = null;
        }
        if (faceScanningOverlay != null) {
            faceScanningOverlay.setColor(i3);
            faceScanningOverlay.updateConfiguration(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        if (r6 != 3) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateLayoutParams(android.widget.FrameLayout.LayoutParams r5, int r6) {
        /*
            r4 = this;
            r0 = -1
            r5.width = r0
            r5.height = r0
            com.android.systemui.biometrics.AuthController r1 = r4.authController
            android.graphics.Point r2 = r1.mFaceSensorLocation
            com.android.systemui.log.ScreenDecorationsLogger r4 = r4.logger
            r4.faceSensorLocation(r2)
            android.graphics.Point r4 = r1.mFaceSensorLocation
            r1 = 3
            r2 = 1
            r3 = 2
            if (r4 == 0) goto L26
            int r4 = r4.y
            int r4 = r4 * r3
            if (r6 == 0) goto L24
            if (r6 == r2) goto L21
            if (r6 == r3) goto L24
            if (r6 == r1) goto L21
            goto L26
        L21:
            r5.width = r4
            goto L26
        L24:
            r5.height = r4
        L26:
            if (r6 == 0) goto L3b
            if (r6 == r2) goto L37
            if (r6 == r3) goto L33
            if (r6 == r1) goto L2f
            goto L3e
        L2f:
            r0 = 8388613(0x800005, float:1.175495E-38)
            goto L3e
        L33:
            r0 = 8388693(0x800055, float:1.1755063E-38)
            goto L3e
        L37:
            r0 = 8388611(0x800003, float:1.1754948E-38)
            goto L3e
        L3b:
            r0 = 8388659(0x800033, float:1.1755015E-38)
        L3e:
            r5.gravity = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.decor.FaceScanningOverlayProviderImpl.updateLayoutParams(android.widget.FrameLayout$LayoutParams, int):void");
    }
}
