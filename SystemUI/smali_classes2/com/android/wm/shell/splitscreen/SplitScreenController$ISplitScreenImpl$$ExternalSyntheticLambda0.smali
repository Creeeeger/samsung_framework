.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:I

.field public final synthetic f$5:F

.field public final synthetic f$6:Landroid/os/Parcelable;

.field public final synthetic f$7:Lcom/android/internal/logging/InstanceId;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V
    .locals 0

    .line 1
    iput p9, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/ShortcutInfo;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 6
    .line 7
    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$2:I

    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$3:Landroid/os/Bundle;

    .line 10
    .line 11
    iput p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$4:I

    .line 12
    .line 13
    iput p6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$5:F

    .line 14
    .line 15
    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$6:Landroid/os/Parcelable;

    .line 16
    .line 17
    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$7:Lcom/android/internal/logging/InstanceId;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const-string v9, "Cancel entering split as not supporting multi-instances"

    .line 6
    .line 7
    const-string v10, "Adding MULTIPLE_TASK"

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :pswitch_0
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/ShortcutInfo;

    .line 15
    .line 16
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 17
    .line 18
    iget v12, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$2:I

    .line 19
    .line 20
    iget-object v15, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$3:Landroid/os/Bundle;

    .line 21
    .line 22
    iget v13, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$4:I

    .line 23
    .line 24
    iget v14, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$5:F

    .line 25
    .line 26
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$6:Landroid/os/Parcelable;

    .line 27
    .line 28
    check-cast v8, Landroid/window/RemoteTransition;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$7:Lcom/android/internal/logging/InstanceId;

    .line 31
    .line 32
    move-object/from16 v2, p1

    .line 33
    .line 34
    check-cast v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    if-nez v11, :cond_0

    .line 40
    .line 41
    new-instance v11, Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-static {v11}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iget-object v6, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 55
    .line 56
    invoke-static {v12, v6}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-virtual {v6, v12}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    if-eqz v6, :cond_1

    .line 69
    .line 70
    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/4 v6, -0x1

    .line 74
    :goto_0
    invoke-static {v5, v6, v4, v7}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(IILjava/lang/String;Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_5

    .line 79
    .line 80
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    const/4 v4, 0x1

    .line 87
    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setApplyMultipleTaskFlagForShortcut(Z)V

    .line 88
    .line 89
    .line 90
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 91
    .line 92
    if-eqz v3, :cond_5

    .line 93
    .line 94
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 95
    .line 96
    const v4, 0x5e7bb0dd

    .line 97
    .line 98
    .line 99
    const/4 v5, 0x0

    .line 100
    const/4 v6, 0x0

    .line 101
    invoke-static {v3, v4, v5, v10, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_3

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 118
    .line 119
    invoke-virtual {v3, v12}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 120
    .line 121
    .line 122
    :cond_3
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 123
    .line 124
    if-eqz v3, :cond_4

    .line 125
    .line 126
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 127
    .line 128
    const v4, 0x2f294008

    .line 129
    .line 130
    .line 131
    const/4 v5, 0x0

    .line 132
    const/4 v6, 0x0

    .line 133
    invoke-static {v3, v4, v5, v9, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    const/4 v5, 0x0

    .line 138
    :goto_1
    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 139
    .line 140
    const v4, 0x7f1304cd

    .line 141
    .line 142
    .line 143
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 148
    .line 149
    .line 150
    const/4 v12, -0x1

    .line 151
    :cond_5
    :goto_2
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 157
    .line 158
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 159
    .line 160
    .line 161
    iget-object v4, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 162
    .line 163
    const/4 v5, -0x1

    .line 164
    if-ne v12, v5, :cond_6

    .line 165
    .line 166
    const/4 v5, 0x0

    .line 167
    invoke-static {v11, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v3, v0, v1, v11}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 175
    .line 176
    .line 177
    iget-object v0, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 178
    .line 179
    invoke-virtual {v0, v3, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_6
    invoke-virtual {v2, v3, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(Landroid/window/WindowContainerTransaction;I)V

    .line 184
    .line 185
    .line 186
    iget-object v5, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 187
    .line 188
    invoke-static {v11, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-virtual {v3, v4, v1, v11}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 196
    .line 197
    .line 198
    const/16 v18, -0x1

    .line 199
    .line 200
    const/16 v19, 0x0

    .line 201
    .line 202
    const/high16 v20, 0x3f000000    # 0.5f

    .line 203
    .line 204
    const/16 v21, 0x0

    .line 205
    .line 206
    const/16 v22, -0x1

    .line 207
    .line 208
    const/16 v25, 0x1

    .line 209
    .line 210
    const/16 v26, 0x1

    .line 211
    .line 212
    const/16 v27, 0x0

    .line 213
    .line 214
    move-object v13, v2

    .line 215
    move v1, v14

    .line 216
    move-object v14, v3

    .line 217
    move-object v2, v15

    .line 218
    move v15, v12

    .line 219
    move-object/from16 v16, v2

    .line 220
    .line 221
    move/from16 v17, v1

    .line 222
    .line 223
    move-object/from16 v23, v8

    .line 224
    .line 225
    move-object/from16 v24, v0

    .line 226
    .line 227
    invoke-virtual/range {v13 .. v27}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithTask(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;FILandroid/os/Bundle;FIILandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;ZZLandroid/os/Bundle;)V

    .line 228
    .line 229
    .line 230
    :goto_3
    return-void

    .line 231
    :goto_4
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/ShortcutInfo;

    .line 232
    .line 233
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 234
    .line 235
    iget v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$2:I

    .line 236
    .line 237
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$3:Landroid/os/Bundle;

    .line 238
    .line 239
    iget v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$4:I

    .line 240
    .line 241
    iget v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$5:F

    .line 242
    .line 243
    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$6:Landroid/os/Parcelable;

    .line 244
    .line 245
    check-cast v7, Landroid/view/RemoteAnimationAdapter;

    .line 246
    .line 247
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda0;->f$7:Lcom/android/internal/logging/InstanceId;

    .line 248
    .line 249
    move-object/from16 v8, p1

    .line 250
    .line 251
    check-cast v8, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 252
    .line 253
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    if-nez v2, :cond_7

    .line 257
    .line 258
    new-instance v2, Landroid/os/Bundle;

    .line 259
    .line 260
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 261
    .line 262
    .line 263
    :cond_7
    invoke-static {v2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    iget-object v12, v8, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 272
    .line 273
    invoke-static {v5, v12}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(ILcom/android/wm/shell/ShellTaskOrganizer;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v13

    .line 277
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 278
    .line 279
    .line 280
    move-result v14

    .line 281
    invoke-virtual {v12, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 282
    .line 283
    .line 284
    move-result-object v12

    .line 285
    if-eqz v12, :cond_8

    .line 286
    .line 287
    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_8
    const/4 v12, -0x1

    .line 291
    :goto_5
    invoke-static {v14, v12, v11, v13}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(IILjava/lang/String;Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v11

    .line 295
    if-eqz v11, :cond_b

    .line 296
    .line 297
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v11

    .line 301
    invoke-virtual {v8, v11}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result v11

    .line 305
    if-eqz v11, :cond_9

    .line 306
    .line 307
    const/4 v11, 0x1

    .line 308
    invoke-virtual {v2, v11}, Landroid/app/ActivityOptions;->setApplyMultipleTaskFlagForShortcut(Z)V

    .line 309
    .line 310
    .line 311
    sget-boolean v9, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 312
    .line 313
    if-eqz v9, :cond_b

    .line 314
    .line 315
    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 316
    .line 317
    const v11, 0x5e7bb0dd

    .line 318
    .line 319
    .line 320
    const/4 v12, 0x0

    .line 321
    const/4 v13, 0x0

    .line 322
    invoke-static {v9, v11, v12, v10, v13}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    goto :goto_6

    .line 326
    :cond_9
    const/4 v12, 0x0

    .line 327
    const/4 v13, 0x0

    .line 328
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 329
    .line 330
    if-eqz v5, :cond_a

    .line 331
    .line 332
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 333
    .line 334
    const v10, 0x2f294008

    .line 335
    .line 336
    .line 337
    invoke-static {v5, v10, v12, v9, v13}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    :cond_a
    iget-object v5, v8, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 341
    .line 342
    const v9, 0x7f1304cd

    .line 343
    .line 344
    .line 345
    invoke-static {v5, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 350
    .line 351
    .line 352
    const/4 v5, -0x1

    .line 353
    :cond_b
    :goto_6
    iget-object v8, v8, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 354
    .line 355
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    new-instance v9, Landroid/window/WindowContainerTransaction;

    .line 363
    .line 364
    invoke-direct {v9}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 365
    .line 366
    .line 367
    if-nez v2, :cond_c

    .line 368
    .line 369
    new-instance v2, Landroid/os/Bundle;

    .line 370
    .line 371
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 372
    .line 373
    .line 374
    :cond_c
    const/4 v10, -0x1

    .line 375
    if-ne v5, v10, :cond_d

    .line 376
    .line 377
    const/16 v29, 0x0

    .line 378
    .line 379
    const/16 v30, 0x0

    .line 380
    .line 381
    move-object/from16 v28, v8

    .line 382
    .line 383
    move-object/from16 v31, v1

    .line 384
    .line 385
    move-object/from16 v32, v2

    .line 386
    .line 387
    move-object/from16 v33, v7

    .line 388
    .line 389
    move-object/from16 v34, v9

    .line 390
    .line 391
    invoke-virtual/range {v28 .. v34}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->launchAsFullscreenWithRemoteAnimation(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransaction;)V

    .line 392
    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_d
    iget-object v10, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 396
    .line 397
    invoke-static {v2, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 398
    .line 399
    .line 400
    iget-object v10, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 401
    .line 402
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v10

    .line 406
    invoke-virtual {v9, v10, v1, v2}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 407
    .line 408
    .line 409
    move-object/from16 v23, v8

    .line 410
    .line 411
    move-object/from16 v24, v9

    .line 412
    .line 413
    move/from16 v25, v5

    .line 414
    .line 415
    move-object/from16 v26, v3

    .line 416
    .line 417
    move/from16 v27, v4

    .line 418
    .line 419
    move/from16 v28, v6

    .line 420
    .line 421
    move-object/from16 v29, v7

    .line 422
    .line 423
    move-object/from16 v30, v0

    .line 424
    .line 425
    invoke-virtual/range {v23 .. v30}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    .line 426
    .line 427
    .line 428
    :goto_7
    return-void

    .line 429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
