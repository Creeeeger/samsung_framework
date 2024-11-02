.class public final synthetic Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

.field public final synthetic f$1:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:J

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;JF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;->f$1:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Rect;

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;->f$3:J

    .line 11
    .line 12
    iput p6, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;->f$4:F

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v7, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 2
    .line 3
    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;->f$1:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Rect;

    .line 6
    .line 7
    iget-wide v8, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;->f$3:J

    .line 8
    .line 9
    iget v6, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;->f$4:F

    .line 10
    .line 11
    sget-object p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    .line 12
    .line 13
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object p0, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 17
    .line 18
    iget-object v0, v7, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, v7, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    :cond_0
    iget-boolean v0, v7, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mAnimatingExit:Z

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-boolean v0, v7, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mIsDragEndCalled:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, v7, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mAnimatingExit:Z

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {v7, v0}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->startSpringAnimation(Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, v7, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, v7, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTmpFloats:[F

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v7, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTmpFloats:[F

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    aget v5, v0, v1

    .line 58
    .line 59
    new-instance v2, Landroid/graphics/Rect;

    .line 60
    .line 61
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v0, v7, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 67
    .line 68
    .line 69
    new-array v0, v1, [F

    .line 70
    .line 71
    fill-array-data v0, :array_0

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    iput-object v10, v7, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    new-instance v11, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;

    .line 81
    .line 82
    move-object v0, v11

    .line 83
    move-object v1, v7

    .line 84
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;FF)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, v7, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 91
    .line 92
    new-instance v1, Lcom/android/wm/shell/naturalswitching/DragTargetView$2;

    .line 93
    .line 94
    invoke-direct {v1, v7}, Lcom/android/wm/shell/naturalswitching/DragTargetView$2;-><init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, v7, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    .line 104
    .line 105
    iget-object p0, v7, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 106
    .line 107
    invoke-virtual {p0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 108
    .line 109
    .line 110
    iget-object p0, v7, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    nop

    .line 117
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
