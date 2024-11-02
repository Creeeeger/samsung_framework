package com.android.wm.shell.common;

import android.util.Slog;
import com.android.wm.shell.splitscreen.SplitScreenController;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ExecutorUtils {
    public static void executeRemoteCall(SplitScreenController splitScreenController, Consumer consumer) {
        if (splitScreenController == null) {
            return;
        }
        ((HandlerExecutor) splitScreenController.mMainExecutor).execute(new ExecutorUtils$$ExternalSyntheticLambda0(consumer, splitScreenController, 2));
    }

    public static void executeRemoteCallWithTaskPermission(RemoteCallable remoteCallable, String str, Consumer consumer, boolean z) {
        if (remoteCallable == null) {
            return;
        }
        remoteCallable.getContext().enforceCallingPermission("android.permission.MANAGE_ACTIVITY_TASKS", str);
        if (z) {
            try {
                remoteCallable.getRemoteCallExecutor().executeBlocking(new ExecutorUtils$$ExternalSyntheticLambda0(consumer, remoteCallable, 0));
                return;
            } catch (InterruptedException e) {
                Slog.e("ExecutorUtils", "Remote call failed", e);
                return;
            }
        }
        ((HandlerExecutor) remoteCallable.getRemoteCallExecutor()).execute(new ExecutorUtils$$ExternalSyntheticLambda0(consumer, remoteCallable, 1));
    }
}
