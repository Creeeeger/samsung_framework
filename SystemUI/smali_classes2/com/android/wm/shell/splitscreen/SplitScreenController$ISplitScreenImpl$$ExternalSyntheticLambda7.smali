.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:I

.field public final synthetic f$10:Landroid/os/Parcelable;

.field public final synthetic f$11:Lcom/android/internal/logging/InstanceId;

.field public final synthetic f$2:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:Landroid/app/PendingIntent;

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f$7:Landroid/os/Bundle;

.field public final synthetic f$8:I

.field public final synthetic f$9:F


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/os/Parcelable;Lcom/android/internal/logging/InstanceId;I)V
    .locals 0

    .line 1
    iput p13, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$0:Landroid/app/PendingIntent;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$1:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$2:Landroid/content/pm/ShortcutInfo;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$3:Landroid/os/Bundle;

    .line 10
    .line 11
    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$4:Landroid/app/PendingIntent;

    .line 12
    .line 13
    iput p6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$5:I

    .line 14
    .line 15
    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$6:Landroid/content/pm/ShortcutInfo;

    .line 16
    .line 17
    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$7:Landroid/os/Bundle;

    .line 18
    .line 19
    iput p9, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$8:I

    .line 20
    .line 21
    iput p10, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$9:F

    .line 22
    .line 23
    iput-object p11, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$10:Landroid/os/Parcelable;

    .line 24
    .line 25
    iput-object p12, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$11:Lcom/android/internal/logging/InstanceId;

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 4
    .line 5
    const-string v8, "Adding MULTIPLE_TASK"

    .line 6
    .line 7
    const-string v9, "Cancel entering split as not supporting multi-instances"

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :pswitch_0
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$0:Landroid/app/PendingIntent;

    .line 15
    .line 16
    iget v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$1:I

    .line 17
    .line 18
    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$2:Landroid/content/pm/ShortcutInfo;

    .line 19
    .line 20
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$3:Landroid/os/Bundle;

    .line 21
    .line 22
    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$4:Landroid/app/PendingIntent;

    .line 23
    .line 24
    iget v14, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$5:I

    .line 25
    .line 26
    iget-object v15, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$6:Landroid/content/pm/ShortcutInfo;

    .line 27
    .line 28
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$7:Landroid/os/Bundle;

    .line 29
    .line 30
    iget v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$8:I

    .line 31
    .line 32
    iget v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$9:F

    .line 33
    .line 34
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$10:Landroid/os/Parcelable;

    .line 35
    .line 36
    move-object/from16 v24, v6

    .line 37
    .line 38
    check-cast v24, Landroid/view/RemoteAnimationAdapter;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$11:Lcom/android/internal/logging/InstanceId;

    .line 41
    .line 42
    move-object/from16 v6, p1

    .line 43
    .line 44
    check-cast v6, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 45
    .line 46
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v11}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-static {v12}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v1, v14, v7, v5}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(IILjava/lang/String;Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {v6, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    new-instance v1, Landroid/content/Intent;

    .line 70
    .line 71
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 72
    .line 73
    .line 74
    const/high16 v5, 0x8000000

    .line 75
    .line 76
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    new-instance v7, Landroid/content/Intent;

    .line 80
    .line 81
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 88
    .line 89
    if-eqz v5, :cond_0

    .line 90
    .line 91
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 92
    .line 93
    move-object/from16 p0, v1

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    const v9, 0x5e7bb0dd

    .line 97
    .line 98
    .line 99
    const/4 v14, 0x0

    .line 100
    invoke-static {v5, v9, v14, v8, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    move-object/from16 p0, v1

    .line 105
    .line 106
    :goto_0
    move-object/from16 v19, v7

    .line 107
    .line 108
    move-object/from16 v18, v12

    .line 109
    .line 110
    move-object/from16 v12, p0

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    const/4 v1, 0x0

    .line 114
    const/4 v14, 0x0

    .line 115
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 116
    .line 117
    if-eqz v5, :cond_2

    .line 118
    .line 119
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 120
    .line 121
    const v7, 0x2f294008

    .line 122
    .line 123
    .line 124
    invoke-static {v5, v7, v14, v9, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_2
    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    const v5, 0x7f1304cd

    .line 130
    .line 131
    .line 132
    invoke-static {v1, v5, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 137
    .line 138
    .line 139
    const/4 v12, 0x0

    .line 140
    :cond_3
    move-object/from16 v18, v12

    .line 141
    .line 142
    const/4 v12, 0x0

    .line 143
    const/16 v19, 0x0

    .line 144
    .line 145
    :goto_1
    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    new-instance v5, Landroid/window/WindowContainerTransaction;

    .line 151
    .line 152
    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 153
    .line 154
    .line 155
    if-nez v10, :cond_4

    .line 156
    .line 157
    new-instance v6, Landroid/os/Bundle;

    .line 158
    .line 159
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 160
    .line 161
    .line 162
    move-object v14, v6

    .line 163
    goto :goto_2

    .line 164
    :cond_4
    move-object v14, v10

    .line 165
    :goto_2
    if-nez v18, :cond_5

    .line 166
    .line 167
    move-object v10, v1

    .line 168
    move-object/from16 v15, v24

    .line 169
    .line 170
    move-object/from16 v16, v5

    .line 171
    .line 172
    invoke-virtual/range {v10 .. v16}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->launchAsFullscreenWithRemoteAnimation(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransaction;)V

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_5
    iget-object v6, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 177
    .line 178
    invoke-static {v14, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 179
    .line 180
    .line 181
    if-eqz v13, :cond_6

    .line 182
    .line 183
    iget-object v6, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 184
    .line 185
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-virtual {v5, v6, v13, v14}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_6
    invoke-virtual {v5, v11, v12, v14}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 194
    .line 195
    .line 196
    new-instance v6, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 197
    .line 198
    invoke-virtual {v11}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    invoke-virtual/range {v18 .. v18}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-direct {v6, v1, v7, v8, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/content/Intent;Landroid/content/Intent;I)V

    .line 207
    .line 208
    .line 209
    iput-object v6, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 210
    .line 211
    :goto_3
    const/16 v17, -0x1

    .line 212
    .line 213
    move-object v6, v15

    .line 214
    move-object v15, v1

    .line 215
    move-object/from16 v16, v5

    .line 216
    .line 217
    move-object/from16 v20, v6

    .line 218
    .line 219
    move-object/from16 v21, v4

    .line 220
    .line 221
    move/from16 v22, v3

    .line 222
    .line 223
    move/from16 v23, v2

    .line 224
    .line 225
    move-object/from16 v25, v0

    .line 226
    .line 227
    invoke-virtual/range {v15 .. v25}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    .line 228
    .line 229
    .line 230
    :goto_4
    return-void

    .line 231
    :goto_5
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$0:Landroid/app/PendingIntent;

    .line 232
    .line 233
    iget v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$1:I

    .line 234
    .line 235
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$2:Landroid/content/pm/ShortcutInfo;

    .line 236
    .line 237
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$3:Landroid/os/Bundle;

    .line 238
    .line 239
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$4:Landroid/app/PendingIntent;

    .line 240
    .line 241
    iget v6, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$5:I

    .line 242
    .line 243
    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$6:Landroid/content/pm/ShortcutInfo;

    .line 244
    .line 245
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$7:Landroid/os/Bundle;

    .line 246
    .line 247
    iget v11, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$8:I

    .line 248
    .line 249
    iget v12, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$9:F

    .line 250
    .line 251
    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$10:Landroid/os/Parcelable;

    .line 252
    .line 253
    check-cast v13, Landroid/window/RemoteTransition;

    .line 254
    .line 255
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda7;->f$11:Lcom/android/internal/logging/InstanceId;

    .line 256
    .line 257
    move-object/from16 v14, p1

    .line 258
    .line 259
    check-cast v14, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 260
    .line 261
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-static {v1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v15

    .line 268
    move-object/from16 p0, v0

    .line 269
    .line 270
    invoke-static {v5}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-static {v2, v6, v15, v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->samePackage(IILjava/lang/String;Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_a

    .line 279
    .line 280
    invoke-virtual {v14, v15}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->supportMultiInstancesSplit(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-eqz v0, :cond_8

    .line 285
    .line 286
    new-instance v0, Landroid/content/Intent;

    .line 287
    .line 288
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 289
    .line 290
    .line 291
    const/high16 v2, 0x8000000

    .line 292
    .line 293
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 294
    .line 295
    .line 296
    new-instance v6, Landroid/content/Intent;

    .line 297
    .line 298
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    .line 303
    .line 304
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 305
    .line 306
    if-eqz v2, :cond_7

    .line 307
    .line 308
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 309
    .line 310
    move-object/from16 p1, v0

    .line 311
    .line 312
    const/4 v0, 0x0

    .line 313
    const v9, 0x5e7bb0dd

    .line 314
    .line 315
    .line 316
    const/4 v15, 0x0

    .line 317
    invoke-static {v2, v9, v15, v8, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_7
    move-object/from16 p1, v0

    .line 322
    .line 323
    const/4 v0, 0x0

    .line 324
    const/4 v15, 0x0

    .line 325
    :goto_6
    move-object/from16 v0, p1

    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_8
    const/4 v0, 0x0

    .line 329
    const/4 v15, 0x0

    .line 330
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 331
    .line 332
    if-eqz v2, :cond_9

    .line 333
    .line 334
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 335
    .line 336
    const v5, 0x2f294008

    .line 337
    .line 338
    .line 339
    invoke-static {v2, v5, v15, v9, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    :cond_9
    iget-object v0, v14, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mContext:Landroid/content/Context;

    .line 343
    .line 344
    const v2, 0x7f1304cd

    .line 345
    .line 346
    .line 347
    invoke-static {v0, v2, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 352
    .line 353
    .line 354
    const/4 v5, 0x0

    .line 355
    :cond_a
    const/4 v0, 0x0

    .line 356
    const/4 v6, 0x0

    .line 357
    :goto_7
    iget-object v2, v14, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 358
    .line 359
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    new-instance v8, Landroid/window/WindowContainerTransaction;

    .line 363
    .line 364
    invoke-direct {v8}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 365
    .line 366
    .line 367
    iget-object v9, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 368
    .line 369
    if-nez v5, :cond_d

    .line 370
    .line 371
    if-eqz v4, :cond_b

    .line 372
    .line 373
    goto :goto_8

    .line 374
    :cond_b
    new-instance v4, Landroid/os/Bundle;

    .line 375
    .line 376
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 377
    .line 378
    .line 379
    :goto_8
    const/4 v5, 0x0

    .line 380
    invoke-static {v4, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 381
    .line 382
    .line 383
    if-eqz v3, :cond_c

    .line 384
    .line 385
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v8, v0, v3, v4}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 390
    .line 391
    .line 392
    goto :goto_9

    .line 393
    :cond_c
    invoke-virtual {v8, v1, v0, v4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 394
    .line 395
    .line 396
    :goto_9
    iget-object v0, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 397
    .line 398
    invoke-virtual {v0, v8, v13}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V

    .line 399
    .line 400
    .line 401
    goto/16 :goto_e

    .line 402
    .line 403
    :cond_d
    iget-object v14, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 404
    .line 405
    iget-boolean v15, v14, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 406
    .line 407
    if-nez v15, :cond_e

    .line 408
    .line 409
    const/4 v15, 0x0

    .line 410
    invoke-virtual {v14, v8, v15}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    .line 411
    .line 412
    .line 413
    :cond_e
    iget-object v15, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 414
    .line 415
    move-object/from16 v16, v13

    .line 416
    .line 417
    const/4 v13, 0x1

    .line 418
    invoke-virtual {v15, v12, v13, v13}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    .line 419
    .line 420
    .line 421
    iget-object v12, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 422
    .line 423
    const/4 v15, 0x0

    .line 424
    invoke-virtual {v2, v12, v8, v15}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    .line 425
    .line 426
    .line 427
    iget-object v12, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 428
    .line 429
    iget-object v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 430
    .line 431
    invoke-virtual {v8, v12, v13}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 432
    .line 433
    .line 434
    iget-object v12, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 435
    .line 436
    iget-object v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 437
    .line 438
    invoke-virtual {v8, v12, v15}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v2, v8, v15}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v2, v8, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(Landroid/window/WindowContainerTransaction;I)V

    .line 445
    .line 446
    .line 447
    if-eqz v4, :cond_f

    .line 448
    .line 449
    goto :goto_a

    .line 450
    :cond_f
    new-instance v4, Landroid/os/Bundle;

    .line 451
    .line 452
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 453
    .line 454
    .line 455
    :goto_a
    iget-object v11, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 456
    .line 457
    invoke-static {v4, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 458
    .line 459
    .line 460
    if-eqz v3, :cond_10

    .line 461
    .line 462
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-virtual {v8, v0, v3, v4}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 467
    .line 468
    .line 469
    goto :goto_b

    .line 470
    :cond_10
    invoke-virtual {v8, v1, v0, v4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 471
    .line 472
    .line 473
    :goto_b
    if-eqz v10, :cond_11

    .line 474
    .line 475
    goto :goto_c

    .line 476
    :cond_11
    new-instance v10, Landroid/os/Bundle;

    .line 477
    .line 478
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 479
    .line 480
    .line 481
    :goto_c
    invoke-static {v10, v14}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 482
    .line 483
    .line 484
    if-eqz v7, :cond_12

    .line 485
    .line 486
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-virtual {v8, v0, v7, v10}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 491
    .line 492
    .line 493
    goto :goto_d

    .line 494
    :cond_12
    invoke-virtual {v8, v5, v6, v10}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 495
    .line 496
    .line 497
    :goto_d
    iget-object v0, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 498
    .line 499
    const/16 v26, 0x3ec

    .line 500
    .line 501
    const/16 v27, 0x0

    .line 502
    .line 503
    move-object/from16 v22, v0

    .line 504
    .line 505
    move-object/from16 v23, v8

    .line 506
    .line 507
    move-object/from16 v24, v16

    .line 508
    .line 509
    move-object/from16 v25, v2

    .line 510
    .line 511
    invoke-virtual/range {v22 .. v27}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    .line 512
    .line 513
    .line 514
    if-eqz p0, :cond_13

    .line 515
    .line 516
    iget-object v0, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 517
    .line 518
    move-object/from16 v1, p0

    .line 519
    .line 520
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    .line 521
    .line 522
    const/4 v1, 0x3

    .line 523
    iput v1, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    .line 524
    .line 525
    :cond_13
    :goto_e
    return-void

    .line 526
    nop

    .line 527
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
