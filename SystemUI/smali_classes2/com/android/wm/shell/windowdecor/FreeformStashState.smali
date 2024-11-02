.class public final Lcom/android/wm/shell/windowdecor/FreeformStashState;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAnimType:I

.field public mAnimating:Z

.field public mFreeformStashYFraction:F

.field public mFreeformThickness:I

.field public final mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

.field public mScale:F

.field public mStashDimOverlay:Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;

.field public mStashType:I

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mFreeformStashYFraction:F

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final createStashDimOverlay(Landroid/view/SurfaceControl;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashDimOverlay:Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashDimOverlay:Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    .line 22
    const v0, 0x7f06016b

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const v1, 0x7f070dcc

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashDimOverlay:Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;

    .line 45
    .line 46
    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 47
    .line 48
    iget-object p3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 49
    .line 50
    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    iget p0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mFreeformThickness:I

    .line 55
    .line 56
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLock:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter v2

    .line 59
    :try_start_0
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->isLeashValidLocked()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 66
    .line 67
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 70
    .line 71
    .line 72
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 73
    .line 74
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    .line 75
    .line 76
    const/16 v5, 0x4e22

    .line 77
    .line 78
    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 79
    .line 80
    .line 81
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 82
    .line 83
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/graphics/Color;->getComponents()[F

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v3, v4, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 90
    .line 91
    .line 92
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 93
    .line 94
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    invoke-virtual {v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 98
    .line 99
    .line 100
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 101
    .line 102
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    .line 103
    .line 104
    invoke-virtual {v0, v3, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 105
    .line 106
    .line 107
    iget-object p1, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 108
    .line 109
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    .line 110
    .line 111
    neg-int v3, p0

    .line 112
    int-to-float v3, v3

    .line 113
    neg-int v4, p4

    .line 114
    sub-int/2addr v4, p0

    .line 115
    int-to-float v4, v4

    .line 116
    invoke-virtual {p1, v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 117
    .line 118
    .line 119
    iget-object p1, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mCropRect:Landroid/graphics/Rect;

    .line 120
    .line 121
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    mul-int/lit8 p0, p0, 0x2

    .line 126
    .line 127
    add-int/2addr v0, p0

    .line 128
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 129
    .line 130
    .line 131
    move-result p3

    .line 132
    add-int/2addr p3, p4

    .line 133
    add-int/2addr p3, p0

    .line 134
    const/4 p0, 0x0

    .line 135
    invoke-virtual {p1, p0, p0, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 136
    .line 137
    .line 138
    iget-object p0, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 139
    .line 140
    iget-object p1, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    .line 141
    .line 142
    iget-object p3, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mCropRect:Landroid/graphics/Rect;

    .line 143
    .line 144
    invoke-virtual {p0, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 145
    .line 146
    .line 147
    iget-object p0, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 148
    .line 149
    iget-object p1, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    .line 150
    .line 151
    int-to-float p2, p2

    .line 152
    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 153
    .line 154
    .line 155
    iget-object p0, v1, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 158
    .line 159
    .line 160
    :cond_0
    monitor-exit v2

    .line 161
    goto :goto_0

    .line 162
    :catchall_0
    move-exception p0

    .line 163
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    throw p0

    .line 165
    :cond_1
    :goto_0
    return-void
.end method

.method public final destroyStashDimOverlay()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashDimOverlay:Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->isLeashValidLocked()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    .line 18
    .line 19
    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 25
    .line 26
    .line 27
    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    .line 28
    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iput-object v3, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashDimOverlay:Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0

    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public final getStashScaleOffsetX(I)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isLeftStashed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    int-to-float p1, p1

    .line 8
    iget v0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    .line 9
    .line 10
    mul-float v1, p1, v0

    .line 11
    .line 12
    sub-float/2addr p1, v1

    .line 13
    iget p0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mFreeformThickness:I

    .line 14
    .line 15
    int-to-float p0, p0

    .line 16
    mul-float/2addr p0, v0

    .line 17
    sub-float/2addr p1, p0

    .line 18
    return p1

    .line 19
    :cond_0
    iget p1, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashType:I

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    :goto_0
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget p1, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mFreeformThickness:I

    .line 30
    .line 31
    int-to-float p1, p1

    .line 32
    iget p0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    .line 33
    .line 34
    mul-float/2addr p1, p0

    .line 35
    return p1

    .line 36
    :cond_2
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final isLeftStashed()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashType:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final isStashed()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isLeftStashed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    iget p0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashType:I

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    move p0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p0, v2

    .line 17
    :goto_0
    if-eqz p0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v1, v2

    .line 21
    :cond_2
    :goto_1
    return v1
.end method

.method public final setDimOverlayAlpha(F)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashDimOverlay:Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->isLeashValidLocked()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    .line 24
    .line 25
    invoke-virtual {v1, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 31
    .line 32
    .line 33
    :cond_0
    monitor-exit v0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public final setStashed(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashType:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashType:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->destroyStashDimOverlay()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final updateDimBounds(IILandroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashDimOverlay:Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->isLeashValidLocked()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    .line 17
    .line 18
    neg-int v3, p1

    .line 19
    int-to-float v3, v3

    .line 20
    neg-int v4, p2

    .line 21
    sub-int/2addr v4, p1

    .line 22
    int-to-float v4, v4

    .line 23
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mCropRect:Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    mul-int/lit8 p1, p1, 0x2

    .line 33
    .line 34
    add-int/2addr v2, p1

    .line 35
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    add-int/2addr p3, p2

    .line 40
    add-int/2addr p3, p1

    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-virtual {v1, p1, p1, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 46
    .line 47
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mCropRect:Landroid/graphics/Rect;

    .line 50
    .line 51
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 56
    .line 57
    .line 58
    :cond_0
    monitor-exit v0

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0

    .line 63
    :cond_1
    :goto_0
    return-void
.end method
