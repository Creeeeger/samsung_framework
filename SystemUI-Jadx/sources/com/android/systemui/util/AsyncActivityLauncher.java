package com.android.systemui.util;

import android.app.IActivityTaskManager;
import android.content.Context;
import java.util.concurrent.Executor;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AsyncActivityLauncher {
    public final IActivityTaskManager activityTaskManager;
    public final Executor backgroundExecutor;
    public final Context context;
    public final Executor mainExecutor;
    public Function1 pendingCallback;

    public AsyncActivityLauncher(Context context, IActivityTaskManager iActivityTaskManager, Executor executor, Executor executor2) {
        this.context = context;
        this.activityTaskManager = iActivityTaskManager;
        this.backgroundExecutor = executor;
        this.mainExecutor = executor2;
    }
}
