.class public final Lcom/android/wm/shell/splitscreen/SplitScreenController$3;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final synthetic val$position:I

.field public final synthetic val$result:[I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;[II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;->val$result:[I

    .line 4
    .line 5
    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;->val$position:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 3

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    const-string p3, "SplitScreenController"

    .line 7
    .line 8
    const-string p4, "Failed to invoke onAnimationFinished"

    .line 9
    .line 10
    invoke-static {p3, p4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;->val$result:[I

    .line 14
    .line 15
    const/4 p3, 0x0

    .line 16
    aget p1, p1, p3

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 p3, 0x2

    .line 21
    if-ne p1, p3, :cond_2

    .line 22
    .line 23
    :cond_0
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 29
    .line 30
    iget-object p3, p3, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 31
    .line 32
    iget p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;->val$position:I

    .line 33
    .line 34
    iget p5, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 35
    .line 36
    if-ne p4, p5, :cond_1

    .line 37
    .line 38
    iget-object p3, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 39
    .line 40
    invoke-virtual {p3, p2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object p3, p3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 45
    .line 46
    invoke-virtual {p3, p2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$3;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method
