.class public final Lcom/android/systemui/ScreenDecorHwcLayer;
.super Lcom/android/systemui/DisplayCutoutBaseView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG_COLOR:Z


# instance fields
.field public final bgColor:I

.field public final clearPaint:Landroid/graphics/Paint;

.field public final color:I

.field public final cornerBgFilter:Landroid/graphics/ColorFilter;

.field public final cornerFilter:Landroid/graphics/ColorFilter;

.field public final debugTransparentRegionPaint:Landroid/graphics/Paint;

.field public hasBottomRoundedCorner:Z

.field public hasTopRoundedCorner:Z

.field public roundedCornerBottomSize:I

.field public roundedCornerDrawableBottom:Landroid/graphics/drawable/Drawable;

.field public roundedCornerDrawableTop:Landroid/graphics/drawable/Drawable;

.field public roundedCornerTopSize:I

.field public final tempRect:Landroid/graphics/Rect;

.field public final transparentRect:Landroid/graphics/Rect;

.field public final useInvertedAlphaColor:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/ScreenDecorHwcLayer$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/ScreenDecorHwcLayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_COLOR:Z

    .line 8
    .line 9
    sput-boolean v0, Lcom/android/systemui/ScreenDecorHwcLayer;->DEBUG_COLOR:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/graphics/common/DisplayDecorationSupport;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/DisplayCutoutBaseView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->tempRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    iget p1, p2, Landroid/hardware/graphics/common/DisplayDecorationSupport;->format:I

    .line 19
    .line 20
    const/16 v0, 0x38

    .line 21
    .line 22
    if-ne p1, v0, :cond_3

    .line 23
    .line 24
    sget-boolean p1, Lcom/android/systemui/ScreenDecorHwcLayer;->DEBUG_COLOR:Z

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const p1, -0xff0100

    .line 30
    .line 31
    .line 32
    iput p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->color:I

    .line 33
    .line 34
    iput v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->bgColor:I

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->useInvertedAlphaColor:Z

    .line 37
    .line 38
    new-instance p1, Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 41
    .line 42
    .line 43
    const p2, 0x2f00ff00

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    .line 48
    .line 49
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->debugTransparentRegionPaint:Landroid/graphics/Paint;

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_0
    iget p1, p2, Landroid/hardware/graphics/common/DisplayDecorationSupport;->alphaInterpretation:I

    .line 58
    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move p1, v0

    .line 64
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->useInvertedAlphaColor:Z

    .line 65
    .line 66
    const/high16 p2, -0x1000000

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    iput v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->color:I

    .line 71
    .line 72
    iput p2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->bgColor:I

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iput p2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->color:I

    .line 76
    .line 77
    iput v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->bgColor:I

    .line 78
    .line 79
    :goto_1
    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->debugTransparentRegionPaint:Landroid/graphics/Paint;

    .line 81
    .line 82
    :goto_2
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    .line 83
    .line 84
    iget p2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->color:I

    .line 85
    .line 86
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 87
    .line 88
    invoke-direct {p1, p2, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->cornerFilter:Landroid/graphics/ColorFilter;

    .line 92
    .line 93
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    .line 94
    .line 95
    iget p2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->bgColor:I

    .line 96
    .line 97
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 98
    .line 99
    invoke-direct {p1, p2, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->cornerBgFilter:Landroid/graphics/ColorFilter;

    .line 103
    .line 104
    new-instance p1, Landroid/graphics/Paint;

    .line 105
    .line 106
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->clearPaint:Landroid/graphics/Paint;

    .line 110
    .line 111
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    .line 112
    .line 113
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 114
    .line 115
    invoke-direct {p0, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 123
    .line 124
    iget p1, p2, Landroid/hardware/graphics/common/DisplayDecorationSupport;->format:I

    .line 125
    .line 126
    invoke-static {p1}, Landroid/graphics/PixelFormat;->formatToString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const-string p2, "Attempting to use unsupported mode "

    .line 131
    .line 132
    invoke-static {p2, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0
.end method


# virtual methods
.method public final calculateTransparentRect()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 16
    .line 17
    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 18
    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 38
    .line 39
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 40
    .line 41
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    if-ge v2, v4, :cond_0

    .line 44
    .line 45
    move v2, v4

    .line 46
    :cond_0
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 47
    .line 48
    :cond_1
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 65
    .line 66
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 67
    .line 68
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 69
    .line 70
    if-ge v2, v4, :cond_2

    .line 71
    .line 72
    move v2, v4

    .line 73
    :cond_2
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 74
    .line 75
    :cond_3
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_5

    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 92
    .line 93
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 94
    .line 95
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 96
    .line 97
    if-le v2, v4, :cond_4

    .line 98
    .line 99
    move v2, v4

    .line 100
    :cond_4
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 101
    .line 102
    :cond_5
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_7

    .line 111
    .line 112
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 119
    .line 120
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 121
    .line 122
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 123
    .line 124
    if-le v0, v2, :cond_6

    .line 125
    .line 126
    move v0, v2

    .line 127
    :cond_6
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 128
    .line 129
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    const/4 v1, 0x3

    .line 136
    if-eqz v0, :cond_8

    .line 137
    .line 138
    goto/16 :goto_1

    .line 139
    .line 140
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    iget-object v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    .line 147
    .line 148
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    iget-object v4, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    .line 153
    .line 154
    iget v5, v4, Landroid/graphics/RectF;->left:F

    .line 155
    .line 156
    sub-float v5, v0, v5

    .line 157
    .line 158
    iget v6, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    .line 159
    .line 160
    mul-float/2addr v5, v6

    .line 161
    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 162
    .line 163
    sub-float v4, v2, v4

    .line 164
    .line 165
    mul-float/2addr v4, v6

    .line 166
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->tempRect:Landroid/graphics/Rect;

    .line 167
    .line 168
    sub-float v7, v0, v5

    .line 169
    .line 170
    float-to-double v7, v7

    .line 171
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    .line 172
    .line 173
    .line 174
    move-result-wide v7

    .line 175
    double-to-float v7, v7

    .line 176
    float-to-int v7, v7

    .line 177
    sub-float v8, v2, v4

    .line 178
    .line 179
    float-to-double v8, v8

    .line 180
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    .line 181
    .line 182
    .line 183
    move-result-wide v8

    .line 184
    double-to-float v8, v8

    .line 185
    float-to-int v8, v8

    .line 186
    add-float/2addr v0, v5

    .line 187
    float-to-double v9, v0

    .line 188
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 189
    .line 190
    .line 191
    move-result-wide v9

    .line 192
    double-to-float v0, v9

    .line 193
    float-to-int v0, v0

    .line 194
    add-float/2addr v2, v4

    .line 195
    float-to-double v4, v2

    .line 196
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 197
    .line 198
    .line 199
    move-result-wide v4

    .line 200
    double-to-float v2, v4

    .line 201
    float-to-int v2, v2

    .line 202
    invoke-virtual {v6, v7, v8, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->tempRect:Landroid/graphics/Rect;

    .line 206
    .line 207
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 208
    .line 209
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 210
    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    iget-object v5, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->tempRect:Landroid/graphics/Rect;

    .line 216
    .line 217
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 218
    .line 219
    sub-int/2addr v4, v5

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->tempRect:Landroid/graphics/Rect;

    .line 225
    .line 226
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 227
    .line 228
    sub-int/2addr v5, v6

    .line 229
    filled-new-array {v0, v4, v5}, [I

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    move v8, v2

    .line 234
    move v7, v3

    .line 235
    :goto_0
    if-ge v7, v1, :cond_9

    .line 236
    .line 237
    aget v9, v6, v7

    .line 238
    .line 239
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    add-int/lit8 v7, v7, 0x1

    .line 244
    .line 245
    goto :goto_0

    .line 246
    :cond_9
    if-ne v8, v2, :cond_b

    .line 247
    .line 248
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 249
    .line 250
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->tempRect:Landroid/graphics/Rect;

    .line 251
    .line 252
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 253
    .line 254
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 255
    .line 256
    if-ge v2, v4, :cond_a

    .line 257
    .line 258
    move v2, v4

    .line 259
    :cond_a
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_b
    if-ne v8, v0, :cond_d

    .line 263
    .line 264
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 265
    .line 266
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->tempRect:Landroid/graphics/Rect;

    .line 267
    .line 268
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 269
    .line 270
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 271
    .line 272
    if-ge v2, v4, :cond_c

    .line 273
    .line 274
    move v2, v4

    .line 275
    :cond_c
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_d
    if-ne v8, v4, :cond_f

    .line 279
    .line 280
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 281
    .line 282
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->tempRect:Landroid/graphics/Rect;

    .line 283
    .line 284
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 285
    .line 286
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 287
    .line 288
    if-le v2, v4, :cond_e

    .line 289
    .line 290
    move v2, v4

    .line 291
    :cond_e
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 292
    .line 293
    goto :goto_1

    .line 294
    :cond_f
    if-ne v8, v5, :cond_11

    .line 295
    .line 296
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 297
    .line 298
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->tempRect:Landroid/graphics/Rect;

    .line 299
    .line 300
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 301
    .line 302
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 303
    .line 304
    if-le v2, v4, :cond_10

    .line 305
    .line 306
    move v2, v4

    .line 307
    :cond_10
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 308
    .line 309
    :cond_11
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 310
    .line 311
    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 312
    .line 313
    const/4 v2, 0x1

    .line 314
    if-eqz v0, :cond_16

    .line 315
    .line 316
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    if-eqz v4, :cond_13

    .line 325
    .line 326
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-nez v4, :cond_12

    .line 335
    .line 336
    goto :goto_2

    .line 337
    :cond_12
    move v4, v3

    .line 338
    goto :goto_3

    .line 339
    :cond_13
    :goto_2
    move v4, v2

    .line 340
    :goto_3
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    if-eqz v5, :cond_15

    .line 349
    .line 350
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-nez v0, :cond_14

    .line 359
    .line 360
    goto :goto_4

    .line 361
    :cond_14
    move v0, v3

    .line 362
    goto :goto_5

    .line 363
    :cond_15
    :goto_4
    move v0, v2

    .line 364
    goto :goto_5

    .line 365
    :cond_16
    move v0, v3

    .line 366
    move v4, v0

    .line 367
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 368
    .line 369
    .line 370
    move-result v5

    .line 371
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    if-ge v5, v6, :cond_17

    .line 376
    .line 377
    move v5, v2

    .line 378
    goto :goto_6

    .line 379
    :cond_17
    move v5, v3

    .line 380
    :goto_6
    const/4 v6, 0x2

    .line 381
    if-eqz v5, :cond_1d

    .line 382
    .line 383
    if-nez v4, :cond_1a

    .line 384
    .line 385
    if-eqz v0, :cond_1a

    .line 386
    .line 387
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 388
    .line 389
    invoke-virtual {p0, v3}, Lcom/android/systemui/ScreenDecorHwcLayer;->getRoundedCornerSizeByPosition(I)I

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 394
    .line 395
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 396
    .line 397
    if-ge v1, v3, :cond_18

    .line 398
    .line 399
    move v1, v3

    .line 400
    :cond_18
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 401
    .line 402
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    invoke-virtual {p0, v6}, Lcom/android/systemui/ScreenDecorHwcLayer;->getRoundedCornerSizeByPosition(I)I

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    sub-int/2addr v0, v1

    .line 411
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 412
    .line 413
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 414
    .line 415
    if-le v0, p0, :cond_19

    .line 416
    .line 417
    move v0, p0

    .line 418
    :cond_19
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 419
    .line 420
    goto/16 :goto_7

    .line 421
    .line 422
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 423
    .line 424
    invoke-virtual {p0, v2}, Lcom/android/systemui/ScreenDecorHwcLayer;->getRoundedCornerSizeByPosition(I)I

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 429
    .line 430
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 431
    .line 432
    if-ge v2, v4, :cond_1b

    .line 433
    .line 434
    move v2, v4

    .line 435
    :cond_1b
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 436
    .line 437
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    invoke-virtual {p0, v1}, Lcom/android/systemui/ScreenDecorHwcLayer;->getRoundedCornerSizeByPosition(I)I

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    sub-int/2addr v0, v1

    .line 446
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 447
    .line 448
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 449
    .line 450
    if-le v0, p0, :cond_1c

    .line 451
    .line 452
    move v0, p0

    .line 453
    :cond_1c
    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 454
    .line 455
    goto :goto_7

    .line 456
    :cond_1d
    if-eqz v4, :cond_20

    .line 457
    .line 458
    if-nez v0, :cond_20

    .line 459
    .line 460
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 461
    .line 462
    invoke-virtual {p0, v2}, Lcom/android/systemui/ScreenDecorHwcLayer;->getRoundedCornerSizeByPosition(I)I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 467
    .line 468
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 469
    .line 470
    if-ge v2, v4, :cond_1e

    .line 471
    .line 472
    move v2, v4

    .line 473
    :cond_1e
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 474
    .line 475
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    invoke-virtual {p0, v1}, Lcom/android/systemui/ScreenDecorHwcLayer;->getRoundedCornerSizeByPosition(I)I

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    sub-int/2addr v0, v1

    .line 484
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 485
    .line 486
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 487
    .line 488
    if-le v0, p0, :cond_1f

    .line 489
    .line 490
    move v0, p0

    .line 491
    :cond_1f
    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 492
    .line 493
    goto :goto_7

    .line 494
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 495
    .line 496
    invoke-virtual {p0, v3}, Lcom/android/systemui/ScreenDecorHwcLayer;->getRoundedCornerSizeByPosition(I)I

    .line 497
    .line 498
    .line 499
    move-result v1

    .line 500
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 501
    .line 502
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 503
    .line 504
    if-ge v1, v3, :cond_21

    .line 505
    .line 506
    move v1, v3

    .line 507
    :cond_21
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 508
    .line 509
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    invoke-virtual {p0, v6}, Lcom/android/systemui/ScreenDecorHwcLayer;->getRoundedCornerSizeByPosition(I)I

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    sub-int/2addr v0, v1

    .line 518
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 519
    .line 520
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 521
    .line 522
    if-le v0, p0, :cond_22

    .line 523
    .line 524
    move v0, p0

    .line 525
    :cond_22
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 526
    .line 527
    :goto_7
    return-void
.end method

.method public final drawCutoutProtection(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->useInvertedAlphaColor:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    int-to-float v5, p3

    .line 8
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->clearPaint:Landroid/graphics/Paint;

    .line 9
    .line 10
    move-object v1, p1

    .line 11
    move v4, v5

    .line 12
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13
    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->cornerBgFilter:Landroid/graphics/ColorFilter;

    .line 19
    .line 20
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-nez p2, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->cornerFilter:Landroid/graphics/ColorFilter;

    .line 28
    .line 29
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    if-eqz p2, :cond_3

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 35
    .line 36
    .line 37
    :cond_3
    if-eqz p2, :cond_4

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 40
    .line 41
    .line 42
    :cond_4
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6
    .line 7
    .line 8
    const-string v1, "ScreenDecorHwcLayer:"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Lcom/android/systemui/DisplayCutoutBaseView;->dump(Ljava/io/PrintWriter;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v1, "this="

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string/jumbo v2, "transparentRect="

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasTopRoundedCorner:Z

    .line 55
    .line 56
    const-string v1, "hasTopRoundedCorner="

    .line 57
    .line 58
    invoke-static {v1, p1, v0}, Lcom/android/systemui/DisplayCutoutBaseView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 59
    .line 60
    .line 61
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasBottomRoundedCorner:Z

    .line 62
    .line 63
    const-string v1, "hasBottomRoundedCorner="

    .line 64
    .line 65
    invoke-static {v1, p1, v0}, Lcom/android/systemui/DisplayCutoutBaseView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 66
    .line 67
    .line 68
    iget p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerTopSize:I

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string/jumbo v2, "roundedCornerTopSize="

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerBottomSize:I

    .line 89
    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string/jumbo v1, "roundedCornerBottomSize="

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorHwcLayer;->calculateTransparentRect()V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/android/systemui/ScreenDecorHwcLayer;->DEBUG_COLOR:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 15
    .line 16
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 17
    .line 18
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final getRoundedCornerSizeByPosition(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayRotation:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x0

    .line 4
    .line 5
    add-int/2addr v0, p1

    .line 6
    rem-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerBottomSize:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "Incorrect position: "

    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    iget p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerTopSize:I

    .line 35
    .line 36
    iget p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerBottomSize:I

    .line 37
    .line 38
    if-ge p1, p0, :cond_4

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerTopSize:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    iget p1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerTopSize:I

    .line 45
    .line 46
    iget p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerBottomSize:I

    .line 47
    .line 48
    if-ge p1, p0, :cond_4

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    move p0, p1

    .line 52
    :goto_0
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/DisplayCutoutBaseView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    sget-boolean v0, Lcom/android/systemui/ScreenDecorHwcLayer;->DEBUG_COLOR:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setDisplayDecoration(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->useInvertedAlphaColor:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->clearPaint:Landroid/graphics/Paint;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->clearPaint:Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    .line 42
    .line 43
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const v1, 0x7f07016d

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    int-to-float p0, p0

    .line 62
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    .line 67
    .line 68
    iget v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->color:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    .line 74
    .line 75
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->useInvertedAlphaColor:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->bgColor:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasTopRoundedCorner:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasBottomRoundedCorner:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    move v1, v0

    .line 21
    :goto_0
    const/4 v2, 0x4

    .line 22
    if-lt v1, v2, :cond_3

    .line 23
    .line 24
    :goto_1
    invoke-super {p0, p1}, Lcom/android/systemui/DisplayCutoutBaseView;->onDraw(Landroid/graphics/Canvas;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->debugTransparentRegionPaint:Landroid/graphics/Paint;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->transparentRect:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void

    .line 37
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    .line 39
    .line 40
    mul-int/lit8 v2, v1, 0x5a

    .line 41
    .line 42
    iget v3, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayRotation:I

    .line 43
    .line 44
    const/16 v4, 0x5a

    .line 45
    .line 46
    mul-int/2addr v3, v4

    .line 47
    sub-int/2addr v2, v3

    .line 48
    add-int/lit16 v2, v2, 0x168

    .line 49
    .line 50
    rem-int/lit16 v2, v2, 0x168

    .line 51
    .line 52
    int-to-float v3, v2

    .line 53
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 54
    .line 55
    .line 56
    const-string v3, "Incorrect degree: "

    .line 57
    .line 58
    const/16 v5, 0x10e

    .line 59
    .line 60
    const/16 v6, 0xb4

    .line 61
    .line 62
    if-eqz v2, :cond_6

    .line 63
    .line 64
    if-eq v2, v4, :cond_6

    .line 65
    .line 66
    if-eq v2, v6, :cond_5

    .line 67
    .line 68
    if-ne v2, v5, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    invoke-static {v3, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    :goto_2
    neg-int v7, v7

    .line 90
    goto :goto_3

    .line 91
    :cond_6
    move v7, v0

    .line 92
    :goto_3
    int-to-float v7, v7

    .line 93
    if-eqz v2, :cond_a

    .line 94
    .line 95
    if-eq v2, v4, :cond_9

    .line 96
    .line 97
    if-eq v2, v6, :cond_8

    .line 98
    .line 99
    if-ne v2, v5, :cond_7

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    invoke-static {v3, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    goto :goto_4

    .line 117
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    :goto_4
    neg-int v2, v2

    .line 122
    goto :goto_6

    .line 123
    :cond_a
    :goto_5
    move v2, v0

    .line 124
    :goto_6
    int-to-float v2, v2

    .line 125
    invoke-virtual {p1, v7, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 126
    .line 127
    .line 128
    iget-boolean v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasTopRoundedCorner:Z

    .line 129
    .line 130
    if-eqz v2, :cond_c

    .line 131
    .line 132
    if-eqz v1, :cond_b

    .line 133
    .line 134
    const/4 v2, 0x1

    .line 135
    if-ne v1, v2, :cond_c

    .line 136
    .line 137
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    iget v3, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerTopSize:I

    .line 140
    .line 141
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/systemui/ScreenDecorHwcLayer;->drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V

    .line 142
    .line 143
    .line 144
    goto :goto_7

    .line 145
    :cond_c
    iget-boolean v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->hasBottomRoundedCorner:Z

    .line 146
    .line 147
    if-eqz v2, :cond_e

    .line 148
    .line 149
    const/4 v2, 0x3

    .line 150
    if-eq v1, v2, :cond_d

    .line 151
    .line 152
    const/4 v2, 0x2

    .line 153
    if-ne v1, v2, :cond_e

    .line 154
    .line 155
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 156
    .line 157
    iget v3, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerBottomSize:I

    .line 158
    .line 159
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/systemui/ScreenDecorHwcLayer;->drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V

    .line 160
    .line 161
    .line 162
    :cond_e
    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 163
    .line 164
    .line 165
    add-int/lit8 v1, v1, 0x1

    .line 166
    .line 167
    goto/16 :goto_0
.end method

.method public final onUpdate()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
