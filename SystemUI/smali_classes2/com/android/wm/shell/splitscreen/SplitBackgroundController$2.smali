.class public final Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

.field public final synthetic val$fromAlpha:F

.field public final synthetic val$st:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$visible:Z


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;ZFLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->val$visible:Z

    .line 4
    .line 5
    iput p3, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->val$fromAlpha:F

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->val$st:Landroid/view/SurfaceControl$Transaction;

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
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->val$visible:Z

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    .line 8
    .line 9
    iget-boolean v0, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mVisible:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mVisible:Z

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->val$st:Landroid/view/SurfaceControl$Transaction;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->apply(Landroid/view/SurfaceControl$Transaction;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->val$st:Landroid/view/SurfaceControl$Transaction;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->val$visible:Z

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    .line 8
    .line 9
    iget v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->val$fromAlpha:F

    .line 10
    .line 11
    iget v2, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mAlpha:F

    .line 12
    .line 13
    cmpl-float v2, v2, v1

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iput v1, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mAlpha:F

    .line 19
    .line 20
    iput-boolean v3, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundColor()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    .line 26
    .line 27
    iget-object v0, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColor:[F

    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    .line 32
    .line 33
    if-eq v1, p1, :cond_1

    .line 34
    .line 35
    iput-object p1, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    .line 36
    .line 37
    iput-boolean v3, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    .line 38
    .line 39
    :cond_1
    iget-boolean p1, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mVisible:Z

    .line 40
    .line 41
    if-eq p1, v3, :cond_2

    .line 42
    .line 43
    iput-boolean v3, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mVisible:Z

    .line 44
    .line 45
    iput-boolean v3, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    .line 46
    .line 47
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$2;->val$st:Landroid/view/SurfaceControl$Transaction;

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->apply(Landroid/view/SurfaceControl$Transaction;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method
