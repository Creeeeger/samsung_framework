package com.android.systemui.pluginlock.component;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.pluginlock.PluginLockMediator;
import com.android.systemui.pluginlock.PluginLockMediatorImpl;
import com.android.systemui.statusbar.policy.ZenModeController;
import com.android.systemui.statusbar.policy.ZenModeControllerImpl;
import com.android.systemui.util.LogUtil;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PluginLockShortcutDnd extends PluginLockShortcutTask implements ZenModeController.Callback {
    public final PluginLockMediator mMediator;
    public final ZenModeController mZenModeController;

    public PluginLockShortcutDnd(Context context, PluginLockMediator pluginLockMediator) {
        super(context);
        ZenModeController zenModeController = (ZenModeController) Dependency.get(ZenModeController.class);
        this.mZenModeController = zenModeController;
        ((ZenModeControllerImpl) zenModeController).addCallback(this);
        this.mMediator = pluginLockMediator;
    }

    @Override // com.android.systemui.statusbar.policy.ZenModeController.Callback
    public final void onZenChanged(int i) {
        boolean z = false;
        LogUtil.d("PluginLockShortcutDnd", MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onZenChanged [zen] ", i), new Object[0]);
        Bundle bundle = new Bundle();
        if (((ZenModeControllerImpl) this.mZenModeController).mZenMode == 1) {
            z = true;
        }
        bundle.putBoolean("isEnable", z);
        Bundle bundle2 = new Bundle();
        bundle2.putString("action", "get_lockstar_task_shortcut_state");
        bundle2.putString("arg", "Dnd");
        bundle2.putBundle("extras", bundle);
        ((PluginLockMediatorImpl) this.mMediator).onEventReceived(bundle2);
    }
}
