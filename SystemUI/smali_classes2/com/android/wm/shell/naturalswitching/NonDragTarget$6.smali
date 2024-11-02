.class public final Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

.field public final synthetic val$fromOutlineInset:Landroid/graphics/Rect;

.field public final synthetic val$isFirstTransition:Z

.field public final synthetic val$toOutlineInset:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->val$fromOutlineInset:Landroid/graphics/Rect;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->val$toOutlineInset:Landroid/graphics/Rect;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->val$isFirstTransition:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
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
    sget-object v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->val$fromOutlineInset:Landroid/graphics/Rect;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->val$toOutlineInset:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidateOutline()V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidateOutline()V

    .line 40
    .line 41
    .line 42
    iget-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->val$isFirstTransition:Z

    .line 43
    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 47
    .line 48
    iget-object v0, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 49
    .line 50
    invoke-static {p1, v0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->-$$Nest$mupdateImageMatrix(Lcom/android/wm/shell/naturalswitching/NonDragTarget;Landroid/widget/ImageView;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    .line 56
    .line 57
    invoke-static {p0, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->-$$Nest$mupdateImageMatrix(Lcom/android/wm/shell/naturalswitching/NonDragTarget;Landroid/widget/ImageView;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method
