package com.android.systemui.screenshot;

import android.content.ComponentName;
import android.graphics.Rect;
import android.os.UserHandle;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface ScreenshotPolicy {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class DisplayContentInfo {
        public final Rect bounds;
        public final ComponentName component;
        public final int taskId;
        public final UserHandle user;

        public DisplayContentInfo(ComponentName componentName, Rect rect, UserHandle userHandle, int i) {
            this.component = componentName;
            this.bounds = rect;
            this.user = userHandle;
            this.taskId = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DisplayContentInfo)) {
                return false;
            }
            DisplayContentInfo displayContentInfo = (DisplayContentInfo) obj;
            if (Intrinsics.areEqual(this.component, displayContentInfo.component) && Intrinsics.areEqual(this.bounds, displayContentInfo.bounds) && Intrinsics.areEqual(this.user, displayContentInfo.user) && this.taskId == displayContentInfo.taskId) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.taskId) + ((this.user.hashCode() + ((this.bounds.hashCode() + (this.component.hashCode() * 31)) * 31)) * 31);
        }

        public final String toString() {
            return "DisplayContentInfo(component=" + this.component + ", bounds=" + this.bounds + ", user=" + this.user + ", taskId=" + this.taskId + ")";
        }
    }
}
