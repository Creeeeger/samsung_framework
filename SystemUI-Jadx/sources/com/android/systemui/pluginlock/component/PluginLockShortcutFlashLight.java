package com.android.systemui.pluginlock.component;

import android.content.Context;
import android.os.Bundle;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.pluginlock.PluginLockMediator;
import com.android.systemui.pluginlock.PluginLockMediatorImpl;
import com.android.systemui.statusbar.policy.FlashlightController;
import com.android.systemui.statusbar.policy.FlashlightControllerImpl;
import com.android.systemui.util.LogUtil;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PluginLockShortcutFlashLight extends PluginLockShortcutTask implements FlashlightController.FlashlightListener {
    public final FlashlightController mFlashlightController;
    public final PluginLockMediator mMediator;

    public PluginLockShortcutFlashLight(Context context, PluginLockMediator pluginLockMediator) {
        super(context);
        FlashlightController flashlightController = (FlashlightController) Dependency.get(FlashlightController.class);
        this.mFlashlightController = flashlightController;
        ((FlashlightControllerImpl) flashlightController).addListener(this);
        this.mMediator = pluginLockMediator;
    }

    @Override // com.android.systemui.statusbar.policy.FlashlightController.FlashlightListener
    public final void onFlashlightChanged(boolean z) {
        LogUtil.d("PluginLockShortcutFlashLight", KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("onFlashlightChanged [enabled] ", z), new Object[0]);
        Bundle bundle = new Bundle();
        bundle.putBoolean("isEnable", z);
        Bundle bundle2 = new Bundle();
        bundle2.putString("action", "get_lockstar_task_shortcut_state");
        bundle2.putString("arg", "Flashlight");
        bundle2.putBundle("extras", bundle);
        ((PluginLockMediatorImpl) this.mMediator).onEventReceived(bundle2);
    }

    @Override // com.android.systemui.statusbar.policy.FlashlightController.FlashlightListener
    public final void onFlashlightAvailabilityChanged(boolean z) {
    }

    @Override // com.android.systemui.statusbar.policy.FlashlightController.FlashlightListener
    public final void onFlashlightError() {
    }
}
