.class Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;
.super Landroid/window/IRemoteTransition$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;Landroid/app/IApplicationThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final mRecentsSession:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;

.field mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;

.field final synthetic val$controller:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

.field final synthetic val$recents:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->val$controller:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->val$recents:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->mRecentsSession:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->mToken:Landroid/os/IBinder;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->mRecentsSession:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->val$recents:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;

    .line 13
    .line 14
    invoke-virtual {p1, p2, p3, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->merge(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    :try_start_0
    invoke-interface {p5, p0, p0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    const-string p1, "RemoteTransitionCompat"

    .line 28
    .line 29
    const-string p2, "Error merging transition."

    .line 30
    .line 31
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 11

    .line 1
    new-instance v6, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v8, 0x0

    .line 7
    invoke-static {p2, v8, p3, v6}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    .line 8
    .line 9
    .line 10
    move-result-object v9

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-static {p2, v0, p3, v6}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    .line 13
    .line 14
    .line 15
    move-result-object v10

    .line 16
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->mToken:Landroid/os/IBinder;

    .line 17
    .line 18
    new-instance v4, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p2, v0}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v1, 0x0

    .line 28
    move-object v5, v1

    .line 29
    :goto_0
    if-ltz p1, :cond_4

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x2

    .line 46
    const/4 v7, 0x3

    .line 47
    if-eq v2, v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/4 v3, 0x4

    .line 54
    if-ne v2, v3, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 68
    .line 69
    if-ne v2, v7, :cond_3

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroid/view/SurfaceControl;

    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    mul-int/2addr v2, v7

    .line 90
    sub-int/2addr v2, p1

    .line 91
    invoke-virtual {p3, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Landroid/view/SurfaceControl;

    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    mul-int/2addr v3, v7

    .line 114
    sub-int/2addr v3, p1

    .line 115
    invoke-virtual {p3, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-nez v1, :cond_2

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_2
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 126
    .line 127
    invoke-virtual {v4, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 131
    .line 132
    if-eqz v2, :cond_3

    .line 133
    .line 134
    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_3

    .line 139
    .line 140
    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 141
    .line 142
    :cond_3
    :goto_2
    add-int/lit8 p1, p1, -0x1

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_4
    array-length p1, v10

    .line 146
    sub-int/2addr p1, v0

    .line 147
    :goto_3
    if-ltz p1, :cond_5

    .line 148
    .line 149
    aget-object v0, v10, p1

    .line 150
    .line 151
    iget-object v0, v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    .line 152
    .line 153
    const/high16 v1, 0x3f800000    # 1.0f

    .line 154
    .line 155
    invoke-virtual {p3, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 156
    .line 157
    .line 158
    add-int/lit8 p1, p1, -0x1

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_5
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->mRecentsSession:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;

    .line 165
    .line 166
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->val$controller:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;

    .line 167
    .line 168
    iget-object v7, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->mToken:Landroid/os/IBinder;

    .line 169
    .line 170
    move-object v2, p2

    .line 171
    move-object v3, p4

    .line 172
    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;->setup(Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;Ljava/util/ArrayList;Landroid/window/WindowContainerToken;Landroid/util/ArrayMap;Landroid/os/IBinder;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->val$recents:Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;

    .line 176
    .line 177
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$2;->mRecentsSession:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$RecentsControllerWrap;

    .line 178
    .line 179
    new-instance v4, Landroid/graphics/Rect;

    .line 180
    .line 181
    invoke-direct {v4, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 182
    .line 183
    .line 184
    new-instance v5, Landroid/graphics/Rect;

    .line 185
    .line 186
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 187
    .line 188
    .line 189
    move-object v2, v9

    .line 190
    move-object v3, v10

    .line 191
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationListener;->onAnimationStart(Lcom/samsung/android/desktopsystemui/sharedlib/system/RecentsAnimationControllerCompat;[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method
