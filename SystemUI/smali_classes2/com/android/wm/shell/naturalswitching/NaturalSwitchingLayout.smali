.class public final Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG_DEV:Z

.field public static final DEBUG_PIP:Z


# instance fields
.field public final mBinder:Landroid/os/Binder;

.field public mCancelButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

.field public final mContext:Landroid/content/Context;

.field public final mDownPoint:Landroid/graphics/Point;

.field public mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

.field public final mHandler:Landroid/os/Handler;

.field public mHasDropped:Z

.field public mHideRequested:Z

.field public final mHideRunnable:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;

.field public final mHideTasks:Ljava/util/ArrayList;

.field public mIsMwHandlerType:Z

.field public mIsPipNaturalSwitching:Z

.field public mLastChanger:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;

.field public final mMovePoint:Landroid/graphics/Point;

.field public final mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;

.field public mNaturalSwitchingMode:I

.field public mNaturalSwitchingStartReported:Z

.field public mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

.field public mNsWindowingMode:I

.field public mPassedInitialSlop:Z

.field public mReadyToStart:Z

.field public final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mStatusBarManager:Landroid/app/StatusBarManager;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

.field public final mTouchGap:Landroid/graphics/Point;

.field public mTouchSlop:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.debug.ns.dev"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->DEBUG_DEV:Z

    .line 10
    .line 11
    const-string/jumbo v0, "persist.debug.ns.pip"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sput-boolean v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->DEBUG_PIP:Z

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingStartReported:Z

    .line 8
    .line 9
    new-instance v0, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideRunnable:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    new-instance v0, Landroid/os/Binder;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mBinder:Landroid/os/Binder;

    .line 34
    .line 35
    new-instance v0, Landroid/graphics/Point;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDownPoint:Landroid/graphics/Point;

    .line 41
    .line 42
    new-instance v0, Landroid/graphics/Point;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mMovePoint:Landroid/graphics/Point;

    .line 48
    .line 49
    new-instance v0, Landroid/graphics/Point;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTouchGap:Landroid/graphics/Point;

    .line 55
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideTasks:Ljava/util/ArrayList;

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mLastChanger:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 69
    .line 70
    iput-object p4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 71
    .line 72
    iput-object p5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 73
    .line 74
    const-string/jumbo p2, "statusbar"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Landroid/app/StatusBarManager;

    .line 82
    .line 83
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 84
    .line 85
    new-instance p2, Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 86
    .line 87
    invoke-direct {p2, p1}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 91
    .line 92
    new-instance p1, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;

    .line 93
    .line 94
    invoke-direct {p1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;

    .line 98
    .line 99
    new-instance p1, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$1;

    .line 100
    .line 101
    invoke-direct {p1, p0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$1;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p3, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public static getNaturalSwitchingWindowingMode(II)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_4

    .line 6
    .line 7
    const/4 v1, 0x5

    .line 8
    if-eq p0, v1, :cond_3

    .line 9
    .line 10
    const/4 v1, 0x6

    .line 11
    if-eq p0, v1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    and-int/lit8 p0, p1, 0x1

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x3

    .line 20
    return p0

    .line 21
    :cond_1
    and-int/lit8 p0, p1, 0x2

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    return v1

    .line 27
    :cond_2
    and-int/lit8 p0, p1, 0x4

    .line 28
    .line 29
    if-eqz p0, :cond_4

    .line 30
    .line 31
    const/16 p0, 0xc

    .line 32
    .line 33
    return p0

    .line 34
    :cond_3
    return v1

    .line 35
    :cond_4
    return v0
.end method

.method public static isFloating(I)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    const/4 v0, 0x5

    .line 11
    if-ne p0, v0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v1, 0x0

    .line 15
    :goto_0
    return v1
.end method


# virtual methods
.method public final hide(Z)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "hide: callers="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    const-string v2, "NaturalSwitchingLayout"

    .line 10
    .line 11
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideRunnable:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideRequested:Z

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideTasks:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v6, 0x0

    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    .line 37
    .line 38
    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v7, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;

    .line 42
    .line 43
    invoke-direct {v7, v5, v6}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 53
    .line 54
    .line 55
    :goto_0
    if-eqz p1, :cond_2

    .line 56
    .line 57
    const-wide/16 v4, 0x1388

    .line 58
    .line 59
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    .line 61
    .line 62
    new-array p1, v1, [F

    .line 63
    .line 64
    fill-array-data p1, :array_0

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda2;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$2;

    .line 80
    .line 81
    invoke-direct {v0, p0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$2;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideRequested:Z

    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 95
    .line 96
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mWm:Landroid/view/WindowManager;

    .line 97
    .line 98
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 102
    .line 103
    iput-boolean p1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mIsDragEndCalled:Z

    .line 104
    .line 105
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mWm:Landroid/view/WindowManager;

    .line 106
    .line 107
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 111
    .line 112
    invoke-virtual {v0, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 113
    .line 114
    .line 115
    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingStartReported:Z

    .line 116
    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    const-string v0, "finishNaturalSwitchingIfNeeded"

    .line 120
    .line 121
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    iput-boolean v6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingStartReported:Z

    .line 125
    .line 126
    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    .line 127
    .line 128
    if-ne v0, p1, :cond_3

    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 131
    .line 132
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_3

    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setDividerVisibilityFromNS(Z)V

    .line 141
    .line 142
    .line 143
    :cond_3
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->finishNaturalSwitching()V

    .line 148
    .line 149
    .line 150
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mCancelButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 151
    .line 152
    if-eqz p1, :cond_5

    .line 153
    .line 154
    new-instance v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;

    .line 155
    .line 156
    const/4 v1, 0x3

    .line 157
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DismissButtonManager;->hide(Ljava/lang/Runnable;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 165
    .line 166
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 167
    .line 168
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mOnDrawListener:Lcom/android/wm/shell/naturalswitching/NonDragTargetView$$ExternalSyntheticLambda0;

    .line 177
    .line 178
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 179
    .line 180
    .line 181
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 182
    .line 183
    return-void

    .line 184
    nop

    .line 185
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{WindowingMode="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", NsMode="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", dragToken="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string/jumbo p0, "}"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public final update(Landroid/view/MotionEvent;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v0, "NaturalSwitchingLayout"

    .line 8
    .line 9
    const-string v1, "drag target view is already null."

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    float-to-int v1, v1

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    float-to-int v2, v2

    .line 25
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mCancelButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    new-instance v4, Landroid/graphics/Rect;

    .line 30
    .line 31
    invoke-direct {v4, v1, v2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v3, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/DismissButtonView;->updateView(Landroid/graphics/Rect;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDownPoint:Landroid/graphics/Point;

    .line 40
    .line 41
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 42
    .line 43
    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTouchGap:Landroid/graphics/Point;

    .line 44
    .line 45
    const/4 v6, -0x1

    .line 46
    const/4 v7, 0x2

    .line 47
    const/4 v8, 0x0

    .line 48
    if-ne v4, v6, :cond_7

    .line 49
    .line 50
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 51
    .line 52
    .line 53
    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 54
    .line 55
    iget-boolean v9, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mIsMwHandlerType:Z

    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 61
    .line 62
    if-eqz v10, :cond_2

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isPipNaturalSwitching()Z

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    if-eqz v10, :cond_2

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    if-eqz v9, :cond_3

    .line 72
    .line 73
    iget v9, v3, Landroid/graphics/Point;->x:I

    .line 74
    .line 75
    iget-object v10, v4, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHandlerPosition:Landroid/graphics/Point;

    .line 76
    .line 77
    iget v10, v10, Landroid/graphics/Point;->x:I

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    iget v9, v3, Landroid/graphics/Point;->x:I

    .line 81
    .line 82
    iget-object v10, v4, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    .line 83
    .line 84
    iget v11, v10, Landroid/graphics/Rect;->left:I

    .line 85
    .line 86
    if-ge v9, v11, :cond_4

    .line 87
    .line 88
    sub-int/2addr v11, v9

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 91
    .line 92
    if-le v9, v10, :cond_5

    .line 93
    .line 94
    :goto_0
    sub-int v11, v9, v10

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    move v11, v8

    .line 98
    :goto_1
    iget v9, v3, Landroid/graphics/Point;->y:I

    .line 99
    .line 100
    iget-object v10, v4, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHandlerPosition:Landroid/graphics/Point;

    .line 101
    .line 102
    iget v10, v10, Landroid/graphics/Point;->y:I

    .line 103
    .line 104
    sub-int/2addr v9, v10

    .line 105
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    const/16 v12, 0x64

    .line 110
    .line 111
    if-ge v10, v12, :cond_6

    .line 112
    .line 113
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    if-ge v10, v12, :cond_6

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    new-array v10, v7, [F

    .line 121
    .line 122
    fill-array-data v10, :array_0

    .line 123
    .line 124
    .line 125
    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    new-instance v12, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;

    .line 130
    .line 131
    invoke-direct {v12, v4, v5, v11, v9}, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;Landroid/graphics/Point;II)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v10, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 135
    .line 136
    .line 137
    const-wide/16 v11, 0x64

    .line 138
    .line 139
    invoke-virtual {v10, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    .line 143
    .line 144
    .line 145
    :cond_7
    :goto_2
    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mMovePoint:Landroid/graphics/Point;

    .line 146
    .line 147
    iget v9, v3, Landroid/graphics/Point;->x:I

    .line 148
    .line 149
    sub-int v9, v1, v9

    .line 150
    .line 151
    iget v10, v5, Landroid/graphics/Point;->x:I

    .line 152
    .line 153
    add-int/2addr v9, v10

    .line 154
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 155
    .line 156
    sub-int v3, v2, v3

    .line 157
    .line 158
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 159
    .line 160
    add-int/2addr v3, v5

    .line 161
    invoke-virtual {v4, v9, v3}, Landroid/graphics/Point;->set(II)V

    .line 162
    .line 163
    .line 164
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 165
    .line 166
    iget-object v5, v3, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 167
    .line 168
    iget v9, v4, Landroid/graphics/Point;->x:I

    .line 169
    .line 170
    int-to-float v9, v9

    .line 171
    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 172
    .line 173
    .line 174
    iget-object v5, v3, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 175
    .line 176
    iget v9, v4, Landroid/graphics/Point;->y:I

    .line 177
    .line 178
    int-to-float v9, v9

    .line 179
    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    .line 183
    .line 184
    .line 185
    iget v3, v4, Landroid/graphics/Point;->x:I

    .line 186
    .line 187
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    iget v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTouchSlop:I

    .line 192
    .line 193
    const/4 v9, 0x1

    .line 194
    if-gt v3, v5, :cond_9

    .line 195
    .line 196
    iget v3, v4, Landroid/graphics/Point;->y:I

    .line 197
    .line 198
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    iget v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTouchSlop:I

    .line 203
    .line 204
    if-le v3, v4, :cond_8

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_8
    move v3, v8

    .line 208
    goto :goto_4

    .line 209
    :cond_9
    :goto_3
    move v3, v9

    .line 210
    :goto_4
    iget-boolean v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mPassedInitialSlop:Z

    .line 211
    .line 212
    const/4 v5, 0x4

    .line 213
    iget-object v10, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 214
    .line 215
    if-nez v4, :cond_10

    .line 216
    .line 217
    iget-boolean v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mReadyToStart:Z

    .line 218
    .line 219
    if-eqz v4, :cond_10

    .line 220
    .line 221
    if-nez v3, :cond_a

    .line 222
    .line 223
    const/16 v3, 0xd

    .line 224
    .line 225
    invoke-virtual {v10, v3}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-eqz v3, :cond_10

    .line 230
    .line 231
    :cond_a
    iput-boolean v9, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mPassedInitialSlop:Z

    .line 232
    .line 233
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 234
    .line 235
    invoke-virtual {v3}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->adjustDragTargetViewBoundsIfNeeded()V

    .line 236
    .line 237
    .line 238
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 239
    .line 240
    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 241
    .line 242
    invoke-virtual {v4}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->getMinimumDragTargetViewBounds()Landroid/graphics/Rect;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->initPushRegion(Landroid/graphics/Rect;)V

    .line 247
    .line 248
    .line 249
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 250
    .line 251
    invoke-virtual {v3}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isFloatingDragTarget()Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-nez v3, :cond_10

    .line 256
    .line 257
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 258
    .line 259
    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 260
    .line 261
    invoke-virtual {v4}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->getDropSide()I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    iput-boolean v9, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsInitialExpanded:Z

    .line 266
    .line 267
    iget-object v11, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 268
    .line 269
    invoke-virtual {v11}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    .line 270
    .line 271
    .line 272
    move-result v11

    .line 273
    if-eqz v11, :cond_e

    .line 274
    .line 275
    iget v11, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 276
    .line 277
    invoke-virtual {v3, v11}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isQuarter(I)Z

    .line 278
    .line 279
    .line 280
    move-result v11

    .line 281
    if-eqz v11, :cond_e

    .line 282
    .line 283
    iget-object v11, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 284
    .line 285
    iget v12, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mQuarterTarget:I

    .line 286
    .line 287
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    check-cast v11, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 292
    .line 293
    if-eqz v11, :cond_10

    .line 294
    .line 295
    new-instance v12, Landroid/graphics/Rect;

    .line 296
    .line 297
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 298
    .line 299
    .line 300
    iget-object v13, v11, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    .line 301
    .line 302
    if-eqz v13, :cond_b

    .line 303
    .line 304
    iget-object v13, v11, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 305
    .line 306
    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 307
    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_b
    invoke-virtual {v11, v12}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->getCurrentLayoutBounds(Landroid/graphics/Rect;)V

    .line 311
    .line 312
    .line 313
    :goto_5
    iget-object v13, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 314
    .line 315
    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    .line 316
    .line 317
    .line 318
    move-result v13

    .line 319
    if-nez v13, :cond_c

    .line 320
    .line 321
    iget-object v13, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 322
    .line 323
    iget v14, v13, Landroid/graphics/Rect;->left:I

    .line 324
    .line 325
    iput v14, v12, Landroid/graphics/Rect;->left:I

    .line 326
    .line 327
    iget v13, v13, Landroid/graphics/Rect;->right:I

    .line 328
    .line 329
    iput v13, v12, Landroid/graphics/Rect;->right:I

    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_c
    iget-object v13, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 333
    .line 334
    iget v14, v13, Landroid/graphics/Rect;->top:I

    .line 335
    .line 336
    iput v14, v12, Landroid/graphics/Rect;->top:I

    .line 337
    .line 338
    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    .line 339
    .line 340
    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    .line 341
    .line 342
    :goto_6
    if-ne v4, v9, :cond_d

    .line 343
    .line 344
    invoke-virtual {v11, v12}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    .line 345
    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_d
    iput-object v11, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 349
    .line 350
    :goto_7
    iget-object v3, v11, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    .line 351
    .line 352
    invoke-virtual {v3, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 353
    .line 354
    .line 355
    goto :goto_9

    .line 356
    :cond_e
    iget-object v11, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 357
    .line 358
    invoke-virtual {v11, v5}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    .line 359
    .line 360
    .line 361
    move-result v11

    .line 362
    if-eqz v11, :cond_10

    .line 363
    .line 364
    iget-object v11, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 365
    .line 366
    iget v12, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 367
    .line 368
    invoke-virtual {v3, v12, v8}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getReverseWindowingMode(IZ)I

    .line 369
    .line 370
    .line 371
    move-result v12

    .line 372
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v11

    .line 376
    check-cast v11, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 377
    .line 378
    if-eqz v11, :cond_10

    .line 379
    .line 380
    if-ne v4, v9, :cond_f

    .line 381
    .line 382
    iget-object v4, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 383
    .line 384
    invoke-virtual {v11, v4}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    .line 385
    .line 386
    .line 387
    goto :goto_8

    .line 388
    :cond_f
    iput-object v11, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 389
    .line 390
    :goto_8
    iget-object v4, v11, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    .line 391
    .line 392
    iget-object v3, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    .line 393
    .line 394
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 395
    .line 396
    .line 397
    :cond_10
    :goto_9
    iget-boolean v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mPassedInitialSlop:Z

    .line 398
    .line 399
    if-eqz v3, :cond_43

    .line 400
    .line 401
    iget v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    .line 402
    .line 403
    if-ne v3, v9, :cond_3e

    .line 404
    .line 405
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 406
    .line 407
    invoke-virtual {v3}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->getDropSide()I

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 412
    .line 413
    iget v11, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    .line 414
    .line 415
    iget-object v12, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 416
    .line 417
    iget-object v13, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 418
    .line 419
    invoke-virtual {v13}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    .line 420
    .line 421
    .line 422
    move-result v13

    .line 423
    const/4 v14, 0x3

    .line 424
    if-nez v13, :cond_12

    .line 425
    .line 426
    iget-object v13, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 427
    .line 428
    invoke-virtual {v13}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    .line 429
    .line 430
    .line 431
    move-result v13

    .line 432
    if-eqz v13, :cond_11

    .line 433
    .line 434
    iget-boolean v13, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsFloatingDragTarget:Z

    .line 435
    .line 436
    if-eqz v13, :cond_11

    .line 437
    .line 438
    goto :goto_a

    .line 439
    :cond_11
    move v7, v5

    .line 440
    goto/16 :goto_11

    .line 441
    .line 442
    :cond_12
    :goto_a
    move v13, v8

    .line 443
    :goto_b
    iget-object v15, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    .line 444
    .line 445
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    .line 446
    .line 447
    .line 448
    move-result v15

    .line 449
    if-ge v13, v15, :cond_14

    .line 450
    .line 451
    iget-object v15, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    .line 452
    .line 453
    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v15

    .line 457
    check-cast v15, Landroid/graphics/Rect;

    .line 458
    .line 459
    if-eqz v15, :cond_13

    .line 460
    .line 461
    invoke-virtual {v15, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    .line 462
    .line 463
    .line 464
    move-result v15

    .line 465
    if-eqz v15, :cond_13

    .line 466
    .line 467
    iget-object v15, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    .line 468
    .line 469
    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->keyAt(I)I

    .line 470
    .line 471
    .line 472
    move-result v13

    .line 473
    goto :goto_c

    .line 474
    :cond_13
    add-int/lit8 v13, v13, 0x1

    .line 475
    .line 476
    goto :goto_b

    .line 477
    :cond_14
    move v13, v8

    .line 478
    :goto_c
    iget v15, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegion:I

    .line 479
    .line 480
    if-eq v15, v13, :cond_1e

    .line 481
    .line 482
    iput v13, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegion:I

    .line 483
    .line 484
    if-eqz v13, :cond_11

    .line 485
    .line 486
    iput-boolean v9, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushed:Z

    .line 487
    .line 488
    iget-object v1, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 489
    .line 490
    const/4 v2, 0x0

    .line 491
    if-eqz v1, :cond_15

    .line 492
    .line 493
    iput-object v2, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 494
    .line 495
    :cond_15
    iget-object v1, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 496
    .line 497
    if-eqz v1, :cond_16

    .line 498
    .line 499
    iput-object v2, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 500
    .line 501
    :cond_16
    iget-object v1, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 502
    .line 503
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    move v2, v8

    .line 508
    :goto_d
    if-ge v2, v1, :cond_1d

    .line 509
    .line 510
    iget-object v13, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    .line 511
    .line 512
    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v13

    .line 516
    check-cast v13, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 517
    .line 518
    iget-object v15, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    .line 519
    .line 520
    invoke-virtual {v15, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    new-instance v15, Landroid/graphics/Rect;

    .line 524
    .line 525
    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 526
    .line 527
    .line 528
    iget-object v6, v13, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    .line 529
    .line 530
    invoke-virtual {v15, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 531
    .line 532
    .line 533
    iget v6, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 534
    .line 535
    iget v8, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    .line 536
    .line 537
    if-ne v6, v8, :cond_17

    .line 538
    .line 539
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    .line 540
    .line 541
    .line 542
    move-result v6

    .line 543
    goto :goto_e

    .line 544
    :cond_17
    iget-object v6, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 545
    .line 546
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 547
    .line 548
    .line 549
    move-result v6

    .line 550
    iget v8, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDividerSize:I

    .line 551
    .line 552
    sub-int/2addr v6, v8

    .line 553
    div-int/2addr v6, v7

    .line 554
    :goto_e
    iget v8, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    .line 555
    .line 556
    iget v5, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    .line 557
    .line 558
    if-ne v8, v5, :cond_18

    .line 559
    .line 560
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    .line 561
    .line 562
    .line 563
    move-result v5

    .line 564
    goto :goto_f

    .line 565
    :cond_18
    iget-object v5, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 566
    .line 567
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 568
    .line 569
    .line 570
    move-result v5

    .line 571
    iget v8, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDividerSize:I

    .line 572
    .line 573
    sub-int/2addr v5, v8

    .line 574
    div-int/2addr v5, v7

    .line 575
    :goto_f
    iget v8, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegion:I

    .line 576
    .line 577
    if-eq v8, v9, :cond_1c

    .line 578
    .line 579
    if-eq v8, v7, :cond_1b

    .line 580
    .line 581
    if-eq v8, v14, :cond_1a

    .line 582
    .line 583
    const/4 v7, 0x4

    .line 584
    if-eq v8, v7, :cond_19

    .line 585
    .line 586
    goto :goto_10

    .line 587
    :cond_19
    iget-object v6, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 588
    .line 589
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 590
    .line 591
    iput v8, v15, Landroid/graphics/Rect;->top:I

    .line 592
    .line 593
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 594
    .line 595
    add-int/2addr v6, v5

    .line 596
    iput v6, v15, Landroid/graphics/Rect;->bottom:I

    .line 597
    .line 598
    goto :goto_10

    .line 599
    :cond_1a
    const/4 v7, 0x4

    .line 600
    iget-object v5, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 601
    .line 602
    iget v8, v5, Landroid/graphics/Rect;->left:I

    .line 603
    .line 604
    iput v8, v15, Landroid/graphics/Rect;->left:I

    .line 605
    .line 606
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 607
    .line 608
    add-int/2addr v5, v6

    .line 609
    iput v5, v15, Landroid/graphics/Rect;->right:I

    .line 610
    .line 611
    goto :goto_10

    .line 612
    :cond_1b
    const/4 v7, 0x4

    .line 613
    iget-object v6, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 614
    .line 615
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 616
    .line 617
    sub-int v5, v6, v5

    .line 618
    .line 619
    iput v5, v15, Landroid/graphics/Rect;->top:I

    .line 620
    .line 621
    iput v6, v15, Landroid/graphics/Rect;->bottom:I

    .line 622
    .line 623
    goto :goto_10

    .line 624
    :cond_1c
    const/4 v7, 0x4

    .line 625
    iget-object v5, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 626
    .line 627
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 628
    .line 629
    sub-int v6, v5, v6

    .line 630
    .line 631
    iput v6, v15, Landroid/graphics/Rect;->left:I

    .line 632
    .line 633
    iput v5, v15, Landroid/graphics/Rect;->right:I

    .line 634
    .line 635
    :goto_10
    invoke-virtual {v13, v15}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    .line 636
    .line 637
    .line 638
    add-int/lit8 v2, v2, 0x1

    .line 639
    .line 640
    move v5, v7

    .line 641
    const/4 v6, -0x1

    .line 642
    const/4 v7, 0x2

    .line 643
    const/4 v8, 0x0

    .line 644
    goto/16 :goto_d

    .line 645
    .line 646
    :cond_1d
    move v7, v5

    .line 647
    goto/16 :goto_15

    .line 648
    .line 649
    :cond_1e
    move v7, v5

    .line 650
    if-eqz v13, :cond_1f

    .line 651
    .line 652
    goto/16 :goto_15

    .line 653
    .line 654
    :cond_1f
    :goto_11
    iget v5, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    .line 655
    .line 656
    if-eq v5, v3, :cond_24

    .line 657
    .line 658
    iput v3, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    .line 659
    .line 660
    iget-object v5, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 661
    .line 662
    invoke-virtual {v5}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    .line 663
    .line 664
    .line 665
    move-result v5

    .line 666
    if-eqz v5, :cond_20

    .line 667
    .line 668
    iget-object v5, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 669
    .line 670
    if-eqz v5, :cond_20

    .line 671
    .line 672
    iget v5, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    .line 673
    .line 674
    if-eq v5, v9, :cond_20

    .line 675
    .line 676
    goto :goto_15

    .line 677
    :cond_20
    if-eq v3, v9, :cond_23

    .line 678
    .line 679
    const/16 v5, 0x20

    .line 680
    .line 681
    if-ne v3, v5, :cond_21

    .line 682
    .line 683
    goto :goto_12

    .line 684
    :cond_21
    iget-boolean v5, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsInitialExpanded:Z

    .line 685
    .line 686
    if-eqz v5, :cond_22

    .line 687
    .line 688
    const/4 v5, 0x0

    .line 689
    iput-boolean v5, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsInitialExpanded:Z

    .line 690
    .line 691
    goto :goto_13

    .line 692
    :cond_22
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->swapOrShrinkNonTarget(III)V

    .line 693
    .line 694
    .line 695
    goto :goto_13

    .line 696
    :cond_23
    :goto_12
    invoke-virtual {v4}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->undoNonTarget()V

    .line 697
    .line 698
    .line 699
    goto :goto_13

    .line 700
    :cond_24
    if-eq v3, v9, :cond_25

    .line 701
    .line 702
    invoke-virtual {v4, v1, v2}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getTargetUnderPoint(II)Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 703
    .line 704
    .line 705
    move-result-object v5

    .line 706
    if-eqz v5, :cond_26

    .line 707
    .line 708
    iget-object v6, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 709
    .line 710
    if-eq v5, v6, :cond_26

    .line 711
    .line 712
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->swapOrShrinkNonTarget(III)V

    .line 713
    .line 714
    .line 715
    goto :goto_13

    .line 716
    :cond_25
    iget-boolean v1, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushed:Z

    .line 717
    .line 718
    if-eqz v1, :cond_26

    .line 719
    .line 720
    if-ne v3, v9, :cond_26

    .line 721
    .line 722
    const/4 v1, 0x0

    .line 723
    iput-boolean v1, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushed:Z

    .line 724
    .line 725
    :cond_26
    :goto_13
    iget-boolean v1, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushed:Z

    .line 726
    .line 727
    if-nez v1, :cond_27

    .line 728
    .line 729
    :goto_14
    iget-object v1, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    .line 730
    .line 731
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 732
    .line 733
    .line 734
    move-result v1

    .line 735
    if-nez v1, :cond_27

    .line 736
    .line 737
    iget-object v1, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    .line 738
    .line 739
    const/4 v2, 0x0

    .line 740
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    check-cast v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 745
    .line 746
    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    .line 747
    .line 748
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    .line 749
    .line 750
    .line 751
    iget-object v2, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    .line 752
    .line 753
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 754
    .line 755
    .line 756
    goto :goto_14

    .line 757
    :cond_27
    :goto_15
    iget v1, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    .line 758
    .line 759
    if-ne v11, v1, :cond_29

    .line 760
    .line 761
    iget-object v1, v4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 762
    .line 763
    if-eq v12, v1, :cond_28

    .line 764
    .line 765
    goto :goto_16

    .line 766
    :cond_28
    const/4 v5, 0x0

    .line 767
    goto :goto_17

    .line 768
    :cond_29
    :goto_16
    move v5, v9

    .line 769
    :goto_17
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 770
    .line 771
    iget v1, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegion:I

    .line 772
    .line 773
    if-eqz v1, :cond_2a

    .line 774
    .line 775
    move v2, v9

    .line 776
    goto :goto_18

    .line 777
    :cond_2a
    const/4 v2, 0x0

    .line 778
    :goto_18
    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;

    .line 779
    .line 780
    if-eqz v2, :cond_2b

    .line 781
    .line 782
    invoke-virtual {v4, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->updateForPush(I)V

    .line 783
    .line 784
    .line 785
    goto/16 :goto_22

    .line 786
    .line 787
    :cond_2b
    invoke-virtual {v10}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    .line 788
    .line 789
    .line 790
    move-result v1

    .line 791
    if-eqz v1, :cond_39

    .line 792
    .line 793
    iget v1, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 794
    .line 795
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 796
    .line 797
    iget-object v6, v2, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 798
    .line 799
    iget-object v2, v2, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 800
    .line 801
    if-eqz v2, :cond_2c

    .line 802
    .line 803
    iget v2, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    .line 804
    .line 805
    goto :goto_19

    .line 806
    :cond_2c
    const/4 v2, 0x0

    .line 807
    :goto_19
    iget-object v8, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 808
    .line 809
    invoke-virtual {v8}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->getCurrentDragTargetRect()Landroid/graphics/Rect;

    .line 810
    .line 811
    .line 812
    move-result-object v8

    .line 813
    if-eqz v6, :cond_2d

    .line 814
    .line 815
    iget v10, v6, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    .line 816
    .line 817
    goto :goto_1a

    .line 818
    :cond_2d
    const/4 v10, 0x0

    .line 819
    :goto_1a
    if-eqz v2, :cond_2e

    .line 820
    .line 821
    const/4 v11, 0x0

    .line 822
    iput v11, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSwapWindowingMode:I

    .line 823
    .line 824
    invoke-virtual {v4, v3, v2, v9}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->update(IIZ)V

    .line 825
    .line 826
    .line 827
    goto/16 :goto_1e

    .line 828
    .line 829
    :cond_2e
    const/4 v11, 0x0

    .line 830
    iput v11, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mShrunkWindowingMode:I

    .line 831
    .line 832
    iget v2, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDropSide:I

    .line 833
    .line 834
    if-ne v2, v3, :cond_2f

    .line 835
    .line 836
    iget v2, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSwapWindowingMode:I

    .line 837
    .line 838
    if-ne v2, v10, :cond_2f

    .line 839
    .line 840
    if-eqz v10, :cond_2f

    .line 841
    .line 842
    goto/16 :goto_1e

    .line 843
    .line 844
    :cond_2f
    invoke-virtual {v4, v11}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->updateForPush(I)V

    .line 845
    .line 846
    .line 847
    iput v10, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSwapWindowingMode:I

    .line 848
    .line 849
    iput v3, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDropSide:I

    .line 850
    .line 851
    iget v2, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    .line 852
    .line 853
    const/16 v3, 0xc

    .line 854
    .line 855
    if-eq v2, v3, :cond_30

    .line 856
    .line 857
    if-ne v10, v3, :cond_31

    .line 858
    .line 859
    :cond_30
    iput-boolean v9, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mNeedToReparentCell:Z

    .line 860
    .line 861
    :cond_31
    const/4 v9, -0x1

    .line 862
    iput v9, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    .line 863
    .line 864
    if-nez v10, :cond_38

    .line 865
    .line 866
    iget v6, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mHalfTarget:I

    .line 867
    .line 868
    const/4 v9, 0x5

    .line 869
    if-ne v2, v6, :cond_36

    .line 870
    .line 871
    iget-object v2, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 872
    .line 873
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    .line 874
    .line 875
    .line 876
    move-result-object v2

    .line 877
    iget-object v3, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 878
    .line 879
    iget v6, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    .line 880
    .line 881
    if-ne v6, v14, :cond_32

    .line 882
    .line 883
    move v14, v7

    .line 884
    :cond_32
    invoke-virtual {v3, v14}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    .line 885
    .line 886
    .line 887
    move-result-object v3

    .line 888
    invoke-static {v8, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 889
    .line 890
    .line 891
    move-result v2

    .line 892
    if-nez v2, :cond_34

    .line 893
    .line 894
    invoke-static {v8, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 895
    .line 896
    .line 897
    move-result v2

    .line 898
    if-eqz v2, :cond_33

    .line 899
    .line 900
    goto :goto_1b

    .line 901
    :cond_33
    iget v2, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    .line 902
    .line 903
    iput v2, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 904
    .line 905
    goto :goto_1e

    .line 906
    :cond_34
    :goto_1b
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 907
    .line 908
    if-eqz v2, :cond_35

    .line 909
    .line 910
    iget v2, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    .line 911
    .line 912
    const/4 v3, 0x2

    .line 913
    if-ne v2, v3, :cond_35

    .line 914
    .line 915
    const/4 v7, 0x2

    .line 916
    goto :goto_1c

    .line 917
    :cond_35
    move v7, v9

    .line 918
    :goto_1c
    iput v7, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 919
    .line 920
    goto :goto_1e

    .line 921
    :cond_36
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 922
    .line 923
    if-eqz v3, :cond_37

    .line 924
    .line 925
    const/4 v3, 0x2

    .line 926
    if-ne v2, v3, :cond_37

    .line 927
    .line 928
    const/4 v7, 0x2

    .line 929
    goto :goto_1d

    .line 930
    :cond_37
    move v7, v9

    .line 931
    :goto_1d
    iput v7, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 932
    .line 933
    goto :goto_1e

    .line 934
    :cond_38
    iput v10, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 935
    .line 936
    iget v2, v6, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mStagePosition:I

    .line 937
    .line 938
    iput v2, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    .line 939
    .line 940
    :goto_1e
    iget v2, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 941
    .line 942
    if-eq v1, v2, :cond_3d

    .line 943
    .line 944
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 945
    .line 946
    invoke-virtual {v1}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->adjustDragTargetViewBoundsIfNeeded()V

    .line 947
    .line 948
    .line 949
    goto :goto_22

    .line 950
    :cond_39
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 951
    .line 952
    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 953
    .line 954
    if-eqz v2, :cond_3a

    .line 955
    .line 956
    iget v6, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    .line 957
    .line 958
    goto :goto_1f

    .line 959
    :cond_3a
    const/4 v6, 0x0

    .line 960
    :goto_1f
    if-nez v2, :cond_3b

    .line 961
    .line 962
    const/4 v8, 0x0

    .line 963
    goto :goto_21

    .line 964
    :cond_3b
    new-instance v2, Landroid/graphics/Rect;

    .line 965
    .line 966
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 967
    .line 968
    .line 969
    iget-object v7, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 970
    .line 971
    iget-object v8, v7, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    .line 972
    .line 973
    if-eqz v8, :cond_3c

    .line 974
    .line 975
    iget-object v7, v7, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 976
    .line 977
    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 978
    .line 979
    .line 980
    goto :goto_20

    .line 981
    :cond_3c
    invoke-virtual {v7, v2}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->getCurrentLayoutBounds(Landroid/graphics/Rect;)V

    .line 982
    .line 983
    .line 984
    :goto_20
    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 985
    .line 986
    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    .line 987
    .line 988
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 989
    .line 990
    .line 991
    move-result v1

    .line 992
    xor-int/lit8 v8, v1, 0x1

    .line 993
    .line 994
    :goto_21
    invoke-virtual {v4, v3, v6, v8}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->update(IIZ)V

    .line 995
    .line 996
    .line 997
    :cond_3d
    :goto_22
    move v8, v5

    .line 998
    goto :goto_23

    .line 999
    :cond_3e
    move v4, v7

    .line 1000
    if-ne v3, v4, :cond_42

    .line 1001
    .line 1002
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 1003
    .line 1004
    invoke-virtual {v3, v1, v2}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getTargetUnderPoint(II)Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v1

    .line 1008
    iget-object v2, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 1009
    .line 1010
    if-eq v2, v1, :cond_42

    .line 1011
    .line 1012
    if-eqz v1, :cond_3f

    .line 1013
    .line 1014
    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 1015
    .line 1016
    if-eqz v2, :cond_3f

    .line 1017
    .line 1018
    const/4 v4, 0x0

    .line 1019
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1020
    .line 1021
    .line 1022
    :cond_3f
    iget-object v2, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 1023
    .line 1024
    if-eqz v2, :cond_40

    .line 1025
    .line 1026
    iget-object v2, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 1027
    .line 1028
    if-eqz v2, :cond_40

    .line 1029
    .line 1030
    const/16 v4, 0x8

    .line 1031
    .line 1032
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    .line 1034
    .line 1035
    :cond_40
    sget-boolean v2, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->DEBUG_DEV:Z

    .line 1036
    .line 1037
    if-eqz v2, :cond_41

    .line 1038
    .line 1039
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1040
    .line 1041
    const-string v4, "handleDropTargets: new="

    .line 1042
    .line 1043
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1047
    .line 1048
    .line 1049
    const-string v4, ", old="

    .line 1050
    .line 1051
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    .line 1054
    iget-object v4, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 1055
    .line 1056
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v2

    .line 1063
    const-string v4, "NonDragTargetView"

    .line 1064
    .line 1065
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    .line 1067
    .line 1068
    :cond_41
    iput-object v1, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 1069
    .line 1070
    move v8, v9

    .line 1071
    goto :goto_23

    .line 1072
    :cond_42
    const/4 v4, 0x0

    .line 1073
    move v8, v4

    .line 1074
    :goto_23
    if-eqz v8, :cond_43

    .line 1075
    .line 1076
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 1077
    .line 1078
    const/16 v1, 0x29

    .line 1079
    .line 1080
    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 1081
    .line 1082
    .line 1083
    move-result v1

    .line 1084
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 1085
    .line 1086
    .line 1087
    :cond_43
    return-void

    .line 1088
    nop

    .line 1089
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
