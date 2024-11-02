.class public final synthetic Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic f$4:F

.field public final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Rect;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Rect;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$3:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$4:F

    .line 13
    .line 14
    iput p6, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$5:F

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Rect;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$3:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    .line 9
    iget v4, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$4:F

    .line 10
    .line 11
    iget p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$5:F

    .line 12
    .line 13
    sget-object v5, Lcom/android/wm/shell/naturalswitching/DragTargetView;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Float;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    sget-object v5, Lcom/android/wm/shell/naturalswitching/DragTargetView;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    .line 29
    .line 30
    invoke-virtual {v5, p1, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 45
    .line 46
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 47
    .line 48
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 49
    .line 50
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 51
    .line 52
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    .line 58
    .line 59
    cmpl-float v1, v4, p0

    .line 60
    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    sub-float/2addr p0, v4

    .line 70
    mul-float/2addr p0, p1

    .line 71
    add-float/2addr p0, v4

    .line 72
    const/4 p1, 0x0

    .line 73
    invoke-virtual {v1, p0, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 74
    .line 75
    .line 76
    iget-object p0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 79
    .line 80
    .line 81
    iget-object p0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void
.end method
