package com.android.systemui.statusbar.phone;

import android.util.Log;
import android.view.WindowManagerGlobal;
import com.android.internal.logging.MetricsLogger;
import com.android.systemui.shade.NotificationShadeWindowControllerImpl;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class CentralSurfacesImpl$9$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ CentralSurfacesImpl$9$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z = true;
        switch (this.$r8$classId) {
            case 0:
                CentralSurfacesImpl.AnonymousClass9 anonymousClass9 = (CentralSurfacesImpl.AnonymousClass9) this.f$0;
                anonymousClass9.getClass();
                Log.d("CentralSurfaces", "Clear all notifications and count major view number from aecmonitor");
                MetricsLogger.action(CentralSurfacesImpl.this.mContext, 148);
                CentralSurfacesImpl.this.mStackScroller.clearNotifications(0, true);
                if (!((KeyguardStateControllerImpl) CentralSurfacesImpl.this.mKeyguardStateController).mShowing) {
                    WindowManagerGlobal.getInstance().trimMemory(80);
                    return;
                }
                return;
            default:
                CentralSurfacesImpl.AnonymousClass4.Callback callback = (CentralSurfacesImpl.AnonymousClass4.Callback) this.f$0;
                CentralSurfacesImpl.AnonymousClass4 anonymousClass4 = CentralSurfacesImpl.AnonymousClass4.this;
                NotificationShadeWindowControllerImpl notificationShadeWindowControllerImpl = (NotificationShadeWindowControllerImpl) CentralSurfacesImpl.this.mNotificationShadeWindowController;
                notificationShadeWindowControllerImpl.mListener = new CentralSurfacesImpl$$ExternalSyntheticLambda0(callback);
                if (anonymousClass4.mOverlays.size() == 0) {
                    z = false;
                }
                notificationShadeWindowControllerImpl.setForcePluginOpen(callback, z);
                return;
        }
    }
}
