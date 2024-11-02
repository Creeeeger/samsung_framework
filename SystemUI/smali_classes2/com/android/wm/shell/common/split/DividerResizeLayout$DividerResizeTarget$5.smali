.class public final Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

.field public final synthetic val$startBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$5;->this$1:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$5;->val$startBounds:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    sget-object v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$5;->val$startBounds:Landroid/graphics/Rect;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$5;->this$1:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$5;->this$1:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->updateViewBounds(Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
