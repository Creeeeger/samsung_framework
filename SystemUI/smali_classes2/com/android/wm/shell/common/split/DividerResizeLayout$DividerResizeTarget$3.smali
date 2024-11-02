.class public final Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

.field public final synthetic val$fromOutlineInset:Landroid/graphics/Rect;

.field public final synthetic val$toOutlineInset:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$3;->this$1:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$3;->val$fromOutlineInset:Landroid/graphics/Rect;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$3;->val$toOutlineInset:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$3;->val$fromOutlineInset:Landroid/graphics/Rect;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$3;->val$toOutlineInset:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$3;->this$1:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mOutlineInsets:Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$3;->this$1:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mView:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidateOutline()V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$3;->this$1:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mBlurView:Landroid/widget/ImageView;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidateOutline()V

    .line 40
    .line 41
    .line 42
    return-void
.end method
