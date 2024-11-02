package com.android.systemui.notetask;

import android.os.UserHandle;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.systemui.notetask.NoteTaskLaunchMode;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NoteTaskInfo {
    public final NoteTaskEntryPoint entryPoint;
    public final boolean isKeyguardLocked;
    public final NoteTaskLaunchMode launchMode;
    public final String packageName;
    public final int uid;
    public final UserHandle user;

    public NoteTaskInfo(String str, int i, UserHandle userHandle, NoteTaskEntryPoint noteTaskEntryPoint, boolean z) {
        NoteTaskLaunchMode noteTaskLaunchMode;
        this.packageName = str;
        this.uid = i;
        this.user = userHandle;
        this.entryPoint = noteTaskEntryPoint;
        this.isKeyguardLocked = z;
        if (!z && noteTaskEntryPoint != NoteTaskEntryPoint.WIDGET_PICKER_SHORTCUT_IN_MULTI_WINDOW_MODE) {
            noteTaskLaunchMode = NoteTaskLaunchMode.AppBubble.INSTANCE;
        } else {
            noteTaskLaunchMode = NoteTaskLaunchMode.Activity.INSTANCE;
        }
        this.launchMode = noteTaskLaunchMode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NoteTaskInfo)) {
            return false;
        }
        NoteTaskInfo noteTaskInfo = (NoteTaskInfo) obj;
        if (Intrinsics.areEqual(this.packageName, noteTaskInfo.packageName) && this.uid == noteTaskInfo.uid && Intrinsics.areEqual(this.user, noteTaskInfo.user) && this.entryPoint == noteTaskInfo.entryPoint && this.isKeyguardLocked == noteTaskInfo.isKeyguardLocked) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2 = (this.user.hashCode() + AppInfoViewData$$ExternalSyntheticOutline0.m(this.uid, this.packageName.hashCode() * 31, 31)) * 31;
        NoteTaskEntryPoint noteTaskEntryPoint = this.entryPoint;
        if (noteTaskEntryPoint == null) {
            hashCode = 0;
        } else {
            hashCode = noteTaskEntryPoint.hashCode();
        }
        int i = (hashCode2 + hashCode) * 31;
        boolean z = this.isKeyguardLocked;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        return i + i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NoteTaskInfo(packageName=");
        sb.append(this.packageName);
        sb.append(", uid=");
        sb.append(this.uid);
        sb.append(", user=");
        sb.append(this.user);
        sb.append(", entryPoint=");
        sb.append(this.entryPoint);
        sb.append(", isKeyguardLocked=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.isKeyguardLocked, ")");
    }

    public /* synthetic */ NoteTaskInfo(String str, int i, UserHandle userHandle, NoteTaskEntryPoint noteTaskEntryPoint, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, userHandle, (i2 & 8) != 0 ? null : noteTaskEntryPoint, (i2 & 16) != 0 ? false : z);
    }
}
