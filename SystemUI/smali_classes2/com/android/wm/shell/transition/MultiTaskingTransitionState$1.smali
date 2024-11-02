.class public final Lcom/android/wm/shell/transition/MultiTaskingTransitionState$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic val$targetPoint:Landroid/graphics/PointF;

.field public final synthetic val$taskId:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/MultiTaskingTransitionState;ILandroid/graphics/PointF;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput p2, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState$1;->val$taskId:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState$1;->val$targetPoint:Landroid/graphics/PointF;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState$1;->val$taskId:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/transition/MultiTaskingTransitionState$1;->val$targetPoint:Landroid/graphics/PointF;

    .line 8
    .line 9
    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->notifyFreeformMinimizeAnimationEnd(ILandroid/graphics/PointF;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method
