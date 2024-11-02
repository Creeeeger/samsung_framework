package com.android.wm.shell.util;

import android.window.TransitionInfo;
import java.util.function.ToIntFunction;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class TransitionUtil$$ExternalSyntheticLambda0 implements ToIntFunction {
    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        return ((TransitionInfo.Change) obj).getTaskInfo().taskId;
    }
}
