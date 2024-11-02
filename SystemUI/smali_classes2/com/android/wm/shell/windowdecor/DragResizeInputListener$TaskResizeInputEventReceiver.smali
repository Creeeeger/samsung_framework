.class public final Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;


# instance fields
.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mConsumeBatchEventRunnable:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$$ExternalSyntheticLambda0;

.field public mConsumeBatchEventScheduled:Z

.field public mShouldHandleEvents:Z

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;Landroid/view/InputChannel;Landroid/os/Handler;Landroid/view/Choreographer;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 3
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 4
    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    .line 5
    new-instance p1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mConsumeBatchEventRunnable:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;Landroid/view/InputChannel;Landroid/os/Handler;Landroid/view/Choreographer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;-><init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;Landroid/view/InputChannel;Landroid/os/Handler;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public final calculateCornersCtrlType(FF)I
    .locals 7

    .line 1
    float-to-int p1, p1

    .line 2
    float-to-int p2, p2

    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mIsPointerInput:Z

    .line 6
    .line 7
    const/16 v2, 0xa

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x6

    .line 11
    const/16 v5, 0x9

    .line 12
    .line 13
    const/4 v6, 0x5

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerLeftTopCornerBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return v6

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerLeftBottomCornerBounds:Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    return v5

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerRightTopCornerBounds:Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    return v4

    .line 47
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerRightBottomCornerBounds:Landroid/graphics/Rect;

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    return v2

    .line 58
    :cond_3
    return v3

    .line 59
    :cond_4
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftTopCornerRegion:Landroid/graphics/Region;

    .line 60
    .line 61
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    return v6

    .line 68
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftBottomCornerRegion:Landroid/graphics/Region;

    .line 71
    .line 72
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    return v5

    .line 79
    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightTopCornerRegion:Landroid/graphics/Region;

    .line 82
    .line 83
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    return v4

    .line 90
    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightBottomCornerRegion:Landroid/graphics/Region;

    .line 93
    .line 94
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_8

    .line 99
    .line 100
    return v2

    .line 101
    :cond_8
    return v3
.end method

.method public final calculateResizeHandlesCtrlType(FF)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mIsPointerInput:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_5

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerTouchableRegion:Landroid/graphics/Region;

    .line 10
    .line 11
    float-to-int v1, p1

    .line 12
    float-to-int v4, p2

    .line 13
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Region;->contains(II)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return v3

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    cmpg-float v1, p1, v0

    .line 22
    .line 23
    if-gez v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 26
    .line 27
    iget v1, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerResizeHandleThickness:I

    .line 28
    .line 29
    neg-int v1, v1

    .line 30
    int-to-float v1, v1

    .line 31
    cmpl-float v1, p1, v1

    .line 32
    .line 33
    if-ltz v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v2, v3

    .line 37
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 38
    .line 39
    iget v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 40
    .line 41
    int-to-float v3, v1

    .line 42
    cmpl-float v3, p1, v3

    .line 43
    .line 44
    if-lez v3, :cond_2

    .line 45
    .line 46
    iget v3, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerResizeHandleThickness:I

    .line 47
    .line 48
    add-int/2addr v1, v3

    .line 49
    int-to-float v1, v1

    .line 50
    cmpg-float p1, p1, v1

    .line 51
    .line 52
    if-gtz p1, :cond_2

    .line 53
    .line 54
    cmpl-float p1, p2, v0

    .line 55
    .line 56
    if-lez p1, :cond_2

    .line 57
    .line 58
    iget p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 59
    .line 60
    int-to-float p1, p1

    .line 61
    cmpg-float p1, p2, p1

    .line 62
    .line 63
    if-gtz p1, :cond_2

    .line 64
    .line 65
    or-int/lit8 v2, v2, 0x2

    .line 66
    .line 67
    :cond_2
    cmpg-float p1, p2, v0

    .line 68
    .line 69
    if-gez p1, :cond_3

    .line 70
    .line 71
    iget p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerResizeHandleThickness:I

    .line 72
    .line 73
    neg-int p1, p1

    .line 74
    int-to-float p1, p1

    .line 75
    cmpl-float p1, p2, p1

    .line 76
    .line 77
    if-ltz p1, :cond_3

    .line 78
    .line 79
    or-int/lit8 v2, v2, 0x4

    .line 80
    .line 81
    :cond_3
    iget p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 82
    .line 83
    int-to-float v0, p1

    .line 84
    cmpl-float v0, p2, v0

    .line 85
    .line 86
    if-lez v0, :cond_4

    .line 87
    .line 88
    iget p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerResizeHandleThickness:I

    .line 89
    .line 90
    add-int/2addr p1, p0

    .line 91
    int-to-float p0, p1

    .line 92
    cmpg-float p0, p2, p0

    .line 93
    .line 94
    if-gtz p0, :cond_4

    .line 95
    .line 96
    or-int/lit8 v2, v2, 0x8

    .line 97
    .line 98
    :cond_4
    return v2

    .line 99
    :cond_5
    iget p0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInnerResizeHandleThickness:I

    .line 100
    .line 101
    int-to-float v1, p0

    .line 102
    cmpg-float v1, p1, v1

    .line 103
    .line 104
    if-gez v1, :cond_6

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    move v2, v3

    .line 108
    :goto_1
    iget v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 109
    .line 110
    sub-int/2addr v1, p0

    .line 111
    int-to-float v1, v1

    .line 112
    cmpl-float p1, p1, v1

    .line 113
    .line 114
    if-lez p1, :cond_7

    .line 115
    .line 116
    or-int/lit8 v2, v2, 0x2

    .line 117
    .line 118
    :cond_7
    int-to-float p1, p0

    .line 119
    cmpg-float p1, p2, p1

    .line 120
    .line 121
    if-gez p1, :cond_8

    .line 122
    .line 123
    or-int/lit8 v2, v2, 0x4

    .line 124
    .line 125
    :cond_8
    iget p1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 126
    .line 127
    sub-int/2addr p1, p0

    .line 128
    int-to-float p0, p1

    .line 129
    cmpl-float p0, p2, p0

    .line 130
    .line 131
    if-lez p0, :cond_9

    .line 132
    .line 133
    or-int/lit8 v2, v2, 0x8

    .line 134
    .line 135
    :cond_9
    return v2
.end method

.method public final dispose()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 7
    .line 8
    const/high16 v0, -0x40800000    # -1.0f

    .line 9
    .line 10
    invoke-interface {p0, v0, v0}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningEnd(FF)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 5
    .line 6
    const/16 v1, 0x4002

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mIsStylusInput:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 15
    .line 16
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mIsStylusInput:Z

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x2002

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v1, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    move v1, v2

    .line 34
    :goto_1
    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mIsPointerInput:Z

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_a

    .line 41
    .line 42
    const-string v1, " in handleMotionEvent"

    .line 43
    .line 44
    const-string v4, "Invalid dragPointerIndex="

    .line 45
    .line 46
    const-string v5, "DragResizeInputListener"

    .line 47
    .line 48
    const/4 v6, -0x1

    .line 49
    if-eq v0, v2, :cond_7

    .line 50
    .line 51
    const/4 v7, 0x2

    .line 52
    if-eq v0, v7, :cond_4

    .line 53
    .line 54
    const/4 v7, 0x3

    .line 55
    if-eq v0, v7, :cond_7

    .line 56
    .line 57
    const/4 v1, 0x7

    .line 58
    if-eq v0, v1, :cond_3

    .line 59
    .line 60
    const/16 v1, 0x9

    .line 61
    .line 62
    if-eq v0, v1, :cond_3

    .line 63
    .line 64
    const/16 p1, 0xa

    .line 65
    .line 66
    if-eq v0, p1, :cond_2

    .line 67
    .line 68
    goto/16 :goto_8

    .line 69
    .line 70
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mHandler:Landroid/os/Handler;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mSetDefaultPointerRunnable:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$1;

    .line 75
    .line 76
    const-wide/16 v0, 0x64

    .line 77
    .line 78
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    .line 80
    .line 81
    goto/16 :goto_9

    .line 82
    .line 83
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXCursorPosition()F

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYCursorPosition()F

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->updateCursorType(FF)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_9

    .line 95
    .line 96
    :cond_4
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    .line 97
    .line 98
    if-nez v0, :cond_5

    .line 99
    .line 100
    goto/16 :goto_8

    .line 101
    .line 102
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 103
    .line 104
    iget v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragPointerId:I

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-ne v0, v6, :cond_6

    .line 111
    .line 112
    new-instance p0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    goto/16 :goto_8

    .line 131
    .line 132
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 143
    .line 144
    invoke-interface {p0, v1, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningMove(FF)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_9

    .line 148
    .line 149
    :cond_7
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    .line 150
    .line 151
    if-eqz v0, :cond_9

    .line 152
    .line 153
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 154
    .line 155
    iget v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragPointerId:I

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-ne v0, v6, :cond_8

    .line 162
    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 182
    .line 183
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 184
    .line 185
    const/high16 v0, -0x40800000    # -1.0f

    .line 186
    .line 187
    invoke-interface {p1, v0, v0}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningEnd(FF)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_8
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 192
    .line 193
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 194
    .line 195
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    invoke-interface {v1, v4, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningEnd(FF)V

    .line 204
    .line 205
    .line 206
    :cond_9
    :goto_2
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    .line 207
    .line 208
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 209
    .line 210
    iput v6, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragPointerId:I

    .line 211
    .line 212
    goto/16 :goto_9

    .line 213
    .line 214
    :cond_a
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    const/high16 v5, 0x10000000

    .line 227
    .line 228
    and-int/2addr v4, v5

    .line 229
    if-eqz v4, :cond_b

    .line 230
    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    and-int/2addr v4, v2

    .line 236
    if-nez v4, :cond_b

    .line 237
    .line 238
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    .line 239
    .line 240
    goto :goto_7

    .line 241
    :cond_b
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->calculateCornersCtrlType(FF)I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-eqz v4, :cond_c

    .line 246
    .line 247
    move v4, v2

    .line 248
    goto :goto_3

    .line 249
    :cond_c
    move v4, v3

    .line 250
    :goto_3
    if-nez v4, :cond_f

    .line 251
    .line 252
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->calculateResizeHandlesCtrlType(FF)I

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-eqz v4, :cond_d

    .line 257
    .line 258
    move v4, v2

    .line 259
    goto :goto_4

    .line 260
    :cond_d
    move v4, v3

    .line 261
    :goto_4
    if-eqz v4, :cond_e

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_e
    move v4, v3

    .line 265
    goto :goto_6

    .line 266
    :cond_f
    :goto_5
    move v4, v2

    .line 267
    :goto_6
    iput-boolean v4, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    .line 268
    .line 269
    :goto_7
    iget-boolean v4, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    .line 270
    .line 271
    if-eqz v4, :cond_10

    .line 272
    .line 273
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 274
    .line 275
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    iput v5, v4, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragPointerId:I

    .line 280
    .line 281
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->calculateCornersCtrlType(FF)I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->calculateResizeHandlesCtrlType(FF)I

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    or-int/2addr v3, v5

    .line 298
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 299
    .line 300
    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 301
    .line 302
    invoke-interface {v5, v4, p1, v3}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningStart(FFI)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->updateCursorType(FF)V

    .line 306
    .line 307
    .line 308
    goto :goto_9

    .line 309
    :cond_10
    :goto_8
    move v2, v3

    .line 310
    :goto_9
    return v2
.end method

.method public final onBatchedInputEventPending(I)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mConsumeBatchEventScheduled:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mConsumeBatchEventRunnable:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v2, v0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mConsumeBatchEventScheduled:Z

    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 10
    .line 11
    move-object v1, p1

    .line 12
    check-cast v1, Landroid/view/MotionEvent;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/DragDetector;->onMotionEvent(Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final updateCursorType(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mMultitaskingWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 8
    .line 9
    iget-boolean v1, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mIsAdjusted:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mSetDefaultPointerRunnable:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$1;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->calculateCornersCtrlType(FF)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->calculateResizeHandlesCtrlType(FF)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    or-int/2addr p1, v0

    .line 30
    packed-switch p1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    :pswitch_0
    const/16 p1, 0x3e8

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_1
    const/16 p1, 0x3f8

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_2
    const/16 p1, 0x3f9

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_3
    const/16 p1, 0x3f7

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_4
    const/16 p1, 0x3f6

    .line 46
    .line 47
    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 48
    .line 49
    iget-boolean v0, p2, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mIsStylusInput:Z

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-static {p1}, Lcom/android/wm/shell/common/DragResizePointer;->convertStylusIconType(I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-boolean p2, p2, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mIsDexEnabled:Z

    .line 59
    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    invoke-static {p1}, Lcom/android/wm/shell/common/DragResizePointer;->convertDexPointerIconType(I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputManager:Landroid/hardware/input/InputManager;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
