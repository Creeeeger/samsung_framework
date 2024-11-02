.class Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;
.super Landroid/app/TaskStackListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation


# static fields
.field private static final ON_ACTIVITY_DISMISSING_DOCKED_STACK:I = 0x7

.field private static final ON_ACTIVITY_FORCED_RESIZABLE:I = 0x6

.field private static final ON_ACTIVITY_LAUNCH_ON_SECONDARY_DISPLAY_FAILED:I = 0xb

.field private static final ON_ACTIVITY_LAUNCH_ON_SECONDARY_DISPLAY_REROUTED:I = 0x10

.field private static final ON_ACTIVITY_PINNED:I = 0x3

.field private static final ON_ACTIVITY_REQUESTED_ORIENTATION_CHANGE:I = 0xf

.field private static final ON_ACTIVITY_RESTART_ATTEMPT:I = 0x4

.field private static final ON_ACTIVITY_ROTATION:I = 0x16

.field private static final ON_ACTIVITY_UNPINNED:I = 0xa

.field private static final ON_BACK_PRESSED_ON_TASK_ROOT:I = 0x11

.field private static final ON_LOCK_TASK_MODE_CHANGED:I = 0x17

.field private static final ON_TASK_CREATED:I = 0xc

.field private static final ON_TASK_DESCRIPTION_CHANGED:I = 0x15

.field private static final ON_TASK_DISPLAY_CHANGED:I = 0x12

.field private static final ON_TASK_FOCUS_CHANGED:I = 0x18

.field private static final ON_TASK_LIST_FROZEN_UNFROZEN:I = 0x14

.field private static final ON_TASK_LIST_UPDATED:I = 0x13

.field private static final ON_TASK_MOVED_TO_FRONT:I = 0xe

.field private static final ON_TASK_PROFILE_LOCKED:I = 0x8

.field private static final ON_TASK_REMOVED:I = 0xd

.field private static final ON_TASK_SNAPSHOT_CHANGED:I = 0x2

.field private static final ON_TASK_STACK_CHANGED:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mRegistered:Z

.field private final mTaskStackListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTmpListeners:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public addListener(Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-boolean p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mRegistered:Z

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mRegistered:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-static {}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->access$000()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "Failed to call registerTaskStackListener"

    .line 31
    .line 32
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :pswitch_0
    goto/16 :goto_1a

    .line 12
    .line 13
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sub-int/2addr v1, v3

    .line 20
    :goto_0
    if-ltz v1, :cond_8

    .line 21
    .line 22
    iget-object v4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 29
    .line 30
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 31
    .line 32
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 33
    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    move v6, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    move v6, v2

    .line 39
    :goto_1
    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onTaskFocusChanged(IZ)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v1, v1, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    sub-int/2addr v1, v3

    .line 52
    :goto_2
    if-ltz v1, :cond_8

    .line 53
    .line 54
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 61
    .line 62
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 63
    .line 64
    invoke-virtual {v2, v4}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onLockTaskModeChanged(I)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v1, v1, -0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    sub-int/2addr v1, v3

    .line 77
    :goto_3
    if-ltz v1, :cond_8

    .line 78
    .line 79
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 86
    .line 87
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 88
    .line 89
    invoke-virtual {v2, v4}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onActivityRotation(I)V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v1, v1, -0x1

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 98
    .line 99
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    sub-int/2addr v2, v3

    .line 106
    :goto_4
    if-ltz v2, :cond_8

    .line 107
    .line 108
    iget-object v4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 115
    .line 116
    invoke-virtual {v4, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 117
    .line 118
    .line 119
    add-int/lit8 v2, v2, -0x1

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    sub-int/2addr v1, v3

    .line 129
    :goto_5
    if-ltz v1, :cond_8

    .line 130
    .line 131
    iget-object v4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    check-cast v4, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 138
    .line 139
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 140
    .line 141
    if-eqz v5, :cond_1

    .line 142
    .line 143
    move v5, v3

    .line 144
    goto :goto_6

    .line 145
    :cond_1
    move v5, v2

    .line 146
    :goto_6
    invoke-virtual {v4, v5}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onRecentTaskListFrozenChanged(Z)V

    .line 147
    .line 148
    .line 149
    add-int/lit8 v1, v1, -0x1

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 153
    .line 154
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    sub-int/2addr v1, v3

    .line 159
    :goto_7
    if-ltz v1, :cond_8

    .line 160
    .line 161
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 168
    .line 169
    invoke-virtual {v2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onRecentTaskListUpdated()V

    .line 170
    .line 171
    .line 172
    add-int/lit8 v1, v1, -0x1

    .line 173
    .line 174
    goto :goto_7

    .line 175
    :pswitch_7
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 176
    .line 177
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    sub-int/2addr v1, v3

    .line 182
    :goto_8
    if-ltz v1, :cond_8

    .line 183
    .line 184
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 185
    .line 186
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    check-cast v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 191
    .line 192
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 193
    .line 194
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 195
    .line 196
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onTaskDisplayChanged(II)V

    .line 197
    .line 198
    .line 199
    add-int/lit8 v1, v1, -0x1

    .line 200
    .line 201
    goto :goto_8

    .line 202
    :pswitch_8
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 203
    .line 204
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    sub-int/2addr v1, v3

    .line 209
    :goto_9
    if-ltz v1, :cond_8

    .line 210
    .line 211
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 212
    .line 213
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    check-cast v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 218
    .line 219
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 222
    .line 223
    invoke-virtual {v2, v4}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 224
    .line 225
    .line 226
    add-int/lit8 v1, v1, -0x1

    .line 227
    .line 228
    goto :goto_9

    .line 229
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 232
    .line 233
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 234
    .line 235
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    sub-int/2addr v2, v3

    .line 240
    :goto_a
    if-ltz v2, :cond_8

    .line 241
    .line 242
    iget-object v4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 243
    .line 244
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    check-cast v4, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 249
    .line 250
    invoke-virtual {v4, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 251
    .line 252
    .line 253
    add-int/lit8 v2, v2, -0x1

    .line 254
    .line 255
    goto :goto_a

    .line 256
    :pswitch_a
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 257
    .line 258
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    sub-int/2addr v1, v3

    .line 263
    :goto_b
    if-ltz v1, :cond_8

    .line 264
    .line 265
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 266
    .line 267
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    check-cast v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 272
    .line 273
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 274
    .line 275
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 276
    .line 277
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onActivityRequestedOrientationChanged(II)V

    .line 278
    .line 279
    .line 280
    add-int/lit8 v1, v1, -0x1

    .line 281
    .line 282
    goto :goto_b

    .line 283
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 286
    .line 287
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 288
    .line 289
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    sub-int/2addr v2, v3

    .line 294
    :goto_c
    if-ltz v2, :cond_8

    .line 295
    .line 296
    iget-object v4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 297
    .line 298
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    check-cast v4, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 303
    .line 304
    invoke-virtual {v4, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 305
    .line 306
    .line 307
    add-int/lit8 v2, v2, -0x1

    .line 308
    .line 309
    goto :goto_c

    .line 310
    :pswitch_c
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 311
    .line 312
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    sub-int/2addr v1, v3

    .line 317
    :goto_d
    if-ltz v1, :cond_8

    .line 318
    .line 319
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 320
    .line 321
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    check-cast v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 326
    .line 327
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 328
    .line 329
    invoke-virtual {v2, v4}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onTaskRemoved(I)V

    .line 330
    .line 331
    .line 332
    add-int/lit8 v1, v1, -0x1

    .line 333
    .line 334
    goto :goto_d

    .line 335
    :pswitch_d
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 336
    .line 337
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    sub-int/2addr v1, v3

    .line 342
    :goto_e
    if-ltz v1, :cond_8

    .line 343
    .line 344
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 345
    .line 346
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    check-cast v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 351
    .line 352
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 353
    .line 354
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v5, Landroid/content/ComponentName;

    .line 357
    .line 358
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    .line 359
    .line 360
    .line 361
    add-int/lit8 v1, v1, -0x1

    .line 362
    .line 363
    goto :goto_e

    .line 364
    :pswitch_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 367
    .line 368
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 369
    .line 370
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    sub-int/2addr v2, v3

    .line 375
    :goto_f
    if-ltz v2, :cond_8

    .line 376
    .line 377
    iget-object v4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 378
    .line 379
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    check-cast v4, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 384
    .line 385
    invoke-virtual {v4, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 386
    .line 387
    .line 388
    add-int/lit8 v2, v2, -0x1

    .line 389
    .line 390
    goto :goto_f

    .line 391
    :pswitch_f
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 392
    .line 393
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    sub-int/2addr v1, v3

    .line 398
    :goto_10
    if-ltz v1, :cond_8

    .line 399
    .line 400
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 401
    .line 402
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    check-cast v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 407
    .line 408
    invoke-virtual {v2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onActivityUnpinned()V

    .line 409
    .line 410
    .line 411
    add-int/lit8 v1, v1, -0x1

    .line 412
    .line 413
    goto :goto_10

    .line 414
    :pswitch_10
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 417
    .line 418
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 419
    .line 420
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    sub-int/2addr v2, v3

    .line 425
    :goto_11
    if-ltz v2, :cond_8

    .line 426
    .line 427
    iget-object v4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 428
    .line 429
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v4

    .line 433
    check-cast v4, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 434
    .line 435
    invoke-virtual {v4, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 436
    .line 437
    .line 438
    add-int/lit8 v2, v2, -0x1

    .line 439
    .line 440
    goto :goto_11

    .line 441
    :pswitch_11
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 442
    .line 443
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    sub-int/2addr v1, v3

    .line 448
    :goto_12
    if-ltz v1, :cond_8

    .line 449
    .line 450
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 451
    .line 452
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    check-cast v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 457
    .line 458
    invoke-virtual {v2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onActivityDismissingDockedStack()V

    .line 459
    .line 460
    .line 461
    add-int/lit8 v1, v1, -0x1

    .line 462
    .line 463
    goto :goto_12

    .line 464
    :pswitch_12
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 465
    .line 466
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    sub-int/2addr v1, v3

    .line 471
    :goto_13
    if-ltz v1, :cond_8

    .line 472
    .line 473
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 474
    .line 475
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    check-cast v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 480
    .line 481
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 482
    .line 483
    check-cast v4, Ljava/lang/String;

    .line 484
    .line 485
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 486
    .line 487
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 488
    .line 489
    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    .line 490
    .line 491
    .line 492
    add-int/lit8 v1, v1, -0x1

    .line 493
    .line 494
    goto :goto_13

    .line 495
    :pswitch_13
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 496
    .line 497
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 498
    .line 499
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 500
    .line 501
    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 502
    .line 503
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 504
    .line 505
    if-eqz v5, :cond_2

    .line 506
    .line 507
    move v5, v3

    .line 508
    goto :goto_14

    .line 509
    :cond_2
    move v5, v2

    .line 510
    :goto_14
    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 511
    .line 512
    if-eqz v6, :cond_3

    .line 513
    .line 514
    move v6, v3

    .line 515
    goto :goto_15

    .line 516
    :cond_3
    move v6, v2

    .line 517
    :goto_15
    iget v1, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 518
    .line 519
    if-eqz v1, :cond_4

    .line 520
    .line 521
    move v2, v3

    .line 522
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 523
    .line 524
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    sub-int/2addr v1, v3

    .line 529
    :goto_16
    if-ltz v1, :cond_8

    .line 530
    .line 531
    iget-object v7, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 532
    .line 533
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v7

    .line 537
    check-cast v7, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 538
    .line 539
    invoke-virtual {v7, v4, v5, v6, v2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    .line 540
    .line 541
    .line 542
    add-int/lit8 v1, v1, -0x1

    .line 543
    .line 544
    goto :goto_16

    .line 545
    :pswitch_14
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 546
    .line 547
    check-cast v1, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$PinnedActivityInfo;

    .line 548
    .line 549
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 550
    .line 551
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    sub-int/2addr v2, v3

    .line 556
    :goto_17
    if-ltz v2, :cond_8

    .line 557
    .line 558
    iget-object v4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 559
    .line 560
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v4

    .line 564
    check-cast v4, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 565
    .line 566
    iget-object v5, v1, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$PinnedActivityInfo;->mPackageName:Ljava/lang/String;

    .line 567
    .line 568
    iget v6, v1, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$PinnedActivityInfo;->mUserId:I

    .line 569
    .line 570
    iget v7, v1, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$PinnedActivityInfo;->mTaskId:I

    .line 571
    .line 572
    iget v8, v1, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$PinnedActivityInfo;->mStackId:I

    .line 573
    .line 574
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onActivityPinned(Ljava/lang/String;III)V

    .line 575
    .line 576
    .line 577
    add-int/lit8 v2, v2, -0x1

    .line 578
    .line 579
    goto :goto_17

    .line 580
    :pswitch_15
    const-string v1, "onTaskSnapshotChanged"

    .line 581
    .line 582
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 586
    .line 587
    check-cast v1, Landroid/window/TaskSnapshot;

    .line 588
    .line 589
    new-instance v4, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/ThumbnailData;

    .line 590
    .line 591
    invoke-direct {v4, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/ThumbnailData;-><init>(Landroid/window/TaskSnapshot;)V

    .line 592
    .line 593
    .line 594
    iget-object v5, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 595
    .line 596
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 597
    .line 598
    .line 599
    move-result v5

    .line 600
    sub-int/2addr v5, v3

    .line 601
    :goto_18
    if-ltz v5, :cond_5

    .line 602
    .line 603
    iget-object v6, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 604
    .line 605
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v6

    .line 609
    check-cast v6, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 610
    .line 611
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 612
    .line 613
    invoke-virtual {v6, v7, v4}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onTaskSnapshotChanged(ILcom/samsung/android/desktopsystemui/sharedlib/recents/model/ThumbnailData;)Z

    .line 614
    .line 615
    .line 616
    move-result v6

    .line 617
    or-int/2addr v2, v6

    .line 618
    add-int/lit8 v5, v5, -0x1

    .line 619
    .line 620
    goto :goto_18

    .line 621
    :cond_5
    if-nez v2, :cond_6

    .line 622
    .line 623
    invoke-virtual {v4}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/ThumbnailData;->recycleBitmap()V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 627
    .line 628
    .line 629
    move-result-object p0

    .line 630
    if-eqz p0, :cond_6

    .line 631
    .line 632
    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 633
    .line 634
    .line 635
    move-result-object p0

    .line 636
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 637
    .line 638
    .line 639
    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 640
    .line 641
    .line 642
    goto :goto_1a

    .line 643
    :pswitch_16
    const-string v1, "onTaskStackChanged"

    .line 644
    .line 645
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 649
    .line 650
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 651
    .line 652
    .line 653
    move-result v1

    .line 654
    sub-int/2addr v1, v3

    .line 655
    :goto_19
    if-ltz v1, :cond_7

    .line 656
    .line 657
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 658
    .line 659
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    check-cast v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 664
    .line 665
    invoke-virtual {v2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onTaskStackChanged()V

    .line 666
    .line 667
    .line 668
    add-int/lit8 v1, v1, -0x1

    .line 669
    .line 670
    goto :goto_19

    .line 671
    :cond_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 672
    .line 673
    .line 674
    :cond_8
    :goto_1a
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 676
    .line 677
    instance-of p1, p0, Lcom/android/internal/os/SomeArgs;

    .line 678
    .line 679
    if-eqz p1, :cond_9

    .line 680
    .line 681
    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 682
    .line 683
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 684
    .line 685
    .line 686
    :cond_9
    return v3

    .line 687
    :catchall_0
    move-exception p0

    .line 688
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    throw p0

    .line 690
    nop

    .line 691
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityDismissingDockedTask()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v0, 0xb

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v0, 0x10

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$PinnedActivityInfo;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$PinnedActivityInfo;-><init>(Ljava/lang/String;III)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onActivityRequestedOrientationChanged(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v0, 0xf

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6
    .line 7
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 8
    .line 9
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 10
    .line 11
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 p2, 0x4

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onActivityRotation(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v0, 0x16

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v0, 0x11

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onLockTaskModeChanged(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v0, 0x17

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onRecentTaskListFrozenChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x14

    .line 5
    .line 6
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onRecentTaskListUpdated()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v0, 0x13

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v0, 0xc

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v0, 0x15

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onTaskDisplayChanged(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v0, 0x12

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onTaskFocusChanged(IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v0, 0x18

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v0, 0xe

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v0, 0xd

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onTaskStackChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTmpListeners:Ljava/util/List;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTmpListeners:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    sub-int/2addr v0, v1

    .line 20
    :goto_0
    if-ltz v0, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTmpListeners:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;->onTaskStackChangedBackground()V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTmpListeners:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mHandler:Landroid/os/Handler;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p0
.end method

.method public removeListener(Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mTaskStackListeners:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mRegistered:Z

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->mRegistered:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    invoke-static {}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->access$000()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "Failed to call unregisterTaskStackListener"

    .line 39
    .line 40
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    throw p0
.end method
