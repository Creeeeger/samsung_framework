package com.android.systemui.screenshot;

import android.app.ActivityTaskManager;
import android.content.ComponentName;
import android.os.UserHandle;
import com.android.systemui.screenshot.ScreenshotPolicy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class ScreenshotPolicyImplKt {
    public static final ScreenshotPolicy.DisplayContentInfo toDisplayContentInfo(ActivityTaskManager.RootTaskInfo rootTaskInfo) {
        ComponentName componentName = rootTaskInfo.topActivity;
        if (componentName != null) {
            int[] iArr = rootTaskInfo.childTaskIds;
            int length = iArr.length - 1;
            return new ScreenshotPolicy.DisplayContentInfo(componentName, rootTaskInfo.childTaskBounds[length], UserHandle.of(rootTaskInfo.childTaskUserIds[length]), iArr[length]);
        }
        throw new IllegalStateException("should not be null".toString());
    }
}
