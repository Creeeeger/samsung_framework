.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ANIMATION_DELAY_NAV_FADE_IN:J

.field public static final Companion:Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;

.field public static final DEFAULT_DIALOG_TO_APP_ANIMATOR:Lcom/android/systemui/animation/LaunchAnimator;

.field public static final DEFAULT_LAUNCH_ANIMATOR:Lcom/android/systemui/animation/LaunchAnimator;

.field public static final INTERPOLATORS:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

.field public static final NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;


# instance fields
.field public callback:Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;

.field public final dialogToAppAnimator:Lcom/android/systemui/animation/LaunchAnimator;

.field public final launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

.field public final lifecycleListener:Lcom/android/systemui/animation/ActivityLaunchAnimator$lifecycleListener$1;

.field public final listeners:Ljava/util/LinkedHashSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->Companion:Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;

    .line 8
    .line 9
    new-instance v0, Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 10
    .line 11
    const-wide/16 v3, 0x1f4

    .line 12
    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    const-wide/16 v7, 0x96

    .line 16
    .line 17
    const-wide/16 v9, 0x96

    .line 18
    .line 19
    const-wide/16 v11, 0xb7

    .line 20
    .line 21
    move-object v2, v0

    .line 22
    invoke-direct/range {v2 .. v12}, Lcom/android/systemui/animation/LaunchAnimator$Timings;-><init>(JJJJJ)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 26
    .line 27
    iget-wide v14, v0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->totalDuration:J

    .line 28
    .line 29
    iget-wide v1, v0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentBeforeFadeOutDelay:J

    .line 30
    .line 31
    const-wide/16 v18, 0xc8

    .line 32
    .line 33
    const-wide/16 v20, 0xc8

    .line 34
    .line 35
    iget-wide v3, v0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->contentAfterFadeInDuration:J

    .line 36
    .line 37
    new-instance v5, Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 38
    .line 39
    move-object v13, v5

    .line 40
    move-wide/from16 v16, v1

    .line 41
    .line 42
    move-wide/from16 v22, v3

    .line 43
    .line 44
    invoke-direct/range {v13 .. v23}, Lcom/android/systemui/animation/LaunchAnimator$Timings;-><init>(JJJJJ)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    .line 48
    .line 49
    sget-object v2, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    .line 50
    .line 51
    new-instance v3, Landroid/graphics/Path;

    .line 52
    .line 53
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 54
    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 58
    .line 59
    .line 60
    const v7, 0x3df93dd9    # 0.1217f

    .line 61
    .line 62
    .line 63
    const v8, 0x3d3d3c36    # 0.0462f

    .line 64
    .line 65
    .line 66
    const v9, 0x3e19999a    # 0.15f

    .line 67
    .line 68
    .line 69
    const v10, 0x3eefec57    # 0.4686f

    .line 70
    .line 71
    .line 72
    const v11, 0x3e2ab368    # 0.1667f

    .line 73
    .line 74
    .line 75
    const v12, 0x3f28f5c3    # 0.66f

    .line 76
    .line 77
    .line 78
    move-object v6, v3

    .line 79
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 80
    .line 81
    .line 82
    const v7, 0x3e3bcd36    # 0.1834f

    .line 83
    .line 84
    .line 85
    const v8, 0x3f6346dc    # 0.8878f

    .line 86
    .line 87
    .line 88
    const v9, 0x3e2ab368    # 0.1667f

    .line 89
    .line 90
    .line 91
    const/high16 v10, 0x3f800000    # 1.0f

    .line 92
    .line 93
    const/high16 v11, 0x3f800000    # 1.0f

    .line 94
    .line 95
    const/high16 v12, 0x3f800000    # 1.0f

    .line 96
    .line 97
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 98
    .line 99
    .line 100
    new-instance v6, Landroid/view/animation/PathInterpolator;

    .line 101
    .line 102
    invoke-direct {v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    .line 103
    .line 104
    .line 105
    sget-object v3, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 106
    .line 107
    new-instance v7, Landroid/view/animation/PathInterpolator;

    .line 108
    .line 109
    const v8, 0x3f19999a    # 0.6f

    .line 110
    .line 111
    .line 112
    const/high16 v9, 0x3f800000    # 1.0f

    .line 113
    .line 114
    invoke-direct {v7, v4, v4, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v1, v2, v6, v3, v7}, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 118
    .line 119
    .line 120
    sput-object v1, Lcom/android/systemui/animation/ActivityLaunchAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    .line 121
    .line 122
    new-instance v2, Lcom/android/systemui/animation/LaunchAnimator;

    .line 123
    .line 124
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/animation/LaunchAnimator;-><init>(Lcom/android/systemui/animation/LaunchAnimator$Timings;Lcom/android/systemui/animation/LaunchAnimator$Interpolators;)V

    .line 125
    .line 126
    .line 127
    sput-object v2, Lcom/android/systemui/animation/ActivityLaunchAnimator;->DEFAULT_LAUNCH_ANIMATOR:Lcom/android/systemui/animation/LaunchAnimator;

    .line 128
    .line 129
    new-instance v2, Lcom/android/systemui/animation/LaunchAnimator;

    .line 130
    .line 131
    invoke-direct {v2, v5, v1}, Lcom/android/systemui/animation/LaunchAnimator;-><init>(Lcom/android/systemui/animation/LaunchAnimator$Timings;Lcom/android/systemui/animation/LaunchAnimator$Interpolators;)V

    .line 132
    .line 133
    .line 134
    sput-object v2, Lcom/android/systemui/animation/ActivityLaunchAnimator;->DEFAULT_DIALOG_TO_APP_ANIMATOR:Lcom/android/systemui/animation/LaunchAnimator;

    .line 135
    .line 136
    const-wide/16 v1, 0x10a

    .line 137
    .line 138
    iget-wide v5, v0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->totalDuration:J

    .line 139
    .line 140
    sub-long/2addr v5, v1

    .line 141
    sput-wide v5, Lcom/android/systemui/animation/ActivityLaunchAnimator;->ANIMATION_DELAY_NAV_FADE_IN:J

    .line 142
    .line 143
    sget-object v0, Lcom/android/app/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    .line 144
    .line 145
    sput-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 146
    .line 147
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 148
    .line 149
    const v1, 0x3e4ccccd    # 0.2f

    .line 150
    .line 151
    .line 152
    invoke-direct {v0, v1, v4, v9, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 153
    .line 154
    .line 155
    sput-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 156
    .line 157
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator;-><init>(Lcom/android/systemui/animation/LaunchAnimator;Lcom/android/systemui/animation/LaunchAnimator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/animation/LaunchAnimator;Lcom/android/systemui/animation/LaunchAnimator;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->dialogToAppAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 5
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->listeners:Ljava/util/LinkedHashSet;

    .line 6
    new-instance p1, Lcom/android/systemui/animation/ActivityLaunchAnimator$lifecycleListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$lifecycleListener$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator;)V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->lifecycleListener:Lcom/android/systemui/animation/ActivityLaunchAnimator$lifecycleListener$1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/animation/LaunchAnimator;Lcom/android/systemui/animation/LaunchAnimator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 7
    sget-object p1, Lcom/android/systemui/animation/ActivityLaunchAnimator;->DEFAULT_LAUNCH_ANIMATOR:Lcom/android/systemui/animation/LaunchAnimator;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 8
    sget-object p2, Lcom/android/systemui/animation/ActivityLaunchAnimator;->DEFAULT_DIALOG_TO_APP_ANIMATOR:Lcom/android/systemui/animation/LaunchAnimator;

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator;-><init>(Lcom/android/systemui/animation/LaunchAnimator;Lcom/android/systemui/animation/LaunchAnimator;)V

    return-void
.end method

.method public static callOnIntentStartedOnMainThread(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$callOnIntentStartedOnMainThread$1;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$callOnIntentStartedOnMainThread$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onIntentStarted(Z)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public static synthetic startIntentWithAnimation$default(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->startIntentWithAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final createRunner(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;
    .locals 7

    .line 1
    invoke-interface {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->isDialogLaunch()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->dialogToAppAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 11
    .line 12
    :goto_0
    move-object v5, v0

    .line 13
    new-instance v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->callback:Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;

    .line 16
    .line 17
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v6, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->lifecycleListener:Lcom/android/systemui/animation/ActivityLaunchAnimator$lifecycleListener$1;

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    move-object v2, p0

    .line 24
    move-object v3, p1

    .line 25
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;Lcom/android/systemui/animation/LaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final startIntentWithAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;ZLkotlin/jvm/functions/Function1;)V
    .locals 17

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const-string v5, "ActivityLaunchAnimator"

    .line 10
    .line 11
    if-eqz v1, :cond_8

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    move-object/from16 v6, p0

    .line 18
    .line 19
    iget-object v7, v6, Lcom/android/systemui/animation/ActivityLaunchAnimator;->callback:Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;

    .line 20
    .line 21
    if-eqz v7, :cond_7

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->createRunner(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    check-cast v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$24;

    .line 28
    .line 29
    iget-object v14, v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$24;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 30
    .line 31
    iget-object v8, v14, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 32
    .line 33
    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 34
    .line 35
    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 36
    .line 37
    if-eqz v8, :cond_1

    .line 38
    .line 39
    if-nez p4, :cond_1

    .line 40
    .line 41
    const/4 v8, 0x1

    .line 42
    move v15, v8

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v15, v3

    .line 45
    :goto_0
    if-nez v15, :cond_2

    .line 46
    .line 47
    new-instance v16, Landroid/view/RemoteAnimationAdapter;

    .line 48
    .line 49
    sget-object v8, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 50
    .line 51
    iget-wide v10, v8, Lcom/android/systemui/animation/LaunchAnimator$Timings;->totalDuration:J

    .line 52
    .line 53
    const/16 v8, 0x96

    .line 54
    .line 55
    int-to-long v8, v8

    .line 56
    sub-long v12, v10, v8

    .line 57
    .line 58
    move-object/from16 v8, v16

    .line 59
    .line 60
    move-object v9, v6

    .line 61
    invoke-direct/range {v8 .. v13}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-object v8, v4

    .line 66
    :goto_1
    if-eqz v0, :cond_3

    .line 67
    .line 68
    if-eqz v8, :cond_3

    .line 69
    .line 70
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-interface {v9, v0, v8, v4}, Landroid/app/IActivityTaskManager;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v4, "Unable to register the remote animation"

    .line 80
    .line 81
    invoke-static {v5, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_2
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/lang/Number;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const/4 v2, 0x2

    .line 95
    if-eq v0, v2, :cond_4

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    const/4 v4, 0x3

    .line 100
    if-ne v0, v4, :cond_5

    .line 101
    .line 102
    if-eqz v15, :cond_5

    .line 103
    .line 104
    :cond_4
    const/4 v3, 0x1

    .line 105
    :cond_5
    const-string v4, "launchResult="

    .line 106
    .line 107
    const-string v8, " willAnimate="

    .line 108
    .line 109
    const-string v9, " hideKeyguardWithAnimation="

    .line 110
    .line 111
    invoke-static {v4, v0, v8, v3, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    invoke-static {v1, v3}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->callOnIntentStartedOnMainThread(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V

    .line 126
    .line 127
    .line 128
    if-eqz v3, :cond_6

    .line 129
    .line 130
    iget-object v0, v6, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;

    .line 131
    .line 132
    iget-object v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->onTimeout:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$onTimeout$1;

    .line 133
    .line 134
    const-wide/16 v3, 0x3e8

    .line 135
    .line 136
    iget-object v0, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->launchContainer:Landroid/view/ViewGroup;

    .line 137
    .line 138
    invoke-virtual {v0, v1, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    .line 140
    .line 141
    if-eqz v15, :cond_6

    .line 142
    .line 143
    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda12;

    .line 144
    .line 145
    invoke-direct {v0, v2, v7, v6}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    iget-object v1, v14, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 149
    .line 150
    check-cast v1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 151
    .line 152
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 153
    .line 154
    .line 155
    :cond_6
    return-void

    .line 156
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 157
    .line 158
    const-string v1, "ActivityLaunchAnimator.callback must be set before using this animator"

    .line 159
    .line 160
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v0

    .line 164
    :cond_8
    :goto_3
    const-string v0, "Starting intent with no animation"

    .line 165
    .line 166
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    if-eqz v1, :cond_9

    .line 173
    .line 174
    invoke-static {v1, v3}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->callOnIntentStartedOnMainThread(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V

    .line 175
    .line 176
    .line 177
    :cond_9
    return-void
.end method

.method public final startPendingIntentWithAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$startPendingIntentWithAnimation$1;

    .line 2
    .line 3
    invoke-direct {v0, p4}, Lcom/android/systemui/animation/ActivityLaunchAnimator$startPendingIntentWithAnimation$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->startIntentWithAnimation$default(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
