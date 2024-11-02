package com.android.systemui.shade;

import android.telephony.TelephonyManager;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.shade.SecPanelPolicy;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SecPanelPolicy$PhoneStateManager$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SecPanelPolicy$PhoneStateManager$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                SecPanelPolicy.PhoneStateManager phoneStateManager = (SecPanelPolicy.PhoneStateManager) this.f$0;
                SecNotificationShadeWindowControllerHelperImpl secNotificationShadeWindowControllerHelperImpl = ((NotificationShadeWindowControllerImpl) phoneStateManager.mNotificationShadeWindowController).mHelper;
                boolean z = !TelephonyManager.EXTRA_STATE_OFFHOOK.equals(phoneStateManager.mPhoneState);
                NotificationShadeWindowState currentState = secNotificationShadeWindowControllerHelperImpl.getCurrentState();
                if (currentState.statusBarSplitTouchable != z) {
                    currentState.statusBarSplitTouchable = z;
                    secNotificationShadeWindowControllerHelperImpl.apply(currentState);
                }
                KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("setStatusBarSplitTouchable:", z, "NotificationShadeWindowController");
                return;
            case 1:
                ((CentralSurfacesImpl) ((CentralSurfaces) this.f$0)).updateQsExpansionEnabled();
                return;
            default:
                SecPanelPolicy.SecPanelSmartMirroringManager secPanelSmartMirroringManager = (SecPanelPolicy.SecPanelSmartMirroringManager) this.f$0;
                SecPanelPolicy.this.mPanelConfigurationBellTower.ringConfigurationBell();
                secPanelSmartMirroringManager.mQSTileHost.refreshTileList();
                return;
        }
    }
}
