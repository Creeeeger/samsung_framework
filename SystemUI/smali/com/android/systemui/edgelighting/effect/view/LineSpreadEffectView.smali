.class public Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;
.super Landroid/view/View;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAnimatorSet:Landroid/animation/AnimatorSet;

.field public mColor:I

.field public final mCurRect:Landroid/graphics/Rect;

.field public mFinalRadius:F

.field public mLineWidth:F

.field public mMoveHeight:F

.field public mMoveWidth:F

.field public final mPercentArr:[F

.field public mRadius:F

.field public mSquarePaint1:Landroid/graphics/Paint;

.field public mSquarePaint2:Landroid/graphics/Paint;

.field public mSquarePaint3:Landroid/graphics/Paint;

.field public final mTimeTable:[[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    const-string p1, "LineSpreadEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->TAG:Ljava/lang/String;

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mCurRect:Landroid/graphics/Rect;

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 4
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mPercentArr:[F

    const/16 p1, 0x13d

    const/16 v0, 0x898

    const/16 v1, 0x75

    .line 5
    filled-new-array {v1, p1, v0}, [I

    move-result-object p1

    const/16 v0, 0x1d4

    const/16 v1, 0xc80

    const/16 v2, 0xc0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    const/16 v1, 0x262

    const/16 v2, 0x1068

    const/16 v3, 0xfb

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    filled-new-array {p1, v0, v1}, [[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mTimeTable:[[I

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    const-string p1, "LineSpreadEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->TAG:Ljava/lang/String;

    .line 9
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mCurRect:Landroid/graphics/Rect;

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 10
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mPercentArr:[F

    const/16 p1, 0x13d

    const/16 p2, 0x898

    const/16 v0, 0x75

    .line 11
    filled-new-array {v0, p1, p2}, [I

    move-result-object p1

    const/16 p2, 0x1d4

    const/16 v0, 0xc80

    const/16 v1, 0xc0

    filled-new-array {v1, p2, v0}, [I

    move-result-object p2

    const/16 v0, 0x262

    const/16 v1, 0x1068

    const/16 v2, 0xfb

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    filled-new-array {p1, p2, v0}, [[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mTimeTable:[[I

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    const-string p1, "LineSpreadEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->TAG:Ljava/lang/String;

    .line 15
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mCurRect:Landroid/graphics/Rect;

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 16
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mPercentArr:[F

    const/16 p1, 0x13d

    const/16 p2, 0x898

    const/16 p3, 0x75

    .line 17
    filled-new-array {p3, p1, p2}, [I

    move-result-object p1

    const/16 p2, 0x1d4

    const/16 p3, 0xc80

    const/16 v0, 0xc0

    filled-new-array {v0, p2, p3}, [I

    move-result-object p2

    const/16 p3, 0x262

    const/16 v0, 0x1068

    const/16 v1, 0xfb

    filled-new-array {v1, p3, v0}, [I

    move-result-object p3

    filled-new-array {p1, p2, p3}, [[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mTimeTable:[[I

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;

    const-string p1, "LineSpreadEffectView"

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->TAG:Ljava/lang/String;

    .line 21
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mCurRect:Landroid/graphics/Rect;

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 22
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mPercentArr:[F

    const/16 p1, 0x13d

    const/16 p2, 0x898

    const/16 p3, 0x75

    .line 23
    filled-new-array {p3, p1, p2}, [I

    move-result-object p1

    const/16 p2, 0x1d4

    const/16 p3, 0xc80

    const/16 p4, 0xc0

    filled-new-array {p4, p2, p3}, [I

    move-result-object p2

    const/16 p3, 0x262

    const/16 p4, 0x1068

    const/16 v0, 0xfb

    filled-new-array {v0, p3, p4}, [I

    move-result-object p3

    filled-new-array {p1, p2, p3}, [[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mTimeTable:[[I

    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint1:Landroid/graphics/Paint;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint2:Landroid/graphics/Paint;

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/Paint;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint3:Landroid/graphics/Paint;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const v1, 0x7f0706b6

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mMoveHeight:F

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const v1, 0x7f0706b7

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mMoveWidth:F

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const v1, 0x7f0709b6

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mLineWidth:F

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const v1, 0x7f0706b9

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mRadius:F

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const v1, 0x7f0706b8

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mFinalRadius:F

    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint1:Landroid/graphics/Paint;

    .line 88
    .line 89
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mLineWidth:F

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint1:Landroid/graphics/Paint;

    .line 95
    .line 96
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint1:Landroid/graphics/Paint;

    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint2:Landroid/graphics/Paint;

    .line 108
    .line 109
    iget v2, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mLineWidth:F

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint2:Landroid/graphics/Paint;

    .line 115
    .line 116
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint2:Landroid/graphics/Paint;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint3:Landroid/graphics/Paint;

    .line 127
    .line 128
    iget v2, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mLineWidth:F

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint3:Landroid/graphics/Paint;

    .line 134
    .line 135
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint3:Landroid/graphics/Paint;

    .line 141
    .line 142
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint1:Landroid/graphics/Paint;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mPercentArr:[F

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aget v2, v2, v3

    .line 12
    .line 13
    const/high16 v4, 0x3f800000    # 1.0f

    .line 14
    .line 15
    sub-float v2, v4, v2

    .line 16
    .line 17
    const/high16 v5, 0x437f0000    # 255.0f

    .line 18
    .line 19
    mul-float/2addr v2, v5

    .line 20
    float-to-int v2, v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint2:Landroid/graphics/Paint;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mPercentArr:[F

    .line 27
    .line 28
    const/4 v6, 0x1

    .line 29
    aget v2, v2, v6

    .line 30
    .line 31
    sub-float v2, v4, v2

    .line 32
    .line 33
    mul-float/2addr v2, v5

    .line 34
    float-to-int v2, v2

    .line 35
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint3:Landroid/graphics/Paint;

    .line 39
    .line 40
    iget-object v2, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mPercentArr:[F

    .line 41
    .line 42
    const/4 v7, 0x2

    .line 43
    aget v2, v2, v7

    .line 44
    .line 45
    sub-float v2, v4, v2

    .line 46
    .line 47
    mul-float/2addr v2, v5

    .line 48
    float-to-int v2, v2

    .line 49
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 50
    .line 51
    .line 52
    iget v1, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mRadius:F

    .line 53
    .line 54
    iget-object v2, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mPercentArr:[F

    .line 55
    .line 56
    aget v3, v2, v3

    .line 57
    .line 58
    sub-float v5, v4, v3

    .line 59
    .line 60
    mul-float/2addr v5, v1

    .line 61
    iget v8, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mFinalRadius:F

    .line 62
    .line 63
    mul-float v9, v8, v3

    .line 64
    .line 65
    add-float v16, v9, v5

    .line 66
    .line 67
    aget v5, v2, v6

    .line 68
    .line 69
    sub-float v9, v4, v5

    .line 70
    .line 71
    mul-float/2addr v9, v1

    .line 72
    mul-float/2addr v5, v8

    .line 73
    add-float v23, v5, v9

    .line 74
    .line 75
    aget v2, v2, v7

    .line 76
    .line 77
    sub-float/2addr v4, v2

    .line 78
    mul-float/2addr v4, v1

    .line 79
    mul-float/2addr v8, v2

    .line 80
    add-float v30, v8, v4

    .line 81
    .line 82
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mCurRect:Landroid/graphics/Rect;

    .line 83
    .line 84
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 85
    .line 86
    int-to-float v2, v2

    .line 87
    iget v4, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mMoveWidth:F

    .line 88
    .line 89
    mul-float v5, v4, v3

    .line 90
    .line 91
    sub-float v11, v2, v5

    .line 92
    .line 93
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 94
    .line 95
    int-to-float v2, v2

    .line 96
    iget v5, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mMoveHeight:F

    .line 97
    .line 98
    mul-float v8, v5, v3

    .line 99
    .line 100
    sub-float v12, v2, v8

    .line 101
    .line 102
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 103
    .line 104
    int-to-float v2, v2

    .line 105
    mul-float/2addr v4, v3

    .line 106
    add-float v13, v4, v2

    .line 107
    .line 108
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 109
    .line 110
    int-to-float v1, v1

    .line 111
    mul-float/2addr v5, v3

    .line 112
    add-float v14, v5, v1

    .line 113
    .line 114
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint1:Landroid/graphics/Paint;

    .line 115
    .line 116
    move-object/from16 v10, p1

    .line 117
    .line 118
    move/from16 v15, v16

    .line 119
    .line 120
    move-object/from16 v17, v1

    .line 121
    .line 122
    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mPercentArr:[F

    .line 126
    .line 127
    aget v1, v1, v6

    .line 128
    .line 129
    const/4 v2, 0x0

    .line 130
    cmpl-float v3, v1, v2

    .line 131
    .line 132
    if-lez v3, :cond_0

    .line 133
    .line 134
    iget-object v3, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mCurRect:Landroid/graphics/Rect;

    .line 135
    .line 136
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 137
    .line 138
    int-to-float v4, v4

    .line 139
    iget v5, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mMoveWidth:F

    .line 140
    .line 141
    mul-float v6, v5, v1

    .line 142
    .line 143
    sub-float v18, v4, v6

    .line 144
    .line 145
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 146
    .line 147
    int-to-float v4, v4

    .line 148
    iget v6, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mMoveHeight:F

    .line 149
    .line 150
    mul-float v8, v6, v1

    .line 151
    .line 152
    sub-float v19, v4, v8

    .line 153
    .line 154
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 155
    .line 156
    int-to-float v4, v4

    .line 157
    mul-float/2addr v5, v1

    .line 158
    add-float v20, v5, v4

    .line 159
    .line 160
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 161
    .line 162
    int-to-float v3, v3

    .line 163
    mul-float/2addr v6, v1

    .line 164
    add-float v21, v6, v3

    .line 165
    .line 166
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint2:Landroid/graphics/Paint;

    .line 167
    .line 168
    move-object/from16 v17, p1

    .line 169
    .line 170
    move/from16 v22, v23

    .line 171
    .line 172
    move-object/from16 v24, v1

    .line 173
    .line 174
    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 175
    .line 176
    .line 177
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mPercentArr:[F

    .line 178
    .line 179
    aget v1, v1, v7

    .line 180
    .line 181
    cmpl-float v2, v1, v2

    .line 182
    .line 183
    if-lez v2, :cond_1

    .line 184
    .line 185
    iget-object v2, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mCurRect:Landroid/graphics/Rect;

    .line 186
    .line 187
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 188
    .line 189
    int-to-float v3, v3

    .line 190
    iget v4, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mMoveWidth:F

    .line 191
    .line 192
    mul-float v5, v4, v1

    .line 193
    .line 194
    sub-float v25, v3, v5

    .line 195
    .line 196
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 197
    .line 198
    int-to-float v3, v3

    .line 199
    iget v5, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mMoveHeight:F

    .line 200
    .line 201
    mul-float v6, v5, v1

    .line 202
    .line 203
    sub-float v26, v3, v6

    .line 204
    .line 205
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 206
    .line 207
    int-to-float v3, v3

    .line 208
    mul-float/2addr v4, v1

    .line 209
    add-float v27, v4, v3

    .line 210
    .line 211
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 212
    .line 213
    int-to-float v2, v2

    .line 214
    mul-float/2addr v5, v1

    .line 215
    add-float v28, v5, v2

    .line 216
    .line 217
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mSquarePaint3:Landroid/graphics/Paint;

    .line 218
    .line 219
    move-object/from16 v24, p1

    .line 220
    .line 221
    move/from16 v29, v30

    .line 222
    .line 223
    move-object/from16 v31, v0

    .line 224
    .line 225
    invoke-virtual/range {v24 .. v31}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 226
    .line 227
    .line 228
    :cond_1
    return-void
.end method

.method public final startLineAnimation(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, " start Animation"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    :goto_0
    const/4 v1, 0x3

    .line 26
    if-ge v0, v1, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    new-array v2, v1, [F

    .line 30
    .line 31
    fill-array-data v2, :array_0

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v3, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView$1;

    .line 39
    .line 40
    invoke-direct {v3, p0, v0}, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 44
    .line 45
    .line 46
    new-instance v3, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView$2;

    .line 47
    .line 48
    invoke-direct {v3, p0, v0}, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView$2;-><init>(Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Lcom/android/systemui/edgelighting/effect/utils/SineInOut80;

    .line 55
    .line 56
    invoke-direct {v3}, Lcom/android/systemui/edgelighting/effect/utils/SineInOut80;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    .line 61
    .line 62
    const-wide/16 v3, 0xfa0

    .line 63
    .line 64
    sub-long v3, p1, v3

    .line 65
    .line 66
    long-to-int v3, v3

    .line 67
    div-int/lit16 v3, v3, 0x3e8

    .line 68
    .line 69
    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mTimeTable:[[I

    .line 70
    .line 71
    aget-object v4, v4, v3

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    aget v4, v4, v5

    .line 75
    .line 76
    mul-int/2addr v4, v0

    .line 77
    int-to-long v6, v4

    .line 78
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 79
    .line 80
    .line 81
    iget-object v4, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mTimeTable:[[I

    .line 82
    .line 83
    aget-object v3, v4, v3

    .line 84
    .line 85
    aget v1, v3, v1

    .line 86
    .line 87
    int-to-long v3, v1

    .line 88
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 95
    .line 96
    filled-new-array {v2}, [Landroid/animation/Animator;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    nop

    .line 113
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final stopLineAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    const/4 v1, 0x3

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/LineSpreadEffectView;->mPercentArr:[F

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput v2, v1, v0

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
