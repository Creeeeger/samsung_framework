.class public final Landroidx/transition/CircularPropagation;
.super Landroidx/transition/VisibilityPropagation;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mPropagationSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/VisibilityPropagation;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x40400000    # 3.0f

    .line 5
    .line 6
    iput v0, p0, Landroidx/transition/CircularPropagation;->mPropagationSpeed:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    if-nez p4, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    const/4 v2, 0x1

    .line 9
    if-eqz p4, :cond_4

    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    if-nez p3, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v4, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 17
    .line 18
    const-string v5, "android:visibilityPropagation:visibility"

    .line 19
    .line 20
    check-cast v4, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Ljava/lang/Integer;

    .line 27
    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    :goto_0
    if-nez v3, :cond_3

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    move-object p3, p4

    .line 39
    move p4, v2

    .line 40
    goto :goto_2

    .line 41
    :cond_4
    :goto_1
    const/4 p4, -0x1

    .line 42
    :goto_2
    const/4 v3, 0x0

    .line 43
    invoke-static {p3, v3}, Landroidx/transition/VisibilityPropagation;->getViewCoordinate(Landroidx/transition/TransitionValues;I)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-static {p3, v2}, Landroidx/transition/VisibilityPropagation;->getViewCoordinate(Landroidx/transition/TransitionValues;I)I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    iget-object v5, p2, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    .line 52
    .line 53
    if-nez v5, :cond_5

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    goto :goto_3

    .line 57
    :cond_5
    invoke-virtual {v5}, Landroidx/transition/Transition$EpicenterCallback;->onGetEpicenter()Landroid/graphics/Rect;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    :goto_3
    if-eqz v5, :cond_6

    .line 62
    .line 63
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    goto :goto_4

    .line 72
    :cond_6
    const/4 v5, 0x2

    .line 73
    new-array v6, v5, [I

    .line 74
    .line 75
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 76
    .line 77
    .line 78
    aget v3, v6, v3

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    div-int/2addr v7, v5

    .line 85
    add-int/2addr v7, v3

    .line 86
    int-to-float v3, v7

    .line 87
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationX()F

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    add-float/2addr v7, v3

    .line 92
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    aget v2, v6, v2

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    div-int/2addr v6, v5

    .line 103
    add-int/2addr v6, v2

    .line 104
    int-to-float v2, v6

    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationY()F

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    add-float/2addr v5, v2

    .line 110
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    move v8, v3

    .line 115
    move v3, v2

    .line 116
    move v2, v8

    .line 117
    :goto_4
    int-to-float v4, v4

    .line 118
    int-to-float p3, p3

    .line 119
    int-to-float v2, v2

    .line 120
    int-to-float v3, v3

    .line 121
    sub-float/2addr v2, v4

    .line 122
    sub-float/2addr v3, p3

    .line 123
    mul-float/2addr v2, v2

    .line 124
    mul-float/2addr v3, v3

    .line 125
    add-float/2addr v3, v2

    .line 126
    float-to-double v2, v3

    .line 127
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 128
    .line 129
    .line 130
    move-result-wide v2

    .line 131
    double-to-float p3, v2

    .line 132
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    int-to-float v2, v2

    .line 137
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    int-to-float p1, p1

    .line 142
    const/4 v3, 0x0

    .line 143
    sub-float/2addr v2, v3

    .line 144
    sub-float/2addr p1, v3

    .line 145
    mul-float/2addr v2, v2

    .line 146
    mul-float/2addr p1, p1

    .line 147
    add-float/2addr p1, v2

    .line 148
    float-to-double v2, p1

    .line 149
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 150
    .line 151
    .line 152
    move-result-wide v2

    .line 153
    double-to-float p1, v2

    .line 154
    div-float/2addr p3, p1

    .line 155
    iget-wide p1, p2, Landroidx/transition/Transition;->mDuration:J

    .line 156
    .line 157
    cmp-long v0, p1, v0

    .line 158
    .line 159
    if-gez v0, :cond_7

    .line 160
    .line 161
    const-wide/16 p1, 0x12c

    .line 162
    .line 163
    :cond_7
    int-to-long v0, p4

    .line 164
    mul-long/2addr p1, v0

    .line 165
    long-to-float p1, p1

    .line 166
    iget p0, p0, Landroidx/transition/CircularPropagation;->mPropagationSpeed:F

    .line 167
    .line 168
    div-float/2addr p1, p0

    .line 169
    mul-float/2addr p1, p3

    .line 170
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    int-to-long p0, p0

    .line 175
    return-wide p0
.end method
