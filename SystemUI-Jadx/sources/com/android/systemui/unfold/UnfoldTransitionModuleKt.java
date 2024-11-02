package com.android.systemui.unfold;

import android.os.SystemProperties;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class UnfoldTransitionModuleKt {
    public static final boolean ENABLE_FOLD_TASK_ANIMATIONS = SystemProperties.getBoolean("persist.unfold.enable_fold_tasks_animation", false);
}
