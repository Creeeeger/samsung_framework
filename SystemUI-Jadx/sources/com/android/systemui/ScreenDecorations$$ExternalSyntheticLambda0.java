package com.android.systemui;

import android.os.Trace;
import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class ScreenDecorations$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ScreenDecorations f$0;
    public final /* synthetic */ View f$1;

    public /* synthetic */ ScreenDecorations$$ExternalSyntheticLambda0(ScreenDecorations screenDecorations, View view, int i) {
        this.$r8$classId = i;
        this.f$0 = screenDecorations;
        this.f$1 = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.getClass();
                return;
            default:
                ScreenDecorations screenDecorations = this.f$0;
                FaceScanningOverlay faceScanningOverlay = (FaceScanningOverlay) this.f$1;
                screenDecorations.getClass();
                Trace.beginSection("ScreenDecorations#hideOverlayRunnable");
                screenDecorations.updateOverlayWindowVisibilityIfViewExists(faceScanningOverlay.findViewById(screenDecorations.mFaceScanningViewId));
                Trace.endSection();
                return;
        }
    }
}
