.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $apps:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic $finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final synthetic $nonApps:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$apps:[Landroid/view/RemoteAnimationTarget;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$nonApps:[Landroid/view/RemoteAnimationTarget;

    .line 6
    .line 7
    iput-object p6, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$apps:[Landroid/view/RemoteAnimationTarget;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$nonApps:[Landroid/view/RemoteAnimationTarget;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 12
    .line 13
    iget-object v0, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->onTimeout:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$onTimeout$1;

    .line 14
    .line 15
    iget-object v4, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->launchContainer:Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    iget-boolean v0, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->timedOut:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    if-eqz v5, :cond_e

    .line 25
    .line 26
    :try_start_0
    invoke-interface {v5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto/16 :goto_8

    .line 30
    .line 31
    :catch_0
    move-exception v0

    .line 32
    move-object v1, v0

    .line 33
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_8

    .line 37
    .line 38
    :cond_0
    iget-boolean v0, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->cancelled:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_1
    const/4 v4, 0x0

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    move-object v6, v4

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    new-instance v0, Lkotlin/jvm/internal/ArrayIterator;

    .line 50
    .line 51
    invoke-direct {v0, v2}, Lkotlin/jvm/internal/ArrayIterator;-><init>([Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object v2, v4

    .line 55
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_5

    .line 60
    .line 61
    invoke-virtual {v0}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    check-cast v6, Landroid/view/RemoteAnimationTarget;

    .line 66
    .line 67
    iget v7, v6, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 68
    .line 69
    if-nez v7, :cond_3

    .line 70
    .line 71
    iget-object v7, v6, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 72
    .line 73
    if-eqz v7, :cond_4

    .line 74
    .line 75
    iget-boolean v7, v6, Landroid/view/RemoteAnimationTarget;->hasAnimatingParent:Z

    .line 76
    .line 77
    if-nez v7, :cond_4

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    if-nez v2, :cond_3

    .line 81
    .line 82
    move-object v2, v6

    .line 83
    goto :goto_0

    .line 84
    :cond_5
    move-object v6, v2

    .line 85
    :goto_1
    iget-object v2, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 86
    .line 87
    if-nez v6, :cond_7

    .line 88
    .line 89
    const-string v0, "ActivityLaunchAnimator"

    .line 90
    .line 91
    const-string v3, "Aborting the animation as no window is opening"

    .line 92
    .line 93
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    iget-object v0, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->onTimeout:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$onTimeout$1;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->launchContainer:Landroid/view/ViewGroup;

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 101
    .line 102
    .line 103
    if-eqz v5, :cond_6

    .line 104
    .line 105
    :try_start_1
    invoke-interface {v5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :catch_1
    move-exception v0

    .line 110
    move-object v1, v0

    .line 111
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    :cond_6
    :goto_2
    sget-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;

    .line 115
    .line 116
    invoke-interface {v2, v4}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled(Ljava/lang/Boolean;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_8

    .line 120
    .line 121
    :cond_7
    const/4 v0, 0x1

    .line 122
    if-eqz v3, :cond_a

    .line 123
    .line 124
    array-length v7, v3

    .line 125
    const/4 v8, 0x0

    .line 126
    move v9, v8

    .line 127
    :goto_3
    if-ge v9, v7, :cond_a

    .line 128
    .line 129
    aget-object v10, v3, v9

    .line 130
    .line 131
    iget v11, v10, Landroid/view/RemoteAnimationTarget;->windowType:I

    .line 132
    .line 133
    const/16 v12, 0x7e3

    .line 134
    .line 135
    if-ne v11, v12, :cond_8

    .line 136
    .line 137
    move v11, v0

    .line 138
    goto :goto_4

    .line 139
    :cond_8
    move v11, v8

    .line 140
    :goto_4
    if-eqz v11, :cond_9

    .line 141
    .line 142
    move-object v7, v10

    .line 143
    goto :goto_5

    .line 144
    :cond_9
    add-int/lit8 v9, v9, 0x1

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_a
    move-object v7, v4

    .line 148
    :goto_5
    iget-object v3, v6, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    .line 149
    .line 150
    new-instance v4, Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 151
    .line 152
    iget v9, v3, Landroid/graphics/Rect;->top:I

    .line 153
    .line 154
    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    .line 155
    .line 156
    iget v11, v3, Landroid/graphics/Rect;->left:I

    .line 157
    .line 158
    iget v12, v3, Landroid/graphics/Rect;->right:I

    .line 159
    .line 160
    const/4 v13, 0x0

    .line 161
    const/4 v14, 0x0

    .line 162
    const/16 v15, 0x30

    .line 163
    .line 164
    const/16 v16, 0x0

    .line 165
    .line 166
    move-object v8, v4

    .line 167
    invoke-direct/range {v8 .. v16}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 168
    .line 169
    .line 170
    iget-object v3, v6, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 171
    .line 172
    if-eqz v3, :cond_c

    .line 173
    .line 174
    iget-object v8, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->callback:Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;

    .line 175
    .line 176
    check-cast v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$24;

    .line 177
    .line 178
    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$24;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 179
    .line 180
    iget-object v9, v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStartingSurfaceOptional:Ljava/util/Optional;

    .line 181
    .line 182
    invoke-virtual {v9}, Ljava/util/Optional;->isPresent()Z

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    if-nez v9, :cond_b

    .line 187
    .line 188
    const-string v3, "CentralSurfaces"

    .line 189
    .line 190
    const-string v8, "No starting surface, defaulting to SystemBGColor"

    .line 191
    .line 192
    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getSystemBGColor()I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    goto :goto_6

    .line 200
    :cond_b
    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStartingSurfaceOptional:Ljava/util/Optional;

    .line 201
    .line 202
    invoke-virtual {v8}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    check-cast v8, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

    .line 207
    .line 208
    invoke-virtual {v8, v3}, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->getBackgroundColor(Landroid/app/TaskInfo;)I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    goto :goto_6

    .line 213
    :cond_c
    iget v3, v6, Landroid/view/RemoteAnimationTarget;->backgroundColor:I

    .line 214
    .line 215
    :goto_6
    move v11, v3

    .line 216
    iget-object v3, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 217
    .line 218
    invoke-interface {v2}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/animation/LaunchAnimator;->isExpandingFullyAbove$frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib(Landroid/view/View;Lcom/android/systemui/animation/LaunchAnimator$State;)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_d

    .line 227
    .line 228
    iget-object v2, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->context:Landroid/content/Context;

    .line 229
    .line 230
    invoke-static {v2}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    goto :goto_7

    .line 235
    :cond_d
    const/4 v2, 0x0

    .line 236
    :goto_7
    iput v2, v4, Lcom/android/systemui/animation/LaunchAnimator$State;->topCornerRadius:F

    .line 237
    .line 238
    iput v2, v4, Lcom/android/systemui/animation/LaunchAnimator$State;->bottomCornerRadius:F

    .line 239
    .line 240
    iget-object v3, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 241
    .line 242
    new-instance v9, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;

    .line 243
    .line 244
    move-object v2, v9

    .line 245
    move-object v10, v4

    .line 246
    move-object v4, v1

    .line 247
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)V

    .line 248
    .line 249
    .line 250
    iget-object v8, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 251
    .line 252
    invoke-virtual {v9}, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->isBelowAnimatingWindow()Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    xor-int/lit8 v12, v2, 0x1

    .line 257
    .line 258
    invoke-virtual {v9}, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$startAnimation$controller$1;->isBelowAnimatingWindow()Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    xor-int/lit8 v13, v2, 0x1

    .line 263
    .line 264
    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/animation/LaunchAnimator;->startAnimation(Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;IZZ)Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    iput-object v0, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->animation:Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;

    .line 269
    .line 270
    :cond_e
    :goto_8
    return-void
.end method
