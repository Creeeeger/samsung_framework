.class Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$2;
.super Landroid/window/IRemoteTransition$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat;->wrapRemoteTransition(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;)Landroid/window/IRemoteTransition$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$remoteAnimationAdapter:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$2;->val$remoteAnimationAdapter:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    .line 1
    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 8

    .line 1
    new-instance p1, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p2, v0, p3, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p2, v1, p3, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    new-array v5, v0, [Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;

    .line 17
    .line 18
    invoke-static {p2, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    if-ltz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    const/4 v7, 0x2

    .line 49
    if-ne v6, v7, :cond_1

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eq v6, v1, :cond_0

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    if-nez v6, :cond_2

    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-ltz v6, :cond_2

    .line 82
    .line 83
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eq v6, v7, :cond_2

    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 111
    .line 112
    .line 113
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 117
    .line 118
    .line 119
    new-instance v6, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$2$1;

    .line 120
    .line 121
    invoke-direct {v6, p0, p2, p1, p4}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$2$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$2;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationAdapterCompat$2;->val$remoteAnimationAdapter:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;

    .line 125
    .line 126
    const/4 v2, 0x0

    .line 127
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationRunnerCompat;->onAnimationStart(I[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;[Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method
