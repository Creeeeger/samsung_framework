package com.android.systemui.controls.ui.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.android.systemui.animation.ActivityLaunchAnimator;
import com.android.systemui.controls.dagger.ControlsComponent;
import com.android.systemui.controls.ui.ControlsUiController;
import com.android.systemui.controls.ui.CustomControlsUiController;
import com.android.systemui.controls.ui.CustomControlsUiControllerImpl;
import com.android.systemui.plugins.ActivityStarter;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlsActivityStarterImpl implements ControlsActivityStarter {
    public final ActivityStarter activityStarter;
    public final ControlsComponent controlsComponent;

    public ControlsActivityStarterImpl(ActivityStarter activityStarter, ControlsComponent controlsComponent, ControlsUtil controlsUtil) {
        this.activityStarter = activityStarter;
        this.controlsComponent = controlsComponent;
    }

    public final void startActivity(Context context, Class cls) {
        Intent intent = new Intent(context, (Class<?>) cls);
        intent.addFlags(335544320);
        this.activityStarter.startActivity(intent, true);
    }

    public final void startCustomControlsActivity(Context context) {
        Optional empty;
        ControlsComponent controlsComponent = this.controlsComponent;
        if (controlsComponent.getCustomControlsUiController().isPresent()) {
            Intent intent = new Intent();
            if (controlsComponent.featureEnabled) {
                empty = Optional.of(controlsComponent.lazyControlsUiController.get());
            } else {
                empty = Optional.empty();
            }
            intent.setComponent(new ComponentName(context, (Class<?>) ((CustomControlsUiControllerImpl) ((ControlsUiController) empty.get())).resolveActivity()));
            intent.addFlags(335544320);
            this.activityStarter.startActivity(intent, true, (ActivityLaunchAnimator.Controller) null, ((CustomControlsUiControllerImpl) ((CustomControlsUiController) controlsComponent.getCustomControlsUiController().get())).isShowOverLockscreenWhenLocked);
            return;
        }
        Log.w("ControlsActivityStarterImpl", "feature:android.software.controls is disabled");
    }
}
