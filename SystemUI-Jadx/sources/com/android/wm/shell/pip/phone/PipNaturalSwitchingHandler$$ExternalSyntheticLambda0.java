package com.android.wm.shell.pip.phone;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class PipNaturalSwitchingHandler$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ PipNaturalSwitchingHandler$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                PipNaturalSwitchingHandler pipNaturalSwitchingHandler = (PipNaturalSwitchingHandler) this.f$0;
                pipNaturalSwitchingHandler.getClass();
                Log.w("PipNaturalSwitchingHandler", "mTaskVanishedTimeout: " + pipNaturalSwitchingHandler);
                pipNaturalSwitchingHandler.updateWaitingForTaskVanished("timeout", false);
                return;
            default:
                MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("startEnterAnimation: up-scale finished, ", (String) this.f$0, "PipNaturalSwitchingHandler");
                return;
        }
    }
}
