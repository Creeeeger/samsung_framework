package com.android.wm.shell.freeform;

import android.content.Context;
import android.provider.Settings;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.transition.Transitions;
import java.util.Optional;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FreeformComponents {
    public final ShellTaskOrganizer.TaskListener mTaskListener;

    public FreeformComponents(ShellTaskOrganizer.TaskListener taskListener, Optional<Transitions.TransitionHandler> optional, Optional<Transitions.TransitionObserver> optional2) {
        this.mTaskListener = taskListener;
    }

    public static boolean isFreeformEnabled(Context context) {
        if (!context.getPackageManager().hasSystemFeature("android.software.freeform_window_management") && Settings.Global.getInt(context.getContentResolver(), "enable_freeform_support", 0) == 0) {
            return false;
        }
        return true;
    }
}
