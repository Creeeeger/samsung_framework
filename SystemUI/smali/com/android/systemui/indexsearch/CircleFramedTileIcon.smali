.class public final Lcom/android/systemui/indexsearch/CircleFramedTileIcon;
.super Landroid/graphics/drawable/Drawable;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mDstRect:Landroid/graphics/RectF;

.field public final mScale:F

.field public final mSize:I

.field public final mSrcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 12

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    .line 5
    .line 6
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 7
    .line 8
    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    new-instance v1, Landroid/graphics/Canvas;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileIconBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of p1, p1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    int-to-float p1, p2

    .line 31
    sget-object v3, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const v4, 0x7f070c52

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    mul-float/2addr v3, p1

    .line 45
    const/high16 p1, 0x40000000    # 2.0f

    .line 46
    .line 47
    div-float/2addr v3, p1

    .line 48
    float-to-int p1, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move p1, v2

    .line 51
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    sub-int/2addr v3, v5

    .line 64
    div-int/lit8 v3, v3, 0x2

    .line 65
    .line 66
    sub-int/2addr v3, p1

    .line 67
    sub-int/2addr v4, v5

    .line 68
    div-int/lit8 v4, v4, 0x2

    .line 69
    .line 70
    sub-int/2addr v4, p1

    .line 71
    add-int/2addr v5, p1

    .line 72
    new-instance p1, Landroid/graphics/Rect;

    .line 73
    .line 74
    invoke-direct {p1, v3, v4, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 75
    .line 76
    .line 77
    new-instance v3, Landroid/graphics/RectF;

    .line 78
    .line 79
    int-to-float v4, p2

    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-direct {v3, v5, v5, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 82
    .line 83
    .line 84
    new-instance v6, Landroid/graphics/Path;

    .line 85
    .line 86
    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 87
    .line 88
    .line 89
    const/high16 v7, 0x43b40000    # 360.0f

    .line 90
    .line 91
    invoke-virtual {v6, v3, v5, v7}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 92
    .line 93
    .line 94
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 95
    .line 96
    invoke-virtual {v1, v2, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 97
    .line 98
    .line 99
    new-instance v7, Landroid/graphics/Paint;

    .line 100
    .line 101
    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 102
    .line 103
    .line 104
    const/4 v8, 0x1

    .line 105
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    .line 107
    .line 108
    sget-object v9, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    sget-object v10, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    const v11, 0x7f060515

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v11, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    .line 129
    .line 130
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 131
    .line 132
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 136
    .line 137
    .line 138
    new-instance v6, Landroid/graphics/Paint;

    .line 139
    .line 140
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    .line 145
    .line 146
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    .line 147
    .line 148
    sget-object v8, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    .line 149
    .line 150
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    sget-object v9, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    const v10, 0x7f060510

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 168
    .line 169
    invoke-direct {v7, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v0, p1, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 176
    .line 177
    .line 178
    const/high16 p1, 0x3f800000    # 1.0f

    .line 179
    .line 180
    iput p1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mScale:F

    .line 181
    .line 182
    new-instance p1, Landroid/graphics/Rect;

    .line 183
    .line 184
    invoke-direct {p1, v2, v2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 185
    .line 186
    .line 187
    iput-object p1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSrcRect:Landroid/graphics/Rect;

    .line 188
    .line 189
    new-instance p1, Landroid/graphics/RectF;

    .line 190
    .line 191
    invoke-direct {p1, v5, v5, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 192
    .line 193
    .line 194
    iput-object p1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mDstRect:Landroid/graphics/RectF;

    .line 195
    .line 196
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mScale:F

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    .line 4
    .line 5
    int-to-float v2, v1

    .line 6
    mul-float/2addr v0, v2

    .line 7
    int-to-float v2, v1

    .line 8
    sub-float/2addr v2, v0

    .line 9
    const/high16 v0, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float/2addr v2, v0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mDstRect:Landroid/graphics/RectF;

    .line 13
    .line 14
    int-to-float v3, v1

    .line 15
    sub-float/2addr v3, v2

    .line 16
    int-to-float v1, v1

    .line 17
    sub-float/2addr v1, v2

    .line 18
    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSrcRect:Landroid/graphics/Rect;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mDstRect:Landroid/graphics/RectF;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    .line 2
    .line 3
    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    .line 2
    .line 3
    return p0
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
.end method
