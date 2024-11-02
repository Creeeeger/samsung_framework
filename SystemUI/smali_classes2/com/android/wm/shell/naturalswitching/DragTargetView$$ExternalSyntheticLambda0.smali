.class public final synthetic Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

.field public final synthetic f$1:Landroid/graphics/Point;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;Landroid/graphics/Point;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Point;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Point;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    sget-object v3, Lcom/android/wm/shell/naturalswitching/DragTargetView;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Float;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 25
    .line 26
    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 27
    .line 28
    int-to-float v2, v2

    .line 29
    mul-float/2addr v2, p1

    .line 30
    float-to-int v2, v2

    .line 31
    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 32
    .line 33
    int-to-float p0, p0

    .line 34
    mul-float/2addr p0, p1

    .line 35
    float-to-int p0, p0

    .line 36
    iput p0, v1, Landroid/graphics/Point;->y:I

    .line 37
    .line 38
    iget-object p0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 45
    .line 46
    int-to-float p1, p1

    .line 47
    add-float/2addr p0, p1

    .line 48
    int-to-float p1, v3

    .line 49
    sub-float/2addr p0, p1

    .line 50
    iget-object p1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 57
    .line 58
    int-to-float v1, v1

    .line 59
    add-float/2addr p1, v1

    .line 60
    int-to-float v1, v4

    .line 61
    sub-float/2addr p1, v1

    .line 62
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 63
    .line 64
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 65
    .line 66
    .line 67
    iget-object p0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 70
    .line 71
    .line 72
    iget-object p0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 75
    .line 76
    .line 77
    return-void
.end method
