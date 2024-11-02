package com.android.systemui.screenshot;

import android.app.ActivityTaskManager;
import android.content.Context;
import java.util.Collections;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AssistContentRequester {
    public final Executor mCallbackExecutor;
    public final Executor mSystemInteractionExecutor;

    public AssistContentRequester(Context context, Executor executor, Executor executor2) {
        Collections.synchronizedMap(new WeakHashMap());
        ActivityTaskManager.getService();
        context.getApplicationContext().getPackageName();
        this.mCallbackExecutor = executor;
        this.mSystemInteractionExecutor = executor2;
        context.getAttributionTag();
    }
}
