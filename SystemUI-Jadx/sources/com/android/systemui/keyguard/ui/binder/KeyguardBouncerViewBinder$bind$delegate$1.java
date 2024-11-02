package com.android.systemui.keyguard.ui.binder;

import android.app.ActivityManager;
import com.android.keyguard.KeyguardSecSecurityContainerController;
import com.android.keyguard.KeyguardSecurityContainer;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.keyguard.data.BouncerViewDelegate;
import java.io.File;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardBouncerViewBinder$bind$delegate$1 implements BouncerViewDelegate {
    public final /* synthetic */ KeyguardSecSecurityContainerController $securityContainerController;

    public KeyguardBouncerViewBinder$bind$delegate$1(KeyguardSecSecurityContainerController keyguardSecSecurityContainerController) {
        this.$securityContainerController = keyguardSecSecurityContainerController;
    }

    public final boolean shouldDismissOnMenuPressed() {
        KeyguardSecSecurityContainerController keyguardSecSecurityContainerController = this.$securityContainerController;
        keyguardSecSecurityContainerController.getClass();
        if (LsRune.SECURITY_SIM_PERM_DISABLED && keyguardSecSecurityContainerController.mUpdateMonitor.isSimDisabledPermanently()) {
            return false;
        }
        boolean z = ((KeyguardSecurityContainer) keyguardSecSecurityContainerController.mView).getResources().getBoolean(R.bool.config_disableMenuKeyInLockScreen);
        boolean isRunningInTestHarness = ActivityManager.isRunningInTestHarness();
        boolean exists = new File("/data/local/enable_menu_key").exists();
        if (z && !isRunningInTestHarness && !exists) {
            return false;
        }
        return true;
    }
}
