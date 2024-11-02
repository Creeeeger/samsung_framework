.class public final Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;
.super Landroid/view/IRemoteAnimationRunner$Default;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/back/CustomizeActivityAnimation;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Default;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/back/CustomizeActivityAnimation;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;-><init>(Lcom/android/wm/shell/back/CustomizeActivityAnimation;)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->finishAnimation()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 4

    .line 1
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    const/4 p4, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 8
    .line 9
    const v0, 0xcec78e6

    .line 10
    .line 11
    .line 12
    const-string v1, "Start back to customize animation."

    .line 13
    .line 14
    invoke-static {p1, v0, p4, v1, p3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    array-length p1, p2

    .line 18
    move v0, p4

    .line 19
    :goto_0
    if-ge v0, p1, :cond_3

    .line 20
    .line 21
    aget-object v1, p2, v0

    .line 22
    .line 23
    iget v2, v1, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    .line 29
    .line 30
    iput-object v1, v3, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 31
    .line 32
    :cond_1
    if-nez v2, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    .line 35
    .line 36
    iput-object v1, v2, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 37
    .line 38
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    .line 42
    .line 43
    iget-object p2, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCloseAnimation:Landroid/view/animation/Animation;

    .line 44
    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 48
    .line 49
    if-nez p1, :cond_5

    .line 50
    .line 51
    :cond_4
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    .line 52
    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 56
    .line 57
    const p2, -0x476e87bc

    .line 58
    .line 59
    .line 60
    const-string v0, "No animation loaded, should choose cross-activity animation?"

    .line 61
    .line 62
    invoke-static {p1, p2, p4, v0, p3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    .line 66
    .line 67
    iget-object p2, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 68
    .line 69
    if-eqz p2, :cond_8

    .line 70
    .line 71
    iget-object p2, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 72
    .line 73
    if-eqz p2, :cond_8

    .line 74
    .line 75
    iget-object v0, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mCloseAnimation:Landroid/view/animation/Animation;

    .line 76
    .line 77
    if-eqz v0, :cond_8

    .line 78
    .line 79
    iget-object v1, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 80
    .line 81
    if-nez v1, :cond_6

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_6
    iget-object p2, p2, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    .line 85
    .line 86
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    invoke-virtual {v0, p3, p2, p3, p2}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 98
    .line 99
    iget-object p3, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 100
    .line 101
    iget-object p3, p3, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    .line 102
    .line 103
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 104
    .line 105
    .line 106
    move-result p4

    .line 107
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    invoke-virtual {p2, p4, p3, p4, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 112
    .line 113
    .line 114
    iget-object p2, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 115
    .line 116
    iget-object p2, p2, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 117
    .line 118
    if-eqz p2, :cond_9

    .line 119
    .line 120
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 121
    .line 122
    if-eqz p2, :cond_9

    .line 123
    .line 124
    iget-object p2, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 125
    .line 126
    iget-object p2, p2, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 127
    .line 128
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    iget p3, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mNextBackgroundColor:I

    .line 133
    .line 134
    if-nez p3, :cond_7

    .line 135
    .line 136
    iget-object p3, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 137
    .line 138
    iget-object p3, p3, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 139
    .line 140
    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 141
    .line 142
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 143
    .line 144
    .line 145
    move-result p3

    .line 146
    :cond_7
    iget-object p4, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 147
    .line 148
    iget-object p1, p1, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    .line 149
    .line 150
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/wm/shell/back/BackAnimationBackground;->ensureBackground(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_8
    :goto_1
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    .line 155
    .line 156
    if-eqz p1, :cond_9

    .line 157
    .line 158
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 159
    .line 160
    const p2, 0x2c67a5e6

    .line 161
    .line 162
    .line 163
    const-string v0, "Entering target or closing target is null."

    .line 164
    .line 165
    invoke-static {p1, p2, p4, v0, p3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    :cond_9
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation$Runner;->this$0:Lcom/android/wm/shell/back/CustomizeActivityAnimation;

    .line 169
    .line 170
    iput-object p5, p0, Lcom/android/wm/shell/back/CustomizeActivityAnimation;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 171
    .line 172
    return-void
.end method
