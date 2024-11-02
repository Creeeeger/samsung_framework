.class public Landroidx/transition/ArcMotion;
.super Landroidx/transition/PathMotion;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEFAULT_MAX_TANGENT:F


# instance fields
.field public mMaximumTangent:F

.field public mMinimumHorizontalTangent:F

.field public mMinimumVerticalTangent:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide v0, 0x4041800000000000L    # 35.0

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    double-to-float v0, v0

    .line 15
    sput v0, Landroidx/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/PathMotion;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 3
    iput v0, p0, Landroidx/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 4
    sget v0, Landroidx/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v0, p0, Landroidx/transition/ArcMotion;->mMaximumTangent:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/transition/PathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroidx/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 7
    iput v0, p0, Landroidx/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 8
    sget v1, Landroidx/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v1, p0, Landroidx/transition/ArcMotion;->mMaximumTangent:F

    .line 9
    sget-object v1, Landroidx/transition/Styleable;->ARC_MOTION:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v1, "minimumVerticalAngle"

    const/4 v2, 0x1

    .line 11
    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    .line 12
    invoke-static {v1}, Landroidx/transition/ArcMotion;->toTangent(F)F

    move-result v1

    iput v1, p0, Landroidx/transition/ArcMotion;->mMinimumVerticalTangent:F

    const-string/jumbo v1, "minimumHorizontalAngle"

    const/4 v2, 0x0

    .line 13
    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    .line 14
    invoke-static {v0}, Landroidx/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroidx/transition/ArcMotion;->mMinimumHorizontalTangent:F

    const/4 v0, 0x2

    const/high16 v1, 0x428c0000    # 70.0f

    const-string/jumbo v2, "maximumAngle"

    .line 15
    invoke-static {p1, p2, v2, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    .line 16
    invoke-static {p2}, Landroidx/transition/ArcMotion;->toTangent(F)F

    move-result p2

    iput p2, p0, Landroidx/transition/ArcMotion;->mMaximumTangent:F

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static toTangent(F)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p0, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x42b40000    # 90.0f

    .line 7
    .line 8
    cmpl-float v0, p0, v0

    .line 9
    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    const/high16 v0, 0x40000000    # 2.0f

    .line 13
    .line 14
    div-float/2addr p0, v0

    .line 15
    float-to-double v0, p0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    double-to-float p0, v0

    .line 25
    return p0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "Arc must be between 0 and 90 degrees"

    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method


# virtual methods
.method public final getPath(FFFF)Landroid/graphics/Path;
    .locals 11

    .line 1
    new-instance v7, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v7, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 7
    .line 8
    .line 9
    sub-float v0, p3, p1

    .line 10
    .line 11
    sub-float v1, p4, p2

    .line 12
    .line 13
    mul-float v2, v0, v0

    .line 14
    .line 15
    mul-float v3, v1, v1

    .line 16
    .line 17
    add-float/2addr v3, v2

    .line 18
    add-float v2, p1, p3

    .line 19
    .line 20
    const/high16 v4, 0x40000000    # 2.0f

    .line 21
    .line 22
    div-float/2addr v2, v4

    .line 23
    add-float v5, p2, p4

    .line 24
    .line 25
    div-float/2addr v5, v4

    .line 26
    const/high16 v6, 0x3e800000    # 0.25f

    .line 27
    .line 28
    mul-float/2addr v6, v3

    .line 29
    cmpl-float v8, p2, p4

    .line 30
    .line 31
    if-lez v8, :cond_0

    .line 32
    .line 33
    const/4 v8, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v8, 0x0

    .line 36
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    cmpg-float v9, v9, v10

    .line 45
    .line 46
    if-gez v9, :cond_2

    .line 47
    .line 48
    mul-float/2addr v1, v4

    .line 49
    div-float/2addr v3, v1

    .line 50
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v8, :cond_1

    .line 55
    .line 56
    add-float/2addr v0, p4

    .line 57
    move v1, p3

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    add-float/2addr v0, p2

    .line 60
    move v1, p1

    .line 61
    :goto_1
    iget v3, p0, Landroidx/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_2
    mul-float/2addr v0, v4

    .line 65
    div-float/2addr v3, v0

    .line 66
    if-eqz v8, :cond_3

    .line 67
    .line 68
    add-float/2addr v3, p1

    .line 69
    move v0, p2

    .line 70
    move v1, v3

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    sub-float v0, p3, v3

    .line 73
    .line 74
    move v1, v0

    .line 75
    move v0, p4

    .line 76
    :goto_2
    iget v3, p0, Landroidx/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 77
    .line 78
    :goto_3
    mul-float v8, v6, v3

    .line 79
    .line 80
    mul-float/2addr v8, v3

    .line 81
    sub-float v3, v2, v1

    .line 82
    .line 83
    sub-float v9, v5, v0

    .line 84
    .line 85
    mul-float/2addr v3, v3

    .line 86
    mul-float/2addr v9, v9

    .line 87
    add-float/2addr v9, v3

    .line 88
    iget p0, p0, Landroidx/transition/ArcMotion;->mMaximumTangent:F

    .line 89
    .line 90
    mul-float/2addr v6, p0

    .line 91
    mul-float/2addr v6, p0

    .line 92
    cmpg-float p0, v9, v8

    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    if-gez p0, :cond_4

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_4
    cmpl-float p0, v9, v6

    .line 99
    .line 100
    if-lez p0, :cond_5

    .line 101
    .line 102
    move v8, v6

    .line 103
    goto :goto_4

    .line 104
    :cond_5
    move v8, v3

    .line 105
    :goto_4
    cmpl-float p0, v8, v3

    .line 106
    .line 107
    if-eqz p0, :cond_6

    .line 108
    .line 109
    div-float/2addr v8, v9

    .line 110
    float-to-double v8, v8

    .line 111
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 112
    .line 113
    .line 114
    move-result-wide v8

    .line 115
    double-to-float p0, v8

    .line 116
    invoke-static {v1, v2, p0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-static {v0, v5, p0, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    :cond_6
    add-float/2addr p1, v1

    .line 125
    div-float p0, p1, v4

    .line 126
    .line 127
    add-float/2addr p2, v0

    .line 128
    div-float v2, p2, v4

    .line 129
    .line 130
    add-float/2addr v1, p3

    .line 131
    div-float v3, v1, v4

    .line 132
    .line 133
    add-float/2addr v0, p4

    .line 134
    div-float v4, v0, v4

    .line 135
    .line 136
    move-object v0, v7

    .line 137
    move v1, p0

    .line 138
    move v5, p3

    .line 139
    move v6, p4

    .line 140
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 141
    .line 142
    .line 143
    return-object v7
.end method
