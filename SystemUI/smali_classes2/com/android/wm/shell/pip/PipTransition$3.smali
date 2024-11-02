.class public final Lcom/android/wm/shell/pip/PipTransition$3;
.super Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/PipTransition;

.field public final synthetic val$show:Z


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/PipTransition;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition$3;->this$0:Lcom/android/wm/shell/pip/PipTransition;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/wm/shell/pip/PipTransition$3;->val$show:Z

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handlePipTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float p4, p4, v0

    .line 3
    .line 4
    if-nez p4, :cond_1

    .line 5
    .line 6
    iget-boolean p4, p0, Lcom/android/wm/shell/pip/PipTransition$3;->val$show:Z

    .line 7
    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    iget p0, p3, Landroid/graphics/Rect;->left:I

    .line 11
    .line 12
    int-to-float p0, p0

    .line 13
    iget p3, p3, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    int-to-float p3, p3

    .line 16
    invoke-virtual {p2, p1, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition$3;->this$0:Lcom/android/wm/shell/pip/PipTransition;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    int-to-float p0, p0

    .line 41
    invoke-virtual {p2, p1, p0, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 45
    return p0
.end method
