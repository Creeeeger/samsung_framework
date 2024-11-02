.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda2;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;

    .line 4
    .line 5
    iget v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda2;->f$1:I

    .line 6
    .line 7
    iget v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda2;->f$2:I

    .line 8
    .line 9
    iget v8, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter$$ExternalSyntheticLambda2;->f$3:I

    .line 10
    .line 11
    move-object/from16 v0, p1

    .line 12
    .line 13
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    .line 15
    iget-object v9, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    iget-boolean v3, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->DEBUG:Z

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo v6, "top task: "

    .line 24
    .line 25
    .line 26
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iget-boolean v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->originallySupportedMultiWindow:Z

    .line 44
    .line 45
    iget-object v10, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->mRealWm:Landroid/view/IWindowSession;

    .line 46
    .line 47
    const/4 v7, 0x1

    .line 48
    const/4 v11, 0x0

    .line 49
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitTwoFingerGestureStarter;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 50
    .line 51
    if-eqz v6, :cond_5

    .line 52
    .line 53
    if-eq v4, v7, :cond_1

    .line 54
    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_1
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 58
    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    :goto_0
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 69
    .line 70
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 71
    .line 72
    invoke-static {v2, v4, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getEdgeAllAppsActivityIntent(Landroid/content/ComponentName;II)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v3, "enterSplitIfPossible: start intent="

    .line 81
    .line 82
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :cond_3
    :try_start_0
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 96
    .line 97
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 98
    .line 99
    iget-boolean v2, v2, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 100
    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    iget-object v12, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    const/4 v13, 0x0

    .line 106
    const/high16 v15, 0x42000000    # 32.0f

    .line 107
    .line 108
    const/16 v16, 0x0

    .line 109
    .line 110
    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 111
    .line 112
    move-object v14, v0

    .line 113
    invoke-static/range {v12 .. v17}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    new-instance v12, Landroid/window/WindowContainerTransaction;

    .line 118
    .line 119
    invoke-direct {v12}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 120
    .line 121
    .line 122
    new-instance v6, Landroid/os/Bundle;

    .line 123
    .line 124
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 125
    .line 126
    .line 127
    iget-object v3, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 128
    .line 129
    const/4 v4, -0x1

    .line 130
    move-object v7, v12

    .line 131
    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;I)Landroid/os/Bundle;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v12, v2, v0, v3}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 136
    .line 137
    .line 138
    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 139
    .line 140
    invoke-virtual {v0, v12}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_4
    const/4 v2, 0x0

    .line 145
    invoke-virtual {v1, v0, v2, v5, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/content/Intent;Landroid/os/UserHandle;II)V

    .line 146
    .line 147
    .line 148
    :goto_1
    const/16 v0, 0x31

    .line 149
    .line 150
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    invoke-interface {v10, v0, v11}, Landroid/view/IWindowSession;->performHapticFeedback(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const-string v1, "Failed to launch activity"

    .line 160
    .line 161
    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .line 163
    .line 164
    :goto_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FULL_TO_SPLIT_BY_GESTURE_SA_LOGGING:Z

    .line 165
    .line 166
    if-eqz v0, :cond_b

    .line 167
    .line 168
    const-string v0, "1000"

    .line 169
    .line 170
    const-string v1, "From Gesture"

    .line 171
    .line 172
    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_5
    :goto_3
    if-ne v4, v7, :cond_a

    .line 177
    .line 178
    iget-object v4, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mFullscreenTaskListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    .line 179
    .line 180
    if-eqz v4, :cond_9

    .line 181
    .line 182
    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 183
    .line 184
    const/4 v6, 0x4

    .line 185
    if-eq v2, v7, :cond_8

    .line 186
    .line 187
    const/4 v7, 0x3

    .line 188
    if-eq v2, v7, :cond_7

    .line 189
    .line 190
    if-eq v2, v6, :cond_6

    .line 191
    .line 192
    move v6, v11

    .line 193
    goto :goto_4

    .line 194
    :cond_6
    const/4 v6, 0x2

    .line 195
    goto :goto_4

    .line 196
    :cond_7
    const/16 v6, 0x8

    .line 197
    .line 198
    :cond_8
    :goto_4
    invoke-virtual {v4, v5, v6}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->animForAffordance(II)V

    .line 199
    .line 200
    .line 201
    const/16 v2, 0x7f

    .line 202
    .line 203
    :try_start_1
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    invoke-interface {v10, v2, v11}, Landroid/view/IWindowSession;->performHapticFeedback(IZ)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    .line 209
    .line 210
    goto :goto_5

    .line 211
    :catch_1
    move-exception v0

    .line 212
    new-instance v1, Ljava/lang/RuntimeException;

    .line 213
    .line 214
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 215
    .line 216
    .line 217
    throw v1

    .line 218
    :cond_9
    :goto_5
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 219
    .line 220
    const v2, 0x1040473

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-static {v1, v2, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 232
    .line 233
    .line 234
    :cond_a
    if-eqz v3, :cond_b

    .line 235
    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string/jumbo v2, "top task doesn\'t fit in split. info="

    .line 239
    .line 240
    .line 241
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v2, " type="

    .line 248
    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    :cond_b
    :goto_6
    return-void
.end method
