.class public final Landroidx/transition/ChangeBounds$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mIsCanceled:Z

.field public final synthetic val$endBottom:I

.field public final synthetic val$endLeft:I

.field public final synthetic val$endRight:I

.field public final synthetic val$endTop:I

.field public final synthetic val$finalClip:Landroid/graphics/Rect;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    .line 2
    .line 3
    iput-object p3, p0, Landroidx/transition/ChangeBounds$8;->val$finalClip:Landroid/graphics/Rect;

    .line 4
    .line 5
    iput p4, p0, Landroidx/transition/ChangeBounds$8;->val$endLeft:I

    .line 6
    .line 7
    iput p5, p0, Landroidx/transition/ChangeBounds$8;->val$endTop:I

    .line 8
    .line 9
    iput p6, p0, Landroidx/transition/ChangeBounds$8;->val$endRight:I

    .line 10
    .line 11
    iput p7, p0, Landroidx/transition/ChangeBounds$8;->val$endBottom:I

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/transition/ChangeBounds$8;->mIsCanceled:Z

    .line 3
    .line 4
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Landroidx/transition/ChangeBounds$8;->mIsCanceled:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/transition/ChangeBounds$8;->val$finalClip:Landroid/graphics/Rect;

    .line 8
    .line 9
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat$Api18Impl;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroidx/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    .line 15
    .line 16
    iget v0, p0, Landroidx/transition/ChangeBounds$8;->val$endLeft:I

    .line 17
    .line 18
    iget v1, p0, Landroidx/transition/ChangeBounds$8;->val$endTop:I

    .line 19
    .line 20
    iget v2, p0, Landroidx/transition/ChangeBounds$8;->val$endRight:I

    .line 21
    .line 22
    iget p0, p0, Landroidx/transition/ChangeBounds$8;->val$endBottom:I

    .line 23
    .line 24
    invoke-static {p1, v0, v1, v2, p0}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
