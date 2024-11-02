.class public final Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# instance fields
.field public activeDragCount:I

.field public final context:Landroid/content/Context;

.field public final displayId:I

.field public final dndSnackBarController:Lcom/android/wm/shell/common/DnDSnackBarController;

.field public dragAndDropClientRecord:Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

.field public final dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

.field public dropTargetUiController:Lcom/android/wm/shell/draganddrop/IDropTargetUiController;

.field public final executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

.field public hideRequested:Z

.field public isHandlingDrag:Z

.field public mHasDrawn:Z

.field public final mHiddenDropTargetArea:Landroid/graphics/Rect;

.field public final rootView:Landroid/widget/FrameLayout;

.field public final smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

.field public final visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

.field public windowVisibility:I

.field public final wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/draganddrop/IDragLayout;)V
    .locals 9

    .line 1
    new-instance v6, Lcom/android/wm/shell/draganddrop/SmartTipController;

    invoke-direct {v6, p2}, Lcom/android/wm/shell/draganddrop/SmartTipController;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/android/wm/shell/common/DnDSnackBarController;

    invoke-direct {v7, p2}, Lcom/android/wm/shell/common/DnDSnackBarController;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    invoke-direct {v8, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;-><init>(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/draganddrop/IDragLayout;Lcom/android/wm/shell/draganddrop/SmartTipController;Lcom/android/wm/shell/common/DnDSnackBarController;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/draganddrop/IDragLayout;Lcom/android/wm/shell/draganddrop/SmartTipController;Lcom/android/wm/shell/common/DnDSnackBarController;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->mHiddenDropTargetArea:Landroid/graphics/Rect;

    .line 4
    iput p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->context:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->wm:Landroid/view/WindowManager;

    .line 7
    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    .line 8
    iput-object p5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 9
    iput-object p6, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

    .line 10
    iput-object p7, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dndSnackBarController:Lcom/android/wm/shell/common/DnDSnackBarController;

    .line 11
    iput-object p8, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    if-eqz p8, :cond_1

    .line 12
    iget-object p2, p8, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallbacks:Ljava/util/List;

    monitor-enter p2

    .line 13
    :try_start_0
    iget-object p3, p8, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallbacks:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 14
    iget-object p3, p8, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallbacks:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    new-instance p2, Lcom/android/wm/shell/draganddrop/VisibleTasks;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/draganddrop/VisibleTasks;-><init>(I)V

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 17
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    .line 19
    :goto_0
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->windowVisibility:I

    return-void
.end method


# virtual methods
.method public final onFrameDraw(J)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->mHasDrawn:Z

    .line 3
    .line 4
    return-void
.end method
