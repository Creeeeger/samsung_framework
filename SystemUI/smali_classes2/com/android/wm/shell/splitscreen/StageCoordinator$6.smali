.class public final Lcom/android/wm/shell/splitscreen/StageCoordinator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic val$bottomRightScreenshot:Landroid/view/SurfaceControl;

.field public final synthetic val$t:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$topLeftScreenshot:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$6;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$6;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$6;->val$topLeftScreenshot:Landroid/view/SurfaceControl;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$6;->val$bottomRightScreenshot:Landroid/view/SurfaceControl;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$6;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$6;->val$topLeftScreenshot:Landroid/view/SurfaceControl;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$6;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$6;->val$bottomRightScreenshot:Landroid/view/SurfaceControl;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$6;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$6;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$6;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
