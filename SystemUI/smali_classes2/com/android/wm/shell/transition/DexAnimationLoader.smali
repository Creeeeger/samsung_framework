.class public final Lcom/android/wm/shell/transition/DexAnimationLoader;
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
.method public final isAvailable()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mConfiguration:Landroid/content/res/Configuration;

    .line 4
    .line 5
    iget p0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final loadAnimationIfPossible()V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/AnimationLoader;->mState:Lcom/android/wm/shell/transition/MultiTaskingTransitionState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isActivityTypeHome()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/android/wm/shell/transition/AnimationLoader;->DIRECT_SHOW_ANIMATION:Landroid/view/animation/Animation;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_MINIMIZE_SHELL_TRANSITION:Z

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    const/4 v7, 0x0

    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    new-instance v0, Landroid/view/DisplayInfo;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 27
    .line 28
    iget v2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mDisplayId:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 39
    .line 40
    .line 41
    new-instance v2, Landroid/graphics/PointF;

    .line 42
    .line 43
    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 44
    .line 45
    .line 46
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 47
    .line 48
    int-to-float v1, v1

    .line 49
    const/high16 v3, 0x40000000    # 2.0f

    .line 50
    .line 51
    div-float/2addr v1, v3

    .line 52
    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 53
    .line 54
    int-to-float v0, v0

    .line 55
    invoke-virtual {v2, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 56
    .line 57
    .line 58
    iget v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mMinimizeAnimState:I

    .line 59
    .line 60
    if-ne v0, v6, :cond_1

    .line 61
    .line 62
    move v1, v6

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    move v1, v7

    .line 65
    :goto_0
    if-eqz v1, :cond_2

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->getBounds()Landroid/graphics/Rect;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const/high16 v4, 0x3f800000    # 1.0f

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    move-object v0, p0

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->createMinimizeAnimation(ZLandroid/graphics/PointF;Landroid/graphics/Rect;FZ)Landroid/view/animation/Animation;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    const/4 v1, 0x2

    .line 82
    if-ne v0, v1, :cond_3

    .line 83
    .line 84
    move v0, v6

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    move v0, v7

    .line 87
    :goto_1
    if-eqz v0, :cond_4

    .line 88
    .line 89
    const/4 v1, 0x1

    .line 90
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->getBounds()Landroid/graphics/Rect;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const/high16 v4, 0x3f800000    # 1.0f

    .line 95
    .line 96
    const/4 v5, 0x0

    .line 97
    move-object v0, p0

    .line 98
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->createMinimizeAnimation(ZLandroid/graphics/PointF;Landroid/graphics/Rect;FZ)Landroid/view/animation/Animation;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    const/4 v0, 0x0

    .line 104
    :goto_2
    if-eqz v0, :cond_5

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    iget-boolean v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mAnimationLoaded:Z

    .line 110
    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    return-void

    .line 114
    :cond_6
    iget v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mWindowingMode:I

    .line 115
    .line 116
    if-ne v0, v6, :cond_7

    .line 117
    .line 118
    move v0, v6

    .line 119
    goto :goto_3

    .line 120
    :cond_7
    move v0, v7

    .line 121
    :goto_3
    if-eqz v0, :cond_9

    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 124
    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    move v0, v6

    .line 128
    goto :goto_4

    .line 129
    :cond_8
    move v0, v7

    .line 130
    :goto_4
    if-eqz v0, :cond_9

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isClosingTransitionType()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_9

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->isActivityTypeHome()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_9

    .line 143
    .line 144
    iget-boolean v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->mIsEnter:Z

    .line 145
    .line 146
    if-nez v0, :cond_9

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_9
    move v6, v7

    .line 150
    :goto_5
    if-eqz v6, :cond_a

    .line 151
    .line 152
    const v0, 0x7f0101ab

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->loadAnimationFromResources(I)Landroid/view/animation/Animation;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 160
    .line 161
    .line 162
    :cond_a
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "DexAnimationLoader"

    .line 2
    .line 3
    return-object p0
.end method
