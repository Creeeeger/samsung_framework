.class public final Lcom/android/systemui/navigationbar/gestural/BackPanelController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;


# instance fields
.field public backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$configurationListener$1;

.field public currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

.field public final displaySize:Landroid/graphics/Point;

.field public entryToActiveDelay:F

.field public final entryToActiveDelayCalculation:Lkotlin/jvm/functions/Function0;

.field public final failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

.field public fullyStretchedThreshold:F

.field public gestureEntryTime:J

.field public gestureInactiveTime:J

.field public hasPassedDragSlop:Z

.field public layoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mainHandler:Landroid/os/Handler;

.field public minFlingDistance:I

.field public final onAlphaEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

.field public final onEndSetCommittedStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

.field public final onEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

.field public final params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

.field public pastThresholdWhileEntryOrInactiveTime:J

.field public previousPreThresholdWidthInterpolator:Landroidx/core/animation/Interpolator;

.field public previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

.field public previousXTranslation:F

.field public previousXTranslationOnActiveOffset:F

.field public startX:F

.field public startY:F

.field public totalTouchDeltaActive:F

.field public totalTouchDeltaInactive:F

.field public touchDeltaStartX:F

.field public velocityTracker:Landroid/view/VelocityTracker;

.field public final vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final viewConfiguration:Landroid/view/ViewConfiguration;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/ViewConfiguration;Landroid/os/Handler;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/util/LatencyTracker;)V
    .locals 12

    .line 1
    move-object v6, p0

    .line 2
    move-object v0, p1

    .line 3
    move-object/from16 v1, p7

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    new-instance v2, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;

    .line 10
    .line 11
    const-class v3, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 12
    .line 13
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 18
    .line 19
    invoke-direct {v2, p1, v1, v3}, Lcom/android/systemui/navigationbar/gestural/SamsungBackPanel;-><init>(Landroid/content/Context;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v2, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 24
    .line 25
    invoke-direct {v2, p1, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanel;-><init>(Landroid/content/Context;Lcom/android/internal/util/LatencyTracker;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    move-object v0, p2

    .line 32
    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->windowManager:Landroid/view/WindowManager;

    .line 33
    .line 34
    move-object v0, p3

    .line 35
    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->viewConfiguration:Landroid/view/ViewConfiguration;

    .line 36
    .line 37
    move-object/from16 v7, p4

    .line 38
    .line 39
    iput-object v7, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    .line 40
    .line 41
    move-object/from16 v0, p5

    .line 42
    .line 43
    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 44
    .line 45
    move-object/from16 v0, p6

    .line 46
    .line 47
    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 48
    .line 49
    new-instance v8, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {v8, v0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;-><init>(Landroid/content/res/Resources;)V

    .line 56
    .line 57
    .line 58
    iput-object v8, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 59
    .line 60
    sget-object v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->GONE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 61
    .line 62
    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 63
    .line 64
    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 65
    .line 66
    new-instance v0, Landroid/graphics/Point;

    .line 67
    .line 68
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->displaySize:Landroid/graphics/Point;

    .line 72
    .line 73
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$entryToActiveDelayCalculation$1;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$entryToActiveDelayCalculation$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->entryToActiveDelayCalculation:Lkotlin/jvm/functions/Function0;

    .line 79
    .line 80
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 81
    .line 82
    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 86
    .line 87
    new-instance v9, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 88
    .line 89
    const-wide/16 v10, 0x0

    .line 90
    .line 91
    new-instance v5, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onEndSetCommittedStateListener$1;

    .line 92
    .line 93
    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onEndSetCommittedStateListener$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    .line 94
    .line 95
    .line 96
    const-wide/16 v3, 0x0

    .line 97
    .line 98
    move-object v0, v9

    .line 99
    move-object v1, p0

    .line 100
    move-object/from16 v2, p4

    .line 101
    .line 102
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;Landroid/os/Handler;JLjava/lang/Runnable;)V

    .line 103
    .line 104
    .line 105
    iput-object v9, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetCommittedStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 106
    .line 107
    new-instance v9, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 108
    .line 109
    new-instance v5, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onEndSetGoneStateListener$1;

    .line 110
    .line 111
    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onEndSetGoneStateListener$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    .line 112
    .line 113
    .line 114
    move-object v0, v9

    .line 115
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;Landroid/os/Handler;JLjava/lang/Runnable;)V

    .line 116
    .line 117
    .line 118
    iput-object v9, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 119
    .line 120
    new-instance v9, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 121
    .line 122
    new-instance v5, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onAlphaEndSetGoneStateListener$1;

    .line 123
    .line 124
    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onAlphaEndSetGoneStateListener$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    .line 125
    .line 126
    .line 127
    move-object v0, v9

    .line 128
    move-wide v3, v10

    .line 129
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;Landroid/os/Handler;JLjava/lang/Runnable;)V

    .line 130
    .line 131
    .line 132
    iput-object v9, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onAlphaEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 133
    .line 134
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$configurationListener$1;

    .line 135
    .line 136
    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$configurationListener$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    .line 137
    .line 138
    .line 139
    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->configurationListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$configurationListener$1;

    .line 140
    .line 141
    iget-object v0, v8, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 142
    .line 143
    if-eqz v0, :cond_1

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_1
    const/4 v0, 0x0

    .line 147
    :goto_1
    iput-object v0, v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousPreThresholdWidthInterpolator:Landroidx/core/animation/Interpolator;

    .line 148
    .line 149
    return-void
.end method

.method public static synthetic getCurrentState$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getParams$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static isFlungAwayFromEdge$default(Lcom/android/systemui/navigationbar/gestural/BackPanelController;F)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->touchDeltaStartX:F

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sub-float/2addr p1, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sub-float p1, v0, p1

    .line 14
    .line 15
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 26
    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    const/16 v1, 0x3e8

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 46
    .line 47
    check-cast v2, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 48
    .line 49
    iget-boolean v2, v2, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 v1, 0x0

    .line 55
    :goto_1
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v1, -0x1

    .line 67
    int-to-float v1, v1

    .line 68
    mul-float/2addr v0, v1

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    const/4 v0, 0x0

    .line 71
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->viewConfiguration:Landroid/view/ViewConfiguration;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    int-to-float v1, v1

    .line 78
    cmpl-float v0, v0, v1

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    const/4 v2, 0x0

    .line 82
    if-lez v0, :cond_5

    .line 83
    .line 84
    move v0, v1

    .line 85
    goto :goto_3

    .line 86
    :cond_5
    move v0, v2

    .line 87
    :goto_3
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->minFlingDistance:I

    .line 88
    .line 89
    int-to-float p0, p0

    .line 90
    cmpl-float p0, p1, p0

    .line 91
    .line 92
    if-lez p0, :cond_6

    .line 93
    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_6
    move v1, v2

    .line 98
    :goto_4
    return v1
.end method

.method public static isPastThresholdToActive$default(Lcom/android/systemui/navigationbar/gestural/BackPanelController;ZLjava/lang/Float;Lkotlin/jvm/functions/Function0;I)Z
    .locals 4

    .line 1
    and-int/lit8 v0, p4, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    new-instance p3, Lcom/android/systemui/navigationbar/gestural/BackPanelController$isPastThresholdToActive$1;

    .line 11
    .line 12
    invoke-direct {p3, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$isPastThresholdToActive$1;-><init>(Ljava/lang/Float;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-wide v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->pastThresholdWhileEntryOrInactiveTime:J

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long p2, v0, v2

    .line 20
    .line 21
    const/4 p4, 0x1

    .line 22
    const/4 v0, 0x0

    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    move p2, p4

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    move p2, v0

    .line 28
    :goto_0
    if-nez p1, :cond_3

    .line 29
    .line 30
    iput-wide v2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->pastThresholdWhileEntryOrInactiveTime:J

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_3
    if-eqz p2, :cond_4

    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide p1

    .line 39
    iput-wide p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->pastThresholdWhileEntryOrInactiveTime:J

    .line 40
    .line 41
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Ljava/lang/Number;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->entryToActiveDelay:F

    .line 52
    .line 53
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide p1

    .line 57
    iget-wide v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->pastThresholdWhileEntryOrInactiveTime:J

    .line 58
    .line 59
    sub-long/2addr p1, v1

    .line 60
    long-to-float p1, p1

    .line 61
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->entryToActiveDelay:F

    .line 62
    .line 63
    cmpl-float p0, p1, p0

    .line 64
    .line 65
    if-lez p0, :cond_5

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    move p4, v0

    .line 69
    :goto_1
    move v0, p4

    .line 70
    :goto_2
    return v0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "BackPanelController:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "  currentState="

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "  isLeftPanel="

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, ".isLeftPanel"

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->windowManager:Landroid/view/WindowManager;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 11
    .line 12
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 14
    .line 15
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    move-object/from16 v2, p1

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    iget-object v7, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 30
    .line 31
    iget-object v8, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    if-eqz v1, :cond_4a

    .line 35
    .line 36
    const/4 v10, 0x1

    .line 37
    if-eq v1, v10, :cond_40

    .line 38
    .line 39
    const/4 v8, 0x2

    .line 40
    const/4 v11, 0x3

    .line 41
    if-eq v1, v8, :cond_3

    .line 42
    .line 43
    if-eq v1, v11, :cond_1

    .line 44
    .line 45
    goto/16 :goto_2f

    .line 46
    .line 47
    :cond_1
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->GONE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 53
    .line 54
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 65
    .line 66
    .line 67
    :cond_2
    iput-object v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 68
    .line 69
    goto/16 :goto_2f

    .line 70
    .line 71
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iget v12, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startX:F

    .line 76
    .line 77
    iget-boolean v13, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->hasPassedDragSlop:Z

    .line 78
    .line 79
    iget-object v14, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->viewConfiguration:Landroid/view/ViewConfiguration;

    .line 80
    .line 81
    if-eqz v13, :cond_4

    .line 82
    .line 83
    move v1, v10

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    sub-float/2addr v1, v12

    .line 86
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v14}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    .line 91
    .line 92
    .line 93
    move-result v12

    .line 94
    int-to-float v12, v12

    .line 95
    cmpl-float v1, v1, v12

    .line 96
    .line 97
    if-lez v1, :cond_6

    .line 98
    .line 99
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->ENTRY:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 100
    .line 101
    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 105
    .line 106
    iget-object v12, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 107
    .line 108
    if-nez v12, :cond_5

    .line 109
    .line 110
    move-object v12, v6

    .line 111
    :cond_5
    iget-object v13, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->windowManager:Landroid/view/WindowManager;

    .line 112
    .line 113
    invoke-interface {v13, v1, v12}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 117
    .line 118
    check-cast v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 119
    .line 120
    iget-object v12, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 121
    .line 122
    const/16 v13, 0xf

    .line 123
    .line 124
    invoke-virtual {v12, v13}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 125
    .line 126
    .line 127
    iput-boolean v10, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->trackingBackArrowLatency:Z

    .line 128
    .line 129
    iput-boolean v10, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->hasPassedDragSlop:Z

    .line 130
    .line 131
    :cond_6
    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->hasPassedDragSlop:Z

    .line 132
    .line 133
    :goto_0
    if-eqz v1, :cond_4e

    .line 134
    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    iget v12, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startY:F

    .line 144
    .line 145
    sub-float/2addr v2, v12

    .line 146
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 147
    .line 148
    .line 149
    move-result v12

    .line 150
    iget-object v13, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 151
    .line 152
    check-cast v13, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 153
    .line 154
    iget-boolean v13, v13, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    .line 155
    .line 156
    if-eqz v13, :cond_7

    .line 157
    .line 158
    iget v13, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startX:F

    .line 159
    .line 160
    sub-float v13, v1, v13

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_7
    iget v13, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startX:F

    .line 164
    .line 165
    sub-float/2addr v13, v1

    .line 166
    :goto_1
    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    .line 167
    .line 168
    .line 169
    move-result v13

    .line 170
    iget v15, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousXTranslation:F

    .line 171
    .line 172
    sub-float v15, v13, v15

    .line 173
    .line 174
    iput v13, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousXTranslation:F

    .line 175
    .line 176
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 177
    .line 178
    .line 179
    move-result v16

    .line 180
    cmpl-float v16, v16, v5

    .line 181
    .line 182
    if-lez v16, :cond_f

    .line 183
    .line 184
    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    .line 185
    .line 186
    .line 187
    move-result v16

    .line 188
    iget v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaActive:F

    .line 189
    .line 190
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    cmpg-float v4, v16, v4

    .line 195
    .line 196
    if-nez v4, :cond_8

    .line 197
    .line 198
    move v4, v10

    .line 199
    goto :goto_2

    .line 200
    :cond_8
    move v4, v9

    .line 201
    :goto_2
    iget-object v3, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->dynamicTriggerThresholdRange:Lkotlin/ranges/ClosedFloatRange;

    .line 202
    .line 203
    if-eqz v3, :cond_9

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_9
    move-object v3, v6

    .line 207
    :goto_3
    iget v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaActive:F

    .line 208
    .line 209
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    iget v6, v3, Lkotlin/ranges/ClosedFloatRange;->_start:F

    .line 221
    .line 222
    cmpl-float v6, v5, v6

    .line 223
    .line 224
    if-ltz v6, :cond_a

    .line 225
    .line 226
    iget v3, v3, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    .line 227
    .line 228
    cmpg-float v3, v5, v3

    .line 229
    .line 230
    if-gtz v3, :cond_a

    .line 231
    .line 232
    move v3, v10

    .line 233
    goto :goto_4

    .line 234
    :cond_a
    move v3, v9

    .line 235
    :goto_4
    if-nez v4, :cond_c

    .line 236
    .line 237
    if-eqz v3, :cond_b

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_b
    move v3, v9

    .line 241
    goto :goto_6

    .line 242
    :cond_c
    :goto_5
    move v3, v10

    .line 243
    :goto_6
    if-eqz v3, :cond_d

    .line 244
    .line 245
    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaActive:F

    .line 246
    .line 247
    add-float/2addr v1, v15

    .line 248
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaActive:F

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_d
    iput v15, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaActive:F

    .line 252
    .line 253
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->touchDeltaStartX:F

    .line 254
    .line 255
    :goto_7
    invoke-virtual {v14}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    int-to-float v1, v1

    .line 260
    neg-float v1, v1

    .line 261
    iget v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    .line 262
    .line 263
    add-float/2addr v3, v15

    .line 264
    cmpg-float v4, v3, v1

    .line 265
    .line 266
    if-gez v4, :cond_e

    .line 267
    .line 268
    goto :goto_8

    .line 269
    :cond_e
    move v1, v3

    .line 270
    :goto_8
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    .line 271
    .line 272
    :cond_f
    int-to-float v1, v8

    .line 273
    mul-float/2addr v1, v13

    .line 274
    cmpl-float v1, v1, v12

    .line 275
    .line 276
    if-ltz v1, :cond_10

    .line 277
    .line 278
    move v1, v10

    .line 279
    goto :goto_9

    .line 280
    :cond_10
    move v1, v9

    .line 281
    :goto_9
    iget v3, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->staticTriggerThreshold:F

    .line 282
    .line 283
    cmpl-float v3, v13, v3

    .line 284
    .line 285
    if-lez v3, :cond_11

    .line 286
    .line 287
    move v3, v10

    .line 288
    goto :goto_a

    .line 289
    :cond_11
    move v3, v9

    .line 290
    :goto_a
    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 291
    .line 292
    sget-object v5, Lcom/android/systemui/navigationbar/gestural/BackPanelController$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 293
    .line 294
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    aget v4, v5, v4

    .line 299
    .line 300
    if-eq v4, v10, :cond_1a

    .line 301
    .line 302
    if-eq v4, v8, :cond_17

    .line 303
    .line 304
    if-eq v4, v11, :cond_12

    .line 305
    .line 306
    goto/16 :goto_11

    .line 307
    .line 308
    :cond_12
    iget v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaActive:F

    .line 309
    .line 310
    iget v4, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->deactivationTriggerThreshold:F

    .line 311
    .line 312
    neg-float v4, v4

    .line 313
    cmpg-float v3, v3, v4

    .line 314
    .line 315
    if-gtz v3, :cond_13

    .line 316
    .line 317
    move v3, v10

    .line 318
    goto :goto_b

    .line 319
    :cond_13
    move v3, v9

    .line 320
    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 321
    .line 322
    .line 323
    move-result-wide v17

    .line 324
    iget-wide v11, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->gestureEntryTime:J

    .line 325
    .line 326
    sub-long v17, v17, v11

    .line 327
    .line 328
    const-wide/16 v11, 0x12c

    .line 329
    .line 330
    cmp-long v6, v17, v11

    .line 331
    .line 332
    if-lez v6, :cond_14

    .line 333
    .line 334
    move v6, v10

    .line 335
    goto :goto_c

    .line 336
    :cond_14
    move v6, v9

    .line 337
    :goto_c
    if-eqz v1, :cond_16

    .line 338
    .line 339
    if-eqz v3, :cond_15

    .line 340
    .line 341
    goto :goto_d

    .line 342
    :cond_15
    move v1, v9

    .line 343
    goto :goto_e

    .line 344
    :cond_16
    :goto_d
    move v1, v10

    .line 345
    :goto_e
    if-eqz v1, :cond_1b

    .line 346
    .line 347
    if-eqz v6, :cond_1b

    .line 348
    .line 349
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->INACTIVE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 350
    .line 351
    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 352
    .line 353
    .line 354
    goto :goto_11

    .line 355
    :cond_17
    iget v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    .line 356
    .line 357
    iget v11, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->reactivationTriggerThreshold:F

    .line 358
    .line 359
    cmpl-float v6, v6, v11

    .line 360
    .line 361
    if-ltz v6, :cond_18

    .line 362
    .line 363
    move v6, v10

    .line 364
    goto :goto_f

    .line 365
    :cond_18
    move v6, v9

    .line 366
    :goto_f
    if-eqz v3, :cond_19

    .line 367
    .line 368
    if-eqz v6, :cond_19

    .line 369
    .line 370
    if-eqz v1, :cond_19

    .line 371
    .line 372
    move v1, v10

    .line 373
    goto :goto_10

    .line 374
    :cond_19
    move v1, v9

    .line 375
    :goto_10
    const/high16 v3, 0x43200000    # 160.0f

    .line 376
    .line 377
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    const/4 v6, 0x4

    .line 382
    const/4 v11, 0x0

    .line 383
    invoke-static {v0, v1, v3, v11, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->isPastThresholdToActive$default(Lcom/android/systemui/navigationbar/gestural/BackPanelController;ZLjava/lang/Float;Lkotlin/jvm/functions/Function0;I)Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-eqz v1, :cond_1b

    .line 388
    .line 389
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->ACTIVE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 390
    .line 391
    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 392
    .line 393
    .line 394
    goto :goto_11

    .line 395
    :cond_1a
    const/4 v11, 0x0

    .line 396
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->entryToActiveDelayCalculation:Lkotlin/jvm/functions/Function0;

    .line 397
    .line 398
    invoke-static {v0, v3, v11, v1, v8}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->isPastThresholdToActive$default(Lcom/android/systemui/navigationbar/gestural/BackPanelController;ZLjava/lang/Float;Lkotlin/jvm/functions/Function0;I)Z

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    if-eqz v1, :cond_1b

    .line 403
    .line 404
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->ACTIVE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 405
    .line 406
    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 407
    .line 408
    .line 409
    :cond_1b
    :goto_11
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 410
    .line 411
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    aget v1, v5, v1

    .line 416
    .line 417
    if-eq v1, v10, :cond_1f

    .line 418
    .line 419
    if-eq v1, v8, :cond_1e

    .line 420
    .line 421
    const/4 v3, 0x3

    .line 422
    if-eq v1, v3, :cond_1c

    .line 423
    .line 424
    goto :goto_12

    .line 425
    :cond_1c
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 426
    .line 427
    if-eqz v1, :cond_1d

    .line 428
    .line 429
    :goto_12
    const/4 v1, 0x0

    .line 430
    goto :goto_13

    .line 431
    :cond_1d
    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousXTranslationOnActiveOffset:F

    .line 432
    .line 433
    sub-float/2addr v13, v1

    .line 434
    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->fullyStretchedThreshold:F

    .line 435
    .line 436
    div-float/2addr v13, v1

    .line 437
    invoke-static {v13}, Landroid/util/MathUtils;->saturate(F)F

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    goto :goto_13

    .line 446
    :cond_1e
    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    .line 447
    .line 448
    iget v3, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->reactivationTriggerThreshold:F

    .line 449
    .line 450
    div-float/2addr v1, v3

    .line 451
    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    goto :goto_13

    .line 460
    :cond_1f
    iget v1, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->staticTriggerThreshold:F

    .line 461
    .line 462
    div-float/2addr v13, v1

    .line 463
    invoke-static {v13}, Landroid/util/MathUtils;->saturate(F)F

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    :goto_13
    if-eqz v1, :cond_37

    .line 472
    .line 473
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 474
    .line 475
    .line 476
    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 477
    .line 478
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 479
    .line 480
    .line 481
    move-result v3

    .line 482
    aget v3, v5, v3

    .line 483
    .line 484
    if-eq v3, v10, :cond_30

    .line 485
    .line 486
    if-eq v3, v8, :cond_25

    .line 487
    .line 488
    const/4 v4, 0x3

    .line 489
    if-eq v3, v4, :cond_20

    .line 490
    .line 491
    goto/16 :goto_25

    .line 492
    .line 493
    :cond_20
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 498
    .line 499
    move-object/from16 v17, v6

    .line 500
    .line 501
    check-cast v17, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 502
    .line 503
    iget-object v6, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->horizontalTranslationInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 504
    .line 505
    if-eqz v6, :cond_21

    .line 506
    .line 507
    goto :goto_14

    .line 508
    :cond_21
    const/4 v6, 0x0

    .line 509
    :goto_14
    invoke-virtual {v6, v3}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 510
    .line 511
    .line 512
    move-result v18

    .line 513
    iget-object v6, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->arrowAngleInterpolator:Landroidx/core/animation/Interpolator;

    .line 514
    .line 515
    if-eqz v6, :cond_22

    .line 516
    .line 517
    goto :goto_15

    .line 518
    :cond_22
    const/4 v6, 0x0

    .line 519
    :goto_15
    invoke-interface {v6, v3}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    .line 520
    .line 521
    .line 522
    move-result v19

    .line 523
    iget-object v6, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 524
    .line 525
    if-eqz v6, :cond_23

    .line 526
    .line 527
    goto :goto_16

    .line 528
    :cond_23
    const/4 v6, 0x0

    .line 529
    :goto_16
    invoke-virtual {v6, v3}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 530
    .line 531
    .line 532
    move-result v21

    .line 533
    iget-object v3, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->fullyStretchedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 534
    .line 535
    if-eqz v3, :cond_24

    .line 536
    .line 537
    move-object/from16 v25, v3

    .line 538
    .line 539
    goto :goto_17

    .line 540
    :cond_24
    const/16 v25, 0x0

    .line 541
    .line 542
    :goto_17
    const/high16 v20, 0x3f800000    # 1.0f

    .line 543
    .line 544
    const/high16 v22, 0x3f800000    # 1.0f

    .line 545
    .line 546
    const/high16 v23, 0x3f800000    # 1.0f

    .line 547
    .line 548
    const/high16 v24, 0x3f800000    # 1.0f

    .line 549
    .line 550
    invoke-virtual/range {v17 .. v25}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setStretch(FFFFFFFLcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;)V

    .line 551
    .line 552
    .line 553
    goto/16 :goto_25

    .line 554
    .line 555
    :cond_25
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 556
    .line 557
    .line 558
    move-result v3

    .line 559
    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 560
    .line 561
    move-object/from16 v17, v6

    .line 562
    .line 563
    check-cast v17, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 564
    .line 565
    iget-object v6, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->arrowAngleInterpolator:Landroidx/core/animation/Interpolator;

    .line 566
    .line 567
    if-eqz v6, :cond_26

    .line 568
    .line 569
    goto :goto_18

    .line 570
    :cond_26
    const/4 v6, 0x0

    .line 571
    :goto_18
    invoke-interface {v6, v3}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    .line 572
    .line 573
    .line 574
    move-result v19

    .line 575
    iget v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    .line 576
    .line 577
    invoke-virtual {v14}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 578
    .line 579
    .line 580
    move-result v11

    .line 581
    int-to-float v11, v11

    .line 582
    cmpl-float v6, v6, v11

    .line 583
    .line 584
    if-lez v6, :cond_27

    .line 585
    .line 586
    move v9, v10

    .line 587
    :cond_27
    if-eqz v9, :cond_2a

    .line 588
    .line 589
    iget v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    .line 590
    .line 591
    const/4 v9, 0x0

    .line 592
    cmpl-float v6, v6, v9

    .line 593
    .line 594
    if-lez v6, :cond_28

    .line 595
    .line 596
    iget-object v6, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 597
    .line 598
    if-eqz v6, :cond_29

    .line 599
    .line 600
    goto :goto_19

    .line 601
    :cond_28
    iget-object v6, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthTowardsEdgeInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 602
    .line 603
    if-eqz v6, :cond_29

    .line 604
    .line 605
    goto :goto_19

    .line 606
    :cond_29
    const/4 v6, 0x0

    .line 607
    goto :goto_19

    .line 608
    :cond_2a
    iget-object v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousPreThresholdWidthInterpolator:Landroidx/core/animation/Interpolator;

    .line 609
    .line 610
    :goto_19
    iput-object v6, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousPreThresholdWidthInterpolator:Landroidx/core/animation/Interpolator;

    .line 611
    .line 612
    invoke-interface {v6, v3}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    .line 613
    .line 614
    .line 615
    move-result v6

    .line 616
    const/4 v9, 0x0

    .line 617
    cmpg-float v11, v6, v9

    .line 618
    .line 619
    if-gez v11, :cond_2b

    .line 620
    .line 621
    const/16 v21, 0x0

    .line 622
    .line 623
    goto :goto_1a

    .line 624
    :cond_2b
    move/from16 v21, v6

    .line 625
    .line 626
    :goto_1a
    iget-object v6, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->heightInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 627
    .line 628
    if-eqz v6, :cond_2c

    .line 629
    .line 630
    goto :goto_1b

    .line 631
    :cond_2c
    const/4 v6, 0x0

    .line 632
    :goto_1b
    invoke-virtual {v6, v3}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 633
    .line 634
    .line 635
    move-result v22

    .line 636
    invoke-virtual {v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 637
    .line 638
    .line 639
    move-result-object v6

    .line 640
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 641
    .line 642
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->alphaInterpolator:Lcom/android/systemui/navigationbar/gestural/Step;

    .line 643
    .line 644
    if-eqz v6, :cond_2d

    .line 645
    .line 646
    invoke-virtual {v6, v3}, Lcom/android/systemui/navigationbar/gestural/Step;->get(F)Lcom/android/systemui/navigationbar/gestural/Step$Value;

    .line 647
    .line 648
    .line 649
    move-result-object v6

    .line 650
    if-eqz v6, :cond_2d

    .line 651
    .line 652
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/Step$Value;->value:Ljava/lang/Object;

    .line 653
    .line 654
    check-cast v6, Ljava/lang/Number;

    .line 655
    .line 656
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 657
    .line 658
    .line 659
    move-result v6

    .line 660
    move/from16 v20, v6

    .line 661
    .line 662
    goto :goto_1c

    .line 663
    :cond_2d
    const/16 v20, 0x0

    .line 664
    .line 665
    :goto_1c
    iget-object v6, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->edgeCornerInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 666
    .line 667
    if-eqz v6, :cond_2e

    .line 668
    .line 669
    goto :goto_1d

    .line 670
    :cond_2e
    const/4 v6, 0x0

    .line 671
    :goto_1d
    invoke-virtual {v6, v3}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 672
    .line 673
    .line 674
    move-result v23

    .line 675
    iget-object v6, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->farCornerInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 676
    .line 677
    if-eqz v6, :cond_2f

    .line 678
    .line 679
    goto :goto_1e

    .line 680
    :cond_2f
    const/4 v6, 0x0

    .line 681
    :goto_1e
    invoke-virtual {v6, v3}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 682
    .line 683
    .line 684
    move-result v24

    .line 685
    invoke-virtual {v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 686
    .line 687
    .line 688
    move-result-object v25

    .line 689
    const/16 v18, 0x0

    .line 690
    .line 691
    invoke-virtual/range {v17 .. v25}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setStretch(FFFFFFFLcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;)V

    .line 692
    .line 693
    .line 694
    goto :goto_25

    .line 695
    :cond_30
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 700
    .line 701
    move-object/from16 v17, v6

    .line 702
    .line 703
    check-cast v17, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 704
    .line 705
    iget-object v6, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->arrowAngleInterpolator:Landroidx/core/animation/Interpolator;

    .line 706
    .line 707
    if-eqz v6, :cond_31

    .line 708
    .line 709
    goto :goto_1f

    .line 710
    :cond_31
    const/4 v6, 0x0

    .line 711
    :goto_1f
    invoke-interface {v6, v3}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    .line 712
    .line 713
    .line 714
    move-result v19

    .line 715
    iget-object v6, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 716
    .line 717
    if-eqz v6, :cond_32

    .line 718
    .line 719
    goto :goto_20

    .line 720
    :cond_32
    const/4 v6, 0x0

    .line 721
    :goto_20
    invoke-virtual {v6, v3}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 722
    .line 723
    .line 724
    move-result v21

    .line 725
    iget-object v6, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->heightInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 726
    .line 727
    if-eqz v6, :cond_33

    .line 728
    .line 729
    goto :goto_21

    .line 730
    :cond_33
    const/4 v6, 0x0

    .line 731
    :goto_21
    invoke-virtual {v6, v3}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 732
    .line 733
    .line 734
    move-result v22

    .line 735
    invoke-virtual {v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 736
    .line 737
    .line 738
    move-result-object v6

    .line 739
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 740
    .line 741
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->alphaInterpolator:Lcom/android/systemui/navigationbar/gestural/Step;

    .line 742
    .line 743
    if-eqz v6, :cond_34

    .line 744
    .line 745
    invoke-virtual {v6, v3}, Lcom/android/systemui/navigationbar/gestural/Step;->get(F)Lcom/android/systemui/navigationbar/gestural/Step$Value;

    .line 746
    .line 747
    .line 748
    move-result-object v6

    .line 749
    if-eqz v6, :cond_34

    .line 750
    .line 751
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/Step$Value;->value:Ljava/lang/Object;

    .line 752
    .line 753
    check-cast v6, Ljava/lang/Number;

    .line 754
    .line 755
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 756
    .line 757
    .line 758
    move-result v6

    .line 759
    move/from16 v20, v6

    .line 760
    .line 761
    goto :goto_22

    .line 762
    :cond_34
    const/16 v20, 0x0

    .line 763
    .line 764
    :goto_22
    iget-object v6, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->edgeCornerInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 765
    .line 766
    if-eqz v6, :cond_35

    .line 767
    .line 768
    goto :goto_23

    .line 769
    :cond_35
    const/4 v6, 0x0

    .line 770
    :goto_23
    invoke-virtual {v6, v3}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 771
    .line 772
    .line 773
    move-result v23

    .line 774
    iget-object v6, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->farCornerInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 775
    .line 776
    if-eqz v6, :cond_36

    .line 777
    .line 778
    goto :goto_24

    .line 779
    :cond_36
    const/4 v6, 0x0

    .line 780
    :goto_24
    invoke-virtual {v6, v3}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 781
    .line 782
    .line 783
    move-result v24

    .line 784
    invoke-virtual {v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 785
    .line 786
    .line 787
    move-result-object v25

    .line 788
    const/16 v18, 0x0

    .line 789
    .line 790
    invoke-virtual/range {v17 .. v25}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setStretch(FFFFFFFLcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;)V

    .line 791
    .line 792
    .line 793
    :cond_37
    :goto_25
    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 794
    .line 795
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 796
    .line 797
    .line 798
    move-result v3

    .line 799
    aget v3, v5, v3

    .line 800
    .line 801
    packed-switch v3, :pswitch_data_0

    .line 802
    .line 803
    .line 804
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 805
    .line 806
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 807
    .line 808
    .line 809
    throw v0

    .line 810
    :pswitch_0
    const/4 v3, 0x0

    .line 811
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    goto :goto_26

    .line 816
    :pswitch_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 817
    .line 818
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 819
    .line 820
    .line 821
    move-result-object v1

    .line 822
    :goto_26
    :pswitch_2
    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 823
    .line 824
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 825
    .line 826
    .line 827
    move-result v3

    .line 828
    aget v3, v5, v3

    .line 829
    .line 830
    if-eq v3, v10, :cond_3a

    .line 831
    .line 832
    if-eq v3, v8, :cond_39

    .line 833
    .line 834
    const/4 v4, 0x3

    .line 835
    if-eq v3, v4, :cond_38

    .line 836
    .line 837
    invoke-virtual {v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 838
    .line 839
    .line 840
    move-result-object v3

    .line 841
    goto :goto_27

    .line 842
    :cond_38
    invoke-virtual {v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    goto :goto_27

    .line 847
    :cond_39
    invoke-virtual {v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 848
    .line 849
    .line 850
    move-result-object v3

    .line 851
    goto :goto_27

    .line 852
    :cond_3a
    invoke-virtual {v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 853
    .line 854
    .line 855
    move-result-object v3

    .line 856
    :goto_27
    if-eqz v1, :cond_3e

    .line 857
    .line 858
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 859
    .line 860
    .line 861
    move-result v1

    .line 862
    iget-object v3, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 863
    .line 864
    iget-object v3, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->alphaSpring:Lcom/android/systemui/navigationbar/gestural/Step;

    .line 865
    .line 866
    if-eqz v3, :cond_3e

    .line 867
    .line 868
    invoke-virtual {v3, v1}, Lcom/android/systemui/navigationbar/gestural/Step;->get(F)Lcom/android/systemui/navigationbar/gestural/Step$Value;

    .line 869
    .line 870
    .line 871
    move-result-object v1

    .line 872
    if-eqz v1, :cond_3e

    .line 873
    .line 874
    iget-boolean v3, v1, Lcom/android/systemui/navigationbar/gestural/Step$Value;->isNewState:Z

    .line 875
    .line 876
    if-eqz v3, :cond_3b

    .line 877
    .line 878
    goto :goto_28

    .line 879
    :cond_3b
    const/4 v1, 0x0

    .line 880
    :goto_28
    if-eqz v1, :cond_3e

    .line 881
    .line 882
    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 883
    .line 884
    check-cast v3, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 885
    .line 886
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/Step$Value;->value:Ljava/lang/Object;

    .line 887
    .line 888
    check-cast v1, Landroidx/dynamicanimation/animation/SpringForce;

    .line 889
    .line 890
    iget-object v3, v3, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 891
    .line 892
    const/4 v4, 0x0

    .line 893
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 894
    .line 895
    .line 896
    move-result-object v5

    .line 897
    iget-object v4, v3, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 898
    .line 899
    if-eqz v5, :cond_3c

    .line 900
    .line 901
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 902
    .line 903
    .line 904
    move-result v5

    .line 905
    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 906
    .line 907
    .line 908
    iput v5, v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 909
    .line 910
    :cond_3c
    if-eqz v1, :cond_3d

    .line 911
    .line 912
    iput-object v1, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 913
    .line 914
    :cond_3d
    iget v1, v3, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->restingPosition:F

    .line 915
    .line 916
    const/4 v3, 0x0

    .line 917
    add-float/2addr v1, v3

    .line 918
    invoke-virtual {v4, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 919
    .line 920
    .line 921
    :cond_3e
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 922
    .line 923
    .line 924
    move-result v1

    .line 925
    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 926
    .line 927
    check-cast v3, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 928
    .line 929
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 930
    .line 931
    .line 932
    move-result v3

    .line 933
    int-to-float v3, v3

    .line 934
    invoke-virtual {v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 935
    .line 936
    .line 937
    move-result-object v4

    .line 938
    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 939
    .line 940
    iget v4, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->height:F

    .line 941
    .line 942
    sub-float/2addr v3, v4

    .line 943
    const/high16 v4, 0x40000000    # 2.0f

    .line 944
    .line 945
    div-float/2addr v3, v4

    .line 946
    const/high16 v4, 0x41700000    # 15.0f

    .line 947
    .line 948
    mul-float/2addr v4, v3

    .line 949
    div-float/2addr v1, v4

    .line 950
    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    .line 951
    .line 952
    .line 953
    move-result v1

    .line 954
    iget-object v4, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->verticalTranslationInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 955
    .line 956
    if-eqz v4, :cond_3f

    .line 957
    .line 958
    goto :goto_29

    .line 959
    :cond_3f
    const/4 v4, 0x0

    .line 960
    :goto_29
    invoke-virtual {v4, v1}, Landroidx/core/animation/PathInterpolator;->getInterpolation(F)F

    .line 961
    .line 962
    .line 963
    move-result v1

    .line 964
    mul-float/2addr v1, v3

    .line 965
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 966
    .line 967
    .line 968
    move-result v2

    .line 969
    mul-float/2addr v2, v1

    .line 970
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 971
    .line 972
    check-cast v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 973
    .line 974
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->verticalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 975
    .line 976
    const/4 v1, 0x6

    .line 977
    const/4 v3, 0x0

    .line 978
    invoke-static {v0, v2, v3, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchTo$default(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;FLjava/lang/Float;I)V

    .line 979
    .line 980
    .line 981
    goto/16 :goto_2f

    .line 982
    .line 983
    :cond_40
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 984
    .line 985
    sget-object v3, Lcom/android/systemui/navigationbar/gestural/BackPanelController$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 986
    .line 987
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 988
    .line 989
    .line 990
    move-result v1

    .line 991
    aget v1, v3, v1

    .line 992
    .line 993
    const-wide/16 v3, 0xa

    .line 994
    .line 995
    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 996
    .line 997
    packed-switch v1, :pswitch_data_1

    .line 998
    .line 999
    .line 1000
    goto/16 :goto_2b

    .line 1001
    .line 1002
    :pswitch_3
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->CANCELLED:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 1003
    .line 1004
    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 1005
    .line 1006
    .line 1007
    goto/16 :goto_2b

    .line 1008
    .line 1009
    :pswitch_4
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 1010
    .line 1011
    sget-object v2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->ENTRY:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 1012
    .line 1013
    if-ne v1, v2, :cond_41

    .line 1014
    .line 1015
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1016
    .line 1017
    .line 1018
    move-result-wide v1

    .line 1019
    iget-wide v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->gestureEntryTime:J

    .line 1020
    .line 1021
    sub-long/2addr v1, v3

    .line 1022
    const-wide/16 v3, 0x64

    .line 1023
    .line 1024
    cmp-long v1, v1, v3

    .line 1025
    .line 1026
    if-gez v1, :cond_41

    .line 1027
    .line 1028
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->FLUNG:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 1029
    .line 1030
    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 1031
    .line 1032
    .line 1033
    goto/16 :goto_2b

    .line 1034
    .line 1035
    :cond_41
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 1036
    .line 1037
    sget-object v2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->INACTIVE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 1038
    .line 1039
    if-ne v1, v2, :cond_42

    .line 1040
    .line 1041
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1042
    .line 1043
    .line 1044
    move-result-wide v1

    .line 1045
    iget-wide v3, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->gestureInactiveTime:J

    .line 1046
    .line 1047
    sub-long/2addr v1, v3

    .line 1048
    const-wide/16 v3, 0x190

    .line 1049
    .line 1050
    cmp-long v1, v1, v3

    .line 1051
    .line 1052
    if-gez v1, :cond_42

    .line 1053
    .line 1054
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onMotionEvent$$inlined$postDelayed$default$4;

    .line 1055
    .line 1056
    invoke-direct {v1, v0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onMotionEvent$$inlined$postDelayed$default$4;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    .line 1057
    .line 1058
    .line 1059
    const-wide/16 v2, 0x82

    .line 1060
    .line 1061
    invoke-virtual {v8, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1062
    .line 1063
    .line 1064
    goto :goto_2b

    .line 1065
    :cond_42
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->COMMITTED:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 1066
    .line 1067
    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 1068
    .line 1069
    .line 1070
    goto :goto_2b

    .line 1071
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 1072
    .line 1073
    .line 1074
    move-result v1

    .line 1075
    invoke-static {v0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->isFlungAwayFromEdge$default(Lcom/android/systemui/navigationbar/gestural/BackPanelController;F)Z

    .line 1076
    .line 1077
    .line 1078
    move-result v1

    .line 1079
    if-eqz v1, :cond_45

    .line 1080
    .line 1081
    iget-object v11, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 1082
    .line 1083
    if-nez v11, :cond_43

    .line 1084
    .line 1085
    const/4 v11, 0x0

    .line 1086
    :cond_43
    invoke-interface {v11, v10}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->setTriggerBack(Z)V

    .line 1087
    .line 1088
    .line 1089
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 1090
    .line 1091
    if-eqz v1, :cond_44

    .line 1092
    .line 1093
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/VibratorHelper;->cancel()V

    .line 1094
    .line 1095
    .line 1096
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onMotionEvent$$inlined$postDelayed$default$2;

    .line 1097
    .line 1098
    invoke-direct {v1, v0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onMotionEvent$$inlined$postDelayed$default$2;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v8, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1102
    .line 1103
    .line 1104
    :cond_44
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onMotionEvent$$inlined$postDelayed$default$3;

    .line 1105
    .line 1106
    invoke-direct {v1, v0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onMotionEvent$$inlined$postDelayed$default$3;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    .line 1107
    .line 1108
    .line 1109
    const-wide/16 v2, 0x32

    .line 1110
    .line 1111
    invoke-virtual {v8, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1112
    .line 1113
    .line 1114
    goto :goto_2b

    .line 1115
    :cond_45
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->CANCELLED:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 1116
    .line 1117
    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 1118
    .line 1119
    .line 1120
    goto :goto_2b

    .line 1121
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 1122
    .line 1123
    .line 1124
    move-result v1

    .line 1125
    invoke-static {v0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->isFlungAwayFromEdge$default(Lcom/android/systemui/navigationbar/gestural/BackPanelController;F)Z

    .line 1126
    .line 1127
    .line 1128
    move-result v1

    .line 1129
    if-nez v1, :cond_47

    .line 1130
    .line 1131
    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousXTranslation:F

    .line 1132
    .line 1133
    iget v2, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->staticTriggerThreshold:F

    .line 1134
    .line 1135
    cmpl-float v1, v1, v2

    .line 1136
    .line 1137
    if-lez v1, :cond_46

    .line 1138
    .line 1139
    goto :goto_2a

    .line 1140
    :cond_46
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->CANCELLED:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 1141
    .line 1142
    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 1143
    .line 1144
    .line 1145
    goto :goto_2b

    .line 1146
    :cond_47
    :goto_2a
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->FLUNG:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 1147
    .line 1148
    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 1149
    .line 1150
    .line 1151
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 1152
    .line 1153
    if-eqz v1, :cond_48

    .line 1154
    .line 1155
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/VibratorHelper;->cancel()V

    .line 1156
    .line 1157
    .line 1158
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onMotionEvent$$inlined$postDelayed$default$1;

    .line 1159
    .line 1160
    invoke-direct {v1, v0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$onMotionEvent$$inlined$postDelayed$default$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v8, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1164
    .line 1165
    .line 1166
    :cond_48
    :goto_2b
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1167
    .line 1168
    const/4 v11, 0x0

    .line 1169
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1170
    .line 1171
    .line 1172
    move-result v1

    .line 1173
    if-nez v1, :cond_49

    .line 1174
    .line 1175
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1176
    .line 1177
    if-eqz v1, :cond_49

    .line 1178
    .line 1179
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1180
    .line 1181
    .line 1182
    :cond_49
    iput-object v11, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1183
    .line 1184
    goto/16 :goto_2f

    .line 1185
    .line 1186
    :cond_4a
    move-object v11, v6

    .line 1187
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 1188
    .line 1189
    invoke-virtual {v8, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1190
    .line 1191
    .line 1192
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 1193
    .line 1194
    check-cast v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 1195
    .line 1196
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->allAnimatedFloat:Ljava/util/Set;

    .line 1197
    .line 1198
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v1

    .line 1202
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1203
    .line 1204
    .line 1205
    move-result v3

    .line 1206
    if-eqz v3, :cond_4b

    .line 1207
    .line 1208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v3

    .line 1212
    check-cast v3, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1213
    .line 1214
    iget-object v3, v3, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1215
    .line 1216
    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 1217
    .line 1218
    .line 1219
    goto :goto_2c

    .line 1220
    :cond_4b
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetCommittedStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 1221
    .line 1222
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    .line 1223
    .line 1224
    invoke-virtual {v8, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1225
    .line 1226
    .line 1227
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 1228
    .line 1229
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    .line 1230
    .line 1231
    invoke-virtual {v8, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1232
    .line 1233
    .line 1234
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onAlphaEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 1235
    .line 1236
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    .line 1237
    .line 1238
    invoke-virtual {v8, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1239
    .line 1240
    .line 1241
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 1242
    .line 1243
    .line 1244
    move-result v1

    .line 1245
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startX:F

    .line 1246
    .line 1247
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 1248
    .line 1249
    .line 1250
    move-result v1

    .line 1251
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startY:F

    .line 1252
    .line 1253
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->GONE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 1254
    .line 1255
    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 1256
    .line 1257
    .line 1258
    iget v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->startY:F

    .line 1259
    .line 1260
    iget v2, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->fingerOffset:I

    .line 1261
    .line 1262
    int-to-float v2, v2

    .line 1263
    sub-float/2addr v1, v2

    .line 1264
    iget v2, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->minArrowYPosition:I

    .line 1265
    .line 1266
    int-to-float v2, v2

    .line 1267
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 1268
    .line 1269
    .line 1270
    move-result v1

    .line 1271
    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1272
    .line 1273
    if-nez v2, :cond_4c

    .line 1274
    .line 1275
    move-object v3, v11

    .line 1276
    goto :goto_2d

    .line 1277
    :cond_4c
    move-object v3, v2

    .line 1278
    :goto_2d
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1279
    .line 1280
    int-to-float v3, v3

    .line 1281
    const/high16 v4, 0x40000000    # 2.0f

    .line 1282
    .line 1283
    div-float/2addr v3, v4

    .line 1284
    sub-float/2addr v1, v3

    .line 1285
    if-nez v2, :cond_4d

    .line 1286
    .line 1287
    move-object v6, v11

    .line 1288
    goto :goto_2e

    .line 1289
    :cond_4d
    move-object v6, v2

    .line 1290
    :goto_2e
    float-to-int v1, v1

    .line 1291
    iget-object v2, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->displaySize:Landroid/graphics/Point;

    .line 1292
    .line 1293
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 1294
    .line 1295
    invoke-static {v1, v9, v2}, Landroid/util/MathUtils;->constrain(III)I

    .line 1296
    .line 1297
    .line 1298
    move-result v1

    .line 1299
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1300
    .line 1301
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 1302
    .line 1303
    check-cast v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 1304
    .line 1305
    iget-boolean v2, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    .line 1306
    .line 1307
    iput-boolean v9, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->hasPassedDragSlop:Z

    .line 1308
    .line 1309
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1310
    .line 1311
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1312
    .line 1313
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapTo(F)V

    .line 1314
    .line 1315
    .line 1316
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->verticalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1317
    .line 1318
    const/4 v3, 0x0

    .line 1319
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapTo(F)V

    .line 1320
    .line 1321
    .line 1322
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1323
    .line 1324
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapTo(F)V

    .line 1325
    .line 1326
    .line 1327
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1328
    .line 1329
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    .line 1330
    .line 1331
    .line 1332
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowLength:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1333
    .line 1334
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    .line 1335
    .line 1336
    .line 1337
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1338
    .line 1339
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    .line 1340
    .line 1341
    .line 1342
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1343
    .line 1344
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    .line 1345
    .line 1346
    .line 1347
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1348
    .line 1349
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    .line 1350
    .line 1351
    .line 1352
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1353
    .line 1354
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    .line 1355
    .line 1356
    .line 1357
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1358
    .line 1359
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    .line 1360
    .line 1361
    .line 1362
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 1363
    .line 1364
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapToRestingPosition()V

    .line 1365
    .line 1366
    .line 1367
    :cond_4e
    :goto_2f
    return-void

    .line 1368
    nop

    .line 1369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final onViewAttached()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateConfiguration()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->isLayoutRtl()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 13
    .line 14
    check-cast v2, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 15
    .line 16
    iget-boolean v3, v2, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowsPointLeft:Z

    .line 17
    .line 18
    if-eq v3, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 21
    .line 22
    .line 23
    iput-boolean v1, v2, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowsPointLeft:Z

    .line 24
    .line 25
    :cond_0
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->GONE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->configurationListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$configurationListener$1;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->configurationListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$configurationListener$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final playWithBackgroundWidthAnimation(Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 13
    .line 14
    check-cast p2, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 15
    .line 16
    iget-object p3, p2, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object p2, p3, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 22
    .line 23
    iget-boolean p3, p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    :goto_0
    if-nez p1, :cond_2

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->failsafeRunnable:Lcom/android/systemui/navigationbar/gestural/BackPanelController$failsafeRunnable$1;

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    const-wide/16 p1, 0x15e

    .line 46
    .line 47
    invoke-virtual {v1, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$playWithBackgroundWidthAnimation$$inlined$postDelayed$default$1;

    .line 52
    .line 53
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$playWithBackgroundWidthAnimation$$inlined$postDelayed$default$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_1
    return-void
.end method

.method public final setBackCallback(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 2
    .line 3
    return-void
.end method

.method public final setDisplaySize(Landroid/graphics/Point;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->displaySize:Landroid/graphics/Point;

    .line 2
    .line 3
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 4
    .line 5
    iget v2, p1, Landroid/graphics/Point;->y:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 8
    .line 9
    .line 10
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 11
    .line 12
    int-to-float p1, p1

    .line 13
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 14
    .line 15
    iget v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->swipeProgressThreshold:F

    .line 16
    .line 17
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->fullyStretchedThreshold:F

    .line 22
    .line 23
    return-void
.end method

.method public final setInsets(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setIsLeftPanel(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 4
    .line 5
    iput-boolean p1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;->isLeftPanel:Z

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/16 p1, 0x33

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/16 p1, 0x35

    .line 18
    .line 19
    :goto_0
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 20
    .line 21
    return-void
.end method

.method public final setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->windowManager:Landroid/view/WindowManager;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    .line 7
    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final updateActiveIndicatorSpringParams(FF)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    cmpg-float v1, p1, v0

    .line 8
    .line 9
    if-ltz v1, :cond_0

    .line 10
    .line 11
    cmpg-float v0, p2, v0

    .line 12
    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    .line 17
    cmpl-float v0, p2, v0

    .line 18
    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    :cond_0
    const/high16 p1, 0x447a0000    # 1000.0f

    .line 22
    .line 23
    const p2, 0x3f4ccccd    # 0.8f

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {p1, p2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    const/16 v6, 0xbf

    .line 39
    .line 40
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;FLcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 45
    .line 46
    return-void
.end method

.method public final updateArrowState(Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;Z)V
    .locals 13

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 4
    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 13
    .line 14
    sget-object p2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    aget p1, p2, p1

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eq p1, v3, :cond_7

    .line 27
    .line 28
    if-eq p1, v0, :cond_7

    .line 29
    .line 30
    const/4 v4, 0x3

    .line 31
    if-eq p1, v4, :cond_5

    .line 32
    .line 33
    const/4 v3, 0x5

    .line 34
    if-eq p1, v3, :cond_3

    .line 35
    .line 36
    const/4 v3, 0x6

    .line 37
    if-eq p1, v3, :cond_3

    .line 38
    .line 39
    const/4 v3, 0x7

    .line 40
    if-eq p1, v3, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    move-object p1, v1

    .line 48
    :cond_2
    invoke-interface {p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->cancelBack()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 53
    .line 54
    sget-object v3, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->FLUNG:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 55
    .line 56
    if-eq p1, v3, :cond_9

    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 59
    .line 60
    if-nez p1, :cond_4

    .line 61
    .line 62
    move-object p1, v1

    .line 63
    :cond_4
    invoke-interface {p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->triggerBack()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 68
    .line 69
    if-nez p1, :cond_6

    .line 70
    .line 71
    move-object p1, v1

    .line 72
    :cond_6
    invoke-interface {p1, v3}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->setTriggerBack(Z)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->backCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 77
    .line 78
    if-nez p1, :cond_8

    .line 79
    .line 80
    move-object p1, v1

    .line 81
    :cond_8
    invoke-interface {p1, v2}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->setTriggerBack(Z)V

    .line 82
    .line 83
    .line 84
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    aget p1, p2, p1

    .line 91
    .line 92
    const/4 p2, 0x0

    .line 93
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 94
    .line 95
    const-wide/16 v4, 0xa

    .line 96
    .line 97
    iget-object v6, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 98
    .line 99
    iget-object v7, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 100
    .line 101
    iget-object v8, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->mainHandler:Landroid/os/Handler;

    .line 102
    .line 103
    packed-switch p1, :pswitch_data_0

    .line 104
    .line 105
    .line 106
    goto/16 :goto_3

    .line 107
    .line 108
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 109
    .line 110
    .line 111
    move-result-wide v9

    .line 112
    iget-wide v11, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->gestureEntryTime:J

    .line 113
    .line 114
    sub-long/2addr v9, v11

    .line 115
    const-wide/16 v11, 0xc8

    .line 116
    .line 117
    sub-long/2addr v11, v9

    .line 118
    const-wide/16 v9, 0x0

    .line 119
    .line 120
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 121
    .line 122
    .line 123
    move-result-wide v9

    .line 124
    invoke-virtual {p0, v3, v9, v10}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->playWithBackgroundWidthAnimation(Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;J)V

    .line 125
    .line 126
    .line 127
    iget-object p1, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 128
    .line 129
    if-eqz p1, :cond_a

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_a
    move-object p1, v1

    .line 133
    :goto_1
    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->alphaSpring:Lcom/android/systemui/navigationbar/gestural/Step;

    .line 136
    .line 137
    if-eqz p1, :cond_b

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Lcom/android/systemui/navigationbar/gestural/Step;->get(F)Lcom/android/systemui/navigationbar/gestural/Step$Value;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_b

    .line 144
    .line 145
    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/Step$Value;->value:Ljava/lang/Object;

    .line 146
    .line 147
    move-object v1, p1

    .line 148
    check-cast v1, Landroidx/dynamicanimation/animation/SpringForce;

    .line 149
    .line 150
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 151
    .line 152
    check-cast p1, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 153
    .line 154
    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 155
    .line 156
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget-object v2, p1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->animation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 161
    .line 162
    if-eqz v0, :cond_c

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 169
    .line 170
    .line 171
    iput v0, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 172
    .line 173
    :cond_c
    if-eqz v1, :cond_d

    .line 174
    .line 175
    iput-object v1, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 176
    .line 177
    :cond_d
    iget p1, p1, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->restingPosition:F

    .line 178
    .line 179
    add-float/2addr p1, p2

    .line 180
    invoke-virtual {v2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 181
    .line 182
    .line 183
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$updateArrowState$$inlined$postDelayed$default$3;

    .line 184
    .line 185
    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$updateArrowState$$inlined$postDelayed$default$3;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8, p1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    .line 190
    .line 191
    goto/16 :goto_3

    .line 192
    .line 193
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 194
    .line 195
    sget-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->FLUNG:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 196
    .line 197
    if-ne p1, v1, :cond_e

    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    .line 200
    .line 201
    .line 202
    iget-object p0, v3, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    .line 203
    .line 204
    const-wide/16 p1, 0x78

    .line 205
    .line 206
    invoke-virtual {v8, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    .line 208
    .line 209
    goto/16 :goto_3

    .line 210
    .line 211
    :cond_e
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 212
    .line 213
    check-cast p1, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 214
    .line 215
    iget-object v1, p1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scalePivotX:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 216
    .line 217
    iget-object v2, p1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 218
    .line 219
    iget v2, v2, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->pos:F

    .line 220
    .line 221
    int-to-float v0, v0

    .line 222
    div-float/2addr v2, v0

    .line 223
    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->snapTo(F)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 227
    .line 228
    const/high16 v0, 0x40400000    # 3.0f

    .line 229
    .line 230
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const/4 v1, 0x4

    .line 235
    invoke-static {p1, p2, v0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->stretchTo$default(Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;FLjava/lang/Float;I)V

    .line 236
    .line 237
    .line 238
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onAlphaEndSetGoneStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 239
    .line 240
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    .line 241
    .line 242
    const-wide/16 p1, 0x50

    .line 243
    .line 244
    invoke-virtual {v8, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    .line 246
    .line 247
    goto/16 :goto_3

    .line 248
    .line 249
    :pswitch_2
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$updateArrowState$$inlined$postDelayed$default$2;

    .line 250
    .line 251
    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$updateArrowState$$inlined$postDelayed$default$2;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    .line 252
    .line 253
    .line 254
    const-wide/16 v0, 0x3c

    .line 255
    .line 256
    invoke-virtual {v8, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    .line 260
    .line 261
    .line 262
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->onEndSetCommittedStateListener:Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;

    .line 263
    .line 264
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$DelayedOnAnimationEndListener;->runnable:Ljava/lang/Runnable;

    .line 265
    .line 266
    const-wide/16 p1, 0xa0

    .line 267
    .line 268
    invoke-virtual {v8, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    .line 270
    .line 271
    goto :goto_3

    .line 272
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    .line 273
    .line 274
    .line 275
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 276
    .line 277
    const/16 p1, 0x8

    .line 278
    .line 279
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    goto :goto_3

    .line 283
    :pswitch_4
    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousXTranslation:F

    .line 284
    .line 285
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousXTranslationOnActiveOffset:F

    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/VibratorHelper;->cancel()V

    .line 291
    .line 292
    .line 293
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$updateArrowState$$inlined$postDelayed$default$1;

    .line 294
    .line 295
    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$updateArrowState$$inlined$postDelayed$default$1;-><init>(Lcom/android/systemui/navigationbar/gestural/BackPanelController;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v8, p1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 299
    .line 300
    .line 301
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->previousState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 302
    .line 303
    sget-object p2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->INACTIVE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 304
    .line 305
    if-ne p1, p2, :cond_f

    .line 306
    .line 307
    const p1, 0x40966666    # 4.7f

    .line 308
    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_f
    const/high16 p1, 0x40900000    # 4.5f

    .line 312
    .line 313
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 314
    .line 315
    check-cast p0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 316
    .line 317
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->popOffEdge(F)V

    .line 318
    .line 319
    .line 320
    goto :goto_3

    .line 321
    :pswitch_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 322
    .line 323
    .line 324
    move-result-wide p1

    .line 325
    iput-wide p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->gestureInactiveTime:J

    .line 326
    .line 327
    iget p1, v7, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->deactivationTriggerThreshold:F

    .line 328
    .line 329
    neg-float p1, p1

    .line 330
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->totalTouchDeltaInactive:F

    .line 331
    .line 332
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 333
    .line 334
    check-cast p1, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 335
    .line 336
    const/high16 p2, -0x40400000    # -1.5f

    .line 337
    .line 338
    invoke-virtual {p1, p2}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->popOffEdge(F)V

    .line 339
    .line 340
    .line 341
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 342
    .line 343
    if-nez p1, :cond_10

    .line 344
    .line 345
    sget-object p1, Lcom/android/systemui/navigationbar/gestural/BackPanelControllerKt;->VIBRATE_DEACTIVATED_EFFECT:Landroid/os/VibrationEffect;

    .line 346
    .line 347
    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;)V

    .line 348
    .line 349
    .line 350
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    .line 351
    .line 352
    .line 353
    goto :goto_3

    .line 354
    :pswitch_6
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 355
    .line 356
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateRestingArrowDimens()V

    .line 360
    .line 361
    .line 362
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 363
    .line 364
    .line 365
    move-result-wide p1

    .line 366
    iput-wide p1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->gestureEntryTime:J

    .line 367
    .line 368
    :goto_3
    return-void

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateBackPanelColor(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->updateBackPanelColor$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IIII)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->updateConfiguration()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "BackPanelController"

    .line 15
    .line 16
    const-string/jumbo p1, "updateBackPanelColor fail, view is null"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final updateConfiguration()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->update(Landroid/content/res/Resources;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 11
    .line 12
    check-cast v0, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 13
    .line 14
    iget v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->arrowThickness:F

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->updateArrowPaint$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->viewConfiguration:Landroid/view/ViewConfiguration;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    mul-int/lit8 v0, v0, 0x3

    .line 26
    .line 27
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->minFlingDistance:I

    .line 28
    .line 29
    return-void
.end method

.method public final updateRestingArrowDimens()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 4
    .line 5
    sget-object v2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v1, v2, v1

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->params:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 15
    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :pswitch_0
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 22
    .line 23
    move-object v5, v1

    .line 24
    check-cast v5, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v10, 0x0

    .line 31
    iget-object v1, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v1, v3

    .line 37
    :goto_0
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 38
    .line 39
    iget-object v11, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->alphaSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 40
    .line 41
    const/4 v12, 0x0

    .line 42
    const/4 v13, 0x0

    .line 43
    const/4 v14, 0x0

    .line 44
    const/4 v15, 0x0

    .line 45
    const/16 v16, 0x7bf

    .line 46
    .line 47
    invoke-static/range {v5 .. v16}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :pswitch_1
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 53
    .line 54
    move-object v5, v1

    .line 55
    check-cast v5, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 62
    .line 63
    iget-object v9, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->lengthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 70
    .line 71
    iget-object v10, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v8, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scaleSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 84
    .line 85
    iget-object v11, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->alphaSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 92
    .line 93
    iget-object v14, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->widthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 100
    .line 101
    iget-object v15, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 108
    .line 109
    iget-object v13, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 110
    .line 111
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 116
    .line 117
    iget-object v12, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 118
    .line 119
    const/4 v6, 0x0

    .line 120
    const/4 v7, 0x0

    .line 121
    const/16 v16, 0x23

    .line 122
    .line 123
    invoke-static/range {v5 .. v16}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_1

    .line 127
    .line 128
    :pswitch_2
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 129
    .line 130
    move-object v5, v1

    .line 131
    check-cast v5, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 132
    .line 133
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getFlungIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 138
    .line 139
    iget-object v9, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->lengthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 140
    .line 141
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getFlungIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 146
    .line 147
    iget-object v10, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 148
    .line 149
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getFlungIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 154
    .line 155
    iget-object v14, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->widthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 156
    .line 157
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getFlungIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 162
    .line 163
    iget-object v15, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 164
    .line 165
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getFlungIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 170
    .line 171
    iget-object v13, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 172
    .line 173
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getFlungIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 178
    .line 179
    iget-object v12, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 180
    .line 181
    const/4 v6, 0x0

    .line 182
    const/4 v7, 0x0

    .line 183
    const/4 v8, 0x0

    .line 184
    const/4 v11, 0x0

    .line 185
    const/16 v16, 0x67

    .line 186
    .line 187
    invoke-static/range {v5 .. v16}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :pswitch_3
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 193
    .line 194
    move-object v5, v1

    .line 195
    check-cast v5, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 196
    .line 197
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 202
    .line 203
    iget-object v9, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->lengthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 204
    .line 205
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 210
    .line 211
    iget-object v10, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 212
    .line 213
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    iget-object v8, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scaleSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 218
    .line 219
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    iget-object v6, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 224
    .line 225
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 230
    .line 231
    iget-object v14, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->widthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 232
    .line 233
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 238
    .line 239
    iget-object v15, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 240
    .line 241
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 246
    .line 247
    iget-object v13, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 248
    .line 249
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 254
    .line 255
    iget-object v12, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 256
    .line 257
    const/4 v7, 0x0

    .line 258
    const/4 v11, 0x0

    .line 259
    const/16 v16, 0x62

    .line 260
    .line 261
    invoke-static/range {v5 .. v16}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_1

    .line 265
    .line 266
    :pswitch_4
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 267
    .line 268
    move-object v5, v1

    .line 269
    check-cast v5, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 270
    .line 271
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 276
    .line 277
    iget-object v9, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->lengthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 278
    .line 279
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 284
    .line 285
    iget-object v10, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 286
    .line 287
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    iget-object v6, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 292
    .line 293
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    iget-object v8, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scaleSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 298
    .line 299
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 304
    .line 305
    iget-object v14, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->widthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 306
    .line 307
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 312
    .line 313
    iget-object v15, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 314
    .line 315
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 320
    .line 321
    iget-object v13, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 322
    .line 323
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 328
    .line 329
    iget-object v12, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 330
    .line 331
    const/4 v7, 0x0

    .line 332
    const/4 v11, 0x0

    .line 333
    const/16 v16, 0x62

    .line 334
    .line 335
    invoke-static/range {v5 .. v16}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)V

    .line 336
    .line 337
    .line 338
    goto :goto_1

    .line 339
    :pswitch_5
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 340
    .line 341
    move-object v5, v1

    .line 342
    check-cast v5, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 343
    .line 344
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 349
    .line 350
    iget-object v9, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->lengthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 351
    .line 352
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 357
    .line 358
    iget-object v10, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 359
    .line 360
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    iget-object v8, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scaleSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 365
    .line 366
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    iget-object v7, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->verticalTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 371
    .line 372
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    iget-object v6, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 377
    .line 378
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 383
    .line 384
    iget-object v11, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->alphaSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 385
    .line 386
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 391
    .line 392
    iget-object v14, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->widthSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 393
    .line 394
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 399
    .line 400
    iget-object v15, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->heightSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 401
    .line 402
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 407
    .line 408
    iget-object v13, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 409
    .line 410
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 415
    .line 416
    iget-object v12, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadiusSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 417
    .line 418
    const/16 v16, 0x20

    .line 419
    .line 420
    invoke-static/range {v5 .. v16}, Lcom/android/systemui/navigationbar/gestural/BackPanel;->setSpring$default(Lcom/android/systemui/navigationbar/gestural/BackPanel;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)V

    .line 421
    .line 422
    .line 423
    :goto_1
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 424
    .line 425
    check-cast v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;

    .line 426
    .line 427
    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 428
    .line 429
    sget-object v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->FLUNG:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 430
    .line 431
    const/4 v7, 0x1

    .line 432
    if-eq v5, v6, :cond_1

    .line 433
    .line 434
    sget-object v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->COMMITTED:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 435
    .line 436
    if-eq v5, v6, :cond_1

    .line 437
    .line 438
    move v6, v7

    .line 439
    goto :goto_2

    .line 440
    :cond_1
    const/4 v6, 0x0

    .line 441
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    aget v5, v2, v5

    .line 446
    .line 447
    const/4 v8, 0x5

    .line 448
    const/4 v9, 0x3

    .line 449
    if-eq v5, v9, :cond_3

    .line 450
    .line 451
    if-eq v5, v8, :cond_3

    .line 452
    .line 453
    const/4 v10, 0x6

    .line 454
    if-eq v5, v10, :cond_2

    .line 455
    .line 456
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    iget v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scale:F

    .line 461
    .line 462
    goto :goto_3

    .line 463
    :cond_2
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    iget v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scale:F

    .line 468
    .line 469
    goto :goto_3

    .line 470
    :cond_3
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    iget v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scale:F

    .line 475
    .line 476
    :goto_3
    move v12, v5

    .line 477
    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 478
    .line 479
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 480
    .line 481
    .line 482
    move-result v5

    .line 483
    aget v5, v2, v5

    .line 484
    .line 485
    packed-switch v5, :pswitch_data_1

    .line 486
    .line 487
    .line 488
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 489
    .line 490
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 491
    .line 492
    .line 493
    throw v0

    .line 494
    :pswitch_6
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 495
    .line 496
    .line 497
    move-result-object v5

    .line 498
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scalePivotX:Ljava/lang/Float;

    .line 499
    .line 500
    goto :goto_4

    .line 501
    :pswitch_7
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scalePivotX:Ljava/lang/Float;

    .line 506
    .line 507
    goto :goto_4

    .line 508
    :pswitch_8
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 509
    .line 510
    .line 511
    move-result-object v5

    .line 512
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scalePivotX:Ljava/lang/Float;

    .line 513
    .line 514
    :goto_4
    move-object v13, v5

    .line 515
    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 516
    .line 517
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 518
    .line 519
    .line 520
    move-result v5

    .line 521
    aget v5, v2, v5

    .line 522
    .line 523
    if-eq v5, v7, :cond_a

    .line 524
    .line 525
    const/4 v10, 0x2

    .line 526
    if-eq v5, v10, :cond_a

    .line 527
    .line 528
    if-eq v5, v9, :cond_9

    .line 529
    .line 530
    const/4 v9, 0x4

    .line 531
    if-eq v5, v9, :cond_7

    .line 532
    .line 533
    if-eq v5, v8, :cond_6

    .line 534
    .line 535
    const/4 v8, 0x7

    .line 536
    if-eq v5, v8, :cond_4

    .line 537
    .line 538
    goto :goto_6

    .line 539
    :cond_4
    iget-object v5, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 540
    .line 541
    if-eqz v5, :cond_5

    .line 542
    .line 543
    goto :goto_5

    .line 544
    :cond_5
    move-object v5, v3

    .line 545
    :goto_5
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslation:Ljava/lang/Float;

    .line 546
    .line 547
    goto :goto_7

    .line 548
    :cond_6
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 549
    .line 550
    .line 551
    move-result-object v5

    .line 552
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslation:Ljava/lang/Float;

    .line 553
    .line 554
    goto :goto_7

    .line 555
    :cond_7
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 556
    .line 557
    .line 558
    move-result-object v5

    .line 559
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 560
    .line 561
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->width:Ljava/lang/Float;

    .line 562
    .line 563
    if-eqz v5, :cond_8

    .line 564
    .line 565
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 566
    .line 567
    .line 568
    move-result v5

    .line 569
    const/4 v8, -0x1

    .line 570
    int-to-float v8, v8

    .line 571
    mul-float/2addr v5, v8

    .line 572
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 573
    .line 574
    .line 575
    move-result-object v5

    .line 576
    goto :goto_7

    .line 577
    :cond_8
    :goto_6
    move-object v11, v3

    .line 578
    goto :goto_8

    .line 579
    :cond_9
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 580
    .line 581
    .line 582
    move-result-object v5

    .line 583
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslation:Ljava/lang/Float;

    .line 584
    .line 585
    goto :goto_7

    .line 586
    :cond_a
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 587
    .line 588
    .line 589
    move-result-object v5

    .line 590
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslation:Ljava/lang/Float;

    .line 591
    .line 592
    :goto_7
    move-object v11, v5

    .line 593
    :goto_8
    iget-object v5, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 594
    .line 595
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 596
    .line 597
    .line 598
    move-result v5

    .line 599
    aget v5, v2, v5

    .line 600
    .line 601
    packed-switch v5, :pswitch_data_2

    .line 602
    .line 603
    .line 604
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 605
    .line 606
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 607
    .line 608
    .line 609
    throw v0

    .line 610
    :pswitch_9
    iget-object v5, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 611
    .line 612
    if-eqz v5, :cond_b

    .line 613
    .line 614
    goto :goto_9

    .line 615
    :cond_b
    move-object v5, v3

    .line 616
    :goto_9
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 617
    .line 618
    goto :goto_a

    .line 619
    :pswitch_a
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 620
    .line 621
    .line 622
    move-result-object v5

    .line 623
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 624
    .line 625
    goto :goto_a

    .line 626
    :pswitch_b
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getFlungIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 627
    .line 628
    .line 629
    move-result-object v5

    .line 630
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 631
    .line 632
    goto :goto_a

    .line 633
    :pswitch_c
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 634
    .line 635
    .line 636
    move-result-object v5

    .line 637
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 638
    .line 639
    goto :goto_a

    .line 640
    :pswitch_d
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 641
    .line 642
    .line 643
    move-result-object v5

    .line 644
    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 645
    .line 646
    :goto_a
    move-object v14, v5

    .line 647
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;->currentState:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 648
    .line 649
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 650
    .line 651
    .line 652
    move-result v0

    .line 653
    aget v0, v2, v0

    .line 654
    .line 655
    packed-switch v0, :pswitch_data_3

    .line 656
    .line 657
    .line 658
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 659
    .line 660
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 661
    .line 662
    .line 663
    throw v0

    .line 664
    :pswitch_e
    iget-object v0, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 665
    .line 666
    if-eqz v0, :cond_c

    .line 667
    .line 668
    move-object v3, v0

    .line 669
    :cond_c
    iget-object v0, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 670
    .line 671
    goto :goto_b

    .line 672
    :pswitch_f
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 677
    .line 678
    goto :goto_b

    .line 679
    :pswitch_10
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 684
    .line 685
    goto :goto_b

    .line 686
    :pswitch_11
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 691
    .line 692
    goto :goto_b

    .line 693
    :pswitch_12
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 698
    .line 699
    :goto_b
    move-object v15, v0

    .line 700
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 701
    .line 702
    const/16 v16, 0x0

    .line 703
    .line 704
    const/16 v17, 0x0

    .line 705
    .line 706
    const/16 v18, 0x0

    .line 707
    .line 708
    const/16 v19, 0xe0

    .line 709
    .line 710
    const/16 v20, 0x0

    .line 711
    .line 712
    move-object v10, v0

    .line 713
    invoke-direct/range {v10 .. v20}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;-><init>(Ljava/lang/Float;FLjava/lang/Float;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 714
    .line 715
    .line 716
    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->horizontalTranslation:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 717
    .line 718
    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->horizontalTranslation:Ljava/lang/Float;

    .line 719
    .line 720
    invoke-virtual {v2, v3, v7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 721
    .line 722
    .line 723
    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scale:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 724
    .line 725
    iget v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scale:F

    .line 726
    .line 727
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 728
    .line 729
    .line 730
    move-result-object v3

    .line 731
    invoke-virtual {v2, v3, v7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 732
    .line 733
    .line 734
    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 735
    .line 736
    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 737
    .line 738
    iget v4, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->alpha:F

    .line 739
    .line 740
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 741
    .line 742
    .line 743
    move-result-object v4

    .line 744
    invoke-virtual {v2, v4, v7}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 745
    .line 746
    .line 747
    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowAlpha:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 748
    .line 749
    iget-object v4, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 750
    .line 751
    iget v5, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->alpha:F

    .line 752
    .line 753
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 754
    .line 755
    .line 756
    move-result-object v5

    .line 757
    invoke-virtual {v2, v5, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 758
    .line 759
    .line 760
    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowLength:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 761
    .line 762
    iget-object v5, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->length:Ljava/lang/Float;

    .line 763
    .line 764
    invoke-virtual {v2, v5, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 765
    .line 766
    .line 767
    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->arrowHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 768
    .line 769
    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->height:Ljava/lang/Float;

    .line 770
    .line 771
    invoke-virtual {v2, v4, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 772
    .line 773
    .line 774
    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->scalePivotX:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 775
    .line 776
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->scalePivotX:Ljava/lang/Float;

    .line 777
    .line 778
    invoke-virtual {v2, v0, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 779
    .line 780
    .line 781
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundWidth:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 782
    .line 783
    iget-object v2, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->width:Ljava/lang/Float;

    .line 784
    .line 785
    invoke-virtual {v0, v2, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 786
    .line 787
    .line 788
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundHeight:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 789
    .line 790
    iget v2, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->height:F

    .line 791
    .line 792
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 793
    .line 794
    .line 795
    move-result-object v2

    .line 796
    invoke-virtual {v0, v2, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 797
    .line 798
    .line 799
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundEdgeCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 800
    .line 801
    iget v2, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->edgeCornerRadius:F

    .line 802
    .line 803
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 804
    .line 805
    .line 806
    move-result-object v2

    .line 807
    invoke-virtual {v0, v2, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 808
    .line 809
    .line 810
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/BackPanel;->backgroundFarCornerRadius:Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;

    .line 811
    .line 812
    iget v1, v3, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->farCornerRadius:F

    .line 813
    .line 814
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanel$AnimatedFloat;->updateRestingPosition(Ljava/lang/Float;Z)V

    .line 819
    .line 820
    .line 821
    return-void

    .line 822
    nop

    .line 823
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method
