package com.android.wm.shell.freeform;

import android.app.ActivityManager;
import android.graphics.Rect;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface AdjustImeStateController {
    public static final Empty EMPTY = new Empty();

    void clearImeAdjustedTask();

    void getImeStartBounds(ActivityManager.RunningTaskInfo runningTaskInfo, Rect rect);

    void onImePositionChanged(ActivityManager.RunningTaskInfo runningTaskInfo, int i);

    void onImeStartPositioning(ActivityManager.RunningTaskInfo runningTaskInfo, int i);

    void onLayoutPositionEnd(ActivityManager.RunningTaskInfo runningTaskInfo, int i);

    void taskGainFocus(ActivityManager.RunningTaskInfo runningTaskInfo);

    void taskLostFocus(ActivityManager.RunningTaskInfo runningTaskInfo);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Empty implements AdjustImeStateController {
        @Override // com.android.wm.shell.freeform.AdjustImeStateController
        public final void taskGainFocus(ActivityManager.RunningTaskInfo runningTaskInfo) {
        }

        @Override // com.android.wm.shell.freeform.AdjustImeStateController
        public final void taskLostFocus(ActivityManager.RunningTaskInfo runningTaskInfo) {
        }

        @Override // com.android.wm.shell.freeform.AdjustImeStateController
        public final void clearImeAdjustedTask() {
        }

        @Override // com.android.wm.shell.freeform.AdjustImeStateController
        public final void getImeStartBounds(ActivityManager.RunningTaskInfo runningTaskInfo, Rect rect) {
        }

        @Override // com.android.wm.shell.freeform.AdjustImeStateController
        public final void onImePositionChanged(ActivityManager.RunningTaskInfo runningTaskInfo, int i) {
        }

        @Override // com.android.wm.shell.freeform.AdjustImeStateController
        public final void onImeStartPositioning(ActivityManager.RunningTaskInfo runningTaskInfo, int i) {
        }

        @Override // com.android.wm.shell.freeform.AdjustImeStateController
        public final void onLayoutPositionEnd(ActivityManager.RunningTaskInfo runningTaskInfo, int i) {
        }
    }
}
