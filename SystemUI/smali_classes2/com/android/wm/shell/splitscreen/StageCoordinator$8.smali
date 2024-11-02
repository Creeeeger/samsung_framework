.class public final Lcom/android/wm/shell/splitscreen/StageCoordinator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic val$cellDividerLeash:Landroid/view/SurfaceControl;

.field public final synthetic val$transaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$cellDividerLeash:Landroid/view/SurfaceControl;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$cellDividerLeash:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$cellDividerLeash:Landroid/view/SurfaceControl;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$cellDividerLeash:Landroid/view/SurfaceControl;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$cellDividerLeash:Landroid/view/SurfaceControl;

    .line 30
    .line 31
    const v1, 0x7fffffff

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$cellDividerLeash:Landroid/view/SurfaceControl;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefCellDividerBounds()Landroid/graphics/Rect;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 50
    .line 51
    int-to-float v1, v1

    .line 52
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefCellDividerBounds()Landroid/graphics/Rect;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 61
    .line 62
    int-to-float v2, v2

    .line 63
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$8;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 77
    .line 78
    .line 79
    return-void
.end method
