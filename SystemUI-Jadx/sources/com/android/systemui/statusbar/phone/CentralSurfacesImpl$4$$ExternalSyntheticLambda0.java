package com.android.systemui.statusbar.phone;

import android.util.ArraySet;
import com.android.systemui.plugins.OverlayPlugin;
import com.android.systemui.shade.NotificationShadeWindowControllerImpl;
import com.android.systemui.statusbar.NotificationShadeWindowController;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class CentralSurfacesImpl$4$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CentralSurfacesImpl.AnonymousClass4 f$0;
    public final /* synthetic */ OverlayPlugin f$1;

    public /* synthetic */ CentralSurfacesImpl$4$$ExternalSyntheticLambda0(CentralSurfacesImpl.AnonymousClass4 anonymousClass4, OverlayPlugin overlayPlugin, int i) {
        this.$r8$classId = i;
        this.f$0 = anonymousClass4;
        this.f$1 = overlayPlugin;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        switch (this.$r8$classId) {
            case 0:
                CentralSurfacesImpl.AnonymousClass4 anonymousClass4 = this.f$0;
                OverlayPlugin overlayPlugin = this.f$1;
                ArraySet arraySet = anonymousClass4.mOverlays;
                arraySet.remove(overlayPlugin);
                NotificationShadeWindowController notificationShadeWindowController = CentralSurfacesImpl.this.mNotificationShadeWindowController;
                if (arraySet.size() != 0) {
                    z = true;
                } else {
                    z = false;
                }
                ((NotificationShadeWindowControllerImpl) notificationShadeWindowController).setForcePluginOpen(anonymousClass4, z);
                return;
            default:
                CentralSurfacesImpl.AnonymousClass4 anonymousClass42 = this.f$0;
                OverlayPlugin overlayPlugin2 = this.f$1;
                CentralSurfacesImpl centralSurfacesImpl = CentralSurfacesImpl.this;
                overlayPlugin2.setup(centralSurfacesImpl.mNotificationShadeWindowView, centralSurfacesImpl.getNavigationBarView(), new CentralSurfacesImpl.AnonymousClass4.Callback(overlayPlugin2), centralSurfacesImpl.mDozeParameters);
                return;
        }
    }
}
