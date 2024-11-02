package com.android.systemui;

import com.android.systemui.ScreenDecorations;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class ScreenDecorations$4$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ScreenDecorations$4$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ScreenDecorations screenDecorations = ((ScreenDecorations.AnonymousClass4) this.f$0).this$0;
                screenDecorations.updateOverlayProviderViews(new Integer[]{Integer.valueOf(screenDecorations.mFaceScanningViewId)});
                return;
            default:
                ((ScreenDecorations.AnonymousClass5) this.f$0).this$0.mCoverOverlay.rootView.invalidate();
                return;
        }
    }
}
