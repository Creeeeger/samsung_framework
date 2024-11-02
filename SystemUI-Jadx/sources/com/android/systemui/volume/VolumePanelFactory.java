package com.android.systemui.volume;

import android.content.Context;
import com.android.systemui.animation.DialogLaunchAnimator;
import com.android.systemui.plugins.ActivityStarter;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VolumePanelFactory {
    public static VolumePanelDialog volumePanelDialog;
    public final ActivityStarter activityStarter;
    public final Context context;
    public final DialogLaunchAnimator dialogLaunchAnimator;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public VolumePanelFactory(Context context, ActivityStarter activityStarter, DialogLaunchAnimator dialogLaunchAnimator) {
        this.context = context;
        this.activityStarter = activityStarter;
        this.dialogLaunchAnimator = dialogLaunchAnimator;
    }

    public final void create() {
        boolean z;
        VolumePanelDialog volumePanelDialog2 = volumePanelDialog;
        if (volumePanelDialog2 != null && volumePanelDialog2.isShowing()) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        VolumePanelDialog volumePanelDialog3 = new VolumePanelDialog(this.context, this.activityStarter, true);
        volumePanelDialog = volumePanelDialog3;
        volumePanelDialog3.show();
    }
}
