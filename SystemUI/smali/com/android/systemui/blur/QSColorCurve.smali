.class public final Lcom/android/systemui/blur/QSColorCurve;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public curve:F

.field public fraction:F

.field public maxX:F

.field public maxY:F

.field public minX:F

.field public minY:F

.field public radius:F

.field public saturation:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/blur/QSColorCurve$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/blur/QSColorCurve$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/blur/QSColorCurve;->context:Landroid/content/Context;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/systemui/blur/QSColorCurve;->radius:F

    .line 8
    .line 9
    const/high16 p1, 0x437f0000    # 255.0f

    .line 10
    .line 11
    iput p1, p0, Lcom/android/systemui/blur/QSColorCurve;->maxX:F

    .line 12
    .line 13
    iput p1, p0, Lcom/android/systemui/blur/QSColorCurve;->maxY:F

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final isCoverDisplay()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN_QUICK_PANEL_WINDOW:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/blur/QSColorCurve;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x1

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    move p0, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p0, v1

    .line 24
    :goto_0
    if-eqz p0, :cond_1

    .line 25
    .line 26
    move v1, v0

    .line 27
    :cond_1
    return v1
.end method

.method public final setFraction(F)V
    .locals 7

    .line 1
    iput p1, p0, Lcom/android/systemui/blur/QSColorCurve;->fraction:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/blur/QSColorCurve;->isCoverDisplay()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/high16 v0, 0x43480000    # 200.0f

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/high16 p1, 0x43ae0000    # 348.0f

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/high16 p1, 0x428c0000    # 70.0f

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    move p1, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/high16 p1, 0x43c80000    # 400.0f

    .line 28
    .line 29
    :goto_0
    const/4 v1, 0x0

    .line 30
    sub-float/2addr p1, v1

    .line 31
    iget v2, p0, Lcom/android/systemui/blur/QSColorCurve;->fraction:F

    .line 32
    .line 33
    mul-float/2addr p1, v2

    .line 34
    add-float/2addr p1, v1

    .line 35
    iput p1, p0, Lcom/android/systemui/blur/QSColorCurve;->radius:F

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/blur/QSColorCurve;->isCoverDisplay()Z

    .line 38
    .line 39
    .line 40
    iget p1, p0, Lcom/android/systemui/blur/QSColorCurve;->fraction:F

    .line 41
    .line 42
    const v2, 0x3e4ccccd    # 0.2f

    .line 43
    .line 44
    .line 45
    mul-float/2addr v2, p1

    .line 46
    iput v2, p0, Lcom/android/systemui/blur/QSColorCurve;->saturation:F

    .line 47
    .line 48
    const/high16 v2, -0x40800000    # -1.0f

    .line 49
    .line 50
    mul-float/2addr p1, v2

    .line 51
    iput p1, p0, Lcom/android/systemui/blur/QSColorCurve;->curve:F

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/blur/QSColorCurve;->isCoverDisplay()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/4 v2, 0x1

    .line 58
    const/4 v3, 0x0

    .line 59
    const/16 v4, 0x20

    .line 60
    .line 61
    iget-object v5, p0, Lcom/android/systemui/blur/QSColorCurve;->context:Landroid/content/Context;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    const/high16 p1, 0x41c80000    # 25.0f

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 77
    .line 78
    and-int/lit8 p1, p1, 0x30

    .line 79
    .line 80
    if-ne p1, v4, :cond_4

    .line 81
    .line 82
    move p1, v2

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    move p1, v3

    .line 85
    :goto_1
    if-eqz p1, :cond_5

    .line 86
    .line 87
    const/high16 p1, 0x41700000    # 15.0f

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    move p1, v1

    .line 91
    :goto_2
    iget v6, p0, Lcom/android/systemui/blur/QSColorCurve;->fraction:F

    .line 92
    .line 93
    mul-float/2addr p1, v6

    .line 94
    iput p1, p0, Lcom/android/systemui/blur/QSColorCurve;->minX:F

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/blur/QSColorCurve;->isCoverDisplay()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_6
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 104
    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    const/high16 v1, 0x41a00000    # 20.0f

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_7
    const/high16 v1, 0x42180000    # 38.0f

    .line 111
    .line 112
    :goto_3
    iget p1, p0, Lcom/android/systemui/blur/QSColorCurve;->fraction:F

    .line 113
    .line 114
    mul-float/2addr v1, p1

    .line 115
    iput v1, p0, Lcom/android/systemui/blur/QSColorCurve;->minY:F

    .line 116
    .line 117
    const/high16 v1, 0x425c0000    # 55.0f

    .line 118
    .line 119
    mul-float/2addr p1, v1

    .line 120
    const/high16 v1, 0x437f0000    # 255.0f

    .line 121
    .line 122
    sub-float p1, v1, p1

    .line 123
    .line 124
    iput p1, p0, Lcom/android/systemui/blur/QSColorCurve;->maxX:F

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/blur/QSColorCurve;->isCoverDisplay()Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_8

    .line 131
    .line 132
    const/high16 v0, 0x43250000    # 165.0f

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_8
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 136
    .line 137
    if-eqz p1, :cond_9

    .line 138
    .line 139
    const/high16 v0, 0x43340000    # 180.0f

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_9
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 151
    .line 152
    and-int/lit8 p1, p1, 0x30

    .line 153
    .line 154
    if-ne p1, v4, :cond_a

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_a
    move v2, v3

    .line 158
    :goto_4
    if-eqz v2, :cond_b

    .line 159
    .line 160
    const/high16 v0, 0x43160000    # 150.0f

    .line 161
    .line 162
    :cond_b
    :goto_5
    sub-float p1, v1, v0

    .line 163
    .line 164
    iget v0, p0, Lcom/android/systemui/blur/QSColorCurve;->fraction:F

    .line 165
    .line 166
    mul-float/2addr p1, v0

    .line 167
    sub-float/2addr v1, p1

    .line 168
    iput v1, p0, Lcom/android/systemui/blur/QSColorCurve;->maxY:F

    .line 169
    .line 170
    return-void
.end method
