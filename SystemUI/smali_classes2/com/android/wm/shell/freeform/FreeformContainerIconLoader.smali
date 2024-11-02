.class public final Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAppIconFramePath:Landroid/graphics/Path;

.field public mAppIconFrameSize:I

.field public mAppIconPath:Landroid/graphics/Path;

.field public mAppIconSize:I

.field public final mContext:Landroid/content/Context;

.field public mFreeformContainerOuterSize:I

.field public mFreeformContainerOuterSizeRadius:F

.field public mIconFrameColor:I

.field public mIconFrameShadowColor:I

.field public mIconFrameShadowSize:I

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPhotoIconFramePath:Landroid/graphics/Path;

.field public mPhotoIconFrameSize:I

.field public mPhotoIconPath:Landroid/graphics/Path;

.field public mPhotoIconRightBottomPaddingSize:I

.field public mPhotoIconSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->loadResources()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static clipPath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/graphics/Canvas;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v1, p0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 26
    .line 27
    invoke-virtual {v1, p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 32
    .line 33
    invoke-virtual {v1, p0, p1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method


# virtual methods
.method public final createIconFrameBitmap(Landroid/graphics/Path;IIZ)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/graphics/Canvas;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroid/graphics/Paint;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 22
    .line 23
    .line 24
    if-nez p4, :cond_0

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->createIconFrameShadowBitmap(Landroid/graphics/Path;I)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 40
    .line 41
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    const/4 p3, 0x0

    .line 50
    invoke-virtual {v1, p0, p2, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    int-to-float p2, p2

    .line 61
    const/high16 p4, 0x40000000    # 2.0f

    .line 62
    .line 63
    div-float/2addr p2, p4

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    int-to-float v2, v2

    .line 69
    div-float/2addr v2, p4

    .line 70
    invoke-virtual {v1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    neg-int p2, p2

    .line 78
    int-to-float p2, p2

    .line 79
    div-float/2addr p2, p4

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    neg-int v2, v2

    .line 85
    int-to-float v2, v2

    .line 86
    div-float/2addr v2, p4

    .line 87
    invoke-virtual {v1, v0, p2, v2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 97
    .line 98
    .line 99
    return-object p1
.end method

.method public final createIconFrameShadowBitmap(Landroid/graphics/Path;I)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameShadowSize:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    add-int/2addr v0, p2

    .line 6
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 7
    .line 8
    invoke-static {v0, v0, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    new-instance v0, Landroid/graphics/Canvas;

    .line 13
    .line 14
    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Landroid/graphics/Paint;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    .line 27
    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameShadowSize:I

    .line 28
    .line 29
    int-to-float v2, v2

    .line 30
    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameShadowColor:I

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const/high16 v5, 0x40400000    # 3.0f

    .line 34
    .line 35
    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 36
    .line 37
    .line 38
    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameShadowSize:I

    .line 39
    .line 40
    int-to-float p0, p0

    .line 41
    invoke-virtual {v0, p0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 45
    .line 46
    .line 47
    return-object p2
.end method

.method public final getShowingIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    iget p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconSize:I

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2, p2}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconPath:Landroid/graphics/Path;

    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->clipPath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconFramePath:Landroid/graphics/Path;

    .line 21
    .line 22
    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconFrameSize:I

    .line 23
    .line 24
    iget v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameColor:I

    .line 25
    .line 26
    invoke-virtual {p0, p2, v3, v4, v2}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->createIconFrameBitmap(Landroid/graphics/Path;IIZ)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mFreeformContainerOuterSize:I

    .line 31
    .line 32
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 33
    .line 34
    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    new-instance v4, Landroid/graphics/Canvas;

    .line 39
    .line 40
    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 41
    .line 42
    .line 43
    new-instance v5, Landroid/graphics/Paint;

    .line 44
    .line 45
    invoke-direct {v5, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 49
    .line 50
    .line 51
    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mFreeformContainerOuterSizeRadius:F

    .line 52
    .line 53
    invoke-virtual {v4, p0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    neg-int p0, p0

    .line 61
    int-to-float p0, p0

    .line 62
    div-float/2addr p0, v1

    .line 63
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    neg-int v2, v2

    .line 68
    int-to-float v2, v2

    .line 69
    div-float/2addr v2, v1

    .line 70
    invoke-virtual {v4, p2, p0, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    neg-int p0, p0

    .line 78
    int-to-float p0, p0

    .line 79
    div-float/2addr p0, v1

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    neg-int v2, v2

    .line 85
    int-to-float v2, v2

    .line 86
    div-float/2addr v2, v1

    .line 87
    invoke-virtual {v4, p1, p0, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 97
    .line 98
    .line 99
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p0, p1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 106
    .line 107
    .line 108
    return-object p0

    .line 109
    :cond_0
    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconSize:I

    .line 110
    .line 111
    invoke-virtual {p0, p1, v3, v3}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconSize:I

    .line 116
    .line 117
    invoke-virtual {p0, p2, v3, v3}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconPath:Landroid/graphics/Path;

    .line 122
    .line 123
    invoke-static {p1, v3}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->clipPath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconFramePath:Landroid/graphics/Path;

    .line 128
    .line 129
    iget v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconFrameSize:I

    .line 130
    .line 131
    iget v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameColor:I

    .line 132
    .line 133
    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->createIconFrameBitmap(Landroid/graphics/Path;IIZ)Landroid/graphics/Bitmap;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconPath:Landroid/graphics/Path;

    .line 138
    .line 139
    invoke-static {p2, v4}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->clipPath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconFramePath:Landroid/graphics/Path;

    .line 144
    .line 145
    iget v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconFrameSize:I

    .line 146
    .line 147
    iget v6, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameColor:I

    .line 148
    .line 149
    const/4 v7, 0x0

    .line 150
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->createIconFrameBitmap(Landroid/graphics/Path;IIZ)Landroid/graphics/Bitmap;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    iget-object v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconFramePath:Landroid/graphics/Path;

    .line 155
    .line 156
    iget v6, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconFrameSize:I

    .line 157
    .line 158
    invoke-virtual {p0, v5, v6}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->createIconFrameShadowBitmap(Landroid/graphics/Path;I)Landroid/graphics/Bitmap;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    iget v6, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mFreeformContainerOuterSize:I

    .line 163
    .line 164
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 165
    .line 166
    invoke-static {v6, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    new-instance v7, Landroid/graphics/Canvas;

    .line 171
    .line 172
    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 173
    .line 174
    .line 175
    new-instance v8, Landroid/graphics/Paint;

    .line 176
    .line 177
    invoke-direct {v8, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 181
    .line 182
    .line 183
    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mFreeformContainerOuterSizeRadius:F

    .line 184
    .line 185
    invoke-virtual {v7, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 186
    .line 187
    .line 188
    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconFrameSize:I

    .line 189
    .line 190
    int-to-float v2, v2

    .line 191
    div-float/2addr v2, v1

    .line 192
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    int-to-float v9, v9

    .line 197
    div-float/2addr v9, v1

    .line 198
    sub-float v9, v2, v9

    .line 199
    .line 200
    iget v10, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconRightBottomPaddingSize:I

    .line 201
    .line 202
    int-to-float v10, v10

    .line 203
    sub-float/2addr v9, v10

    .line 204
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    int-to-float v10, v10

    .line 209
    div-float/2addr v10, v1

    .line 210
    sub-float v10, v2, v10

    .line 211
    .line 212
    iget v11, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconRightBottomPaddingSize:I

    .line 213
    .line 214
    int-to-float v11, v11

    .line 215
    sub-float/2addr v10, v11

    .line 216
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    neg-int v9, v9

    .line 227
    int-to-float v9, v9

    .line 228
    div-float/2addr v9, v1

    .line 229
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    neg-int v10, v10

    .line 234
    int-to-float v10, v10

    .line 235
    div-float/2addr v10, v1

    .line 236
    invoke-virtual {v7, v5, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 243
    .line 244
    .line 245
    move-result v9

    .line 246
    neg-int v9, v9

    .line 247
    int-to-float v9, v9

    .line 248
    div-float/2addr v9, v1

    .line 249
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 250
    .line 251
    .line 252
    move-result v10

    .line 253
    neg-int v10, v10

    .line 254
    int-to-float v10, v10

    .line 255
    div-float/2addr v10, v1

    .line 256
    invoke-virtual {v7, v3, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 260
    .line 261
    .line 262
    iget v9, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconRightBottomPaddingSize:I

    .line 263
    .line 264
    int-to-float v9, v9

    .line 265
    sub-float/2addr v2, v9

    .line 266
    invoke-virtual {v7, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    neg-int v2, v2

    .line 274
    int-to-float v2, v2

    .line 275
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 276
    .line 277
    .line 278
    move-result v9

    .line 279
    neg-int v9, v9

    .line 280
    int-to-float v9, v9

    .line 281
    invoke-virtual {v7, v4, v2, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    neg-int v2, v2

    .line 292
    int-to-float v2, v2

    .line 293
    div-float/2addr v2, v1

    .line 294
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 295
    .line 296
    .line 297
    move-result v9

    .line 298
    neg-int v9, v9

    .line 299
    int-to-float v9, v9

    .line 300
    div-float/2addr v9, v1

    .line 301
    invoke-virtual {v7, p1, v2, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    int-to-float v2, v2

    .line 312
    div-float/2addr v2, v1

    .line 313
    iget v9, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconRightBottomPaddingSize:I

    .line 314
    .line 315
    int-to-float v9, v9

    .line 316
    sub-float/2addr v2, v9

    .line 317
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    int-to-float v9, v9

    .line 322
    div-float/2addr v9, v1

    .line 323
    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconRightBottomPaddingSize:I

    .line 324
    .line 325
    int-to-float p0, p0

    .line 326
    sub-float/2addr v9, p0

    .line 327
    invoke-virtual {v7, v2, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 331
    .line 332
    .line 333
    move-result p0

    .line 334
    neg-int p0, p0

    .line 335
    int-to-float p0, p0

    .line 336
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    neg-int v1, v1

    .line 341
    int-to-float v1, v1

    .line 342
    invoke-virtual {v7, p2, p0, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 364
    .line 365
    .line 366
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 367
    .line 368
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-direct {p0, p1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 373
    .line 374
    .line 375
    return-object p0
.end method

.method public final loadResources()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f07038b

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mFreeformContainerOuterSize:I

    .line 15
    .line 16
    int-to-float v1, v1

    .line 17
    const/high16 v2, 0x40000000    # 2.0f

    .line 18
    .line 19
    div-float/2addr v1, v2

    .line 20
    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mFreeformContainerOuterSizeRadius:F

    .line 21
    .line 22
    const v1, 0x7f070384

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconFrameSize:I

    .line 30
    .line 31
    const v1, 0x7f070385

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconSize:I

    .line 39
    .line 40
    const v1, 0x7f07038f

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameShadowSize:I

    .line 48
    .line 49
    const v1, 0x7f060168

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameColor:I

    .line 57
    .line 58
    const v1, 0x7f060169

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mIconFrameShadowColor:I

    .line 66
    .line 67
    const v1, 0x104034e

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    new-instance v3, Landroid/graphics/Path;

    .line 79
    .line 80
    invoke-direct {v3, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 81
    .line 82
    .line 83
    iput-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconPath:Landroid/graphics/Path;

    .line 84
    .line 85
    new-instance v3, Landroid/graphics/Matrix;

    .line 86
    .line 87
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 88
    .line 89
    .line 90
    iget v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconSize:I

    .line 91
    .line 92
    int-to-float v5, v4

    .line 93
    const/high16 v6, 0x42c80000    # 100.0f

    .line 94
    .line 95
    div-float/2addr v5, v6

    .line 96
    int-to-float v4, v4

    .line 97
    div-float/2addr v4, v6

    .line 98
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 99
    .line 100
    .line 101
    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconPath:Landroid/graphics/Path;

    .line 102
    .line 103
    invoke-virtual {v4, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 104
    .line 105
    .line 106
    new-instance v3, Landroid/graphics/Path;

    .line 107
    .line 108
    invoke-direct {v3, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 109
    .line 110
    .line 111
    iput-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconFramePath:Landroid/graphics/Path;

    .line 112
    .line 113
    new-instance v1, Landroid/graphics/Matrix;

    .line 114
    .line 115
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 116
    .line 117
    .line 118
    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconFrameSize:I

    .line 119
    .line 120
    int-to-float v4, v3

    .line 121
    div-float/2addr v4, v6

    .line 122
    int-to-float v3, v3

    .line 123
    div-float/2addr v3, v6

    .line 124
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 125
    .line 126
    .line 127
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mAppIconFramePath:Landroid/graphics/Path;

    .line 128
    .line 129
    invoke-virtual {v3, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 130
    .line 131
    .line 132
    const v1, 0x7f070399

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconSize:I

    .line 140
    .line 141
    const v1, 0x7f070397

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconFrameSize:I

    .line 149
    .line 150
    const v1, 0x7f070398

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconRightBottomPaddingSize:I

    .line 158
    .line 159
    new-instance v0, Landroid/graphics/Path;

    .line 160
    .line 161
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 162
    .line 163
    .line 164
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconPath:Landroid/graphics/Path;

    .line 165
    .line 166
    iget v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconSize:I

    .line 167
    .line 168
    int-to-float v1, v1

    .line 169
    div-float/2addr v1, v2

    .line 170
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 171
    .line 172
    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 173
    .line 174
    .line 175
    new-instance v0, Landroid/graphics/Path;

    .line 176
    .line 177
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconFramePath:Landroid/graphics/Path;

    .line 181
    .line 182
    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPhotoIconFrameSize:I

    .line 183
    .line 184
    int-to-float p0, p0

    .line 185
    div-float/2addr p0, v2

    .line 186
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 187
    .line 188
    invoke-virtual {v0, p0, p0, p0, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method public final scale(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 12
    .line 13
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 14
    .line 15
    const-string v1, "FreeformContainer"

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-lez p0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eq p0, p2, :cond_0

    .line 37
    .line 38
    const-string p2, "[IconLoader] change bitmap densityDpi="

    .line 39
    .line 40
    const-string p3, ", old="

    .line 41
    .line 42
    invoke-static {p2, p0, p3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-object p1

    .line 64
    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 65
    .line 66
    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    new-instance p2, Landroid/graphics/Canvas;

    .line 73
    .line 74
    invoke-direct {p2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-virtual {p1, v1, v1, p3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    const-string p1, "[IconLoader] drawable is null"

    .line 94
    .line 95
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :goto_0
    return-object p0
.end method
