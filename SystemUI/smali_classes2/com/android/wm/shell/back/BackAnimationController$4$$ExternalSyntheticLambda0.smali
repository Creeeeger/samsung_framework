.class public final synthetic Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/back/BackAnimationController$4;

.field public final synthetic f$1:Landroid/window/IBackAnimationFinishedCallback;

.field public final synthetic f$2:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$3:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$4:[Landroid/view/RemoteAnimationTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController$4;Landroid/window/IBackAnimationFinishedCallback;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/BackAnimationController$4;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$1:Landroid/window/IBackAnimationFinishedCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$2:[Landroid/view/RemoteAnimationTarget;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$3:[Landroid/view/RemoteAnimationTarget;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$4:[Landroid/view/RemoteAnimationTarget;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/BackAnimationController$4;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$1:Landroid/window/IBackAnimationFinishedCallback;

    .line 6
    .line 7
    iget-object v9, v0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$2:[Landroid/view/RemoteAnimationTarget;

    .line 8
    .line 9
    iget-object v6, v0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$3:[Landroid/view/RemoteAnimationTarget;

    .line 10
    .line 11
    iget-object v7, v0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda0;->f$4:[Landroid/view/RemoteAnimationTarget;

    .line 12
    .line 13
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    .line 16
    .line 17
    const-string v10, "ShellBackPreview"

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string v0, "Lack of navigation info to start animation."

    .line 22
    .line 23
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto/16 :goto_6

    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getType()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v3, v1, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 33
    .line 34
    iget-object v4, v3, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/window/BackNavigationInfo;->getType()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    iget-object v5, v3, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationDefinition:Landroid/util/SparseArray;

    .line 41
    .line 42
    const/4 v11, 0x2

    .line 43
    const/4 v12, 0x1

    .line 44
    const/4 v13, 0x0

    .line 45
    if-ne v4, v11, :cond_4

    .line 46
    .line 47
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->contains(I)Z

    .line 48
    .line 49
    .line 50
    move-result v14

    .line 51
    if-eqz v14, :cond_4

    .line 52
    .line 53
    iget-object v14, v3, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    .line 54
    .line 55
    invoke-virtual {v14}, Landroid/window/BackNavigationInfo;->getCustomAnimationInfo()Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v14

    .line 59
    if-eqz v14, :cond_4

    .line 60
    .line 61
    iget-object v15, v3, Lcom/android/wm/shell/back/BackAnimationController;->mCustomizeActivityAnimation:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    .line 62
    .line 63
    if-eqz v15, :cond_4

    .line 64
    .line 65
    iget-object v8, v15, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCustomAnimationLoader:Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;

    .line 66
    .line 67
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v14}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getPackageName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v16

    .line 74
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v16

    .line 78
    if-eqz v16, :cond_1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v8, v14, v13}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;->loadAnimation(Landroid/window/BackNavigationInfo$CustomAnimationInfo;Z)Landroid/view/animation/Animation;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    if-nez v11, :cond_2

    .line 86
    .line 87
    :goto_0
    const/4 v12, 0x0

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v8, v14, v12}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$CustomAnimationLoader;->loadAnimation(Landroid/window/BackNavigationInfo$CustomAnimationInfo;Z)Landroid/view/animation/Animation;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    new-instance v12, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;

    .line 94
    .line 95
    invoke-direct {v12}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v11, v12, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;->mCloseAnimation:Landroid/view/animation/Animation;

    .line 99
    .line 100
    iput-object v8, v12, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 101
    .line 102
    invoke-virtual {v14}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getCustomBackground()I

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    iput v8, v12, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;->mBackgroundColor:I

    .line 107
    .line 108
    :goto_1
    if-eqz v12, :cond_3

    .line 109
    .line 110
    iget-object v8, v12, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;->mCloseAnimation:Landroid/view/animation/Animation;

    .line 111
    .line 112
    iput-object v8, v15, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCloseAnimation:Landroid/view/animation/Animation;

    .line 113
    .line 114
    iget-object v8, v12, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 115
    .line 116
    iput-object v8, v15, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 117
    .line 118
    iget v8, v12, Lcom/android/wm/shell/back/CustomizeActivityAnimation$AnimationLoadResult;->mBackgroundColor:I

    .line 119
    .line 120
    iput v8, v15, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mNextBackgroundColor:I

    .line 121
    .line 122
    const/4 v8, 0x1

    .line 123
    goto :goto_2

    .line 124
    :cond_3
    move v8, v13

    .line 125
    :goto_2
    if-eqz v8, :cond_4

    .line 126
    .line 127
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    check-cast v8, Lcom/android/wm/shell/back/BackAnimationRunner;

    .line 132
    .line 133
    iput-boolean v13, v8, Lcom/android/wm/shell/back/BackAnimationRunner;->mWaitingAnimation:Z

    .line 134
    .line 135
    iget-object v3, v3, Lcom/android/wm/shell/back/BackAnimationController;->mCustomizeActivityAnimation:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    .line 136
    .line 137
    iget-object v3, v3, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mBackAnimationRunner:Lcom/android/wm/shell/back/BackAnimationRunner;

    .line 138
    .line 139
    const/4 v8, 0x2

    .line 140
    invoke-virtual {v5, v8, v3}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Lcom/android/wm/shell/back/BackAnimationRunner;

    .line 148
    .line 149
    if-nez v3, :cond_5

    .line 150
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v3, "Animation didn\'t be defined for type "

    .line 154
    .line 155
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v0}, Landroid/window/BackNavigationInfo;->typeToString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    if-eqz v2, :cond_a

    .line 173
    .line 174
    :try_start_0
    invoke-interface {v2, v13}, Landroid/window/IBackAnimationFinishedCallback;->onAnimationFinished(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    .line 177
    goto/16 :goto_6

    .line 178
    .line 179
    :catch_0
    move-exception v0

    .line 180
    move-object v1, v0

    .line 181
    const-string v0, "Failed call IBackNaviAnimationController"

    .line 182
    .line 183
    invoke-static {v10, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .line 185
    .line 186
    goto/16 :goto_6

    .line 187
    .line 188
    :cond_5
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 189
    .line 190
    iget-object v4, v3, Lcom/android/wm/shell/back/BackAnimationRunner;->mCallback:Landroid/window/IOnBackInvokedCallback;

    .line 191
    .line 192
    iput-object v4, v0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    .line 193
    .line 194
    iput-object v2, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimationFinishedCallback:Landroid/window/IBackAnimationFinishedCallback;

    .line 195
    .line 196
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    .line 197
    .line 198
    if-eqz v0, :cond_6

    .line 199
    .line 200
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 201
    .line 202
    const v2, 0x2ac3d7a2

    .line 203
    .line 204
    .line 205
    const-string v4, "BackAnimationController: startAnimation()"

    .line 206
    .line 207
    const/4 v5, 0x0

    .line 208
    invoke-static {v0, v2, v13, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :cond_6
    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda1;

    .line 212
    .line 213
    const/4 v2, 0x1

    .line 214
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/back/BackAnimationController$4$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 215
    .line 216
    .line 217
    new-instance v8, Lcom/android/wm/shell/back/BackAnimationRunner$1;

    .line 218
    .line 219
    invoke-direct {v8, v3, v0}, Lcom/android/wm/shell/back/BackAnimationRunner$1;-><init>(Lcom/android/wm/shell/back/BackAnimationRunner;Ljava/lang/Runnable;)V

    .line 220
    .line 221
    .line 222
    iput-boolean v13, v3, Lcom/android/wm/shell/back/BackAnimationRunner;->mWaitingAnimation:Z

    .line 223
    .line 224
    :try_start_1
    iget-object v3, v3, Lcom/android/wm/shell/back/BackAnimationRunner;->mRunner:Landroid/view/IRemoteAnimationRunner;

    .line 225
    .line 226
    const/4 v4, -0x1

    .line 227
    move-object v5, v9

    .line 228
    invoke-interface/range {v3 .. v8}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :catch_1
    move-exception v0

    .line 233
    const-string v2, "Failed call onAnimationStart"

    .line 234
    .line 235
    invoke-static {v10, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    .line 237
    .line 238
    :goto_3
    array-length v0, v9

    .line 239
    const/4 v2, 0x1

    .line 240
    if-lt v0, v2, :cond_8

    .line 241
    .line 242
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 243
    .line 244
    iget-object v2, v0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    .line 245
    .line 246
    aget-object v21, v9, v13

    .line 247
    .line 248
    iget-object v0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    new-instance v3, Landroid/window/BackMotionEvent;

    .line 254
    .line 255
    iget v15, v0, Lcom/android/wm/shell/back/TouchTracker;->mInitTouchX:F

    .line 256
    .line 257
    iget v4, v0, Lcom/android/wm/shell/back/TouchTracker;->mInitTouchY:F

    .line 258
    .line 259
    const/16 v17, 0x0

    .line 260
    .line 261
    const/16 v18, 0x0

    .line 262
    .line 263
    const/16 v19, 0x0

    .line 264
    .line 265
    iget v0, v0, Lcom/android/wm/shell/back/TouchTracker;->mSwipeEdge:I

    .line 266
    .line 267
    move-object v14, v3

    .line 268
    move/from16 v16, v4

    .line 269
    .line 270
    move/from16 v20, v0

    .line 271
    .line 272
    invoke-direct/range {v14 .. v21}, Landroid/window/BackMotionEvent;-><init>(FFFFFILandroid/view/RemoteAnimationTarget;)V

    .line 273
    .line 274
    .line 275
    if-nez v2, :cond_7

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_7
    :try_start_2
    invoke-interface {v2, v3}, Landroid/window/IOnBackInvokedCallback;->onBackStarted(Landroid/window/BackMotionEvent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 279
    .line 280
    .line 281
    goto :goto_4

    .line 282
    :catch_2
    move-exception v0

    .line 283
    move-object v2, v0

    .line 284
    const-string v0, "dispatchOnBackStarted error: "

    .line 285
    .line 286
    invoke-static {v10, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    .line 288
    .line 289
    :cond_8
    :goto_4
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 290
    .line 291
    iget-object v0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    .line 292
    .line 293
    invoke-virtual {v0}, Lcom/android/wm/shell/back/TouchTracker;->createProgressEvent()Landroid/window/BackMotionEvent;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    iget-object v2, v1, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 298
    .line 299
    iget-object v2, v2, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    .line 300
    .line 301
    if-nez v2, :cond_9

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_9
    :try_start_3
    invoke-interface {v2, v0}, Landroid/window/IOnBackInvokedCallback;->onBackProgressed(Landroid/window/BackMotionEvent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 305
    .line 306
    .line 307
    goto :goto_5

    .line 308
    :catch_3
    move-exception v0

    .line 309
    move-object v2, v0

    .line 310
    const-string v0, "dispatchOnBackProgressed error: "

    .line 311
    .line 312
    invoke-static {v10, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    .line 314
    .line 315
    :goto_5
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController$4;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 316
    .line 317
    iget-boolean v1, v0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    .line 318
    .line 319
    if-nez v1, :cond_a

    .line 320
    .line 321
    invoke-virtual {v0}, Lcom/android/wm/shell/back/BackAnimationController;->startPostCommitAnimation()V

    .line 322
    .line 323
    .line 324
    :cond_a
    :goto_6
    return-void
.end method
