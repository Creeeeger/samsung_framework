.class public final Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAllowGesture:Z

.field public mAngle:F

.field public final mContext:Landroid/content/Context;

.field public mCtrlType:I

.field public mDelta:I

.field public final mDisplayBounds:Landroid/graphics/Rect;

.field public final mDisplayId:I

.field public final mDownBounds:Landroid/graphics/Rect;

.field public final mDownPoint:Landroid/graphics/PointF;

.field public final mDownSecondPoint:Landroid/graphics/PointF;

.field public final mDragCornerSize:Landroid/graphics/Rect;

.field public mEnableDragCornerResize:Z

.field public mEnablePinchResize:Z

.field public mFirstIndex:I

.field public mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mInputMonitor:Landroid/view/InputMonitor;

.field public mIsAttached:Z

.field public mIsEnabled:Z

.field public mIsSysUiStateValid:Z

.field public final mLastPoint:Landroid/graphics/PointF;

.field public final mLastResizeBounds:Landroid/graphics/Rect;

.field public final mLastSecondPoint:Landroid/graphics/PointF;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMaxSize:Landroid/graphics/Point;

.field public final mMinSize:Landroid/graphics/Point;

.field public final mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

.field public final mMovementBoundsSupplier:Ljava/util/function/Function;

.field public mOhmOffset:I

.field public mOngoingPinchToResize:Z

.field public final mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field public final mPinchResizingAlgorithm:Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;

.field public final mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

.field public final mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

.field public final mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

.field public final mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field public final mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

.field public final mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

.field public mPointerIconType:I

.field public mSecondIndex:I

.field public mThresholdCrossed:Z

.field public final mTmpBottomLeftCorner:Landroid/graphics/Rect;

.field public final mTmpBottomRightCorner:Landroid/graphics/Rect;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public final mTmpTopLeftCorner:Landroid/graphics/Rect;

.field public final mTmpTopRightCorner:Landroid/graphics/Rect;

.field public mTouchSlop:F

.field public final mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

.field public final mUpdateResizeBoundsCallback:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

.field public final mUserResizeBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/phone/PipTouchState;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            "Lcom/android/wm/shell/pip/phone/PipMotionHelper;",
            "Lcom/android/wm/shell/pip/phone/PipTouchState;",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;",
            "Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;",
            "Ljava/util/function/Function<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lcom/android/wm/shell/pip/PipUiEventLogger;",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Region;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/PointF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/PointF;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/PointF;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    .line 31
    .line 32
    new-instance v0, Landroid/graphics/PointF;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    .line 38
    .line 39
    new-instance v0, Landroid/graphics/Point;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    .line 45
    .line 46
    new-instance v0, Landroid/graphics/Point;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    .line 52
    .line 53
    new-instance v0, Landroid/graphics/Rect;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 59
    .line 60
    new-instance v0, Landroid/graphics/Rect;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 66
    .line 67
    new-instance v0, Landroid/graphics/Rect;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    .line 73
    .line 74
    new-instance v0, Landroid/graphics/Rect;

    .line 75
    .line 76
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    .line 80
    .line 81
    new-instance v0, Landroid/graphics/Rect;

    .line 82
    .line 83
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    .line 87
    .line 88
    new-instance v0, Landroid/graphics/Rect;

    .line 89
    .line 90
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    .line 94
    .line 95
    new-instance v0, Landroid/graphics/Rect;

    .line 96
    .line 97
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 101
    .line 102
    new-instance v0, Landroid/graphics/Rect;

    .line 103
    .line 104
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 108
    .line 109
    new-instance v0, Landroid/graphics/Rect;

    .line 110
    .line 111
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    .line 115
    .line 116
    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    .line 118
    .line 119
    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    .line 121
    .line 122
    const/4 v0, -0x1

    .line 123
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 124
    .line 125
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 126
    .line 127
    const/16 v0, 0x3e8

    .line 128
    .line 129
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPointerIconType:I

    .line 130
    .line 131
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayId:I

    .line 138
    .line 139
    iput-object p12, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 140
    .line 141
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 142
    .line 143
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 144
    .line 145
    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 146
    .line 147
    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 148
    .line 149
    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 150
    .line 151
    iput-object p7, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 152
    .line 153
    iput-object p8, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMovementBoundsSupplier:Ljava/util/function/Function;

    .line 154
    .line 155
    iput-object p9, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

    .line 156
    .line 157
    iput-object p11, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 158
    .line 159
    iput-object p10, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 160
    .line 161
    new-instance p1, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;

    .line 162
    .line 163
    invoke-direct {p1}, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;-><init>()V

    .line 164
    .line 165
    .line 166
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPinchResizingAlgorithm:Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;

    .line 167
    .line 168
    new-instance p1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

    .line 169
    .line 170
    invoke-direct {p1, p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;)V

    .line 171
    .line 172
    .line 173
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUpdateResizeBoundsCallback:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

    .line 174
    .line 175
    return-void
.end method


# virtual methods
.method public final finishResize()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_5

    .line 8
    .line 9
    new-instance v3, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-float v1, v1

    .line 19
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    .line 20
    .line 21
    iget v4, v2, Landroid/graphics/Point;->x:I

    .line 22
    .line 23
    int-to-float v4, v4

    .line 24
    const v5, 0x3f666666    # 0.9f

    .line 25
    .line 26
    .line 27
    mul-float/2addr v4, v5

    .line 28
    cmpl-float v1, v1, v4

    .line 29
    .line 30
    if-gez v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    int-to-float v1, v1

    .line 37
    iget v4, v2, Landroid/graphics/Point;->y:I

    .line 38
    .line 39
    int-to-float v4, v4

    .line 40
    mul-float/2addr v4, v5

    .line 41
    cmpl-float v1, v1, v4

    .line 42
    .line 43
    if-ltz v1, :cond_1

    .line 44
    .line 45
    :cond_0
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 46
    .line 47
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    div-int/lit8 v6, v1, 0x2

    .line 58
    .line 59
    sub-int/2addr v4, v6

    .line 60
    add-int/2addr v1, v4

    .line 61
    div-int/lit8 v6, v2, 0x2

    .line 62
    .line 63
    sub-int/2addr v5, v6

    .line 64
    add-int/2addr v2, v5

    .line 65
    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {p0, v0, v4}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->snapToMovementBoundsEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 76
    .line 77
    .line 78
    iget-object v5, v1, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    invoke-virtual {v5, v6, v0, v4}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {v4, v0, v1}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(FLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 96
    .line 97
    iput-boolean v6, v1, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowInputEvents:Z

    .line 98
    .line 99
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 100
    .line 101
    const/16 v8, 0xfa

    .line 102
    .line 103
    iget v5, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    .line 104
    .line 105
    iget-object v9, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUpdateResizeBoundsCallback:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

    .line 106
    .line 107
    new-instance v1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;

    .line 108
    .line 109
    invoke-direct {v1, p0, v6}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;I)V

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 113
    .line 114
    iput-object v1, v2, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipFinishResizeWCTRunnable:Ljava/lang/Runnable;

    .line 115
    .line 116
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 117
    .line 118
    if-eqz v1, :cond_2

    .line 119
    .line 120
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 121
    .line 122
    const v7, 0x4fcf77e5    # 6.961482E9f

    .line 123
    .line 124
    .line 125
    const-string v10, "mPipFinishResizeWCTRunnable is set to be called once window updates"

    .line 126
    .line 127
    const/4 v11, 0x0

    .line 128
    invoke-static {v1, v7, v6, v10, v11}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    iget-boolean v1, v2, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    .line 132
    .line 133
    if-eqz v1, :cond_3

    .line 134
    .line 135
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 136
    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 140
    .line 141
    const-string v2, "PipTaskOrganizer"

    .line 142
    .line 143
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const v3, -0xf8154b7

    .line 148
    .line 149
    .line 150
    const-string v4, "%s: skip scheduleAnimateResizePip, entering pip deferred"

    .line 151
    .line 152
    invoke-static {v1, v3, v6, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_3
    const/4 v6, 0x0

    .line 157
    const/4 v7, 0x6

    .line 158
    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;)V

    .line 159
    .line 160
    .line 161
    :cond_4
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    .line 165
    .line 166
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 167
    .line 168
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 174
    .line 175
    sget-object v0, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_RESIZE:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 176
    .line 177
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->resetState()V

    .line 182
    .line 183
    .line 184
    :goto_1
    return-void
.end method

.method public getLastResizeBounds()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isWithinDragResizeRegion(II)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnableDragCornerResize:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v3, v1, v1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 23
    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 28
    .line 29
    .line 30
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 33
    .line 34
    .line 35
    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 36
    .line 37
    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget-object v7, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    .line 45
    .line 46
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 47
    .line 48
    sub-int v8, v3, v8

    .line 49
    .line 50
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 51
    .line 52
    sub-int/2addr v7, v3

    .line 53
    if-ge v8, v7, :cond_1

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v3, v1

    .line 58
    :goto_0
    if-eqz v3, :cond_2

    .line 59
    .line 60
    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 61
    .line 62
    div-int/lit8 v3, v3, 0x2

    .line 63
    .line 64
    invoke-virtual {v2, v1, v1, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    .line 66
    .line 67
    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 68
    .line 69
    div-int/lit8 v3, v3, 0x2

    .line 70
    .line 71
    invoke-virtual {v5, v1, v1, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 72
    .line 73
    .line 74
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 75
    .line 76
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 77
    .line 78
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 79
    .line 80
    .line 81
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 82
    .line 83
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 84
    .line 85
    iget v7, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 86
    .line 87
    div-int/lit8 v7, v7, 0x2

    .line 88
    .line 89
    sub-int/2addr v3, v7

    .line 90
    invoke-virtual {v5, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 91
    .line 92
    .line 93
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 94
    .line 95
    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 96
    .line 97
    div-int/lit8 v3, v3, 0x2

    .line 98
    .line 99
    sub-int/2addr v1, v3

    .line 100
    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 101
    .line 102
    sub-int/2addr v7, v3

    .line 103
    invoke-virtual {v4, v1, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 104
    .line 105
    .line 106
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 107
    .line 108
    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 109
    .line 110
    div-int/lit8 v3, v3, 0x2

    .line 111
    .line 112
    sub-int/2addr v1, v3

    .line 113
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 114
    .line 115
    sub-int/2addr v0, v3

    .line 116
    invoke-virtual {v6, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 121
    .line 122
    div-int/lit8 v3, v3, 0x2

    .line 123
    .line 124
    invoke-virtual {v4, v1, v1, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 125
    .line 126
    .line 127
    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 128
    .line 129
    div-int/lit8 v3, v3, 0x2

    .line 130
    .line 131
    invoke-virtual {v6, v1, v1, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 132
    .line 133
    .line 134
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 135
    .line 136
    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 137
    .line 138
    div-int/lit8 v3, v3, 0x2

    .line 139
    .line 140
    sub-int/2addr v1, v3

    .line 141
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 142
    .line 143
    invoke-virtual {v4, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 144
    .line 145
    .line 146
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 147
    .line 148
    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 149
    .line 150
    div-int/lit8 v3, v3, 0x2

    .line 151
    .line 152
    sub-int/2addr v1, v3

    .line 153
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 154
    .line 155
    sub-int/2addr v7, v3

    .line 156
    invoke-virtual {v6, v1, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 157
    .line 158
    .line 159
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 160
    .line 161
    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 162
    .line 163
    div-int/lit8 v3, v3, 0x2

    .line 164
    .line 165
    sub-int/2addr v1, v3

    .line 166
    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 167
    .line 168
    sub-int/2addr v7, v3

    .line 169
    invoke-virtual {v2, v1, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 170
    .line 171
    .line 172
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 173
    .line 174
    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 175
    .line 176
    div-int/lit8 v3, v3, 0x2

    .line 177
    .line 178
    sub-int/2addr v1, v3

    .line 179
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 180
    .line 181
    sub-int/2addr v0, v3

    .line 182
    invoke-virtual {v5, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 183
    .line 184
    .line 185
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    .line 186
    .line 187
    invoke-virtual {p0}, Landroid/graphics/Region;->setEmpty()V

    .line 188
    .line 189
    .line 190
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 191
    .line 192
    invoke-virtual {p0, v2, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 193
    .line 194
    .line 195
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 196
    .line 197
    invoke-virtual {p0, v4, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 198
    .line 199
    .line 200
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 201
    .line 202
    invoke-virtual {p0, v5, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 203
    .line 204
    .line 205
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 206
    .line 207
    invoke-virtual {p0, v6, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    .line 211
    .line 212
    .line 213
    move-result p0

    .line 214
    return p0
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnableDragCornerResize:Z

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iget-boolean v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 15
    .line 16
    iget-boolean v2, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowInputEvents:Z

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    const-string v0, "PipResizeGestureHandler"

    .line 21
    .line 22
    const-string/jumbo v1, "pip input event not allowed"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    instance-of v3, v1, Landroid/view/MotionEvent;

    .line 39
    .line 40
    if-eqz v3, :cond_1e

    .line 41
    .line 42
    check-cast v1, Landroid/view/MotionEvent;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const/4 v5, 0x3

    .line 53
    const/4 v6, 0x1

    .line 54
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 55
    .line 56
    if-eq v3, v6, :cond_3

    .line 57
    .line 58
    if-ne v3, v5, :cond_4

    .line 59
    .line 60
    :cond_3
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    float-to-int v3, v3

    .line 65
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    float-to-int v8, v8

    .line 70
    invoke-virtual {v4, v3, v8}, Landroid/graphics/Rect;->contains(II)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_4

    .line 75
    .line 76
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu()V

    .line 83
    .line 84
    .line 85
    :cond_4
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    .line 86
    .line 87
    if-eqz v3, :cond_5

    .line 88
    .line 89
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    .line 90
    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->onPinchResize(Landroid/view/MotionEvent;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_7

    .line 97
    .line 98
    :cond_5
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnableDragCornerResize:Z

    .line 99
    .line 100
    if-eqz v3, :cond_1e

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    iget v9, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOhmOffset:I

    .line 115
    .line 116
    int-to-float v9, v9

    .line 117
    sub-float/2addr v8, v9

    .line 118
    iget-object v10, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 119
    .line 120
    iget-object v15, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    .line 121
    .line 122
    iget-object v11, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    .line 123
    .line 124
    iget-object v12, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    .line 125
    .line 126
    iget-object v13, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    .line 127
    .line 128
    iget-object v14, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    .line 129
    .line 130
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 131
    .line 132
    const/4 v9, 0x0

    .line 133
    if-nez v3, :cond_b

    .line 134
    .line 135
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 136
    .line 137
    .line 138
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsSysUiStateValid:Z

    .line 139
    .line 140
    if-eqz v1, :cond_6

    .line 141
    .line 142
    float-to-int v1, v4

    .line 143
    float-to-int v3, v8

    .line 144
    invoke-virtual {v0, v1, v3}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isWithinDragResizeRegion(II)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_6

    .line 149
    .line 150
    move v9, v6

    .line 151
    :cond_6
    iput-boolean v9, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 152
    .line 153
    if-eqz v9, :cond_1e

    .line 154
    .line 155
    float-to-int v1, v4

    .line 156
    float-to-int v3, v8

    .line 157
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMovementBoundsSupplier:Ljava/util/function/Function;

    .line 162
    .line 163
    invoke-interface {v7, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    check-cast v7, Landroid/graphics/Rect;

    .line 168
    .line 169
    iget v9, v7, Landroid/graphics/Rect;->left:I

    .line 170
    .line 171
    iget v6, v7, Landroid/graphics/Rect;->top:I

    .line 172
    .line 173
    move-object/from16 v17, v15

    .line 174
    .line 175
    iget v15, v7, Landroid/graphics/Rect;->right:I

    .line 176
    .line 177
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 178
    .line 179
    .line 180
    move-result v18

    .line 181
    add-int v15, v18, v15

    .line 182
    .line 183
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 184
    .line 185
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 186
    .line 187
    .line 188
    move-result v18

    .line 189
    add-int v7, v18, v7

    .line 190
    .line 191
    move-object/from16 v18, v2

    .line 192
    .line 193
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    .line 194
    .line 195
    invoke-virtual {v2, v9, v6, v15, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v14, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    if-eqz v6, :cond_7

    .line 203
    .line 204
    iget v6, v5, Landroid/graphics/Rect;->top:I

    .line 205
    .line 206
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 207
    .line 208
    if-eq v6, v7, :cond_7

    .line 209
    .line 210
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 211
    .line 212
    iget v7, v2, Landroid/graphics/Rect;->left:I

    .line 213
    .line 214
    if-eq v6, v7, :cond_7

    .line 215
    .line 216
    iget v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 217
    .line 218
    const/4 v7, 0x1

    .line 219
    or-int/2addr v6, v7

    .line 220
    or-int/lit8 v6, v6, 0x4

    .line 221
    .line 222
    iput v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 223
    .line 224
    :cond_7
    invoke-virtual {v13, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    if-eqz v6, :cond_8

    .line 229
    .line 230
    iget v6, v5, Landroid/graphics/Rect;->top:I

    .line 231
    .line 232
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 233
    .line 234
    if-eq v6, v7, :cond_8

    .line 235
    .line 236
    iget v6, v5, Landroid/graphics/Rect;->right:I

    .line 237
    .line 238
    iget v7, v2, Landroid/graphics/Rect;->right:I

    .line 239
    .line 240
    if-eq v6, v7, :cond_8

    .line 241
    .line 242
    iget v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 243
    .line 244
    const/4 v7, 0x2

    .line 245
    or-int/2addr v6, v7

    .line 246
    or-int/lit8 v6, v6, 0x4

    .line 247
    .line 248
    iput v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 249
    .line 250
    :cond_8
    invoke-virtual {v12, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    if-eqz v6, :cond_9

    .line 255
    .line 256
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 257
    .line 258
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 259
    .line 260
    if-eq v6, v7, :cond_9

    .line 261
    .line 262
    iget v6, v5, Landroid/graphics/Rect;->right:I

    .line 263
    .line 264
    iget v7, v2, Landroid/graphics/Rect;->right:I

    .line 265
    .line 266
    if-eq v6, v7, :cond_9

    .line 267
    .line 268
    iget v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 269
    .line 270
    const/4 v7, 0x2

    .line 271
    or-int/2addr v6, v7

    .line 272
    or-int/lit8 v6, v6, 0x8

    .line 273
    .line 274
    iput v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 275
    .line 276
    :cond_9
    invoke-virtual {v11, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-eqz v1, :cond_a

    .line 281
    .line 282
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 283
    .line 284
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 285
    .line 286
    if-eq v1, v3, :cond_a

    .line 287
    .line 288
    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 289
    .line 290
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 291
    .line 292
    if-eq v1, v2, :cond_a

    .line 293
    .line 294
    iget v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 295
    .line 296
    const/4 v2, 0x1

    .line 297
    or-int/2addr v1, v2

    .line 298
    or-int/lit8 v1, v1, 0x8

    .line 299
    .line 300
    iput v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 301
    .line 302
    :cond_a
    invoke-virtual {v10, v4, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 303
    .line 304
    .line 305
    invoke-virtual/range {v18 .. v18}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    move-object/from16 v2, v17

    .line 310
    .line 311
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_7

    .line 315
    .line 316
    :cond_b
    move-object/from16 v18, v2

    .line 317
    .line 318
    move-object v2, v15

    .line 319
    iget-boolean v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 320
    .line 321
    iget-object v15, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 322
    .line 323
    if-eqz v6, :cond_15

    .line 324
    .line 325
    const/4 v6, 0x1

    .line 326
    if-eq v3, v6, :cond_14

    .line 327
    .line 328
    const/4 v1, 0x2

    .line 329
    if-eq v3, v1, :cond_d

    .line 330
    .line 331
    const/4 v1, 0x3

    .line 332
    if-eq v3, v1, :cond_14

    .line 333
    .line 334
    const/4 v1, 0x5

    .line 335
    if-eq v3, v1, :cond_c

    .line 336
    .line 337
    goto/16 :goto_7

    .line 338
    .line 339
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->resetState()V

    .line 340
    .line 341
    .line 342
    goto/16 :goto_7

    .line 343
    .line 344
    :cond_d
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 345
    .line 346
    if-nez v1, :cond_e

    .line 347
    .line 348
    iget v1, v10, Landroid/graphics/PointF;->x:F

    .line 349
    .line 350
    sub-float v1, v4, v1

    .line 351
    .line 352
    float-to-double v11, v1

    .line 353
    iget v1, v10, Landroid/graphics/PointF;->y:F

    .line 354
    .line 355
    sub-float v1, v8, v1

    .line 356
    .line 357
    float-to-double v13, v1

    .line 358
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    .line 359
    .line 360
    .line 361
    move-result-wide v11

    .line 362
    iget v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    .line 363
    .line 364
    float-to-double v13, v1

    .line 365
    cmpl-double v1, v11, v13

    .line 366
    .line 367
    if-lez v1, :cond_e

    .line 368
    .line 369
    const/4 v1, 0x1

    .line 370
    iput-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 371
    .line 372
    invoke-virtual {v10, v4, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 373
    .line 374
    .line 375
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 376
    .line 377
    invoke-virtual {v1}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 378
    .line 379
    .line 380
    :cond_e
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 381
    .line 382
    if-eqz v1, :cond_1e

    .line 383
    .line 384
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    if-eqz v1, :cond_f

    .line 389
    .line 390
    invoke-virtual {v7, v9}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu(I)V

    .line 391
    .line 392
    .line 393
    :cond_f
    invoke-virtual/range {v18 .. v18}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    iget v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 398
    .line 399
    if-eqz v3, :cond_1e

    .line 400
    .line 401
    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 402
    .line 403
    and-int/lit8 v7, v3, 0x1

    .line 404
    .line 405
    if-eqz v7, :cond_10

    .line 406
    .line 407
    iget v7, v1, Landroid/graphics/Rect;->left:I

    .line 408
    .line 409
    goto :goto_0

    .line 410
    :cond_10
    iget v7, v1, Landroid/graphics/Rect;->right:I

    .line 411
    .line 412
    :goto_0
    int-to-float v7, v7

    .line 413
    and-int/lit8 v3, v3, 0x4

    .line 414
    .line 415
    if-eqz v3, :cond_11

    .line 416
    .line 417
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 418
    .line 419
    goto :goto_1

    .line 420
    :cond_11
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 421
    .line 422
    :goto_1
    int-to-float v3, v3

    .line 423
    invoke-virtual {v10, v7, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 424
    .line 425
    .line 426
    iget-object v11, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    .line 427
    .line 428
    iget v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 429
    .line 430
    and-int/lit8 v7, v3, 0x1

    .line 431
    .line 432
    if-eqz v7, :cond_12

    .line 433
    .line 434
    iget v7, v1, Landroid/graphics/Rect;->right:I

    .line 435
    .line 436
    goto :goto_2

    .line 437
    :cond_12
    iget v7, v1, Landroid/graphics/Rect;->left:I

    .line 438
    .line 439
    :goto_2
    int-to-float v7, v7

    .line 440
    and-int/lit8 v3, v3, 0x4

    .line 441
    .line 442
    if-eqz v3, :cond_13

    .line 443
    .line 444
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 445
    .line 446
    goto :goto_3

    .line 447
    :cond_13
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 448
    .line 449
    :goto_3
    int-to-float v1, v1

    .line 450
    invoke-virtual {v11, v7, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 451
    .line 452
    .line 453
    iget-object v12, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    .line 454
    .line 455
    invoke-virtual {v12, v4, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 456
    .line 457
    .line 458
    iget-object v13, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    .line 459
    .line 460
    invoke-virtual {v13, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 461
    .line 462
    .line 463
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPinchResizingAlgorithm:Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;

    .line 464
    .line 465
    iget-object v14, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    .line 466
    .line 467
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    .line 468
    .line 469
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    .line 470
    .line 471
    move v7, v9

    .line 472
    move-object v9, v1

    .line 473
    move-object v1, v2

    .line 474
    move-object v2, v15

    .line 475
    move-object v15, v3

    .line 476
    move-object/from16 v16, v4

    .line 477
    .line 478
    move-object/from16 v17, v6

    .line 479
    .line 480
    invoke-virtual/range {v9 .. v17}, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->calculateBoundsAndAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 481
    .line 482
    .line 483
    move-object/from16 v3, v18

    .line 484
    .line 485
    iget v4, v3, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 486
    .line 487
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 488
    .line 489
    const/4 v6, 0x1

    .line 490
    invoke-virtual {v0, v5, v4, v7, v6}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZZ)V

    .line 491
    .line 492
    .line 493
    const/4 v0, 0x0

    .line 494
    const/4 v4, 0x0

    .line 495
    invoke-virtual {v2, v1, v5, v0, v4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;)V

    .line 496
    .line 497
    .line 498
    iput-boolean v6, v3, Lcom/android/wm/shell/pip/PipBoundsState;->mHasUserResizedPip:Z

    .line 499
    .line 500
    goto/16 :goto_7

    .line 501
    .line 502
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->finishResize()V

    .line 503
    .line 504
    .line 505
    goto/16 :goto_7

    .line 506
    .line 507
    :cond_15
    move v7, v9

    .line 508
    move-object v2, v15

    .line 509
    invoke-virtual {v1}, Landroid/view/MotionEvent;->isHoverEvent()Z

    .line 510
    .line 511
    .line 512
    move-result v3

    .line 513
    if-eqz v3, :cond_1e

    .line 514
    .line 515
    float-to-int v3, v4

    .line 516
    float-to-int v4, v8

    .line 517
    invoke-virtual {v0, v3, v4}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isWithinDragResizeRegion(II)Z

    .line 518
    .line 519
    .line 520
    move-result v5

    .line 521
    const/16 v6, 0x3e8

    .line 522
    .line 523
    if-eqz v5, :cond_16

    .line 524
    .line 525
    iget v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPointerIconType:I

    .line 526
    .line 527
    if-eq v5, v6, :cond_16

    .line 528
    .line 529
    iput v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPointerIconType:I

    .line 530
    .line 531
    :cond_16
    const/16 v5, 0x4002

    .line 532
    .line 533
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    invoke-virtual {v0, v3, v4}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isWithinDragResizeRegion(II)Z

    .line 538
    .line 539
    .line 540
    move-result v5

    .line 541
    const/4 v8, 0x1

    .line 542
    xor-int/2addr v5, v8

    .line 543
    if-nez v5, :cond_1d

    .line 544
    .line 545
    invoke-virtual {v14, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 546
    .line 547
    .line 548
    move-result v5

    .line 549
    if-nez v5, :cond_19

    .line 550
    .line 551
    invoke-virtual {v12, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 552
    .line 553
    .line 554
    move-result v5

    .line 555
    if-eqz v5, :cond_17

    .line 556
    .line 557
    goto :goto_4

    .line 558
    :cond_17
    invoke-virtual {v13, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 559
    .line 560
    .line 561
    move-result v5

    .line 562
    if-nez v5, :cond_18

    .line 563
    .line 564
    invoke-virtual {v11, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 565
    .line 566
    .line 567
    move-result v3

    .line 568
    if-eqz v3, :cond_1a

    .line 569
    .line 570
    :cond_18
    const/16 v6, 0x3f8

    .line 571
    .line 572
    goto :goto_5

    .line 573
    :cond_19
    :goto_4
    const/16 v6, 0x3f9

    .line 574
    .line 575
    :cond_1a
    :goto_5
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX:Z

    .line 576
    .line 577
    if-eqz v3, :cond_1b

    .line 578
    .line 579
    iget-object v2, v2, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 580
    .line 581
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 582
    .line 583
    invoke-virtual {v2}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 584
    .line 585
    .line 586
    move-result v2

    .line 587
    if-eqz v2, :cond_1b

    .line 588
    .line 589
    move v7, v8

    .line 590
    :cond_1b
    if-eqz v1, :cond_1c

    .line 591
    .line 592
    invoke-static {v6}, Lcom/android/wm/shell/common/DragResizePointer;->convertStylusIconType(I)I

    .line 593
    .line 594
    .line 595
    move-result v6

    .line 596
    goto :goto_6

    .line 597
    :cond_1c
    if-eqz v7, :cond_1d

    .line 598
    .line 599
    invoke-static {v6}, Lcom/android/wm/shell/common/DragResizePointer;->convertDexPointerIconType(I)I

    .line 600
    .line 601
    .line 602
    move-result v6

    .line 603
    :cond_1d
    :goto_6
    iget v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPointerIconType:I

    .line 604
    .line 605
    if-eq v1, v6, :cond_1e

    .line 606
    .line 607
    iput v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPointerIconType:I

    .line 608
    .line 609
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputManager:Landroid/hardware/input/InputManager;

    .line 610
    .line 611
    invoke-virtual {v0, v6}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 612
    .line 613
    .line 614
    :cond_1e
    :goto_7
    return-void
.end method

.method public onPinchResize(Landroid/view/MotionEvent;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, -0x1

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eq v2, v5, :cond_0

    .line 13
    .line 14
    const/4 v6, 0x3

    .line 15
    if-ne v2, v6, :cond_1

    .line 16
    .line 17
    :cond_0
    iput v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 18
    .line 19
    iput v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 20
    .line 21
    iput-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->finishResize()V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const/4 v7, 0x2

    .line 31
    if-eq v6, v7, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 35
    .line 36
    invoke-virtual {v6}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    iget-object v11, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    .line 41
    .line 42
    iget-object v10, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 43
    .line 44
    iget-object v13, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    .line 45
    .line 46
    iget-object v12, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    .line 47
    .line 48
    const/4 v9, 0x5

    .line 49
    iget-object v15, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    .line 50
    .line 51
    iget-object v14, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 52
    .line 53
    if-ne v2, v9, :cond_3

    .line 54
    .line 55
    iget v9, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 56
    .line 57
    if-ne v9, v4, :cond_3

    .line 58
    .line 59
    iget v9, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 60
    .line 61
    if-ne v9, v4, :cond_3

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    float-to-int v9, v9

    .line 68
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    float-to-int v4, v4

    .line 73
    invoke-virtual {v8, v9, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_3

    .line 78
    .line 79
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    float-to-int v4, v4

    .line 84
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    float-to-int v9, v9

    .line 89
    invoke-virtual {v8, v4, v9}, Landroid/graphics/Rect;->contains(II)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_3

    .line 94
    .line 95
    iput-boolean v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 96
    .line 97
    iput v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 98
    .line 99
    iput v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 100
    .line 101
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    iget v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 106
    .line 107
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    invoke-virtual {v10, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 112
    .line 113
    .line 114
    iget v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    iget v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 121
    .line 122
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    invoke-virtual {v11, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v15, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v12, v10}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v13, v13}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 139
    .line 140
    .line 141
    :cond_3
    if-ne v2, v7, :cond_8

    .line 142
    .line 143
    iget v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 144
    .line 145
    const/4 v3, -0x1

    .line 146
    if-eq v2, v3, :cond_8

    .line 147
    .line 148
    iget v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 149
    .line 150
    if-ne v4, v3, :cond_4

    .line 151
    .line 152
    goto/16 :goto_1

    .line 153
    .line 154
    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    iget v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    .line 159
    .line 160
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    iget v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 165
    .line 166
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    iget v7, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    .line 171
    .line 172
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-virtual {v12, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v13, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 180
    .line 181
    .line 182
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 183
    .line 184
    if-nez v1, :cond_6

    .line 185
    .line 186
    iget v1, v13, Landroid/graphics/PointF;->x:F

    .line 187
    .line 188
    iget v2, v11, Landroid/graphics/PointF;->x:F

    .line 189
    .line 190
    sub-float/2addr v1, v2

    .line 191
    float-to-double v1, v1

    .line 192
    iget v3, v13, Landroid/graphics/PointF;->y:F

    .line 193
    .line 194
    iget v4, v11, Landroid/graphics/PointF;->y:F

    .line 195
    .line 196
    sub-float/2addr v3, v4

    .line 197
    float-to-double v3, v3

    .line 198
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 199
    .line 200
    .line 201
    move-result-wide v1

    .line 202
    double-to-float v1, v1

    .line 203
    iget v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    .line 204
    .line 205
    cmpl-float v1, v1, v2

    .line 206
    .line 207
    if-gtz v1, :cond_5

    .line 208
    .line 209
    iget v1, v12, Landroid/graphics/PointF;->x:F

    .line 210
    .line 211
    iget v2, v10, Landroid/graphics/PointF;->x:F

    .line 212
    .line 213
    sub-float/2addr v1, v2

    .line 214
    float-to-double v1, v1

    .line 215
    iget v3, v12, Landroid/graphics/PointF;->y:F

    .line 216
    .line 217
    iget v4, v10, Landroid/graphics/PointF;->y:F

    .line 218
    .line 219
    sub-float/2addr v3, v4

    .line 220
    float-to-double v3, v3

    .line 221
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 222
    .line 223
    .line 224
    move-result-wide v1

    .line 225
    double-to-float v1, v1

    .line 226
    iget v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    .line 227
    .line 228
    cmpl-float v1, v1, v2

    .line 229
    .line 230
    if-lez v1, :cond_6

    .line 231
    .line 232
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->pilferPointers()V

    .line 233
    .line 234
    .line 235
    iput-boolean v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 236
    .line 237
    invoke-virtual {v10, v12}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v11, v13}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 241
    .line 242
    .line 243
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 244
    .line 245
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-eqz v2, :cond_6

    .line 250
    .line 251
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu()V

    .line 252
    .line 253
    .line 254
    :cond_6
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 255
    .line 256
    if-eqz v1, :cond_8

    .line 257
    .line 258
    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPinchResizingAlgorithm:Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;

    .line 259
    .line 260
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    .line 261
    .line 262
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    .line 263
    .line 264
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    .line 265
    .line 266
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 267
    .line 268
    move-object v7, v14

    .line 269
    move-object v14, v1

    .line 270
    move-object v1, v15

    .line 271
    move-object v15, v2

    .line 272
    move-object/from16 v16, v3

    .line 273
    .line 274
    move-object/from16 v17, v4

    .line 275
    .line 276
    invoke-virtual/range {v9 .. v17}, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->calculateBoundsAndAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    iput v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    .line 281
    .line 282
    iget v2, v6, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 283
    .line 284
    const/high16 v3, 0x3f800000    # 1.0f

    .line 285
    .line 286
    cmpg-float v3, v2, v3

    .line 287
    .line 288
    if-gtz v3, :cond_7

    .line 289
    .line 290
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    int-to-float v3, v3

    .line 295
    mul-float/2addr v3, v2

    .line 296
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 301
    .line 302
    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 303
    .line 304
    add-int/2addr v2, v3

    .line 305
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 306
    .line 307
    invoke-virtual {v7, v3, v4, v2, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 308
    .line 309
    .line 310
    goto :goto_0

    .line 311
    :cond_7
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    int-to-float v3, v3

    .line 316
    div-float/2addr v3, v2

    .line 317
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 322
    .line 323
    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 324
    .line 325
    iget v8, v7, Landroid/graphics/Rect;->right:I

    .line 326
    .line 327
    add-int/2addr v2, v4

    .line 328
    invoke-virtual {v7, v3, v4, v8, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 329
    .line 330
    .line 331
    :goto_0
    iget v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    .line 332
    .line 333
    const/4 v3, 0x0

    .line 334
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 335
    .line 336
    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;)V

    .line 337
    .line 338
    .line 339
    iput-boolean v5, v6, Lcom/android/wm/shell/pip/PipBoundsState;->mHasUserResizedPip:Z

    .line 340
    .line 341
    :cond_8
    :goto_1
    return-void
.end method

.method public pilferPointers()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final reloadResources()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f070b0a

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iput v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    .line 15
    .line 16
    const v2, 0x7f050028

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnableDragCornerResize:Z

    .line 24
    .line 25
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    int-to-float v0, v0

    .line 34
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    .line 35
    .line 36
    return-void
.end method

.method public final resetState()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 12
    .line 13
    return-void
.end method

.method public final setUserResizeBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final snapToMovementBoundsEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 2
    .line 3
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    sub-int v1, v0, v1

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 12
    .line 13
    sub-int/2addr v2, v0

    .line 14
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ge v1, v0, :cond_0

    .line 19
    .line 20
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 24
    .line 25
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    .line 26
    .line 27
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 28
    .line 29
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final updateIsEnabled()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 28
    .line 29
    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const-class v1, Landroid/hardware/input/InputManager;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/hardware/input/InputManager;

    .line 42
    .line 43
    const-string/jumbo v1, "pip-resize"

    .line 44
    .line 45
    .line 46
    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayId:I

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 53
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 55
    .line 56
    new-instance v1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    .line 68
    .line 69
    const-string v1, "Failed to create input event receiver"

    .line 70
    .line 71
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_3
    :goto_0
    return-void
.end method

.method public updateMaxSize(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateMinSize(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
