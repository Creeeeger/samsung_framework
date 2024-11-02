package com.android.systemui.volume;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VolumePanelDialogReceiver extends BroadcastReceiver {
    public final VolumePanelFactory volumePanelFactory;

    public VolumePanelDialogReceiver(VolumePanelFactory volumePanelFactory) {
        this.volumePanelFactory = volumePanelFactory;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Log.d("VolumePanelDialogReceiver", "onReceive intent" + intent.getAction());
        if (!TextUtils.equals("com.android.systemui.action.LAUNCH_VOLUME_PANEL_DIALOG", intent.getAction()) && !TextUtils.equals("android.settings.panel.action.VOLUME", intent.getAction())) {
            if (TextUtils.equals("com.android.systemui.action.DISMISS_VOLUME_PANEL_DIALOG", intent.getAction())) {
                this.volumePanelFactory.getClass();
                if (VolumePanelFactoryKt.DEBUG) {
                    Log.d("VolumePanelFactory", "dismiss dialog");
                }
                VolumePanelDialog volumePanelDialog = VolumePanelFactory.volumePanelDialog;
                if (volumePanelDialog != null) {
                    volumePanelDialog.dismiss();
                }
                VolumePanelFactory.volumePanelDialog = null;
                return;
            }
            return;
        }
        this.volumePanelFactory.create();
    }
}
