.class public final Lcom/android/wm/shell/draganddrop/DragAndDropController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Landroid/view/View$OnDragListener;
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDismissReceiver:Lcom/android/wm/shell/draganddrop/DragAndDropController$1;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayDropTargets:Landroid/util/SparseArray;

.field public final mListeners:Ljava/util/ArrayList;

.field public final mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mProxy:Lcom/android/wm/shell/draganddrop/DragAndDropController$2;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/DisplayController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p7, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p7, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance p7, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {p7}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance p7, Landroid/view/SurfaceControl$Transaction;

    .line 19
    .line 20
    invoke-direct {p7}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p7, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 24
    .line 25
    new-instance p7, Lcom/android/wm/shell/draganddrop/DragAndDropController$1;

    .line 26
    .line 27
    invoke-direct {p7, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController$1;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    .line 28
    .line 29
    .line 30
    iput-object p7, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDismissReceiver:Lcom/android/wm/shell/draganddrop/DragAndDropController$1;

    .line 31
    .line 32
    new-instance p7, Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-direct {p7}, Landroid/graphics/Rect;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p7, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTmpRect:Landroid/graphics/Rect;

    .line 38
    .line 39
    new-instance p7, Lcom/android/wm/shell/draganddrop/DragAndDropController$2;

    .line 40
    .line 41
    invoke-direct {p7, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController$2;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    .line 42
    .line 43
    .line 44
    iput-object p7, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mProxy:Lcom/android/wm/shell/draganddrop/DragAndDropController$2;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 49
    .line 50
    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 51
    .line 52
    iput-object p5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 53
    .line 54
    new-instance p1, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    .line 55
    .line 56
    invoke-direct {p1, p6}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    .line 60
    .line 61
    iput-object p8, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 62
    .line 63
    new-instance p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    const/4 p3, 0x0

    .line 66
    invoke-direct {p1, p0, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public static clearState(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "clearState d="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "DragAndDropController"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dropTargetUiController:Lcom/android/wm/shell/draganddrop/IDropTargetUiController;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    .line 27
    .line 28
    iput v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iput-object v0, v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    .line 35
    .line 36
    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableAppMap:Ljava/util/Map;

    .line 37
    .line 38
    check-cast v3, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 41
    .line 42
    .line 43
    iput-object v0, v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    .line 44
    .line 45
    iput-boolean v1, v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mIsMimeType:Z

    .line 46
    .line 47
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragAndDropClientRecord:Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    :try_start_0
    iget-object v2, v2, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mClient:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    .line 52
    .line 53
    invoke-interface {v2}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->onDisconnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    const-string v2, "DragAndDropClient"

    .line 58
    .line 59
    const-string v3, "Failed to disconnect."

    .line 60
    .line 61
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :goto_0
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragAndDropClientRecord:Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    .line 65
    .line 66
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->hideRequested:Z

    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public static setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->hideRequested:Z

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    .line 13
    .line 14
    int-to-long v2, p0

    .line 15
    int-to-long p0, p1

    .line 16
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 17
    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    filled-new-array {v2, p0}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const p1, -0x55664869

    .line 31
    .line 32
    .line 33
    const-string v2, "Do not update drop target window visibility: displayId=%d visibility=%d"

    .line 34
    .line 35
    invoke-static {v0, p1, v1, v2, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :cond_1
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->windowVisibility:I

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    if-ne v0, p1, :cond_3

    .line 43
    .line 44
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    .line 45
    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 53
    .line 54
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const v0, -0x2cd4ce7

    .line 59
    .line 60
    .line 61
    const-string v1, "Do not update drop target window visibility: window is already set to %s."

    .line 62
    .line 63
    invoke-static {p1, v0, v2, v1, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void

    .line 67
    :cond_3
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    .line 72
    .line 73
    int-to-long v3, v0

    .line 74
    int-to-long v5, p1

    .line 75
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 76
    .line 77
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    const-string v4, "Set drop target window visibility: displayId=%d visibility=%d"

    .line 90
    .line 91
    const v5, 0x469bce00    # 19943.0f

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v5, v1, v4, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    if-nez p1, :cond_5

    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 107
    .line 108
    .line 109
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->mHasDrawn:Z

    .line 110
    .line 111
    if-nez v0, :cond_6

    .line 112
    .line 113
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_6

    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_5
    iput-boolean v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->mHasDrawn:Z

    .line 132
    .line 133
    :cond_6
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->windowVisibility:I

    .line 134
    .line 135
    return-void
.end method


# virtual methods
.method public addDisplayDropTarget(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/draganddrop/IDragLayout;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    .line 2
    .line 3
    new-instance v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    .line 4
    .line 5
    move-object v0, v6

    .line 6
    move v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    move-object v5, p5

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;-><init>(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/draganddrop/IDragLayout;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public deviceSupportsSplitScreenMultiWindow()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/app/ActivityTaskManager;->deviceSupportsMultiWindow(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleDrop(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    .line 6
    .line 7
    .line 8
    iget v2, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    sub-int/2addr v2, v3

    .line 12
    iput v2, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 13
    .line 14
    iget-object v2, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 15
    .line 16
    check-cast v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v2, :cond_6

    .line 22
    .line 23
    iget-boolean v2, v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isResizable:Z

    .line 24
    .line 25
    if-nez v2, :cond_6

    .line 26
    .line 27
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 28
    .line 29
    iget v5, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    .line 30
    .line 31
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v5, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTmpRect:Landroid/graphics/Rect;

    .line 36
    .line 37
    invoke-virtual {v2, v5, v4}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 38
    .line 39
    .line 40
    iget-object v2, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dndSnackBarController:Lcom/android/wm/shell/common/DnDSnackBarController;

    .line 41
    .line 42
    iget-object v5, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTmpRect:Landroid/graphics/Rect;

    .line 43
    .line 44
    iget-object v6, v2, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    .line 45
    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_0

    .line 53
    .line 54
    iget-object v6, v2, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    .line 55
    .line 56
    invoke-virtual {v6}, Lcom/android/wm/shell/common/DnDSnackBarWindow;->hide()V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-boolean v6, v2, Lcom/android/wm/shell/common/DnDSnackBarController;->mWasShownSnackBar:Z

    .line 60
    .line 61
    if-eqz v6, :cond_1

    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_1
    iget-object v6, v2, Lcom/android/wm/shell/common/DnDSnackBarController;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {v6}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-nez v7, :cond_2

    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_2
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_DOWNLOADABLE_RESERVE_BATTERY_MODE:Z

    .line 76
    .line 77
    const-string v8, "enable_reserve_max_mode"

    .line 78
    .line 79
    const-string/jumbo v9, "reserve_battery_on"

    .line 80
    .line 81
    .line 82
    if-eqz v7, :cond_3

    .line 83
    .line 84
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-static {v7, v9, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-ne v7, v3, :cond_4

    .line 93
    .line 94
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-ne v7, v3, :cond_4

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_RESERVE_BATTERY_MODE:Z

    .line 106
    .line 107
    if-eqz v7, :cond_4

    .line 108
    .line 109
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-static {v7, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-ne v7, v3, :cond_4

    .line 118
    .line 119
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-ne v7, v3, :cond_4

    .line 128
    .line 129
    :goto_0
    move v7, v3

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    move v7, v4

    .line 132
    :goto_1
    if-eqz v7, :cond_5

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_5
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    const v7, 0x7f0d00d5

    .line 140
    .line 141
    .line 142
    const/4 v8, 0x0

    .line 143
    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    check-cast v6, Lcom/android/wm/shell/common/DnDSnackBarWindow;

    .line 148
    .line 149
    iput-object v6, v2, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    new-instance v7, Lcom/android/wm/shell/common/DnDSnackBarWindow$$ExternalSyntheticLambda0;

    .line 155
    .line 156
    invoke-direct {v7, v6}, Lcom/android/wm/shell/common/DnDSnackBarWindow$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DnDSnackBarWindow;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    .line 161
    .line 162
    const v7, 0x7f0a0a85

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    new-instance v8, Lcom/android/wm/shell/common/DnDSnackBarWindow$$ExternalSyntheticLambda1;

    .line 170
    .line 171
    invoke-direct {v8, v6}, Lcom/android/wm/shell/common/DnDSnackBarWindow$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/DnDSnackBarWindow;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .line 176
    .line 177
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    .line 178
    .line 179
    const/4 v10, -0x2

    .line 180
    const/4 v11, -0x2

    .line 181
    const/16 v12, 0x7d8

    .line 182
    .line 183
    const v13, 0x1040100

    .line 184
    .line 185
    .line 186
    const/4 v14, -0x3

    .line 187
    move-object v9, v7

    .line 188
    invoke-direct/range {v9 .. v14}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 189
    .line 190
    .line 191
    iput-object v7, v6, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 192
    .line 193
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 194
    .line 195
    or-int/lit8 v8, v8, 0x50

    .line 196
    .line 197
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 198
    .line 199
    invoke-virtual {v7, v4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 200
    .line 201
    .line 202
    iget-object v7, v6, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 203
    .line 204
    const-string v8, "DnDSnackBar"

    .line 205
    .line 206
    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    iget-object v7, v6, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 210
    .line 211
    const v8, 0x1030004

    .line 212
    .line 213
    .line 214
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 215
    .line 216
    iget-object v8, v6, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 217
    .line 218
    invoke-interface {v8, v6, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    .line 220
    .line 221
    iget-object v7, v6, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 222
    .line 223
    const/16 v8, 0x31

    .line 224
    .line 225
    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 226
    .line 227
    invoke-virtual {v6, v4, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 228
    .line 229
    .line 230
    iget-object v7, v6, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 231
    .line 232
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 233
    .line 234
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    sub-int/2addr v5, v8

    .line 239
    iget v8, v6, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mMarginBottom:I

    .line 240
    .line 241
    sub-int/2addr v5, v8

    .line 242
    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 243
    .line 244
    iget-object v5, v6, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 245
    .line 246
    iget-object v7, v6, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 247
    .line 248
    invoke-interface {v5, v6, v7}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    .line 250
    .line 251
    iget-object v5, v2, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    .line 252
    .line 253
    iput-object v2, v5, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mCallbacks:Lcom/android/wm/shell/common/DnDSnackBarWindow$SnackBarCallbacks;

    .line 254
    .line 255
    :cond_6
    :goto_2
    iget-object v2, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 256
    .line 257
    new-instance v5, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;

    .line 258
    .line 259
    invoke-direct {v5, v0, v1, v3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Ljava/lang/Object;I)V

    .line 260
    .line 261
    .line 262
    check-cast v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 263
    .line 264
    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 265
    .line 266
    if-nez v0, :cond_8

    .line 267
    .line 268
    iget-object v1, v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 269
    .line 270
    iget-boolean v1, v1, Lcom/android/wm/shell/common/DismissButtonView;->mIsEnterDismissButton:Z

    .line 271
    .line 272
    if-eqz v1, :cond_7

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_7
    move v1, v4

    .line 276
    goto :goto_4

    .line 277
    :cond_8
    :goto_3
    move v1, v3

    .line 278
    :goto_4
    iput-boolean v3, v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDropped:Z

    .line 279
    .line 280
    iget-boolean v6, v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDragSourceTask:Z

    .line 281
    .line 282
    if-eqz v6, :cond_b

    .line 283
    .line 284
    if-eqz v0, :cond_a

    .line 285
    .line 286
    iget v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    .line 287
    .line 288
    if-nez v0, :cond_9

    .line 289
    .line 290
    move v0, v3

    .line 291
    goto :goto_5

    .line 292
    :cond_9
    move v0, v4

    .line 293
    :goto_5
    if-eqz v0, :cond_b

    .line 294
    .line 295
    :cond_a
    move v0, v4

    .line 296
    move v1, v0

    .line 297
    goto :goto_6

    .line 298
    :cond_b
    move v0, v3

    .line 299
    :goto_6
    if-eqz v0, :cond_21

    .line 300
    .line 301
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    if-nez v0, :cond_c

    .line 306
    .line 307
    move v13, v4

    .line 308
    goto :goto_7

    .line 309
    :cond_c
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    move v13, v0

    .line 318
    :goto_7
    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 319
    .line 320
    iget-object v14, v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 321
    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    invoke-static/range {p1 .. p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 327
    .line 328
    .line 329
    move-result-object v11

    .line 330
    if-eqz v14, :cond_20

    .line 331
    .line 332
    iget-object v7, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v7

    .line 338
    if-nez v7, :cond_d

    .line 339
    .line 340
    goto/16 :goto_17

    .line 341
    .line 342
    :cond_d
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_DND_MULTI_SPLIT_DROP_TARGET:Z

    .line 343
    .line 344
    const/4 v8, 0x2

    .line 345
    iget v9, v14, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    .line 346
    .line 347
    iget-object v10, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 348
    .line 349
    const/4 v12, -0x1

    .line 350
    if-eqz v7, :cond_1a

    .line 351
    .line 352
    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->supportMultiSplitDropTarget()Z

    .line 353
    .line 354
    .line 355
    move-result v7

    .line 356
    if-eqz v7, :cond_1a

    .line 357
    .line 358
    const/4 v7, 0x3

    .line 359
    const/4 v15, 0x4

    .line 360
    if-eq v9, v3, :cond_f

    .line 361
    .line 362
    if-eq v9, v7, :cond_f

    .line 363
    .line 364
    if-eq v9, v8, :cond_f

    .line 365
    .line 366
    if-ne v9, v15, :cond_e

    .line 367
    .line 368
    goto :goto_8

    .line 369
    :cond_e
    move/from16 v16, v4

    .line 370
    .line 371
    goto :goto_9

    .line 372
    :cond_f
    :goto_8
    move/from16 v16, v3

    .line 373
    .line 374
    :goto_9
    if-nez v16, :cond_10

    .line 375
    .line 376
    invoke-virtual {v14}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isMultiSplit()Z

    .line 377
    .line 378
    .line 379
    move-result v16

    .line 380
    if-eqz v16, :cond_11

    .line 381
    .line 382
    :cond_10
    iget-object v4, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 383
    .line 384
    invoke-virtual {v10, v12, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onDroppedToSplit(ILcom/android/internal/logging/InstanceId;)V

    .line 385
    .line 386
    .line 387
    :cond_11
    invoke-virtual {v14}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isMultiSplit()Z

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    if-eqz v4, :cond_12

    .line 392
    .line 393
    invoke-virtual {v14}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->convertTypeToCellStagePosition()I

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    new-instance v7, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;

    .line 398
    .line 399
    invoke-direct {v7, v12, v4, v12}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;-><init>(III)V

    .line 400
    .line 401
    .line 402
    goto :goto_13

    .line 403
    :cond_12
    if-eq v9, v3, :cond_14

    .line 404
    .line 405
    if-eq v9, v7, :cond_14

    .line 406
    .line 407
    if-eq v9, v8, :cond_14

    .line 408
    .line 409
    if-ne v9, v15, :cond_13

    .line 410
    .line 411
    goto :goto_a

    .line 412
    :cond_13
    const/4 v4, 0x0

    .line 413
    goto :goto_b

    .line 414
    :cond_14
    :goto_a
    move v4, v3

    .line 415
    :goto_b
    if-eqz v4, :cond_19

    .line 416
    .line 417
    if-eq v9, v8, :cond_16

    .line 418
    .line 419
    if-ne v9, v3, :cond_15

    .line 420
    .line 421
    goto :goto_c

    .line 422
    :cond_15
    move v4, v3

    .line 423
    goto :goto_d

    .line 424
    :cond_16
    :goto_c
    const/4 v4, 0x0

    .line 425
    :goto_d
    if-eq v9, v8, :cond_18

    .line 426
    .line 427
    if-ne v9, v15, :cond_17

    .line 428
    .line 429
    goto :goto_e

    .line 430
    :cond_17
    const/4 v7, 0x0

    .line 431
    goto :goto_f

    .line 432
    :cond_18
    :goto_e
    move v7, v3

    .line 433
    :goto_f
    new-instance v8, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;

    .line 434
    .line 435
    const/4 v10, 0x0

    .line 436
    invoke-direct {v8, v4, v10, v7}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;-><init>(III)V

    .line 437
    .line 438
    .line 439
    move-object v12, v8

    .line 440
    goto :goto_14

    .line 441
    :cond_19
    const/4 v10, 0x0

    .line 442
    new-instance v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;

    .line 443
    .line 444
    invoke-direct {v4, v12, v10, v12}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;-><init>(III)V

    .line 445
    .line 446
    .line 447
    move-object v12, v4

    .line 448
    goto :goto_14

    .line 449
    :cond_1a
    if-eq v9, v8, :cond_1c

    .line 450
    .line 451
    if-ne v9, v3, :cond_1b

    .line 452
    .line 453
    goto :goto_10

    .line 454
    :cond_1b
    const/4 v4, 0x0

    .line 455
    goto :goto_11

    .line 456
    :cond_1c
    :goto_10
    move v4, v3

    .line 457
    :goto_11
    if-eqz v9, :cond_1d

    .line 458
    .line 459
    if-eqz v10, :cond_1d

    .line 460
    .line 461
    xor-int/2addr v4, v3

    .line 462
    iget-object v7, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 463
    .line 464
    invoke-virtual {v10, v4, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onDroppedToSplit(ILcom/android/internal/logging/InstanceId;)V

    .line 465
    .line 466
    .line 467
    goto :goto_12

    .line 468
    :cond_1d
    move v4, v12

    .line 469
    :goto_12
    new-instance v7, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;

    .line 470
    .line 471
    const/4 v8, 0x0

    .line 472
    invoke-direct {v7, v4, v8, v12}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;-><init>(III)V

    .line 473
    .line 474
    .line 475
    :goto_13
    move-object v12, v7

    .line 476
    :goto_14
    const/4 v4, 0x5

    .line 477
    if-ne v9, v4, :cond_1e

    .line 478
    .line 479
    goto :goto_15

    .line 480
    :cond_1e
    const/4 v3, 0x0

    .line 481
    :goto_15
    if-eqz v3, :cond_1f

    .line 482
    .line 483
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mFreeformStarter:Lcom/android/wm/shell/draganddrop/FreeformStarter;

    .line 484
    .line 485
    if-eqz v3, :cond_1f

    .line 486
    .line 487
    goto :goto_16

    .line 488
    :cond_1f
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    .line 489
    .line 490
    :goto_16
    move-object v10, v3

    .line 491
    invoke-virtual {v6}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 492
    .line 493
    .line 494
    move-result-object v7

    .line 495
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 496
    .line 497
    iget-object v8, v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragData:Landroid/content/Intent;

    .line 498
    .line 499
    iget v9, v12, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->splitPosition:I

    .line 500
    .line 501
    move-object v6, v0

    .line 502
    invoke-virtual/range {v6 .. v13}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->startClipDescription(Landroid/content/ClipDescription;Landroid/content/Intent;ILcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Landroid/view/DragAndDropPermissions;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;I)V

    .line 503
    .line 504
    .line 505
    iget-boolean v3, v14, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->alreadyRun:Z

    .line 506
    .line 507
    if-eqz v3, :cond_21

    .line 508
    .line 509
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    .line 510
    .line 511
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    const v4, 0x7f130bdb

    .line 516
    .line 517
    .line 518
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    const/4 v4, 0x0

    .line 523
    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 528
    .line 529
    .line 530
    goto :goto_17

    .line 531
    :cond_20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    :cond_21
    :goto_17
    move-object/from16 v0, p1

    .line 535
    .line 536
    invoke-interface {v2, v0, v5}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    .line 537
    .line 538
    .line 539
    return v1
.end method

.method public isUserSetup()Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "device_provisioned"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    const-string/jumbo v3, "user_setup_complete"

    .line 21
    .line 22
    .line 23
    const/4 v4, -0x2

    .line 24
    invoke-static {p0, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    move p0, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move p0, v1

    .line 33
    :goto_1
    if-eqz v0, :cond_2

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    move v1, v2

    .line 38
    :cond_2
    return v1
.end method

.method public final notifyDragStarted()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mListeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mListeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda18;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda18;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleController;->collapseStack()V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 13

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    int-to-long v0, p1

    .line 6
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    const-string v3, "Display added: %d"

    .line 18
    .line 19
    const v4, -0x3c018a92

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v4, v1, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    if-eqz p1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/16 v1, 0x7e0

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-class v1, Landroid/view/WindowManager;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    move-object v6, v1

    .line 48
    check-cast v6, Landroid/view/WindowManager;

    .line 49
    .line 50
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 51
    .line 52
    const/4 v8, -0x1

    .line 53
    const/4 v9, -0x1

    .line 54
    const v11, 0x1000008

    .line 55
    .line 56
    .line 57
    const/4 v12, -0x3

    .line 58
    const/16 v10, 0x7e0

    .line 59
    .line 60
    move-object v7, v1

    .line 61
    invoke-direct/range {v7 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 62
    .line 63
    .line 64
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 65
    .line 66
    const v4, -0x7fffffb0

    .line 67
    .line 68
    .line 69
    or-int/2addr v3, v4

    .line 70
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 71
    .line 72
    const/4 v3, 0x3

    .line 73
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 77
    .line 78
    .line 79
    const-string v3, "ShellDropTarget"

    .line 80
    .line 81
    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 85
    .line 86
    or-int/lit16 v3, v3, 0x200

    .line 87
    .line 88
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 89
    .line 90
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    .line 91
    .line 92
    or-int/lit8 v3, v3, 0x10

    .line 93
    .line 94
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    .line 95
    .line 96
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const v4, 0x7f0d010c

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    move-object v7, v2

    .line 108
    check-cast v7, Landroid/widget/FrameLayout;

    .line 109
    .line 110
    invoke-virtual {v7, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 111
    .line 112
    .line 113
    const/4 v2, 0x4

    .line 114
    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    new-instance v8, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 118
    .line 119
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 120
    .line 121
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 122
    .line 123
    invoke-direct {v8, v0, v2, v3}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/view/SurfaceControl$Transaction;)V

    .line 124
    .line 125
    .line 126
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 127
    .line 128
    const/4 v3, -0x1

    .line 129
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7, v8, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    .line 134
    .line 135
    :try_start_0
    invoke-interface {v6, v7, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    .line 137
    .line 138
    move-object v3, p0

    .line 139
    move v4, p1

    .line 140
    move-object v5, v0

    .line 141
    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->addDisplayDropTarget(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/draganddrop/IDragLayout;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v0, "Unable to add view for display id: "

    .line 151
    .line 152
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    const-string p1, "DragAndDropController"

    .line 163
    .line 164
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    :goto_0
    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 4

    .line 1
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    int-to-long v0, p1

    .line 6
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    const-string v2, "Display changed: %d"

    .line 18
    .line 19
    const v3, 0x7a9bec7a

    .line 20
    .line 21
    .line 22
    invoke-static {p2, v3, v1, v2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    .line 32
    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v0, p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dndSnackBarController:Lcom/android/wm/shell/common/DnDSnackBarController;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget-object v1, v0, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    iget-object v1, v0, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DnDSnackBarWindow;->hide()V

    .line 58
    .line 59
    .line 60
    :cond_2
    const/4 v1, 0x0

    .line 61
    iput-object v1, v0, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    .line 62
    .line 63
    :cond_3
    iget-object p2, p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 64
    .line 65
    check-cast p2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 66
    .line 67
    iget-boolean v0, p2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsShowing:Z

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    iget-object p1, p2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    iput-object p0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 84
    .line 85
    :cond_4
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    int-to-long v0, p1

    .line 6
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    const-string v3, "Display removed: %d"

    .line 18
    .line 19
    const v4, -0x526a63b2

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v4, v1, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->context:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->wm:Landroid/view/WindowManager;

    .line 42
    .line 43
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    .line 44
    .line 45
    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 51
    .line 52
    .line 53
    iget-object p0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dndSnackBarController:Lcom/android/wm/shell/common/DnDSnackBarController;

    .line 54
    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DnDSnackBarWindow;->hide()V

    .line 70
    .line 71
    .line 72
    :cond_2
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    .line 74
    .line 75
    :cond_3
    return-void
.end method

.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 13

    .line 1
    const-string v0, "Failed to disconnect."

    .line 2
    .line 3
    const-string v1, "DragAndDropClient"

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v2}, Landroid/view/DragEvent;->actionToString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    float-to-double v3, v3

    .line 26
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    float-to-double v5, v5

    .line 31
    invoke-virtual {p2}, Landroid/view/DragEvent;->getOffsetX()F

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    float-to-double v7, v7

    .line 36
    invoke-virtual {p2}, Landroid/view/DragEvent;->getOffsetY()F

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    float-to-double v9, v9

    .line 41
    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 42
    .line 43
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const/16 v3, 0x2a8

    .line 64
    .line 65
    const-string v4, "Drag event: action=%s x=%f y=%f xOffset=%f yOffset=%f"

    .line 66
    .line 67
    const v5, 0x6efee556

    .line 68
    .line 69
    .line 70
    invoke-static {v11, v5, v3, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    .line 82
    .line 83
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const/4 v4, 0x0

    .line 94
    if-nez v2, :cond_1

    .line 95
    .line 96
    return v4

    .line 97
    :cond_1
    iget-object v5, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->context:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v5}, Landroid/content/res/Configuration;->isDexMode()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    const/4 v6, 0x1

    .line 112
    xor-int/2addr v5, v6

    .line 113
    if-nez v5, :cond_2

    .line 114
    .line 115
    return v4

    .line 116
    :cond_2
    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 117
    .line 118
    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mIsKeyguardOccludedAndShowingSupplier:Ljava/util/function/BooleanSupplier;

    .line 119
    .line 120
    if-eqz v5, :cond_3

    .line 121
    .line 122
    invoke-interface {v5}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    move v5, v4

    .line 128
    :goto_0
    const-string v7, "DragAndDropController"

    .line 129
    .line 130
    if-eqz v5, :cond_4

    .line 131
    .line 132
    const-string p0, "isKeyguardOccludedAndShowing=true"

    .line 133
    .line 134
    invoke-static {v7, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    return v4

    .line 138
    :cond_4
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    const/4 v8, 0x0

    .line 143
    if-ne v5, v6, :cond_17

    .line 144
    .line 145
    const-string v5, "ACTION_DRAG_STARTED"

    .line 146
    .line 147
    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->isUserSetup()Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-nez v5, :cond_5

    .line 155
    .line 156
    const-string p0, "User setup is not yet completed."

    .line 157
    .line 158
    invoke-static {v7, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    return v4

    .line 162
    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->deviceSupportsSplitScreenMultiWindow()Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-nez v5, :cond_6

    .line 167
    .line 168
    const-string p0, "This device does not support multi-windows."

    .line 169
    .line 170
    invoke-static {v7, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    return v4

    .line 174
    :cond_6
    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 175
    .line 176
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->dismissAddToAppPairDialog()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-lez v5, :cond_7

    .line 188
    .line 189
    const-string v5, "application/vnd.android.activity"

    .line 190
    .line 191
    invoke-virtual {v3, v5}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-nez v5, :cond_8

    .line 196
    .line 197
    const-string v5, "application/vnd.android.shortcut"

    .line 198
    .line 199
    invoke-virtual {v3, v5}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    if-nez v5, :cond_8

    .line 204
    .line 205
    const-string v5, "application/vnd.android.task"

    .line 206
    .line 207
    invoke-virtual {v3, v5}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    if-eqz v5, :cond_7

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_7
    move v6, v4

    .line 215
    :cond_8
    :goto_1
    iput-boolean v6, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    .line 216
    .line 217
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DRAG_AND_DROP_enabled:Z

    .line 218
    .line 219
    if-eqz v5, :cond_b

    .line 220
    .line 221
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    int-to-long v9, v5

    .line 230
    const-string v5, ""

    .line 231
    .line 232
    move v11, v4

    .line 233
    :goto_2
    invoke-virtual {v3}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    .line 234
    .line 235
    .line 236
    move-result v12

    .line 237
    if-ge v11, v12, :cond_a

    .line 238
    .line 239
    if-lez v11, :cond_9

    .line 240
    .line 241
    const-string v12, ", "

    .line 242
    .line 243
    invoke-static {v5, v12}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    :cond_9
    invoke-static {v5}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    invoke-virtual {v3, v11}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v12

    .line 255
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    add-int/lit8 v11, v11, 0x1

    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_a
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 270
    .line 271
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    filled-new-array {v6, v9, v3}, [Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    const/4 v6, 0x7

    .line 284
    const-string v9, "Clip description: handlingDrag=%b itemCount=%d mimeTypes=%s"

    .line 285
    .line 286
    const v10, 0x1667e8e0

    .line 287
    .line 288
    .line 289
    invoke-static {v5, v10, v6, v9, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    :cond_b
    iget-boolean v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    .line 293
    .line 294
    if-eqz v3, :cond_c

    .line 295
    .line 296
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    .line 297
    .line 298
    if-nez v3, :cond_c

    .line 299
    .line 300
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    .line 301
    .line 302
    invoke-static {v3}, Lcom/android/wm/shell/common/MultiWindowOverheatUI;->showIfNeeded(Landroid/content/Context;)Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-eqz v3, :cond_c

    .line 307
    .line 308
    return v4

    .line 309
    :cond_c
    iget-boolean v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    .line 310
    .line 311
    if-eqz v3, :cond_d

    .line 312
    .line 313
    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    .line 314
    .line 315
    invoke-virtual {v3}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->update()V

    .line 316
    .line 317
    .line 318
    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 319
    .line 320
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    invoke-virtual {v5, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    new-instance v6, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;

    .line 333
    .line 334
    iget-object v9, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMultiInstanceAllowList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

    .line 335
    .line 336
    iget-object v10, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    .line 337
    .line 338
    invoke-direct {v6, v10, v9, v5, v8}, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    iput-object v6, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    .line 342
    .line 343
    const/4 v5, 0x1

    .line 344
    iput-boolean v5, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mIsMimeType:Z

    .line 345
    .line 346
    new-instance v3, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;

    .line 347
    .line 348
    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 349
    .line 350
    iget-object v6, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 351
    .line 352
    iget-object v8, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    .line 353
    .line 354
    invoke-direct {v3, p0, v5, v6, v8}, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;)V

    .line 355
    .line 356
    .line 357
    iput-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dropTargetUiController:Lcom/android/wm/shell/draganddrop/IDropTargetUiController;

    .line 358
    .line 359
    goto/16 :goto_7

    .line 360
    .line 361
    :cond_d
    if-nez v3, :cond_16

    .line 362
    .line 363
    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    .line 364
    .line 365
    invoke-virtual {v3}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->update()V

    .line 366
    .line 367
    .line 368
    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 369
    .line 370
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    invoke-static {p2}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 375
    .line 376
    .line 377
    move-result-object v6

    .line 378
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    if-nez v5, :cond_e

    .line 382
    .line 383
    goto/16 :goto_5

    .line 384
    .line 385
    :cond_e
    invoke-virtual {v5}, Landroid/content/ClipData;->getCallingPackageName()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v8

    .line 389
    iput-object v8, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingPackageName:Ljava/lang/String;

    .line 390
    .line 391
    iget-object v9, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingPackageBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$PolicyExceptionList;

    .line 392
    .line 393
    iget-object v9, v9, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$PolicyExceptionList;->mBlockList:Ljava/util/Set;

    .line 394
    .line 395
    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v8

    .line 399
    sget-boolean v9, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->DEBUG:Z

    .line 400
    .line 401
    const-string v10, "ExecutableAppHolder"

    .line 402
    .line 403
    if-eqz v8, :cond_f

    .line 404
    .line 405
    if-eqz v9, :cond_15

    .line 406
    .line 407
    const-string v3, "Failed to update from clipData due to callingPackage is in block list."

    .line 408
    .line 409
    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .line 411
    .line 412
    goto/16 :goto_5

    .line 413
    .line 414
    :cond_f
    if-eqz v6, :cond_10

    .line 415
    .line 416
    invoke-virtual {v6}, Landroid/view/DragAndDropPermissions;->getFlags()I

    .line 417
    .line 418
    .line 419
    move-result v6

    .line 420
    goto :goto_3

    .line 421
    :cond_10
    move v6, v4

    .line 422
    :goto_3
    invoke-virtual {v5}, Landroid/content/ClipData;->getCallingUserId()I

    .line 423
    .line 424
    .line 425
    move-result v8

    .line 426
    iput v8, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingUserId:I

    .line 427
    .line 428
    if-eqz v9, :cond_11

    .line 429
    .line 430
    new-instance v8, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    const-string v11, "extractFrom: clipData="

    .line 433
    .line 434
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    new-instance v11, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    const/16 v12, 0x80

    .line 440
    .line 441
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 442
    .line 443
    .line 444
    xor-int/lit8 v9, v9, 0x1

    .line 445
    .line 446
    const-string v12, "ClipData { "

    .line 447
    .line 448
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v5, v11, v9}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;Z)V

    .line 452
    .line 453
    .line 454
    const-string v9, " }"

    .line 455
    .line 456
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v9

    .line 463
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    const-string v9, ", from : "

    .line 467
    .line 468
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    iget-object v9, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingPackageName:Ljava/lang/String;

    .line 472
    .line 473
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v8

    .line 480
    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .line 482
    .line 483
    :cond_11
    iget-object v8, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mAppResultFactory:Lcom/android/wm/shell/draganddrop/AppResultFactory;

    .line 484
    .line 485
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    .line 487
    .line 488
    new-instance v9, Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;

    .line 489
    .line 490
    invoke-direct {v9}, Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;-><init>()V

    .line 491
    .line 492
    .line 493
    iget-object v8, v8, Lcom/android/wm/shell/draganddrop/AppResultFactory;->mResolvers:Ljava/util/ArrayList;

    .line 494
    .line 495
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 496
    .line 497
    .line 498
    move-result-object v8

    .line 499
    :cond_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 500
    .line 501
    .line 502
    move-result v10

    .line 503
    if-eqz v10, :cond_13

    .line 504
    .line 505
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v10

    .line 509
    check-cast v10, Lcom/android/wm/shell/draganddrop/Resolver;

    .line 510
    .line 511
    invoke-interface {v10, v5, v6, v9}, Lcom/android/wm/shell/draganddrop/Resolver;->makeFrom(Landroid/content/ClipData;ILcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;)Ljava/util/Optional;

    .line 512
    .line 513
    .line 514
    move-result-object v10

    .line 515
    invoke-virtual {v10}, Ljava/util/Optional;->isPresent()Z

    .line 516
    .line 517
    .line 518
    move-result v11

    .line 519
    if-eqz v11, :cond_12

    .line 520
    .line 521
    invoke-virtual {v10}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v5

    .line 525
    check-cast v5, Lcom/android/wm/shell/draganddrop/AppResult;

    .line 526
    .line 527
    goto :goto_4

    .line 528
    :cond_13
    iget-boolean v5, v9, Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;->mNonResizeableAppOnly:Z

    .line 529
    .line 530
    if-eqz v5, :cond_14

    .line 531
    .line 532
    new-instance v5, Lcom/android/wm/shell/draganddrop/NonResizeableAppsResult;

    .line 533
    .line 534
    invoke-direct {v5}, Lcom/android/wm/shell/draganddrop/NonResizeableAppsResult;-><init>()V

    .line 535
    .line 536
    .line 537
    goto :goto_4

    .line 538
    :cond_14
    const/4 v5, 0x0

    .line 539
    :goto_4
    iput-object v5, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    .line 540
    .line 541
    if-eqz v5, :cond_15

    .line 542
    .line 543
    const/4 v3, 0x1

    .line 544
    goto :goto_6

    .line 545
    :cond_15
    :goto_5
    move v3, v4

    .line 546
    :goto_6
    iget-boolean v5, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    .line 547
    .line 548
    or-int/2addr v5, v3

    .line 549
    iput-boolean v5, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    .line 550
    .line 551
    if-eqz v3, :cond_16

    .line 552
    .line 553
    new-instance v3, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;

    .line 554
    .line 555
    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    .line 556
    .line 557
    iget-object v6, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 558
    .line 559
    invoke-direct {v3, v5, p0, v6}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/common/DisplayController;)V

    .line 560
    .line 561
    .line 562
    iput-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dropTargetUiController:Lcom/android/wm/shell/draganddrop/IDropTargetUiController;

    .line 563
    .line 564
    :cond_16
    :goto_7
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    invoke-static {v3, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->from(Landroid/content/ClipData;I)Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    iput-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragAndDropClientRecord:Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    .line 573
    .line 574
    if-eqz v3, :cond_17

    .line 575
    .line 576
    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mProxy:Lcom/android/wm/shell/draganddrop/DragAndDropController$2;

    .line 577
    .line 578
    :try_start_0
    iget-object v6, v3, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mClient:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    .line 579
    .line 580
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy$Stub;->asBinder()Landroid/os/IBinder;

    .line 581
    .line 582
    .line 583
    move-result-object v5

    .line 584
    iget v3, v3, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mDisplayId:I

    .line 585
    .line 586
    invoke-interface {v6, v5, v3}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->onConnected(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .line 588
    .line 589
    goto :goto_8

    .line 590
    :catch_0
    const-string v3, "Failed to connect."

    .line 591
    .line 592
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    .line 594
    .line 595
    :goto_8
    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragAndDropClientRecord:Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    .line 596
    .line 597
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 598
    .line 599
    .line 600
    :try_start_1
    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mClient:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    .line 601
    .line 602
    invoke-interface {v3}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->getInitialDropTargetVisible()Z

    .line 603
    .line 604
    .line 605
    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 606
    goto :goto_9

    .line 607
    :catch_1
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .line 609
    .line 610
    const/4 v3, 0x1

    .line 611
    :goto_9
    xor-int/lit8 v3, v3, 0x1

    .line 612
    .line 613
    iput-boolean v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->hideRequested:Z

    .line 614
    .line 615
    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->mHiddenDropTargetArea:Landroid/graphics/Rect;

    .line 616
    .line 617
    iget-object v5, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragAndDropClientRecord:Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    .line 618
    .line 619
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 620
    .line 621
    .line 622
    :try_start_2
    iget-object v5, v5, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mClient:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    .line 623
    .line 624
    invoke-interface {v5}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->getHiddenDropTargetArea()Landroid/graphics/Rect;

    .line 625
    .line 626
    .line 627
    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 628
    goto :goto_a

    .line 629
    :catch_2
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .line 631
    .line 632
    new-instance v0, Landroid/graphics/Rect;

    .line 633
    .line 634
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 635
    .line 636
    .line 637
    :goto_a
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 638
    .line 639
    .line 640
    :cond_17
    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dropTargetUiController:Lcom/android/wm/shell/draganddrop/IDropTargetUiController;

    .line 641
    .line 642
    if-eqz v0, :cond_1a

    .line 643
    .line 644
    invoke-interface {v0, p2, p1, v2}, Lcom/android/wm/shell/draganddrop/IDropTargetUiController;->onDrag(Landroid/view/DragEvent;ILcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    .line 645
    .line 646
    .line 647
    move-result p0

    .line 648
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    .line 649
    .line 650
    .line 651
    move-result p1

    .line 652
    const/4 v0, 0x4

    .line 653
    if-ne p1, v0, :cond_18

    .line 654
    .line 655
    invoke-static {v2}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->clearState(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    .line 656
    .line 657
    .line 658
    goto :goto_b

    .line 659
    :cond_18
    if-nez p0, :cond_19

    .line 660
    .line 661
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    .line 662
    .line 663
    .line 664
    move-result p1

    .line 665
    const/4 p2, 0x1

    .line 666
    if-ne p1, p2, :cond_19

    .line 667
    .line 668
    invoke-static {v2, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    .line 669
    .line 670
    .line 671
    invoke-static {v2}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->clearState(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    .line 672
    .line 673
    .line 674
    :cond_19
    :goto_b
    return p0

    .line 675
    :cond_1a
    iget-boolean v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    .line 676
    .line 677
    if-nez v0, :cond_1b

    .line 678
    .line 679
    return v4

    .line 680
    :cond_1b
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    .line 681
    .line 682
    .line 683
    move-result v0

    .line 684
    packed-switch v0, :pswitch_data_0

    .line 685
    .line 686
    .line 687
    goto/16 :goto_d

    .line 688
    .line 689
    :pswitch_0
    iget-object p0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 690
    .line 691
    const/4 p1, 0x0

    .line 692
    invoke-interface {p0, p2, p1}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    .line 693
    .line 694
    .line 695
    goto/16 :goto_d

    .line 696
    .line 697
    :pswitch_1
    iget-object p0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 698
    .line 699
    check-cast p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 700
    .line 701
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->show()V

    .line 702
    .line 703
    .line 704
    goto/16 :goto_d

    .line 705
    .line 706
    :pswitch_2
    iget-object p1, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 707
    .line 708
    move-object v0, p1

    .line 709
    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 710
    .line 711
    iget-boolean v0, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDropped:Z

    .line 712
    .line 713
    if-eqz v0, :cond_1c

    .line 714
    .line 715
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    .line 716
    .line 717
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 718
    .line 719
    .line 720
    sget-object p2, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;->GLOBAL_APP_DRAG_DROPPED:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;

    .line 721
    .line 722
    iget-object v0, p1, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 723
    .line 724
    invoke-virtual {p1, p2, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->log(Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;Landroid/content/pm/ActivityInfo;)V

    .line 725
    .line 726
    .line 727
    goto :goto_c

    .line 728
    :cond_1c
    iget v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 729
    .line 730
    add-int/lit8 v0, v0, -0x1

    .line 731
    .line 732
    iput v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 733
    .line 734
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;

    .line 735
    .line 736
    invoke-direct {v0, p0, v2, v4}, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Ljava/lang/Object;I)V

    .line 737
    .line 738
    .line 739
    invoke-interface {p1, p2, v0}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    .line 740
    .line 741
    .line 742
    :goto_c
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    .line 743
    .line 744
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 745
    .line 746
    .line 747
    sget-object p1, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;->GLOBAL_APP_DRAG_END:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;

    .line 748
    .line 749
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 750
    .line 751
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->log(Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;Landroid/content/pm/ActivityInfo;)V

    .line 752
    .line 753
    .line 754
    goto :goto_d

    .line 755
    :pswitch_3
    iget-object p1, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 756
    .line 757
    check-cast p1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 758
    .line 759
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->update(Landroid/view/DragEvent;)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {p0, p2, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->handleDrop(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    .line 763
    .line 764
    .line 765
    move-result p0

    .line 766
    return p0

    .line 767
    :pswitch_4
    iget-object p0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 768
    .line 769
    check-cast p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 770
    .line 771
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->update(Landroid/view/DragEvent;)V

    .line 772
    .line 773
    .line 774
    goto :goto_d

    .line 775
    :pswitch_5
    iget v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 776
    .line 777
    if-eqz v0, :cond_1d

    .line 778
    .line 779
    const-string p0, "Unexpected drag start during an active drag"

    .line 780
    .line 781
    invoke-static {v7, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    .line 783
    .line 784
    return v4

    .line 785
    :cond_1d
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    .line 786
    .line 787
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->logStart(Landroid/view/DragEvent;)Lcom/android/internal/logging/InstanceId;

    .line 788
    .line 789
    .line 790
    move-result-object v8

    .line 791
    iget v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 792
    .line 793
    add-int/lit8 v0, v0, 0x1

    .line 794
    .line 795
    iput v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 796
    .line 797
    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 798
    .line 799
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 800
    .line 801
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 802
    .line 803
    .line 804
    move-result-object v6

    .line 805
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 806
    .line 807
    .line 808
    move-result-object v7

    .line 809
    move-object v5, v0

    .line 810
    check-cast v5, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 811
    .line 812
    const/4 v9, 0x0

    .line 813
    const/4 v10, 0x0

    .line 814
    const/4 v11, 0x0

    .line 815
    invoke-virtual/range {v5 .. v11}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->prepare(Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;Lcom/android/internal/logging/InstanceId;Landroid/view/SurfaceControl;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V

    .line 816
    .line 817
    .line 818
    invoke-static {v2, v4}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->notifyDragStarted()V

    .line 822
    .line 823
    .line 824
    :goto_d
    const/4 p0, 0x1

    .line 825
    return p0

    .line 826
    nop

    .line 827
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onLowMemory()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public supportsMultiWindow()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
