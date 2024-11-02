package com.android.systemui.statusbar.phone;

import com.android.systemui.shade.ShadeController;
import com.android.systemui.shade.ShadeControllerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class CentralSurfacesImpl$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ShadeController f$0;

    public /* synthetic */ CentralSurfacesImpl$$ExternalSyntheticLambda1(ShadeController shadeController, int i) {
        this.$r8$classId = i;
        this.f$0 = shadeController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((ShadeControllerImpl) this.f$0).animateCollapseShade(0);
                return;
            case 1:
                ((ShadeControllerImpl) this.f$0).animateCollapsePanels(1.0f, 0, true, false);
                return;
            case 2:
                ((ShadeControllerImpl) this.f$0).collapseShade();
                return;
            default:
                ((ShadeControllerImpl) this.f$0).makeExpandedInvisible();
                return;
        }
    }
}
