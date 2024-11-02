.class public final synthetic Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:F

.field public final synthetic f$6:F

.field public final synthetic f$7:F

.field public final synthetic f$8:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$9:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FFFFLandroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceControl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$2:F

    .line 9
    .line 10
    iput p4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$3:F

    .line 11
    .line 12
    iput p5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$4:F

    .line 13
    .line 14
    iput p6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$5:F

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$6:F

    .line 18
    .line 19
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$7:F

    .line 20
    .line 21
    iput-object p7, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$8:Landroid/view/SurfaceControl$Transaction;

    .line 22
    .line 23
    iput-object p8, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$9:Landroid/graphics/Rect;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$2:F

    .line 6
    .line 7
    iget v3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$3:F

    .line 8
    .line 9
    iget v4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$4:F

    .line 10
    .line 11
    iget v5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$5:F

    .line 12
    .line 13
    iget v6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$6:F

    .line 14
    .line 15
    iget v7, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$7:F

    .line 16
    .line 17
    iget-object v8, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$8:Landroid/view/SurfaceControl$Transaction;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger$$ExternalSyntheticLambda0;->f$9:Landroid/graphics/Rect;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Float;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget v9, v1, Landroid/graphics/Rect;->left:I

    .line 35
    .line 36
    int-to-float v9, v9

    .line 37
    mul-float/2addr v2, p1

    .line 38
    add-float/2addr v2, v9

    .line 39
    iget v9, v1, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    int-to-float v9, v9

    .line 42
    mul-float/2addr v3, p1

    .line 43
    add-float/2addr v3, v9

    .line 44
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    int-to-float v9, v9

    .line 49
    mul-float/2addr v4, p1

    .line 50
    add-float/2addr v4, v9

    .line 51
    float-to-int v4, v4

    .line 52
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    int-to-float v1, v1

    .line 57
    mul-float/2addr v5, p1

    .line 58
    add-float/2addr v5, v1

    .line 59
    float-to-int v1, v5

    .line 60
    const/4 v5, 0x0

    .line 61
    cmpl-float v9, v6, v5

    .line 62
    .line 63
    if-nez v9, :cond_1

    .line 64
    .line 65
    cmpl-float v5, v7, v5

    .line 66
    .line 67
    if-nez v5, :cond_1

    .line 68
    .line 69
    invoke-virtual {v8, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v8, v0, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    mul-float/2addr v6, p1

    .line 77
    float-to-int v5, v6

    .line 78
    mul-float/2addr p1, v7

    .line 79
    float-to-int p1, p1

    .line 80
    int-to-float v6, v5

    .line 81
    add-float/2addr v2, v6

    .line 82
    int-to-float v6, p1

    .line 83
    add-float/2addr v3, v6

    .line 84
    invoke-virtual {v8, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 85
    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0, v2, v2, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 89
    .line 90
    .line 91
    neg-int v1, v5

    .line 92
    neg-int p1, p1

    .line 93
    invoke-virtual {p0, v1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 97
    .line 98
    .line 99
    :goto_0
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 100
    .line 101
    .line 102
    :goto_1
    return-void
.end method
