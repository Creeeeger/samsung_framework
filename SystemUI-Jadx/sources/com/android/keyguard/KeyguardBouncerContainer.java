package com.android.keyguard;

import android.content.Context;
import android.widget.FrameLayout;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.phone.CentralSurfaces;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardBouncerContainer extends FrameLayout {
    public final CentralSurfaces mService;
    public final StatusBarStateController mStatusBarStateController;

    public KeyguardBouncerContainer(Context context, CentralSurfaces centralSurfaces, StatusBarStateController statusBarStateController) {
        super(context);
        this.mService = centralSurfaces;
        this.mStatusBarStateController = statusBarStateController;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0070 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0071  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean dispatchKeyEvent(android.view.KeyEvent r6) {
        /*
            r5 = this;
            boolean r0 = com.android.systemui.util.SafeUIState.isSysUiSafeModeEnabled()
            if (r0 == 0) goto Lb
            boolean r5 = super.dispatchKeyEvent(r6)
            return r5
        Lb:
            int r0 = r6.getAction()
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L15
            r0 = r2
            goto L16
        L15:
            r0 = r1
        L16:
            int r3 = r6.getKeyCode()
            r4 = 4
            if (r3 == r4) goto L76
            r4 = 62
            if (r3 == r4) goto L4d
            r4 = 82
            if (r3 == r4) goto L42
            r0 = 24
            if (r3 == r0) goto L2e
            r0 = 25
            if (r3 == r0) goto L2e
            goto L66
        L2e:
            com.android.systemui.plugins.statusbar.StatusBarStateController r0 = r5.mStatusBarStateController
            boolean r0 = r0.isDozing()
            if (r0 == 0) goto L66
            android.content.Context r5 = r5.mContext
            android.media.session.MediaSessionLegacyHelper r5 = android.media.session.MediaSessionLegacyHelper.getHelper(r5)
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r5.sendVolumeKeyEvent(r6, r0, r2)
            return r2
        L42:
            if (r0 != 0) goto L4d
            com.android.systemui.statusbar.phone.CentralSurfaces r5 = r5.mService
            com.android.systemui.statusbar.phone.CentralSurfacesImpl r5 = (com.android.systemui.statusbar.phone.CentralSurfacesImpl) r5
            boolean r5 = r5.onMenuPressed()
            return r5
        L4d:
            if (r0 != 0) goto L66
            com.android.systemui.statusbar.phone.CentralSurfaces r5 = r5.mService
            com.android.systemui.statusbar.phone.CentralSurfacesImpl r5 = (com.android.systemui.statusbar.phone.CentralSurfacesImpl) r5
            boolean r6 = r5.mDeviceInteractive
            if (r6 == 0) goto L65
            int r6 = r5.mState
            if (r6 == 0) goto L65
            com.android.systemui.shade.ShadeController r5 = r5.mShadeController
            com.android.systemui.shade.ShadeControllerImpl r5 = (com.android.systemui.shade.ShadeControllerImpl) r5
            r6 = 1065353216(0x3f800000, float:1.0)
            r5.animateCollapsePanels(r6, r1, r2, r1)
            r1 = r2
        L65:
            return r1
        L66:
            com.android.systemui.statusbar.phone.CentralSurfaces r0 = r5.mService
            com.android.systemui.statusbar.phone.CentralSurfacesImpl r0 = (com.android.systemui.statusbar.phone.CentralSurfacesImpl) r0
            boolean r0 = r0.interceptMediaKey(r6)
            if (r0 == 0) goto L71
            return r2
        L71:
            boolean r5 = super.dispatchKeyEvent(r6)
            return r5
        L76:
            if (r0 != 0) goto L7f
            com.android.systemui.statusbar.phone.CentralSurfaces r5 = r5.mService
            com.android.systemui.statusbar.phone.CentralSurfacesImpl r5 = (com.android.systemui.statusbar.phone.CentralSurfacesImpl) r5
            r5.onBackPressed()
        L7f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardBouncerContainer.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }
}
