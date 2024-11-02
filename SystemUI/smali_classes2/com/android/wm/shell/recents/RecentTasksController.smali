.class public final Lcom/android/wm/shell/recents/RecentTasksController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/common/TaskStackListenerCallback;
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;


# instance fields
.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mContext:Landroid/content/Context;

.field public final mDesktopModeTaskRepository:Ljava/util/Optional;

.field public final mImpl:Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

.field public final mIsDesktopMode:Z

.field public mIsSplitTaskIdValidationChecked:Z

.field public mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMultiSplitTasks:Landroid/util/SparseIntArray;

.field public final mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mSplitTasks:Landroid/util/SparseIntArray;

.field public final mTaskSplitBoundsMap:Ljava/util/Map;

.field public final mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

.field public mTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/TaskStackListenerImpl;Landroid/app/ActivityTaskManager;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            "Landroid/app/ActivityTaskManager;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;",
            ">;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mImpl:Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 14
    .line 15
    new-instance v0, Landroid/util/SparseIntArray;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    .line 21
    .line 22
    new-instance v2, Landroid/util/SparseIntArray;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    .line 28
    .line 29
    new-instance v3, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mIsSplitTaskIdValidationChecked:Z

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    iput-object p3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 41
    .line 42
    iput-object p4, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 43
    .line 44
    iput-object p6, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    const-string p4, "android.hardware.type.pc"

    .line 51
    .line 52
    invoke-virtual {p3, p4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    iput-boolean p3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mIsDesktopMode:Z

    .line 57
    .line 58
    iput-object p5, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 59
    .line 60
    iput-object p7, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mDesktopModeTaskRepository:Ljava/util/Optional;

    .line 61
    .line 62
    iput-object p8, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 63
    .line 64
    new-instance p3, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    invoke-direct {p3, p0}, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p3, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    new-instance p2, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    .line 73
    .line 74
    invoke-direct {p2, p1}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    iput-object p2, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    .line 78
    .line 79
    iget-object p0, p2, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mHandler:Landroid/os/Handler;

    .line 80
    .line 81
    new-instance p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;

    .line 82
    .line 83
    invoke-direct {p1, p2, v0, v2, v3}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;-><init>(Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Ljava/util/Map;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    .line 88
    .line 89
    return-void
.end method


# virtual methods
.method public final addSplitPair(IIILcom/android/wm/shell/util/SplitBounds;)V
    .locals 5

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eq p3, v1, :cond_2

    .line 10
    .line 11
    if-eq p1, p3, :cond_1

    .line 12
    .line 13
    if-ne p2, p3, :cond_2

    .line 14
    .line 15
    :cond_1
    return-void

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    .line 23
    .line 24
    if-ne v2, p2, :cond_3

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    move-object v4, v3

    .line 31
    check-cast v4, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/wm/shell/util/SplitBounds;

    .line 38
    .line 39
    invoke-virtual {v2, p4}, Lcom/android/wm/shell/util/SplitBounds;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v3, Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 69
    .line 70
    iget-object v4, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    .line 71
    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    if-eq p3, v1, :cond_4

    .line 75
    .line 76
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 77
    .line 78
    .line 79
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    invoke-virtual {v4, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-ne v2, v1, :cond_5

    .line 92
    .line 93
    invoke-virtual {v4, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    :cond_5
    if-eq v2, v1, :cond_6

    .line 98
    .line 99
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 100
    .line 101
    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    :cond_6
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v3, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v3, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 130
    .line 131
    if-eqz v0, :cond_7

    .line 132
    .line 133
    if-eq p3, v1, :cond_7

    .line 134
    .line 135
    invoke-virtual {v4, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, p3, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    .line 140
    .line 141
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    invoke-virtual {v3, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    :cond_7
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    .line 149
    .line 150
    .line 151
    iget-object p3, p4, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    .line 152
    .line 153
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result p3

    .line 157
    if-nez p3, :cond_8

    .line 158
    .line 159
    iget-object p3, p4, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    .line 160
    .line 161
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result p3

    .line 165
    if-nez p3, :cond_8

    .line 166
    .line 167
    new-instance p3, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;

    .line 168
    .line 169
    invoke-direct {p3, p4}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;-><init>(Lcom/android/wm/shell/util/SplitBounds;)V

    .line 170
    .line 171
    .line 172
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    .line 173
    .line 174
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->addGroupedRecentTaskSaveInfo(Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;)Z

    .line 175
    .line 176
    .line 177
    move-result p3

    .line 178
    if-eqz p3, :cond_8

    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->scheduleSaveGroupedRecentTasks()V

    .line 181
    .line 182
    .line 183
    :cond_8
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENT_TASKS_enabled:Z

    .line 184
    .line 185
    if-eqz p0, :cond_9

    .line 186
    .line 187
    int-to-long p0, p1

    .line 188
    int-to-long p2, p2

    .line 189
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p4

    .line 193
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENT_TASKS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 194
    .line 195
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    filled-new-array {p0, p1, p4}, [Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    const/4 p1, 0x5

    .line 208
    const/4 p2, 0x0

    .line 209
    const p3, 0x54dcf69b

    .line 210
    .line 211
    .line 212
    invoke-static {v0, p3, p1, p2, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_9
    return-void
.end method

.method public final clearAllSplitTaskIdsInfo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    .line 21
    .line 22
    check-cast p0, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRecentTasks(III)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/util/GroupedRecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-ge p3, p1, :cond_6

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mIsSplitTaskIdValidationChecked:Z

    .line 18
    .line 19
    if-nez p1, :cond_4

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mIsSplitTaskIdValidationChecked:Z

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->copyKeys()[I

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    if-nez p3, :cond_0

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->clearAllSplitTaskIdsInfo()V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 60
    .line 61
    iget v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 62
    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move v3, v2

    .line 72
    :goto_1
    array-length v4, p3

    .line 73
    if-ge v3, v4, :cond_5

    .line 74
    .line 75
    aget v4, p3, v3

    .line 76
    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->clearAllSplitTaskIdsInfo()V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_5

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->clearAllSplitTaskIdsInfo()V

    .line 107
    .line 108
    .line 109
    :goto_2
    move p1, v1

    .line 110
    goto :goto_3

    .line 111
    :cond_5
    move p1, v2

    .line 112
    :goto_3
    if-eqz p1, :cond_6

    .line 113
    .line 114
    const-string p1, "RecentTasksController"

    .line 115
    .line 116
    const-string p3, "init split taskIds for sync with rawList"

    .line 117
    .line 118
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->scheduleSaveGroupedRecentTasks()V

    .line 124
    .line 125
    .line 126
    :cond_6
    :goto_4
    new-instance p1, Landroid/util/SparseArray;

    .line 127
    .line 128
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 129
    .line 130
    .line 131
    move p3, v2

    .line 132
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-ge p3, v3, :cond_7

    .line 137
    .line 138
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 143
    .line 144
    iget v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 145
    .line 146
    invoke-virtual {p1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    add-int/lit8 p3, p3, 0x1

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_7
    new-instance p3, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .line 156
    .line 157
    new-instance v3, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .line 161
    .line 162
    move v4, v2

    .line 163
    :goto_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-ge v4, v5, :cond_12

    .line 168
    .line 169
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 174
    .line 175
    iget v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 176
    .line 177
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->contains(I)Z

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    if-nez v6, :cond_8

    .line 182
    .line 183
    goto/16 :goto_9

    .line 184
    .line 185
    :cond_8
    sget-boolean v6, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_PROTO2_ENABLED:Z

    .line 186
    .line 187
    if-eqz v6, :cond_b

    .line 188
    .line 189
    iget-object v6, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mDesktopModeTaskRepository:Ljava/util/Optional;

    .line 190
    .line 191
    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    if-eqz v7, :cond_b

    .line 196
    .line 197
    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    check-cast v6, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 202
    .line 203
    iget v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 204
    .line 205
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    new-instance v8, Landroidx/core/util/SparseArrayKt$valueIterator$1;

    .line 209
    .line 210
    iget-object v6, v6, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    .line 211
    .line 212
    invoke-direct {v8, v6}, Landroidx/core/util/SparseArrayKt$valueIterator$1;-><init>(Landroid/util/SparseArray;)V

    .line 213
    .line 214
    .line 215
    invoke-static {v8}, Lkotlin/sequences/SequencesKt__SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-interface {v6}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    if-eqz v8, :cond_a

    .line 228
    .line 229
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    check-cast v8, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    .line 234
    .line 235
    iget-object v8, v8, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->activeTasks:Landroid/util/ArraySet;

    .line 236
    .line 237
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-eqz v8, :cond_9

    .line 246
    .line 247
    move v6, v1

    .line 248
    goto :goto_7

    .line 249
    :cond_a
    move v6, v2

    .line 250
    :goto_7
    if-eqz v6, :cond_b

    .line 251
    .line 252
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    goto/16 :goto_9

    .line 256
    .line 257
    :cond_b
    iget v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 258
    .line 259
    const/4 v7, -0x1

    .line 260
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 265
    .line 266
    if-eqz v8, :cond_d

    .line 267
    .line 268
    iget-object v8, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    .line 269
    .line 270
    iget v9, v5, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 271
    .line 272
    invoke-virtual {v8, v9, v7}, Landroid/util/SparseIntArray;->get(II)I

    .line 273
    .line 274
    .line 275
    move-result v9

    .line 276
    if-eq v6, v7, :cond_c

    .line 277
    .line 278
    if-ne v9, v7, :cond_c

    .line 279
    .line 280
    invoke-virtual {v8, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    .line 281
    .line 282
    .line 283
    move-result v9

    .line 284
    goto :goto_8

    .line 285
    :cond_c
    if-ne v6, v7, :cond_e

    .line 286
    .line 287
    if-eq v9, v7, :cond_e

    .line 288
    .line 289
    invoke-virtual {v0, v9, v7}, Landroid/util/SparseIntArray;->get(II)I

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    goto :goto_8

    .line 294
    :cond_d
    move v9, v7

    .line 295
    :cond_e
    :goto_8
    if-eq v6, v7, :cond_11

    .line 296
    .line 297
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->contains(I)Z

    .line 298
    .line 299
    .line 300
    move-result v8

    .line 301
    if-eqz v8, :cond_11

    .line 302
    .line 303
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    check-cast v8, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 308
    .line 309
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 310
    .line 311
    .line 312
    iget-object v10, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    .line 313
    .line 314
    if-eq v9, v7, :cond_10

    .line 315
    .line 316
    invoke-virtual {p1, v9}, Landroid/util/SparseArray;->contains(I)Z

    .line 317
    .line 318
    .line 319
    move-result v6

    .line 320
    if-eqz v6, :cond_f

    .line 321
    .line 322
    invoke-virtual {p1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 327
    .line 328
    invoke-virtual {p1, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 329
    .line 330
    .line 331
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    check-cast v10, Ljava/util/HashMap;

    .line 336
    .line 337
    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v7

    .line 341
    check-cast v7, Lcom/android/wm/shell/util/SplitBounds;

    .line 342
    .line 343
    invoke-static {v5, v8, v6, v7}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->forSplitTasks(Landroid/app/ActivityManager$RecentTaskInfo;Landroid/app/ActivityManager$RecentTaskInfo;Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    goto :goto_9

    .line 351
    :cond_f
    invoke-static {v5}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->forSingleTask(Landroid/app/ActivityManager$RecentTaskInfo;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    invoke-static {v8}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->forSingleTask(Landroid/app/ActivityManager$RecentTaskInfo;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    goto :goto_9

    .line 366
    :cond_10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    check-cast v10, Ljava/util/HashMap;

    .line 371
    .line 372
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v6

    .line 376
    check-cast v6, Lcom/android/wm/shell/util/SplitBounds;

    .line 377
    .line 378
    invoke-static {v5, v8, v6}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->forSplitTasks(Landroid/app/ActivityManager$RecentTaskInfo;Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    goto :goto_9

    .line 386
    :cond_11
    invoke-static {v5}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->forSingleTask(Landroid/app/ActivityManager$RecentTaskInfo;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    :goto_9
    add-int/lit8 v4, v4, 0x1

    .line 394
    .line 395
    goto/16 :goto_6

    .line 396
    .line 397
    :cond_12
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 398
    .line 399
    .line 400
    move-result p0

    .line 401
    if-nez p0, :cond_13

    .line 402
    .line 403
    new-array p0, v2, [Landroid/app/ActivityManager$RecentTaskInfo;

    .line 404
    .line 405
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object p0

    .line 409
    check-cast p0, [Landroid/app/ActivityManager$RecentTaskInfo;

    .line 410
    .line 411
    invoke-static {p0}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->forFreeformTasks([Landroid/app/ActivityManager$RecentTaskInfo;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    .line 412
    .line 413
    .line 414
    move-result-object p0

    .line 415
    invoke-virtual {v3, v2, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    :cond_13
    return-object v3
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    .line 3
    return-object p0
.end method

.method public hasRecentTasksListener()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public notifyRecentTasksChanged()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENT_TASKS_enabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENT_TASKS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const v3, -0x3f98868e

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v3, v1, v2, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    .line 16
    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    :try_start_0
    invoke-interface {p0}, Lcom/android/wm/shell/recents/IRecentTasksListener;->onRecentTasksChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    const-string v0, "RecentTasksController"

    .line 26
    .line 27
    const-string v1, "Failed call notifyRecentTasksChanged"

    .line 28
    .line 29
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public final onRecentTaskListUpdated()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onTaskStackChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public registerRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    .line 2
    .line 3
    return-void
.end method

.method public final removeMultiSplitPair(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    move-object v0, p0

    .line 16
    check-cast v0, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final removeSplitPair(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq v0, v1, :cond_7

    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    .line 13
    .line 14
    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 15
    .line 16
    .line 17
    iget-object v4, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    .line 18
    .line 19
    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 20
    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v4, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v4, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 45
    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    iget-object v4, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    .line 49
    .line 50
    invoke-virtual {v4, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eq v4, v1, :cond_0

    .line 55
    .line 56
    invoke-virtual {p0, p1, v4}, Lcom/android/wm/shell/recents/RecentTasksController;->removeMultiSplitPair(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v4, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    .line 61
    .line 62
    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eq v4, v1, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0, v0, v4}, Lcom/android/wm/shell/recents/RecentTasksController;->removeMultiSplitPair(II)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move v4, v1

    .line 73
    :cond_2
    move v2, v3

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    .line 75
    .line 76
    .line 77
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENT_TASKS_enabled:Z

    .line 78
    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    int-to-long v5, p1

    .line 82
    int-to-long v7, v0

    .line 83
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENT_TASKS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 84
    .line 85
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    const/4 v6, 0x5

    .line 98
    const/4 v7, 0x0

    .line 99
    const v8, 0x374d9bf2

    .line 100
    .line 101
    .line 102
    invoke-static {v3, v8, v6, v7, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 106
    .line 107
    if-eqz v3, :cond_4

    .line 108
    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    iget-object v2, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    .line 112
    .line 113
    invoke-virtual {v2, p1, v0, v4}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->getPossibleRemoveTaskIdKey(III)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    goto :goto_1

    .line 118
    :cond_4
    iget-object v2, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    .line 119
    .line 120
    iget-object v4, v2, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    .line 121
    .line 122
    monitor-enter v4

    .line 123
    :try_start_0
    invoke-static {p1, v0}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->getTaskIdKey(II)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    iget-object v5, v2, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    .line 128
    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    check-cast v5, Ljava/util/HashMap;

    .line 134
    .line 135
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    if-eqz v5, :cond_5

    .line 140
    .line 141
    monitor-exit v4

    .line 142
    move p1, v3

    .line 143
    goto :goto_1

    .line 144
    :cond_5
    invoke-static {v0, p1}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->getTaskIdKey(II)I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    iget-object v0, v2, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    .line 149
    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v0, Ljava/util/HashMap;

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_6

    .line 161
    .line 162
    monitor-exit v4

    .line 163
    goto :goto_1

    .line 164
    :cond_6
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 165
    move p1, v1

    .line 166
    :goto_1
    if-eq p1, v1, :cond_a

    .line 167
    .line 168
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    .line 169
    .line 170
    iget-object v1, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    .line 171
    .line 172
    monitor-enter v1

    .line 173
    :try_start_1
    iget-object v0, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    .line 174
    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    check-cast v0, Ljava/util/HashMap;

    .line 180
    .line 181
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;

    .line 186
    .line 187
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->scheduleSaveGroupedRecentTasks()V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :catchall_0
    move-exception p0

    .line 195
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    throw p0

    .line 197
    :catchall_1
    move-exception p0

    .line 198
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 199
    throw p0

    .line 200
    :cond_7
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 201
    .line 202
    if-eqz v0, :cond_a

    .line 203
    .line 204
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    .line 205
    .line 206
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eq v1, v0, :cond_8

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_8
    move v2, v3

    .line 214
    :goto_2
    if-eqz v2, :cond_a

    .line 215
    .line 216
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    .line 217
    .line 218
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    iget-object v2, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    .line 223
    .line 224
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    .line 229
    .line 230
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 231
    .line 232
    .line 233
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    .line 234
    .line 235
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 236
    .line 237
    .line 238
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    .line 239
    .line 240
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    check-cast v3, Ljava/util/HashMap;

    .line 245
    .line 246
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    .line 250
    .line 251
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    check-cast v3, Ljava/util/HashMap;

    .line 256
    .line 257
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeMultiSplitPair(II)V

    .line 261
    .line 262
    .line 263
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    .line 264
    .line 265
    invoke-virtual {v3, v0, v2, p1}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->getPossibleRemoveTaskIdKey(III)I

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-eq p1, v1, :cond_9

    .line 270
    .line 271
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    .line 272
    .line 273
    iget-object v1, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    .line 274
    .line 275
    monitor-enter v1

    .line 276
    :try_start_4
    iget-object v0, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    .line 277
    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    check-cast v0, Ljava/util/HashMap;

    .line 283
    .line 284
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    check-cast p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;

    .line 289
    .line 290
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 291
    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    .line 292
    .line 293
    invoke-virtual {p1}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->scheduleSaveGroupedRecentTasks()V

    .line 294
    .line 295
    .line 296
    goto :goto_3

    .line 297
    :catchall_2
    move-exception p0

    .line 298
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 299
    throw p0

    .line 300
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    .line 301
    .line 302
    .line 303
    :cond_a
    :goto_4
    return-void
.end method

.method public unregisterRecentTasksListener()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    .line 3
    .line 4
    return-void
.end method
