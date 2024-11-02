package com.android.systemui.navigationbar.gestural;

import android.graphics.Region;
import com.android.wm.shell.desktopmode.DesktopMode;
import com.android.wm.shell.pip.Pip;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class EdgeBackGestureHandler$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ EdgeBackGestureHandler f$0;

    public /* synthetic */ EdgeBackGestureHandler$$ExternalSyntheticLambda0(EdgeBackGestureHandler edgeBackGestureHandler, int i) {
        this.$r8$classId = i;
        this.f$0 = edgeBackGestureHandler;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                EdgeBackGestureHandler edgeBackGestureHandler = this.f$0;
                edgeBackGestureHandler.getClass();
                edgeBackGestureHandler.mIsInPip = ((Boolean) obj).booleanValue();
                return;
            case 1:
                this.f$0.mDesktopModeExcludeRegion.set((Region) obj);
                return;
            case 2:
                ((Pip) obj).setOnIsInPipStateChangedListener(this.f$0.mOnIsInPipStateChangedListener);
                return;
            default:
                EdgeBackGestureHandler edgeBackGestureHandler2 = this.f$0;
                ((DesktopMode) obj).addDesktopGestureExclusionRegionListener(edgeBackGestureHandler2.mMainExecutor, edgeBackGestureHandler2.mDesktopCornersChangedListener);
                return;
        }
    }
}
