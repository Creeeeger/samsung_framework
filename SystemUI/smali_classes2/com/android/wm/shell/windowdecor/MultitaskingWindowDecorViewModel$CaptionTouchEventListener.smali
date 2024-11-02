.class public final Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mDismissRunnable:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;

.field public final mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field public mDragPointerId:I

.field public final mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

.field public final mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public mIsButtonLongPressed:Z

.field public mIsButtonTouched:Z

.field public mIsDoubleTapEnabled:Z

.field public mIsDragging:Z

.field public mIsLongPressed:Z

.field public mIsScrolled:Z

.field public mLongPressMotionEvent:Landroid/view/MotionEvent;

.field public mTargetView:Landroid/view/View;

.field public final mTaskId:I

.field public final mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

.field public final mTaskToken:Landroid/window/WindowContainerToken;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    .line 4
    new-instance v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDismissRunnable:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;

    .line 5
    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 6
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 8
    new-instance p2, Lcom/android/wm/shell/windowdecor/DragDetector;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/windowdecor/DragDetector;-><init>(Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;)V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 9
    iget-object p2, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 10
    new-instance p2, Landroid/view/GestureDetector;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 11
    invoke-virtual {p2, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 12
    new-instance p2, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;-><init>(Landroid/view/ViewConfiguration;)V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 13
    check-cast p3, Lcom/android/wm/shell/windowdecor/TaskPositioner;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/TaskPositioner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V

    return-void
.end method


# virtual methods
.method public final dismissPopup()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mSliderPopup:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsSliderPopupShowing:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    :cond_1
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->closeSliderPopup()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->closeMoreMenu()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->closeHandleMenu(Z)V

    .line 41
    .line 42
    .line 43
    :goto_0
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_MOVE_DISPLAY:Z

    .line 44
    .line 45
    return-void
.end method

.method public final handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 14
    .line 15
    iget v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_18

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 35
    .line 36
    iget-boolean v4, v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mIsAdjusted:Z

    .line 37
    .line 38
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 39
    .line 40
    const/4 v6, 0x1

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    const/4 v5, 0x6

    .line 44
    if-ne v3, v5, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v5}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    :cond_1
    if-eqz v4, :cond_3

    .line 57
    .line 58
    :cond_2
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 59
    .line 60
    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {v5}, Lcom/android/wm/shell/common/FreeformDragPositioningController;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/common/FreeformDragPositioningController;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    iget-object v5, v5, Lcom/android/wm/shell/common/FreeformDragPositioningController;->mFreeformDragListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    .line 67
    .line 68
    iget-object v5, v5, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 69
    .line 70
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    new-instance v7, Lcom/android/wm/shell/common/DismissButtonManager$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    invoke-direct {v7, v5}, Lcom/android/wm/shell/common/DismissButtonManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DismissButtonManager;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v7}, Lcom/android/wm/shell/common/DismissButtonManager;->hide(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    if-nez v4, :cond_5

    .line 82
    .line 83
    return v2

    .line 84
    :cond_3
    iget-boolean v4, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 85
    .line 86
    if-eqz v4, :cond_4

    .line 87
    .line 88
    if-ne v3, v6, :cond_4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    if-ne v3, v6, :cond_5

    .line 92
    .line 93
    return v2

    .line 94
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_13

    .line 99
    .line 100
    const-string v3, " in MultitaskingWindowDecorViewModel#handleMotionEvent"

    .line 101
    .line 102
    const-string v5, "Invalid dragPointerIndex="

    .line 103
    .line 104
    const-string v7, "MultitaskingWindowDecorViewModel"

    .line 105
    .line 106
    const/4 v8, -0x1

    .line 107
    const/4 v9, 0x3

    .line 108
    if-eq v4, v6, :cond_d

    .line 109
    .line 110
    const/4 v10, 0x2

    .line 111
    if-eq v4, v10, :cond_6

    .line 112
    .line 113
    if-eq v4, v9, :cond_d

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_6
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 117
    .line 118
    if-eqz v1, :cond_7

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->supportTaskMotion()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_7

    .line 125
    .line 126
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 127
    .line 128
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    .line 129
    .line 130
    .line 131
    :cond_7
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    .line 132
    .line 133
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-ne v1, v8, :cond_8

    .line 138
    .line 139
    const-string p1, ", mDragPointerId="

    .line 140
    .line 141
    invoke-static {v5, v1, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v0, ", mIsScrolled="

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    .line 156
    .line 157
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-static {v7, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :goto_1
    return v6

    .line 171
    :cond_8
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 172
    .line 173
    if-eqz v3, :cond_b

    .line 174
    .line 175
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 176
    .line 177
    invoke-static {v3, v0, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->-$$Nest$misCaptionDragEnabled(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/MotionEvent;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_c

    .line 182
    .line 183
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    .line 184
    .line 185
    if-nez v0, :cond_9

    .line 186
    .line 187
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsLongPressed:Z

    .line 188
    .line 189
    if-eqz v0, :cond_c

    .line 190
    .line 191
    :cond_9
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonTouched:Z

    .line 192
    .line 193
    if-eqz v0, :cond_a

    .line 194
    .line 195
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTargetView:Landroid/view/View;

    .line 196
    .line 197
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_a

    .line 202
    .line 203
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTargetView:Landroid/view/View;

    .line 204
    .line 205
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 206
    .line 207
    .line 208
    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 209
    .line 210
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    invoke-interface {v0, v2, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningMove(FF)V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 223
    .line 224
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    invoke-interface {v0, v2, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningMove(FF)V

    .line 233
    .line 234
    .line 235
    :cond_c
    :goto_2
    iput-boolean v6, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsDragging:Z

    .line 236
    .line 237
    return v6

    .line 238
    :cond_d
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    .line 239
    .line 240
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 245
    .line 246
    if-eqz v4, :cond_e

    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->supportTaskMotion()Z

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    if-eqz v4, :cond_e

    .line 253
    .line 254
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 255
    .line 256
    invoke-virtual {v4, p1}, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    .line 257
    .line 258
    .line 259
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 260
    .line 261
    invoke-virtual {v4}, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->computeCurrentVelocity()V

    .line 262
    .line 263
    .line 264
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 265
    .line 266
    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 267
    .line 268
    iput-object v6, v4, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 269
    .line 270
    :cond_e
    if-ne v0, v8, :cond_f

    .line 271
    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-static {v7, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 291
    .line 292
    const/high16 v0, -0x40800000    # -1.0f

    .line 293
    .line 294
    invoke-interface {p1, v0, v0}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningEnd(FF)V

    .line 295
    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_f
    iget-boolean v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 299
    .line 300
    if-eqz v1, :cond_10

    .line 301
    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-ne v1, v9, :cond_10

    .line 307
    .line 308
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 309
    .line 310
    const/high16 v3, -0x40000000    # -2.0f

    .line 311
    .line 312
    invoke-interface {v1, v3, v3}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningEnd(FF)V

    .line 313
    .line 314
    .line 315
    :cond_10
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 316
    .line 317
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    invoke-interface {v1, v3, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningEnd(FF)V

    .line 326
    .line 327
    .line 328
    :goto_3
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 329
    .line 330
    if-eqz p1, :cond_12

    .line 331
    .line 332
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->supportTaskMotion()Z

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    if-eqz p1, :cond_12

    .line 337
    .line 338
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 339
    .line 340
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 341
    .line 342
    const/4 v1, 0x0

    .line 343
    if-eqz v0, :cond_11

    .line 344
    .line 345
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 346
    .line 347
    .line 348
    iput-object v1, p1, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 349
    .line 350
    :cond_11
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 351
    .line 352
    iput-object v1, p1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 353
    .line 354
    :cond_12
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsDragging:Z

    .line 355
    .line 356
    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsDragging:Z

    .line 357
    .line 358
    return p1

    .line 359
    :cond_13
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    iput v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    .line 364
    .line 365
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 366
    .line 367
    if-eqz v0, :cond_14

    .line 368
    .line 369
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    .line 370
    .line 371
    if-nez v0, :cond_14

    .line 372
    .line 373
    const/4 v0, 0x5

    .line 374
    if-ne v3, v0, :cond_14

    .line 375
    .line 376
    goto :goto_4

    .line 377
    :cond_14
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 378
    .line 379
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    invoke-interface {v0, v3, v4, v2}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningStart(FFI)V

    .line 388
    .line 389
    .line 390
    :goto_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 391
    .line 392
    if-eqz v0, :cond_16

    .line 393
    .line 394
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->supportTaskMotion()Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-eqz v0, :cond_16

    .line 399
    .line 400
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 401
    .line 402
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 403
    .line 404
    if-nez v3, :cond_15

    .line 405
    .line 406
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 411
    .line 412
    goto :goto_5

    .line 413
    :cond_15
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 414
    .line 415
    .line 416
    :goto_5
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 417
    .line 418
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    .line 419
    .line 420
    .line 421
    :cond_16
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 427
    .line 428
    .line 429
    move-result p1

    .line 430
    iget v1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mToolType:I

    .line 431
    .line 432
    if-eq v1, p1, :cond_17

    .line 433
    .line 434
    iput p1, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mToolType:I

    .line 435
    .line 436
    :cond_17
    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsDragging:Z

    .line 437
    .line 438
    :cond_18
    :goto_6
    return v2
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 10
    .line 11
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 12
    .line 13
    iget v4, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 20
    .line 21
    if-eqz v3, :cond_49

    .line 22
    .line 23
    iget v4, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    .line 24
    .line 25
    const/4 v15, 0x0

    .line 26
    const/4 v14, 0x1

    .line 27
    if-nez v4, :cond_2

    .line 28
    .line 29
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    instance-of v4, v1, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 35
    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    instance-of v4, v1, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 39
    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    instance-of v4, v1, Lcom/android/wm/shell/windowdecor/WindowMenuAddDisplayItemView;

    .line 43
    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v4, v15

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    move v4, v14

    .line 50
    :goto_1
    if-eqz v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->isHandleMenuActive()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_49

    .line 57
    .line 58
    :cond_2
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 59
    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->isMotionOrBoundsAnimating()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    goto/16 :goto_15

    .line 69
    .line 70
    :cond_3
    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 71
    .line 72
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    const v13, 0x7f0a06b9

    .line 77
    .line 78
    .line 79
    const/4 v5, 0x5

    .line 80
    const v6, 0x7f0a0275

    .line 81
    .line 82
    .line 83
    const/4 v12, 0x0

    .line 84
    const-string v7, "1005"

    .line 85
    .line 86
    const/4 v8, 0x6

    .line 87
    if-ne v2, v6, :cond_7

    .line 88
    .line 89
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 90
    .line 91
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 92
    .line 93
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 94
    .line 95
    invoke-virtual {v2, v6}, Lcom/android/wm/shell/windowdecor/TaskOperations;->closeTask(Landroid/window/WindowContainerToken;)V

    .line 96
    .line 97
    .line 98
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 99
    .line 100
    if-eqz v2, :cond_6

    .line 101
    .line 102
    if-ne v4, v8, :cond_4

    .line 103
    .line 104
    const-string v2, "Tap \'Close window\' button"

    .line 105
    .line 106
    invoke-static {v7, v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v2, "1014"

    .line 110
    .line 111
    invoke-static {v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    if-ne v4, v5, :cond_6

    .line 116
    .line 117
    iget-boolean v2, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 118
    .line 119
    if-nez v2, :cond_5

    .line 120
    .line 121
    const-string v2, "2003"

    .line 122
    .line 123
    const-string v4, "Window option"

    .line 124
    .line 125
    invoke-static {v2, v4}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    const-string v2, "2508"

    .line 130
    .line 131
    invoke-static {v2, v12}, Lcom/samsung/android/core/CoreSaLogger;->logForDexMW(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    :goto_2
    const v2, 0x7f130f21

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->sendTalkBackFeedback(I)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_14

    .line 141
    .line 142
    :cond_7
    const v6, 0x7f0a0117

    .line 143
    .line 144
    .line 145
    if-ne v2, v6, :cond_8

    .line 146
    .line 147
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 148
    .line 149
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 150
    .line 151
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mContext:Landroid/content/Context;

    .line 152
    .line 153
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    invoke-virtual {v0, v15, v4}, Lcom/android/wm/shell/windowdecor/TaskOperations;->sendBackEvent(II)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    invoke-virtual {v0, v14, v2}, Lcom/android/wm/shell/windowdecor/TaskOperations;->sendBackEvent(II)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_14

    .line 168
    .line 169
    :cond_8
    const v6, 0x7f0a0699

    .line 170
    .line 171
    .line 172
    if-ne v2, v6, :cond_b

    .line 173
    .line 174
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    .line 175
    .line 176
    if-eqz v2, :cond_9

    .line 177
    .line 178
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    iget v4, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 183
    .line 184
    invoke-virtual {v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeTaskById(I)Z

    .line 185
    .line 186
    .line 187
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 188
    .line 189
    if-eqz v2, :cond_a

    .line 190
    .line 191
    iget-object v2, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 192
    .line 193
    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 194
    .line 195
    invoke-virtual {v2, v4, v14}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->removeTaskToMotionInfo(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_9
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 200
    .line 201
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 202
    .line 203
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 204
    .line 205
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/windowdecor/TaskOperations;->minimizeTask(Landroid/window/WindowContainerToken;)V

    .line 206
    .line 207
    .line 208
    :cond_a
    :goto_3
    const v2, 0x7f130f23

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->sendTalkBackFeedback(I)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_14

    .line 215
    .line 216
    :cond_b
    const v6, 0x7f0a062c

    .line 217
    .line 218
    .line 219
    if-ne v2, v6, :cond_10

    .line 220
    .line 221
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 222
    .line 223
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 224
    .line 225
    iget v6, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 226
    .line 227
    invoke-virtual {v2, v6}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 232
    .line 233
    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    .line 234
    .line 235
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    invoke-static {v2}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->isDexCompatEnabled(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    if-eqz v6, :cond_c

    .line 243
    .line 244
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 245
    .line 246
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    .line 247
    .line 248
    iget v6, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 249
    .line 250
    invoke-virtual {v2, v6}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->toggleFreeformForDexCompatApp(I)V

    .line 251
    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_c
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 255
    .line 256
    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 257
    .line 258
    invoke-virtual {v6, v2}, Lcom/android/wm/shell/windowdecor/TaskOperations;->maximizeTask(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 259
    .line 260
    .line 261
    :goto_4
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 262
    .line 263
    if-eqz v2, :cond_f

    .line 264
    .line 265
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MD_DEX_SA_LOGGING:Z

    .line 266
    .line 267
    if-eqz v2, :cond_d

    .line 268
    .line 269
    iget-boolean v2, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 270
    .line 271
    if-eqz v2, :cond_d

    .line 272
    .line 273
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 274
    .line 275
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 276
    .line 277
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    const-string v4, "2507"

    .line 286
    .line 287
    invoke-static {v4, v2, v14}, Lcom/samsung/android/core/CoreSaLogger;->logForDexMW(Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_d
    const-string v2, "2090"

    .line 292
    .line 293
    if-ne v4, v8, :cond_e

    .line 294
    .line 295
    const-string v4, "1013"

    .line 296
    .line 297
    invoke-static {v4}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const-string v4, "Switch to Full screen"

    .line 301
    .line 302
    invoke-static {v7, v4}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    const-string v4, "From split screen option"

    .line 306
    .line 307
    invoke-static {v2, v4}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_e
    if-ne v4, v5, :cond_f

    .line 312
    .line 313
    const-string v4, "2002"

    .line 314
    .line 315
    invoke-static {v4}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    const-string v4, "From popup view option"

    .line 319
    .line 320
    invoke-static {v2, v4}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    :cond_f
    :goto_5
    const v2, 0x7f130f22

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->sendTalkBackFeedback(I)V

    .line 327
    .line 328
    .line 329
    goto/16 :goto_14

    .line 330
    .line 331
    :cond_10
    const v6, 0x7f0a08a3

    .line 332
    .line 333
    .line 334
    if-ne v2, v6, :cond_12

    .line 335
    .line 336
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 337
    .line 338
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 339
    .line 340
    iget v4, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 341
    .line 342
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 347
    .line 348
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    .line 349
    .line 350
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    invoke-static {v2}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->isDexCompatEnabled(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 354
    .line 355
    .line 356
    move-result v4

    .line 357
    if-eqz v4, :cond_11

    .line 358
    .line 359
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 360
    .line 361
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    .line 362
    .line 363
    iget v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 364
    .line 365
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->toggleFreeformForDexCompatApp(I)V

    .line 366
    .line 367
    .line 368
    goto/16 :goto_14

    .line 369
    .line 370
    :cond_11
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->toggleFreeformWindowingModeForDex(Landroid/window/WindowContainerToken;)V

    .line 379
    .line 380
    .line 381
    goto/16 :goto_14

    .line 382
    .line 383
    :cond_12
    const v6, 0x7f0a021c

    .line 384
    .line 385
    .line 386
    if-ne v2, v6, :cond_15

    .line 387
    .line 388
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_POPUP:Z

    .line 389
    .line 390
    if-eqz v2, :cond_14

    .line 391
    .line 392
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 393
    .line 394
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 395
    .line 396
    iget v5, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 397
    .line 398
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    if-eqz v2, :cond_13

    .line 403
    .line 404
    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 405
    .line 406
    if-nez v2, :cond_13

    .line 407
    .line 408
    new-instance v2, Landroid/window/WindowContainerTransaction;

    .line 409
    .line 410
    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 411
    .line 412
    .line 413
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 414
    .line 415
    invoke-virtual {v2, v5, v14}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 416
    .line 417
    .line 418
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 419
    .line 420
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 421
    .line 422
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 423
    .line 424
    .line 425
    :cond_13
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->showHandleMenu()V

    .line 426
    .line 427
    .line 428
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 429
    .line 430
    if-eqz v0, :cond_14

    .line 431
    .line 432
    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 433
    .line 434
    iget-object v2, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 435
    .line 436
    invoke-virtual {v0, v2, v15}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->removeTaskToMotionInfo(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 437
    .line 438
    .line 439
    :cond_14
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 440
    .line 441
    if-eqz v0, :cond_48

    .line 442
    .line 443
    if-ne v4, v8, :cond_48

    .line 444
    .line 445
    const-string v0, "1011"

    .line 446
    .line 447
    invoke-static {v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    goto/16 :goto_14

    .line 451
    .line 452
    :cond_15
    const v6, 0x7f0a021d

    .line 453
    .line 454
    .line 455
    const-string v8, "2014"

    .line 456
    .line 457
    if-ne v2, v6, :cond_1b

    .line 458
    .line 459
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_POPUP:Z

    .line 460
    .line 461
    if-eqz v2, :cond_16

    .line 462
    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->dismissPopup()V

    .line 464
    .line 465
    .line 466
    :cond_16
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_HEADER_TYPE_SA_LOGGING:Z

    .line 467
    .line 468
    if-eqz v2, :cond_17

    .line 469
    .line 470
    const-string v2, "0"

    .line 471
    .line 472
    invoke-static {v8, v2}, Lcom/samsung/android/core/CoreSaLogger;->logSettingStatusForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    :cond_17
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 476
    .line 477
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 478
    .line 479
    iget v4, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 480
    .line 481
    invoke-virtual {v2, v4, v14}, Lcom/android/wm/shell/ShellTaskOrganizer;->changeByFreeformCaptionType(II)Landroid/window/WindowContainerTransaction;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    if-eqz v2, :cond_48

    .line 486
    .line 487
    new-instance v4, Landroid/graphics/Rect;

    .line 488
    .line 489
    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 490
    .line 491
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 492
    .line 493
    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 494
    .line 495
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 496
    .line 497
    .line 498
    move-result-object v6

    .line 499
    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 500
    .line 501
    .line 502
    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 503
    .line 504
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 505
    .line 506
    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 507
    .line 508
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 509
    .line 510
    .line 511
    move-result-object v6

    .line 512
    iget-object v7, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 513
    .line 514
    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 515
    .line 516
    .line 517
    move-result v7

    .line 518
    if-ne v7, v5, :cond_18

    .line 519
    .line 520
    iget-object v7, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 521
    .line 522
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 523
    .line 524
    .line 525
    move-result-object v7

    .line 526
    const v8, 0x1050336

    .line 527
    .line 528
    .line 529
    invoke-static {v8, v7}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 530
    .line 531
    .line 532
    move-result v7

    .line 533
    iget-object v8, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 534
    .line 535
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 536
    .line 537
    .line 538
    move-result-object v8

    .line 539
    const v9, 0x105033c

    .line 540
    .line 541
    .line 542
    invoke-static {v9, v8}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 543
    .line 544
    .line 545
    move-result v8

    .line 546
    add-int/2addr v7, v8

    .line 547
    iget-object v8, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTmpRect:Landroid/graphics/Rect;

    .line 548
    .line 549
    iget-object v9, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mInsetsState:Landroid/view/InsetsState;

    .line 550
    .line 551
    invoke-virtual {v9}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    .line 552
    .line 553
    .line 554
    move-result-object v9

    .line 555
    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 556
    .line 557
    .line 558
    iget-object v8, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mInsetsState:Landroid/view/InsetsState;

    .line 559
    .line 560
    iget-object v9, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTmpRect:Landroid/graphics/Rect;

    .line 561
    .line 562
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 563
    .line 564
    .line 565
    move-result v10

    .line 566
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 567
    .line 568
    .line 569
    move-result v11

    .line 570
    or-int/2addr v10, v11

    .line 571
    invoke-virtual {v8, v9, v10, v15}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 572
    .line 573
    .line 574
    move-result-object v8

    .line 575
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 576
    .line 577
    iget v8, v8, Landroid/graphics/Insets;->top:I

    .line 578
    .line 579
    sub-int/2addr v6, v8

    .line 580
    if-ge v6, v7, :cond_18

    .line 581
    .line 582
    sub-int/2addr v7, v6

    .line 583
    goto :goto_6

    .line 584
    :cond_18
    move v7, v15

    .line 585
    :goto_6
    if-eqz v7, :cond_19

    .line 586
    .line 587
    invoke-virtual {v4, v15, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 588
    .line 589
    .line 590
    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 591
    .line 592
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 593
    .line 594
    invoke-virtual {v2, v6, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 595
    .line 596
    .line 597
    :cond_19
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 598
    .line 599
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 600
    .line 601
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 602
    .line 603
    .line 604
    sget-boolean v6, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 605
    .line 606
    if-eqz v6, :cond_1a

    .line 607
    .line 608
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/TaskOperations;->mTransitionStarter:Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;

    .line 609
    .line 610
    check-cast v4, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    .line 611
    .line 612
    invoke-virtual {v4, v2, v5}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->startWindowingModeTransition(Landroid/window/WindowContainerTransaction;I)V

    .line 613
    .line 614
    .line 615
    goto :goto_7

    .line 616
    :cond_1a
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 617
    .line 618
    invoke-virtual {v4, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 619
    .line 620
    .line 621
    :goto_7
    const v2, 0x7f130f26

    .line 622
    .line 623
    .line 624
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->sendTalkBackFeedback(I)V

    .line 625
    .line 626
    .line 627
    goto/16 :goto_14

    .line 628
    .line 629
    :cond_1b
    const v6, 0x7f0a021e

    .line 630
    .line 631
    .line 632
    if-ne v2, v6, :cond_1e

    .line 633
    .line 634
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_HEADER_TYPE_SA_LOGGING:Z

    .line 635
    .line 636
    if-eqz v2, :cond_1c

    .line 637
    .line 638
    const-string v2, "1"

    .line 639
    .line 640
    invoke-static {v8, v2}, Lcom/samsung/android/core/CoreSaLogger;->logSettingStatusForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    :cond_1c
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 644
    .line 645
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 646
    .line 647
    iget v4, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 648
    .line 649
    invoke-virtual {v2, v4, v15}, Lcom/android/wm/shell/ShellTaskOrganizer;->changeByFreeformCaptionType(II)Landroid/window/WindowContainerTransaction;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    if-eqz v2, :cond_48

    .line 654
    .line 655
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 656
    .line 657
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 658
    .line 659
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 660
    .line 661
    .line 662
    sget-boolean v6, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 663
    .line 664
    if-eqz v6, :cond_1d

    .line 665
    .line 666
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/TaskOperations;->mTransitionStarter:Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;

    .line 667
    .line 668
    check-cast v4, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    .line 669
    .line 670
    invoke-virtual {v4, v2, v5}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->startWindowingModeTransition(Landroid/window/WindowContainerTransaction;I)V

    .line 671
    .line 672
    .line 673
    goto :goto_8

    .line 674
    :cond_1d
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 675
    .line 676
    invoke-virtual {v4, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 677
    .line 678
    .line 679
    :goto_8
    const v2, 0x7f130f27

    .line 680
    .line 681
    .line 682
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->sendTalkBackFeedback(I)V

    .line 683
    .line 684
    .line 685
    goto/16 :goto_14

    .line 686
    .line 687
    :cond_1e
    const v5, 0x7f0a0ab7

    .line 688
    .line 689
    .line 690
    const-string v6, "From fullscreen handle"

    .line 691
    .line 692
    if-ne v2, v5, :cond_24

    .line 693
    .line 694
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 695
    .line 696
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 697
    .line 698
    iget v4, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 699
    .line 700
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 701
    .line 702
    .line 703
    move-result-object v2

    .line 704
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 705
    .line 706
    .line 707
    move-result v4

    .line 708
    const-string v5, "1000"

    .line 709
    .line 710
    if-ne v4, v14, :cond_20

    .line 711
    .line 712
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 713
    .line 714
    if-eqz v2, :cond_1f

    .line 715
    .line 716
    invoke-static {v5, v6}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    :cond_1f
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 720
    .line 721
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 722
    .line 723
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 724
    .line 725
    .line 726
    new-instance v4, Lcom/android/wm/shell/windowdecor/TaskOperations$$ExternalSyntheticLambda1;

    .line 727
    .line 728
    invoke-direct {v4}, Lcom/android/wm/shell/windowdecor/TaskOperations$$ExternalSyntheticLambda1;-><init>()V

    .line 729
    .line 730
    .line 731
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSplitScreenController:Ljava/util/Optional;

    .line 732
    .line 733
    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 734
    .line 735
    .line 736
    goto :goto_9

    .line 737
    :cond_20
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 738
    .line 739
    if-eqz v4, :cond_21

    .line 740
    .line 741
    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 742
    .line 743
    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 744
    .line 745
    invoke-virtual {v4, v6, v14}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->removeTaskToMotionInfo(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 746
    .line 747
    .line 748
    :cond_21
    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 749
    .line 750
    iget-boolean v6, v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->mIsAdjusted:Z

    .line 751
    .line 752
    if-eqz v6, :cond_22

    .line 753
    .line 754
    invoke-virtual {v4}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->reset()V

    .line 755
    .line 756
    .line 757
    :cond_22
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 758
    .line 759
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 760
    .line 761
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 762
    .line 763
    .line 764
    new-instance v6, Lcom/android/wm/shell/windowdecor/TaskOperations$$ExternalSyntheticLambda0;

    .line 765
    .line 766
    invoke-direct {v6, v2, v15}, Lcom/android/wm/shell/windowdecor/TaskOperations$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 767
    .line 768
    .line 769
    iget-object v2, v4, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSplitScreenController:Ljava/util/Optional;

    .line 770
    .line 771
    invoke-virtual {v2, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 772
    .line 773
    .line 774
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 775
    .line 776
    if-eqz v2, :cond_23

    .line 777
    .line 778
    const-string v2, "From Popup view"

    .line 779
    .line 780
    invoke-static {v5, v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    :cond_23
    :goto_9
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 784
    .line 785
    if-eqz v2, :cond_48

    .line 786
    .line 787
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 788
    .line 789
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 790
    .line 791
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    const-string v2, "2006"

    .line 796
    .line 797
    invoke-static {v2, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    goto/16 :goto_14

    .line 801
    .line 802
    :cond_24
    const v5, 0x7f0a0424

    .line 803
    .line 804
    .line 805
    if-ne v2, v5, :cond_26

    .line 806
    .line 807
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 808
    .line 809
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 810
    .line 811
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 812
    .line 813
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/windowdecor/TaskOperations;->moveToFreeform(Landroid/window/WindowContainerToken;)V

    .line 814
    .line 815
    .line 816
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 817
    .line 818
    if-eqz v2, :cond_48

    .line 819
    .line 820
    const-string v2, "2004"

    .line 821
    .line 822
    if-ne v4, v14, :cond_25

    .line 823
    .line 824
    invoke-static {v2, v6}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    goto/16 :goto_14

    .line 828
    .line 829
    :cond_25
    const-string v4, "Tap \'Open in Pop-up view\' button"

    .line 830
    .line 831
    invoke-static {v7, v4}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 835
    .line 836
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 837
    .line 838
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    const-string v4, "1012"

    .line 843
    .line 844
    invoke-static {v4, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    const-string v0, "From split view Option"

    .line 848
    .line 849
    invoke-static {v2, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    goto/16 :goto_14

    .line 853
    .line 854
    :cond_26
    const v4, 0x7f0a08e9

    .line 855
    .line 856
    .line 857
    if-ne v2, v4, :cond_27

    .line 858
    .line 859
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 860
    .line 861
    .line 862
    move-result-object v2

    .line 863
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 864
    .line 865
    invoke-virtual {v0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    invoke-virtual {v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->rotateDexCompatTask(Landroid/os/IBinder;)V

    .line 870
    .line 871
    .line 872
    goto/16 :goto_14

    .line 873
    .line 874
    :cond_27
    const v4, 0x7f0a0792

    .line 875
    .line 876
    .line 877
    const v5, 0x7f070dd0

    .line 878
    .line 879
    .line 880
    if-ne v2, v4, :cond_31

    .line 881
    .line 882
    iget-boolean v2, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 883
    .line 884
    const/high16 v16, 0x42c80000    # 100.0f

    .line 885
    .line 886
    const/high16 v17, 0x3f800000    # 1.0f

    .line 887
    .line 888
    if-eqz v2, :cond_2e

    .line 889
    .line 890
    iget-object v2, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 891
    .line 892
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 893
    .line 894
    if-nez v2, :cond_28

    .line 895
    .line 896
    goto/16 :goto_d

    .line 897
    .line 898
    :cond_28
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    .line 899
    .line 900
    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 901
    .line 902
    .line 903
    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 904
    .line 905
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 906
    .line 907
    .line 908
    move-result-object v15

    .line 909
    const v4, 0x7f070dd4

    .line 910
    .line 911
    .line 912
    invoke-static {v4, v15}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 913
    .line 914
    .line 915
    move-result v4

    .line 916
    const v6, 0x7f070dd3

    .line 917
    .line 918
    .line 919
    invoke-static {v6, v15}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 920
    .line 921
    .line 922
    move-result v9

    .line 923
    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 924
    .line 925
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 926
    .line 927
    .line 928
    move-result-object v6

    .line 929
    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 930
    .line 931
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 932
    .line 933
    .line 934
    move-result-object v6

    .line 935
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 936
    .line 937
    .line 938
    move-result v6

    .line 939
    mul-int/lit8 v7, v4, 0x2

    .line 940
    .line 941
    sub-int v8, v6, v7

    .line 942
    .line 943
    iget-boolean v6, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsDexDockingEnabled:Z

    .line 944
    .line 945
    if-eqz v6, :cond_29

    .line 946
    .line 947
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    .line 948
    .line 949
    .line 950
    move-result v6

    .line 951
    move/from16 v18, v6

    .line 952
    .line 953
    goto :goto_a

    .line 954
    :cond_29
    move/from16 v18, v9

    .line 955
    .line 956
    :goto_a
    const v6, 0x7f070dd1

    .line 957
    .line 958
    .line 959
    invoke-static {v6, v15}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 960
    .line 961
    .line 962
    move-result v19

    .line 963
    invoke-static {v5, v15}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 964
    .line 965
    .line 966
    move-result v5

    .line 967
    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 968
    .line 969
    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 970
    .line 971
    check-cast v6, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 972
    .line 973
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    .line 974
    .line 975
    .line 976
    move-result v6

    .line 977
    if-eqz v6, :cond_2a

    .line 978
    .line 979
    goto :goto_b

    .line 980
    :cond_2a
    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 981
    .line 982
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 983
    .line 984
    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 985
    .line 986
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 987
    .line 988
    .line 989
    move-result-object v6

    .line 990
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 991
    .line 992
    .line 993
    move-result v6

    .line 994
    sub-int v6, v6, v18

    .line 995
    .line 996
    sub-int v4, v6, v4

    .line 997
    .line 998
    :goto_b
    const v6, 0x7f070dd5

    .line 999
    .line 1000
    .line 1001
    invoke-static {v6, v15}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 1002
    .line 1003
    .line 1004
    move-result v6

    .line 1005
    const-string v7, "Slider Popup"

    .line 1006
    .line 1007
    const v20, 0x7f0d0341

    .line 1008
    .line 1009
    .line 1010
    iget-object v10, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 1011
    .line 1012
    iget v11, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mDecorContainerOffsetX:I

    .line 1013
    .line 1014
    sub-int v11, v4, v11

    .line 1015
    .line 1016
    iget v4, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mDecorContainerOffsetY:I

    .line 1017
    .line 1018
    sub-int v10, v6, v4

    .line 1019
    .line 1020
    const/16 v23, 0x2

    .line 1021
    .line 1022
    const v24, 0x40008

    .line 1023
    .line 1024
    .line 1025
    int-to-float v6, v5

    .line 1026
    const/16 v25, 0x1

    .line 1027
    .line 1028
    move-object v4, v3

    .line 1029
    move/from16 v5, v20

    .line 1030
    .line 1031
    move/from16 v20, v6

    .line 1032
    .line 1033
    move-object v6, v7

    .line 1034
    move-object v7, v2

    .line 1035
    move/from16 v26, v8

    .line 1036
    .line 1037
    move v8, v11

    .line 1038
    move v11, v9

    .line 1039
    move v9, v10

    .line 1040
    move/from16 v10, v18

    .line 1041
    .line 1042
    move/from16 v27, v11

    .line 1043
    .line 1044
    move/from16 v11, v19

    .line 1045
    .line 1046
    move/from16 v12, v23

    .line 1047
    .line 1048
    move/from16 v13, v24

    .line 1049
    .line 1050
    move/from16 v14, v20

    .line 1051
    .line 1052
    move-object v1, v15

    .line 1053
    move/from16 v15, v25

    .line 1054
    .line 1055
    invoke-virtual/range {v4 .. v15}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;IIIIIIFZ)Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v4

    .line 1059
    iput-object v4, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mSliderPopup:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 1060
    .line 1061
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 1062
    .line 1063
    sget-object v5, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    .line 1064
    .line 1065
    const/4 v12, 0x1

    .line 1066
    const-wide/16 v13, 0xfa

    .line 1067
    .line 1068
    invoke-static {v4, v12, v13, v14, v5}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils;->createSurfaceAlphaAnimator(Landroid/view/SurfaceControl;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v4

    .line 1072
    new-instance v5, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$5;

    .line 1073
    .line 1074
    invoke-direct {v5, v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$5;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 1081
    .line 1082
    .line 1083
    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 1084
    .line 1085
    new-instance v5, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda1;

    .line 1086
    .line 1087
    invoke-direct {v5, v12, v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda1;-><init>(ILandroid/view/SurfaceControl$Transaction;)V

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 1091
    .line 1092
    .line 1093
    iget-object v2, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mSliderPopup:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 1094
    .line 1095
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 1096
    .line 1097
    invoke-virtual {v2}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v2

    .line 1101
    if-eqz v2, :cond_2d

    .line 1102
    .line 1103
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v4

    .line 1107
    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    .line 1108
    .line 1109
    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 1110
    .line 1111
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v5

    .line 1115
    iget-boolean v6, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsNightMode:Z

    .line 1116
    .line 1117
    if-eqz v6, :cond_2b

    .line 1118
    .line 1119
    const v6, 0x1060326

    .line 1120
    .line 1121
    .line 1122
    goto :goto_c

    .line 1123
    :cond_2b
    const v6, 0x1060327

    .line 1124
    .line 1125
    .line 1126
    :goto_c
    const/4 v7, 0x0

    .line 1127
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 1128
    .line 1129
    .line 1130
    move-result v5

    .line 1131
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1132
    .line 1133
    .line 1134
    const v4, 0x7f0a0a4f

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v4

    .line 1141
    check-cast v4, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 1142
    .line 1143
    if-eqz v4, :cond_2c

    .line 1144
    .line 1145
    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 1146
    .line 1147
    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1148
    .line 1149
    .line 1150
    iget v5, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAlpha:F

    .line 1151
    .line 1152
    sub-float v17, v17, v5

    .line 1153
    .line 1154
    mul-float v5, v17, v16

    .line 1155
    .line 1156
    float-to-int v5, v5

    .line 1157
    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1158
    .line 1159
    .line 1160
    iget-boolean v5, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsDexDockingEnabled:Z

    .line 1161
    .line 1162
    if-eqz v5, :cond_2c

    .line 1163
    .line 1164
    move/from16 v6, v26

    .line 1165
    .line 1166
    move/from16 v5, v27

    .line 1167
    .line 1168
    if-ge v6, v5, :cond_2c

    .line 1169
    .line 1170
    sub-int v9, v5, v6

    .line 1171
    .line 1172
    div-int/lit8 v9, v9, 0x2

    .line 1173
    .line 1174
    const v5, 0x7f070dd2

    .line 1175
    .line 1176
    .line 1177
    invoke-static {v5, v1}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 1178
    .line 1179
    .line 1180
    move-result v1

    .line 1181
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingLeft()I

    .line 1182
    .line 1183
    .line 1184
    move-result v5

    .line 1185
    sub-int/2addr v5, v9

    .line 1186
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 1187
    .line 1188
    .line 1189
    move-result v5

    .line 1190
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingTop()I

    .line 1191
    .line 1192
    .line 1193
    move-result v6

    .line 1194
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingRight()I

    .line 1195
    .line 1196
    .line 1197
    move-result v7

    .line 1198
    sub-int/2addr v7, v9

    .line 1199
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    .line 1200
    .line 1201
    .line 1202
    move-result v1

    .line 1203
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingBottom()I

    .line 1204
    .line 1205
    .line 1206
    move-result v7

    .line 1207
    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 1208
    .line 1209
    .line 1210
    :cond_2c
    new-instance v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda0;

    .line 1211
    .line 1212
    invoke-direct {v1, v12, v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda0;-><init>(ILcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1216
    .line 1217
    .line 1218
    :cond_2d
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->schedulePopupDismiss()V

    .line 1219
    .line 1220
    .line 1221
    goto/16 :goto_14

    .line 1222
    .line 1223
    :cond_2e
    move v12, v14

    .line 1224
    iget-boolean v0, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    .line 1225
    .line 1226
    if-eqz v0, :cond_30

    .line 1227
    .line 1228
    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 1229
    .line 1230
    if-eqz v0, :cond_2f

    .line 1231
    .line 1232
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mSlider:Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 1233
    .line 1234
    if-eqz v1, :cond_48

    .line 1235
    .line 1236
    invoke-virtual {v1, v12}, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->setControllable(Z)V

    .line 1237
    .line 1238
    .line 1239
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mSlider:Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 1240
    .line 1241
    iget v0, v0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mAlpha:F

    .line 1242
    .line 1243
    sub-float v17, v17, v0

    .line 1244
    .line 1245
    mul-float v0, v17, v16

    .line 1246
    .line 1247
    float-to-int v0, v0

    .line 1248
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1249
    .line 1250
    .line 1251
    goto/16 :goto_14

    .line 1252
    .line 1253
    :cond_2f
    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPopupMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

    .line 1254
    .line 1255
    if-eqz v0, :cond_48

    .line 1256
    .line 1257
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setOpacitySlider()V

    .line 1258
    .line 1259
    .line 1260
    goto/16 :goto_14

    .line 1261
    .line 1262
    :cond_30
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setOpacitySlider()V

    .line 1263
    .line 1264
    .line 1265
    goto/16 :goto_14

    .line 1266
    .line 1267
    :cond_31
    move-object v7, v12

    .line 1268
    move v12, v14

    .line 1269
    const-wide/16 v13, 0xfa

    .line 1270
    .line 1271
    const v1, 0x7f0a011a

    .line 1272
    .line 1273
    .line 1274
    if-ne v2, v1, :cond_32

    .line 1275
    .line 1276
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 1277
    .line 1278
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 1279
    .line 1280
    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 1281
    .line 1282
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v1

    .line 1286
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 1287
    .line 1288
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 1289
    .line 1290
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 1291
    .line 1292
    invoke-virtual {v0, v15, v1}, Lcom/android/wm/shell/windowdecor/TaskOperations;->sendBackEvent(II)V

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v0, v12, v1}, Lcom/android/wm/shell/windowdecor/TaskOperations;->sendBackEvent(II)V

    .line 1296
    .line 1297
    .line 1298
    goto/16 :goto_14

    .line 1299
    .line 1300
    :cond_32
    const/4 v1, -0x1

    .line 1301
    const v4, 0x7f0a0d5f

    .line 1302
    .line 1303
    .line 1304
    if-ne v2, v4, :cond_3a

    .line 1305
    .line 1306
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 1307
    .line 1308
    iget-object v5, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 1309
    .line 1310
    iget v6, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 1311
    .line 1312
    invoke-virtual {v5, v6}, Landroid/window/TaskOrganizer;->togglePinTaskState(I)Z

    .line 1313
    .line 1314
    .line 1315
    move-result v5

    .line 1316
    iput-boolean v5, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mIsPinned:Z

    .line 1317
    .line 1318
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 1319
    .line 1320
    iget-boolean v5, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mIsPinned:Z

    .line 1321
    .line 1322
    if-eqz v5, :cond_33

    .line 1323
    .line 1324
    iget v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 1325
    .line 1326
    :cond_33
    iput v1, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mPinTaskId:I

    .line 1327
    .line 1328
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE:Z

    .line 1329
    .line 1330
    if-eqz v1, :cond_34

    .line 1331
    .line 1332
    iput-boolean v5, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsPopupWindowPinned:Z

    .line 1333
    .line 1334
    :cond_34
    move-object/from16 v11, p1

    .line 1335
    .line 1336
    instance-of v1, v11, Lcom/android/wm/shell/windowdecor/WindowMenuDexItemView;

    .line 1337
    .line 1338
    const v2, 0x7f130f36

    .line 1339
    .line 1340
    .line 1341
    const v6, 0x7f130f35

    .line 1342
    .line 1343
    .line 1344
    if-eqz v1, :cond_36

    .line 1345
    .line 1346
    iget-object v1, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 1347
    .line 1348
    if-eqz v1, :cond_38

    .line 1349
    .line 1350
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mButtons:Landroid/util/SparseArray;

    .line 1351
    .line 1352
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v1

    .line 1356
    check-cast v1, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 1357
    .line 1358
    if-eqz v1, :cond_38

    .line 1359
    .line 1360
    iput-boolean v5, v1, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mShowIconBackground:Z

    .line 1361
    .line 1362
    if-eqz v5, :cond_35

    .line 1363
    .line 1364
    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 1365
    .line 1366
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v2

    .line 1370
    goto :goto_e

    .line 1371
    :cond_35
    iget-object v2, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 1372
    .line 1373
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v2

    .line 1377
    :goto_e
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1378
    .line 1379
    .line 1380
    goto :goto_10

    .line 1381
    :cond_36
    instance-of v1, v11, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 1382
    .line 1383
    if-eqz v1, :cond_38

    .line 1384
    .line 1385
    move-object v1, v11

    .line 1386
    check-cast v1, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 1387
    .line 1388
    iput-boolean v5, v1, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mShowIconBackground:Z

    .line 1389
    .line 1390
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    .line 1391
    .line 1392
    .line 1393
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 1394
    .line 1395
    iget-boolean v4, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mIsPinned:Z

    .line 1396
    .line 1397
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 1398
    .line 1399
    if-eqz v4, :cond_37

    .line 1400
    .line 1401
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v1

    .line 1405
    goto :goto_f

    .line 1406
    :cond_37
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v1

    .line 1410
    :goto_f
    invoke-virtual {v11, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1411
    .line 1412
    .line 1413
    :cond_38
    :goto_10
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 1414
    .line 1415
    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mIsPinned:Z

    .line 1416
    .line 1417
    iget v4, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 1418
    .line 1419
    invoke-virtual {v1, v4, v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->toggleDisableAllPinButton(IZ)V

    .line 1420
    .line 1421
    .line 1422
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 1423
    .line 1424
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 1425
    .line 1426
    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 1427
    .line 1428
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v1

    .line 1432
    if-eqz v1, :cond_39

    .line 1433
    .line 1434
    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 1435
    .line 1436
    if-nez v1, :cond_39

    .line 1437
    .line 1438
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 1439
    .line 1440
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 1441
    .line 1442
    .line 1443
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 1444
    .line 1445
    invoke-virtual {v1, v2, v12}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 1446
    .line 1447
    .line 1448
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 1449
    .line 1450
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 1451
    .line 1452
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 1453
    .line 1454
    .line 1455
    :cond_39
    iget v0, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    .line 1456
    .line 1457
    if-nez v0, :cond_48

    .line 1458
    .line 1459
    invoke-virtual {v3, v15}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->closeHandleMenu(Z)V

    .line 1460
    .line 1461
    .line 1462
    goto/16 :goto_14

    .line 1463
    .line 1464
    :cond_3a
    move-object/from16 v11, p1

    .line 1465
    .line 1466
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_OVERFLOW_MENU:Z

    .line 1467
    .line 1468
    if-eqz v4, :cond_45

    .line 1469
    .line 1470
    const v10, 0x7f0a06b9

    .line 1471
    .line 1472
    .line 1473
    if-ne v2, v10, :cond_45

    .line 1474
    .line 1475
    iget-boolean v2, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 1476
    .line 1477
    if-nez v2, :cond_3b

    .line 1478
    .line 1479
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 1480
    .line 1481
    iget v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mAddedDisplayId:I

    .line 1482
    .line 1483
    if-eq v0, v1, :cond_48

    .line 1484
    .line 1485
    :cond_3b
    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 1486
    .line 1487
    if-eqz v0, :cond_48

    .line 1488
    .line 1489
    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOverflowMenuAnim:Landroid/animation/Animator;

    .line 1490
    .line 1491
    if-eqz v0, :cond_3c

    .line 1492
    .line 1493
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 1494
    .line 1495
    .line 1496
    move-result v0

    .line 1497
    if-eqz v0, :cond_3c

    .line 1498
    .line 1499
    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOverflowMenuAnim:Landroid/animation/Animator;

    .line 1500
    .line 1501
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1502
    .line 1503
    .line 1504
    :cond_3c
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->isHandleMenuActive()Z

    .line 1505
    .line 1506
    .line 1507
    move-result v0

    .line 1508
    if-eqz v0, :cond_3d

    .line 1509
    .line 1510
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->closeMoreMenu()V

    .line 1511
    .line 1512
    .line 1513
    goto/16 :goto_14

    .line 1514
    .line 1515
    :cond_3d
    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 1516
    .line 1517
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 1518
    .line 1519
    if-eqz v0, :cond_48

    .line 1520
    .line 1521
    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 1522
    .line 1523
    if-nez v0, :cond_3e

    .line 1524
    .line 1525
    goto/16 :goto_14

    .line 1526
    .line 1527
    :cond_3e
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 1528
    .line 1529
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1530
    .line 1531
    .line 1532
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 1533
    .line 1534
    iget-object v2, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 1535
    .line 1536
    const v4, 0x10302e3

    .line 1537
    .line 1538
    .line 1539
    invoke-direct {v1, v2, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1540
    .line 1541
    .line 1542
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v2

    .line 1546
    iget-boolean v4, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 1547
    .line 1548
    if-eqz v4, :cond_40

    .line 1549
    .line 1550
    iget-boolean v4, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    .line 1551
    .line 1552
    if-eqz v4, :cond_3f

    .line 1553
    .line 1554
    const v4, 0x7f0d033c

    .line 1555
    .line 1556
    .line 1557
    goto :goto_11

    .line 1558
    :cond_3f
    const v4, 0x7f0d0335

    .line 1559
    .line 1560
    .line 1561
    goto :goto_11

    .line 1562
    :cond_40
    const v4, 0x7f0d033b

    .line 1563
    .line 1564
    .line 1565
    :goto_11
    move v6, v4

    .line 1566
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v4

    .line 1570
    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v9

    .line 1574
    new-instance v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda0;

    .line 1575
    .line 1576
    invoke-direct {v4, v15, v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda0;-><init>(ILcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V

    .line 1577
    .line 1578
    .line 1579
    invoke-virtual {v9, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1580
    .line 1581
    .line 1582
    new-instance v4, Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;

    .line 1583
    .line 1584
    iget-object v7, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1585
    .line 1586
    iget-object v8, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 1587
    .line 1588
    iget v12, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAlpha:F

    .line 1589
    .line 1590
    iget v13, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionColor:I

    .line 1591
    .line 1592
    iget-object v14, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 1593
    .line 1594
    iget-boolean v10, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsAdditionalDisplayAdded:Z

    .line 1595
    .line 1596
    move-object/from16 v16, v4

    .line 1597
    .line 1598
    move-object/from16 v17, v1

    .line 1599
    .line 1600
    move-object/from16 v18, v7

    .line 1601
    .line 1602
    move-object/from16 v19, v9

    .line 1603
    .line 1604
    move-object/from16 v20, v8

    .line 1605
    .line 1606
    move/from16 v21, v12

    .line 1607
    .line 1608
    move/from16 v22, v13

    .line 1609
    .line 1610
    move-object/from16 v23, v14

    .line 1611
    .line 1612
    move/from16 v24, v10

    .line 1613
    .line 1614
    invoke-direct/range {v16 .. v24}, Lcom/android/wm/shell/windowdecor/WindowMenuMorePopupPresenter;-><init>(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/View;Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;FILcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;Z)V

    .line 1615
    .line 1616
    .line 1617
    const v1, 0x7f070ddc

    .line 1618
    .line 1619
    .line 1620
    iget-object v7, v4, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mRootView:Landroid/view/View;

    .line 1621
    .line 1622
    if-nez v7, :cond_41

    .line 1623
    .line 1624
    new-instance v4, Landroid/graphics/Rect;

    .line 1625
    .line 1626
    invoke-direct {v4, v15, v15, v15, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1627
    .line 1628
    .line 1629
    goto :goto_12

    .line 1630
    :cond_41
    iget-object v8, v4, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 1631
    .line 1632
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v8

    .line 1636
    const v10, 0x10503f0

    .line 1637
    .line 1638
    .line 1639
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1640
    .line 1641
    .line 1642
    move-result v8

    .line 1643
    invoke-virtual {v7, v15, v15}, Landroid/view/View;->measure(II)V

    .line 1644
    .line 1645
    .line 1646
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 1647
    .line 1648
    .line 1649
    move-result v10

    .line 1650
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    .line 1651
    .line 1652
    .line 1653
    move-result v8

    .line 1654
    iget-object v10, v4, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1655
    .line 1656
    if-eqz v10, :cond_42

    .line 1657
    .line 1658
    iget-object v10, v4, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 1659
    .line 1660
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v10

    .line 1664
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1665
    .line 1666
    .line 1667
    move-result v10

    .line 1668
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1669
    .line 1670
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v4

    .line 1674
    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1675
    .line 1676
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v4

    .line 1680
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 1681
    .line 1682
    .line 1683
    move-result v4

    .line 1684
    mul-int/lit8 v10, v10, 0x2

    .line 1685
    .line 1686
    sub-int/2addr v4, v10

    .line 1687
    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    .line 1688
    .line 1689
    .line 1690
    move-result v8

    .line 1691
    :cond_42
    const/high16 v4, -0x80000000

    .line 1692
    .line 1693
    invoke-static {v8, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1694
    .line 1695
    .line 1696
    move-result v4

    .line 1697
    invoke-virtual {v7, v4, v15}, Landroid/view/View;->measure(II)V

    .line 1698
    .line 1699
    .line 1700
    new-instance v4, Landroid/graphics/Rect;

    .line 1701
    .line 1702
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 1703
    .line 1704
    .line 1705
    move-result v7

    .line 1706
    invoke-direct {v4, v15, v15, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1707
    .line 1708
    .line 1709
    :goto_12
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 1710
    .line 1711
    .line 1712
    move-result v10

    .line 1713
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 1714
    .line 1715
    .line 1716
    move-result v12

    .line 1717
    invoke-static {v1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 1718
    .line 1719
    .line 1720
    move-result v1

    .line 1721
    invoke-static {v5, v2}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 1722
    .line 1723
    .line 1724
    move-result v4

    .line 1725
    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 1726
    .line 1727
    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 1728
    .line 1729
    check-cast v5, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 1730
    .line 1731
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    .line 1732
    .line 1733
    .line 1734
    move-result v5

    .line 1735
    if-eqz v5, :cond_43

    .line 1736
    .line 1737
    move v8, v1

    .line 1738
    goto :goto_13

    .line 1739
    :cond_43
    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1740
    .line 1741
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 1742
    .line 1743
    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1744
    .line 1745
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v5

    .line 1749
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 1750
    .line 1751
    .line 1752
    move-result v5

    .line 1753
    sub-int/2addr v5, v10

    .line 1754
    sub-int/2addr v5, v1

    .line 1755
    move v8, v5

    .line 1756
    :goto_13
    const v1, 0x7f070ddd

    .line 1757
    .line 1758
    .line 1759
    invoke-static {v1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 1760
    .line 1761
    .line 1762
    move-result v1

    .line 1763
    iget-object v2, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 1764
    .line 1765
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mButtons:Landroid/util/SparseArray;

    .line 1766
    .line 1767
    const v13, 0x7f0a06b9

    .line 1768
    .line 1769
    .line 1770
    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v2

    .line 1774
    check-cast v2, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 1775
    .line 1776
    if-eqz v2, :cond_44

    .line 1777
    .line 1778
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    .line 1779
    .line 1780
    .line 1781
    move-result v2

    .line 1782
    sub-int/2addr v1, v2

    .line 1783
    :cond_44
    const-string v2, "Caption More menu"

    .line 1784
    .line 1785
    const/4 v14, 0x2

    .line 1786
    const v16, 0x40008

    .line 1787
    .line 1788
    .line 1789
    int-to-float v7, v4

    .line 1790
    const/16 v17, 0x1

    .line 1791
    .line 1792
    move-object v4, v3

    .line 1793
    move v5, v6

    .line 1794
    move-object v6, v2

    .line 1795
    move v2, v7

    .line 1796
    move-object v7, v0

    .line 1797
    move-object/from16 v18, v9

    .line 1798
    .line 1799
    move v9, v1

    .line 1800
    move v1, v13

    .line 1801
    move v11, v12

    .line 1802
    const/4 v13, 0x1

    .line 1803
    move v12, v14

    .line 1804
    move-object/from16 p0, v0

    .line 1805
    .line 1806
    move v14, v13

    .line 1807
    const-wide/16 v0, 0xfa

    .line 1808
    .line 1809
    move/from16 v13, v16

    .line 1810
    .line 1811
    move v14, v2

    .line 1812
    move v2, v15

    .line 1813
    move/from16 v15, v17

    .line 1814
    .line 1815
    move-object/from16 v16, v18

    .line 1816
    .line 1817
    invoke-virtual/range {v4 .. v16}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;IIIIIIFZLandroid/view/View;)Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v4

    .line 1821
    iput-object v4, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 1822
    .line 1823
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 1824
    .line 1825
    sget-object v5, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    .line 1826
    .line 1827
    const/4 v6, 0x1

    .line 1828
    invoke-static {v4, v6, v0, v1, v5}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils;->createSurfaceAlphaAnimator(Landroid/view/SurfaceControl;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v0

    .line 1832
    iput-object v0, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOverflowMenuAnim:Landroid/animation/Animator;

    .line 1833
    .line 1834
    new-instance v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$7;

    .line 1835
    .line 1836
    invoke-direct {v1, v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$7;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V

    .line 1837
    .line 1838
    .line 1839
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1840
    .line 1841
    .line 1842
    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOverflowMenuAnim:Landroid/animation/Animator;

    .line 1843
    .line 1844
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1845
    .line 1846
    .line 1847
    iget-object v0, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 1848
    .line 1849
    new-instance v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda1;

    .line 1850
    .line 1851
    move-object/from16 v4, p0

    .line 1852
    .line 1853
    invoke-direct {v1, v2, v4}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda1;-><init>(ILandroid/view/SurfaceControl$Transaction;)V

    .line 1854
    .line 1855
    .line 1856
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 1857
    .line 1858
    .line 1859
    goto :goto_14

    .line 1860
    :cond_45
    move v1, v15

    .line 1861
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_MOVE_DISPLAY:Z

    .line 1862
    .line 1863
    if-eqz v4, :cond_47

    .line 1864
    .line 1865
    const v4, 0x7f0a06bd

    .line 1866
    .line 1867
    .line 1868
    if-ne v2, v4, :cond_47

    .line 1869
    .line 1870
    iget v0, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    .line 1871
    .line 1872
    if-nez v0, :cond_46

    .line 1873
    .line 1874
    invoke-virtual {v3, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->closeHandleMenu(Z)V

    .line 1875
    .line 1876
    .line 1877
    goto :goto_14

    .line 1878
    :cond_46
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->closeMoreMenu()V

    .line 1879
    .line 1880
    .line 1881
    goto :goto_14

    .line 1882
    :cond_47
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 1883
    .line 1884
    .line 1885
    move-result v1

    .line 1886
    const v2, 0x7f0a00f2

    .line 1887
    .line 1888
    .line 1889
    if-ne v1, v2, :cond_48

    .line 1890
    .line 1891
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1892
    .line 1893
    const/16 v2, 0x72

    .line 1894
    .line 1895
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    .line 1896
    .line 1897
    .line 1898
    move-result v1

    .line 1899
    if-eqz v1, :cond_48

    .line 1900
    .line 1901
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->dismissPopup()V

    .line 1902
    .line 1903
    .line 1904
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPivotX()F

    .line 1905
    .line 1906
    .line 1907
    move-result v1

    .line 1908
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPivotY()F

    .line 1909
    .line 1910
    .line 1911
    move-result v2

    .line 1912
    float-to-int v1, v1

    .line 1913
    float-to-int v2, v2

    .line 1914
    filled-new-array {v1, v2}, [I

    .line 1915
    .line 1916
    .line 1917
    move-result-object v1

    .line 1918
    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 1919
    .line 1920
    invoke-static {v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getExternalAppsServiceIntent(I[I)Landroid/content/Intent;

    .line 1921
    .line 1922
    .line 1923
    move-result-object v1

    .line 1924
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 1925
    .line 1926
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    .line 1927
    .line 1928
    new-instance v4, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener$$ExternalSyntheticLambda0;

    .line 1929
    .line 1930
    invoke-direct {v4, v0, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;Landroid/content/Intent;)V

    .line 1931
    .line 1932
    .line 1933
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1934
    .line 1935
    .line 1936
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 1937
    .line 1938
    if-eqz v0, :cond_48

    .line 1939
    .line 1940
    const-string v0, "1051"

    .line 1941
    .line 1942
    invoke-static {v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 1943
    .line 1944
    .line 1945
    :cond_48
    :goto_14
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_OVERFLOW_MENU:Z

    .line 1946
    .line 1947
    if-eqz v0, :cond_49

    .line 1948
    .line 1949
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 1950
    .line 1951
    .line 1952
    move-result v0

    .line 1953
    const v1, 0x7f0a06b9

    .line 1954
    .line 1955
    .line 1956
    if-eq v0, v1, :cond_49

    .line 1957
    .line 1958
    iget-boolean v0, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 1959
    .line 1960
    if-eqz v0, :cond_49

    .line 1961
    .line 1962
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->closeMoreMenu()V

    .line 1963
    .line 1964
    .line 1965
    :cond_49
    :goto_15
    return-void
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_9

    .line 15
    .line 16
    iget-boolean v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_6

    .line 27
    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsDoubleTapEnabled:Z

    .line 32
    .line 33
    if-eqz p1, :cond_9

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 38
    .line 39
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->isDexCompatEnabled(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    .line 64
    .line 65
    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->toggleFreeformForDexCompatApp(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 72
    .line 73
    if-eqz p0, :cond_5

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    const-string v0, "From mouse double clicking"

    .line 80
    .line 81
    if-ne p0, v1, :cond_4

    .line 82
    .line 83
    const-string p0, "2004"

    .line 84
    .line 85
    invoke-static {p0, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    const/4 v2, 0x5

    .line 90
    if-ne p0, v2, :cond_5

    .line 91
    .line 92
    const-string p0, "2090"

    .line 93
    .line 94
    invoke-static {p0, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->toggleFreeformWindowingModeForDex(Landroid/window/WindowContainerToken;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsDoubleTapEnabled:Z

    .line 110
    .line 111
    if-eqz v0, :cond_9

    .line 112
    .line 113
    const/4 v0, 0x0

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    const/4 v3, 0x3

    .line 119
    if-ne v2, v3, :cond_7

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eq p1, v1, :cond_8

    .line 126
    .line 127
    :cond_7
    move v0, v1

    .line 128
    :cond_8
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsDoubleTapEnabled:Z

    .line 129
    .line 130
    :cond_9
    :goto_1
    return v1
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 4
    .line 5
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 12
    .line 13
    const/16 v0, 0xa

    .line 14
    .line 15
    const/16 v1, 0x9

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz p1, :cond_c

    .line 19
    .line 20
    iget-boolean v3, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 21
    .line 22
    if-eqz v3, :cond_c

    .line 23
    .line 24
    iget-boolean v3, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsImmersiveMode:Z

    .line 25
    .line 26
    if-eqz v3, :cond_c

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->offsetCaptionLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 33
    .line 34
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 35
    .line 36
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget v4, p0, Landroid/graphics/PointF;->x:F

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    cmpg-float v6, v4, v5

    .line 46
    .line 47
    if-ltz v6, :cond_b

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    int-to-float v6, v6

    .line 54
    cmpl-float v4, v4, v6

    .line 55
    .line 56
    if-gtz v4, :cond_b

    .line 57
    .line 58
    iget v4, p0, Landroid/graphics/PointF;->y:F

    .line 59
    .line 60
    cmpg-float v5, v4, v5

    .line 61
    .line 62
    if-ltz v5, :cond_b

    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    int-to-float v3, v3

    .line 69
    cmpl-float v3, v4, v3

    .line 70
    .line 71
    if-lez v3, :cond_0

    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_0
    iget-boolean v3, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsImmersiveMode:Z

    .line 76
    .line 77
    if-eqz v3, :cond_b

    .line 78
    .line 79
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 80
    .line 81
    if-eqz p1, :cond_b

    .line 82
    .line 83
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 84
    .line 85
    float-to-int p0, p0

    .line 86
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    const/4 v4, 0x2

    .line 91
    const/4 v5, 0x1

    .line 92
    if-ne v3, v4, :cond_1

    .line 93
    .line 94
    move v3, v5

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    move v3, v2

    .line 97
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getFlags()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    const/high16 v7, 0x4000000

    .line 102
    .line 103
    and-int/2addr v6, v7

    .line 104
    if-eqz v6, :cond_2

    .line 105
    .line 106
    move v6, v5

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    move v6, v2

    .line 109
    :goto_1
    if-eqz v3, :cond_3

    .line 110
    .line 111
    if-nez v6, :cond_3

    .line 112
    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    const/16 v8, 0x2002

    .line 118
    .line 119
    if-eq v7, v8, :cond_3

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    const-wide/16 v7, 0x3e8

    .line 127
    .line 128
    iget-object v9, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHideRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    .line 129
    .line 130
    iget-object v10, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHandler:Landroid/os/Handler;

    .line 131
    .line 132
    const/4 v11, 0x7

    .line 133
    iget v12, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mCaptionHeight:I

    .line 134
    .line 135
    if-eq p2, v11, :cond_7

    .line 136
    .line 137
    if-eq p2, v1, :cond_5

    .line 138
    .line 139
    if-eq p2, v0, :cond_4

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_4
    iget-boolean p0, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsShowing:Z

    .line 143
    .line 144
    if-eqz p0, :cond_b

    .line 145
    .line 146
    invoke-virtual {v10, v9}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    if-nez p0, :cond_b

    .line 151
    .line 152
    invoke-virtual {v10, v9, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_5
    if-eqz v3, :cond_6

    .line 157
    .line 158
    if-eqz v6, :cond_6

    .line 159
    .line 160
    div-int/lit8 v5, v12, 0x2

    .line 161
    .line 162
    :cond_6
    iput v5, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mPositionToShow:I

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_7
    iget-boolean p2, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsShowing:Z

    .line 166
    .line 167
    if-eqz p2, :cond_9

    .line 168
    .line 169
    if-le p0, v12, :cond_8

    .line 170
    .line 171
    invoke-virtual {v10, v9, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_8
    invoke-virtual {v10, v9}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    if-eqz p0, :cond_b

    .line 180
    .line 181
    invoke-virtual {v10, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_9
    iget p2, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mPositionToShow:I

    .line 186
    .line 187
    if-gt p0, p2, :cond_b

    .line 188
    .line 189
    iget-object p0, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShowRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    .line 190
    .line 191
    invoke-virtual {v10, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    if-nez p2, :cond_b

    .line 196
    .line 197
    iput-boolean v2, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShownByTouch:Z

    .line 198
    .line 199
    sget p1, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->TRANSIENT_DELAY:I

    .line 200
    .line 201
    const/4 p2, -0x1

    .line 202
    if-eq p1, p2, :cond_a

    .line 203
    .line 204
    int-to-long p1, p1

    .line 205
    goto :goto_2

    .line 206
    :cond_a
    const-wide/16 p1, 0x1f4

    .line 207
    .line 208
    :goto_2
    invoke-virtual {v10, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    .line 210
    .line 211
    :cond_b
    :goto_3
    return v2

    .line 212
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-eq p1, v1, :cond_e

    .line 217
    .line 218
    if-eq p1, v0, :cond_d

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_d
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->schedulePopupDismiss()V

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_e
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->unschedulePopupDismiss()V

    .line 226
    .line 227
    .line 228
    :goto_4
    return v2
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsLongPressed:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mLongPressMotionEvent:Landroid/view/MotionEvent;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTargetView:Landroid/view/View;

    .line 11
    .line 12
    instance-of v1, p1, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    instance-of p1, p1, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonLongPressed:Z

    .line 21
    .line 22
    :cond_1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_DISMISS_VIEW:Z

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 29
    .line 30
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-boolean p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 41
    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {p0}, Lcom/android/wm/shell/common/FreeformDragPositioningController;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/common/FreeformDragPositioningController;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget-object p0, p0, Lcom/android/wm/shell/common/FreeformDragPositioningController;->mFreeformDragListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 59
    .line 60
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    new-instance p1, Lcom/android/wm/shell/common/DismissButtonManager$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/DismissButtonManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DismissButtonManager;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DismissButtonManager;->hide(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .line 1
    int-to-float p1, p2

    .line 2
    const p2, 0x3c23d70a    # 0.01f

    .line 3
    .line 4
    .line 5
    mul-float/2addr p1, p2

    .line 6
    const/high16 p2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    sub-float p1, p2, p1

    .line 9
    .line 10
    const p3, 0x3ecccccd    # 0.4f

    .line 11
    .line 12
    .line 13
    cmpg-float v0, p1, p3

    .line 14
    .line 15
    if-gez v0, :cond_0

    .line 16
    .line 17
    move p1, p3

    .line 18
    :cond_0
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 19
    .line 20
    iget-object p3, p3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 21
    .line 22
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 23
    .line 24
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    check-cast p3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 29
    .line 30
    if-nez p3, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    cmpg-float p2, p1, p2

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    if-gez p2, :cond_2

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    cmpl-float p2, p1, p2

    .line 40
    .line 41
    if-ltz p2, :cond_2

    .line 42
    .line 43
    move p2, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 p2, 0x0

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 47
    .line 48
    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mIsTranslucent:Z

    .line 49
    .line 50
    if-eq v2, p2, :cond_4

    .line 51
    .line 52
    iput-boolean p2, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mIsTranslucent:Z

    .line 53
    .line 54
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 55
    .line 56
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 60
    .line 61
    if-eqz p2, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const/4 v0, 0x2

    .line 65
    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/window/WindowContainerTransaction;->setFreeformTranslucent(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 66
    .line 67
    .line 68
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 69
    .line 70
    iget-object p2, p2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 71
    .line 72
    invoke-virtual {p2, v1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 73
    .line 74
    .line 75
    :cond_4
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 76
    .line 77
    iget-object p2, p2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 78
    .line 79
    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 80
    .line 81
    invoke-virtual {p2, p0, p1}, Landroid/window/TaskOrganizer;->setFreeformTaskOpacity(IF)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setDecorationOpacity(F)V

    .line 85
    .line 86
    .line 87
    :goto_2
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 1
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    if-eqz p2, :cond_4

    .line 5
    .line 6
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 7
    .line 8
    iget-object p2, p2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 9
    .line 10
    iget p4, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 11
    .line 12
    invoke-virtual {p2, p4}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 p4, 0x0

    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    if-eqz p2, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 22
    .line 23
    invoke-static {v0, p2, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->-$$Nest$misCaptionDragEnabled(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/MotionEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 31
    .line 32
    iget-object p2, p2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 33
    .line 34
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 41
    .line 42
    const-string v0, "MultitaskingWindowDecorViewModel"

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->isHandleMenuActive()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    .line 54
    .line 55
    if-nez v1, :cond_4

    .line 56
    .line 57
    iput-boolean p3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    .line 58
    .line 59
    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iput v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "DragPositioningStart from scrolled : "

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 87
    .line 88
    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    invoke-virtual {p1, p4}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-interface {p0, p2, p1, p4}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningStart(FFI)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string p1, "OnScroll : Decoration not exist or HandleMenu Activated "

    .line 103
    .line 104
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :cond_3
    :goto_1
    return p4

    .line 118
    :cond_4
    :goto_2
    return p3
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-boolean v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    instance-of v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    check-cast p1, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->onStartTrackingTouch()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->unschedulePopupDismiss()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-boolean v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    instance-of v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    move-object v0, p1

    .line 25
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->onStopTrackingTouch()V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->schedulePopupDismiss()V

    .line 31
    .line 32
    .line 33
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    mul-int/lit8 p0, p0, 0xa

    .line 42
    .line 43
    div-int/lit8 p0, p0, 0x3c

    .line 44
    .line 45
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string p1, "2005"

    .line 50
    .line 51
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a021c

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    const v4, 0x7f0a021b

    .line 11
    .line 12
    .line 13
    if-eq v0, v4, :cond_3

    .line 14
    .line 15
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eq v0, v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    instance-of v0, p1, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    instance-of v0, p1, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    instance-of v0, p1, Lcom/android/wm/shell/windowdecor/WindowMenuAddDisplayItemView;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v0, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    move v0, v2

    .line 47
    :goto_1
    if-nez v0, :cond_3

    .line 48
    .line 49
    :cond_2
    return v3

    .line 50
    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_IMMERSIVE_MODE:Z

    .line 51
    .line 52
    const/4 v5, 0x3

    .line 53
    const/4 v6, 0x2

    .line 54
    if-eqz v0, :cond_12

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 57
    .line 58
    iget v7, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mLastImmersiveTaskId:I

    .line 59
    .line 60
    iget v8, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 61
    .line 62
    if-ne v7, v8, :cond_12

    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 71
    .line 72
    if-eqz v0, :cond_12

    .line 73
    .line 74
    iget-boolean v7, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsImmersiveMode:Z

    .line 75
    .line 76
    if-eqz v7, :cond_12

    .line 77
    .line 78
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 79
    .line 80
    if-eqz v7, :cond_4

    .line 81
    .line 82
    iget-boolean v7, v7, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsShowing:Z

    .line 83
    .line 84
    xor-int/2addr v7, v2

    .line 85
    if-eqz v7, :cond_4

    .line 86
    .line 87
    move v7, v2

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    move v7, v3

    .line 90
    :goto_2
    if-eqz v7, :cond_12

    .line 91
    .line 92
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonLongPressed:Z

    .line 93
    .line 94
    if-nez p1, :cond_9

    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 99
    .line 100
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 107
    .line 108
    if-nez p1, :cond_5

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->isHandleMenuActive()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_6

    .line 116
    .line 117
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonTouched:Z

    .line 118
    .line 119
    if-eqz p1, :cond_6

    .line 120
    .line 121
    move p1, v2

    .line 122
    goto :goto_4

    .line 123
    :cond_6
    :goto_3
    move p1, v3

    .line 124
    :goto_4
    if-nez p1, :cond_9

    .line 125
    .line 126
    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDexSnappingGuide:Lcom/android/wm/shell/freeform/DexSnappingGuide;

    .line 129
    .line 130
    if-eqz p1, :cond_7

    .line 131
    .line 132
    iget-object p1, p1, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mView:Lcom/android/wm/shell/freeform/DexSnappingGuideView;

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isShown()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_7

    .line 139
    .line 140
    move p1, v2

    .line 141
    goto :goto_5

    .line 142
    :cond_7
    move p1, v3

    .line 143
    :goto_5
    if-eqz p1, :cond_9

    .line 144
    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eq p1, v2, :cond_8

    .line 150
    .line 151
    if-eq p1, v6, :cond_8

    .line 152
    .line 153
    if-eq p1, v5, :cond_8

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_8
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 157
    .line 158
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/windowdecor/DragDetector;->onMotionEvent(Landroid/view/MotionEvent;)Z

    .line 159
    .line 160
    .line 161
    return v3

    .line 162
    :cond_9
    :goto_6
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->offsetCaptionLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 167
    .line 168
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 169
    .line 170
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iget v1, p0, Landroid/graphics/PointF;->x:F

    .line 177
    .line 178
    const/4 v4, 0x0

    .line 179
    cmpg-float v7, v1, v4

    .line 180
    .line 181
    if-ltz v7, :cond_11

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    int-to-float v7, v7

    .line 188
    cmpl-float v1, v1, v7

    .line 189
    .line 190
    if-gtz v1, :cond_11

    .line 191
    .line 192
    iget v1, p0, Landroid/graphics/PointF;->y:F

    .line 193
    .line 194
    cmpg-float v4, v1, v4

    .line 195
    .line 196
    if-ltz v4, :cond_11

    .line 197
    .line 198
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    int-to-float p1, p1

    .line 203
    cmpl-float p1, v1, p1

    .line 204
    .line 205
    if-lez p1, :cond_a

    .line 206
    .line 207
    goto/16 :goto_8

    .line 208
    .line 209
    :cond_a
    iget-boolean p1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsImmersiveMode:Z

    .line 210
    .line 211
    if-eqz p1, :cond_11

    .line 212
    .line 213
    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 214
    .line 215
    if-eqz p1, :cond_11

    .line 216
    .line 217
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 218
    .line 219
    float-to-int p0, p0

    .line 220
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getFlags()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    const/high16 v1, 0x4000000

    .line 225
    .line 226
    and-int/2addr v0, v1

    .line 227
    if-eqz v0, :cond_b

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_b
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eq v0, v2, :cond_c

    .line 235
    .line 236
    if-eq v0, v6, :cond_c

    .line 237
    .line 238
    if-ne v0, v5, :cond_11

    .line 239
    .line 240
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_10

    .line 245
    .line 246
    if-eq v0, v6, :cond_d

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_d
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHandler:Landroid/os/Handler;

    .line 250
    .line 251
    iget-object v1, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShowRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-nez v4, :cond_11

    .line 258
    .line 259
    int-to-float p0, p0

    .line 260
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 261
    .line 262
    .line 263
    move-result-wide v4

    .line 264
    iget-wide v6, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mDownTime:J

    .line 265
    .line 266
    sub-long/2addr v4, v6

    .line 267
    iget p2, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mDownY:F

    .line 268
    .line 269
    iget v6, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mCaptionHeight:I

    .line 270
    .line 271
    int-to-float v6, v6

    .line 272
    cmpg-float v7, p2, v6

    .line 273
    .line 274
    const-wide/16 v8, 0x1f4

    .line 275
    .line 276
    if-gtz v7, :cond_e

    .line 277
    .line 278
    cmpl-float p2, p0, p2

    .line 279
    .line 280
    if-lez p2, :cond_e

    .line 281
    .line 282
    cmpl-float p0, p0, v6

    .line 283
    .line 284
    if-lez p0, :cond_e

    .line 285
    .line 286
    cmp-long p0, v4, v8

    .line 287
    .line 288
    if-gez p0, :cond_e

    .line 289
    .line 290
    move p0, v2

    .line 291
    goto :goto_7

    .line 292
    :cond_e
    move p0, v3

    .line 293
    :goto_7
    if-eqz p0, :cond_11

    .line 294
    .line 295
    iput-boolean v2, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mShownByTouch:Z

    .line 296
    .line 297
    sget p0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->TRANSIENT_DELAY:I

    .line 298
    .line 299
    const/4 p1, -0x1

    .line 300
    if-eq p0, p1, :cond_f

    .line 301
    .line 302
    int-to-long v8, p0

    .line 303
    :cond_f
    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 304
    .line 305
    .line 306
    goto :goto_8

    .line 307
    :cond_10
    int-to-float p0, p0

    .line 308
    iput p0, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mDownY:F

    .line 309
    .line 310
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 311
    .line 312
    .line 313
    move-result-wide v0

    .line 314
    iput-wide v0, p1, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mDownTime:J

    .line 315
    .line 316
    :cond_11
    :goto_8
    return v3

    .line 317
    :cond_12
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 318
    .line 319
    if-eqz v0, :cond_14

    .line 320
    .line 321
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 322
    .line 323
    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 324
    .line 325
    .line 326
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 327
    .line 328
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 329
    .line 330
    iget v7, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 331
    .line 332
    invoke-virtual {v0, v7}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    if-nez v0, :cond_14

    .line 337
    .line 338
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 339
    .line 340
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 341
    .line 342
    iget p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 343
    .line 344
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    check-cast p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 349
    .line 350
    new-instance p2, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    const-string v0, "OnTouch: task "

    .line 353
    .line 354
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 358
    .line 359
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string p0, " might be vanished. Try destroy decoration="

    .line 363
    .line 364
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    const-string p2, "MultitaskingWindowDecorViewModel"

    .line 375
    .line 376
    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    if-eqz p1, :cond_13

    .line 380
    .line 381
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->close()V

    .line 382
    .line 383
    .line 384
    :cond_13
    return v3

    .line 385
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-eq v0, v4, :cond_15

    .line 390
    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    if-ne v0, v1, :cond_16

    .line 396
    .line 397
    :cond_15
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 398
    .line 399
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mNSController:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

    .line 400
    .line 401
    iget v4, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 402
    .line 403
    invoke-virtual {v0, p2, v4}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->onInterceptTouchEvent(Landroid/view/MotionEvent;I)Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-eqz v0, :cond_16

    .line 408
    .line 409
    return v2

    .line 410
    :cond_16
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 411
    .line 412
    if-eqz v0, :cond_25

    .line 413
    .line 414
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    const/4 v4, 0x0

    .line 419
    if-eqz v0, :cond_1d

    .line 420
    .line 421
    if-eq v0, v2, :cond_19

    .line 422
    .line 423
    if-eq v0, v6, :cond_17

    .line 424
    .line 425
    if-eq v0, v5, :cond_19

    .line 426
    .line 427
    goto/16 :goto_d

    .line 428
    .line 429
    :cond_17
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 430
    .line 431
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 432
    .line 433
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 434
    .line 435
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    const/4 v1, 0x5

    .line 444
    if-ne v0, v1, :cond_18

    .line 445
    .line 446
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTargetView:Landroid/view/View;

    .line 447
    .line 448
    if-eqz v4, :cond_18

    .line 449
    .line 450
    iget-boolean v5, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonTouched:Z

    .line 451
    .line 452
    if-eqz v5, :cond_18

    .line 453
    .line 454
    iget-boolean v5, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    .line 455
    .line 456
    if-eqz v5, :cond_18

    .line 457
    .line 458
    invoke-virtual {v4}, Landroid/view/View;->isPressed()Z

    .line 459
    .line 460
    .line 461
    move-result v4

    .line 462
    if-eqz v4, :cond_18

    .line 463
    .line 464
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTargetView:Landroid/view/View;

    .line 465
    .line 466
    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    .line 467
    .line 468
    .line 469
    :cond_18
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX:Z

    .line 470
    .line 471
    if-eqz v4, :cond_26

    .line 472
    .line 473
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 474
    .line 475
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isDexMode()Z

    .line 476
    .line 477
    .line 478
    move-result p1

    .line 479
    if-eqz p1, :cond_26

    .line 480
    .line 481
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    .line 482
    .line 483
    if-nez p1, :cond_26

    .line 484
    .line 485
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsLongPressed:Z

    .line 486
    .line 487
    if-eqz p1, :cond_26

    .line 488
    .line 489
    if-ne v0, v1, :cond_26

    .line 490
    .line 491
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mLongPressMotionEvent:Landroid/view/MotionEvent;

    .line 492
    .line 493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 494
    .line 495
    .line 496
    move-result p1

    .line 497
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 498
    .line 499
    .line 500
    move-result v0

    .line 501
    sub-float/2addr p1, v0

    .line 502
    float-to-int p1, p1

    .line 503
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mLongPressMotionEvent:Landroid/view/MotionEvent;

    .line 504
    .line 505
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    .line 506
    .line 507
    .line 508
    move-result v0

    .line 509
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 510
    .line 511
    .line 512
    move-result v1

    .line 513
    sub-float/2addr v0, v1

    .line 514
    float-to-int v0, v0

    .line 515
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 516
    .line 517
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 518
    .line 519
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    mul-int v4, p1, p1

    .line 528
    .line 529
    mul-int v5, v0, v0

    .line 530
    .line 531
    add-int/2addr v5, v4

    .line 532
    mul-int/2addr v1, v1

    .line 533
    if-le v5, v1, :cond_26

    .line 534
    .line 535
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mLongPressMotionEvent:Landroid/view/MotionEvent;

    .line 536
    .line 537
    int-to-float p1, p1

    .line 538
    int-to-float v0, v0

    .line 539
    invoke-virtual {p0, v1, p2, p1, v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 540
    .line 541
    .line 542
    goto/16 :goto_d

    .line 543
    .line 544
    :cond_19
    iput-object v4, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTargetView:Landroid/view/View;

    .line 545
    .line 546
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    .line 547
    .line 548
    iput-object v4, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mLongPressMotionEvent:Landroid/view/MotionEvent;

    .line 549
    .line 550
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->schedulePopupDismiss()V

    .line 551
    .line 552
    .line 553
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonTouched:Z

    .line 554
    .line 555
    if-eqz v0, :cond_1a

    .line 556
    .line 557
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 562
    .line 563
    if-eqz v1, :cond_1a

    .line 564
    .line 565
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 566
    .line 567
    new-array v1, v3, [I

    .line 568
    .line 569
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 570
    .line 571
    .line 572
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 573
    .line 574
    .line 575
    move-result p1

    .line 576
    const v0, 0x7f0a00f2

    .line 577
    .line 578
    .line 579
    if-ne p1, v0, :cond_1c

    .line 580
    .line 581
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsLongPressed:Z

    .line 582
    .line 583
    if-nez p1, :cond_1b

    .line 584
    .line 585
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonLongPressed:Z

    .line 586
    .line 587
    if-nez p1, :cond_1b

    .line 588
    .line 589
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->dismissPopup()V

    .line 590
    .line 591
    .line 592
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 593
    .line 594
    .line 595
    move-result p1

    .line 596
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    float-to-int p1, p1

    .line 601
    float-to-int v0, v0

    .line 602
    filled-new-array {p1, v0}, [I

    .line 603
    .line 604
    .line 605
    move-result-object p1

    .line 606
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 607
    .line 608
    invoke-static {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getExternalAppsServiceIntent(I[I)Landroid/content/Intent;

    .line 609
    .line 610
    .line 611
    move-result-object p1

    .line 612
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 613
    .line 614
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    .line 615
    .line 616
    new-instance v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener$$ExternalSyntheticLambda0;

    .line 617
    .line 618
    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;Landroid/content/Intent;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 622
    .line 623
    .line 624
    :cond_1b
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 625
    .line 626
    if-eqz p1, :cond_1c

    .line 627
    .line 628
    const-string p1, "1051"

    .line 629
    .line 630
    invoke-static {p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    :cond_1c
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsLongPressed:Z

    .line 634
    .line 635
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonLongPressed:Z

    .line 636
    .line 637
    goto/16 :goto_d

    .line 638
    .line 639
    :cond_1d
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 640
    .line 641
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 642
    .line 643
    iget v5, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 644
    .line 645
    invoke-virtual {v0, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    iget-boolean v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 650
    .line 651
    if-nez v5, :cond_1e

    .line 652
    .line 653
    new-instance v5, Landroid/window/WindowContainerTransaction;

    .line 654
    .line 655
    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 656
    .line 657
    .line 658
    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 659
    .line 660
    invoke-virtual {v5, v6, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 661
    .line 662
    .line 663
    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 664
    .line 665
    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 666
    .line 667
    invoke-virtual {v6, v5}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 668
    .line 669
    .line 670
    :cond_1e
    instance-of v5, p1, Lcom/android/wm/shell/windowdecor/widget/HandleView;

    .line 671
    .line 672
    if-eqz v5, :cond_1f

    .line 673
    .line 674
    invoke-virtual {p1, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 675
    .line 676
    .line 677
    :cond_1f
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 678
    .line 679
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 680
    .line 681
    .line 682
    instance-of v5, p1, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 683
    .line 684
    if-nez v5, :cond_21

    .line 685
    .line 686
    instance-of v5, p1, Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    .line 687
    .line 688
    if-nez v5, :cond_21

    .line 689
    .line 690
    instance-of v5, p1, Lcom/android/wm/shell/windowdecor/WindowMenuAddDisplayItemView;

    .line 691
    .line 692
    if-eqz v5, :cond_20

    .line 693
    .line 694
    goto :goto_9

    .line 695
    :cond_20
    move v5, v3

    .line 696
    goto :goto_a

    .line 697
    :cond_21
    :goto_9
    move v5, v2

    .line 698
    :goto_a
    iput-boolean v5, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonTouched:Z

    .line 699
    .line 700
    if-nez v5, :cond_23

    .line 701
    .line 702
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 703
    .line 704
    .line 705
    move-result v5

    .line 706
    if-ne v5, v1, :cond_22

    .line 707
    .line 708
    goto :goto_b

    .line 709
    :cond_22
    move-object p1, v4

    .line 710
    :cond_23
    :goto_b
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTargetView:Landroid/view/View;

    .line 711
    .line 712
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsScrolled:Z

    .line 713
    .line 714
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsLongPressed:Z

    .line 715
    .line 716
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonLongPressed:Z

    .line 717
    .line 718
    iput-object v4, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mLongPressMotionEvent:Landroid/view/MotionEvent;

    .line 719
    .line 720
    if-nez p1, :cond_24

    .line 721
    .line 722
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 723
    .line 724
    .line 725
    move-result p1

    .line 726
    const/4 v0, 0x6

    .line 727
    if-eq p1, v0, :cond_24

    .line 728
    .line 729
    move p1, v2

    .line 730
    goto :goto_c

    .line 731
    :cond_24
    move p1, v3

    .line 732
    :goto_c
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsDoubleTapEnabled:Z

    .line 733
    .line 734
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->unschedulePopupDismiss()V

    .line 735
    .line 736
    .line 737
    goto :goto_d

    .line 738
    :cond_25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 739
    .line 740
    .line 741
    move-result p1

    .line 742
    if-nez p1, :cond_26

    .line 743
    .line 744
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 745
    .line 746
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 747
    .line 748
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 749
    .line 750
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 751
    .line 752
    .line 753
    move-result-object p1

    .line 754
    iget-boolean p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 755
    .line 756
    if-nez p1, :cond_26

    .line 757
    .line 758
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 759
    .line 760
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 761
    .line 762
    .line 763
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 764
    .line 765
    invoke-virtual {p1, v0, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 766
    .line 767
    .line 768
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 769
    .line 770
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 771
    .line 772
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 773
    .line 774
    .line 775
    :cond_26
    :goto_d
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonLongPressed:Z

    .line 776
    .line 777
    if-nez p1, :cond_29

    .line 778
    .line 779
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 780
    .line 781
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 782
    .line 783
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 784
    .line 785
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object p1

    .line 789
    check-cast p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 790
    .line 791
    if-nez p1, :cond_27

    .line 792
    .line 793
    goto :goto_e

    .line 794
    :cond_27
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->isHandleMenuActive()Z

    .line 795
    .line 796
    .line 797
    move-result p1

    .line 798
    if-eqz p1, :cond_28

    .line 799
    .line 800
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mIsButtonTouched:Z

    .line 801
    .line 802
    if-eqz p1, :cond_28

    .line 803
    .line 804
    move p1, v2

    .line 805
    goto :goto_f

    .line 806
    :cond_28
    :goto_e
    move p1, v3

    .line 807
    :goto_f
    if-nez p1, :cond_29

    .line 808
    .line 809
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 810
    .line 811
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/windowdecor/DragDetector;->onMotionEvent(Landroid/view/MotionEvent;)Z

    .line 812
    .line 813
    .line 814
    move-result p0

    .line 815
    if-eqz p0, :cond_29

    .line 816
    .line 817
    goto :goto_10

    .line 818
    :cond_29
    move v2, v3

    .line 819
    :goto_10
    return v2
.end method

.method public final schedulePopupDismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDismissRunnable:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 26
    .line 27
    const/16 v1, 0x72

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDismissRunnable:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const-wide/16 v1, 0xbb8

    .line 42
    .line 43
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final sendTalkBackFeedback(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x4000

    .line 12
    .line 13
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final supportTaskMotion()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x5

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/res/Configuration;->isDexMode()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method public final unschedulePopupDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mSliderPopup:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsSliderPopupShowing:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_0
    if-nez v1, :cond_3

    .line 32
    .line 33
    :cond_2
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->isHandleMenuActive()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;->mDismissRunnable:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    :cond_4
    return-void
.end method
