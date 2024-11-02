.class public Lcom/android/wm/shell/naturalswitching/NonDragTarget;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final BLUR_PRESET:[F

.field public static final DARK_BLUR_PRESET:[F

.field public static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;


# instance fields
.field public mAnimatingExit:Z

.field public mAnimator:Landroid/animation/ValueAnimator;

.field public final mBaseBounds:Landroid/graphics/Rect;

.field public mBlurAnimator:Landroid/animation/ValueAnimator;

.field public mBlurView:Landroid/widget/ImageView;

.field public final mCurrentOutlineInsets:Landroid/graphics/Rect;

.field public final mDownScale:Landroid/graphics/PointF;

.field public mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

.field public final mEndBounds:Landroid/graphics/Rect;

.field public mHasProtectedContent:Z

.field public final mInitialOutlineInsets:Landroid/graphics/Rect;

.field public mInsetsInitialized:Z

.field public mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

.field public mNsWindowingMode:I

.field public final mOriginBounds:Landroid/graphics/Rect;

.field public mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

.field public final mOutlineProvider:Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;

.field public final mPolygon:Ljava/util/ArrayList;

.field public mStagePosition:I

.field public final mTargetOutlineInsets:Landroid/graphics/Rect;

.field public mTaskId:I

.field public final mTmpInsetsRect:Landroid/graphics/Rect;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mTransitAnimator:Landroid/animation/ValueAnimator;

.field public mView:Landroid/widget/ImageView;


# direct methods
.method public static -$$Nest$mupdateImageMatrix(Lcom/android/wm/shell/naturalswitching/NonDragTarget;Landroid/widget/ImageView;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mInitialOutlineInsets:Landroid/graphics/Rect;

    .line 13
    .line 14
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpRect:Landroid/graphics/Rect;

    .line 26
    .line 27
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 28
    .line 29
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 30
    .line 31
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 32
    .line 33
    add-int/2addr v6, v4

    .line 34
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 35
    .line 36
    add-int/2addr v2, v5

    .line 37
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpRect:Landroid/graphics/Rect;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpRect:Landroid/graphics/Rect;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    int-to-float v2, v2

    .line 63
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    int-to-float v3, v3

    .line 70
    div-float/2addr v2, v3

    .line 71
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpRect:Landroid/graphics/Rect;

    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    int-to-float v3, v3

    .line 78
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    int-to-float p0, p0

    .line 85
    div-float/2addr v3, p0

    .line 86
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 87
    .line 88
    .line 89
    :cond_0
    const/4 p0, 0x0

    .line 90
    int-to-float v1, v1

    .line 91
    invoke-virtual {v0, p0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/animation/RectEvaluator;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    .line 12
    .line 13
    const/4 v0, 0x7

    .line 14
    new-array v1, v0, [F

    .line 15
    .line 16
    fill-array-data v1, :array_0

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->BLUR_PRESET:[F

    .line 20
    .line 21
    new-array v0, v0, [F

    .line 22
    .line 23
    fill-array-data v0, :array_1

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->DARK_BLUR_PRESET:[F

    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 4
        0x437a0000    # 250.0f
        0x0
        0x41000000    # 8.0f
        0x41eb3333    # 29.4f
        0x437f0000    # 255.0f
        0x0
        0x43658000    # 229.5f
    .end array-data

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    :array_1
    .array-data 4
        0x437a0000    # 250.0f
        0x0
        0x41000000    # 8.0f
        0x41eb3333    # 29.4f
        0x437f0000    # 255.0f
        0x0
        0x4358cccd    # 216.8f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mStagePosition:I

    .line 6
    .line 7
    new-instance p2, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpRect:Landroid/graphics/Rect;

    .line 13
    .line 14
    new-instance p2, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 20
    .line 21
    new-instance p2, Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    .line 27
    .line 28
    new-instance p2, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    .line 34
    .line 35
    new-instance p2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mPolygon:Ljava/util/ArrayList;

    .line 41
    .line 42
    new-instance p2, Landroid/graphics/PointF;

    .line 43
    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    .line 45
    .line 46
    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 47
    .line 48
    .line 49
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDownScale:Landroid/graphics/PointF;

    .line 50
    .line 51
    iput-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mInsetsInitialized:Z

    .line 52
    .line 53
    iput-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mHasProtectedContent:Z

    .line 54
    .line 55
    new-instance p1, Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mInitialOutlineInsets:Landroid/graphics/Rect;

    .line 61
    .line 62
    new-instance p1, Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    .line 68
    .line 69
    new-instance p1, Landroid/graphics/Rect;

    .line 70
    .line 71
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTargetOutlineInsets:Landroid/graphics/Rect;

    .line 75
    .line 76
    new-instance p1, Landroid/graphics/Rect;

    .line 77
    .line 78
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 85
    .line 86
    new-instance p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;

    .line 87
    .line 88
    invoke-direct {p1, p0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineProvider:Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;

    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public final animate(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 13
    .line 14
    .line 15
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->getCurrentLayoutBounds(Landroid/graphics/Rect;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 50
    .line 51
    const/4 v2, 0x2

    .line 52
    new-array v3, v2, [F

    .line 53
    .line 54
    fill-array-data v3, :array_0

    .line 55
    .line 56
    .line 57
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iput-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    .line 62
    .line 63
    new-instance v4, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;

    .line 64
    .line 65
    invoke-direct {v4, p0, v0, v1, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    new-instance v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$3;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget$3;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    .line 82
    .line 83
    sget-object v0, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    .line 89
    .line 90
    const-wide/16 v0, 0x15e

    .line 91
    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 98
    .line 99
    .line 100
    iget-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mHasProtectedContent:Z

    .line 101
    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/widget/ImageView;->getAlpha()F

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    const/4 v0, 0x0

    .line 113
    cmpl-float p1, p1, v0

    .line 114
    .line 115
    const/4 v0, 0x1

    .line 116
    const/4 v1, 0x0

    .line 117
    if-lez p1, :cond_4

    .line 118
    .line 119
    move p1, v0

    .line 120
    goto :goto_0

    .line 121
    :cond_4
    move p1, v1

    .line 122
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 123
    .line 124
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    .line 129
    .line 130
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-ne v3, v4, :cond_6

    .line 135
    .line 136
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 137
    .line 138
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    .line 143
    .line 144
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eq v3, v4, :cond_5

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_5
    move v0, v1

    .line 152
    :cond_6
    :goto_1
    if-ne p1, v0, :cond_7

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_7
    if-eqz v0, :cond_8

    .line 156
    .line 157
    new-array p1, v2, [F

    .line 158
    .line 159
    fill-array-data p1, :array_1

    .line 160
    .line 161
    .line 162
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    goto :goto_2

    .line 167
    :cond_8
    new-array p1, v2, [F

    .line 168
    .line 169
    fill-array-data p1, :array_2

    .line 170
    .line 171
    .line 172
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    :goto_2
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 177
    .line 178
    new-instance v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget$4;

    .line 179
    .line 180
    invoke-direct {v1, p0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget$4;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 187
    .line 188
    new-instance v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget$5;

    .line 189
    .line 190
    invoke-direct {v1, p0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget$5;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 197
    .line 198
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 199
    .line 200
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 207
    .line 208
    const-wide/16 v1, 0x64

    .line 209
    .line 210
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 211
    .line 212
    .line 213
    if-nez v0, :cond_9

    .line 214
    .line 215
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 216
    .line 217
    const-wide/16 v0, 0xfa

    .line 218
    .line 219
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 220
    .line 221
    .line 222
    :cond_9
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurAnimator:Landroid/animation/ValueAnimator;

    .line 223
    .line 224
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 225
    .line 226
    .line 227
    :goto_3
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->startOutlineInsetsAnimationIfNeeded()V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final getCurrentLayoutBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;IILandroid/graphics/Rect;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 2
    iput p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTaskId:I

    .line 3
    iput p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    .line 4
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 8
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 9
    iget-object p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDownScale:Landroid/graphics/PointF;

    iget-object p4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 10
    iget p4, p4, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mScaleDeltaSize:I

    sub-int v0, p1, p4

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 11
    iput v0, p3, Landroid/graphics/PointF;->x:F

    sub-int p1, p2, p4

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 12
    iput p1, p3, Landroid/graphics/PointF;->y:F

    .line 13
    :cond_0
    iput p5, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mStagePosition:I

    return-void
.end method

.method public final init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;Landroid/graphics/Rect;Ljava/util/ArrayList;I)V
    .locals 6

    const/16 v3, 0xd

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p4

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;IILandroid/graphics/Rect;I)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mPolygon:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final initForTaskOnly(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;Landroid/graphics/Rect;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 2
    .line 3
    iput p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    const v0, 0x7f070a47

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const v1, 0x7f070a46

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sub-int/2addr p1, p3

    .line 40
    div-int/lit8 p1, p1, 0x2

    .line 41
    .line 42
    sub-int/2addr p2, v0

    .line 43
    div-int/lit8 p2, p2, 0x2

    .line 44
    .line 45
    new-instance v1, Landroid/graphics/Rect;

    .line 46
    .line 47
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 48
    .line 49
    .line 50
    add-int/2addr p3, p1

    .line 51
    add-int/2addr v0, p2

    .line 52
    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 74
    .line 75
    iget p2, v1, Landroid/graphics/Rect;->left:I

    .line 76
    .line 77
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 78
    .line 79
    iget p2, v1, Landroid/graphics/Rect;->top:I

    .line 80
    .line 81
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->setDropTargetView()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0752

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 14
    .line 15
    const v0, 0x7f0a0753

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    .line 25
    .line 26
    return-void
.end method

.method public final setDropTargetView()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d00d4

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    .line 22
    .line 23
    const v3, 0x7f1304eb

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    const/4 v3, -0x2

    .line 32
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 33
    .line 34
    .line 35
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 36
    .line 37
    int-to-float v3, v3

    .line 38
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setX(F)V

    .line 39
    .line 40
    .line 41
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 42
    .line 43
    int-to-float v3, v3

    .line 44
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setY(F)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    .line 68
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mView:Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->getBackgroundResourceId()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 75
    .line 76
    .line 77
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DropTargetView;->mPartialBlurView:Landroid/widget/ImageView;

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->showBlurEffect()V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 99
    .line 100
    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineProvider:Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final setThumbnail()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineProvider:Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineProvider:Lcom/android/wm/shell/naturalswitching/NonDragTarget$1;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTaskId:I

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->hasProtectedContent()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    iput-boolean v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mHasProtectedContent:Z

    .line 54
    .line 55
    :cond_0
    iget-boolean v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mHasProtectedContent:Z

    .line 56
    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const v2, 0x7f0604b9

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const v2, 0x7f080cb9

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    const/16 v0, 0x4c

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_1
    if-eqz v0, :cond_5

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->getSnapshotBitmap()Landroid/graphics/Bitmap;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    if-eqz v3, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->getSnapshotBitmap()Landroid/graphics/Bitmap;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    new-instance v4, Lcom/samsung/android/graphics/SemGfxImageFilter;

    .line 118
    .line 119
    invoke-direct {v4}, Lcom/samsung/android/graphics/SemGfxImageFilter;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 131
    .line 132
    and-int/lit8 v3, v3, 0x20

    .line 133
    .line 134
    if-eqz v3, :cond_2

    .line 135
    .line 136
    move v3, v1

    .line 137
    goto :goto_0

    .line 138
    :cond_2
    move v3, v2

    .line 139
    :goto_0
    if-eqz v3, :cond_3

    .line 140
    .line 141
    sget-object v3, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->DARK_BLUR_PRESET:[F

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    sget-object v3, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->BLUR_PRESET:[F

    .line 145
    .line 146
    :goto_1
    aget v2, v3, v2

    .line 147
    .line 148
    invoke-virtual {v4, v2}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    .line 149
    .line 150
    .line 151
    aget v1, v3, v1

    .line 152
    .line 153
    invoke-virtual {v4, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setProportionalSaturation(F)V

    .line 154
    .line 155
    .line 156
    const/4 v1, 0x2

    .line 157
    aget v1, v3, v1

    .line 158
    .line 159
    invoke-virtual {v4, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveLevel(F)V

    .line 160
    .line 161
    .line 162
    const/4 v1, 0x3

    .line 163
    aget v1, v3, v1

    .line 164
    .line 165
    invoke-virtual {v4, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinX(F)V

    .line 166
    .line 167
    .line 168
    const/4 v1, 0x4

    .line 169
    aget v1, v3, v1

    .line 170
    .line 171
    invoke-virtual {v4, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxX(F)V

    .line 172
    .line 173
    .line 174
    const/4 v1, 0x5

    .line 175
    aget v1, v3, v1

    .line 176
    .line 177
    invoke-virtual {v4, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinY(F)V

    .line 178
    .line 179
    .line 180
    const/4 v1, 0x6

    .line 181
    aget v1, v3, v1

    .line 182
    .line 183
    invoke-virtual {v4, v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxY(F)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->applyToBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    .line 191
    .line 192
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    .line 194
    .line 195
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    .line 196
    .line 197
    if-eqz v1, :cond_4

    .line 198
    .line 199
    move-object v0, v1

    .line 200
    :cond_4
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 201
    .line 202
    .line 203
    :cond_5
    :goto_2
    return-void
.end method

.method public final startOutlineInsetsAnimationIfNeeded()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mInsetsInitialized:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 15
    .line 16
    iget v3, v2, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 17
    .line 18
    iget v2, v2, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-le v3, v2, :cond_0

    .line 22
    .line 23
    move v2, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v4

    .line 26
    :goto_0
    xor-int/2addr v2, v1

    .line 27
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    .line 39
    .line 40
    :goto_1
    iget-object v5, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 41
    .line 42
    iget-object v5, v5, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    .line 43
    .line 44
    iget v6, v3, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 47
    .line 48
    if-ge v6, v7, :cond_2

    .line 49
    .line 50
    iget-object v8, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    .line 51
    .line 52
    sub-int/2addr v7, v6

    .line 53
    iput v7, v8, Landroid/graphics/Rect;->left:I

    .line 54
    .line 55
    :cond_2
    iget v6, v3, Landroid/graphics/Rect;->top:I

    .line 56
    .line 57
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 58
    .line 59
    if-ge v6, v7, :cond_3

    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    iget-object v8, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    .line 64
    .line 65
    sub-int/2addr v7, v6

    .line 66
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 67
    .line 68
    :cond_3
    iget v6, v3, Landroid/graphics/Rect;->right:I

    .line 69
    .line 70
    iget v7, v5, Landroid/graphics/Rect;->right:I

    .line 71
    .line 72
    if-le v6, v7, :cond_4

    .line 73
    .line 74
    iget-object v8, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    .line 75
    .line 76
    sub-int/2addr v6, v7

    .line 77
    iput v6, v8, Landroid/graphics/Rect;->right:I

    .line 78
    .line 79
    :cond_4
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 80
    .line 81
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 82
    .line 83
    if-le v3, v5, :cond_5

    .line 84
    .line 85
    iget-object v6, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    .line 86
    .line 87
    sub-int/2addr v3, v5

    .line 88
    iput v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 89
    .line 90
    if-eqz v2, :cond_5

    .line 91
    .line 92
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mInitialOutlineInsets:Landroid/graphics/Rect;

    .line 93
    .line 94
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 95
    .line 96
    if-lez v2, :cond_5

    .line 97
    .line 98
    sub-int/2addr v3, v2

    .line 99
    iput v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 100
    .line 101
    :cond_5
    iget-boolean v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mInsetsInitialized:Z

    .line 102
    .line 103
    if-nez v2, :cond_6

    .line 104
    .line 105
    iput-boolean v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mInsetsInitialized:Z

    .line 106
    .line 107
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mInitialOutlineInsets:Landroid/graphics/Rect;

    .line 108
    .line 109
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    .line 113
    .line 114
    :cond_6
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTargetOutlineInsets:Landroid/graphics/Rect;

    .line 115
    .line 116
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-nez v2, :cond_7

    .line 123
    .line 124
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTargetOutlineInsets:Landroid/graphics/Rect;

    .line 125
    .line 126
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTmpInsetsRect:Landroid/graphics/Rect;

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_7
    move v1, v4

    .line 133
    :goto_2
    if-nez v1, :cond_8

    .line 134
    .line 135
    return-void

    .line 136
    :cond_8
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 137
    .line 138
    if-eqz v1, :cond_9

    .line 139
    .line 140
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 141
    .line 142
    .line 143
    :cond_9
    new-instance v1, Landroid/graphics/Rect;

    .line 144
    .line 145
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    .line 146
    .line 147
    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 148
    .line 149
    .line 150
    new-instance v2, Landroid/graphics/Rect;

    .line 151
    .line 152
    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mTargetOutlineInsets:Landroid/graphics/Rect;

    .line 153
    .line 154
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 155
    .line 156
    .line 157
    const/4 v3, 0x2

    .line 158
    new-array v3, v3, [F

    .line 159
    .line 160
    fill-array-data v3, :array_0

    .line 161
    .line 162
    .line 163
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    iput-object v3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 168
    .line 169
    new-instance v4, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;

    .line 170
    .line 171
    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 178
    .line 179
    new-instance v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget$7;

    .line 180
    .line 181
    invoke-direct {v1, p0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget$7;-><init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 188
    .line 189
    sget-object v1, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 195
    .line 196
    const-wide/16 v1, 0x96

    .line 197
    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 199
    .line 200
    .line 201
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOutlineInsetsAnimator:Landroid/animation/ValueAnimator;

    .line 202
    .line 203
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NonDragTarget{Mode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mBaseBounds="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", hasDropTarget="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    const-string/jumbo v1, "}"

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
