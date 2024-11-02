.class public final Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field public mAllowInterceptTouch:Z

.field public final mContext:Landroid/content/Context;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public mIsRunning:Z

.field public mLayoutChanged:Z

.field public mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/os/Handler;Lcom/android/wm/shell/common/DisplayController;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Landroid/os/Handler;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mIsRunning:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mAllowInterceptTouch:Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 15
    .line 16
    new-instance p1, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    move-object v1, p1

    .line 19
    move-object v2, p0

    .line 20
    move-object v3, p5

    .line 21
    move-object v4, p6

    .line 22
    move-object v5, p2

    .line 23
    move-object v6, p7

    .line 24
    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final allowInterceptTouch(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_9

    .line 3
    .line 4
    iget-boolean v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v1, v3, :cond_1

    .line 16
    .line 17
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_FULLSCREEN:Z

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    if-ne v1, v2, :cond_2

    .line 21
    .line 22
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    move v4, v3

    .line 26
    :goto_0
    if-nez v4, :cond_3

    .line 27
    .line 28
    return v0

    .line 29
    :cond_3
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 30
    .line 31
    if-eqz v4, :cond_4

    .line 32
    .line 33
    if-ne v1, v2, :cond_4

    .line 34
    .line 35
    iget-boolean v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->supportsPipOnly:Z

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    return v0

    .line 40
    :cond_4
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/content/res/Configuration;->isDexMode()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    return v0

    .line 51
    :cond_5
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->preventNaturalSwitching(I)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_6

    .line 62
    .line 63
    return v0

    .line 64
    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 73
    .line 74
    if-eqz p0, :cond_7

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_7

    .line 81
    .line 82
    move p0, v3

    .line 83
    goto :goto_1

    .line 84
    :cond_7
    move p0, v0

    .line 85
    :goto_1
    if-eqz p0, :cond_8

    .line 86
    .line 87
    return v0

    .line 88
    :cond_8
    return v3

    .line 89
    :cond_9
    :goto_2
    return v0
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

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mAllowInterceptTouch:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_14

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    if-eq v0, p2, :cond_3

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    .line 25
    const/4 p2, 0x3

    .line 26
    if-eq v0, p2, :cond_1

    .line 27
    .line 28
    goto/16 :goto_b

    .line 29
    .line 30
    :cond_1
    iget-boolean p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mIsRunning:Z

    .line 31
    .line 32
    if-eqz p2, :cond_15

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mIsRunning:Z

    .line 35
    .line 36
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    .line 37
    .line 38
    invoke-virtual {p2, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->hide(Z)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_b

    .line 42
    .line 43
    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mIsRunning:Z

    .line 44
    .line 45
    if-eqz v0, :cond_15

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->update(Landroid/view/MotionEvent;)V

    .line 50
    .line 51
    .line 52
    move v1, p2

    .line 53
    goto/16 :goto_b

    .line 54
    .line 55
    :cond_3
    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mIsRunning:Z

    .line 56
    .line 57
    if-eqz v0, :cond_15

    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mIsRunning:Z

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    .line 62
    .line 63
    iput-boolean p2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHasDropped:Z

    .line 64
    .line 65
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mCancelButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 66
    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    iget-object v2, v2, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 70
    .line 71
    iget-boolean v2, v2, Lcom/android/wm/shell/common/DismissButtonView;->mIsEnterDismissButton:Z

    .line 72
    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->hide(Z)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_9

    .line 79
    .line 80
    :cond_4
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->getCurrentDragTargetRect()Landroid/graphics/Rect;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;

    .line 87
    .line 88
    iget v6, v2, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    .line 89
    .line 90
    iget v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    .line 91
    .line 92
    if-ne v3, p2, :cond_5

    .line 93
    .line 94
    iget v3, v2, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 95
    .line 96
    iget v2, v2, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 100
    .line 101
    iget-object v2, v2, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 102
    .line 103
    if-eqz v2, :cond_6

    .line 104
    .line 105
    iget v2, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    .line 106
    .line 107
    move v3, v2

    .line 108
    goto :goto_0

    .line 109
    :cond_6
    move v3, v1

    .line 110
    :goto_0
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 111
    .line 112
    iget-object v2, v2, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mRunningTaskInfo:Landroid/util/SparseArray;

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 119
    .line 120
    if-eqz v2, :cond_7

    .line 121
    .line 122
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 123
    .line 124
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 125
    .line 126
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getStagePosition()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    :goto_1
    move v5, v2

    .line 131
    :goto_2
    move v10, v3

    .line 132
    goto :goto_3

    .line 133
    :cond_7
    move v5, v1

    .line 134
    goto :goto_2

    .line 135
    :goto_3
    iget v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    .line 136
    .line 137
    const/4 v3, 0x5

    .line 138
    if-ne v2, v3, :cond_8

    .line 139
    .line 140
    if-ne v10, v3, :cond_8

    .line 141
    .line 142
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->adjustDragTargetViewBoundsIfNeeded()V

    .line 145
    .line 146
    .line 147
    :cond_8
    if-eqz v10, :cond_a

    .line 148
    .line 149
    if-ne v10, v3, :cond_9

    .line 150
    .line 151
    iget v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    .line 152
    .line 153
    if-ne v2, v3, :cond_9

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_9
    move v2, v1

    .line 157
    goto :goto_5

    .line 158
    :cond_a
    :goto_4
    move v2, p2

    .line 159
    :goto_5
    if-eqz v2, :cond_b

    .line 160
    .line 161
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 162
    .line 163
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->startTransition(Z)V

    .line 164
    .line 165
    .line 166
    :cond_b
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHandler:Landroid/os/Handler;

    .line 167
    .line 168
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideRunnable:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;

    .line 169
    .line 170
    const-wide/16 v11, 0x1388

    .line 171
    .line 172
    invoke-virtual {v2, v3, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    .line 174
    .line 175
    const/16 v2, 0xd

    .line 176
    .line 177
    if-ne v10, v2, :cond_11

    .line 178
    .line 179
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 180
    .line 181
    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 182
    .line 183
    const/4 v5, 0x1

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    iget-object v7, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 193
    .line 194
    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 199
    .line 200
    if-eqz v11, :cond_d

    .line 201
    .line 202
    iget-object v11, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mContext:Landroid/content/Context;

    .line 203
    .line 204
    invoke-static {v11}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 205
    .line 206
    .line 207
    move-result v11

    .line 208
    if-eqz v11, :cond_c

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_c
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 212
    .line 213
    iget-object v2, v2, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 214
    .line 215
    if-eqz v2, :cond_e

    .line 216
    .line 217
    iget v2, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mStagePosition:I

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_d
    :goto_6
    new-instance v11, Landroid/graphics/Rect;

    .line 221
    .line 222
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 223
    .line 224
    .line 225
    new-instance v12, Landroid/graphics/Rect;

    .line 226
    .line 227
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7, v11, v12}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 231
    .line 232
    .line 233
    float-to-int v2, v2

    .line 234
    float-to-int v6, v6

    .line 235
    invoke-virtual {v11, v2, v6}, Landroid/graphics/Rect;->contains(II)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_f

    .line 240
    .line 241
    if-eqz v9, :cond_e

    .line 242
    .line 243
    const/16 v2, 0x8

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_e
    const/16 v2, 0x10

    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_f
    if-eqz v9, :cond_10

    .line 250
    .line 251
    const/16 v2, 0x20

    .line 252
    .line 253
    goto :goto_7

    .line 254
    :cond_10
    const/16 v2, 0x40

    .line 255
    .line 256
    :goto_7
    move v6, v2

    .line 257
    const/4 v7, 0x0

    .line 258
    const/4 v9, 0x0

    .line 259
    invoke-virtual/range {v3 .. v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onFreeformToSplitRequested(Landroid/app/ActivityManager$RunningTaskInfo;ZIZLandroid/graphics/Rect;Z)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->hide(Z)V

    .line 263
    .line 264
    .line 265
    goto :goto_8

    .line 266
    :cond_11
    new-instance v9, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;

    .line 267
    .line 268
    const/4 v11, 0x0

    .line 269
    move-object v2, v9

    .line 270
    move-object v3, v0

    .line 271
    move v4, v10

    .line 272
    move-object v7, v8

    .line 273
    move v8, v11

    .line 274
    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;IIILandroid/graphics/Rect;I)V

    .line 275
    .line 276
    .line 277
    iget v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    .line 278
    .line 279
    if-ne v2, p2, :cond_12

    .line 280
    .line 281
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 282
    .line 283
    iput-object v9, v2, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mOnDrawCallback:Ljava/lang/Runnable;

    .line 284
    .line 285
    iget-object v2, v2, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mMainView:Landroid/view/ViewGroup;

    .line 286
    .line 287
    const-string v3, "#FF000000"

    .line 288
    .line 289
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 294
    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_12
    invoke-virtual {v9}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;->run()V

    .line 298
    .line 299
    .line 300
    :goto_8
    iget v0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    .line 301
    .line 302
    if-eq v0, v10, :cond_13

    .line 303
    .line 304
    goto :goto_a

    .line 305
    :cond_13
    :goto_9
    move p2, v1

    .line 306
    :goto_a
    iput-boolean p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mLayoutChanged:Z

    .line 307
    .line 308
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    .line 309
    .line 310
    iget-boolean v0, p2, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHasDropped:Z

    .line 311
    .line 312
    if-nez v0, :cond_15

    .line 313
    .line 314
    invoke-virtual {p2, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->hide(Z)V

    .line 315
    .line 316
    .line 317
    goto :goto_b

    .line 318
    :cond_14
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 319
    .line 320
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 321
    .line 322
    .line 323
    move-result-object p2

    .line 324
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 325
    .line 326
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->allowInterceptTouch(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 327
    .line 328
    .line 329
    move-result p2

    .line 330
    iput-boolean p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mAllowInterceptTouch:Z

    .line 331
    .line 332
    iput-boolean v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mLayoutChanged:Z

    .line 333
    .line 334
    :cond_15
    :goto_b
    iget-boolean p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mAllowInterceptTouch:Z

    .line 335
    .line 336
    if-eqz p2, :cond_16

    .line 337
    .line 338
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mGestureDetector:Landroid/view/GestureDetector;

    .line 339
    .line 340
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 341
    .line 342
    .line 343
    :cond_16
    return v1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mIsRunning:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 7
    .line 8
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9
    .line 10
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 22
    .line 23
    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 24
    .line 25
    invoke-virtual {v3, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getFreeformCaptionType(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    move v3, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v3, v4

    .line 34
    :goto_0
    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    .line 35
    .line 36
    iget-object v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const-string/jumbo v7, "prepare"

    .line 42
    .line 43
    .line 44
    const-string v8, "NaturalSwitchingLayout"

    .line 45
    .line 46
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iput-boolean v4, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mReadyToStart:Z

    .line 50
    .line 51
    iput-boolean v4, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideRequested:Z

    .line 52
    .line 53
    iput-boolean v4, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHasDropped:Z

    .line 54
    .line 55
    iget-object v7, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 56
    .line 57
    iput-object v2, v7, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 58
    .line 59
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 60
    .line 61
    const/4 v9, 0x5

    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    iget-object v2, v7, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget v2, v2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 75
    .line 76
    if-ne v2, v9, :cond_1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move v1, v4

    .line 80
    :goto_1
    iput-boolean v1, v7, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mSupportOnlyTwoUpMode:Z

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    iput-boolean v1, v7, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mSupportOnlyTwoUpMode:Z

    .line 84
    .line 85
    :goto_2
    iget-object v1, v7, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mRunningTaskInfo:Landroid/util/SparseArray;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const/4 v9, 0x3

    .line 99
    const/4 v10, 0x2

    .line 100
    const-string v11, "TaskVisibility"

    .line 101
    .line 102
    if-nez v2, :cond_3

    .line 103
    .line 104
    const-string v1, "initRunningTaskInfos: failed to get list"

    .line 105
    .line 106
    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    goto/16 :goto_5

    .line 110
    .line 111
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    if-eqz v12, :cond_c

    .line 120
    .line 121
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    check-cast v12, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 126
    .line 127
    invoke-virtual {v12}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    if-eqz v13, :cond_b

    .line 132
    .line 133
    iget v13, v12, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 134
    .line 135
    if-eqz v13, :cond_4

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_4
    iget-object v13, v12, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 139
    .line 140
    iget-object v13, v13, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 141
    .line 142
    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getActivityType()I

    .line 143
    .line 144
    .line 145
    move-result v14

    .line 146
    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 147
    .line 148
    .line 149
    move-result v15

    .line 150
    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 151
    .line 152
    .line 153
    move-result v13

    .line 154
    if-eq v14, v10, :cond_5

    .line 155
    .line 156
    if-ne v14, v9, :cond_6

    .line 157
    .line 158
    :cond_5
    if-nez v4, :cond_6

    .line 159
    .line 160
    const/16 v9, 0xd

    .line 161
    .line 162
    invoke-virtual {v1, v9, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_6
    const/4 v9, 0x1

    .line 167
    if-eqz v14, :cond_7

    .line 168
    .line 169
    if-ne v14, v9, :cond_b

    .line 170
    .line 171
    :cond_7
    invoke-static {v15, v13}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->getNaturalSwitchingWindowingMode(II)I

    .line 172
    .line 173
    .line 174
    move-result v13

    .line 175
    if-eq v15, v9, :cond_9

    .line 176
    .line 177
    if-eq v15, v10, :cond_8

    .line 178
    .line 179
    const/4 v9, 0x5

    .line 180
    if-eq v15, v9, :cond_a

    .line 181
    .line 182
    const/4 v9, 0x6

    .line 183
    if-eq v15, v9, :cond_9

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_8
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 187
    .line 188
    if-eqz v9, :cond_b

    .line 189
    .line 190
    invoke-virtual {v1, v13, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_9
    const/4 v4, 0x1

    .line 195
    :cond_a
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->contains(I)Z

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    if-nez v9, :cond_b

    .line 200
    .line 201
    invoke-virtual {v1, v13, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_b
    :goto_4
    const/4 v9, 0x3

    .line 205
    goto :goto_3

    .line 206
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v2, "initRunningTaskInfos: "

    .line 209
    .line 210
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    :goto_5
    iget-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 224
    .line 225
    const/high16 v2, 0x1600000

    .line 226
    .line 227
    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mContext:Landroid/content/Context;

    .line 231
    .line 232
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    mul-int/2addr v2, v10

    .line 241
    iput v2, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTouchSlop:I

    .line 242
    .line 243
    const/4 v2, 0x0

    .line 244
    iput-boolean v2, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mPassedInitialSlop:Z

    .line 245
    .line 246
    iget-object v4, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTouchGap:Landroid/graphics/Point;

    .line 247
    .line 248
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Point;->set(II)V

    .line 249
    .line 250
    .line 251
    iget-object v2, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDownPoint:Landroid/graphics/Point;

    .line 252
    .line 253
    const/4 v4, -0x1

    .line 254
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Point;->set(II)V

    .line 255
    .line 256
    .line 257
    iput-object v6, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 258
    .line 259
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    iget-object v4, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 264
    .line 265
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 266
    .line 267
    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 268
    .line 269
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    invoke-static {v2, v4}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->getNaturalSwitchingWindowingMode(II)I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    iput v2, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    .line 278
    .line 279
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 280
    .line 281
    if-eqz v4, :cond_e

    .line 282
    .line 283
    if-ne v2, v10, :cond_d

    .line 284
    .line 285
    const/4 v4, 0x1

    .line 286
    goto :goto_6

    .line 287
    :cond_d
    const/4 v4, 0x0

    .line 288
    :goto_6
    iput-boolean v4, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mIsPipNaturalSwitching:Z

    .line 289
    .line 290
    :cond_e
    iput-boolean v3, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mIsMwHandlerType:Z

    .line 291
    .line 292
    iget-object v3, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;

    .line 293
    .line 294
    iput-object v7, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 295
    .line 296
    iget-object v4, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 297
    .line 298
    iput-object v4, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 299
    .line 300
    iput v2, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    .line 301
    .line 302
    invoke-static {v2}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->isFloating(I)Z

    .line 303
    .line 304
    .line 305
    move-result v9

    .line 306
    const/4 v11, 0x4

    .line 307
    if-eqz v9, :cond_f

    .line 308
    .line 309
    iget-object v9, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 310
    .line 311
    const/4 v12, 0x1

    .line 312
    invoke-virtual {v9, v12}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    .line 313
    .line 314
    .line 315
    move-result v9

    .line 316
    if-nez v9, :cond_12

    .line 317
    .line 318
    iget-object v9, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 319
    .line 320
    const/16 v12, 0xd

    .line 321
    .line 322
    invoke-virtual {v9, v12}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    .line 323
    .line 324
    .line 325
    move-result v9

    .line 326
    if-eqz v9, :cond_f

    .line 327
    .line 328
    goto :goto_9

    .line 329
    :cond_f
    iget v9, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    .line 330
    .line 331
    const/4 v12, 0x3

    .line 332
    if-eq v9, v12, :cond_11

    .line 333
    .line 334
    if-eq v9, v11, :cond_11

    .line 335
    .line 336
    const/16 v12, 0xc

    .line 337
    .line 338
    if-ne v9, v12, :cond_10

    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_10
    const/4 v9, 0x0

    .line 342
    goto :goto_8

    .line 343
    :cond_11
    :goto_7
    const/4 v9, 0x1

    .line 344
    :goto_8
    if-eqz v9, :cond_13

    .line 345
    .line 346
    iget-object v9, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 347
    .line 348
    invoke-virtual {v9}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    .line 349
    .line 350
    .line 351
    move-result v9

    .line 352
    if-eqz v9, :cond_13

    .line 353
    .line 354
    :cond_12
    :goto_9
    const/4 v9, 0x1

    .line 355
    goto :goto_a

    .line 356
    :cond_13
    const/4 v9, 0x0

    .line 357
    :goto_a
    iput-boolean v9, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mUseSingleNonTarget:Z

    .line 358
    .line 359
    iput v2, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 360
    .line 361
    const/4 v2, 0x0

    .line 362
    iput v2, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mShrunkWindowingMode:I

    .line 363
    .line 364
    iput v2, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSwapWindowingMode:I

    .line 365
    .line 366
    iput v2, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDropSide:I

    .line 367
    .line 368
    iput v2, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    .line 369
    .line 370
    iput v2, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mPushRegion:I

    .line 371
    .line 372
    iput-boolean v2, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mNeedToReparentCell:Z

    .line 373
    .line 374
    iget v2, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    .line 375
    .line 376
    invoke-static {v2}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->isFloating(I)Z

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    if-eqz v2, :cond_16

    .line 381
    .line 382
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 383
    .line 384
    if-eqz v2, :cond_15

    .line 385
    .line 386
    iget-boolean v2, v7, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mSupportOnlyTwoUpMode:Z

    .line 387
    .line 388
    if-eqz v2, :cond_14

    .line 389
    .line 390
    invoke-virtual {v7}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    goto :goto_b

    .line 395
    :cond_14
    invoke-virtual {v7}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    goto :goto_b

    .line 400
    :cond_15
    invoke-virtual {v7}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    :goto_b
    if-eqz v2, :cond_16

    .line 405
    .line 406
    iput v10, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    .line 407
    .line 408
    goto :goto_c

    .line 409
    :cond_16
    const/16 v2, 0xd

    .line 410
    .line 411
    invoke-virtual {v7, v2}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-eqz v2, :cond_17

    .line 416
    .line 417
    iput v10, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    .line 418
    .line 419
    goto :goto_c

    .line 420
    :cond_17
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_FULLSCREEN:Z

    .line 421
    .line 422
    if-eqz v2, :cond_18

    .line 423
    .line 424
    iget v2, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    .line 425
    .line 426
    const/4 v9, 0x1

    .line 427
    if-ne v2, v9, :cond_19

    .line 428
    .line 429
    iput v10, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    .line 430
    .line 431
    goto :goto_c

    .line 432
    :cond_18
    const/4 v9, 0x1

    .line 433
    :cond_19
    iput v9, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    .line 434
    .line 435
    :goto_c
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    const v9, 0x7f0d025b

    .line 440
    .line 441
    .line 442
    const/4 v12, 0x0

    .line 443
    invoke-virtual {v2, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    check-cast v2, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 448
    .line 449
    iput-object v2, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 450
    .line 451
    iget v9, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    .line 452
    .line 453
    iget v13, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    .line 454
    .line 455
    invoke-virtual {v2, v9, v13, v7, v4}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->init(IILcom/android/wm/shell/naturalswitching/TaskVisibility;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    .line 456
    .line 457
    .line 458
    iget-object v2, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 459
    .line 460
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 461
    .line 462
    .line 463
    move-result-object v9

    .line 464
    invoke-virtual {v9}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 465
    .line 466
    .line 467
    move-result-object v9

    .line 468
    iget-object v2, v2, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mOnDrawListener:Lcom/android/wm/shell/naturalswitching/NonDragTargetView$$ExternalSyntheticLambda0;

    .line 469
    .line 470
    invoke-virtual {v9, v2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 471
    .line 472
    .line 473
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    const v9, 0x7f0d0259

    .line 478
    .line 479
    .line 480
    invoke-virtual {v2, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    check-cast v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 485
    .line 486
    iput-object v2, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 487
    .line 488
    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 489
    .line 490
    iget v9, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    .line 491
    .line 492
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    new-instance v12, Ljava/lang/StringBuilder;

    .line 496
    .line 497
    const-string v13, "init: t#"

    .line 498
    .line 499
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v12

    .line 509
    const-string v13, "DragTargetView"

    .line 510
    .line 511
    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 515
    .line 516
    .line 517
    move-result-object v12

    .line 518
    const-string/jumbo v14, "window"

    .line 519
    .line 520
    .line 521
    invoke-virtual {v12, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v12

    .line 525
    check-cast v12, Landroid/view/WindowManager;

    .line 526
    .line 527
    iput-object v12, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mWm:Landroid/view/WindowManager;

    .line 528
    .line 529
    iput-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 530
    .line 531
    const/4 v4, 0x0

    .line 532
    iput-boolean v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mIsDragEndCalled:Z

    .line 533
    .line 534
    iput-object v7, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 535
    .line 536
    iput v9, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetWindowingMode:I

    .line 537
    .line 538
    const v4, 0x7f0a0370

    .line 539
    .line 540
    .line 541
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    check-cast v4, Landroid/widget/FrameLayout;

    .line 546
    .line 547
    iput-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 548
    .line 549
    const v4, 0x7f0a0371

    .line 550
    .line 551
    .line 552
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 553
    .line 554
    .line 555
    move-result-object v4

    .line 556
    check-cast v4, Landroid/widget/ImageView;

    .line 557
    .line 558
    iput-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    .line 559
    .line 560
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 561
    .line 562
    iget v9, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetWindowingMode:I

    .line 563
    .line 564
    invoke-virtual {v4, v9}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    iput-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 569
    .line 570
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 571
    .line 572
    if-eqz v4, :cond_1a

    .line 573
    .line 574
    invoke-virtual {v2}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isPipNaturalSwitching()Z

    .line 575
    .line 576
    .line 577
    move-result v4

    .line 578
    if-eqz v4, :cond_1a

    .line 579
    .line 580
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 581
    .line 582
    const/4 v9, 0x0

    .line 583
    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setZ(F)V

    .line 584
    .line 585
    .line 586
    goto :goto_d

    .line 587
    :cond_1a
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 588
    .line 589
    const/4 v9, 0x1

    .line 590
    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 591
    .line 592
    .line 593
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 594
    .line 595
    iget-object v9, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mOutlineProvider:Lcom/android/wm/shell/naturalswitching/DragTargetView$1;

    .line 596
    .line 597
    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 598
    .line 599
    .line 600
    :goto_d
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 601
    .line 602
    iget-object v9, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 603
    .line 604
    iget-object v4, v4, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 605
    .line 606
    iget v12, v4, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 607
    .line 608
    iget v4, v4, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 609
    .line 610
    const/4 v14, 0x0

    .line 611
    invoke-virtual {v9, v14, v14, v12, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 612
    .line 613
    .line 614
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 615
    .line 616
    iget-object v9, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 617
    .line 618
    iget-object v4, v4, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 619
    .line 620
    const/4 v12, 0x1

    .line 621
    invoke-virtual {v4, v9, v12}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 625
    .line 626
    .line 627
    move-result-object v4

    .line 628
    const v9, 0x1050321

    .line 629
    .line 630
    .line 631
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 632
    .line 633
    .line 634
    move-result v4

    .line 635
    iput v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCornerRadius:I

    .line 636
    .line 637
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 638
    .line 639
    .line 640
    move-result-object v4

    .line 641
    const v9, 0x1050158

    .line 642
    .line 643
    .line 644
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 645
    .line 646
    .line 647
    move-result v4

    .line 648
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 649
    .line 650
    .line 651
    move-result-object v9

    .line 652
    const v12, 0x1050157

    .line 653
    .line 654
    .line 655
    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 656
    .line 657
    .line 658
    move-result v9

    .line 659
    mul-int/2addr v9, v10

    .line 660
    sub-int/2addr v4, v9

    .line 661
    iput v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDividerSize:I

    .line 662
    .line 663
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 664
    .line 665
    if-eqz v4, :cond_1c

    .line 666
    .line 667
    invoke-virtual {v2}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isPipNaturalSwitching()Z

    .line 668
    .line 669
    .line 670
    move-result v4

    .line 671
    if-eqz v4, :cond_1c

    .line 672
    .line 673
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    .line 674
    .line 675
    sget-boolean v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->DEBUG_PIP:Z

    .line 676
    .line 677
    if-eqz v6, :cond_1b

    .line 678
    .line 679
    const v6, 0x6600ff00

    .line 680
    .line 681
    .line 682
    goto :goto_e

    .line 683
    :cond_1b
    const/4 v6, 0x0

    .line 684
    :goto_e
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 685
    .line 686
    .line 687
    goto :goto_11

    .line 688
    :cond_1c
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 689
    .line 690
    .line 691
    move-result-object v4

    .line 692
    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;

    .line 693
    .line 694
    .line 695
    move-result-object v4

    .line 696
    if-eqz v4, :cond_1d

    .line 697
    .line 698
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->hasProtectedContent()Z

    .line 699
    .line 700
    .line 701
    move-result v9

    .line 702
    iput-boolean v9, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHasProtectedContent:Z

    .line 703
    .line 704
    :cond_1d
    iget-boolean v9, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHasProtectedContent:Z

    .line 705
    .line 706
    if-eqz v9, :cond_1e

    .line 707
    .line 708
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    .line 709
    .line 710
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 711
    .line 712
    .line 713
    move-result-object v6

    .line 714
    const v9, 0x7f0604b9

    .line 715
    .line 716
    .line 717
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    .line 718
    .line 719
    .line 720
    move-result v6

    .line 721
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 722
    .line 723
    .line 724
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    .line 725
    .line 726
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 727
    .line 728
    .line 729
    move-result-object v6

    .line 730
    const v9, 0x7f080cb9

    .line 731
    .line 732
    .line 733
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 734
    .line 735
    .line 736
    move-result-object v6

    .line 737
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 738
    .line 739
    .line 740
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    .line 741
    .line 742
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 743
    .line 744
    .line 745
    move-result-object v4

    .line 746
    const/16 v6, 0x4c

    .line 747
    .line 748
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 749
    .line 750
    .line 751
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    .line 752
    .line 753
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 754
    .line 755
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 756
    .line 757
    .line 758
    goto :goto_11

    .line 759
    :cond_1e
    if-eqz v4, :cond_1f

    .line 760
    .line 761
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->getSnapshotBitmap()Landroid/graphics/Bitmap;

    .line 762
    .line 763
    .line 764
    move-result-object v4

    .line 765
    goto :goto_f

    .line 766
    :cond_1f
    const/4 v4, 0x0

    .line 767
    :goto_f
    if-nez v4, :cond_20

    .line 768
    .line 769
    const-string v4, "initThumbnail: failed to get snapshot, task #"

    .line 770
    .line 771
    invoke-static {v4, v6, v13}, Landroidx/core/graphics/drawable/IconCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 772
    .line 773
    .line 774
    goto :goto_10

    .line 775
    :cond_20
    iget-object v6, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    .line 776
    .line 777
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 778
    .line 779
    .line 780
    :goto_10
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    .line 781
    .line 782
    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 783
    .line 784
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 785
    .line 786
    .line 787
    :goto_11
    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 788
    .line 789
    iget-object v6, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 790
    .line 791
    sget-object v9, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    .line 792
    .line 793
    invoke-direct {v4, v6, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 794
    .line 795
    .line 796
    const/high16 v6, 0x43480000    # 200.0f

    .line 797
    .line 798
    const v12, 0x3f7d70a4    # 0.99f

    .line 799
    .line 800
    .line 801
    invoke-static {v6, v12}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 802
    .line 803
    .line 804
    move-result-object v14

    .line 805
    iput-object v14, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 806
    .line 807
    iput-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleDownAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 808
    .line 809
    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 810
    .line 811
    iget-object v14, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 812
    .line 813
    sget-object v15, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    .line 814
    .line 815
    invoke-direct {v4, v14, v15}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 816
    .line 817
    .line 818
    invoke-static {v6, v12}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 819
    .line 820
    .line 821
    move-result-object v6

    .line 822
    iput-object v6, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 823
    .line 824
    iput-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleDownAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 825
    .line 826
    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 827
    .line 828
    iget-object v6, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 829
    .line 830
    invoke-direct {v4, v6, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 831
    .line 832
    .line 833
    const/high16 v6, 0x435c0000    # 220.0f

    .line 834
    .line 835
    const v9, 0x3ef0a3d7    # 0.47f

    .line 836
    .line 837
    .line 838
    invoke-static {v6, v9}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 839
    .line 840
    .line 841
    move-result-object v12

    .line 842
    iput-object v12, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 843
    .line 844
    iput-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleUpAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 845
    .line 846
    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 847
    .line 848
    iget-object v12, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 849
    .line 850
    invoke-direct {v4, v12, v15}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 851
    .line 852
    .line 853
    invoke-static {v6, v9}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 854
    .line 855
    .line 856
    move-result-object v6

    .line 857
    iput-object v6, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 858
    .line 859
    iput-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleUpAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 860
    .line 861
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 862
    .line 863
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 864
    .line 865
    .line 866
    move-result v4

    .line 867
    if-nez v4, :cond_21

    .line 868
    .line 869
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 870
    .line 871
    .line 872
    move-result-object v4

    .line 873
    const v6, 0x7f07095c

    .line 874
    .line 875
    .line 876
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 877
    .line 878
    .line 879
    move-result v4

    .line 880
    iget-object v6, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 881
    .line 882
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 883
    .line 884
    .line 885
    move-result v6

    .line 886
    iget-object v9, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 887
    .line 888
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 889
    .line 890
    .line 891
    move-result v9

    .line 892
    iget-object v12, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDownScale:Landroid/graphics/PointF;

    .line 893
    .line 894
    sub-int v14, v6, v4

    .line 895
    .line 896
    int-to-float v14, v14

    .line 897
    int-to-float v6, v6

    .line 898
    div-float/2addr v14, v6

    .line 899
    sub-int v4, v9, v4

    .line 900
    .line 901
    int-to-float v4, v4

    .line 902
    int-to-float v6, v9

    .line 903
    div-float/2addr v4, v6

    .line 904
    invoke-static {v14, v4}, Ljava/lang/Math;->min(FF)F

    .line 905
    .line 906
    .line 907
    move-result v4

    .line 908
    iput v4, v12, Landroid/graphics/PointF;->y:F

    .line 909
    .line 910
    iput v4, v12, Landroid/graphics/PointF;->x:F

    .line 911
    .line 912
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mUpScale:Landroid/graphics/PointF;

    .line 913
    .line 914
    const v6, 0x3f81eb85    # 1.015f

    .line 915
    .line 916
    .line 917
    invoke-virtual {v4, v6, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 918
    .line 919
    .line 920
    :cond_21
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    .line 921
    .line 922
    const/4 v15, -0x1

    .line 923
    const/16 v16, -0x1

    .line 924
    .line 925
    const/16 v17, 0x7e0

    .line 926
    .line 927
    const v18, 0x20310

    .line 928
    .line 929
    .line 930
    const/16 v19, -0x2

    .line 931
    .line 932
    move-object v14, v4

    .line 933
    invoke-direct/range {v14 .. v19}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 934
    .line 935
    .line 936
    iput-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 937
    .line 938
    const-string v6, "NS:DragTargetView"

    .line 939
    .line 940
    invoke-virtual {v4, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 941
    .line 942
    .line 943
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 944
    .line 945
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 946
    .line 947
    or-int/lit8 v6, v6, 0x50

    .line 948
    .line 949
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 950
    .line 951
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 952
    .line 953
    const/high16 v9, 0x20000

    .line 954
    .line 955
    or-int/2addr v6, v9

    .line 956
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 957
    .line 958
    const/4 v6, 0x0

    .line 959
    invoke-virtual {v4, v6}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 960
    .line 961
    .line 962
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 963
    .line 964
    const/4 v9, 0x3

    .line 965
    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 966
    .line 967
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 968
    .line 969
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 970
    .line 971
    iget-object v6, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 972
    .line 973
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 974
    .line 975
    .line 976
    move-result v6

    .line 977
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 978
    .line 979
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 980
    .line 981
    iget-object v6, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    .line 982
    .line 983
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 984
    .line 985
    .line 986
    move-result v6

    .line 987
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 988
    .line 989
    iget-object v4, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 990
    .line 991
    const v6, 0x800033

    .line 992
    .line 993
    .line 994
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 995
    .line 996
    iget-object v6, v2, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mWm:Landroid/view/WindowManager;

    .line 997
    .line 998
    invoke-interface {v6, v2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 999
    .line 1000
    .line 1001
    iget-object v2, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 1002
    .line 1003
    iget v2, v2, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    .line 1004
    .line 1005
    iput v2, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mHalfTarget:I

    .line 1006
    .line 1007
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_FULLSCREEN:Z

    .line 1008
    .line 1009
    if-eqz v2, :cond_22

    .line 1010
    .line 1011
    iget v2, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    .line 1012
    .line 1013
    const/4 v3, 0x1

    .line 1014
    if-eq v2, v3, :cond_25

    .line 1015
    .line 1016
    :cond_22
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 1017
    .line 1018
    if-eqz v2, :cond_26

    .line 1019
    .line 1020
    iget-boolean v2, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mIsPipNaturalSwitching:Z

    .line 1021
    .line 1022
    if-eqz v2, :cond_26

    .line 1023
    .line 1024
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 1025
    .line 1026
    if-eqz v2, :cond_24

    .line 1027
    .line 1028
    iget-boolean v2, v7, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mSupportOnlyTwoUpMode:Z

    .line 1029
    .line 1030
    if-eqz v2, :cond_23

    .line 1031
    .line 1032
    invoke-virtual {v7}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    .line 1033
    .line 1034
    .line 1035
    move-result v2

    .line 1036
    goto :goto_12

    .line 1037
    :cond_23
    invoke-virtual {v7}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    .line 1038
    .line 1039
    .line 1040
    move-result v2

    .line 1041
    goto :goto_12

    .line 1042
    :cond_24
    invoke-virtual {v7}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    .line 1043
    .line 1044
    .line 1045
    move-result v2

    .line 1046
    :goto_12
    if-eqz v2, :cond_26

    .line 1047
    .line 1048
    :cond_25
    const/4 v2, 0x1

    .line 1049
    goto :goto_13

    .line 1050
    :cond_26
    const/16 v2, 0xd

    .line 1051
    .line 1052
    invoke-virtual {v7, v2}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    .line 1053
    .line 1054
    .line 1055
    move-result v2

    .line 1056
    :goto_13
    if-eqz v2, :cond_27

    .line 1057
    .line 1058
    new-instance v2, Lcom/android/wm/shell/common/DismissButtonManager;

    .line 1059
    .line 1060
    const/16 v3, 0x7e0

    .line 1061
    .line 1062
    invoke-direct {v2, v1, v11, v3}, Lcom/android/wm/shell/common/DismissButtonManager;-><init>(Landroid/content/Context;II)V

    .line 1063
    .line 1064
    .line 1065
    iput-object v2, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mCancelButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 1066
    .line 1067
    invoke-virtual {v2}, Lcom/android/wm/shell/common/DismissButtonManager;->createDismissButtonView()V

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v2}, Lcom/android/wm/shell/common/DismissButtonManager;->createOrUpdateWrapper()V

    .line 1071
    .line 1072
    .line 1073
    :cond_27
    iget-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 1074
    .line 1075
    iget-object v2, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 1076
    .line 1077
    iput-object v2, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 1078
    .line 1079
    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 1080
    .line 1081
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v2

    .line 1085
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1086
    .line 1087
    iget-object v3, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    .line 1088
    .line 1089
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v3

    .line 1093
    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 1094
    .line 1095
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 1096
    .line 1097
    .line 1098
    move-result v4

    .line 1099
    if-eqz v4, :cond_2a

    .line 1100
    .line 1101
    iget-boolean v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHasProtectedContent:Z

    .line 1102
    .line 1103
    if-nez v4, :cond_28

    .line 1104
    .line 1105
    if-eqz v3, :cond_28

    .line 1106
    .line 1107
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 1108
    .line 1109
    .line 1110
    move-result v4

    .line 1111
    goto :goto_14

    .line 1112
    :cond_28
    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 1113
    .line 1114
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    .line 1115
    .line 1116
    .line 1117
    move-result v4

    .line 1118
    :goto_14
    iget-boolean v6, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHasProtectedContent:Z

    .line 1119
    .line 1120
    if-nez v6, :cond_29

    .line 1121
    .line 1122
    if-eqz v3, :cond_29

    .line 1123
    .line 1124
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 1125
    .line 1126
    .line 1127
    move-result v3

    .line 1128
    goto :goto_15

    .line 1129
    :cond_29
    iget-object v3, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 1130
    .line 1131
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    .line 1132
    .line 1133
    .line 1134
    move-result v3

    .line 1135
    :goto_15
    iget-object v6, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 1136
    .line 1137
    const/4 v7, 0x0

    .line 1138
    invoke-virtual {v6, v7, v7, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1139
    .line 1140
    .line 1141
    :cond_2a
    iget-object v3, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 1142
    .line 1143
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 1144
    .line 1145
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1146
    .line 1147
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 1148
    .line 1149
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1150
    .line 1151
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 1152
    .line 1153
    .line 1154
    move-result v3

    .line 1155
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1156
    .line 1157
    iget-object v3, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 1158
    .line 1159
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 1160
    .line 1161
    .line 1162
    move-result v3

    .line 1163
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1164
    .line 1165
    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 1166
    .line 1167
    const/4 v2, 0x0

    .line 1168
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1169
    .line 1170
    .line 1171
    iget-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 1172
    .line 1173
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1174
    .line 1175
    .line 1176
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 1177
    .line 1178
    if-eqz v2, :cond_2b

    .line 1179
    .line 1180
    invoke-virtual {v1}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isPipNaturalSwitching()Z

    .line 1181
    .line 1182
    .line 1183
    move-result v2

    .line 1184
    if-eqz v2, :cond_2b

    .line 1185
    .line 1186
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1187
    .line 1188
    .line 1189
    move-result v2

    .line 1190
    float-to-int v2, v2

    .line 1191
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1192
    .line 1193
    .line 1194
    move-result v3

    .line 1195
    float-to-int v3, v3

    .line 1196
    goto :goto_16

    .line 1197
    :cond_2b
    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 1198
    .line 1199
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 1200
    .line 1201
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 1202
    .line 1203
    .line 1204
    move-result v2

    .line 1205
    div-int/2addr v2, v10

    .line 1206
    add-int/2addr v2, v3

    .line 1207
    iget-object v3, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 1208
    .line 1209
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 1210
    .line 1211
    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 1212
    .line 1213
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 1214
    .line 1215
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 1216
    .line 1217
    .line 1218
    move-result v3

    .line 1219
    :goto_16
    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHandlerPosition:Landroid/graphics/Point;

    .line 1220
    .line 1221
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 1222
    .line 1223
    .line 1224
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1225
    .line 1226
    const-string v3, "initHandlerPosition: "

    .line 1227
    .line 1228
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1229
    .line 1230
    .line 1231
    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHandlerPosition:Landroid/graphics/Point;

    .line 1232
    .line 1233
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v1

    .line 1240
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    .line 1242
    .line 1243
    iget-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 1244
    .line 1245
    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 1246
    .line 1247
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 1248
    .line 1249
    .line 1250
    move-result v2

    .line 1251
    :goto_17
    add-int/lit8 v2, v2, -0x1

    .line 1252
    .line 1253
    if-ltz v2, :cond_2d

    .line 1254
    .line 1255
    iget-object v3, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 1256
    .line 1257
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v3

    .line 1261
    check-cast v3, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 1262
    .line 1263
    iget-object v4, v3, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 1264
    .line 1265
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v4

    .line 1269
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1270
    .line 1271
    iget-object v6, v3, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    .line 1272
    .line 1273
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v6

    .line 1277
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1278
    .line 1279
    iget-object v7, v3, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    .line 1280
    .line 1281
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 1282
    .line 1283
    .line 1284
    move-result v7

    .line 1285
    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1286
    .line 1287
    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1288
    .line 1289
    iget-object v7, v3, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    .line 1290
    .line 1291
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 1292
    .line 1293
    .line 1294
    move-result v7

    .line 1295
    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1296
    .line 1297
    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1298
    .line 1299
    iget-object v7, v3, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    .line 1300
    .line 1301
    iget v9, v7, Landroid/graphics/Rect;->left:I

    .line 1302
    .line 1303
    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1304
    .line 1305
    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1306
    .line 1307
    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 1308
    .line 1309
    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1310
    .line 1311
    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1312
    .line 1313
    iget-boolean v4, v3, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mHasProtectedContent:Z

    .line 1314
    .line 1315
    if-eqz v4, :cond_2c

    .line 1316
    .line 1317
    iget-object v3, v3, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 1318
    .line 1319
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 1320
    .line 1321
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1322
    .line 1323
    .line 1324
    goto :goto_17

    .line 1325
    :cond_2c
    iget-object v4, v3, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 1326
    .line 1327
    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 1328
    .line 1329
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1330
    .line 1331
    .line 1332
    iget-object v3, v3, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    .line 1333
    .line 1334
    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 1335
    .line 1336
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1337
    .line 1338
    .line 1339
    goto :goto_17

    .line 1340
    :cond_2d
    iget v2, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNaturalSwitchingMode:I

    .line 1341
    .line 1342
    if-ne v2, v10, :cond_30

    .line 1343
    .line 1344
    invoke-virtual {v1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->createNonDragTarget()Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v2

    .line 1348
    iget v3, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 1349
    .line 1350
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_FULLSCREEN:Z

    .line 1351
    .line 1352
    if-eqz v4, :cond_2f

    .line 1353
    .line 1354
    const/4 v4, 0x1

    .line 1355
    if-ne v3, v4, :cond_2e

    .line 1356
    .line 1357
    goto :goto_18

    .line 1358
    :cond_2e
    const/4 v4, 0x0

    .line 1359
    :goto_18
    if-eqz v4, :cond_2f

    .line 1360
    .line 1361
    const/4 v3, 0x5

    .line 1362
    invoke-virtual {v1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getCenterFreeformBounds()Landroid/graphics/Rect;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v18

    .line 1366
    const/16 v16, 0x0

    .line 1367
    .line 1368
    const/16 v19, 0x0

    .line 1369
    .line 1370
    move-object v14, v2

    .line 1371
    move-object v15, v1

    .line 1372
    move/from16 v17, v3

    .line 1373
    .line 1374
    invoke-virtual/range {v14 .. v19}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;IILandroid/graphics/Rect;I)V

    .line 1375
    .line 1376
    .line 1377
    :cond_2f
    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 1378
    .line 1379
    invoke-virtual {v2, v1, v4, v3}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->initForTaskOnly(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;Landroid/graphics/Rect;I)V

    .line 1380
    .line 1381
    .line 1382
    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 1383
    .line 1384
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1385
    .line 1386
    .line 1387
    :cond_30
    iget-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 1388
    .line 1389
    new-instance v2, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;

    .line 1390
    .line 1391
    const/4 v3, 0x0

    .line 1392
    invoke-direct {v2, v5, v3}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v3

    .line 1399
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v4

    .line 1403
    new-instance v5, Lcom/android/wm/shell/naturalswitching/DragTargetView$5;

    .line 1404
    .line 1405
    invoke-direct {v5, v1, v3, v2}, Lcom/android/wm/shell/naturalswitching/DragTargetView$5;-><init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1409
    .line 1410
    .line 1411
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    .line 1412
    .line 1413
    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 1414
    .line 1415
    const/16 v3, 0x6c

    .line 1416
    .line 1417
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 1418
    .line 1419
    .line 1420
    move-result v3

    .line 1421
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 1422
    .line 1423
    .line 1424
    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mContext:Landroid/content/Context;

    .line 1425
    .line 1426
    const-string v2, "audio"

    .line 1427
    .line 1428
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v1

    .line 1432
    check-cast v1, Landroid/media/AudioManager;

    .line 1433
    .line 1434
    if-nez v1, :cond_31

    .line 1435
    .line 1436
    const-string v1, "Couldn\'t get audio manager"

    .line 1437
    .line 1438
    invoke-static {v8, v1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    .line 1440
    .line 1441
    goto :goto_19

    .line 1442
    :cond_31
    const/16 v2, 0x6a

    .line 1443
    .line 1444
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1445
    .line 1446
    .line 1447
    :goto_19
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    .line 1448
    .line 1449
    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mCancelButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 1450
    .line 1451
    if-eqz v1, :cond_32

    .line 1452
    .line 1453
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 1454
    .line 1455
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DismissButtonManager;->show()V

    .line 1456
    .line 1457
    .line 1458
    :cond_32
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    .line 1459
    .line 1460
    move-object/from16 v1, p1

    .line 1461
    .line 1462
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->update(Landroid/view/MotionEvent;)V

    .line 1463
    .line 1464
    .line 1465
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
