.class public final Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mDisplayBounds:Landroid/graphics/Rect;

.field public final mMaxBounds:Landroid/graphics/Rect;

.field public final mMotionAnimators:Landroid/util/ArrayMap;

.field public final mSafeBounds:Landroid/graphics/Rect;

.field public final mStableBounds:Landroid/graphics/Rect;

.field public final mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMaxBounds:Landroid/graphics/Rect;

    .line 12
    .line 13
    new-instance v1, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    .line 19
    .line 20
    new-instance v2, Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    .line 26
    .line 27
    new-instance v3, Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mSafeBounds:Landroid/graphics/Rect;

    .line 33
    .line 34
    new-instance v4, Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v4, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 42
    .line 43
    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 50
    .line 51
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    iget p3, v1, Landroid/graphics/Rect;->left:I

    .line 66
    .line 67
    iget p4, p1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mMinVisibleWidth:I

    .line 68
    .line 69
    add-int/2addr p3, p4

    .line 70
    sub-int/2addr p3, p2

    .line 71
    iget p4, v1, Landroid/graphics/Rect;->top:I

    .line 72
    .line 73
    iget-object v2, p1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getFreeformThickness$1()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    add-int/2addr v4, p4

    .line 80
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getCaptionVisibleHeight()I

    .line 81
    .line 82
    .line 83
    move-result p4

    .line 84
    add-int/2addr p4, v4

    .line 85
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 86
    .line 87
    iget v4, p1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mMinVisibleWidth:I

    .line 88
    .line 89
    sub-int/2addr v2, v4

    .line 90
    add-int/2addr v2, p2

    .line 91
    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 92
    .line 93
    sub-int/2addr p2, v4

    .line 94
    add-int/2addr p2, p0

    .line 95
    invoke-virtual {v0, p3, p4, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 99
    .line 100
    .line 101
    iget p0, v3, Landroid/graphics/Rect;->left:I

    .line 102
    .line 103
    iget p1, p1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mScreenEdgeInset:I

    .line 104
    .line 105
    add-int/2addr p0, p1

    .line 106
    iput p0, v3, Landroid/graphics/Rect;->left:I

    .line 107
    .line 108
    iget p0, v3, Landroid/graphics/Rect;->right:I

    .line 109
    .line 110
    sub-int/2addr p0, p1

    .line 111
    iput p0, v3, Landroid/graphics/Rect;->right:I

    .line 112
    .line 113
    iget p0, v3, Landroid/graphics/Rect;->top:I

    .line 114
    .line 115
    add-int/2addr p0, p1

    .line 116
    iput p0, v3, Landroid/graphics/Rect;->top:I

    .line 117
    .line 118
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 119
    .line 120
    mul-int/lit8 p1, p1, 0x2

    .line 121
    .line 122
    sub-int/2addr p0, p1

    .line 123
    iput p0, v3, Landroid/graphics/Rect;->bottom:I

    .line 124
    .line 125
    return-void
.end method


# virtual methods
.method public final clearAnimator(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x3

    .line 3
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    .line 4
    .line 5
    if-gt v0, v1, :cond_1

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

    .line 20
    .line 21
    invoke-interface {v1, p1}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;->cancel(Z)V

    .line 22
    .line 23
    .line 24
    sget-boolean v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->DEBUG:Z

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const-string v1, "cancelMotion: animType="

    .line 29
    .line 30
    const-string v2, " mTaskInfo="

    .line 31
    .line 32
    invoke-static {v1, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "TaskMotionController"

    .line 46
    .line 47
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final isAnimating(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

    .line 16
    .line 17
    invoke-interface {p0}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;->isAnimating()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method

.method public final makeAnimator(ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;)Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 6
    .line 7
    invoke-direct {v0, p1, v1, p2, p3}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;-><init>(ILcom/android/wm/shell/windowdecor/FreeformStashState;Landroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
