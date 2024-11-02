.class public final Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;


# instance fields
.field public final mDecorViewModel:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

.field public final mDisplayId:I

.field public mEndImeTop:I

.field public mImeShown:Z

.field public mLastYOffset:I

.field public final mStartBounds:Landroid/graphics/Rect;

.field public mStartImeTop:I

.field public mTargetYOffset:I

.field public mYOffsetForIme:I

.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformTaskListener;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/freeform/FreeformTaskListener;ILcom/android/wm/shell/windowdecor/WindowDecorViewModel;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->this$0:Lcom/android/wm/shell/freeform/FreeformTaskListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mStartBounds:Landroid/graphics/Rect;

    .line 4
    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mDisplayId:I

    .line 5
    check-cast p3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mDecorViewModel:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformTaskListener;ILcom/android/wm/shell/windowdecor/WindowDecorViewModel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskListener;ILcom/android/wm/shell/windowdecor/WindowDecorViewModel;)V

    return-void
.end method


# virtual methods
.method public final canImePositioning(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mDisplayId:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->this$0:Lcom/android/wm/shell/freeform/FreeformTaskListener;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 12
    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final onImeControlTargetChanged(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->canImePositioning(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mImeShown:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mImeShown:Z

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mTargetYOffset:I

    .line 18
    .line 19
    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mLastYOffset:I

    .line 20
    .line 21
    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mYOffsetForIme:I

    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public final onImeEndPositioning(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->this$0:Lcom/android/wm/shell/freeform/FreeformTaskListener;

    .line 2
    .line 3
    if-nez p2, :cond_4

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->canImePositioning(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p2, "onImeEndPositioning: tid #"

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, v0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 20
    .line 21
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 22
    .line 23
    const-string v1, "ImePositionProcessor"

    .line 24
    .line 25
    invoke-static {p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mLastYOffset:I

    .line 29
    .line 30
    int-to-float p1, p1

    .line 31
    iget p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mTargetYOffset:I

    .line 32
    .line 33
    int-to-float p2, p2

    .line 34
    const/high16 v1, 0x3f800000    # 1.0f

    .line 35
    .line 36
    invoke-static {p2, p1, v1, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    float-to-int p1, p1

    .line 41
    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mYOffsetForIme:I

    .line 42
    .line 43
    iget-object p1, v0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 44
    .line 45
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mDecorViewModel:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 46
    .line 47
    iget-object p2, p2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 48
    .line 49
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    iget-object p2, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    iput-boolean v1, p2, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mImeAnimating:Z

    .line 63
    .line 64
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 65
    .line 66
    iput-boolean v1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mAnimating:Z

    .line 67
    .line 68
    :cond_1
    iget p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mLastYOffset:I

    .line 69
    .line 70
    iget p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mTargetYOffset:I

    .line 71
    .line 72
    if-ne p1, p2, :cond_2

    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    iget-object p1, v0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 76
    .line 77
    iget p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mYOffsetForIme:I

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mAdjustImeStateController:Lcom/android/wm/shell/freeform/AdjustImeStateController;

    .line 80
    .line 81
    invoke-interface {v0, p1, p2}, Lcom/android/wm/shell/freeform/AdjustImeStateController;->onLayoutPositionEnd(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 82
    .line 83
    .line 84
    iget-boolean p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mImeShown:Z

    .line 85
    .line 86
    if-nez p0, :cond_3

    .line 87
    .line 88
    invoke-interface {v0}, Lcom/android/wm/shell/freeform/AdjustImeStateController;->clearImeAdjustedTask()V

    .line 89
    .line 90
    .line 91
    :cond_3
    return-void

    .line 92
    :cond_4
    :goto_0
    iget-object p0, v0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mAdjustImeStateController:Lcom/android/wm/shell/freeform/AdjustImeStateController;

    .line 93
    .line 94
    invoke-interface {p0}, Lcom/android/wm/shell/freeform/AdjustImeStateController;->clearImeAdjustedTask()V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final onImePositionChanged(II)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->canImePositioning(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mLastYOffset:I

    .line 9
    .line 10
    int-to-float p1, p1

    .line 11
    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mTargetYOffset:I

    .line 12
    .line 13
    int-to-float v0, v0

    .line 14
    iget v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mEndImeTop:I

    .line 15
    .line 16
    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mStartImeTop:I

    .line 17
    .line 18
    sub-int/2addr v1, v2

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-string p2, "ImePositionProcessor"

    .line 22
    .line 23
    const-string v1, "getProgress: can\'t divide by zero"

    .line 24
    .line 25
    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    int-to-float p2, p2

    .line 31
    int-to-float v2, v2

    .line 32
    sub-float/2addr p2, v2

    .line 33
    int-to-float v1, v1

    .line 34
    div-float/2addr p2, v1

    .line 35
    :goto_0
    invoke-static {v0, p1, p2, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    float-to-int p1, p1

    .line 40
    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mYOffsetForIme:I

    .line 41
    .line 42
    iget p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mLastYOffset:I

    .line 43
    .line 44
    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mTargetYOffset:I

    .line 45
    .line 46
    if-ne p2, v0, :cond_2

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->this$0:Lcom/android/wm/shell/freeform/FreeformTaskListener;

    .line 50
    .line 51
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mAdjustImeStateController:Lcom/android/wm/shell/freeform/AdjustImeStateController;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 54
    .line 55
    invoke-interface {p2, p0, p1}, Lcom/android/wm/shell/freeform/AdjustImeStateController;->onImePositionChanged(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final onImeStartPositioning(IIIZZ)I
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->canImePositioning(I)Z

    .line 2
    .line 3
    .line 4
    move-result p5

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p5, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move p5, p2

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move p5, p3

    .line 14
    :goto_0
    iput p5, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mStartImeTop:I

    .line 15
    .line 16
    if-eqz p4, :cond_2

    .line 17
    .line 18
    move p2, p3

    .line 19
    :cond_2
    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mEndImeTop:I

    .line 20
    .line 21
    iput-boolean p4, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mImeShown:Z

    .line 22
    .line 23
    new-instance p2, Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object p3, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->this$0:Lcom/android/wm/shell/freeform/FreeformTaskListener;

    .line 29
    .line 30
    if-eqz p4, :cond_3

    .line 31
    .line 32
    iget-object p5, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mAdjustImeStateController:Lcom/android/wm/shell/freeform/AdjustImeStateController;

    .line 33
    .line 34
    iget-object v1, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 35
    .line 36
    invoke-interface {p5, v1, p2}, Lcom/android/wm/shell/freeform/AdjustImeStateController;->getImeStartBounds(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)V

    .line 37
    .line 38
    .line 39
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result p5

    .line 43
    const/4 v1, 0x1

    .line 44
    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mStartBounds:Landroid/graphics/Rect;

    .line 45
    .line 46
    const-string v3, "ImePositionProcessor"

    .line 47
    .line 48
    if-eqz p5, :cond_7

    .line 49
    .line 50
    iget p5, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mYOffsetForIme:I

    .line 51
    .line 52
    if-eqz p5, :cond_6

    .line 53
    .line 54
    iget-object p5, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mShowImeTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 55
    .line 56
    if-eqz p5, :cond_4

    .line 57
    .line 58
    iget-object v4, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 59
    .line 60
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 61
    .line 62
    iget p5, p5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 63
    .line 64
    if-ne v4, p5, :cond_6

    .line 65
    .line 66
    :cond_4
    iget p5, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastOrientation:I

    .line 67
    .line 68
    iget-object v4, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 69
    .line 70
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 71
    .line 72
    iget v5, v4, Landroid/content/res/Configuration;->orientation:I

    .line 73
    .line 74
    if-ne p5, v5, :cond_6

    .line 75
    .line 76
    iget p5, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastDisplayRotation:I

    .line 77
    .line 78
    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 79
    .line 80
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-ne p5, v4, :cond_6

    .line 85
    .line 86
    iget p5, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastDisplayDeviceType:I

    .line 87
    .line 88
    iget-object v4, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    iget v4, v4, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 95
    .line 96
    if-eq p5, v4, :cond_5

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    move p5, v0

    .line 100
    goto :goto_2

    .line 101
    :cond_6
    :goto_1
    move p5, v1

    .line 102
    :goto_2
    if-eqz p5, :cond_8

    .line 103
    .line 104
    iget-object p5, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 105
    .line 106
    iget-object p5, p5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 107
    .line 108
    iget v4, p5, Landroid/content/res/Configuration;->orientation:I

    .line 109
    .line 110
    iput v4, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastOrientation:I

    .line 111
    .line 112
    iget-object p5, p5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 113
    .line 114
    invoke-virtual {p5}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 115
    .line 116
    .line 117
    move-result p5

    .line 118
    iput p5, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastDisplayRotation:I

    .line 119
    .line 120
    iget-object p5, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 121
    .line 122
    iget-object v4, p5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 123
    .line 124
    iget v4, v4, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 125
    .line 126
    iput v4, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastDisplayDeviceType:I

    .line 127
    .line 128
    invoke-virtual {p5}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 129
    .line 130
    .line 131
    move-result-object p5

    .line 132
    iget-object p5, p5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 133
    .line 134
    invoke-virtual {p5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 135
    .line 136
    .line 137
    move-result-object p5

    .line 138
    invoke-virtual {p2, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_7
    const-string p5, "Task bounds were changed by drag"

    .line 146
    .line 147
    invoke-static {v3, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 151
    .line 152
    .line 153
    :cond_8
    :goto_3
    iget-object p5, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mShowImeTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 154
    .line 155
    if-eqz p5, :cond_9

    .line 156
    .line 157
    iget-object v4, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 158
    .line 159
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 160
    .line 161
    iget p5, p5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 162
    .line 163
    if-eq v4, p5, :cond_9

    .line 164
    .line 165
    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mYOffsetForIme:I

    .line 166
    .line 167
    :cond_9
    iget-object p5, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mDecorViewModel:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 168
    .line 169
    if-nez p4, :cond_b

    .line 170
    .line 171
    iget-object v4, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 172
    .line 173
    iget-object v5, p5, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 174
    .line 175
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 176
    .line 177
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    check-cast v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 182
    .line 183
    if-eqz v4, :cond_a

    .line 184
    .line 185
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 186
    .line 187
    iget-boolean v5, v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mIsAdjusted:Z

    .line 188
    .line 189
    if-nez v5, :cond_a

    .line 190
    .line 191
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mOriginBounds:Landroid/graphics/Rect;

    .line 192
    .line 193
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_a

    .line 198
    .line 199
    move v4, v1

    .line 200
    goto :goto_4

    .line 201
    :cond_a
    move v4, v0

    .line 202
    :goto_4
    if-eqz v4, :cond_b

    .line 203
    .line 204
    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mTargetYOffset:I

    .line 205
    .line 206
    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mLastYOffset:I

    .line 207
    .line 208
    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mYOffsetForIme:I

    .line 209
    .line 210
    return v0

    .line 211
    :cond_b
    iget v4, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mYOffsetForIme:I

    .line 212
    .line 213
    iput v4, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mLastYOffset:I

    .line 214
    .line 215
    iget-boolean v4, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mImeShown:Z

    .line 216
    .line 217
    if-eqz v4, :cond_e

    .line 218
    .line 219
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->canImePositioning(I)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-nez p1, :cond_c

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_c
    iget-object p1, p5, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayController;->getInsetsState(I)Landroid/view/InsetsState;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    iget-object v4, p5, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 233
    .line 234
    iget v5, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mDisplayId:I

    .line 235
    .line 236
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    iget-object v5, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTmpFrame:Landroid/graphics/Rect;

    .line 241
    .line 242
    invoke-virtual {v4, v5, v0}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 243
    .line 244
    .line 245
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    or-int/2addr v4, v6

    .line 254
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    or-int/2addr v4, v6

    .line 259
    invoke-virtual {p1, v5, v4, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 264
    .line 265
    .line 266
    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    .line 267
    .line 268
    iget v4, v5, Landroid/graphics/Rect;->bottom:I

    .line 269
    .line 270
    sub-int/2addr p1, v4

    .line 271
    if-lez p1, :cond_e

    .line 272
    .line 273
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 274
    .line 275
    iget v4, v5, Landroid/graphics/Rect;->top:I

    .line 276
    .line 277
    sub-int/2addr v2, v4

    .line 278
    iget-object v4, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mContext:Landroid/content/Context;

    .line 279
    .line 280
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    const v5, 0x10503cc

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    int-to-float v4, v4

    .line 292
    const/high16 v5, 0x40200000    # 2.5f

    .line 293
    .line 294
    mul-float/2addr v4, v5

    .line 295
    float-to-int v4, v4

    .line 296
    sub-int/2addr v2, v4

    .line 297
    iget-object v4, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 298
    .line 299
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 300
    .line 301
    iget-object v5, p5, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 302
    .line 303
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    check-cast v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 308
    .line 309
    if-nez v4, :cond_d

    .line 310
    .line 311
    move v4, v0

    .line 312
    goto :goto_5

    .line 313
    :cond_d
    invoke-virtual {v4}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getCaptionVisibleHeight()I

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    :goto_5
    sub-int/2addr v2, v4

    .line 318
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    neg-int p1, p1

    .line 327
    goto :goto_7

    .line 328
    :cond_e
    :goto_6
    move p1, v0

    .line 329
    :goto_7
    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mTargetYOffset:I

    .line 330
    .line 331
    iget-object p1, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 332
    .line 333
    iget-object v2, p5, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 334
    .line 335
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 336
    .line 337
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    check-cast p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 342
    .line 343
    if-eqz p1, :cond_f

    .line 344
    .line 345
    iget-object v2, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 346
    .line 347
    iput-boolean v1, v2, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mImeAnimating:Z

    .line 348
    .line 349
    iput-boolean v1, v2, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mImeShowing:Z

    .line 350
    .line 351
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 352
    .line 353
    iput-boolean v1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mAnimating:Z

    .line 354
    .line 355
    :cond_f
    iget p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mLastYOffset:I

    .line 356
    .line 357
    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mTargetYOffset:I

    .line 358
    .line 359
    if-ne p1, p0, :cond_12

    .line 360
    .line 361
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 362
    .line 363
    .line 364
    move-result p0

    .line 365
    if-nez p0, :cond_11

    .line 366
    .line 367
    iget-object p0, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 368
    .line 369
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 374
    .line 375
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 376
    .line 377
    .line 378
    move-result-object p0

    .line 379
    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result p0

    .line 383
    if-nez p0, :cond_11

    .line 384
    .line 385
    const-string p0, "onImeStartPositioning: reset bounds. ime show started during fling animation."

    .line 386
    .line 387
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .line 389
    .line 390
    iget-object p0, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 391
    .line 392
    iget-object p1, p5, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 393
    .line 394
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 395
    .line 396
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object p0

    .line 400
    check-cast p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 401
    .line 402
    if-eqz p0, :cond_10

    .line 403
    .line 404
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 405
    .line 406
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->setOriginBounds(Landroid/graphics/Rect;)V

    .line 407
    .line 408
    .line 409
    :cond_10
    new-instance p0, Landroid/window/WindowContainerTransaction;

    .line 410
    .line 411
    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 412
    .line 413
    .line 414
    iget-object p1, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 415
    .line 416
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 417
    .line 418
    invoke-virtual {p0, p1, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 419
    .line 420
    .line 421
    iget-object p1, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 422
    .line 423
    invoke-virtual {p1, p0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 424
    .line 425
    .line 426
    :cond_11
    return v0

    .line 427
    :cond_12
    if-eqz p4, :cond_13

    .line 428
    .line 429
    iget-object p1, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 430
    .line 431
    goto :goto_8

    .line 432
    :cond_13
    const/4 p1, 0x0

    .line 433
    :goto_8
    iput-object p1, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mShowImeTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 434
    .line 435
    iget-object p1, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mAdjustImeStateController:Lcom/android/wm/shell/freeform/AdjustImeStateController;

    .line 436
    .line 437
    iget-object p2, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 438
    .line 439
    invoke-interface {p1, p2, p0}, Lcom/android/wm/shell/freeform/AdjustImeStateController;->onImeStartPositioning(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 440
    .line 441
    .line 442
    new-instance p0, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    const-string p1, "onImeStartPositioning: tid #"

    .line 445
    .line 446
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    iget-object p1, p3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 450
    .line 451
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 452
    .line 453
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    const-string p1, ", showing="

    .line 457
    .line 458
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object p0

    .line 468
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .line 470
    .line 471
    return v1
.end method
