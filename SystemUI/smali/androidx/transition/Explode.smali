.class public Landroidx/transition/Explode;
.super Landroidx/transition/Visibility;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final sAccelerate:Landroid/animation/TimeInterpolator;

.field public static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field public final mTempLoc:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 7
    .line 8
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 3
    new-instance v0, Landroidx/transition/CircularPropagation;

    invoke-direct {v0}, Landroidx/transition/CircularPropagation;-><init>()V

    .line 4
    iput-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 6
    iput-object p1, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 7
    new-instance p1, Landroidx/transition/CircularPropagation;

    invoke-direct {p1}, Landroidx/transition/CircularPropagation;-><init>()V

    .line 8
    iput-object p1, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    aget v0, p0, v0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    aget p0, p0, v2

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v2, v0

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/2addr v1, p0

    .line 26
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 27
    .line 28
    new-instance v3, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v3, v0, p0, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 31
    .line 32
    .line 33
    check-cast p1, Ljava/util/HashMap;

    .line 34
    .line 35
    const-string p0, "android:explode:screenBounds"

    .line 36
    .line 37
    invoke-virtual {p1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget v2, v0, v1

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    aget v0, v0, v3

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/transition/Transition$EpicenterCallback;->onGetEpicenter()Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    if-nez p0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    div-int/lit8 p0, p0, 0x2

    .line 31
    .line 32
    add-int/2addr p0, v2

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    add-int/2addr v4, p0

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    div-int/lit8 p0, p0, 0x2

    .line 47
    .line 48
    add-int/2addr p0, v0

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    add-int/2addr v5, p0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    sub-int/2addr p0, v4

    .line 76
    int-to-float p0, p0

    .line 77
    sub-int/2addr p2, v5

    .line 78
    int-to-float p2, p2

    .line 79
    const/4 v6, 0x0

    .line 80
    cmpl-float v7, p0, v6

    .line 81
    .line 82
    if-nez v7, :cond_2

    .line 83
    .line 84
    cmpl-float v6, p2, v6

    .line 85
    .line 86
    if-nez v6, :cond_2

    .line 87
    .line 88
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 89
    .line 90
    .line 91
    move-result-wide v6

    .line 92
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 93
    .line 94
    mul-double/2addr v6, v8

    .line 95
    double-to-float p0, v6

    .line 96
    const/high16 p2, 0x3f800000    # 1.0f

    .line 97
    .line 98
    sub-float/2addr p0, p2

    .line 99
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 100
    .line 101
    .line 102
    move-result-wide v6

    .line 103
    mul-double/2addr v6, v8

    .line 104
    double-to-float v6, v6

    .line 105
    sub-float p2, v6, p2

    .line 106
    .line 107
    :cond_2
    mul-float v6, p0, p0

    .line 108
    .line 109
    mul-float v7, p2, p2

    .line 110
    .line 111
    add-float/2addr v7, v6

    .line 112
    float-to-double v6, v7

    .line 113
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 114
    .line 115
    .line 116
    move-result-wide v6

    .line 117
    double-to-float v6, v6

    .line 118
    div-float/2addr p0, v6

    .line 119
    div-float/2addr p2, v6

    .line 120
    sub-int/2addr v4, v2

    .line 121
    sub-int/2addr v5, v0

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    sub-int/2addr v0, v4

    .line 127
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    sub-int/2addr p1, v5

    .line 136
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    int-to-float v0, v0

    .line 141
    int-to-float p1, p1

    .line 142
    mul-float/2addr v0, v0

    .line 143
    mul-float/2addr p1, p1

    .line 144
    add-float/2addr p1, v0

    .line 145
    float-to-double v4, p1

    .line 146
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 147
    .line 148
    .line 149
    move-result-wide v4

    .line 150
    double-to-float p1, v4

    .line 151
    mul-float/2addr p0, p1

    .line 152
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    aput p0, p3, v1

    .line 157
    .line 158
    mul-float/2addr p1, p2

    .line 159
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    aput p0, p3, v3

    .line 164
    .line 165
    return-void
.end method

.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/transition/Explode;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/transition/Explode;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    iget-object p3, p4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 6
    .line 7
    const-string v0, "android:explode:screenBounds"

    .line 8
    .line 9
    check-cast p3, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    check-cast p3, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    iget-object v0, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 26
    .line 27
    invoke-virtual {p0, p1, p3, v0}, Landroidx/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    aget v0, p1, v0

    .line 34
    .line 35
    int-to-float v0, v0

    .line 36
    add-float v4, v6, v0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    aget p1, p1, v0

    .line 40
    .line 41
    int-to-float p1, p1

    .line 42
    add-float v5, v7, p1

    .line 43
    .line 44
    iget v2, p3, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    iget v3, p3, Landroid/graphics/Rect;->top:I

    .line 47
    .line 48
    sget-object v8, Landroidx/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 49
    .line 50
    move-object v0, p2

    .line 51
    move-object v1, p4

    .line 52
    move-object v9, p0

    .line 53
    invoke-static/range {v0 .. v9}, Landroidx/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public final onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 11

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    iget-object v0, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 6
    .line 7
    const-string v1, "android:explode:screenBounds"

    .line 8
    .line 9
    check-cast v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/graphics/Rect;

    .line 16
    .line 17
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 18
    .line 19
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    iget-object v1, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 30
    .line 31
    const v2, 0x7f0a0c22

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, [I

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    const/4 v7, 0x0

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    aget v8, v1, v7

    .line 45
    .line 46
    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 47
    .line 48
    sub-int v9, v8, v9

    .line 49
    .line 50
    int-to-float v9, v9

    .line 51
    add-float/2addr v9, v5

    .line 52
    aget v1, v1, v2

    .line 53
    .line 54
    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 55
    .line 56
    sub-int v10, v1, v10

    .line 57
    .line 58
    int-to-float v10, v10

    .line 59
    add-float/2addr v10, v6

    .line 60
    invoke-virtual {v0, v8, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    move v9, v5

    .line 65
    move v10, v6

    .line 66
    :goto_0
    iget-object v1, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 67
    .line 68
    invoke-virtual {p0, p1, v0, v1}, Landroidx/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Landroidx/transition/Explode;->mTempLoc:[I

    .line 72
    .line 73
    aget v0, p1, v7

    .line 74
    .line 75
    int-to-float v0, v0

    .line 76
    add-float v7, v9, v0

    .line 77
    .line 78
    aget p1, p1, v2

    .line 79
    .line 80
    int-to-float p1, p1

    .line 81
    add-float v8, v10, p1

    .line 82
    .line 83
    sget-object v9, Landroidx/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 84
    .line 85
    move-object v1, p2

    .line 86
    move-object v2, p3

    .line 87
    move-object v10, p0

    .line 88
    invoke-static/range {v1 .. v10}, Landroidx/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method
