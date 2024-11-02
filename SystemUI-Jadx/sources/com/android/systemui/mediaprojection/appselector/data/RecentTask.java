package com.android.systemui.mediaprojection.appselector.data;

import android.content.ComponentName;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RecentTask {
    public final ComponentName baseIntentComponent;
    public final Integer colorBackground;
    public final int taskId;
    public final ComponentName topActivityComponent;
    public final int userId;

    public RecentTask(int i, int i2, ComponentName componentName, ComponentName componentName2, Integer num) {
        this.taskId = i;
        this.userId = i2;
        this.topActivityComponent = componentName;
        this.baseIntentComponent = componentName2;
        this.colorBackground = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RecentTask)) {
            return false;
        }
        RecentTask recentTask = (RecentTask) obj;
        if (this.taskId == recentTask.taskId && this.userId == recentTask.userId && Intrinsics.areEqual(this.topActivityComponent, recentTask.topActivityComponent) && Intrinsics.areEqual(this.baseIntentComponent, recentTask.baseIntentComponent) && Intrinsics.areEqual(this.colorBackground, recentTask.colorBackground)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.userId, Integer.hashCode(this.taskId) * 31, 31);
        int i = 0;
        ComponentName componentName = this.topActivityComponent;
        if (componentName == null) {
            hashCode = 0;
        } else {
            hashCode = componentName.hashCode();
        }
        int i2 = (m + hashCode) * 31;
        ComponentName componentName2 = this.baseIntentComponent;
        if (componentName2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = componentName2.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        Integer num = this.colorBackground;
        if (num != null) {
            i = num.hashCode();
        }
        return i3 + i;
    }

    public final String toString() {
        return "RecentTask(taskId=" + this.taskId + ", userId=" + this.userId + ", topActivityComponent=" + this.topActivityComponent + ", baseIntentComponent=" + this.baseIntentComponent + ", colorBackground=" + this.colorBackground + ")";
    }
}
