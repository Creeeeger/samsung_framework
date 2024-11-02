package com.android.systemui.edgelighting.backup;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Slog;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class EdgeLightingBRReceiver extends BroadcastReceiver {
    public EdgeLightingBRThread mKiesThread = null;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent.getAction().equalsIgnoreCase("com.samsung.android.intent.action.REQUEST_RESTORE_EDGELIGHTING")) {
            if (intent.getIntExtra("ACTION", 0) == 2) {
                EdgeLightingBRThread edgeLightingBRThread = this.mKiesThread;
                if (edgeLightingBRThread != null && edgeLightingBRThread.isAlive()) {
                    Slog.e("EdgeLightingBRReceiver", "Cancel request");
                    this.mKiesThread.mHandler.sendEmptyMessage(2);
                    return;
                }
                return;
            }
            EdgeLightingBRThread edgeLightingBRThread2 = new EdgeLightingBRThread(context, intent);
            this.mKiesThread = edgeLightingBRThread2;
            edgeLightingBRThread2.start();
        }
    }
}
