.class public final Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

.field public final synthetic val$blpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic val$startBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$startBounds:Landroid/graphics/Rect;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$blpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

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
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$startBounds:Landroid/graphics/Rect;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$blpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 32
    .line 33
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$blpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 44
    .line 45
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$blpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 50
    .line 51
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 52
    .line 53
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 54
    .line 55
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 56
    .line 57
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 58
    .line 59
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 60
    .line 61
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$blpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 80
    .line 81
    iget-object v0, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 82
    .line 83
    invoke-static {p1, v0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->-$$Nest$mupdateImageMatrix(Lcom/android/wm/shell/naturalswitching/NonDragTarget;Landroid/widget/ImageView;)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    .line 89
    .line 90
    invoke-static {p0, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->-$$Nest$mupdateImageMatrix(Lcom/android/wm/shell/naturalswitching/NonDragTarget;Landroid/widget/ImageView;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method
