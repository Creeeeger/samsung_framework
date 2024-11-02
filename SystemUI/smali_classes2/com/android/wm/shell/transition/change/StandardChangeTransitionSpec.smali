.class public Lcom/android/wm/shell/transition/change/StandardChangeTransitionSpec;
.super Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final createBoundsChangeAnimation()Landroid/view/animation/Animation;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->getDisplayFrame()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    int-to-float v2, v2

    .line 12
    iget-object v3, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    int-to-float v4, v4

    .line 19
    div-float/2addr v2, v4

    .line 20
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    int-to-float v4, v4

    .line 25
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    int-to-float v5, v5

    .line 30
    div-float/2addr v4, v5

    .line 31
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    .line 32
    .line 33
    const/high16 v6, 0x3f800000    # 1.0f

    .line 34
    .line 35
    invoke-direct {v5, v2, v6, v4, v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .line 39
    .line 40
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 41
    .line 42
    int-to-float v4, v4

    .line 43
    iget v6, v3, Landroid/graphics/Rect;->left:I

    .line 44
    .line 45
    int-to-float v6, v6

    .line 46
    iget v7, v1, Landroid/graphics/Rect;->top:I

    .line 47
    .line 48
    int-to-float v7, v7

    .line 49
    iget v8, v3, Landroid/graphics/Rect;->top:I

    .line 50
    .line 51
    int-to-float v8, v8

    .line 52
    invoke-direct {v2, v4, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 53
    .line 54
    .line 55
    new-instance v4, Landroid/graphics/Rect;

    .line 56
    .line 57
    iget-object v6, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartOutsets:Landroid/graphics/Rect;

    .line 58
    .line 59
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 60
    .line 61
    neg-int v7, v7

    .line 62
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 63
    .line 64
    neg-int v8, v8

    .line 65
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    iget v10, v6, Landroid/graphics/Rect;->right:I

    .line 70
    .line 71
    add-int/2addr v9, v10

    .line 72
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 77
    .line 78
    add-int/2addr v10, v6

    .line 79
    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 80
    .line 81
    .line 82
    new-instance v6, Landroid/graphics/Rect;

    .line 83
    .line 84
    iget-object v7, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndOutsets:Landroid/graphics/Rect;

    .line 85
    .line 86
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 87
    .line 88
    neg-int v8, v8

    .line 89
    iget v9, v7, Landroid/graphics/Rect;->top:I

    .line 90
    .line 91
    neg-int v9, v9

    .line 92
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    iget v11, v7, Landroid/graphics/Rect;->right:I

    .line 97
    .line 98
    add-int/2addr v10, v11

    .line 99
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 104
    .line 105
    add-int/2addr v3, v7

    .line 106
    invoke-direct {v6, v8, v9, v10, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 107
    .line 108
    .line 109
    new-instance v3, Landroid/view/animation/ClipRectAnimation;

    .line 110
    .line 111
    invoke-direct {v3, v4, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 112
    .line 113
    .line 114
    new-instance v4, Landroid/view/animation/AnimationSet;

    .line 115
    .line 116
    const/4 v6, 0x1

    .line 117
    invoke-direct {v4, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 127
    .line 128
    .line 129
    const-wide/16 v2, 0x0

    .line 130
    .line 131
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->getAnimationDuration()J

    .line 135
    .line 136
    .line 137
    move-result-wide v2

    .line 138
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 139
    .line 140
    .line 141
    sget-object v2, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 142
    .line 143
    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    invoke-virtual {v4, v2, v1, v3, v0}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v6}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/change/StandardChangeTransitionSpec;->getCornerRadius()F

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    invoke-virtual {v4, p0}, Landroid/view/animation/AnimationSet;->setRoundedCornerRadius(F)V

    .line 173
    .line 174
    .line 175
    return-object v4
.end method

.method public createSnapshotAnimation()Landroid/view/animation/Animation;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->getAnimationDuration()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartOutsets:Landroid/graphics/Rect;

    .line 6
    .line 7
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    neg-int v3, v3

    .line 10
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 11
    .line 12
    neg-int v2, v2

    .line 13
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .line 14
    .line 15
    int-to-float v3, v3

    .line 16
    int-to-float v2, v2

    .line 17
    invoke-direct {v4, v3, v3, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    int-to-float v3, v3

    .line 27
    iget-object v5, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    int-to-float v6, v6

    .line 34
    div-float/2addr v3, v6

    .line 35
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    int-to-float v6, v6

    .line 40
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    int-to-float v7, v7

    .line 45
    div-float/2addr v6, v7

    .line 46
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    .line 47
    .line 48
    const/high16 v8, 0x3f800000    # 1.0f

    .line 49
    .line 50
    const/4 v9, 0x0

    .line 51
    invoke-direct {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->getSnapshotAlphaAnimationDuration()J

    .line 55
    .line 56
    .line 57
    move-result-wide v9

    .line 58
    invoke-virtual {v7, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 59
    .line 60
    .line 61
    iget p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mDurationScale:F

    .line 62
    .line 63
    const/high16 v9, 0x42480000    # 50.0f

    .line 64
    .line 65
    mul-float/2addr p0, v9

    .line 66
    float-to-long v9, p0

    .line 67
    invoke-virtual {v7, v9, v10}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 68
    .line 69
    .line 70
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    .line 71
    .line 72
    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 76
    .line 77
    .line 78
    div-float p0, v8, v3

    .line 79
    .line 80
    div-float/2addr v8, v6

    .line 81
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    .line 82
    .line 83
    invoke-direct {v3, p0, p0, v8, v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 87
    .line 88
    .line 89
    sget-object p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 90
    .line 91
    invoke-virtual {v3, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 92
    .line 93
    .line 94
    new-instance p0, Landroid/view/animation/AnimationSet;

    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 126
    .line 127
    .line 128
    return-object p0
.end method

.method public getCornerRadius()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mChange:Landroid/window/TransitionInfo$Change;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x5

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const/16 v0, 0xe

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v0, p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->dipToPixel(ILandroid/content/Context;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    int-to-float p0, p0

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final setupChangeTransitionHierarchy(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v2, ", change="

    .line 14
    .line 15
    const-string v3, "ChangeTransitionProvider"

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v4, -0x1

    .line 25
    invoke-virtual {p2, v1, v4, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v1, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mStartBounds:Landroid/graphics/Rect;

    .line 32
    .line 33
    iget v5, p0, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    int-to-float v5, v5

    .line 36
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 37
    .line 38
    int-to-float p0, p0

    .line 39
    invoke-virtual {p2, v1, v5, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 43
    .line 44
    .line 45
    const p0, 0x7fffffff

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    invoke-virtual {p2, p1, p0, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1, v4, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 56
    .line 57
    .line 58
    new-instance p0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string/jumbo p2, "setupChangeTransitionHierarchy: reparent "

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p2, " to "

    .line 70
    .line 71
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string/jumbo p2, "setupChangeTransitionHierarchy: invalid surfaces, snapshot="

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p2, ", container="

    .line 103
    .line 104
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "StandardChangeTransition"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
