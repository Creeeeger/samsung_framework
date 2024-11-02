.class public final Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$BoundsChangeAdapter;
.super Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Root;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Root;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onAnimationUpdateInner(Landroid/view/SurfaceControl$Transaction;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mContentRelOffset:Landroid/graphics/Point;

    .line 8
    .line 9
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 10
    .line 11
    int-to-float v3, v3

    .line 12
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 13
    .line 14
    int-to-float v2, v2

    .line 15
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mMatrix:[F

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    .line 25
    .line 26
    invoke-virtual {p1, v3, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p1, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mVecs:[F

    .line 37
    .line 38
    const/4 v2, 0x2

    .line 39
    const/4 v4, 0x0

    .line 40
    aput v4, v1, v2

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    aput v4, v1, v2

    .line 44
    .line 45
    const/4 v2, 0x3

    .line 46
    const/high16 v4, 0x3f800000    # 1.0f

    .line 47
    .line 48
    aput v4, v1, v2

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    aput v4, v1, v5

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 58
    .line 59
    .line 60
    aget v6, v1, v5

    .line 61
    .line 62
    div-float v6, v4, v6

    .line 63
    .line 64
    aput v6, v1, v5

    .line 65
    .line 66
    aget v6, v1, v2

    .line 67
    .line 68
    div-float/2addr v4, v6

    .line 69
    aput v4, v1, v2

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 76
    .line 77
    int-to-float v4, v4

    .line 78
    aget v5, v1, v5

    .line 79
    .line 80
    mul-float/2addr v4, v5

    .line 81
    const/high16 v6, 0x3f000000    # 0.5f

    .line 82
    .line 83
    add-float/2addr v4, v6

    .line 84
    float-to-int v4, v4

    .line 85
    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mRect:Landroid/graphics/Rect;

    .line 86
    .line 87
    iput v4, p0, Landroid/graphics/Rect;->left:I

    .line 88
    .line 89
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 90
    .line 91
    int-to-float v4, v4

    .line 92
    mul-float/2addr v4, v5

    .line 93
    add-float/2addr v4, v6

    .line 94
    float-to-int v4, v4

    .line 95
    iput v4, p0, Landroid/graphics/Rect;->right:I

    .line 96
    .line 97
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 98
    .line 99
    int-to-float v4, v4

    .line 100
    aget v1, v1, v2

    .line 101
    .line 102
    mul-float/2addr v4, v1

    .line 103
    add-float/2addr v4, v6

    .line 104
    float-to-int v2, v4

    .line 105
    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 106
    .line 107
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 108
    .line 109
    int-to-float v0, v0

    .line 110
    mul-float/2addr v0, v1

    .line 111
    add-float/2addr v0, v6

    .line 112
    float-to-int v0, v0

    .line 113
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 114
    .line 115
    invoke-virtual {p1, v3, p0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 116
    .line 117
    .line 118
    return-void
.end method
