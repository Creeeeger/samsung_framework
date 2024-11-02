.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/os/Bundle;

.field public final synthetic f$5:I

.field public final synthetic f$6:F

.field public final synthetic f$7:Landroid/os/Parcelable;

.field public final synthetic f$8:Lcom/android/internal/logging/InstanceId;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V
    .locals 0

    .line 1
    iput p10, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$0:Landroid/app/PendingIntent;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$1:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$2:Landroid/os/Bundle;

    .line 8
    .line 9
    iput p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$3:I

    .line 10
    .line 11
    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$4:Landroid/os/Bundle;

    .line 12
    .line 13
    iput p6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$5:I

    .line 14
    .line 15
    iput p7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$6:F

    .line 16
    .line 17
    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$7:Landroid/os/Parcelable;

    .line 18
    .line 19
    iput-object p9, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$8:Lcom/android/internal/logging/InstanceId;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    const-string v7, "Adding MULTIPLE_TASK"

    .line 6
    .line 7
    const-string v8, "Cancel entering split as not supporting multi-instances"

    .line 8
    .line 9
    const/high16 v9, 0x8000000

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :pswitch_0
    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$0:Landroid/app/PendingIntent;

    .line 18
    .line 19
    iget v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$1:I

    .line 20
    .line 21
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$2:Landroid/os/Bundle;

    .line 22
    .line 23
    iget v13, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$3:I

    .line 24
    .line 25
    iget-object v15, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$4:Landroid/os/Bundle;

    .line 26
    .line 27
    iget v14, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$5:I

    .line 28
    .line 29
    iget v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$6:F

    .line 30
    .line 31
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$7:Landroid/os/Parcelable;

    .line 32
    .line 33
    move-object/from16 v20, v4

    .line 34
    .line 35
    check-cast v20, Landroid/view/RemoteAnimationAdapter;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$8:Lcom/android/internal/logging/InstanceId;

    .line 38
    .line 39
    move-object/from16 v4, p1

    .line 40
    .line 41
    check-cast v4, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {v12}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v2, v4, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 51
    .line 52
    invoke-static {v13, v2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v2, v13}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v2, -0x1

    .line 66
    :goto_0
    invoke-static {v1, v2, v3, v5}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(IILjava/lang/String;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    invoke-virtual {v4, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    new-instance v1, Landroid/content/Intent;

    .line 79
    .line 80
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 87
    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 91
    .line 92
    const v3, 0x5e7bb0dd

    .line 93
    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    invoke-static {v2, v3, v5, v7, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    move/from16 v37, v13

    .line 100
    .line 101
    move-object v13, v1

    .line 102
    move/from16 v1, v37

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    const/4 v5, 0x0

    .line 106
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 107
    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 111
    .line 112
    const v2, 0x2f294008

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v2, v5, v8, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    iget-object v1, v4, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    const v2, 0x7f1304cd

    .line 121
    .line 122
    .line 123
    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 128
    .line 129
    .line 130
    const/4 v13, -0x1

    .line 131
    :cond_4
    move v1, v13

    .line 132
    move-object v13, v10

    .line 133
    :goto_1
    iget-object v2, v4, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 139
    .line 140
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 141
    .line 142
    .line 143
    if-nez v11, :cond_5

    .line 144
    .line 145
    new-instance v4, Landroid/os/Bundle;

    .line 146
    .line 147
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    move-object v4, v11

    .line 152
    :goto_2
    const/4 v5, -0x1

    .line 153
    if-ne v1, v5, :cond_6

    .line 154
    .line 155
    const/4 v14, 0x0

    .line 156
    move-object v11, v2

    .line 157
    move-object v15, v4

    .line 158
    move-object/from16 v16, v20

    .line 159
    .line 160
    move-object/from16 v17, v3

    .line 161
    .line 162
    invoke-virtual/range {v11 .. v17}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->launchAsFullscreenWithRemoteAnimation(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransaction;)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_6
    iget-object v5, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 167
    .line 168
    invoke-static {v4, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v12, v13, v4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 172
    .line 173
    .line 174
    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 175
    .line 176
    invoke-virtual {v12}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-direct {v4, v2, v1, v5, v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;ILandroid/content/Intent;I)V

    .line 181
    .line 182
    .line 183
    iput-object v4, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 184
    .line 185
    move v4, v14

    .line 186
    move-object v14, v2

    .line 187
    move-object v2, v15

    .line 188
    move-object v15, v3

    .line 189
    move/from16 v16, v1

    .line 190
    .line 191
    move-object/from16 v17, v2

    .line 192
    .line 193
    move/from16 v18, v4

    .line 194
    .line 195
    move/from16 v19, v6

    .line 196
    .line 197
    move-object/from16 v21, v0

    .line 198
    .line 199
    invoke-virtual/range {v14 .. v21}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    .line 200
    .line 201
    .line 202
    :goto_3
    return-void

    .line 203
    :goto_4
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$0:Landroid/app/PendingIntent;

    .line 204
    .line 205
    iget v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$1:I

    .line 206
    .line 207
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$2:Landroid/os/Bundle;

    .line 208
    .line 209
    iget v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$3:I

    .line 210
    .line 211
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$4:Landroid/os/Bundle;

    .line 212
    .line 213
    iget v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$5:I

    .line 214
    .line 215
    iget v11, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$6:F

    .line 216
    .line 217
    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$7:Landroid/os/Parcelable;

    .line 218
    .line 219
    check-cast v12, Landroid/window/RemoteTransition;

    .line 220
    .line 221
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda2;->f$8:Lcom/android/internal/logging/InstanceId;

    .line 222
    .line 223
    move-object/from16 v13, p1

    .line 224
    .line 225
    check-cast v13, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 226
    .line 227
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    invoke-static {v1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v14

    .line 234
    iget-object v15, v13, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 235
    .line 236
    invoke-static {v5, v15}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    invoke-virtual {v15, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 241
    .line 242
    .line 243
    move-result-object v15

    .line 244
    if-eqz v15, :cond_7

    .line 245
    .line 246
    iget v15, v15, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_7
    const/4 v15, -0x1

    .line 250
    :goto_5
    invoke-static {v2, v15, v14, v10}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(IILjava/lang/String;Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_b

    .line 255
    .line 256
    invoke-virtual {v13, v14}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_8

    .line 261
    .line 262
    new-instance v2, Landroid/content/Intent;

    .line 263
    .line 264
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 268
    .line 269
    .line 270
    sget-boolean v8, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 271
    .line 272
    if-eqz v8, :cond_c

    .line 273
    .line 274
    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 275
    .line 276
    const v9, 0x5e7bb0dd

    .line 277
    .line 278
    .line 279
    const/4 v10, 0x0

    .line 280
    const/4 v14, 0x0

    .line 281
    invoke-static {v8, v9, v10, v7, v14}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_8
    iget-object v2, v13, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 286
    .line 287
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    if-eqz v7, :cond_9

    .line 292
    .line 293
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    check-cast v2, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 298
    .line 299
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 300
    .line 301
    .line 302
    :cond_9
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 303
    .line 304
    if-eqz v2, :cond_a

    .line 305
    .line 306
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 307
    .line 308
    const v5, 0x2f294008

    .line 309
    .line 310
    .line 311
    const/4 v7, 0x0

    .line 312
    const/4 v9, 0x0

    .line 313
    invoke-static {v2, v5, v7, v8, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_a
    const/4 v7, 0x0

    .line 318
    :goto_6
    iget-object v2, v13, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 319
    .line 320
    const v5, 0x7f1304cd

    .line 321
    .line 322
    .line 323
    invoke-static {v2, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 328
    .line 329
    .line 330
    const/4 v5, -0x1

    .line 331
    :cond_b
    const/4 v2, 0x0

    .line 332
    :cond_c
    :goto_7
    iget-object v7, v13, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 333
    .line 334
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    new-instance v8, Landroid/window/WindowContainerTransaction;

    .line 338
    .line 339
    invoke-direct {v8}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 340
    .line 341
    .line 342
    const/4 v9, -0x1

    .line 343
    if-ne v5, v9, :cond_e

    .line 344
    .line 345
    if-eqz v3, :cond_d

    .line 346
    .line 347
    goto :goto_8

    .line 348
    :cond_d
    new-instance v3, Landroid/os/Bundle;

    .line 349
    .line 350
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 351
    .line 352
    .line 353
    :goto_8
    const/4 v0, 0x0

    .line 354
    invoke-static {v3, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v8, v1, v2, v3}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 358
    .line 359
    .line 360
    iget-object v0, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 361
    .line 362
    invoke-virtual {v0, v8, v12}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    .line 363
    .line 364
    .line 365
    goto :goto_a

    .line 366
    :cond_e
    invoke-virtual {v7, v8, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(Landroid/window/WindowContainerTransaction;I)V

    .line 367
    .line 368
    .line 369
    if-eqz v3, :cond_f

    .line 370
    .line 371
    goto :goto_9

    .line 372
    :cond_f
    new-instance v3, Landroid/os/Bundle;

    .line 373
    .line 374
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 375
    .line 376
    .line 377
    :goto_9
    iget-object v6, v7, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 378
    .line 379
    invoke-static {v3, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v8, v1, v2, v3}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 383
    .line 384
    .line 385
    const/16 v27, -0x1

    .line 386
    .line 387
    const/16 v28, 0x0

    .line 388
    .line 389
    const/high16 v29, 0x3f000000    # 0.5f

    .line 390
    .line 391
    const/16 v30, 0x0

    .line 392
    .line 393
    const/16 v31, -0x1

    .line 394
    .line 395
    const/16 v34, 0x1

    .line 396
    .line 397
    const/16 v35, 0x1

    .line 398
    .line 399
    const/16 v36, 0x0

    .line 400
    .line 401
    move-object/from16 v22, v7

    .line 402
    .line 403
    move-object/from16 v23, v8

    .line 404
    .line 405
    move/from16 v24, v5

    .line 406
    .line 407
    move-object/from16 v25, v4

    .line 408
    .line 409
    move/from16 v26, v11

    .line 410
    .line 411
    move-object/from16 v32, v12

    .line 412
    .line 413
    move-object/from16 v33, v0

    .line 414
    .line 415
    invoke-virtual/range {v22 .. v36}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithTask(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;FILandroid/os/Bundle;FIILandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;ZZLandroid/os/Bundle;)V

    .line 416
    .line 417
    .line 418
    :goto_a
    return-void

    .line 419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
