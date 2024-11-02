package com.android.wm.shell.splitscreen;

import android.app.ActivityManager;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StageTaskListener$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return ((ActivityManager.RunningTaskInfo) obj).isFocused;
            case 1:
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) obj;
                if (runningTaskInfo.isVisible && runningTaskInfo.isVisibleRequested) {
                    return true;
                }
                return false;
            default:
                if (((ActivityManager.RunningTaskInfo) obj).topActivityInfo != null) {
                    return true;
                }
                return false;
        }
    }
}
