package com.android.wm.shell.util;

import android.app.ActivityManager;
import android.app.WindowConfiguration;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class GroupedRecentTaskInfo implements Parcelable {
    public static final Parcelable.Creator<GroupedRecentTaskInfo> CREATOR = new Parcelable.Creator() { // from class: com.android.wm.shell.util.GroupedRecentTaskInfo.1
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new GroupedRecentTaskInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new GroupedRecentTaskInfo[i];
        }
    };
    public final SplitBounds mSplitBounds;
    public final ActivityManager.RecentTaskInfo[] mTasks;
    public final int mType;

    private GroupedRecentTaskInfo(ActivityManager.RecentTaskInfo[] recentTaskInfoArr, SplitBounds splitBounds, int i) {
        this.mTasks = recentTaskInfoArr;
        this.mSplitBounds = splitBounds;
        this.mType = i;
    }

    public static GroupedRecentTaskInfo forFreeformTasks(ActivityManager.RecentTaskInfo... recentTaskInfoArr) {
        return new GroupedRecentTaskInfo(recentTaskInfoArr, null, 3);
    }

    public static GroupedRecentTaskInfo forSingleTask(ActivityManager.RecentTaskInfo recentTaskInfo) {
        return new GroupedRecentTaskInfo(new ActivityManager.RecentTaskInfo[]{recentTaskInfo}, null, 1);
    }

    public static GroupedRecentTaskInfo forSplitTasks(ActivityManager.RecentTaskInfo recentTaskInfo, ActivityManager.RecentTaskInfo recentTaskInfo2, SplitBounds splitBounds) {
        return new GroupedRecentTaskInfo(new ActivityManager.RecentTaskInfo[]{recentTaskInfo, recentTaskInfo2}, splitBounds, 2);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        Object obj;
        String str;
        String sb;
        StringBuilder sb2 = new StringBuilder();
        int i = 0;
        while (i < this.mTasks.length) {
            if (i == 0) {
                sb2.append("Task");
            } else {
                sb2.append(", Task");
            }
            int i2 = i + 1;
            sb2.append(i2);
            sb2.append(": ");
            ActivityManager.RecentTaskInfo recentTaskInfo = this.mTasks[i];
            if (recentTaskInfo == null) {
                sb = null;
            } else {
                WindowConfiguration windowConfiguration = recentTaskInfo.getConfiguration().windowConfiguration;
                StringBuilder sb3 = new StringBuilder("id=");
                sb3.append(recentTaskInfo.taskId);
                sb3.append(" baseIntent=");
                Intent intent = recentTaskInfo.baseIntent;
                if (intent != null) {
                    obj = intent.getComponent();
                } else {
                    obj = "null";
                }
                sb3.append(obj);
                sb3.append(" winMode=");
                sb3.append(WindowConfiguration.windowingModeToString(recentTaskInfo.getWindowingMode()));
                if (windowConfiguration.getStage() != 0) {
                    str = " stage=" + WindowConfiguration.stageConfigToString(windowConfiguration.getStage());
                } else {
                    str = "";
                }
                sb3.append(str);
                sb = sb3.toString();
            }
            sb2.append(sb);
            i = i2;
        }
        if (this.mSplitBounds != null) {
            sb2.append(", SplitBounds: ");
            sb2.append(this.mSplitBounds);
        }
        sb2.append(", Type=");
        int i3 = this.mType;
        if (i3 != 1) {
            if (i3 != 2) {
                if (i3 == 3) {
                    sb2.append("TYPE_FREEFORM");
                }
            } else {
                sb2.append("TYPE_SPLIT");
            }
        } else {
            sb2.append("TYPE_SINGLE");
        }
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.mTasks, i);
        parcel.writeTypedObject(this.mSplitBounds, i);
        parcel.writeInt(this.mType);
    }

    public static GroupedRecentTaskInfo forSplitTasks(ActivityManager.RecentTaskInfo recentTaskInfo, ActivityManager.RecentTaskInfo recentTaskInfo2, ActivityManager.RecentTaskInfo recentTaskInfo3, SplitBounds splitBounds) {
        return new GroupedRecentTaskInfo(new ActivityManager.RecentTaskInfo[]{recentTaskInfo, recentTaskInfo2, recentTaskInfo3}, splitBounds, 2);
    }

    public GroupedRecentTaskInfo(Parcel parcel) {
        this.mTasks = (ActivityManager.RecentTaskInfo[]) parcel.createTypedArray(ActivityManager.RecentTaskInfo.CREATOR);
        this.mSplitBounds = (SplitBounds) parcel.readTypedObject(SplitBounds.CREATOR);
        this.mType = parcel.readInt();
    }
}
