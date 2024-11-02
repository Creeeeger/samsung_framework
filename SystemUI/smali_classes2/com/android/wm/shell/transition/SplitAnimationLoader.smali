.class public final Lcom/android/wm/shell/transition/SplitAnimationLoader;
.super Lcom/android/wm/shell/transition/AnimationLoader;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/transition/AnimationLoader;-><init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getCornerRadius()F
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    const/16 v0, 0xc

    .line 16
    .line 17
    int-to-float v0, v0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {v1, v0, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    float-to-int p0, p0

    .line 32
    int-to-float p0, p0

    .line 33
    return p0
.end method

.method public final isAvailable()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    .line 9
    .line 10
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 11
    .line 12
    invoke-static {p0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
.end method

.method public final loadAnimationIfPossible()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mHasCustomDisplayChangeTransition:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mSeparatedFromCustomDisplayChange:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move v1, v3

    .line 17
    :goto_1
    if-eqz v1, :cond_2

    .line 18
    .line 19
    sget-object p0, Lcom/android/wm/shell/transition/AnimationLoader;->NO_ANIMATION:Landroid/view/animation/Animation;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-boolean v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsPopOverAnimationNeeded:Z

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    return-void

    .line 30
    :cond_3
    iget-object v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mOpeningAppsEdgeTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 31
    .line 32
    if-nez v1, :cond_4

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_4
    iget-object v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    .line 36
    .line 37
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget-object v4, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mOpeningAppsEdgeTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    if-ne v1, v4, :cond_5

    .line 58
    .line 59
    move v1, v3

    .line 60
    goto :goto_3

    .line 61
    :cond_5
    :goto_2
    move v1, v2

    .line 62
    :goto_3
    const v4, 0x7f010298

    .line 63
    .line 64
    .line 65
    const v5, 0x7f010299

    .line 66
    .line 67
    .line 68
    const/4 v6, -0x1

    .line 69
    if-eqz v1, :cond_6

    .line 70
    .line 71
    iget-boolean v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    .line 72
    .line 73
    if-nez v1, :cond_6

    .line 74
    .line 75
    const v1, 0x7f01029c

    .line 76
    .line 77
    .line 78
    goto :goto_6

    .line 79
    :cond_6
    iget v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTransitionType:I

    .line 80
    .line 81
    if-eq v1, v3, :cond_8

    .line 82
    .line 83
    const/4 v7, 0x3

    .line 84
    if-ne v1, v7, :cond_7

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_7
    move v1, v2

    .line 88
    goto :goto_5

    .line 89
    :cond_8
    :goto_4
    move v1, v3

    .line 90
    :goto_5
    if-eqz v1, :cond_a

    .line 91
    .line 92
    iget-boolean v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    .line 93
    .line 94
    if-eqz v1, :cond_9

    .line 95
    .line 96
    move v1, v5

    .line 97
    goto :goto_6

    .line 98
    :cond_9
    const v1, 0x7f01029a

    .line 99
    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_a
    invoke-virtual {v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isClosingTransitionType()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_c

    .line 107
    .line 108
    iget-boolean v1, v0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    .line 109
    .line 110
    if-eqz v1, :cond_b

    .line 111
    .line 112
    const v1, 0x7f010297

    .line 113
    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_b
    move v1, v4

    .line 117
    goto :goto_6

    .line 118
    :cond_c
    move v1, v6

    .line 119
    :goto_6
    if-eq v1, v6, :cond_10

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    if-eq v1, v5, :cond_d

    .line 126
    .line 127
    if-ne v1, v4, :cond_e

    .line 128
    .line 129
    :cond_d
    move v2, v3

    .line 130
    :cond_e
    if-eqz v2, :cond_f

    .line 131
    .line 132
    instance-of v1, v6, Landroid/view/animation/AnimationSet;

    .line 133
    .line 134
    if-eqz v1, :cond_f

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->getBounds()Landroid/graphics/Rect;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    move-object v2, v6

    .line 141
    check-cast v2, Landroid/view/animation/AnimationSet;

    .line 142
    .line 143
    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/transition/AnimationLoader;->addRoundedClipAnimation(Landroid/graphics/Rect;Landroid/view/animation/AnimationSet;)V

    .line 144
    .line 145
    .line 146
    :cond_f
    invoke-virtual {v0, v6}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 147
    .line 148
    .line 149
    :cond_10
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "SplitAnimationLoader"

    .line 2
    .line 3
    return-object p0
.end method
