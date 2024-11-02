.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/StageLaunchOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageLaunchOptions;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_4

    .line 9
    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 11
    .line 12
    move-object v3, p1

    .line 13
    check-cast v3, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 14
    .line 15
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapTaskId:I

    .line 16
    .line 17
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapIntent:Landroid/content/Intent;

    .line 18
    .line 19
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapUserHandle:Landroid/os/UserHandle;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    :try_start_0
    iget-object p0, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 27
    .line 28
    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 29
    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    invoke-static {}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getToggleSplitScreenTarget()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_0
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    const-string v0, "From Apps edge_Tap"

    .line 43
    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    :try_start_1
    const-string p0, "1000"

    .line 47
    .line 48
    invoke-static {p0, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 56
    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMultiSplitScreenVisible()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    :goto_0
    if-eqz v6, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->setResumedAffordanceAnimation()V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 78
    .line 79
    const/4 v6, 0x1

    .line 80
    if-eqz p0, :cond_8

    .line 81
    .line 82
    iget-object p0, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_8

    .line 89
    .line 90
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->supportMultiSplitAppMinimumSize()Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_8

    .line 99
    .line 100
    iget-object p0, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-eqz p0, :cond_8

    .line 107
    .line 108
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IMMERSIVE_VIDEO_CONTROLS:Z

    .line 109
    .line 110
    const/4 v7, 0x0

    .line 111
    if-eqz p0, :cond_5

    .line 112
    .line 113
    iget-object p0, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 114
    .line 115
    if-eqz p0, :cond_4

    .line 116
    .line 117
    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsVideoControls:Z

    .line 118
    .line 119
    if-eqz p0, :cond_4

    .line 120
    .line 121
    move p0, v6

    .line 122
    goto :goto_1

    .line 123
    :cond_4
    move p0, v7

    .line 124
    :goto_1
    if-nez p0, :cond_8

    .line 125
    .line 126
    :cond_5
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    iget-object v9, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 131
    .line 132
    iget v9, v9, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageWindowConfigPosition:I

    .line 133
    .line 134
    invoke-static {v9, p0}, Lcom/android/wm/shell/util/StageUtils;->getMultiSplitLaunchPosition(IZ)I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-eq p1, v2, :cond_7

    .line 139
    .line 140
    iget-object v4, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 141
    .line 142
    invoke-virtual {v4, v2, p0, v8, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartCellStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    .line 147
    .line 148
    if-eqz v2, :cond_6

    .line 149
    .line 150
    iget-object v2, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 151
    .line 152
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-nez v2, :cond_6

    .line 157
    .line 158
    iget-object v2, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 159
    .line 160
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 161
    .line 162
    const/high16 v3, 0x3f000000    # 0.5f

    .line 163
    .line 164
    invoke-virtual {v2, v3, p0, v6, v7}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividerRatio(FIZZ)V

    .line 165
    .line 166
    .line 167
    :cond_6
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-interface {p0, p1, v1}, Landroid/app/IActivityTaskManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_7
    invoke-virtual {v3, v1, v4, v5, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntentToCell(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/UserHandle;I)V

    .line 176
    .line 177
    .line 178
    :goto_2
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 179
    .line 180
    if-eqz p0, :cond_a

    .line 181
    .line 182
    const-string p0, "1021"

    .line 183
    .line 184
    invoke-static {p0, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_8
    if-eq p1, v2, :cond_9

    .line 189
    .line 190
    invoke-virtual {v3, p1, v6, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTask(IILandroid/os/Bundle;)V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_9
    const/4 v6, 0x1

    .line 195
    const/4 v7, -0x1

    .line 196
    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;IILandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :catch_0
    move-exception p0

    .line 201
    const-string p1, "SplitScreenController"

    .line 202
    .line 203
    const-string v0, "Failed to open in split with tap"

    .line 204
    .line 205
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .line 207
    .line 208
    :cond_a
    :goto_3
    return-void

    .line 209
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 210
    .line 211
    move-object v0, p1

    .line 212
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 213
    .line 214
    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLeftTopTaskId:I

    .line 215
    .line 216
    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRightBottomTaskId:I

    .line 217
    .line 218
    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellTaskId:I

    .line 219
    .line 220
    iget-boolean v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mAppsStackedVertically:Z

    .line 221
    .line 222
    iget v5, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    .line 223
    .line 224
    iget v6, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    .line 225
    .line 226
    iget v7, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellRatio:F

    .line 227
    .line 228
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startSplitTasks(IIIZIFF)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 233
    .line 234
    move-object v0, p1

    .line 235
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 236
    .line 237
    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLeftTopTaskId:I

    .line 238
    .line 239
    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRightBottomTaskId:I

    .line 240
    .line 241
    const/4 v3, -0x1

    .line 242
    const/4 v4, 0x1

    .line 243
    const/4 v5, 0x0

    .line 244
    iget v6, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    .line 245
    .line 246
    const/high16 v7, 0x3f000000    # 0.5f

    .line 247
    .line 248
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startSplitTasks(IIIZIFF)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :pswitch_3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 253
    .line 254
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 255
    .line 256
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    .line 257
    .line 258
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    .line 259
    .line 260
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    .line 261
    .line 262
    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;II)V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :pswitch_4
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 267
    .line 268
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 269
    .line 270
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    .line 271
    .line 272
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    .line 273
    .line 274
    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    .line 275
    .line 276
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    .line 277
    .line 278
    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;II)V

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :pswitch_5
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 283
    .line 284
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 285
    .line 286
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mPendingIntent:Landroid/app/PendingIntent;

    .line 287
    .line 288
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    .line 289
    .line 290
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    .line 291
    .line 292
    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntentToCell(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/UserHandle;I)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :pswitch_6
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 297
    .line 298
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 299
    .line 300
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    .line 301
    .line 302
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    .line 303
    .line 304
    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    .line 305
    .line 306
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    .line 307
    .line 308
    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTaskAndIntent(ILandroid/content/Intent;II)V

    .line 309
    .line 310
    .line 311
    return-void

    .line 312
    :pswitch_7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 313
    .line 314
    move-object v0, p1

    .line 315
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 316
    .line 317
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    .line 318
    .line 319
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    .line 320
    .line 321
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageUserHandle:Landroid/os/UserHandle;

    .line 322
    .line 323
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    .line 324
    .line 325
    iget v5, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    .line 326
    .line 327
    iget v6, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    .line 328
    .line 329
    iget v7, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    .line 330
    .line 331
    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 332
    .line 333
    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntents(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFILandroid/window/RemoteTransition;)V

    .line 334
    .line 335
    .line 336
    return-void

    .line 337
    :pswitch_8
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 338
    .line 339
    move-object v0, p1

    .line 340
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 341
    .line 342
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    .line 343
    .line 344
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    .line 345
    .line 346
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageIntent:Landroid/content/Intent;

    .line 347
    .line 348
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageUserHandle:Landroid/os/UserHandle;

    .line 349
    .line 350
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    .line 351
    .line 352
    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageUserHandle:Landroid/os/UserHandle;

    .line 353
    .line 354
    iget v7, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    .line 355
    .line 356
    iget v8, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    .line 357
    .line 358
    iget v9, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    .line 359
    .line 360
    iget v10, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellRatio:F

    .line 361
    .line 362
    iget v11, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    .line 363
    .line 364
    iget-object v12, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 365
    .line 366
    invoke-virtual/range {v0 .. v12}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntents(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/os/UserHandle;IIFFILandroid/window/RemoteTransition;)V

    .line 367
    .line 368
    .line 369
    return-void

    .line 370
    :goto_4
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 371
    .line 372
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 373
    .line 374
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    .line 375
    .line 376
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    .line 377
    .line 378
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageUserHandle:Landroid/os/UserHandle;

    .line 379
    .line 380
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->openInSplitWithAllApps(ILandroid/content/Intent;Landroid/os/UserHandle;)V

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    nop

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
