.class public final Lcom/android/systemui/decor/RoundedCornerResDelegate;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

.field public bottomRoundedSize:Landroid/util/Size;

.field public displayAspectRatioChanged:Z

.field public displayUniqueId:Ljava/lang/String;

.field public hasBottom:Z

.field public hasTop:Z

.field public physicalPixelDisplaySizeRatio:F

.field public reloadToken:I

.field public final res:Landroid/content/res/Resources;

.field public topRoundedDrawable:Landroid/graphics/drawable/Drawable;

.field public topRoundedSize:Landroid/util/Size;

.field public tuningSizeFactor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->res:Landroid/content/res/Resources;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->displayUniqueId:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p1, Landroid/util/Size;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    .line 15
    .line 16
    new-instance p1, Landroid/util/Size;

    .line 17
    .line 18
    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    .line 22
    .line 23
    const/high16 p1, 0x3f800000    # 1.0f

    .line 24
    .line 25
    iput p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->physicalPixelDisplaySizeRatio:F

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadRes()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadMeasures()V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, "RoundedCornerResDelegate state:"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->hasTop:Z

    .line 7
    .line 8
    const-string v0, "  hasTop="

    .line 9
    .line 10
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 11
    .line 12
    .line 13
    iget-boolean p2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->hasBottom:Z

    .line 14
    .line 15
    const-string v0, "  hasBottom="

    .line 16
    .line 17
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v1, "  topRoundedSize(w,h)=("

    .line 33
    .line 34
    const-string v2, ","

    .line 35
    .line 36
    const-string v3, ")"

    .line 37
    .line 38
    invoke-static {v1, p2, v2, v0, v3}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const-string v1, "  bottomRoundedSize(w,h)=("

    .line 58
    .line 59
    invoke-static {v1, p2, v2, v0, v3}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget p0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->physicalPixelDisplaySizeRatio:F

    .line 67
    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v0, "  physicalPixelDisplaySizeRatio="

    .line 71
    .line 72
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final reloadMeasures()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroid/util/Size;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    new-instance v1, Landroid/util/Size;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->tuningSizeFactor:Ljava/lang/Integer;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-gtz v0, :cond_2

    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    int-to-float v0, v0

    .line 51
    iget-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->res:Landroid/content/res/Resources;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 58
    .line 59
    mul-float/2addr v0, v1

    .line 60
    float-to-int v0, v0

    .line 61
    iget-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-lez v1, :cond_3

    .line 68
    .line 69
    new-instance v1, Landroid/util/Size;

    .line 70
    .line 71
    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    .line 75
    .line 76
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-lez v1, :cond_4

    .line 83
    .line 84
    new-instance v1, Landroid/util/Size;

    .line 85
    .line 86
    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    .line 90
    .line 91
    :cond_4
    iget v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->physicalPixelDisplaySizeRatio:F

    .line 92
    .line 93
    const/high16 v1, 0x3f800000    # 1.0f

    .line 94
    .line 95
    cmpg-float v0, v0, v1

    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    if-nez v0, :cond_5

    .line 99
    .line 100
    const/4 v0, 0x1

    .line 101
    goto :goto_0

    .line 102
    :cond_5
    move v0, v1

    .line 103
    :goto_0
    if-nez v0, :cond_7

    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const/high16 v2, 0x3f000000    # 0.5f

    .line 112
    .line 113
    if-eqz v0, :cond_6

    .line 114
    .line 115
    new-instance v0, Landroid/util/Size;

    .line 116
    .line 117
    iget v3, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->physicalPixelDisplaySizeRatio:F

    .line 118
    .line 119
    iget-object v4, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    .line 120
    .line 121
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    int-to-float v4, v4

    .line 126
    mul-float/2addr v3, v4

    .line 127
    add-float/2addr v3, v2

    .line 128
    float-to-int v3, v3

    .line 129
    iget v4, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->physicalPixelDisplaySizeRatio:F

    .line 130
    .line 131
    iget-object v5, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    .line 132
    .line 133
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    int-to-float v5, v5

    .line 138
    mul-float/2addr v4, v5

    .line 139
    add-float/2addr v4, v2

    .line 140
    float-to-int v4, v4

    .line 141
    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 142
    .line 143
    .line 144
    iput-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    .line 145
    .line 146
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_7

    .line 153
    .line 154
    new-instance v0, Landroid/util/Size;

    .line 155
    .line 156
    iget v3, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->physicalPixelDisplaySizeRatio:F

    .line 157
    .line 158
    iget-object v4, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    .line 159
    .line 160
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    int-to-float v4, v4

    .line 165
    mul-float/2addr v3, v4

    .line 166
    add-float/2addr v3, v2

    .line 167
    float-to-int v3, v3

    .line 168
    iget v4, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->physicalPixelDisplaySizeRatio:F

    .line 169
    .line 170
    iget-object v5, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    .line 171
    .line 172
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    int-to-float v5, v5

    .line 177
    mul-float/2addr v4, v5

    .line 178
    add-float/2addr v4, v2

    .line 179
    float-to-int v2, v4

    .line 180
    invoke-direct {v0, v3, v2}, Landroid/util/Size;-><init>(II)V

    .line 181
    .line 182
    .line 183
    iput-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    .line 184
    .line 185
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->displayAspectRatioChanged:Z

    .line 186
    .line 187
    if-eqz v0, :cond_8

    .line 188
    .line 189
    new-instance v0, Landroid/util/Size;

    .line 190
    .line 191
    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    .line 192
    .line 193
    .line 194
    iput-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    .line 195
    .line 196
    new-instance v0, Landroid/util/Size;

    .line 197
    .line 198
    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    .line 199
    .line 200
    .line 201
    iput-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    .line 202
    .line 203
    :cond_8
    return-void
.end method

.method public final reloadRes()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->displayUniqueId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->res:Landroid/content/res/Resources;

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->displayUniqueId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroid/view/RoundedCorners;->getRoundedCornerRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-lez v2, :cond_0

    .line 18
    .line 19
    move v2, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v4

    .line 22
    :goto_0
    sget v5, Lcom/android/systemui/util/DeviceType;->supportTablet:I

    .line 23
    .line 24
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_2

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v5, v3

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    :goto_1
    move v5, v4

    .line 36
    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->hasTop:Z

    .line 37
    .line 38
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_3

    .line 43
    .line 44
    if-nez v2, :cond_4

    .line 45
    .line 46
    :cond_3
    move v3, v4

    .line 47
    :cond_4
    iput-boolean v3, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->hasBottom:Z

    .line 48
    .line 49
    const v2, 0x7f030043

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v3, 0x0

    .line 57
    if-ltz v0, :cond_5

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-ge v0, v4, :cond_5

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    goto :goto_3

    .line 70
    :cond_5
    const v4, 0x7f080ee1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    :goto_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    .line 79
    .line 80
    iput-object v4, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    .line 82
    const v2, 0x7f030041

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-ltz v0, :cond_6

    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-ge v0, v4, :cond_6

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    goto :goto_4

    .line 102
    :cond_6
    const v0, 0x7f080ede

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    :goto_4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    .line 114
    return-void
.end method

.method public final updateDisplayUniqueId(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->displayUniqueId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->displayUniqueId:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadToken:I

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadRes()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadMeasures()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-eqz p2, :cond_3

    .line 27
    .line 28
    iget p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadToken:I

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-ne p1, v0, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadToken:I

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadMeasures()V

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_0
    return-void
.end method
