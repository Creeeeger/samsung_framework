.class public final Lcom/android/wm/shell/draganddrop/DropTargetLayout;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/IDragLayout;


# instance fields
.field public final mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

.field public mCurrentDensityDpi:I

.field public mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

.field public mDensityChanged:Z

.field public mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

.field public mDragSurface:Landroid/view/SurfaceControl;

.field public final mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

.field public mFirstDropTargetShown:Z

.field public mHasDragSourceTask:Z

.field public mHasDrawable:Z

.field public mHasDropped:Z

.field public mIsShowing:Z

.field public final mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

.field public final mStatusBarManager:Landroid/app/StatusBarManager;

.field public final mTmpOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mTmpOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDensityChanged:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDragSourceTask:Z

    .line 18
    .line 19
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 20
    .line 21
    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 25
    .line 26
    const p2, 0x7f0d00e0

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    const p2, 0x7f0a0380

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->createDismissButtonView()V

    .line 44
    .line 45
    .line 46
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 47
    .line 48
    const p2, 0x7f0a036d

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Lcom/android/wm/shell/draganddrop/DragAppIcon;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    .line 58
    .line 59
    const-string/jumbo p2, "statusbar"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/app/StatusBarManager;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 79
    .line 80
    iput p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentDensityDpi:I

    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public final createDismissButtonView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0d00d0

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/wm/shell/common/DismissButtonView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DismissButtonView;->setDismissType(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 26
    .line 27
    iput-boolean v1, v0, Lcom/android/wm/shell/common/DismissButtonView;->mFocusChangeHapticDisabled:Z

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final hide(Ljava/lang/Runnable;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsShowing:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 5
    .line 6
    iget-boolean v2, v1, Lcom/android/wm/shell/common/DismissButtonView;->mVisible:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-boolean v0, v1, Lcom/android/wm/shell/common/DismissButtonView;->mVisible:Z

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->updateNavigationBarVisibility(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 25
    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDragSurface:Landroid/view/SurfaceControl;

    .line 47
    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 51
    .line 52
    invoke-virtual {v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDragSurface:Landroid/view/SurfaceControl;

    .line 61
    .line 62
    :cond_2
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 65
    .line 66
    .line 67
    :cond_3
    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 68
    .line 69
    return-void
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->recomputeDropTargets()Z

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentDensityDpi:I

    .line 5
    .line 6
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 7
    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDensityChanged:Z

    .line 14
    .line 15
    return-void
.end method

.method public final prepare(Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;Lcom/android/internal/logging/InstanceId;Landroid/view/SurfaceControl;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 2
    .line 3
    iput-object p3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 4
    .line 5
    new-instance p3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 8
    .line 9
    iget-object v5, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    move-object v3, p1

    .line 13
    move-object v4, p2

    .line 14
    move-object v6, p5

    .line 15
    move-object v7, p6

    .line 16
    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;-><init>(Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V

    .line 17
    .line 18
    .line 19
    iput-object p3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 20
    .line 21
    iget-object p1, p3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mInitialDragData:Landroid/content/ClipData;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 24
    .line 25
    .line 26
    move-result-object p5

    .line 27
    invoke-virtual {p5}, Landroid/content/ClipDescription;->isDragFromRecent()Z

    .line 28
    .line 29
    .line 30
    move-result p5

    .line 31
    iput-boolean p5, p3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->isDragFromRecent:Z

    .line 32
    .line 33
    const/4 p6, -0x1

    .line 34
    const/4 v1, 0x0

    .line 35
    if-eqz p5, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 38
    .line 39
    .line 40
    move-result-object p5

    .line 41
    invoke-virtual {p5}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    move-result-object p5

    .line 45
    if-eqz p5, :cond_0

    .line 46
    .line 47
    const-string v2, "android.intent.extra.DND_RECENT_TOP_TASK_ID"

    .line 48
    .line 49
    invoke-virtual {p5, v2, p6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result p5

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move p5, p6

    .line 55
    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Landroid/content/ClipDescription;->getDragSourceTaskId()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iget-boolean v3, p3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->isDragFromRecent:Z

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    if-eq p5, p6, :cond_3

    .line 68
    .line 69
    const v2, 0x7fffffff

    .line 70
    .line 71
    .line 72
    iget-object v3, p3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 73
    .line 74
    invoke-virtual {v3, v2, v1}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 93
    .line 94
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 95
    .line 96
    if-ne v4, p5, :cond_1

    .line 97
    .line 98
    invoke-static {v3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object p5

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    sget-object p5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {p3, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->getNonFloatingTopTask(I)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object p5

    .line 110
    :goto_1
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_4

    .line 115
    .line 116
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p5

    .line 120
    check-cast p5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 121
    .line 122
    invoke-virtual {p5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 123
    .line 124
    .line 125
    iget v2, p5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 126
    .line 127
    iput v2, p3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskActType:I

    .line 128
    .line 129
    iget-boolean p5, p5, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    .line 130
    .line 131
    iput-boolean p5, p3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskSupportsSplitScreen:Z

    .line 132
    .line 133
    :cond_4
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 134
    .line 135
    .line 136
    move-result-object p5

    .line 137
    invoke-virtual {p5}, Landroid/content/ClipData$Item;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 138
    .line 139
    .line 140
    move-result-object p5

    .line 141
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    .line 142
    .line 143
    const/4 v3, 0x1

    .line 144
    if-nez v2, :cond_5

    .line 145
    .line 146
    iput-boolean v1, p3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragItemSupportsSplitscreen:Z

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_5
    iget-object v2, p3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 150
    .line 151
    if-eqz v2, :cond_7

    .line 152
    .line 153
    iget-object p5, v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    .line 154
    .line 155
    if-eqz p5, :cond_6

    .line 156
    .line 157
    invoke-interface {p5}, Lcom/android/wm/shell/draganddrop/AppResult;->hasResizableResolveInfo()Z

    .line 158
    .line 159
    .line 160
    move-result p5

    .line 161
    if-eqz p5, :cond_6

    .line 162
    .line 163
    move p5, v3

    .line 164
    goto :goto_2

    .line 165
    :cond_6
    move p5, v1

    .line 166
    :goto_2
    iput-boolean p5, p3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragItemSupportsSplitscreen:Z

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_7
    if-eqz p5, :cond_9

    .line 170
    .line 171
    iget p5, p5, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 172
    .line 173
    invoke-static {p5}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    .line 174
    .line 175
    .line 176
    move-result p5

    .line 177
    if-eqz p5, :cond_8

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_8
    move p5, v1

    .line 181
    goto :goto_4

    .line 182
    :cond_9
    :goto_3
    move p5, v3

    .line 183
    :goto_4
    iput-boolean p5, p3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragItemSupportsSplitscreen:Z

    .line 184
    .line 185
    :goto_5
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iput-object p1, p3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragData:Landroid/content/Intent;

    .line 194
    .line 195
    iget-object p1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 196
    .line 197
    iget-object p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragData:Landroid/content/Intent;

    .line 198
    .line 199
    const/4 p3, 0x0

    .line 200
    if-nez p1, :cond_a

    .line 201
    .line 202
    move-object p1, p3

    .line 203
    goto :goto_6

    .line 204
    :cond_a
    const-string p5, "DISALLOW_HIT_REGION"

    .line 205
    .line 206
    invoke-virtual {p1, p5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    check-cast p1, Landroid/graphics/RectF;

    .line 211
    .line 212
    :goto_6
    iget-object p5, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDisallowHitRegion:Landroid/graphics/RectF;

    .line 213
    .line 214
    if-nez p1, :cond_b

    .line 215
    .line 216
    invoke-virtual {p5}, Landroid/graphics/RectF;->setEmpty()V

    .line 217
    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_b
    invoke-virtual {p5, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 221
    .line 222
    .line 223
    :goto_7
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDropped:Z

    .line 224
    .line 225
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 226
    .line 227
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDrawable:Z

    .line 228
    .line 229
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mFirstDropTargetShown:Z

    .line 230
    .line 231
    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDragSurface:Landroid/view/SurfaceControl;

    .line 232
    .line 233
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p1}, Landroid/content/ClipDescription;->getDragSourceTaskId()I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eq p1, p6, :cond_c

    .line 242
    .line 243
    move v1, v3

    .line 244
    :cond_c
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDragSourceTask:Z

    .line 245
    .line 246
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_DND_SA_LOGGING:Z

    .line 247
    .line 248
    if-eqz p1, :cond_d

    .line 249
    .line 250
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 251
    .line 252
    invoke-virtual {p2}, Landroid/content/ClipData;->getCallingPackageName()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mCallingPackageName:Ljava/lang/String;

    .line 257
    .line 258
    :cond_d
    return-void
.end method

.method public final recomputeDropTargets()Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsShowing:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 17
    .line 18
    const/4 v9, 0x1

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    goto/16 :goto_14

    .line 22
    .line 23
    :cond_1
    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 24
    .line 25
    iget v4, v3, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 26
    .line 27
    iget v3, v3, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 28
    .line 29
    new-instance v5, Landroid/graphics/Rect;

    .line 30
    .line 31
    invoke-direct {v5, v2, v2, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 32
    .line 33
    .line 34
    new-instance v3, Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-direct {v3, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 42
    .line 43
    .line 44
    iget-object v6, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 45
    .line 46
    iget-object v7, v6, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mVisibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    .line 47
    .line 48
    if-nez v7, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object v6, v6, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 52
    .line 53
    if-eqz v6, :cond_4

    .line 54
    .line 55
    iget-object v6, v6, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    .line 56
    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    invoke-interface {v6, v7}, Lcom/android/wm/shell/draganddrop/AppResult;->isAlreadyRunningSingleInstanceTask(Lcom/android/wm/shell/draganddrop/VisibleTasks;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_3

    .line 64
    .line 65
    move v6, v9

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move v6, v2

    .line 68
    :goto_0
    if-eqz v6, :cond_4

    .line 69
    .line 70
    move v6, v9

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    :goto_1
    move v6, v2

    .line 73
    :goto_2
    iget-object v11, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    if-eqz v6, :cond_a

    .line 76
    .line 77
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 78
    .line 79
    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 80
    .line 81
    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    .line 82
    .line 83
    if-eqz v3, :cond_5

    .line 84
    .line 85
    invoke-interface {v3}, Lcom/android/wm/shell/draganddrop/AppResult;->getDragAppApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    const/4 v3, 0x0

    .line 91
    :goto_3
    if-eqz v3, :cond_6

    .line 92
    .line 93
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    goto :goto_4

    .line 102
    :cond_6
    const/4 v10, 0x0

    .line 103
    :goto_4
    if-eqz v3, :cond_8

    .line 104
    .line 105
    if-nez v10, :cond_7

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_7
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    const v5, 0x7f1304d1

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    goto :goto_6

    .line 128
    :cond_8
    :goto_5
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    const v4, 0x7f1304d2

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    :goto_6
    iget-object v4, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mToast:Landroid/widget/Toast;

    .line 140
    .line 141
    if-eqz v4, :cond_9

    .line 142
    .line 143
    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 144
    .line 145
    .line 146
    :cond_9
    invoke-static {v11, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    iput-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mToast:Landroid/widget/Toast;

    .line 151
    .line 152
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_14

    .line 156
    .line 157
    :cond_a
    iget-object v6, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 158
    .line 159
    iget-boolean v7, v6, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragItemSupportsSplitscreen:Z

    .line 160
    .line 161
    if-nez v7, :cond_b

    .line 162
    .line 163
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 164
    .line 165
    invoke-direct {v0, v2, v4, v3, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    goto/16 :goto_14

    .line 172
    .line 173
    :cond_b
    iget-object v7, v6, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 174
    .line 175
    const/4 v12, 0x5

    .line 176
    if-eqz v7, :cond_d

    .line 177
    .line 178
    iget-object v7, v7, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    .line 179
    .line 180
    if-eqz v7, :cond_c

    .line 181
    .line 182
    iget-object v6, v6, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mVisibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    .line 183
    .line 184
    invoke-interface {v7, v6}, Lcom/android/wm/shell/draganddrop/AppResult;->hasResolveInfoInFullscreenOnly(Lcom/android/wm/shell/draganddrop/VisibleTasks;)Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-eqz v6, :cond_c

    .line 189
    .line 190
    move v6, v9

    .line 191
    goto :goto_7

    .line 192
    :cond_c
    move v6, v2

    .line 193
    :goto_7
    if-nez v6, :cond_f

    .line 194
    .line 195
    :cond_d
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NOT_SUPPORT_FOR_COVER_DISPLAY:Z

    .line 196
    .line 197
    if-eqz v6, :cond_10

    .line 198
    .line 199
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    iget v6, v6, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 208
    .line 209
    if-ne v6, v12, :cond_e

    .line 210
    .line 211
    move v6, v9

    .line 212
    goto :goto_8

    .line 213
    :cond_e
    move v6, v2

    .line 214
    :goto_8
    if-eqz v6, :cond_10

    .line 215
    .line 216
    :cond_f
    move v6, v9

    .line 217
    goto :goto_9

    .line 218
    :cond_10
    move v6, v2

    .line 219
    :goto_9
    if-eqz v6, :cond_11

    .line 220
    .line 221
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 222
    .line 223
    invoke-direct {v0, v2, v4, v3, v9}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    goto/16 :goto_14

    .line 230
    .line 231
    :cond_11
    iget-object v6, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 232
    .line 233
    iget-object v6, v6, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 234
    .line 235
    iget v7, v6, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 236
    .line 237
    iget v6, v6, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 238
    .line 239
    if-le v7, v6, :cond_12

    .line 240
    .line 241
    move v6, v9

    .line 242
    goto :goto_a

    .line 243
    :cond_12
    move v6, v2

    .line 244
    :goto_a
    iget-object v13, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 245
    .line 246
    if-eqz v13, :cond_13

    .line 247
    .line 248
    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    if-eqz v7, :cond_13

    .line 253
    .line 254
    move v7, v9

    .line 255
    goto :goto_b

    .line 256
    :cond_13
    move v7, v2

    .line 257
    :goto_b
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    const v14, 0x7f071227

    .line 262
    .line 263
    .line 264
    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 265
    .line 266
    .line 267
    move-result v8

    .line 268
    int-to-float v8, v8

    .line 269
    const/4 v14, 0x2

    .line 270
    if-eqz v13, :cond_14

    .line 271
    .line 272
    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 273
    .line 274
    .line 275
    move-result v15

    .line 276
    if-eqz v15, :cond_14

    .line 277
    .line 278
    goto :goto_c

    .line 279
    :cond_14
    iget-object v15, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 280
    .line 281
    iget-boolean v10, v15, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskSupportsSplitScreen:Z

    .line 282
    .line 283
    if-nez v10, :cond_15

    .line 284
    .line 285
    goto :goto_d

    .line 286
    :cond_15
    iget-boolean v10, v15, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->isDragFromRecent:Z

    .line 287
    .line 288
    if-eqz v10, :cond_16

    .line 289
    .line 290
    goto :goto_c

    .line 291
    :cond_16
    iget v10, v15, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskActType:I

    .line 292
    .line 293
    if-ne v10, v14, :cond_17

    .line 294
    .line 295
    goto :goto_c

    .line 296
    :cond_17
    if-ne v10, v9, :cond_18

    .line 297
    .line 298
    :goto_c
    move v10, v9

    .line 299
    goto :goto_e

    .line 300
    :cond_18
    :goto_d
    move v10, v2

    .line 301
    :goto_e
    if-eqz v10, :cond_23

    .line 302
    .line 303
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_DND_MULTI_SPLIT_DROP_TARGET:Z

    .line 304
    .line 305
    if-eqz v3, :cond_19

    .line 306
    .line 307
    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->supportMultiSplitDropTarget()Z

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    if-eqz v3, :cond_19

    .line 312
    .line 313
    move v3, v14

    .line 314
    goto :goto_f

    .line 315
    :cond_19
    move v3, v9

    .line 316
    :goto_f
    iget-object v4, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDropTargetProviders:Landroid/util/SparseArray;

    .line 317
    .line 318
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    check-cast v3, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;

    .line 323
    .line 324
    move-object v4, v5

    .line 325
    move v5, v6

    .line 326
    move v6, v7

    .line 327
    move v7, v8

    .line 328
    move-object v8, v1

    .line 329
    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->addSplitTargets(Landroid/graphics/Rect;ZZFLjava/util/ArrayList;)V

    .line 330
    .line 331
    .line 332
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 333
    .line 334
    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 335
    .line 336
    if-eqz v3, :cond_1b

    .line 337
    .line 338
    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    .line 339
    .line 340
    if-eqz v3, :cond_1a

    .line 341
    .line 342
    invoke-interface {v3}, Lcom/android/wm/shell/draganddrop/AppResult;->getDragAppApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    goto :goto_10

    .line 347
    :cond_1a
    const/4 v3, 0x0

    .line 348
    :goto_10
    if-eqz v3, :cond_1b

    .line 349
    .line 350
    iget-object v10, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 351
    .line 352
    goto :goto_11

    .line 353
    :cond_1b
    const/4 v10, 0x0

    .line 354
    :goto_11
    if-eqz v10, :cond_24

    .line 355
    .line 356
    if-eqz v13, :cond_24

    .line 357
    .line 358
    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    if-eqz v3, :cond_24

    .line 363
    .line 364
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    :cond_1c
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    if-eqz v4, :cond_24

    .line 373
    .line 374
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    check-cast v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 379
    .line 380
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 381
    .line 382
    if-eqz v5, :cond_1d

    .line 383
    .line 384
    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMultiSplitScreenVisible()Z

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    if-nez v5, :cond_1d

    .line 389
    .line 390
    invoke-virtual {v4}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isMultiSplit()Z

    .line 391
    .line 392
    .line 393
    move-result v5

    .line 394
    if-eqz v5, :cond_1d

    .line 395
    .line 396
    goto :goto_12

    .line 397
    :cond_1d
    invoke-virtual {v4}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isMultiSplit()Z

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    if-eqz v5, :cond_1e

    .line 402
    .line 403
    invoke-virtual {v4}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->convertTypeToCellStagePosition()I

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    goto :goto_13

    .line 408
    :cond_1e
    iget v5, v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    .line 409
    .line 410
    if-eq v5, v9, :cond_22

    .line 411
    .line 412
    if-eq v5, v14, :cond_21

    .line 413
    .line 414
    const/4 v6, 0x3

    .line 415
    if-eq v5, v6, :cond_20

    .line 416
    .line 417
    const/4 v6, 0x4

    .line 418
    if-eq v5, v6, :cond_1f

    .line 419
    .line 420
    move v5, v2

    .line 421
    goto :goto_13

    .line 422
    :cond_1f
    const/16 v5, 0x40

    .line 423
    .line 424
    goto :goto_13

    .line 425
    :cond_20
    const/16 v5, 0x20

    .line 426
    .line 427
    goto :goto_13

    .line 428
    :cond_21
    const/16 v5, 0x10

    .line 429
    .line 430
    goto :goto_13

    .line 431
    :cond_22
    const/16 v5, 0x8

    .line 432
    .line 433
    :goto_13
    invoke-virtual {v13, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTopRunningTaskInfoByPosition(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    if-eqz v5, :cond_1c

    .line 438
    .line 439
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 440
    .line 441
    if-eqz v5, :cond_1c

    .line 442
    .line 443
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v5

    .line 451
    if-eqz v5, :cond_1c

    .line 452
    .line 453
    iput-boolean v9, v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->alreadyRun:Z

    .line 454
    .line 455
    goto :goto_12

    .line 456
    :cond_23
    new-instance v5, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 457
    .line 458
    invoke-direct {v5, v2, v4, v3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    :cond_24
    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getCenterFreeformBounds()Landroid/graphics/Rect;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getCenterFreeformBounds()Landroid/graphics/Rect;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    const v5, 0x7f0702e5

    .line 477
    .line 478
    .line 479
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 480
    .line 481
    .line 482
    move-result v4

    .line 483
    neg-int v4, v4

    .line 484
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 485
    .line 486
    .line 487
    new-instance v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 488
    .line 489
    invoke-direct {v4, v12, v0, v3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    :goto_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    xor-int/2addr v0, v9

    .line 500
    :goto_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    if-ge v2, v3, :cond_25

    .line 505
    .line 506
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    check-cast v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 511
    .line 512
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 513
    .line 514
    const-string v5, "Add target: %s"

    .line 515
    .line 516
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v3

    .line 520
    invoke-static {v4, v5, v3}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    .line 522
    .line 523
    add-int/lit8 v2, v2, 0x1

    .line 524
    .line 525
    goto :goto_15

    .line 526
    :cond_25
    return v0
.end method

.method public final show()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsShowing:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->recomputeDropTargets()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->updateNavigationBarVisibility(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDensityChanged:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDensityChanged:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 29
    .line 30
    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentDensityDpi:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->createDismissButtonView()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final update(Landroid/view/DragEvent;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    float-to-int v1, v1

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    float-to-int v2, v2

    .line 13
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 14
    .line 15
    new-instance v4, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-direct {v4, v1, v2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/DismissButtonView;->updateView(Landroid/graphics/Rect;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 24
    .line 25
    iget-boolean v1, v1, Lcom/android/wm/shell/common/DismissButtonView;->mIsEnterDismissButton:Z

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto/16 :goto_8

    .line 31
    .line 32
    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    float-to-int v3, v3

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    float-to-int v4, v4

    .line 44
    iget-object v5, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDisallowHitRegion:Landroid/graphics/RectF;

    .line 45
    .line 46
    int-to-float v6, v3

    .line 47
    int-to-float v7, v4

    .line 48
    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    goto/16 :goto_8

    .line 55
    .line 56
    :cond_1
    iget-object v5, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    add-int/lit8 v8, v8, -0x1

    .line 63
    .line 64
    :goto_0
    if-ltz v8, :cond_e

    .line 65
    .line 66
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    check-cast v9, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 71
    .line 72
    iget-object v10, v9, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->hitRegion:Landroid/graphics/Rect;

    .line 73
    .line 74
    if-eqz v10, :cond_2

    .line 75
    .line 76
    invoke-virtual {v10, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    move/from16 v17, v3

    .line 81
    .line 82
    goto/16 :goto_4

    .line 83
    .line 84
    :cond_2
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_DND_MULTI_SPLIT_DROP_TARGET:Z

    .line 85
    .line 86
    if-eqz v10, :cond_8

    .line 87
    .line 88
    iget-object v10, v9, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->polygon:Ljava/util/List;

    .line 89
    .line 90
    if-eqz v10, :cond_8

    .line 91
    .line 92
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    if-lt v11, v2, :cond_8

    .line 97
    .line 98
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    add-int/lit8 v11, v2, -0x1

    .line 103
    .line 104
    const/4 v12, 0x0

    .line 105
    const/4 v13, 0x0

    .line 106
    move/from16 v18, v12

    .line 107
    .line 108
    move v12, v11

    .line 109
    move/from16 v11, v18

    .line 110
    .line 111
    :goto_1
    if-ge v11, v2, :cond_7

    .line 112
    .line 113
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v14

    .line 117
    check-cast v14, Landroid/graphics/PointF;

    .line 118
    .line 119
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    check-cast v12, Landroid/graphics/PointF;

    .line 124
    .line 125
    iget v15, v14, Landroid/graphics/PointF;->y:F

    .line 126
    .line 127
    cmpg-float v16, v15, v7

    .line 128
    .line 129
    if-gez v16, :cond_3

    .line 130
    .line 131
    move/from16 v16, v2

    .line 132
    .line 133
    iget v2, v12, Landroid/graphics/PointF;->y:F

    .line 134
    .line 135
    cmpl-float v2, v2, v7

    .line 136
    .line 137
    if-gez v2, :cond_4

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_3
    move/from16 v16, v2

    .line 141
    .line 142
    :goto_2
    iget v2, v12, Landroid/graphics/PointF;->y:F

    .line 143
    .line 144
    cmpg-float v2, v2, v7

    .line 145
    .line 146
    if-gez v2, :cond_5

    .line 147
    .line 148
    cmpl-float v2, v15, v7

    .line 149
    .line 150
    if-ltz v2, :cond_5

    .line 151
    .line 152
    :cond_4
    iget v2, v14, Landroid/graphics/PointF;->x:F

    .line 153
    .line 154
    sub-float v14, v7, v15

    .line 155
    .line 156
    move/from16 v17, v3

    .line 157
    .line 158
    iget v3, v12, Landroid/graphics/PointF;->y:F

    .line 159
    .line 160
    sub-float/2addr v3, v15

    .line 161
    div-float/2addr v14, v3

    .line 162
    iget v3, v12, Landroid/graphics/PointF;->x:F

    .line 163
    .line 164
    invoke-static {v3, v2, v14, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    cmpg-float v2, v2, v6

    .line 169
    .line 170
    if-gtz v2, :cond_6

    .line 171
    .line 172
    xor-int/lit8 v13, v13, 0x1

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_5
    move/from16 v17, v3

    .line 176
    .line 177
    :cond_6
    :goto_3
    add-int/lit8 v2, v11, 0x1

    .line 178
    .line 179
    move v12, v11

    .line 180
    move/from16 v3, v17

    .line 181
    .line 182
    move v11, v2

    .line 183
    move/from16 v2, v16

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_7
    move/from16 v17, v3

    .line 187
    .line 188
    move v2, v13

    .line 189
    goto :goto_4

    .line 190
    :cond_8
    move/from16 v17, v3

    .line 191
    .line 192
    const/4 v2, 0x0

    .line 193
    :goto_4
    if-eqz v2, :cond_d

    .line 194
    .line 195
    iget-object v2, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 196
    .line 197
    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 198
    .line 199
    if-eqz v3, :cond_c

    .line 200
    .line 201
    iget-object v10, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    .line 202
    .line 203
    if-nez v10, :cond_9

    .line 204
    .line 205
    const/4 v2, 0x0

    .line 206
    goto :goto_5

    .line 207
    :cond_9
    iget-object v10, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableAppMap:Ljava/util/Map;

    .line 208
    .line 209
    iget v11, v9, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    .line 210
    .line 211
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v12

    .line 215
    check-cast v10, Ljava/util/HashMap;

    .line 216
    .line 217
    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v12

    .line 221
    if-eqz v12, :cond_a

    .line 222
    .line 223
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    check-cast v2, Ljava/util/Optional;

    .line 232
    .line 233
    const/4 v3, 0x0

    .line 234
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    check-cast v2, Lcom/android/wm/shell/draganddrop/AppInfo;

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_a
    iget-object v12, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    .line 242
    .line 243
    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mContext:Landroid/content/Context;

    .line 244
    .line 245
    iget-object v2, v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mVisibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    .line 246
    .line 247
    invoke-interface {v12, v3, v11, v2}, Lcom/android/wm/shell/draganddrop/AppResult;->makeExecutableApp(Landroid/content/Context;ILcom/android/wm/shell/draganddrop/VisibleTasks;)Lcom/android/wm/shell/draganddrop/AppInfo;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 256
    .line 257
    .line 258
    move-result-object v11

    .line 259
    invoke-virtual {v10, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    :goto_5
    if-eqz v2, :cond_b

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_b
    const/4 v2, 0x0

    .line 266
    goto :goto_7

    .line 267
    :cond_c
    :goto_6
    const/4 v2, 0x1

    .line 268
    :goto_7
    if-eqz v2, :cond_d

    .line 269
    .line 270
    goto :goto_9

    .line 271
    :cond_d
    add-int/lit8 v8, v8, -0x1

    .line 272
    .line 273
    const/4 v2, 0x4

    .line 274
    move/from16 v3, v17

    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :cond_e
    :goto_8
    const/4 v9, 0x0

    .line 279
    :goto_9
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 280
    .line 281
    if-nez v1, :cond_f

    .line 282
    .line 283
    if-nez v9, :cond_10

    .line 284
    .line 285
    :cond_f
    if-eqz v1, :cond_27

    .line 286
    .line 287
    invoke-virtual {v1, v9}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-nez v1, :cond_27

    .line 292
    .line 293
    :cond_10
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 294
    .line 295
    const-string v2, "Current target: %s"

    .line 296
    .line 297
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-static {v1, v2, v3}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    if-nez v9, :cond_12

    .line 305
    .line 306
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 307
    .line 308
    iget-boolean v1, v1, Lcom/android/wm/shell/common/DismissButtonView;->mIsEnterDismissButton:Z

    .line 309
    .line 310
    if-eqz v1, :cond_11

    .line 311
    .line 312
    goto :goto_a

    .line 313
    :cond_11
    const/4 v1, 0x0

    .line 314
    goto :goto_b

    .line 315
    :cond_12
    :goto_a
    const/4 v1, 0x1

    .line 316
    :goto_b
    if-eqz v1, :cond_14

    .line 317
    .line 318
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 319
    .line 320
    iget-boolean v2, v1, Lcom/android/wm/shell/common/DismissButtonView;->mVisible:Z

    .line 321
    .line 322
    if-eqz v2, :cond_13

    .line 323
    .line 324
    goto :goto_c

    .line 325
    :cond_13
    const/4 v2, 0x1

    .line 326
    iput-boolean v2, v1, Lcom/android/wm/shell/common/DismissButtonView;->mVisible:Z

    .line 327
    .line 328
    iget-object v2, v1, Lcom/android/wm/shell/common/DismissButtonView;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 329
    .line 330
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 331
    .line 332
    .line 333
    goto :goto_c

    .line 334
    :cond_14
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 335
    .line 336
    iget-boolean v2, v1, Lcom/android/wm/shell/common/DismissButtonView;->mVisible:Z

    .line 337
    .line 338
    if-nez v2, :cond_15

    .line 339
    .line 340
    goto :goto_c

    .line 341
    :cond_15
    const/4 v2, 0x0

    .line 342
    iput-boolean v2, v1, Lcom/android/wm/shell/common/DismissButtonView;->mVisible:Z

    .line 343
    .line 344
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 345
    .line 346
    .line 347
    const/4 v2, 0x4

    .line 348
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 349
    .line 350
    .line 351
    :goto_c
    const-string/jumbo v1, "scaleY"

    .line 352
    .line 353
    .line 354
    const-string/jumbo v2, "scaleX"

    .line 355
    .line 356
    .line 357
    const-string v3, "alpha"

    .line 358
    .line 359
    const-wide/16 v4, 0xc8

    .line 360
    .line 361
    const/16 v6, 0x7d

    .line 362
    .line 363
    const/16 v7, 0x50

    .line 364
    .line 365
    const/4 v8, 0x2

    .line 366
    if-nez v9, :cond_1a

    .line 367
    .line 368
    iget-object v10, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 369
    .line 370
    iget-object v11, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 371
    .line 372
    if-nez v11, :cond_17

    .line 373
    .line 374
    new-instance v11, Landroid/animation/AnimatorSet;

    .line 375
    .line 376
    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 377
    .line 378
    .line 379
    iput-object v11, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 380
    .line 381
    new-array v11, v8, [F

    .line 382
    .line 383
    fill-array-data v11, :array_0

    .line 384
    .line 385
    .line 386
    invoke-static {v10, v3, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 387
    .line 388
    .line 389
    move-result-object v11

    .line 390
    const-wide/16 v12, 0x96

    .line 391
    .line 392
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 393
    .line 394
    .line 395
    sget-object v14, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 396
    .line 397
    invoke-virtual {v11, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 398
    .line 399
    .line 400
    iget-object v14, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    .line 401
    .line 402
    new-array v15, v8, [F

    .line 403
    .line 404
    fill-array-data v15, :array_1

    .line 405
    .line 406
    .line 407
    invoke-static {v14, v3, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    invoke-virtual {v3, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 412
    .line 413
    .line 414
    sget-object v14, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 415
    .line 416
    invoke-virtual {v3, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 417
    .line 418
    .line 419
    new-array v14, v8, [I

    .line 420
    .line 421
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_REAL_TIME_BLUR:Z

    .line 422
    .line 423
    if-eqz v15, :cond_16

    .line 424
    .line 425
    goto :goto_d

    .line 426
    :cond_16
    move v6, v7

    .line 427
    :goto_d
    const/4 v7, 0x0

    .line 428
    aput v6, v14, v7

    .line 429
    .line 430
    const/4 v6, 0x1

    .line 431
    aput v7, v14, v6

    .line 432
    .line 433
    invoke-static {v14}, Landroid/animation/ObjectAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 434
    .line 435
    .line 436
    move-result-object v6

    .line 437
    invoke-virtual {v6, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 438
    .line 439
    .line 440
    sget-object v4, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 441
    .line 442
    invoke-virtual {v6, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 443
    .line 444
    .line 445
    iget-object v4, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    .line 446
    .line 447
    new-array v5, v8, [F

    .line 448
    .line 449
    fill-array-data v5, :array_2

    .line 450
    .line 451
    .line 452
    invoke-static {v4, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 457
    .line 458
    .line 459
    sget-object v4, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    .line 460
    .line 461
    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 462
    .line 463
    .line 464
    iget-object v4, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    .line 465
    .line 466
    new-array v5, v8, [F

    .line 467
    .line 468
    fill-array-data v5, :array_3

    .line 469
    .line 470
    .line 471
    invoke-static {v4, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {v1, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 476
    .line 477
    .line 478
    sget-object v4, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    .line 479
    .line 480
    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 481
    .line 482
    .line 483
    new-instance v4, Lcom/android/wm/shell/draganddrop/DropTargetView$3;

    .line 484
    .line 485
    invoke-direct {v4, v10}, Lcom/android/wm/shell/draganddrop/DropTargetView$3;-><init>(Lcom/android/wm/shell/draganddrop/DropTargetView;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v11, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 489
    .line 490
    .line 491
    new-instance v4, Lcom/android/wm/shell/draganddrop/DropTargetView$4;

    .line 492
    .line 493
    invoke-direct {v4, v10}, Lcom/android/wm/shell/draganddrop/DropTargetView$4;-><init>(Lcom/android/wm/shell/draganddrop/DropTargetView;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v6, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 497
    .line 498
    .line 499
    iget-object v4, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 500
    .line 501
    filled-new-array {v11, v3, v2, v1, v6}, [Landroid/animation/Animator;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 506
    .line 507
    .line 508
    :cond_17
    iget-object v1, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 509
    .line 510
    if-eqz v1, :cond_18

    .line 511
    .line 512
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 513
    .line 514
    .line 515
    move-result v1

    .line 516
    if-eqz v1, :cond_18

    .line 517
    .line 518
    iget-object v1, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 519
    .line 520
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 521
    .line 522
    .line 523
    :cond_18
    iget-object v1, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 524
    .line 525
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    if-eqz v1, :cond_19

    .line 530
    .line 531
    iget-object v1, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 532
    .line 533
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 534
    .line 535
    .line 536
    :cond_19
    iget-object v1, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 537
    .line 538
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 539
    .line 540
    .line 541
    iget-object v1, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBounds:Landroid/graphics/Rect;

    .line 542
    .line 543
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 544
    .line 545
    .line 546
    goto/16 :goto_11

    .line 547
    .line 548
    :cond_1a
    iget-object v10, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 549
    .line 550
    if-nez v10, :cond_1b

    .line 551
    .line 552
    iget-object v10, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 553
    .line 554
    const/4 v11, 0x0

    .line 555
    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 556
    .line 557
    .line 558
    :cond_1b
    iget-object v10, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mTmpOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    .line 559
    .line 560
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 561
    .line 562
    .line 563
    iget v11, v9, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    .line 564
    .line 565
    const/4 v12, 0x5

    .line 566
    if-ne v11, v12, :cond_1c

    .line 567
    .line 568
    const/4 v12, 0x1

    .line 569
    goto :goto_e

    .line 570
    :cond_1c
    const/4 v12, 0x0

    .line 571
    :goto_e
    iput-boolean v12, v10, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsFreeform:Z

    .line 572
    .line 573
    if-nez v11, :cond_1d

    .line 574
    .line 575
    const/4 v11, 0x1

    .line 576
    goto :goto_f

    .line 577
    :cond_1d
    const/4 v11, 0x0

    .line 578
    :goto_f
    iput-boolean v11, v10, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsFullscreen:Z

    .line 579
    .line 580
    iget-boolean v11, v9, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isResizable:Z

    .line 581
    .line 582
    iput-boolean v11, v10, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsResizable:Z

    .line 583
    .line 584
    iget-object v10, v10, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mBounds:Landroid/graphics/Rect;

    .line 585
    .line 586
    iget-object v11, v9, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->drawRegion:Landroid/graphics/Rect;

    .line 587
    .line 588
    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 589
    .line 590
    .line 591
    iget-object v10, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 592
    .line 593
    iget-object v12, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mTmpOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    .line 594
    .line 595
    iput-object v12, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mDropOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    .line 596
    .line 597
    iget-boolean v12, v12, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsFreeform:Z

    .line 598
    .line 599
    iput-boolean v12, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    .line 600
    .line 601
    iget-object v12, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBounds:Landroid/graphics/Rect;

    .line 602
    .line 603
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 604
    .line 605
    .line 606
    iget-object v11, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 607
    .line 608
    if-nez v11, :cond_1f

    .line 609
    .line 610
    new-instance v11, Landroid/animation/AnimatorSet;

    .line 611
    .line 612
    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 613
    .line 614
    .line 615
    iput-object v11, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 616
    .line 617
    new-array v11, v8, [F

    .line 618
    .line 619
    fill-array-data v11, :array_4

    .line 620
    .line 621
    .line 622
    invoke-static {v10, v3, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 623
    .line 624
    .line 625
    move-result-object v11

    .line 626
    invoke-virtual {v11, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 627
    .line 628
    .line 629
    sget-object v12, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 630
    .line 631
    invoke-virtual {v11, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 632
    .line 633
    .line 634
    iget-object v12, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    .line 635
    .line 636
    new-array v13, v8, [F

    .line 637
    .line 638
    fill-array-data v13, :array_5

    .line 639
    .line 640
    .line 641
    invoke-static {v12, v3, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 642
    .line 643
    .line 644
    move-result-object v3

    .line 645
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 646
    .line 647
    .line 648
    sget-object v12, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 649
    .line 650
    invoke-virtual {v3, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 651
    .line 652
    .line 653
    new-array v12, v8, [I

    .line 654
    .line 655
    const/4 v13, 0x0

    .line 656
    aput v13, v12, v13

    .line 657
    .line 658
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_REAL_TIME_BLUR:Z

    .line 659
    .line 660
    if-eqz v13, :cond_1e

    .line 661
    .line 662
    goto :goto_10

    .line 663
    :cond_1e
    move v6, v7

    .line 664
    :goto_10
    const/4 v7, 0x1

    .line 665
    aput v6, v12, v7

    .line 666
    .line 667
    invoke-static {v12}, Landroid/animation/ObjectAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 668
    .line 669
    .line 670
    move-result-object v6

    .line 671
    invoke-virtual {v6, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 672
    .line 673
    .line 674
    sget-object v4, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 675
    .line 676
    invoke-virtual {v6, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 677
    .line 678
    .line 679
    iget-object v4, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    .line 680
    .line 681
    new-array v5, v8, [F

    .line 682
    .line 683
    fill-array-data v5, :array_6

    .line 684
    .line 685
    .line 686
    invoke-static {v4, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    const-wide/16 v4, 0x190

    .line 691
    .line 692
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 693
    .line 694
    .line 695
    sget-object v7, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    .line 696
    .line 697
    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 698
    .line 699
    .line 700
    iget-object v7, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    .line 701
    .line 702
    new-array v8, v8, [F

    .line 703
    .line 704
    fill-array-data v8, :array_7

    .line 705
    .line 706
    .line 707
    invoke-static {v7, v1, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 712
    .line 713
    .line 714
    sget-object v4, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    .line 715
    .line 716
    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 717
    .line 718
    .line 719
    new-instance v4, Lcom/android/wm/shell/draganddrop/DropTargetView$1;

    .line 720
    .line 721
    invoke-direct {v4, v10}, Lcom/android/wm/shell/draganddrop/DropTargetView$1;-><init>(Lcom/android/wm/shell/draganddrop/DropTargetView;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v11, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 725
    .line 726
    .line 727
    new-instance v4, Lcom/android/wm/shell/draganddrop/DropTargetView$2;

    .line 728
    .line 729
    invoke-direct {v4, v10}, Lcom/android/wm/shell/draganddrop/DropTargetView$2;-><init>(Lcom/android/wm/shell/draganddrop/DropTargetView;)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v6, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 733
    .line 734
    .line 735
    iget-object v4, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 736
    .line 737
    filled-new-array {v11, v2, v1, v3, v6}, [Landroid/animation/Animator;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 742
    .line 743
    .line 744
    :cond_1f
    iget-object v1, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 745
    .line 746
    if-eqz v1, :cond_20

    .line 747
    .line 748
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 749
    .line 750
    .line 751
    move-result v1

    .line 752
    if-eqz v1, :cond_20

    .line 753
    .line 754
    iget-object v1, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 755
    .line 756
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 757
    .line 758
    .line 759
    :cond_20
    iget-object v1, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 760
    .line 761
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 762
    .line 763
    .line 764
    move-result v1

    .line 765
    if-eqz v1, :cond_21

    .line 766
    .line 767
    iget-object v1, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 768
    .line 769
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 770
    .line 771
    .line 772
    :cond_21
    iget-object v1, v10, Lcom/android/wm/shell/draganddrop/DropTargetView;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 773
    .line 774
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 775
    .line 776
    .line 777
    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWindowVisibility()I

    .line 778
    .line 779
    .line 780
    move-result v1

    .line 781
    if-nez v1, :cond_25

    .line 782
    .line 783
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 784
    .line 785
    if-nez v1, :cond_22

    .line 786
    .line 787
    if-nez v9, :cond_22

    .line 788
    .line 789
    goto :goto_12

    .line 790
    :cond_22
    if-eqz v1, :cond_24

    .line 791
    .line 792
    if-eqz v9, :cond_24

    .line 793
    .line 794
    iget v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    .line 795
    .line 796
    iget v2, v9, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    .line 797
    .line 798
    if-eq v1, v2, :cond_23

    .line 799
    .line 800
    goto :goto_13

    .line 801
    :cond_23
    :goto_12
    const/4 v1, 0x0

    .line 802
    goto :goto_14

    .line 803
    :cond_24
    :goto_13
    const/4 v1, 0x1

    .line 804
    :goto_14
    if-eqz v1, :cond_25

    .line 805
    .line 806
    iget-boolean v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mFirstDropTargetShown:Z

    .line 807
    .line 808
    if-eqz v1, :cond_25

    .line 809
    .line 810
    const/16 v1, 0x29

    .line 811
    .line 812
    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 813
    .line 814
    .line 815
    move-result v1

    .line 816
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 817
    .line 818
    .line 819
    :cond_25
    iget-boolean v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mFirstDropTargetShown:Z

    .line 820
    .line 821
    if-nez v1, :cond_26

    .line 822
    .line 823
    const/4 v1, 0x1

    .line 824
    iput-boolean v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mFirstDropTargetShown:Z

    .line 825
    .line 826
    goto :goto_15

    .line 827
    :cond_26
    const/4 v1, 0x1

    .line 828
    :goto_15
    iput-object v9, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 829
    .line 830
    goto :goto_16

    .line 831
    :cond_27
    const/4 v1, 0x1

    .line 832
    :goto_16
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    .line 833
    .line 834
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    .line 835
    .line 836
    .line 837
    move-result v2

    .line 838
    if-eqz v2, :cond_28

    .line 839
    .line 840
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    .line 841
    .line 842
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    .line 843
    .line 844
    .line 845
    move-result v3

    .line 846
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    .line 847
    .line 848
    .line 849
    move-result v4

    .line 850
    iget v5, v2, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mCenterX:F

    .line 851
    .line 852
    sub-float/2addr v3, v5

    .line 853
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 854
    .line 855
    .line 856
    iget v3, v2, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mCenterY:F

    .line 857
    .line 858
    sub-float/2addr v4, v3

    .line 859
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 860
    .line 861
    .line 862
    const/4 v3, 0x0

    .line 863
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 864
    .line 865
    .line 866
    iget v4, v2, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mCenterX:F

    .line 867
    .line 868
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 869
    .line 870
    .line 871
    iget v4, v2, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mCenterY:F

    .line 872
    .line 873
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 874
    .line 875
    .line 876
    const/4 v4, 0x0

    .line 877
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 878
    .line 879
    .line 880
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 881
    .line 882
    .line 883
    iget-object v4, v2, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mScaleUpAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 884
    .line 885
    const/high16 v5, 0x3f800000    # 1.0f

    .line 886
    .line 887
    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 888
    .line 889
    .line 890
    iget-object v2, v2, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mScaleUpAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 891
    .line 892
    invoke-virtual {v2, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 893
    .line 894
    .line 895
    goto :goto_17

    .line 896
    :cond_28
    const/4 v3, 0x0

    .line 897
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    .line 898
    .line 899
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    .line 900
    .line 901
    .line 902
    move-result v4

    .line 903
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    .line 904
    .line 905
    .line 906
    move-result v5

    .line 907
    iget v6, v2, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mCenterX:F

    .line 908
    .line 909
    sub-float/2addr v4, v6

    .line 910
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 911
    .line 912
    .line 913
    iget v4, v2, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mCenterY:F

    .line 914
    .line 915
    sub-float/2addr v5, v4

    .line 916
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setY(F)V

    .line 917
    .line 918
    .line 919
    :goto_17
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 920
    .line 921
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 922
    .line 923
    const/4 v4, -0x1

    .line 924
    if-eqz v0, :cond_29

    .line 925
    .line 926
    iget v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    .line 927
    .line 928
    goto :goto_18

    .line 929
    :cond_29
    move v0, v4

    .line 930
    :goto_18
    iget-object v5, v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 931
    .line 932
    iget-object v5, v5, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 933
    .line 934
    if-eqz v5, :cond_30

    .line 935
    .line 936
    iget-boolean v6, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mIsMimeType:Z

    .line 937
    .line 938
    if-eqz v6, :cond_2a

    .line 939
    .line 940
    const/4 v0, 0x0

    .line 941
    goto :goto_1b

    .line 942
    :cond_2a
    if-ne v0, v4, :cond_2b

    .line 943
    .line 944
    const/4 v0, 0x0

    .line 945
    const/4 v4, 0x0

    .line 946
    goto :goto_19

    .line 947
    :cond_2b
    iget-object v4, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableAppMap:Ljava/util/Map;

    .line 948
    .line 949
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 950
    .line 951
    .line 952
    move-result-object v0

    .line 953
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 954
    .line 955
    .line 956
    move-result-object v6

    .line 957
    check-cast v4, Ljava/util/HashMap;

    .line 958
    .line 959
    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    check-cast v0, Ljava/util/Optional;

    .line 964
    .line 965
    const/4 v4, 0x0

    .line 966
    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    move-result-object v0

    .line 970
    check-cast v0, Lcom/android/wm/shell/draganddrop/AppInfo;

    .line 971
    .line 972
    :goto_19
    iget-object v6, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    .line 973
    .line 974
    if-eq v6, v0, :cond_2c

    .line 975
    .line 976
    iput-object v0, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    .line 977
    .line 978
    iget-object v6, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallbacks:Ljava/util/List;

    .line 979
    .line 980
    monitor-enter v6

    .line 981
    :try_start_0
    iget-object v0, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallbacks:Ljava/util/List;

    .line 982
    .line 983
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 984
    .line 985
    .line 986
    move-result-object v0

    .line 987
    new-instance v7, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;

    .line 988
    .line 989
    invoke-direct {v7, v5}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;)V

    .line 990
    .line 991
    .line 992
    invoke-interface {v0, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 993
    .line 994
    .line 995
    monitor-exit v6

    .line 996
    goto :goto_1a

    .line 997
    :catchall_0
    move-exception v0

    .line 998
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    throw v0

    .line 1000
    :cond_2c
    :goto_1a
    move-object v0, v4

    .line 1001
    :goto_1b
    iget-object v2, v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 1002
    .line 1003
    iget-object v4, v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 1004
    .line 1005
    if-eqz v4, :cond_30

    .line 1006
    .line 1007
    iget-object v5, v4, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    .line 1008
    .line 1009
    if-eqz v5, :cond_2d

    .line 1010
    .line 1011
    move v5, v1

    .line 1012
    goto :goto_1c

    .line 1013
    :cond_2d
    move v5, v3

    .line 1014
    :goto_1c
    if-eqz v5, :cond_30

    .line 1015
    .line 1016
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v5

    .line 1020
    new-instance v6, Landroid/content/Intent;

    .line 1021
    .line 1022
    iget-object v7, v4, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    .line 1023
    .line 1024
    if-eqz v7, :cond_2e

    .line 1025
    .line 1026
    iget-object v0, v7, Lcom/android/wm/shell/draganddrop/AppInfo;->mIntent:Landroid/content/Intent;

    .line 1027
    .line 1028
    :cond_2e
    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v0

    .line 1035
    const-string v7, "android.app.extra.OPTIONS"

    .line 1036
    .line 1037
    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    const-string v6, "android.intent.extra.ACTIVITY_OPTIONS"

    .line 1042
    .line 1043
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v5

    .line 1047
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v0

    .line 1051
    iput-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragData:Landroid/content/Intent;

    .line 1052
    .line 1053
    iget-object v0, v4, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    .line 1054
    .line 1055
    if-eqz v0, :cond_2f

    .line 1056
    .line 1057
    iget-boolean v0, v0, Lcom/android/wm/shell/draganddrop/AppInfo;->mIsDropResolver:Z

    .line 1058
    .line 1059
    if-eqz v0, :cond_2f

    .line 1060
    .line 1061
    goto :goto_1d

    .line 1062
    :cond_2f
    move v1, v3

    .line 1063
    :goto_1d
    iput-boolean v1, v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->isDragDataDropResolver:Z

    .line 1064
    .line 1065
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 1066
    .line 1067
    if-eqz v0, :cond_30

    .line 1068
    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    const-string/jumbo v1, "update: dragData="

    .line 1072
    .line 1073
    .line 1074
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1075
    .line 1076
    .line 1077
    iget-object v1, v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragData:Landroid/content/Intent;

    .line 1078
    .line 1079
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v0

    .line 1086
    const-string v1, "DragAndDropPolicy"

    .line 1087
    .line 1088
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    .line 1090
    .line 1091
    :cond_30
    return-void

    .line 1092
    nop

    .line 1093
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    :array_6
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    :array_7
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final updateNavigationBarVisibility(Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "updateNavigationBarVisibility : "

    .line 2
    .line 3
    .line 4
    const-string v1, ", caller="

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x5

    .line 11
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "DropTargetLayout"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_DND_MULTI_SPLIT_DROP_TARGET:Z

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->isInSubDisplay()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string/jumbo v2, "task_bar"

    .line 57
    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-ne p1, v3, :cond_1

    .line 65
    .line 66
    move v0, v3

    .line 67
    :cond_1
    if-eqz v0, :cond_2

    .line 68
    .line 69
    const-string p0, "Failed to disalbe navibar, Taskbar is shown"

    .line 70
    .line 71
    invoke-static {v1, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 76
    .line 77
    const/high16 p1, 0x1600000

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
