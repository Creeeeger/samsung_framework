.class public final Lcom/android/wm/shell/windowdecor/TaskPositioner;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/DragPositioningCallback;


# instance fields
.field public mCtrlType:I

.field public mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDragPositioningListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

.field public final mDragStartListener:Lcom/android/wm/shell/windowdecor/TaskPositioner$DragStartListener;

.field public mFlingCanceled:Z

.field public mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

.field public mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

.field public mHasMoved:Z

.field public mImeAnimating:Z

.field public mImeShowing:Z

.field public mIsOnlyPositionChanged:Z

.field public mIsUserInteracting:Z

.field public mLastFreeformTaskSurfaceOverlappingWithNavBar:Z

.field public mLastSnapType:I

.field public mMinVisibleHeight:I

.field public final mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

.field public final mRepositionStartPoint:Landroid/graphics/PointF;

.field public final mRepositionTaskBounds:Landroid/graphics/Rect;

.field public mResizing:Z

.field public final mTaskBoundsAtDragStart:Landroid/graphics/Rect;

.field public final mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTempBounds:Landroid/graphics/Rect;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTmpRect2:Landroid/graphics/Rect;

.field public mToolType:I

.field public final mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/TaskPositioner$DragStartListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V
    .locals 7

    .line 2
    new-instance v4, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda0;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/windowdecor/TaskPositioner;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/TaskPositioner$DragStartListener;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/TaskPositioner$DragStartListener;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/windowdecor/TaskPositioner;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/TaskPositioner$DragStartListener;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/TaskPositioner$DragStartListener;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V
    .locals 6

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTempBounds:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 7
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mHasMoved:Z

    .line 10
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 11
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mIsUserInteracting:Z

    .line 12
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTmpRect2:Landroid/graphics/Rect;

    .line 13
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mIsOnlyPositionChanged:Z

    .line 14
    iput v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mLastSnapType:I

    const/4 v1, 0x1

    .line 15
    iput v1, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mToolType:I

    .line 16
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFlingCanceled:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mImeAnimating:Z

    .line 18
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 19
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 20
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 21
    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDragStartListener:Lcom/android/wm/shell/windowdecor/TaskPositioner$DragStartListener;

    .line 22
    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {p2}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->asMultitaskingWindowDecoration()Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    move-result-object p4

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 24
    :cond_0
    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    if-eqz p4, :cond_1

    .line 25
    new-instance p4, Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    move-object v0, p4

    move-object v1, p3

    move-object v2, p1

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/windowdecor/TaskMotionController;-><init>(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 26
    :cond_1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_DISMISS_VIEW:Z

    if-eqz p1, :cond_2

    .line 27
    iget-boolean p1, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-nez p1, :cond_2

    .line 28
    iget-object p1, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/wm/shell/common/FreeformDragPositioningController;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/common/FreeformDragPositioningController;

    move-result-object p1

    .line 29
    iget-object p1, p1, Lcom/android/wm/shell/common/FreeformDragPositioningController;->mFreeformDragListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    .line 30
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDragPositioningListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    :cond_2
    return-void
.end method


# virtual methods
.method public final changeBounds(Landroid/window/WindowContainerTransaction;FFZ)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mHasMoved:Z

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    :goto_0
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    :goto_1
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget v6, v3, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 29
    .line 30
    :goto_2
    if-eqz v1, :cond_3

    .line 31
    .line 32
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    :goto_3
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    .line 38
    .line 39
    iget v8, v7, Landroid/graphics/PointF;->x:F

    .line 40
    .line 41
    sub-float v8, p2, v8

    .line 42
    .line 43
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 44
    .line 45
    sub-float v7, p3, v7

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 51
    .line 52
    iget-object v9, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    .line 53
    .line 54
    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 59
    .line 60
    invoke-virtual {v10, v9}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTempBounds:Landroid/graphics/Rect;

    .line 65
    .line 66
    const/4 v12, 0x0

    .line 67
    invoke-virtual {v9, v11, v12}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 68
    .line 69
    .line 70
    iget v9, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mCtrlType:I

    .line 71
    .line 72
    and-int/lit8 v13, v9, 0x1

    .line 73
    .line 74
    if-eqz v13, :cond_5

    .line 75
    .line 76
    iget v13, v3, Landroid/graphics/Rect;->left:I

    .line 77
    .line 78
    float-to-int v14, v8

    .line 79
    add-int/2addr v13, v14

    .line 80
    iget v14, v11, Landroid/graphics/Rect;->left:I

    .line 81
    .line 82
    if-le v13, v14, :cond_4

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_4
    move v13, v4

    .line 86
    :goto_4
    iput v13, v3, Landroid/graphics/Rect;->left:I

    .line 87
    .line 88
    :cond_5
    and-int/lit8 v13, v9, 0x2

    .line 89
    .line 90
    if-eqz v13, :cond_7

    .line 91
    .line 92
    iget v13, v3, Landroid/graphics/Rect;->right:I

    .line 93
    .line 94
    float-to-int v14, v8

    .line 95
    add-int/2addr v13, v14

    .line 96
    iget v14, v11, Landroid/graphics/Rect;->right:I

    .line 97
    .line 98
    if-ge v13, v14, :cond_6

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_6
    move v13, v6

    .line 102
    :goto_5
    iput v13, v3, Landroid/graphics/Rect;->right:I

    .line 103
    .line 104
    :cond_7
    and-int/lit8 v13, v9, 0x4

    .line 105
    .line 106
    if-eqz v13, :cond_9

    .line 107
    .line 108
    iget v13, v3, Landroid/graphics/Rect;->top:I

    .line 109
    .line 110
    float-to-int v14, v7

    .line 111
    add-int/2addr v13, v14

    .line 112
    iget v14, v11, Landroid/graphics/Rect;->top:I

    .line 113
    .line 114
    if-le v13, v14, :cond_8

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_8
    move v13, v5

    .line 118
    :goto_6
    iput v13, v3, Landroid/graphics/Rect;->top:I

    .line 119
    .line 120
    :cond_9
    and-int/lit8 v13, v9, 0x8

    .line 121
    .line 122
    if-eqz v13, :cond_b

    .line 123
    .line 124
    iget v13, v3, Landroid/graphics/Rect;->bottom:I

    .line 125
    .line 126
    float-to-int v14, v7

    .line 127
    add-int/2addr v13, v14

    .line 128
    iget v14, v11, Landroid/graphics/Rect;->bottom:I

    .line 129
    .line 130
    if-ge v13, v14, :cond_a

    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_a
    move v13, v1

    .line 134
    :goto_7
    iput v13, v3, Landroid/graphics/Rect;->bottom:I

    .line 135
    .line 136
    :cond_b
    if-nez v9, :cond_c

    .line 137
    .line 138
    float-to-int v8, v8

    .line 139
    float-to-int v7, v7

    .line 140
    invoke-virtual {v3, v8, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 141
    .line 142
    .line 143
    :cond_c
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MT_SUPPORT_SIZE_COMPAT_DRAG:Z

    .line 144
    .line 145
    if-eqz v7, :cond_d

    .line 146
    .line 147
    iget-boolean v7, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mResizing:Z

    .line 148
    .line 149
    if-eqz v7, :cond_d

    .line 150
    .line 151
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 152
    .line 153
    if-eqz v7, :cond_d

    .line 154
    .line 155
    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->asSizeCompatResizeGuide()Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    if-eqz v7, :cond_d

    .line 160
    .line 161
    iget-object v7, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 162
    .line 163
    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->sizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    .line 164
    .line 165
    invoke-static {v7}, Lcom/samsung/android/core/SizeCompatInfo;->isDragResizable(Lcom/samsung/android/core/SizeCompatInfo;)Z

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    if-eqz v7, :cond_d

    .line 170
    .line 171
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 172
    .line 173
    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->asSizeCompatResizeGuide()Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;

    .line 174
    .line 175
    .line 176
    move-result-object v13

    .line 177
    iget-object v7, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 178
    .line 179
    iget-object v14, v7, Landroid/app/ActivityManager$RunningTaskInfo;->sizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    .line 180
    .line 181
    iget v15, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mCtrlType:I

    .line 182
    .line 183
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 184
    .line 185
    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 186
    .line 187
    new-instance v9, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda2;

    .line 188
    .line 189
    invoke-direct {v9, v0}, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/windowdecor/TaskPositioner;)V

    .line 190
    .line 191
    .line 192
    move-object/from16 v16, v7

    .line 193
    .line 194
    move-object/from16 v17, v8

    .line 195
    .line 196
    move/from16 v18, p4

    .line 197
    .line 198
    move-object/from16 v19, v9

    .line 199
    .line 200
    invoke-virtual/range {v13 .. v19}, Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;->adjustBounds(Lcom/samsung/android/core/SizeCompatInfo;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V

    .line 201
    .line 202
    .line 203
    :cond_d
    iget-boolean v7, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mImeShowing:Z

    .line 204
    .line 205
    if-eqz v7, :cond_e

    .line 206
    .line 207
    iget-object v7, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 208
    .line 209
    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 210
    .line 211
    invoke-virtual {v10, v7}, Lcom/android/wm/shell/common/DisplayController;->getInsetsState(I)Landroid/view/InsetsState;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    if-eqz v7, :cond_e

    .line 216
    .line 217
    invoke-virtual {v7}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTmpRect2:Landroid/graphics/Rect;

    .line 222
    .line 223
    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 231
    .line 232
    .line 233
    move-result v13

    .line 234
    invoke-virtual {v7, v8, v13, v12}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    invoke-virtual {v9, v7}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 239
    .line 240
    .line 241
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 242
    .line 243
    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 244
    .line 245
    if-le v7, v8, :cond_e

    .line 246
    .line 247
    sub-int/2addr v8, v7

    .line 248
    invoke-virtual {v3, v12, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 249
    .line 250
    .line 251
    :cond_e
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    iget-object v8, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 256
    .line 257
    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->minWidth:I

    .line 258
    .line 259
    const v9, 0x3bcccccd    # 0.00625f

    .line 260
    .line 261
    .line 262
    if-gez v8, :cond_f

    .line 263
    .line 264
    iget-object v8, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 265
    .line 266
    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 267
    .line 268
    invoke-virtual {v10, v8}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    iget v8, v8, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 273
    .line 274
    int-to-float v8, v8

    .line 275
    mul-float/2addr v8, v9

    .line 276
    iget-object v13, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 277
    .line 278
    iget v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->defaultMinSize:I

    .line 279
    .line 280
    int-to-float v13, v13

    .line 281
    mul-float/2addr v13, v8

    .line 282
    goto :goto_8

    .line 283
    :cond_f
    int-to-float v13, v8

    .line 284
    :goto_8
    float-to-int v8, v13

    .line 285
    if-ge v7, v8, :cond_10

    .line 286
    .line 287
    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 288
    .line 289
    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 290
    .line 291
    :cond_10
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    iget-object v8, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 296
    .line 297
    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->minHeight:I

    .line 298
    .line 299
    if-gez v8, :cond_11

    .line 300
    .line 301
    iget-object v8, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 302
    .line 303
    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 304
    .line 305
    invoke-virtual {v10, v8}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    iget v8, v8, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    .line 310
    .line 311
    int-to-float v8, v8

    .line 312
    mul-float/2addr v8, v9

    .line 313
    iget-object v9, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 314
    .line 315
    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->defaultMinSize:I

    .line 316
    .line 317
    int-to-float v9, v9

    .line 318
    mul-float/2addr v9, v8

    .line 319
    goto :goto_9

    .line 320
    :cond_11
    int-to-float v9, v8

    .line 321
    :goto_9
    float-to-int v8, v9

    .line 322
    if-ge v7, v8, :cond_12

    .line 323
    .line 324
    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 325
    .line 326
    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 327
    .line 328
    :cond_12
    iget-boolean v7, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mResizing:Z

    .line 329
    .line 330
    if-nez v7, :cond_13

    .line 331
    .line 332
    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    .line 333
    .line 334
    iget v8, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMinVisibleHeight:I

    .line 335
    .line 336
    sub-int/2addr v7, v8

    .line 337
    iget v8, v11, Landroid/graphics/Rect;->top:I

    .line 338
    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getCaptionVisibleHeight()I

    .line 340
    .line 341
    .line 342
    move-result v9

    .line 343
    add-int/2addr v9, v8

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getFreeformThickness$1()I

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    add-int/2addr v8, v9

    .line 349
    iget v9, v3, Landroid/graphics/Rect;->left:I

    .line 350
    .line 351
    iget v13, v3, Landroid/graphics/Rect;->top:I

    .line 352
    .line 353
    invoke-static {v13, v7}, Ljava/lang/Math;->min(II)I

    .line 354
    .line 355
    .line 356
    move-result v7

    .line 357
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 358
    .line 359
    .line 360
    move-result v7

    .line 361
    invoke-virtual {v3, v9, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 362
    .line 363
    .line 364
    goto :goto_a

    .line 365
    :cond_13
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 366
    .line 367
    if-eqz v7, :cond_14

    .line 368
    .line 369
    invoke-virtual {v7, v3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->adjustMinMaxSize(Landroid/graphics/Rect;)V

    .line 370
    .line 371
    .line 372
    :cond_14
    :goto_a
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 373
    .line 374
    if-eqz v7, :cond_15

    .line 375
    .line 376
    iget-boolean v7, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mResizing:Z

    .line 377
    .line 378
    if-eqz v7, :cond_15

    .line 379
    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getDexTaskDockingState()I

    .line 381
    .line 382
    .line 383
    move-result v7

    .line 384
    invoke-static {v7}, Landroid/app/WindowConfiguration;->isDexTaskDocking(I)Z

    .line 385
    .line 386
    .line 387
    move-result v7

    .line 388
    if-eqz v7, :cond_15

    .line 389
    .line 390
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 391
    .line 392
    invoke-virtual {v7, v3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->adjustMinMaxSize(Landroid/graphics/Rect;)V

    .line 393
    .line 394
    .line 395
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 396
    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getDexTaskDockingState()I

    .line 398
    .line 399
    .line 400
    move-result v8

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getFreeformThickness$1()I

    .line 402
    .line 403
    .line 404
    move-result v9

    .line 405
    invoke-virtual {v7, v8, v3, v9}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->adjustDexDockingTaskBounds(ILandroid/graphics/Rect;I)V

    .line 406
    .line 407
    .line 408
    :cond_15
    iget v7, v3, Landroid/graphics/Rect;->left:I

    .line 409
    .line 410
    if-ne v4, v7, :cond_17

    .line 411
    .line 412
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 413
    .line 414
    if-ne v5, v4, :cond_17

    .line 415
    .line 416
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 417
    .line 418
    if-ne v6, v4, :cond_17

    .line 419
    .line 420
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 421
    .line 422
    if-ne v1, v4, :cond_17

    .line 423
    .line 424
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 425
    .line 426
    if-eqz v1, :cond_16

    .line 427
    .line 428
    if-nez p4, :cond_17

    .line 429
    .line 430
    :cond_16
    return v12

    .line 431
    :cond_17
    iget-object v1, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 432
    .line 433
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 434
    .line 435
    move-object/from16 v4, p1

    .line 436
    .line 437
    invoke-virtual {v4, v1, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 438
    .line 439
    .line 440
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 441
    .line 442
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 443
    .line 444
    iget-boolean v5, v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mIsAdjusted:Z

    .line 445
    .line 446
    if-eqz v5, :cond_18

    .line 447
    .line 448
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mOriginBounds:Landroid/graphics/Rect;

    .line 449
    .line 450
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    if-nez v4, :cond_18

    .line 455
    .line 456
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 457
    .line 458
    const/4 v5, 0x0

    .line 459
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->setOriginBounds(Landroid/graphics/Rect;)V

    .line 460
    .line 461
    .line 462
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 463
    .line 464
    iget-boolean v4, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mIsAdjusted:Z

    .line 465
    .line 466
    if-eqz v4, :cond_18

    .line 467
    .line 468
    iput-boolean v12, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mIsAdjusted:Z

    .line 469
    .line 470
    :cond_18
    iget-boolean v1, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 471
    .line 472
    const/4 v4, 0x1

    .line 473
    if-nez v1, :cond_1c

    .line 474
    .line 475
    iget-object v1, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    .line 476
    .line 477
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    invoke-virtual {v10, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    if-eqz v1, :cond_1b

    .line 486
    .line 487
    iget-object v5, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 488
    .line 489
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 490
    .line 491
    .line 492
    move-result-object v5

    .line 493
    iget v6, v1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 494
    .line 495
    iget v7, v1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 496
    .line 497
    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 498
    .line 499
    invoke-static {v5, v6, v7, v1}, Lcom/android/wm/shell/common/DisplayLayout;->navigationBarPosition(Landroid/content/res/Resources;III)I

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    const/4 v5, 0x4

    .line 504
    if-ne v1, v5, :cond_19

    .line 505
    .line 506
    iget v1, v11, Landroid/graphics/Rect;->bottom:I

    .line 507
    .line 508
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 509
    .line 510
    if-gt v1, v3, :cond_1b

    .line 511
    .line 512
    goto :goto_b

    .line 513
    :cond_19
    const/4 v5, 0x2

    .line 514
    if-ne v1, v5, :cond_1a

    .line 515
    .line 516
    iget v1, v11, Landroid/graphics/Rect;->right:I

    .line 517
    .line 518
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 519
    .line 520
    if-gt v1, v3, :cond_1b

    .line 521
    .line 522
    goto :goto_b

    .line 523
    :cond_1a
    if-ne v1, v4, :cond_1b

    .line 524
    .line 525
    iget v1, v11, Landroid/graphics/Rect;->left:I

    .line 526
    .line 527
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 528
    .line 529
    if-lt v1, v3, :cond_1b

    .line 530
    .line 531
    :goto_b
    move v12, v4

    .line 532
    :cond_1b
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mLastFreeformTaskSurfaceOverlappingWithNavBar:Z

    .line 533
    .line 534
    if-eq v12, v1, :cond_1c

    .line 535
    .line 536
    iput-boolean v12, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mLastFreeformTaskSurfaceOverlappingWithNavBar:Z

    .line 537
    .line 538
    iget-object v1, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 539
    .line 540
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 541
    .line 542
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 543
    .line 544
    invoke-virtual {v0, v1, v12}, Landroid/window/TaskOrganizer;->setFreeformTaskSurfaceOverlappedWithNavi(Landroid/window/WindowContainerToken;Z)V

    .line 545
    .line 546
    .line 547
    :cond_1c
    return v4
.end method

.method public final getCaptionVisibleHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 6
    .line 7
    check-cast p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getCaptionVisibleHeight()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final getDexTaskDockingState()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    .line 5
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 6
    .line 7
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getFreeformThickness$1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 6
    .line 7
    check-cast p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getFreeformThickness$1()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final getUpdatedCaptionHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 6
    .line 7
    check-cast p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const v0, 0x105033a

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const v0, 0x7f070daf

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {v0, p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_1
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public final isDexSnappingInNonFreeform()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :cond_1
    :goto_0
    return v1
.end method

.method public final onDragPositioningEnd(FF)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/high16 v3, -0x40800000    # -1.0f

    .line 8
    .line 9
    cmpl-float v4, v0, v3

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    cmpl-float v3, v2, v3

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    iput-boolean v5, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mHasMoved:Z

    .line 19
    .line 20
    :cond_0
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 21
    .line 22
    iget-boolean v4, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    .line 23
    .line 24
    const/4 v6, 0x1

    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    iput-boolean v6, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    .line 28
    .line 29
    iput-boolean v5, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mHasMoved:Z

    .line 30
    .line 31
    :cond_1
    iget-boolean v4, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mHasMoved:Z

    .line 32
    .line 33
    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 34
    .line 35
    const/4 v9, 0x2

    .line 36
    iget-object v10, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 37
    .line 38
    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 39
    .line 40
    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 41
    .line 42
    iget-object v13, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 43
    .line 44
    if-eqz v4, :cond_4e

    .line 45
    .line 46
    const/4 v4, -0x1

    .line 47
    if-eqz v7, :cond_2

    .line 48
    .line 49
    iget-object v14, v7, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 50
    .line 51
    iput v4, v14, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimType:I

    .line 52
    .line 53
    :cond_2
    new-instance v14, Landroid/window/WindowContainerTransaction;

    .line 54
    .line 55
    invoke-direct {v14}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v15, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 59
    .line 60
    iget-object v15, v15, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 61
    .line 62
    invoke-virtual {v14, v15, v5}, Landroid/window/WindowContainerTransaction;->setDragResizing(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 63
    .line 64
    .line 65
    iget-boolean v15, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mResizing:Z

    .line 66
    .line 67
    const/4 v8, -0x5

    .line 68
    const/4 v4, 0x5

    .line 69
    if-eqz v15, :cond_8

    .line 70
    .line 71
    if-eqz v7, :cond_8

    .line 72
    .line 73
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->canResizeGesture()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_6

    .line 80
    .line 81
    iget-boolean v3, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 82
    .line 83
    if-nez v3, :cond_6

    .line 84
    .line 85
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->readyToMinimize()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v2, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 98
    .line 99
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 100
    .line 101
    iget v3, v12, Landroid/graphics/Rect;->left:I

    .line 102
    .line 103
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    div-int/2addr v4, v9

    .line 108
    add-int/2addr v4, v3

    .line 109
    iget v3, v12, Landroid/graphics/Rect;->top:I

    .line 110
    .line 111
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    div-int/2addr v8, v9

    .line 116
    add-int/2addr v8, v3

    .line 117
    invoke-virtual {v0, v2, v5, v4, v8}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeTaskToSpecificPosition(IZII)Z

    .line 118
    .line 119
    .line 120
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_GESTURE_SA_LOGGING:Z

    .line 121
    .line 122
    if-eqz v0, :cond_22

    .line 123
    .line 124
    const-string v0, "2016"

    .line 125
    .line 126
    invoke-static {v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_13

    .line 130
    .line 131
    :cond_3
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->needToFullscreenTransition()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_22

    .line 138
    .line 139
    iget-object v0, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 140
    .line 141
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eq v2, v4, :cond_4

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_4
    iget-object v2, v11, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    .line 152
    .line 153
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, Lcom/android/wm/shell/freeform/FreeformTaskListener;

    .line 158
    .line 159
    if-eqz v2, :cond_5

    .line 160
    .line 161
    iget-object v2, v2, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 162
    .line 163
    check-cast v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 164
    .line 165
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 166
    .line 167
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->maximizeTask(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 168
    .line 169
    .line 170
    :cond_5
    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_GESTURE_SA_LOGGING:Z

    .line 171
    .line 172
    if-eqz v0, :cond_22

    .line 173
    .line 174
    const-string v0, "2015"

    .line 175
    .line 176
    invoke-static {v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string v0, "2090"

    .line 180
    .line 181
    const-string v2, "From popup resizing"

    .line 182
    .line 183
    invoke-static {v0, v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_13

    .line 187
    .line 188
    :cond_6
    invoke-virtual {v1, v14, v0, v2, v6}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->changeBounds(Landroid/window/WindowContainerTransaction;FFZ)Z

    .line 189
    .line 190
    .line 191
    iget-boolean v0, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 192
    .line 193
    if-nez v0, :cond_7

    .line 194
    .line 195
    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 196
    .line 197
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    .line 198
    .line 199
    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 200
    .line 201
    .line 202
    :cond_7
    iget-boolean v0, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 203
    .line 204
    if-eqz v0, :cond_22

    .line 205
    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getDexTaskDockingState()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    const/4 v2, -0x1

    .line 211
    if-eq v0, v2, :cond_22

    .line 212
    .line 213
    if-eqz v0, :cond_22

    .line 214
    .line 215
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    iget-object v2, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 220
    .line 221
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 222
    .line 223
    invoke-virtual {v0, v2, v12}, Lcom/samsung/android/multiwindow/MultiWindowManager;->resizeOtherTaskIfNeeded(ILandroid/graphics/Rect;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_13

    .line 227
    .line 228
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->supportDexSnapping()Z

    .line 229
    .line 230
    .line 231
    move-result v15

    .line 232
    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 233
    .line 234
    if-eqz v15, :cond_23

    .line 235
    .line 236
    if-eqz v7, :cond_b

    .line 237
    .line 238
    iget-object v3, v7, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 239
    .line 240
    if-eqz v3, :cond_a

    .line 241
    .line 242
    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mIsKeyguardOccludedAndShowingSupplier:Ljava/util/function/BooleanSupplier;

    .line 243
    .line 244
    if-eqz v3, :cond_9

    .line 245
    .line 246
    invoke-interface {v3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    goto :goto_1

    .line 251
    :cond_9
    move v3, v5

    .line 252
    :goto_1
    if-eqz v3, :cond_a

    .line 253
    .line 254
    move v3, v6

    .line 255
    goto :goto_2

    .line 256
    :cond_a
    move v3, v5

    .line 257
    :goto_2
    if-eqz v3, :cond_b

    .line 258
    .line 259
    move v3, v6

    .line 260
    goto :goto_3

    .line 261
    :cond_b
    move v3, v5

    .line 262
    :goto_3
    if-eqz v3, :cond_c

    .line 263
    .line 264
    invoke-virtual {v1, v14, v0, v2, v6}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->changeBounds(Landroid/window/WindowContainerTransaction;FFZ)Z

    .line 265
    .line 266
    .line 267
    goto/16 :goto_13

    .line 268
    .line 269
    :cond_c
    const/high16 v3, -0x40000000    # -2.0f

    .line 270
    .line 271
    cmpl-float v0, v0, v3

    .line 272
    .line 273
    if-nez v0, :cond_d

    .line 274
    .line 275
    cmpl-float v0, v2, v3

    .line 276
    .line 277
    if-nez v0, :cond_d

    .line 278
    .line 279
    iput v5, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mLastSnapType:I

    .line 280
    .line 281
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    .line 282
    .line 283
    if-eqz v0, :cond_d

    .line 284
    .line 285
    iget-object v0, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingBounds:Landroid/graphics/Rect;

    .line 286
    .line 287
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 288
    .line 289
    .line 290
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    .line 291
    .line 292
    iget-object v0, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingOtherBounds:Landroid/graphics/Rect;

    .line 293
    .line 294
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 295
    .line 296
    .line 297
    :cond_d
    iget-object v0, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 298
    .line 299
    const/4 v2, 0x3

    .line 300
    if-eqz v7, :cond_11

    .line 301
    .line 302
    iget-object v3, v7, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    .line 303
    .line 304
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    invoke-static {v0}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->isDexCompatEnabled(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    if-eqz v3, :cond_11

    .line 312
    .line 313
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    iget v3, v3, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 318
    .line 319
    if-ne v3, v2, :cond_e

    .line 320
    .line 321
    iget-object v2, v7, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    .line 322
    .line 323
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 324
    .line 325
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->toggleFreeformForDexCompatApp(I)V

    .line 326
    .line 327
    .line 328
    move v0, v5

    .line 329
    goto :goto_4

    .line 330
    :cond_e
    if-eq v3, v6, :cond_f

    .line 331
    .line 332
    if-ne v3, v9, :cond_10

    .line 333
    .line 334
    :cond_f
    iget v2, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mLastSnapType:I

    .line 335
    .line 336
    if-ne v2, v9, :cond_10

    .line 337
    .line 338
    iget-object v2, v7, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    .line 339
    .line 340
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 341
    .line 342
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->toggleFreeformForDexCompatApp(I)V

    .line 343
    .line 344
    .line 345
    :cond_10
    move v0, v6

    .line 346
    :goto_4
    move v2, v5

    .line 347
    goto/16 :goto_c

    .line 348
    .line 349
    :cond_11
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    if-eq v3, v6, :cond_19

    .line 354
    .line 355
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 360
    .line 361
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    if-eqz v3, :cond_12

    .line 366
    .line 367
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-virtual {v3}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    if-eqz v3, :cond_12

    .line 376
    .line 377
    goto/16 :goto_7

    .line 378
    .line 379
    :cond_12
    iget v3, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mLastSnapType:I

    .line 380
    .line 381
    if-ne v3, v9, :cond_13

    .line 382
    .line 383
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 384
    .line 385
    invoke-virtual {v14, v0, v6}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 386
    .line 387
    .line 388
    move v0, v5

    .line 389
    goto/16 :goto_8

    .line 390
    .line 391
    :cond_13
    if-eqz v3, :cond_18

    .line 392
    .line 393
    iget-boolean v15, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    .line 394
    .line 395
    if-eqz v15, :cond_16

    .line 396
    .line 397
    const/4 v2, 0x4

    .line 398
    if-ne v3, v2, :cond_14

    .line 399
    .line 400
    const/16 v2, 0x20

    .line 401
    .line 402
    goto :goto_5

    .line 403
    :cond_14
    move v2, v5

    .line 404
    :goto_5
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    if-eq v3, v4, :cond_15

    .line 412
    .line 413
    goto/16 :goto_12

    .line 414
    .line 415
    :cond_15
    iget-object v3, v11, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    .line 416
    .line 417
    const/4 v4, -0x5

    .line 418
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    check-cast v3, Lcom/android/wm/shell/freeform/FreeformTaskListener;

    .line 423
    .line 424
    if-eqz v3, :cond_21

    .line 425
    .line 426
    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 427
    .line 428
    check-cast v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 429
    .line 430
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 431
    .line 432
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    new-instance v4, Lcom/android/wm/shell/windowdecor/TaskOperations$$ExternalSyntheticLambda0;

    .line 436
    .line 437
    invoke-direct {v4, v0, v2}, Lcom/android/wm/shell/windowdecor/TaskOperations$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 438
    .line 439
    .line 440
    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSplitScreenController:Ljava/util/Optional;

    .line 441
    .line 442
    invoke-virtual {v0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 443
    .line 444
    .line 445
    goto/16 :goto_12

    .line 446
    .line 447
    :cond_16
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    .line 448
    .line 449
    iget-object v0, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingBounds:Landroid/graphics/Rect;

    .line 450
    .line 451
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 456
    .line 457
    .line 458
    move-result v4

    .line 459
    if-ne v3, v4, :cond_17

    .line 460
    .line 461
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 466
    .line 467
    .line 468
    move-result v4

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getCaptionVisibleHeight()I

    .line 470
    .line 471
    .line 472
    move-result v15

    .line 473
    add-int/2addr v15, v4

    .line 474
    if-ne v3, v15, :cond_17

    .line 475
    .line 476
    move v3, v6

    .line 477
    goto :goto_6

    .line 478
    :cond_17
    move v3, v5

    .line 479
    :goto_6
    iput-boolean v3, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mIsOnlyPositionChanged:Z

    .line 480
    .line 481
    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 482
    .line 483
    .line 484
    :cond_18
    move v0, v5

    .line 485
    move v3, v6

    .line 486
    goto :goto_9

    .line 487
    :cond_19
    :goto_7
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    .line 488
    .line 489
    iput v5, v3, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerPosition:I

    .line 490
    .line 491
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 492
    .line 493
    invoke-virtual {v14, v0, v4}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 494
    .line 495
    .line 496
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    .line 497
    .line 498
    iget-object v0, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingBounds:Landroid/graphics/Rect;

    .line 499
    .line 500
    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 501
    .line 502
    .line 503
    move v0, v6

    .line 504
    :goto_8
    move v3, v0

    .line 505
    :goto_9
    iget v4, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mLastSnapType:I

    .line 506
    .line 507
    if-eq v4, v2, :cond_1a

    .line 508
    .line 509
    const/4 v2, 0x6

    .line 510
    if-eq v4, v2, :cond_1a

    .line 511
    .line 512
    const/16 v2, 0x9

    .line 513
    .line 514
    if-eq v4, v2, :cond_1a

    .line 515
    .line 516
    const/16 v2, 0xc

    .line 517
    .line 518
    if-eq v4, v2, :cond_1a

    .line 519
    .line 520
    goto :goto_b

    .line 521
    :cond_1a
    if-eqz v0, :cond_1b

    .line 522
    .line 523
    iget v2, v12, Landroid/graphics/Rect;->top:I

    .line 524
    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getUpdatedCaptionHeight()I

    .line 526
    .line 527
    .line 528
    move-result v4

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getFreeformThickness$1()I

    .line 530
    .line 531
    .line 532
    move-result v15

    .line 533
    add-int/2addr v15, v4

    .line 534
    add-int/2addr v15, v2

    .line 535
    iput v15, v12, Landroid/graphics/Rect;->top:I

    .line 536
    .line 537
    goto :goto_a

    .line 538
    :cond_1b
    iget v2, v12, Landroid/graphics/Rect;->top:I

    .line 539
    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getCaptionVisibleHeight()I

    .line 541
    .line 542
    .line 543
    move-result v4

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getFreeformThickness$1()I

    .line 545
    .line 546
    .line 547
    move-result v15

    .line 548
    add-int/2addr v15, v4

    .line 549
    add-int/2addr v15, v2

    .line 550
    iput v15, v12, Landroid/graphics/Rect;->top:I

    .line 551
    .line 552
    :goto_a
    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    .line 553
    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getFreeformThickness$1()I

    .line 555
    .line 556
    .line 557
    move-result v4

    .line 558
    sub-int/2addr v2, v4

    .line 559
    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    .line 560
    .line 561
    :goto_b
    move v2, v0

    .line 562
    move v0, v3

    .line 563
    :goto_c
    if-eqz v0, :cond_21

    .line 564
    .line 565
    iget-object v0, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 566
    .line 567
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 568
    .line 569
    invoke-virtual {v14, v0, v12}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 570
    .line 571
    .line 572
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    .line 573
    .line 574
    iget-object v0, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingOtherBounds:Landroid/graphics/Rect;

    .line 575
    .line 576
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 577
    .line 578
    .line 579
    move-result v0

    .line 580
    if-nez v0, :cond_21

    .line 581
    .line 582
    iget v0, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mLastSnapType:I

    .line 583
    .line 584
    if-ne v0, v6, :cond_1c

    .line 585
    .line 586
    move v0, v6

    .line 587
    goto :goto_d

    .line 588
    :cond_1c
    move v0, v5

    .line 589
    :goto_d
    if-eqz v0, :cond_1d

    .line 590
    .line 591
    move-object v3, v12

    .line 592
    goto :goto_e

    .line 593
    :cond_1d
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    .line 594
    .line 595
    iget-object v3, v3, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingOtherBounds:Landroid/graphics/Rect;

    .line 596
    .line 597
    :goto_e
    if-eqz v0, :cond_1e

    .line 598
    .line 599
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    .line 600
    .line 601
    iget-object v4, v4, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingOtherBounds:Landroid/graphics/Rect;

    .line 602
    .line 603
    goto :goto_f

    .line 604
    :cond_1e
    move-object v4, v12

    .line 605
    :goto_f
    iget-object v15, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 606
    .line 607
    iget v15, v15, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 608
    .line 609
    invoke-virtual {v8, v15}, Lcom/android/wm/shell/common/DisplayController;->getInsetsState(I)Landroid/view/InsetsState;

    .line 610
    .line 611
    .line 612
    move-result-object v8

    .line 613
    invoke-virtual {v8}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    .line 614
    .line 615
    .line 616
    move-result-object v15

    .line 617
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTmpRect2:Landroid/graphics/Rect;

    .line 618
    .line 619
    invoke-virtual {v6, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 620
    .line 621
    .line 622
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 623
    .line 624
    .line 625
    move-result v15

    .line 626
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 627
    .line 628
    .line 629
    move-result v16

    .line 630
    or-int v15, v15, v16

    .line 631
    .line 632
    invoke-virtual {v8, v6, v15, v5}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 633
    .line 634
    .line 635
    move-result-object v8

    .line 636
    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 637
    .line 638
    .line 639
    if-eqz v2, :cond_1f

    .line 640
    .line 641
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 642
    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getUpdatedCaptionHeight()I

    .line 644
    .line 645
    .line 646
    move-result v8

    .line 647
    add-int/2addr v8, v2

    .line 648
    iput v8, v3, Landroid/graphics/Rect;->top:I

    .line 649
    .line 650
    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 651
    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getUpdatedCaptionHeight()I

    .line 653
    .line 654
    .line 655
    move-result v8

    .line 656
    add-int/2addr v8, v2

    .line 657
    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 658
    .line 659
    goto :goto_10

    .line 660
    :cond_1f
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 661
    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getCaptionVisibleHeight()I

    .line 663
    .line 664
    .line 665
    move-result v8

    .line 666
    add-int/2addr v8, v2

    .line 667
    iput v8, v3, Landroid/graphics/Rect;->top:I

    .line 668
    .line 669
    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 670
    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getCaptionVisibleHeight()I

    .line 672
    .line 673
    .line 674
    move-result v8

    .line 675
    add-int/2addr v8, v2

    .line 676
    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 677
    .line 678
    :goto_10
    iget-object v2, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 679
    .line 680
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 681
    .line 682
    if-eqz v0, :cond_20

    .line 683
    .line 684
    move-object v0, v3

    .line 685
    goto :goto_11

    .line 686
    :cond_20
    move-object v0, v4

    .line 687
    :goto_11
    invoke-virtual {v14, v2, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 688
    .line 689
    .line 690
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 695
    .line 696
    .line 697
    move-result v2

    .line 698
    invoke-virtual {v0, v3, v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->initDockingBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 699
    .line 700
    .line 701
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    iget-object v2, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 706
    .line 707
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 708
    .line 709
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setCandidateTask(I)V

    .line 710
    .line 711
    .line 712
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    iget-object v2, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 717
    .line 718
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 719
    .line 720
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    .line 721
    .line 722
    iget-object v3, v3, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingOtherBounds:Landroid/graphics/Rect;

    .line 723
    .line 724
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->scheduleNotifyDexSnappingCallback(ILandroid/graphics/Rect;)V

    .line 725
    .line 726
    .line 727
    :cond_21
    :goto_12
    iget-boolean v0, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mIsOnlyPositionChanged:Z

    .line 728
    .line 729
    if-eqz v0, :cond_22

    .line 730
    .line 731
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 732
    .line 733
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 734
    .line 735
    .line 736
    iget-object v2, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 737
    .line 738
    iget v3, v12, Landroid/graphics/Rect;->left:I

    .line 739
    .line 740
    int-to-float v3, v3

    .line 741
    iget v4, v12, Landroid/graphics/Rect;->top:I

    .line 742
    .line 743
    int-to-float v4, v4

    .line 744
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 749
    .line 750
    .line 751
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    const-string v2, "mIsOnlyPositionChanged"

    .line 756
    .line 757
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->clearAllDockingTasks(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    :cond_22
    :goto_13
    move-object v2, v11

    .line 761
    goto/16 :goto_2a

    .line 762
    .line 763
    :cond_23
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 764
    .line 765
    if-eqz v4, :cond_49

    .line 766
    .line 767
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 768
    .line 769
    if-eqz v4, :cond_49

    .line 770
    .line 771
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocity:Landroid/graphics/PointF;

    .line 772
    .line 773
    iget v6, v4, Landroid/graphics/PointF;->x:F

    .line 774
    .line 775
    const v15, -0x39c48000    # -12000.0f

    .line 776
    .line 777
    .line 778
    cmpg-float v15, v6, v15

    .line 779
    .line 780
    if-gez v15, :cond_24

    .line 781
    .line 782
    const/4 v15, 0x1

    .line 783
    goto :goto_14

    .line 784
    :cond_24
    move v15, v5

    .line 785
    :goto_14
    const v16, 0x463b8000    # 12000.0f

    .line 786
    .line 787
    .line 788
    cmpl-float v6, v6, v16

    .line 789
    .line 790
    if-lez v6, :cond_25

    .line 791
    .line 792
    const/4 v6, 0x1

    .line 793
    goto :goto_15

    .line 794
    :cond_25
    move v6, v5

    .line 795
    :goto_15
    iget-object v5, v7, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 796
    .line 797
    invoke-virtual {v5}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    .line 798
    .line 799
    .line 800
    move-result v5

    .line 801
    if-eqz v5, :cond_26

    .line 802
    .line 803
    iget v9, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mMinVisibleWidth:I

    .line 804
    .line 805
    iget v0, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mStashMoveThreshold:I

    .line 806
    .line 807
    add-int/2addr v0, v9

    .line 808
    goto :goto_17

    .line 809
    :cond_26
    iget-object v0, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 810
    .line 811
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getFreeformCaptionType(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 812
    .line 813
    .line 814
    move-result v0

    .line 815
    if-nez v0, :cond_28

    .line 816
    .line 817
    invoke-virtual {v7}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    if-eqz v0, :cond_27

    .line 822
    .line 823
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 824
    .line 825
    .line 826
    move-result v9

    .line 827
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 828
    .line 829
    .line 830
    move-result v0

    .line 831
    sub-int/2addr v9, v0

    .line 832
    const/16 v17, 0x2

    .line 833
    .line 834
    div-int/lit8 v0, v9, 0x2

    .line 835
    .line 836
    goto :goto_17

    .line 837
    :cond_27
    const/16 v17, 0x2

    .line 838
    .line 839
    goto :goto_16

    .line 840
    :cond_28
    const/4 v9, 0x1

    .line 841
    const/16 v17, 0x2

    .line 842
    .line 843
    if-ne v0, v9, :cond_29

    .line 844
    .line 845
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 846
    .line 847
    .line 848
    move-result v0

    .line 849
    div-int/lit8 v0, v0, 0x2

    .line 850
    .line 851
    goto :goto_17

    .line 852
    :cond_29
    :goto_16
    const/4 v0, 0x0

    .line 853
    :goto_17
    iget-object v9, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 854
    .line 855
    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 856
    .line 857
    invoke-virtual {v8, v9}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 858
    .line 859
    .line 860
    move-result-object v9

    .line 861
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 862
    .line 863
    invoke-virtual {v9, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    .line 864
    .line 865
    .line 866
    if-eqz v5, :cond_2a

    .line 867
    .line 868
    iget v9, v12, Landroid/graphics/Rect;->right:I

    .line 869
    .line 870
    move-object/from16 v18, v11

    .line 871
    .line 872
    iget v11, v2, Landroid/graphics/Rect;->left:I

    .line 873
    .line 874
    add-int/2addr v11, v0

    .line 875
    if-ge v9, v11, :cond_2b

    .line 876
    .line 877
    goto :goto_18

    .line 878
    :cond_2a
    move-object/from16 v18, v11

    .line 879
    .line 880
    iget v9, v12, Landroid/graphics/Rect;->left:I

    .line 881
    .line 882
    iget v11, v2, Landroid/graphics/Rect;->left:I

    .line 883
    .line 884
    sub-int/2addr v11, v0

    .line 885
    if-ge v9, v11, :cond_2b

    .line 886
    .line 887
    :goto_18
    const/4 v9, 0x1

    .line 888
    goto :goto_19

    .line 889
    :cond_2b
    const/4 v9, 0x0

    .line 890
    :goto_19
    if-eqz v5, :cond_2c

    .line 891
    .line 892
    iget v5, v12, Landroid/graphics/Rect;->left:I

    .line 893
    .line 894
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 895
    .line 896
    sub-int/2addr v2, v0

    .line 897
    if-le v5, v2, :cond_2d

    .line 898
    .line 899
    goto :goto_1a

    .line 900
    :cond_2c
    iget v5, v12, Landroid/graphics/Rect;->right:I

    .line 901
    .line 902
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 903
    .line 904
    add-int/2addr v2, v0

    .line 905
    if-le v5, v2, :cond_2d

    .line 906
    .line 907
    :goto_1a
    const/4 v0, 0x1

    .line 908
    goto :goto_1b

    .line 909
    :cond_2d
    const/4 v0, 0x0

    .line 910
    :goto_1b
    iget-object v2, v7, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 911
    .line 912
    iget v5, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashType:I

    .line 913
    .line 914
    if-eqz v15, :cond_2e

    .line 915
    .line 916
    const/4 v11, 0x2

    .line 917
    if-ne v5, v11, :cond_2f

    .line 918
    .line 919
    :cond_2e
    if-eqz v6, :cond_30

    .line 920
    .line 921
    const/4 v6, 0x1

    .line 922
    if-eq v5, v6, :cond_30

    .line 923
    .line 924
    :cond_2f
    const/4 v5, 0x1

    .line 925
    goto :goto_1c

    .line 926
    :cond_30
    const/4 v5, 0x0

    .line 927
    :goto_1c
    if-nez v9, :cond_32

    .line 928
    .line 929
    if-eqz v0, :cond_31

    .line 930
    .line 931
    goto :goto_1d

    .line 932
    :cond_31
    const/4 v0, 0x0

    .line 933
    goto :goto_1e

    .line 934
    :cond_32
    :goto_1d
    const/4 v0, 0x1

    .line 935
    :goto_1e
    if-nez v5, :cond_34

    .line 936
    .line 937
    if-eqz v0, :cond_33

    .line 938
    .line 939
    goto :goto_1f

    .line 940
    :cond_33
    const/4 v0, 0x0

    .line 941
    goto :goto_20

    .line 942
    :cond_34
    :goto_1f
    const/4 v0, 0x1

    .line 943
    :goto_20
    if-eqz v0, :cond_35

    .line 944
    .line 945
    const/4 v5, 0x0

    .line 946
    iput-boolean v5, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    .line 947
    .line 948
    iget-object v0, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    .line 949
    .line 950
    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 951
    .line 952
    .line 953
    const/4 v2, 0x1

    .line 954
    invoke-virtual {v3, v14, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->setStashDim(Landroid/window/WindowContainerTransaction;Z)V

    .line 955
    .line 956
    .line 957
    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;

    .line 958
    .line 959
    invoke-direct {v0, v1, v5}, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/windowdecor/TaskPositioner;I)V

    .line 960
    .line 961
    .line 962
    invoke-virtual {v3, v12, v4, v0, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->moveToTarget(Landroid/graphics/Rect;Landroid/graphics/PointF;Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;Z)V

    .line 963
    .line 964
    .line 965
    move-object/from16 v2, v18

    .line 966
    .line 967
    goto/16 :goto_2a

    .line 968
    .line 969
    :cond_35
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 970
    .line 971
    new-instance v2, Landroid/graphics/PointF;

    .line 972
    .line 973
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocity:Landroid/graphics/PointF;

    .line 974
    .line 975
    invoke-direct {v2, v5}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    .line 976
    .line 977
    .line 978
    iget v5, v2, Landroid/graphics/PointF;->x:F

    .line 979
    .line 980
    const/4 v6, 0x0

    .line 981
    cmpl-float v9, v5, v6

    .line 982
    .line 983
    if-nez v9, :cond_36

    .line 984
    .line 985
    iget v9, v2, Landroid/graphics/PointF;->y:F

    .line 986
    .line 987
    cmpl-float v9, v9, v6

    .line 988
    .line 989
    if-nez v9, :cond_36

    .line 990
    .line 991
    goto :goto_22

    .line 992
    :cond_36
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 993
    .line 994
    .line 995
    move-result v5

    .line 996
    iget v0, v0, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mMinimumFlingVelocity:I

    .line 997
    .line 998
    int-to-float v0, v0

    .line 999
    cmpl-float v5, v5, v0

    .line 1000
    .line 1001
    if-gtz v5, :cond_37

    .line 1002
    .line 1003
    iget v5, v2, Landroid/graphics/PointF;->y:F

    .line 1004
    .line 1005
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 1006
    .line 1007
    .line 1008
    move-result v5

    .line 1009
    cmpl-float v0, v5, v0

    .line 1010
    .line 1011
    if-lez v0, :cond_3c

    .line 1012
    .line 1013
    :cond_37
    iget-object v0, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    .line 1014
    .line 1015
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 1016
    .line 1017
    .line 1018
    move-result v0

    .line 1019
    invoke-virtual {v8, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v0

    .line 1023
    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTempBounds:Landroid/graphics/Rect;

    .line 1024
    .line 1025
    const/4 v6, 0x0

    .line 1026
    invoke-virtual {v0, v5, v6}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 1027
    .line 1028
    .line 1029
    iget v0, v2, Landroid/graphics/PointF;->x:F

    .line 1030
    .line 1031
    const/4 v6, 0x0

    .line 1032
    cmpg-float v8, v0, v6

    .line 1033
    .line 1034
    if-gez v8, :cond_38

    .line 1035
    .line 1036
    const/4 v6, 0x1

    .line 1037
    goto :goto_21

    .line 1038
    :cond_38
    const/4 v6, 0x0

    .line 1039
    :goto_21
    if-eqz v6, :cond_39

    .line 1040
    .line 1041
    iget v8, v10, Landroid/graphics/Rect;->left:I

    .line 1042
    .line 1043
    iget v9, v5, Landroid/graphics/Rect;->left:I

    .line 1044
    .line 1045
    if-lt v8, v9, :cond_3c

    .line 1046
    .line 1047
    :cond_39
    if-nez v6, :cond_3a

    .line 1048
    .line 1049
    iget v8, v10, Landroid/graphics/Rect;->right:I

    .line 1050
    .line 1051
    iget v9, v5, Landroid/graphics/Rect;->right:I

    .line 1052
    .line 1053
    if-le v8, v9, :cond_3a

    .line 1054
    .line 1055
    goto :goto_22

    .line 1056
    :cond_3a
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 1057
    .line 1058
    .line 1059
    move-result v0

    .line 1060
    const/high16 v8, 0x442f0000    # 700.0f

    .line 1061
    .line 1062
    cmpg-float v0, v0, v8

    .line 1063
    .line 1064
    if-gez v0, :cond_3d

    .line 1065
    .line 1066
    if-eqz v6, :cond_3b

    .line 1067
    .line 1068
    iget v0, v12, Landroid/graphics/Rect;->left:I

    .line 1069
    .line 1070
    iget v8, v5, Landroid/graphics/Rect;->left:I

    .line 1071
    .line 1072
    add-int/lit8 v8, v8, -0x1e

    .line 1073
    .line 1074
    if-lt v0, v8, :cond_3c

    .line 1075
    .line 1076
    :cond_3b
    if-nez v6, :cond_3d

    .line 1077
    .line 1078
    iget v0, v12, Landroid/graphics/Rect;->right:I

    .line 1079
    .line 1080
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 1081
    .line 1082
    add-int/lit8 v5, v5, 0x1e

    .line 1083
    .line 1084
    if-le v0, v5, :cond_3d

    .line 1085
    .line 1086
    :cond_3c
    :goto_22
    move-object/from16 v2, v18

    .line 1087
    .line 1088
    goto :goto_23

    .line 1089
    :cond_3d
    iget v0, v2, Landroid/graphics/PointF;->y:F

    .line 1090
    .line 1091
    const/4 v2, 0x0

    .line 1092
    cmpl-float v0, v0, v2

    .line 1093
    .line 1094
    if-lez v0, :cond_3e

    .line 1095
    .line 1096
    iget-object v0, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1097
    .line 1098
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 1099
    .line 1100
    move-object/from16 v2, v18

    .line 1101
    .line 1102
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->isTargetTaskImeShowing(I)Z

    .line 1103
    .line 1104
    .line 1105
    move-result v0

    .line 1106
    if-eqz v0, :cond_3f

    .line 1107
    .line 1108
    :goto_23
    const/4 v0, 0x0

    .line 1109
    goto :goto_24

    .line 1110
    :cond_3e
    move-object/from16 v2, v18

    .line 1111
    .line 1112
    :cond_3f
    const/4 v0, 0x1

    .line 1113
    :goto_24
    if-eqz v0, :cond_40

    .line 1114
    .line 1115
    const/4 v5, 0x0

    .line 1116
    iput-boolean v5, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    .line 1117
    .line 1118
    invoke-virtual {v3, v14, v5}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->setStashDim(Landroid/window/WindowContainerTransaction;Z)V

    .line 1119
    .line 1120
    .line 1121
    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;

    .line 1122
    .line 1123
    const/4 v6, 0x1

    .line 1124
    invoke-direct {v0, v1, v6}, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/windowdecor/TaskPositioner;I)V

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v3, v12, v4, v0, v5}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->moveToTarget(Landroid/graphics/Rect;Landroid/graphics/PointF;Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;Z)V

    .line 1128
    .line 1129
    .line 1130
    goto/16 :goto_2a

    .line 1131
    .line 1132
    :cond_40
    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 1133
    .line 1134
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v4

    .line 1138
    iget v5, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    .line 1139
    .line 1140
    if-nez v5, :cond_41

    .line 1141
    .line 1142
    const/4 v5, 0x1

    .line 1143
    goto :goto_25

    .line 1144
    :cond_41
    const/4 v5, 0x0

    .line 1145
    :goto_25
    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 1146
    .line 1147
    if-eqz v6, :cond_46

    .line 1148
    .line 1149
    if-eqz v5, :cond_42

    .line 1150
    .line 1151
    if-nez v4, :cond_42

    .line 1152
    .line 1153
    goto :goto_27

    .line 1154
    :cond_42
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 1155
    .line 1156
    .line 1157
    move-result v4

    .line 1158
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleViewWidth()I

    .line 1159
    .line 1160
    .line 1161
    move-result v0

    .line 1162
    sub-int/2addr v4, v0

    .line 1163
    const/4 v0, 0x2

    .line 1164
    div-int/2addr v4, v0

    .line 1165
    iget v0, v12, Landroid/graphics/Rect;->left:I

    .line 1166
    .line 1167
    add-int v5, v0, v4

    .line 1168
    .line 1169
    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 1170
    .line 1171
    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    .line 1172
    .line 1173
    iget v8, v6, Landroid/graphics/Rect;->left:I

    .line 1174
    .line 1175
    if-le v5, v8, :cond_43

    .line 1176
    .line 1177
    iget v5, v12, Landroid/graphics/Rect;->right:I

    .line 1178
    .line 1179
    sub-int/2addr v5, v4

    .line 1180
    iget v9, v6, Landroid/graphics/Rect;->right:I

    .line 1181
    .line 1182
    if-ge v5, v9, :cond_43

    .line 1183
    .line 1184
    goto :goto_27

    .line 1185
    :cond_43
    sub-int v0, v8, v0

    .line 1186
    .line 1187
    if-le v0, v4, :cond_44

    .line 1188
    .line 1189
    sub-int v0, v8, v4

    .line 1190
    .line 1191
    goto :goto_26

    .line 1192
    :cond_44
    iget v0, v12, Landroid/graphics/Rect;->right:I

    .line 1193
    .line 1194
    iget v5, v6, Landroid/graphics/Rect;->right:I

    .line 1195
    .line 1196
    sub-int/2addr v0, v5

    .line 1197
    if-le v0, v4, :cond_45

    .line 1198
    .line 1199
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 1200
    .line 1201
    .line 1202
    move-result v0

    .line 1203
    sub-int/2addr v5, v0

    .line 1204
    add-int v0, v5, v4

    .line 1205
    .line 1206
    goto :goto_26

    .line 1207
    :cond_45
    const/4 v0, 0x0

    .line 1208
    :goto_26
    new-instance v4, Landroid/graphics/Rect;

    .line 1209
    .line 1210
    iget v5, v12, Landroid/graphics/Rect;->top:I

    .line 1211
    .line 1212
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 1213
    .line 1214
    .line 1215
    move-result v6

    .line 1216
    add-int/2addr v6, v0

    .line 1217
    iget v8, v12, Landroid/graphics/Rect;->bottom:I

    .line 1218
    .line 1219
    invoke-direct {v4, v0, v5, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1220
    .line 1221
    .line 1222
    goto :goto_28

    .line 1223
    :cond_46
    :goto_27
    move-object v4, v12

    .line 1224
    :goto_28
    if-eq v4, v12, :cond_47

    .line 1225
    .line 1226
    iget-object v0, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 1227
    .line 1228
    invoke-static {v0}, Lcom/android/wm/shell/common/FreeformDragPositioningController;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/common/FreeformDragPositioningController;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v0

    .line 1232
    iget-object v0, v0, Lcom/android/wm/shell/common/FreeformDragPositioningController;->mFreeformDragListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    .line 1233
    .line 1234
    iget-object v0, v0, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 1235
    .line 1236
    iget-object v0, v0, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 1237
    .line 1238
    iget-boolean v0, v0, Lcom/android/wm/shell/common/DismissButtonView;->mIsEnterDismissButton:Z

    .line 1239
    .line 1240
    if-nez v0, :cond_47

    .line 1241
    .line 1242
    const/4 v5, 0x1

    .line 1243
    invoke-virtual {v3, v12, v4, v5}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->scheduleAnimateRestore(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1244
    .line 1245
    .line 1246
    const/4 v0, 0x1

    .line 1247
    goto :goto_29

    .line 1248
    :cond_47
    const/4 v0, 0x0

    .line 1249
    :goto_29
    if-nez v0, :cond_4a

    .line 1250
    .line 1251
    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 1252
    .line 1253
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    .line 1254
    .line 1255
    .line 1256
    move-result v0

    .line 1257
    if-eqz v0, :cond_48

    .line 1258
    .line 1259
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 1260
    .line 1261
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1262
    .line 1263
    .line 1264
    iget-object v4, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 1265
    .line 1266
    const/high16 v20, 0x3f800000    # 1.0f

    .line 1267
    .line 1268
    const/16 v21, 0x0

    .line 1269
    .line 1270
    const/16 v22, 0x0

    .line 1271
    .line 1272
    const/high16 v23, 0x3f800000    # 1.0f

    .line 1273
    .line 1274
    move-object/from16 v18, v0

    .line 1275
    .line 1276
    move-object/from16 v19, v4

    .line 1277
    .line 1278
    invoke-virtual/range {v18 .. v23}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1279
    .line 1280
    .line 1281
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1282
    .line 1283
    .line 1284
    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 1285
    .line 1286
    const/4 v4, 0x0

    .line 1287
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setStashed(I)V

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v3, v14, v4}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->setStashDim(Landroid/window/WindowContainerTransaction;Z)V

    .line 1291
    .line 1292
    .line 1293
    iget-object v0, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1294
    .line 1295
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1296
    .line 1297
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1298
    .line 1299
    invoke-virtual {v14, v0, v3}, Landroid/window/WindowContainerTransaction;->setChangeFreeformStashScale(Landroid/window/WindowContainerToken;F)Landroid/window/WindowContainerTransaction;

    .line 1300
    .line 1301
    .line 1302
    :cond_48
    move/from16 v0, p1

    .line 1303
    .line 1304
    move/from16 v3, p2

    .line 1305
    .line 1306
    const/4 v4, 0x1

    .line 1307
    invoke-virtual {v1, v14, v0, v3, v4}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->changeBounds(Landroid/window/WindowContainerTransaction;FFZ)Z

    .line 1308
    .line 1309
    .line 1310
    goto :goto_2a

    .line 1311
    :cond_49
    move v3, v2

    .line 1312
    move-object v2, v11

    .line 1313
    const/4 v4, 0x0

    .line 1314
    invoke-virtual {v1, v14, v0, v3, v4}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->changeBounds(Landroid/window/WindowContainerTransaction;FFZ)Z

    .line 1315
    .line 1316
    .line 1317
    :cond_4a
    :goto_2a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 1318
    .line 1319
    if-eqz v0, :cond_4b

    .line 1320
    .line 1321
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_TASK_POSITIONER:Z

    .line 1322
    .line 1323
    if-eqz v0, :cond_4b

    .line 1324
    .line 1325
    iget-boolean v0, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mResizing:Z

    .line 1326
    .line 1327
    if-eqz v0, :cond_4b

    .line 1328
    .line 1329
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 1330
    .line 1331
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->readyToMinimize()Z

    .line 1332
    .line 1333
    .line 1334
    move-result v0

    .line 1335
    if-nez v0, :cond_4b

    .line 1336
    .line 1337
    iget-object v0, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1338
    .line 1339
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1340
    .line 1341
    const-string/jumbo v3, "resize_freeform"

    .line 1342
    .line 1343
    .line 1344
    const/4 v4, 0x1

    .line 1345
    invoke-virtual {v14, v0, v4, v3}, Landroid/window/WindowContainerTransaction;->setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;

    .line 1346
    .line 1347
    .line 1348
    :cond_4b
    if-eqz v7, :cond_4d

    .line 1349
    .line 1350
    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 1351
    .line 1352
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    .line 1353
    .line 1354
    .line 1355
    move-result v0

    .line 1356
    if-nez v0, :cond_4d

    .line 1357
    .line 1358
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 1359
    .line 1360
    if-eqz v0, :cond_4c

    .line 1361
    .line 1362
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->readyToMinimize()Z

    .line 1363
    .line 1364
    .line 1365
    move-result v0

    .line 1366
    if-nez v0, :cond_4d

    .line 1367
    .line 1368
    :cond_4c
    iget-object v0, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1369
    .line 1370
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1371
    .line 1372
    const/4 v3, 0x1

    .line 1373
    invoke-virtual {v14, v0, v3}, Landroid/window/WindowContainerTransaction;->setChangeFreeformStashMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 1374
    .line 1375
    .line 1376
    :cond_4d
    invoke-virtual {v2, v14}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 1377
    .line 1378
    .line 1379
    const/4 v3, 0x0

    .line 1380
    goto :goto_2b

    .line 1381
    :cond_4e
    move-object v2, v11

    .line 1382
    move v3, v5

    .line 1383
    :goto_2b
    iput v3, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mCtrlType:I

    .line 1384
    .line 1385
    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 1386
    .line 1387
    .line 1388
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    .line 1389
    .line 1390
    const/4 v4, 0x0

    .line 1391
    invoke-virtual {v0, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 1392
    .line 1393
    .line 1394
    iput-boolean v3, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mHasMoved:Z

    .line 1395
    .line 1396
    iput-boolean v3, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mIsOnlyPositionChanged:Z

    .line 1397
    .line 1398
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 1399
    .line 1400
    if-eqz v0, :cond_4f

    .line 1401
    .line 1402
    iput-boolean v3, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mIsUserInteracting:Z

    .line 1403
    .line 1404
    :cond_4f
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 1405
    .line 1406
    const/4 v4, 0x0

    .line 1407
    if-eqz v0, :cond_52

    .line 1408
    .line 1409
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->dismiss()V

    .line 1410
    .line 1411
    .line 1412
    iput-object v4, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 1413
    .line 1414
    iput-boolean v3, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mResizing:Z

    .line 1415
    .line 1416
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_SHADOW_ANIM:Z

    .line 1417
    .line 1418
    if-eqz v0, :cond_52

    .line 1419
    .line 1420
    if-eqz v7, :cond_52

    .line 1421
    .line 1422
    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;

    .line 1423
    .line 1424
    if-nez v0, :cond_50

    .line 1425
    .line 1426
    goto :goto_2c

    .line 1427
    :cond_50
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v0

    .line 1431
    if-eqz v0, :cond_52

    .line 1432
    .line 1433
    iget-object v3, v7, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragShadowAnimator:Landroid/animation/ObjectAnimator;

    .line 1434
    .line 1435
    if-eqz v3, :cond_51

    .line 1436
    .line 1437
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1438
    .line 1439
    .line 1440
    :cond_51
    iget-object v3, v7, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;

    .line 1441
    .line 1442
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->calculateElevation()F

    .line 1443
    .line 1444
    .line 1445
    move-result v3

    .line 1446
    iput v3, v7, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mWindowElevation:F

    .line 1447
    .line 1448
    const/4 v5, 0x2

    .line 1449
    new-array v6, v5, [F

    .line 1450
    .line 1451
    const/4 v5, 0x0

    .line 1452
    const/4 v8, 0x0

    .line 1453
    aput v5, v6, v8

    .line 1454
    .line 1455
    const/4 v5, 0x1

    .line 1456
    aput v3, v6, v5

    .line 1457
    .line 1458
    const-string v3, "elevation"

    .line 1459
    .line 1460
    invoke-static {v0, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v0

    .line 1464
    iput-object v0, v7, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragShadowAnimator:Landroid/animation/ObjectAnimator;

    .line 1465
    .line 1466
    const-wide/16 v5, 0x190

    .line 1467
    .line 1468
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1469
    .line 1470
    .line 1471
    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragShadowAnimator:Landroid/animation/ObjectAnimator;

    .line 1472
    .line 1473
    const-wide/16 v5, 0xc8

    .line 1474
    .line 1475
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v0

    .line 1479
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1480
    .line 1481
    .line 1482
    iget-object v0, v7, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragShadowAnimator:Landroid/animation/ObjectAnimator;

    .line 1483
    .line 1484
    new-instance v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$10;

    .line 1485
    .line 1486
    invoke-direct {v3, v7}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$10;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V

    .line 1487
    .line 1488
    .line 1489
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1490
    .line 1491
    .line 1492
    :cond_52
    :goto_2c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_DISMISS_VIEW:Z

    .line 1493
    .line 1494
    if-eqz v0, :cond_55

    .line 1495
    .line 1496
    iget-boolean v0, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 1497
    .line 1498
    if-nez v0, :cond_55

    .line 1499
    .line 1500
    iget-boolean v0, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mResizing:Z

    .line 1501
    .line 1502
    if-nez v0, :cond_55

    .line 1503
    .line 1504
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDragPositioningListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    .line 1505
    .line 1506
    if-eqz v3, :cond_55

    .line 1507
    .line 1508
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->isDexSnappingInNonFreeform()Z

    .line 1509
    .line 1510
    .line 1511
    move-result v0

    .line 1512
    if-nez v0, :cond_55

    .line 1513
    .line 1514
    iget-object v0, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1515
    .line 1516
    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1517
    .line 1518
    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;

    .line 1519
    .line 1520
    const/4 v6, 0x2

    .line 1521
    invoke-direct {v0, v1, v6}, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/windowdecor/TaskPositioner;I)V

    .line 1522
    .line 1523
    .line 1524
    iget-object v6, v3, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 1525
    .line 1526
    iget-object v8, v6, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 1527
    .line 1528
    iget-boolean v8, v8, Lcom/android/wm/shell/common/DismissButtonView;->mIsEnterDismissButton:Z

    .line 1529
    .line 1530
    if-eqz v8, :cond_53

    .line 1531
    .line 1532
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;->run()V

    .line 1533
    .line 1534
    .line 1535
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v0

    .line 1539
    const/16 v8, 0x90

    .line 1540
    .line 1541
    invoke-interface {v0, v5, v8}, Landroid/app/IActivityTaskManager;->removeTaskWithFlags(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1542
    .line 1543
    .line 1544
    goto :goto_2d

    .line 1545
    :catch_0
    move-exception v0

    .line 1546
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1547
    .line 1548
    const-string v9, "Failed to removeTask in onTaskDragEnd: "

    .line 1549
    .line 1550
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1554
    .line 1555
    .line 1556
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v8

    .line 1560
    const-string v9, "FreeformDragPositioningController$FreeformDragListener"

    .line 1561
    .line 1562
    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    .line 1564
    .line 1565
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1566
    .line 1567
    .line 1568
    :cond_53
    :goto_2d
    iget-object v0, v6, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 1569
    .line 1570
    iget-boolean v0, v0, Lcom/android/wm/shell/common/DismissButtonView;->mIsEnterDismissButton:Z

    .line 1571
    .line 1572
    if-nez v0, :cond_54

    .line 1573
    .line 1574
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v0

    .line 1578
    invoke-virtual {v0, v5}, Lcom/samsung/android/multiwindow/MultiWindowManager;->saveFreeformBounds(I)V

    .line 1579
    .line 1580
    .line 1581
    :cond_54
    iget-object v0, v3, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 1582
    .line 1583
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    .line 1585
    .line 1586
    new-instance v3, Lcom/android/wm/shell/common/DismissButtonManager$$ExternalSyntheticLambda0;

    .line 1587
    .line 1588
    invoke-direct {v3, v0}, Lcom/android/wm/shell/common/DismissButtonManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DismissButtonManager;)V

    .line 1589
    .line 1590
    .line 1591
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/common/DismissButtonManager;->hide(Ljava/lang/Runnable;)V

    .line 1592
    .line 1593
    .line 1594
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_SHADOW_ANIM:Z

    .line 1595
    .line 1596
    if-eqz v0, :cond_55

    .line 1597
    .line 1598
    if-eqz v7, :cond_55

    .line 1599
    .line 1600
    const/4 v3, 0x1

    .line 1601
    invoke-virtual {v7, v12, v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->playShadowAnimation(Landroid/graphics/Rect;Z)V

    .line 1602
    .line 1603
    .line 1604
    :cond_55
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    .line 1605
    .line 1606
    if-eqz v0, :cond_57

    .line 1607
    .line 1608
    iget-boolean v3, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mIsAttached:Z

    .line 1609
    .line 1610
    if-eqz v3, :cond_56

    .line 1611
    .line 1612
    iget-object v3, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mView:Lcom/android/wm/shell/freeform/DexSnappingGuideView;

    .line 1613
    .line 1614
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1615
    .line 1616
    .line 1617
    iget-object v5, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mWindowManager:Landroid/view/WindowManager;

    .line 1618
    .line 1619
    invoke-interface {v5, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1620
    .line 1621
    .line 1622
    const/4 v3, 0x0

    .line 1623
    iput-boolean v3, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mIsAttached:Z

    .line 1624
    .line 1625
    goto :goto_2e

    .line 1626
    :cond_56
    const/4 v3, 0x0

    .line 1627
    :goto_2e
    iput-object v4, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    .line 1628
    .line 1629
    goto :goto_2f

    .line 1630
    :cond_57
    const/4 v3, 0x0

    .line 1631
    :goto_2f
    iget-boolean v0, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mLastFreeformTaskSurfaceOverlappingWithNavBar:Z

    .line 1632
    .line 1633
    if-eqz v0, :cond_58

    .line 1634
    .line 1635
    iput-boolean v3, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mLastFreeformTaskSurfaceOverlappingWithNavBar:Z

    .line 1636
    .line 1637
    iget-object v0, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1638
    .line 1639
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1640
    .line 1641
    invoke-virtual {v2, v0, v3}, Landroid/window/TaskOrganizer;->setFreeformTaskSurfaceOverlappedWithNavi(Landroid/window/WindowContainerToken;Z)V

    .line 1642
    .line 1643
    .line 1644
    :cond_58
    return-void
.end method

.method public final onDragPositioningMove(FF)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mImeAnimating:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-boolean v1, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iput-boolean v2, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    .line 19
    .line 20
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-boolean v1, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mIsUserInteracting:Z

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mImeShowing:Z

    .line 35
    .line 36
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iget-object v1, v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 41
    .line 42
    iget-boolean v5, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mIsAdjusted:Z

    .line 43
    .line 44
    if-eqz v5, :cond_3

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->reset()V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 50
    .line 51
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 52
    .line 53
    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 54
    .line 55
    if-eqz v1, :cond_e

    .line 56
    .line 57
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mResizing:Z

    .line 58
    .line 59
    if-eqz v1, :cond_e

    .line 60
    .line 61
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    .line 62
    .line 63
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 64
    .line 65
    sub-float v2, v7, v2

    .line 66
    .line 67
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 72
    .line 73
    sub-float v1, v8, v1

    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 82
    .line 83
    .line 84
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 85
    .line 86
    iget v11, v5, Landroid/graphics/Rect;->top:I

    .line 87
    .line 88
    iget v12, v5, Landroid/graphics/Rect;->right:I

    .line 89
    .line 90
    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    .line 91
    .line 92
    sub-int v14, v12, v6

    .line 93
    .line 94
    sub-int v15, v13, v11

    .line 95
    .line 96
    iget v9, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mCtrlType:I

    .line 97
    .line 98
    and-int/lit8 v16, v9, 0x1

    .line 99
    .line 100
    if-eqz v16, :cond_4

    .line 101
    .line 102
    iget v3, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mMinVisibleWidth:I

    .line 103
    .line 104
    sub-int/2addr v14, v2

    .line 105
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    goto :goto_0

    .line 110
    :cond_4
    and-int/lit8 v9, v9, 0x2

    .line 111
    .line 112
    if-eqz v9, :cond_5

    .line 113
    .line 114
    iget v3, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mMinVisibleWidth:I

    .line 115
    .line 116
    add-int/2addr v14, v2

    .line 117
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    .line 118
    .line 119
    .line 120
    move-result v14

    .line 121
    :cond_5
    :goto_0
    iget v2, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mCtrlType:I

    .line 122
    .line 123
    and-int/lit8 v3, v2, 0x4

    .line 124
    .line 125
    if-eqz v3, :cond_6

    .line 126
    .line 127
    iget v2, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMinVisibleHeight:I

    .line 128
    .line 129
    sub-int/2addr v15, v1

    .line 130
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    .line 131
    .line 132
    .line 133
    move-result v15

    .line 134
    goto :goto_1

    .line 135
    :cond_6
    and-int/lit8 v2, v2, 0x8

    .line 136
    .line 137
    if-eqz v2, :cond_7

    .line 138
    .line 139
    iget v2, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMinVisibleHeight:I

    .line 140
    .line 141
    add-int/2addr v15, v1

    .line 142
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    :cond_7
    :goto_1
    iget v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mCtrlType:I

    .line 147
    .line 148
    and-int/lit8 v2, v1, 0x1

    .line 149
    .line 150
    if-eqz v2, :cond_8

    .line 151
    .line 152
    sub-int v6, v12, v14

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_8
    add-int v12, v6, v14

    .line 156
    .line 157
    :goto_2
    and-int/lit8 v1, v1, 0x4

    .line 158
    .line 159
    if-eqz v1, :cond_9

    .line 160
    .line 161
    sub-int v11, v13, v15

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_9
    add-int v13, v11, v15

    .line 165
    .line 166
    :goto_3
    invoke-virtual {v5, v6, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 167
    .line 168
    .line 169
    iget-boolean v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 170
    .line 171
    if-nez v1, :cond_a

    .line 172
    .line 173
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 174
    .line 175
    invoke-virtual {v1, v5}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->setNotAdjustedBounds(Landroid/graphics/Rect;)V

    .line 176
    .line 177
    .line 178
    :cond_a
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 179
    .line 180
    invoke-virtual {v1, v5}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->adjustMinMaxSize(Landroid/graphics/Rect;)V

    .line 181
    .line 182
    .line 183
    iget-boolean v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 184
    .line 185
    if-nez v1, :cond_b

    .line 186
    .line 187
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 188
    .line 189
    float-to-int v2, v7

    .line 190
    float-to-int v3, v8

    .line 191
    invoke-virtual {v1, v5, v2, v3}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->handleResizeGesture(Landroid/graphics/Rect;II)V

    .line 192
    .line 193
    .line 194
    :cond_b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_SUPPORT_SIZE_COMPAT_DRAG:Z

    .line 195
    .line 196
    if-eqz v1, :cond_c

    .line 197
    .line 198
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 199
    .line 200
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->asSizeCompatResizeGuide()Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    if-eqz v1, :cond_c

    .line 205
    .line 206
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 207
    .line 208
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->sizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    .line 209
    .line 210
    invoke-static {v1}, Lcom/samsung/android/core/SizeCompatInfo;->isDragResizable(Lcom/samsung/android/core/SizeCompatInfo;)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_c

    .line 215
    .line 216
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 217
    .line 218
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->asSizeCompatResizeGuide()Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;

    .line 219
    .line 220
    .line 221
    move-result-object v16

    .line 222
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 223
    .line 224
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->sizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    .line 225
    .line 226
    iget v2, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mCtrlType:I

    .line 227
    .line 228
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 229
    .line 230
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 231
    .line 232
    const/16 v21, 0x0

    .line 233
    .line 234
    const/16 v22, 0x0

    .line 235
    .line 236
    move-object/from16 v17, v1

    .line 237
    .line 238
    move/from16 v18, v2

    .line 239
    .line 240
    move-object/from16 v19, v3

    .line 241
    .line 242
    move-object/from16 v20, v6

    .line 243
    .line 244
    invoke-virtual/range {v16 .. v22}, Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;->adjustBounds(Lcom/samsung/android/core/SizeCompatInfo;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V

    .line 245
    .line 246
    .line 247
    :cond_c
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTmpRect2:Landroid/graphics/Rect;

    .line 248
    .line 249
    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 250
    .line 251
    .line 252
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 253
    .line 254
    if-eqz v2, :cond_d

    .line 255
    .line 256
    if-eqz v4, :cond_d

    .line 257
    .line 258
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 259
    .line 260
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->needToFullscreenTransition()Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-nez v2, :cond_d

    .line 265
    .line 266
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 267
    .line 268
    invoke-virtual {v4}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getCaptionVisibleHeight()I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    sub-int/2addr v2, v3

    .line 273
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 274
    .line 275
    :cond_d
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 276
    .line 277
    invoke-virtual {v2, v1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->show(Landroid/graphics/Rect;)V

    .line 278
    .line 279
    .line 280
    const/4 v1, 0x1

    .line 281
    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mHasMoved:Z

    .line 282
    .line 283
    goto/16 :goto_5

    .line 284
    .line 285
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->isDexSnappingInNonFreeform()Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-eqz v1, :cond_10

    .line 290
    .line 291
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    .line 292
    .line 293
    if-eqz v1, :cond_f

    .line 294
    .line 295
    iget-object v4, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 296
    .line 297
    iget v5, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mToolType:I

    .line 298
    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getFreeformThickness$1()I

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    move/from16 v2, p1

    .line 304
    .line 305
    move/from16 v3, p2

    .line 306
    .line 307
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/freeform/DexSnappingGuide;->show(FFLandroid/app/TaskInfo;II)I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    iput v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mLastSnapType:I

    .line 312
    .line 313
    const/4 v1, 0x1

    .line 314
    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mHasMoved:Z

    .line 315
    .line 316
    goto/16 :goto_5

    .line 317
    .line 318
    :cond_f
    iput-boolean v2, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mHasMoved:Z

    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_10
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 322
    .line 323
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v1, v7, v8, v2}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->changeBounds(Landroid/window/WindowContainerTransaction;FFZ)Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-eqz v2, :cond_16

    .line 331
    .line 332
    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mHasMoved:Z

    .line 333
    .line 334
    if-nez v2, :cond_11

    .line 335
    .line 336
    iget v2, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mCtrlType:I

    .line 337
    .line 338
    if-eqz v2, :cond_11

    .line 339
    .line 340
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 341
    .line 342
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 343
    .line 344
    const/4 v3, 0x1

    .line 345
    invoke-virtual {v1, v2, v3}, Landroid/window/WindowContainerTransaction;->setDragResizing(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 346
    .line 347
    .line 348
    :cond_11
    if-eqz v4, :cond_12

    .line 349
    .line 350
    invoke-virtual {v4}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setupCaptionColor()V

    .line 351
    .line 352
    .line 353
    :cond_12
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 354
    .line 355
    if-eqz v2, :cond_14

    .line 356
    .line 357
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    .line 358
    .line 359
    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 360
    .line 361
    .line 362
    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 363
    .line 364
    if-eqz v4, :cond_13

    .line 365
    .line 366
    int-to-float v2, v2

    .line 367
    iget-object v3, v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 368
    .line 369
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 370
    .line 371
    .line 372
    move-result v4

    .line 373
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->getStashScaleOffsetX(I)F

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    add-float/2addr v3, v2

    .line 378
    float-to-int v2, v3

    .line 379
    :cond_13
    iget-object v3, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 380
    .line 381
    int-to-float v2, v2

    .line 382
    iget v4, v5, Landroid/graphics/Rect;->top:I

    .line 383
    .line 384
    int-to-float v4, v4

    .line 385
    invoke-virtual {v1, v3, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 390
    .line 391
    .line 392
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    .line 393
    .line 394
    if-eqz v1, :cond_15

    .line 395
    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->supportDexSnapping()Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-eqz v1, :cond_15

    .line 401
    .line 402
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    .line 403
    .line 404
    iget-object v4, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 405
    .line 406
    iget v5, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mToolType:I

    .line 407
    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getFreeformThickness$1()I

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    move/from16 v2, p1

    .line 413
    .line 414
    move/from16 v3, p2

    .line 415
    .line 416
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/freeform/DexSnappingGuide;->show(FFLandroid/app/TaskInfo;II)I

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    iput v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mLastSnapType:I

    .line 421
    .line 422
    goto :goto_4

    .line 423
    :cond_14
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 424
    .line 425
    invoke-virtual {v2, v1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 426
    .line 427
    .line 428
    :cond_15
    :goto_4
    const/4 v1, 0x1

    .line 429
    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mHasMoved:Z

    .line 430
    .line 431
    :cond_16
    :goto_5
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_DISMISS_VIEW:Z

    .line 432
    .line 433
    if-eqz v1, :cond_17

    .line 434
    .line 435
    iget-boolean v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 436
    .line 437
    if-nez v1, :cond_17

    .line 438
    .line 439
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mResizing:Z

    .line 440
    .line 441
    if-nez v1, :cond_17

    .line 442
    .line 443
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDragPositioningListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    .line 444
    .line 445
    if-eqz v1, :cond_17

    .line 446
    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->isDexSnappingInNonFreeform()Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    if-nez v0, :cond_17

    .line 452
    .line 453
    iget-object v0, v1, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mTmpPoint:Landroid/graphics/PointF;

    .line 454
    .line 455
    invoke-virtual {v0, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 456
    .line 457
    .line 458
    iget-object v1, v1, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 459
    .line 460
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DismissButtonManager;->updateDismissTargetView(Landroid/graphics/PointF;)V

    .line 461
    .line 462
    .line 463
    :cond_17
    return-void
.end method

.method public final onDragPositioningStart(FFI)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mImeAnimating:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 7
    .line 8
    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    .line 9
    .line 10
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 16
    .line 17
    iget-boolean v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mIsUserInteracting:Z

    .line 23
    .line 24
    :cond_2
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mHasMoved:Z

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDragStartListener:Lcom/android/wm/shell/windowdecor/TaskPositioner$DragStartListener;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 29
    .line 30
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 31
    .line 32
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iput p3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mCtrlType:I

    .line 38
    .line 39
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 40
    .line 41
    iget-object p3, p3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 42
    .line 43
    iget-boolean v0, p3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mIsAdjusted:Z

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 48
    .line 49
    iget-object p3, p3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mAdjustingBounds:Landroid/graphics/Rect;

    .line 50
    .line 51
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 56
    .line 57
    iget-object p3, p3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 58
    .line 59
    if-eqz p3, :cond_4

    .line 60
    .line 61
    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isRunning()Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-eqz p3, :cond_4

    .line 66
    .line 67
    move p3, v2

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    move p3, v1

    .line 70
    :goto_0
    if-eqz p3, :cond_5

    .line 71
    .line 72
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 73
    .line 74
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 75
    .line 76
    .line 77
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 80
    .line 81
    const-string v3, "drag-touch"

    .line 82
    .line 83
    invoke-virtual {p3, v0, v3}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->cancelBoundsAnimator(Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 89
    .line 90
    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 99
    .line 100
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 101
    .line 102
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    .line 112
    .line 113
    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 114
    .line 115
    .line 116
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 117
    .line 118
    iget-object p3, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 119
    .line 120
    iget p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 123
    .line 124
    invoke-virtual {v0, p3}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 129
    .line 130
    if-eqz v3, :cond_c

    .line 131
    .line 132
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 133
    .line 134
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 135
    .line 136
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 137
    .line 138
    invoke-virtual {v3}, Landroid/content/res/Configuration;->isDexMode()Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-nez v3, :cond_9

    .line 143
    .line 144
    new-instance v3, Landroid/graphics/Point;

    .line 145
    .line 146
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 147
    .line 148
    .line 149
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 150
    .line 151
    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    .line 152
    .line 153
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 154
    .line 155
    .line 156
    monitor-enter v4

    .line 157
    :try_start_0
    iget-object v6, v4, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 158
    .line 159
    if-eqz v6, :cond_7

    .line 160
    .line 161
    const/4 v7, 0x2

    .line 162
    :goto_2
    const/4 v8, 0x3

    .line 163
    if-gt v7, v8, :cond_7

    .line 164
    .line 165
    iget-object v8, v6, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    .line 166
    .line 167
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    check-cast v8, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    .line 176
    .line 177
    if-eqz v8, :cond_6

    .line 178
    .line 179
    iget-object v9, v8, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

    .line 180
    .line 181
    invoke-interface {v9}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;->isAnimating()Z

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    if-eqz v9, :cond_6

    .line 186
    .line 187
    iget-object v6, v8, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

    .line 188
    .line 189
    invoke-interface {v6, v5}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;->getDragBounds(Landroid/graphics/Rect;)V

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :catchall_0
    move-exception p0

    .line 194
    goto :goto_4

    .line 195
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_7
    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-enter v4

    .line 200
    :try_start_1
    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 201
    .line 202
    if-eqz v5, :cond_8

    .line 203
    .line 204
    invoke-virtual {v5, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->clearAnimator(Z)V

    .line 205
    .line 206
    .line 207
    :cond_8
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    .line 209
    .line 210
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 211
    .line 212
    iput v5, v3, Landroid/graphics/Point;->x:I

    .line 213
    .line 214
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 215
    .line 216
    iput v5, v3, Landroid/graphics/Point;->y:I

    .line 217
    .line 218
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    xor-int/2addr v4, v2

    .line 223
    if-eqz v4, :cond_9

    .line 224
    .line 225
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 226
    .line 227
    iget v5, v3, Landroid/graphics/Point;->x:I

    .line 228
    .line 229
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 230
    .line 231
    invoke-virtual {v4, v5, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :catchall_1
    move-exception p0

    .line 236
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 237
    throw p0

    .line 238
    :goto_4
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    throw p0

    .line 240
    :cond_9
    :goto_5
    iget-boolean v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mResizing:Z

    .line 241
    .line 242
    if-nez v3, :cond_a

    .line 243
    .line 244
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 245
    .line 246
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 247
    .line 248
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 249
    .line 250
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->addTaskToMotionInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 251
    .line 252
    .line 253
    :cond_a
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 254
    .line 255
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mLastReportedTaskBounds:Landroid/graphics/Rect;

    .line 256
    .line 257
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-nez v3, :cond_b

    .line 262
    .line 263
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 264
    .line 265
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 266
    .line 267
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 268
    .line 269
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mLastTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 270
    .line 271
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-eqz v3, :cond_b

    .line 276
    .line 277
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 278
    .line 279
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 280
    .line 281
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mLastReportedTaskBounds:Landroid/graphics/Rect;

    .line 282
    .line 283
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 284
    .line 285
    .line 286
    :cond_b
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 287
    .line 288
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mLastReportedTaskBounds:Landroid/graphics/Rect;

    .line 289
    .line 290
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 291
    .line 292
    .line 293
    :cond_c
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 294
    .line 295
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 296
    .line 297
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    const/4 v4, 0x5

    .line 302
    if-ne v3, v4, :cond_d

    .line 303
    .line 304
    move v3, v2

    .line 305
    goto :goto_6

    .line 306
    :cond_d
    move v3, v1

    .line 307
    :goto_6
    const/4 v5, 0x0

    .line 308
    if-eqz v3, :cond_16

    .line 309
    .line 310
    iget v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mCtrlType:I

    .line 311
    .line 312
    if-eqz v3, :cond_e

    .line 313
    .line 314
    move v3, v2

    .line 315
    goto :goto_7

    .line 316
    :cond_e
    move v3, v1

    .line 317
    :goto_7
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mResizing:Z

    .line 318
    .line 319
    if-eqz v3, :cond_15

    .line 320
    .line 321
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX:Z

    .line 322
    .line 323
    if-eqz v3, :cond_10

    .line 324
    .line 325
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 326
    .line 327
    if-eqz v3, :cond_10

    .line 328
    .line 329
    iget-boolean v6, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 330
    .line 331
    if-eqz v6, :cond_10

    .line 332
    .line 333
    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mSliderPopup:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 334
    .line 335
    if-eqz v6, :cond_f

    .line 336
    .line 337
    iget-boolean v6, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsSliderPopupShowing:Z

    .line 338
    .line 339
    if-eqz v6, :cond_f

    .line 340
    .line 341
    move v6, v2

    .line 342
    goto :goto_8

    .line 343
    :cond_f
    move v6, v1

    .line 344
    :goto_8
    if-eqz v6, :cond_10

    .line 345
    .line 346
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->closeSliderPopup()V

    .line 347
    .line 348
    .line 349
    :cond_10
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 350
    .line 351
    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 352
    .line 353
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 354
    .line 355
    if-eqz v6, :cond_11

    .line 356
    .line 357
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    goto :goto_9

    .line 362
    :cond_11
    move-object v6, v5

    .line 363
    :goto_9
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MT_DEX_SIZE_COMPAT_DRAG:Z

    .line 364
    .line 365
    if-eqz v7, :cond_12

    .line 366
    .line 367
    iget-object v7, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 368
    .line 369
    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->sizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    .line 370
    .line 371
    invoke-static {v7}, Lcom/samsung/android/core/SizeCompatInfo;->isDragDexSizeCompat(Lcom/samsung/android/core/SizeCompatInfo;)Z

    .line 372
    .line 373
    .line 374
    move-result v7

    .line 375
    if-eqz v7, :cond_12

    .line 376
    .line 377
    new-instance v7, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;

    .line 378
    .line 379
    invoke-direct {v7, v0, v6}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iput-object v7, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 383
    .line 384
    goto :goto_a

    .line 385
    :cond_12
    iget-boolean v7, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 386
    .line 387
    if-eqz v7, :cond_13

    .line 388
    .line 389
    new-instance v7, Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 390
    .line 391
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->getDexTaskDockingState()I

    .line 392
    .line 393
    .line 394
    move-result v8

    .line 395
    invoke-direct {v7, v0, v8, v6}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 396
    .line 397
    .line 398
    iput-object v7, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 399
    .line 400
    goto :goto_a

    .line 401
    :cond_13
    new-instance v7, Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 402
    .line 403
    invoke-direct {v7, v0, v6}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    iput-object v7, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 407
    .line 408
    :goto_a
    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 409
    .line 410
    iget v7, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mCtrlType:I

    .line 411
    .line 412
    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->setCtrlType(I)V

    .line 413
    .line 414
    .line 415
    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 416
    .line 417
    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 418
    .line 419
    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 420
    .line 421
    invoke-virtual {v7, v6}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 422
    .line 423
    .line 424
    move-result-object v8

    .line 425
    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 426
    .line 427
    invoke-virtual {v8, v9}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    .line 428
    .line 429
    .line 430
    iget-object v8, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskBoundsAtDragStart:Landroid/graphics/Rect;

    .line 431
    .line 432
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 433
    .line 434
    .line 435
    move-result v10

    .line 436
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 437
    .line 438
    .line 439
    move-result v8

    .line 440
    if-lt v10, v8, :cond_14

    .line 441
    .line 442
    move v8, v2

    .line 443
    goto :goto_b

    .line 444
    :cond_14
    move v8, v1

    .line 445
    :goto_b
    iget-object v10, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 446
    .line 447
    iget-object v11, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 448
    .line 449
    invoke-virtual {v10, v11, v9, v8}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->updateMinMaxSizeIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Z)V

    .line 450
    .line 451
    .line 452
    iget-boolean v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 453
    .line 454
    if-nez v3, :cond_15

    .line 455
    .line 456
    invoke-virtual {v7, v6}, Lcom/android/wm/shell/common/DisplayController;->getInsetsState(I)Landroid/view/InsetsState;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-virtual {v7, v6}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 461
    .line 462
    .line 463
    move-result-object v6

    .line 464
    invoke-virtual {v6, v9, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 465
    .line 466
    .line 467
    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    .line 468
    .line 469
    invoke-virtual {v3}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    invoke-virtual {v6, v3, v9}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->updateResizeGestureInfo(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 474
    .line 475
    .line 476
    :cond_15
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 477
    .line 478
    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 479
    .line 480
    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 481
    .line 482
    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 483
    .line 484
    invoke-virtual {v3, v6}, Lcom/android/wm/shell/ShellTaskOrganizer;->isTargetTaskImeShowing(I)Z

    .line 485
    .line 486
    .line 487
    move-result v3

    .line 488
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mImeShowing:Z

    .line 489
    .line 490
    :cond_16
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 491
    .line 492
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 493
    .line 494
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 495
    .line 496
    .line 497
    move-result v3

    .line 498
    if-ne v3, v4, :cond_17

    .line 499
    .line 500
    move v3, v2

    .line 501
    goto :goto_c

    .line 502
    :cond_17
    move v3, v1

    .line 503
    :goto_c
    if-eqz v3, :cond_18

    .line 504
    .line 505
    iget-boolean v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mResizing:Z

    .line 506
    .line 507
    if-nez v3, :cond_18

    .line 508
    .line 509
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    const/16 v4, 0x20

    .line 518
    .line 519
    invoke-static {v4, v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    iput v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMinVisibleHeight:I

    .line 524
    .line 525
    :cond_18
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->supportDexSnapping()Z

    .line 526
    .line 527
    .line 528
    move-result v3

    .line 529
    if-eqz v3, :cond_1c

    .line 530
    .line 531
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 532
    .line 533
    if-eqz v3, :cond_1b

    .line 534
    .line 535
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 536
    .line 537
    if-eqz v3, :cond_1a

    .line 538
    .line 539
    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mIsKeyguardOccludedAndShowingSupplier:Ljava/util/function/BooleanSupplier;

    .line 540
    .line 541
    if-eqz v3, :cond_19

    .line 542
    .line 543
    invoke-interface {v3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    goto :goto_d

    .line 548
    :cond_19
    move v3, v1

    .line 549
    :goto_d
    if-eqz v3, :cond_1a

    .line 550
    .line 551
    move v3, v2

    .line 552
    goto :goto_e

    .line 553
    :cond_1a
    move v3, v1

    .line 554
    :goto_e
    if-eqz v3, :cond_1b

    .line 555
    .line 556
    goto :goto_f

    .line 557
    :cond_1b
    move v2, v1

    .line 558
    :goto_f
    if-nez v2, :cond_1c

    .line 559
    .line 560
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 561
    .line 562
    invoke-virtual {v2, p3}, Lcom/android/wm/shell/common/DisplayController;->getInsetsState(I)Landroid/view/InsetsState;

    .line 563
    .line 564
    .line 565
    move-result-object p3

    .line 566
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTmpRect2:Landroid/graphics/Rect;

    .line 567
    .line 568
    invoke-virtual {p3}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 573
    .line 574
    .line 575
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTmpRect2:Landroid/graphics/Rect;

    .line 576
    .line 577
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 578
    .line 579
    .line 580
    move-result v3

    .line 581
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 582
    .line 583
    .line 584
    move-result v4

    .line 585
    or-int/2addr v3, v4

    .line 586
    invoke-virtual {p3, v2, v3, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 587
    .line 588
    .line 589
    move-result-object p3

    .line 590
    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 591
    .line 592
    .line 593
    new-instance p3, Lcom/android/wm/shell/freeform/DexSnappingGuide;

    .line 594
    .line 595
    invoke-direct {p3, v0}, Lcom/android/wm/shell/freeform/DexSnappingGuide;-><init>(Landroid/content/Context;)V

    .line 596
    .line 597
    .line 598
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    .line 599
    .line 600
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTmpRect2:Landroid/graphics/Rect;

    .line 601
    .line 602
    iget v2, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mLastSnapType:I

    .line 603
    .line 604
    iget-object v3, p3, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mVisibleFrame:Landroid/graphics/Rect;

    .line 605
    .line 606
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 607
    .line 608
    .line 609
    iput v2, p3, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mLastSnapType:I

    .line 610
    .line 611
    :cond_1c
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_DISMISS_VIEW:Z

    .line 612
    .line 613
    if-eqz p3, :cond_1e

    .line 614
    .line 615
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 616
    .line 617
    iget-boolean p3, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 618
    .line 619
    if-nez p3, :cond_1e

    .line 620
    .line 621
    iget-boolean p3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mResizing:Z

    .line 622
    .line 623
    if-nez p3, :cond_1e

    .line 624
    .line 625
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDragPositioningListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    .line 626
    .line 627
    if-eqz p3, :cond_1e

    .line 628
    .line 629
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->isDexSnappingInNonFreeform()Z

    .line 630
    .line 631
    .line 632
    move-result p3

    .line 633
    if-nez p3, :cond_1e

    .line 634
    .line 635
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDragPositioningListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    .line 636
    .line 637
    iget-object v0, p3, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mTmpPoint:Landroid/graphics/PointF;

    .line 638
    .line 639
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 640
    .line 641
    .line 642
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 643
    .line 644
    iget-object p1, p3, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 645
    .line 646
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 647
    .line 648
    .line 649
    move-result p2

    .line 650
    if-nez p2, :cond_1d

    .line 651
    .line 652
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DismissButtonManager;->createDismissButtonView()V

    .line 653
    .line 654
    .line 655
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DismissButtonManager;->createOrUpdateWrapper()V

    .line 656
    .line 657
    .line 658
    :cond_1d
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DismissButtonManager;->show()V

    .line 662
    .line 663
    .line 664
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DismissButtonManager;->updateDismissTargetView(Landroid/graphics/PointF;)V

    .line 665
    .line 666
    .line 667
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_SHADOW_ANIM:Z

    .line 668
    .line 669
    if-eqz p1, :cond_1e

    .line 670
    .line 671
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 672
    .line 673
    if-eqz p0, :cond_1e

    .line 674
    .line 675
    invoke-virtual {p0, v5, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->playShadowAnimation(Landroid/graphics/Rect;Z)V

    .line 676
    .line 677
    .line 678
    :cond_1e
    return-void
.end method

.method public final removeTaskToMotionInfo(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 2
    .line 3
    const-string/jumbo v0, "removeTaskToMotionInfo: taskInfo="

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, p2}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->clearAnimator(Z)V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    .line 16
    .line 17
    sget-boolean p2, Lcom/android/wm/shell/windowdecor/TaskMotionController;->DEBUG:Z

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    const-string p2, "TaskMotionController"

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p1
.end method

.method public final resetStashedFreeform(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    new-instance p0, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-boolean p1, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mCanceled:Z

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 27
    .line 28
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 29
    .line 30
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-virtual {v3, p0, p1, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->scheduleAnimateRestore(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    .line 50
    .line 51
    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 52
    .line 53
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 54
    .line 55
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 56
    .line 57
    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 58
    .line 59
    invoke-virtual {v5, v4}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-eqz v4, :cond_4

    .line 64
    .line 65
    new-instance v5, Landroid/graphics/Rect;

    .line 66
    .line 67
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v6, Landroid/graphics/Rect;

    .line 71
    .line 72
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 73
    .line 74
    .line 75
    iget v7, v4, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 76
    .line 77
    iget v8, v4, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 78
    .line 79
    invoke-virtual {v5, v2, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v6, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    iget v7, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mScreenEdgeInset:I

    .line 90
    .line 91
    mul-int/lit8 v7, v7, 0x2

    .line 92
    .line 93
    sub-int/2addr v4, v7

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-ge v4, v7, :cond_3

    .line 99
    .line 100
    iget v7, p1, Landroid/graphics/Rect;->left:I

    .line 101
    .line 102
    add-int/2addr v7, v4

    .line 103
    iput v7, p1, Landroid/graphics/Rect;->right:I

    .line 104
    .line 105
    :cond_3
    invoke-virtual {v3, v6, p1, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->computeStashState(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_4

    .line 110
    .line 111
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    sub-int/2addr v4, v6

    .line 120
    div-int/lit8 v4, v4, 0x2

    .line 121
    .line 122
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    sub-int/2addr v5, v6

    .line 131
    div-int/lit8 v5, v5, 0x2

    .line 132
    .line 133
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 134
    .line 135
    .line 136
    :cond_4
    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 137
    .line 138
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setStashed(I)V

    .line 139
    .line 140
    .line 141
    const/4 p1, 0x0

    .line 142
    invoke-virtual {v3, p1, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->setStashDim(Landroid/window/WindowContainerTransaction;Z)V

    .line 143
    .line 144
    .line 145
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 146
    .line 147
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 148
    .line 149
    .line 150
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 151
    .line 152
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 153
    .line 154
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 155
    .line 156
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    .line 157
    .line 158
    invoke-virtual {p1, v2, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 159
    .line 160
    .line 161
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 162
    .line 163
    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 164
    .line 165
    .line 166
    :goto_1
    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 167
    .line 168
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    .line 169
    .line 170
    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public final supportDexSnapping()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget p0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mToolType:I

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    move p0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move p0, v2

    .line 23
    :goto_0
    if-eqz p0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v1, v2

    .line 27
    :cond_2
    :goto_1
    return v1
.end method
