package com.android.systemui.doze;

import com.android.systemui.doze.DozeMachine;
import com.android.systemui.shade.NotificationShadeWindowControllerImpl;
import com.android.systemui.statusbar.phone.DozeServiceHost;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DozeBrightnessHostForwarder extends DozeMachine.Service.Delegate {
    public final DozeHost mHost;

    public DozeBrightnessHostForwarder(DozeMachine.Service service, DozeHost dozeHost, Executor executor) {
        super(service, executor);
        this.mHost = dozeHost;
    }

    @Override // com.android.systemui.doze.DozeMachine.Service.Delegate, com.android.systemui.doze.DozeMachine.Service
    public final void setDozeScreenBrightness(int i) {
        super.setDozeScreenBrightness(i);
        DozeServiceHost dozeServiceHost = (DozeServiceHost) this.mHost;
        dozeServiceHost.mDozeLog.traceDozeScreenBrightness(i);
        ((NotificationShadeWindowControllerImpl) dozeServiceHost.mNotificationShadeWindowController).mScreenBrightnessDoze = i / 255.0f;
    }
}
