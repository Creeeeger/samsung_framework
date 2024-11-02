package com.android.systemui.dreams.touch.scrim;

import android.os.PowerManager;
import android.os.SystemClock;
import com.android.systemui.shade.ShadeExpansionChangeEvent;
import com.android.systemui.unfold.util.CallbackController;
import java.util.HashSet;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BouncerlessScrimController implements ScrimController, CallbackController {
    public final HashSet mCallbacks = new HashSet();
    public final Executor mExecutor;
    public final PowerManager mPowerManager;

    public BouncerlessScrimController(Executor executor, PowerManager powerManager) {
        this.mExecutor = executor;
        this.mPowerManager = powerManager;
    }

    @Override // com.android.systemui.dreams.touch.scrim.ScrimController
    public final void expand(ShadeExpansionChangeEvent shadeExpansionChangeEvent) {
        boolean z = shadeExpansionChangeEvent.expanded;
        Executor executor = this.mExecutor;
        if (z) {
            this.mPowerManager.wakeUp(SystemClock.uptimeMillis(), 4, "com.android.systemui:SwipeUp");
            executor.execute(new Runnable() { // from class: com.android.systemui.dreams.touch.scrim.BouncerlessScrimController$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    BouncerlessScrimController.this.mCallbacks.forEach(new BouncerlessScrimController$$ExternalSyntheticLambda3());
                }
            });
            return;
        }
        executor.execute(new BouncerlessScrimController$$ExternalSyntheticLambda0(this, shadeExpansionChangeEvent, 1));
    }
}
