.class public Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBgBitmap:Landroid/graphics/Bitmap;

.field public mHeight:I

.field public mIsMultiResolutionSupoorted:Z

.field public mIsNoFrame:Z

.field public mMaskBgPaint:Landroid/graphics/Paint;

.field public mMaskPaint:Landroid/graphics/Paint;

.field public final mMaskPath:Landroid/graphics/Path;

.field public mMaskingEdgeArea:Z

.field public mOrientation:I

.field public final mOutsideMaskPath:Landroid/graphics/Path;

.field public mStrokeWidth:F

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    .line 4
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    .line 5
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->getRadiusController()V

    const/high16 p1, 0x41200000    # 10.0f

    .line 6
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskingEdgeArea:Z

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsNoFrame:Z

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->initializeScreen()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;

    .line 13
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    .line 14
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    .line 15
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->getRadiusController()V

    const/high16 p1, 0x41200000    # 10.0f

    .line 16
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskingEdgeArea:Z

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsNoFrame:Z

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->initializeScreen()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;

    .line 23
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    .line 24
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    .line 25
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->getRadiusController()V

    const/high16 p1, 0x41200000    # 10.0f

    .line 26
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskingEdgeArea:Z

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    .line 29
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsNoFrame:Z

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->initializeScreen()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    const-class p1, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;

    .line 33
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    .line 34
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    .line 35
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->getRadiusController()V

    const/high16 p1, 0x41200000    # 10.0f

    .line 36
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskingEdgeArea:Z

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsNoFrame:Z

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->initializeScreen()V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskingEdgeArea:Z

    .line 2
    .line 3
    if-eqz v0, :cond_46

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsNoFrame:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_13

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    .line 12
    .line 13
    if-eqz v0, :cond_45

    .line 14
    .line 15
    iget v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_12

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    .line 36
    .line 37
    iget v2, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    if-le v1, v2, :cond_2

    .line 41
    .line 42
    div-int/2addr v2, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    div-int/2addr v1, v3

    .line 45
    :goto_0
    new-instance v1, Landroid/graphics/RectF;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    int-to-float v2, v2

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    int-to-float v4, v4

    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-direct {v1, v5, v5, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 59
    .line 60
    .line 61
    const/16 v2, 0xff

    .line 62
    .line 63
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    .line 64
    .line 65
    .line 66
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 70
    .line 71
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    .line 77
    .line 78
    sget-object v2, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    .line 84
    .line 85
    sget-object v2, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-boolean v2, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsMultiResolutionSupoorted:Z

    .line 95
    .line 96
    sget-object v4, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME_FOR_JPN:Ljava/lang/String;

    .line 103
    .line 104
    const-string v6, ""

    .line 105
    .line 106
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-nez v6, :cond_3

    .line 111
    .line 112
    sput-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 113
    .line 114
    :cond_3
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 115
    .line 116
    const-string v6, "SM-S928"

    .line 117
    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_4

    .line 123
    .line 124
    const v5, 0x7f0711f8

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    goto/16 :goto_c

    .line 132
    .line 133
    :cond_4
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 134
    .line 135
    const-string v6, "SM-S926"

    .line 136
    .line 137
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-eqz v5, :cond_5

    .line 142
    .line 143
    const v5, 0x7f0711f7

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    goto/16 :goto_c

    .line 151
    .line 152
    :cond_5
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 153
    .line 154
    const-string v6, "SM-S921"

    .line 155
    .line 156
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_6

    .line 161
    .line 162
    const v5, 0x7f0711f6

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    goto/16 :goto_c

    .line 170
    .line 171
    :cond_6
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 172
    .line 173
    const-string v6, "SM-S918"

    .line 174
    .line 175
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-eqz v5, :cond_7

    .line 180
    .line 181
    const v5, 0x7f0711f5

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    goto/16 :goto_c

    .line 189
    .line 190
    :cond_7
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 191
    .line 192
    const-string v6, "SM-S916"

    .line 193
    .line 194
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-eqz v5, :cond_8

    .line 199
    .line 200
    const v5, 0x7f0711f4

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    goto/16 :goto_c

    .line 208
    .line 209
    :cond_8
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 210
    .line 211
    const-string v6, "SM-S911"

    .line 212
    .line 213
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-eqz v5, :cond_9

    .line 218
    .line 219
    const v5, 0x7f0711f3

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    goto/16 :goto_c

    .line 227
    .line 228
    :cond_9
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 229
    .line 230
    const-string v6, "SM-S908"

    .line 231
    .line 232
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-eqz v5, :cond_a

    .line 237
    .line 238
    const v5, 0x7f0711f2

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    goto/16 :goto_c

    .line 246
    .line 247
    :cond_a
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 248
    .line 249
    const-string v6, "SM-S906"

    .line 250
    .line 251
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    if-eqz v5, :cond_b

    .line 256
    .line 257
    const v5, 0x7f0711f1

    .line 258
    .line 259
    .line 260
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    goto/16 :goto_c

    .line 265
    .line 266
    :cond_b
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 267
    .line 268
    const-string v6, "SM-S901"

    .line 269
    .line 270
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-eqz v5, :cond_c

    .line 275
    .line 276
    const v5, 0x7f0711f0

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    goto/16 :goto_c

    .line 284
    .line 285
    :cond_c
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 286
    .line 287
    const-string v6, "SM-N980"

    .line 288
    .line 289
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    if-eqz v5, :cond_d

    .line 294
    .line 295
    const v5, 0x7f0711ec

    .line 296
    .line 297
    .line 298
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    goto/16 :goto_c

    .line 303
    .line 304
    :cond_d
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 305
    .line 306
    const-string v6, "SM-N981"

    .line 307
    .line 308
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    if-eqz v5, :cond_e

    .line 313
    .line 314
    const v5, 0x7f0711ed

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    goto/16 :goto_c

    .line 322
    .line 323
    :cond_e
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 324
    .line 325
    const-string v6, "SM-N98"

    .line 326
    .line 327
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 328
    .line 329
    .line 330
    move-result v5

    .line 331
    if-eqz v5, :cond_f

    .line 332
    .line 333
    const v5, 0x7f0711ee

    .line 334
    .line 335
    .line 336
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    goto/16 :goto_c

    .line 341
    .line 342
    :cond_f
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 343
    .line 344
    const-string v6, "SM-N97"

    .line 345
    .line 346
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 347
    .line 348
    .line 349
    move-result v5

    .line 350
    if-eqz v5, :cond_10

    .line 351
    .line 352
    const v5, 0x7f0711eb

    .line 353
    .line 354
    .line 355
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    goto/16 :goto_c

    .line 360
    .line 361
    :cond_10
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 362
    .line 363
    const-string v6, "SM-N77"

    .line 364
    .line 365
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 366
    .line 367
    .line 368
    move-result v5

    .line 369
    if-eqz v5, :cond_11

    .line 370
    .line 371
    const v5, 0x7f0711ea

    .line 372
    .line 373
    .line 374
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    goto/16 :goto_c

    .line 379
    .line 380
    :cond_11
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 381
    .line 382
    const-string v6, "SM-G981"

    .line 383
    .line 384
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    if-eqz v5, :cond_12

    .line 389
    .line 390
    const v5, 0x7f0711e4

    .line 391
    .line 392
    .line 393
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    goto/16 :goto_c

    .line 398
    .line 399
    :cond_12
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 400
    .line 401
    const-string v6, "SM-G988"

    .line 402
    .line 403
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    if-eqz v5, :cond_13

    .line 408
    .line 409
    const v5, 0x7f0711e5

    .line 410
    .line 411
    .line 412
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 413
    .line 414
    .line 415
    move-result v4

    .line 416
    goto/16 :goto_c

    .line 417
    .line 418
    :cond_13
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 419
    .line 420
    const-string v6, "SM-G98"

    .line 421
    .line 422
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    if-eqz v5, :cond_14

    .line 427
    .line 428
    const v5, 0x7f0711e6

    .line 429
    .line 430
    .line 431
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    goto/16 :goto_c

    .line 436
    .line 437
    :cond_14
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 438
    .line 439
    const-string v6, "SM-G97"

    .line 440
    .line 441
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    if-eqz v5, :cond_15

    .line 446
    .line 447
    const v5, 0x7f0711e3

    .line 448
    .line 449
    .line 450
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    goto/16 :goto_c

    .line 455
    .line 456
    :cond_15
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 457
    .line 458
    const-string v6, "SM-G715"

    .line 459
    .line 460
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 461
    .line 462
    .line 463
    move-result v5

    .line 464
    if-eqz v5, :cond_16

    .line 465
    .line 466
    const v5, 0x7f0711e0

    .line 467
    .line 468
    .line 469
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 470
    .line 471
    .line 472
    move-result v4

    .line 473
    goto/16 :goto_c

    .line 474
    .line 475
    :cond_16
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 476
    .line 477
    const-string v6, "SM-G77"

    .line 478
    .line 479
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 480
    .line 481
    .line 482
    move-result v5

    .line 483
    if-eqz v5, :cond_17

    .line 484
    .line 485
    const v5, 0x7f0711e1

    .line 486
    .line 487
    .line 488
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 489
    .line 490
    .line 491
    move-result v4

    .line 492
    goto/16 :goto_c

    .line 493
    .line 494
    :cond_17
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 495
    .line 496
    const-string v6, "SM-G78"

    .line 497
    .line 498
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 499
    .line 500
    .line 501
    move-result v5

    .line 502
    if-eqz v5, :cond_18

    .line 503
    .line 504
    const v5, 0x7f0711e2

    .line 505
    .line 506
    .line 507
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 508
    .line 509
    .line 510
    move-result v4

    .line 511
    goto/16 :goto_c

    .line 512
    .line 513
    :cond_18
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 514
    .line 515
    const-string v6, "SM-F74"

    .line 516
    .line 517
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 518
    .line 519
    .line 520
    move-result v5

    .line 521
    if-nez v5, :cond_37

    .line 522
    .line 523
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 524
    .line 525
    const-string v6, "SM-F73"

    .line 526
    .line 527
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 528
    .line 529
    .line 530
    move-result v5

    .line 531
    if-nez v5, :cond_37

    .line 532
    .line 533
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 534
    .line 535
    const-string v6, "SM-F72"

    .line 536
    .line 537
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 538
    .line 539
    .line 540
    move-result v5

    .line 541
    if-nez v5, :cond_37

    .line 542
    .line 543
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 544
    .line 545
    const-string v6, "SM-W7023"

    .line 546
    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 548
    .line 549
    .line 550
    move-result v5

    .line 551
    if-nez v5, :cond_37

    .line 552
    .line 553
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 554
    .line 555
    const-string v6, "SM-W7024"

    .line 556
    .line 557
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 558
    .line 559
    .line 560
    move-result v5

    .line 561
    if-eqz v5, :cond_19

    .line 562
    .line 563
    goto/16 :goto_a

    .line 564
    .line 565
    :cond_19
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 566
    .line 567
    const-string v6, "SM-F71"

    .line 568
    .line 569
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 570
    .line 571
    .line 572
    move-result v5

    .line 573
    if-eqz v5, :cond_1a

    .line 574
    .line 575
    const v5, 0x7f0711d1

    .line 576
    .line 577
    .line 578
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 579
    .line 580
    .line 581
    move-result v4

    .line 582
    goto/16 :goto_c

    .line 583
    .line 584
    :cond_1a
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 585
    .line 586
    const-string v6, "SM-F7"

    .line 587
    .line 588
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 589
    .line 590
    .line 591
    move-result v5

    .line 592
    if-eqz v5, :cond_1b

    .line 593
    .line 594
    const v5, 0x7f0711d4

    .line 595
    .line 596
    .line 597
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 598
    .line 599
    .line 600
    move-result v4

    .line 601
    goto/16 :goto_c

    .line 602
    .line 603
    :cond_1b
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 604
    .line 605
    const-string v6, "SM-F95"

    .line 606
    .line 607
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 608
    .line 609
    .line 610
    move-result v5

    .line 611
    if-eqz v5, :cond_1d

    .line 612
    .line 613
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isFolded()Z

    .line 614
    .line 615
    .line 616
    move-result v5

    .line 617
    if-eqz v5, :cond_1c

    .line 618
    .line 619
    const v5, 0x7f0711de

    .line 620
    .line 621
    .line 622
    goto :goto_1

    .line 623
    :cond_1c
    const v5, 0x7f0711dd

    .line 624
    .line 625
    .line 626
    :goto_1
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 627
    .line 628
    .line 629
    move-result v4

    .line 630
    goto/16 :goto_c

    .line 631
    .line 632
    :cond_1d
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 633
    .line 634
    const-string v6, "SM-F94"

    .line 635
    .line 636
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 637
    .line 638
    .line 639
    move-result v5

    .line 640
    if-nez v5, :cond_35

    .line 641
    .line 642
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 643
    .line 644
    const-string v6, "SM-F93"

    .line 645
    .line 646
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 647
    .line 648
    .line 649
    move-result v5

    .line 650
    if-nez v5, :cond_35

    .line 651
    .line 652
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 653
    .line 654
    const-string v6, "SM-W9023"

    .line 655
    .line 656
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 657
    .line 658
    .line 659
    move-result v5

    .line 660
    if-nez v5, :cond_35

    .line 661
    .line 662
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 663
    .line 664
    const-string v6, "SM-W9024"

    .line 665
    .line 666
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 667
    .line 668
    .line 669
    move-result v5

    .line 670
    if-eqz v5, :cond_1e

    .line 671
    .line 672
    goto/16 :goto_8

    .line 673
    .line 674
    :cond_1e
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 675
    .line 676
    const-string v6, "SM-W2021"

    .line 677
    .line 678
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 679
    .line 680
    .line 681
    move-result v5

    .line 682
    if-eqz v5, :cond_20

    .line 683
    .line 684
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isFolded()Z

    .line 685
    .line 686
    .line 687
    move-result v5

    .line 688
    if-eqz v5, :cond_1f

    .line 689
    .line 690
    const v5, 0x7f0711fc

    .line 691
    .line 692
    .line 693
    goto :goto_2

    .line 694
    :cond_1f
    const v5, 0x7f0711fb

    .line 695
    .line 696
    .line 697
    :goto_2
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 698
    .line 699
    .line 700
    move-result v4

    .line 701
    goto/16 :goto_c

    .line 702
    .line 703
    :cond_20
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 704
    .line 705
    const-string v6, "SM-F92"

    .line 706
    .line 707
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 708
    .line 709
    .line 710
    move-result v5

    .line 711
    if-nez v5, :cond_33

    .line 712
    .line 713
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 714
    .line 715
    const-string v6, "SM-W2022"

    .line 716
    .line 717
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 718
    .line 719
    .line 720
    move-result v5

    .line 721
    if-eqz v5, :cond_21

    .line 722
    .line 723
    goto/16 :goto_6

    .line 724
    .line 725
    :cond_21
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 726
    .line 727
    const-string v6, "SM-F91"

    .line 728
    .line 729
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 730
    .line 731
    .line 732
    move-result v5

    .line 733
    if-eqz v5, :cond_23

    .line 734
    .line 735
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isFolded()Z

    .line 736
    .line 737
    .line 738
    move-result v5

    .line 739
    if-eqz v5, :cond_22

    .line 740
    .line 741
    const v5, 0x7f0711d8

    .line 742
    .line 743
    .line 744
    goto :goto_3

    .line 745
    :cond_22
    const v5, 0x7f0711d7

    .line 746
    .line 747
    .line 748
    :goto_3
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 749
    .line 750
    .line 751
    move-result v4

    .line 752
    goto/16 :goto_c

    .line 753
    .line 754
    :cond_23
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 755
    .line 756
    const-string v6, "SM-F90"

    .line 757
    .line 758
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 759
    .line 760
    .line 761
    move-result v5

    .line 762
    if-eqz v5, :cond_25

    .line 763
    .line 764
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isFolded()Z

    .line 765
    .line 766
    .line 767
    move-result v5

    .line 768
    if-eqz v5, :cond_24

    .line 769
    .line 770
    const v5, 0x7f0711d6

    .line 771
    .line 772
    .line 773
    goto :goto_4

    .line 774
    :cond_24
    const v5, 0x7f0711d5

    .line 775
    .line 776
    .line 777
    :goto_4
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 778
    .line 779
    .line 780
    move-result v4

    .line 781
    goto/16 :goto_c

    .line 782
    .line 783
    :cond_25
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 784
    .line 785
    const-string v6, "SM-G991"

    .line 786
    .line 787
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 788
    .line 789
    .line 790
    move-result v5

    .line 791
    if-eqz v5, :cond_26

    .line 792
    .line 793
    const v5, 0x7f0711e7

    .line 794
    .line 795
    .line 796
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 797
    .line 798
    .line 799
    move-result v4

    .line 800
    goto/16 :goto_c

    .line 801
    .line 802
    :cond_26
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 803
    .line 804
    const-string v6, "SM-G99"

    .line 805
    .line 806
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 807
    .line 808
    .line 809
    move-result v5

    .line 810
    if-nez v5, :cond_32

    .line 811
    .line 812
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 813
    .line 814
    const-string v6, "SM-S71"

    .line 815
    .line 816
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 817
    .line 818
    .line 819
    move-result v5

    .line 820
    if-eqz v5, :cond_27

    .line 821
    .line 822
    goto/16 :goto_5

    .line 823
    .line 824
    :cond_27
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 825
    .line 826
    const-string v6, "SM-S72"

    .line 827
    .line 828
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 829
    .line 830
    .line 831
    move-result v5

    .line 832
    if-eqz v5, :cond_28

    .line 833
    .line 834
    const v5, 0x7f0711ef

    .line 835
    .line 836
    .line 837
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 838
    .line 839
    .line 840
    move-result v4

    .line 841
    goto/16 :goto_c

    .line 842
    .line 843
    :cond_28
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 844
    .line 845
    const-string v6, "SM-G52"

    .line 846
    .line 847
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 848
    .line 849
    .line 850
    move-result v5

    .line 851
    if-eqz v5, :cond_29

    .line 852
    .line 853
    const v5, 0x7f0711df

    .line 854
    .line 855
    .line 856
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 857
    .line 858
    .line 859
    move-result v4

    .line 860
    goto/16 :goto_c

    .line 861
    .line 862
    :cond_29
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 863
    .line 864
    const-string v6, "SM-A51"

    .line 865
    .line 866
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 867
    .line 868
    .line 869
    move-result v5

    .line 870
    if-eqz v5, :cond_2a

    .line 871
    .line 872
    const v5, 0x7f0711cc

    .line 873
    .line 874
    .line 875
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 876
    .line 877
    .line 878
    move-result v4

    .line 879
    goto/16 :goto_c

    .line 880
    .line 881
    :cond_2a
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 882
    .line 883
    const-string v6, "SM-A52"

    .line 884
    .line 885
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 886
    .line 887
    .line 888
    move-result v5

    .line 889
    if-eqz v5, :cond_2b

    .line 890
    .line 891
    const v5, 0x7f0711cd

    .line 892
    .line 893
    .line 894
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 895
    .line 896
    .line 897
    move-result v4

    .line 898
    goto/16 :goto_c

    .line 899
    .line 900
    :cond_2b
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 901
    .line 902
    const-string v6, "SM-A72"

    .line 903
    .line 904
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 905
    .line 906
    .line 907
    move-result v5

    .line 908
    if-eqz v5, :cond_2c

    .line 909
    .line 910
    const v5, 0x7f0711cf

    .line 911
    .line 912
    .line 913
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 914
    .line 915
    .line 916
    move-result v4

    .line 917
    goto/16 :goto_c

    .line 918
    .line 919
    :cond_2c
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 920
    .line 921
    const-string v6, "SM-A71"

    .line 922
    .line 923
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 924
    .line 925
    .line 926
    move-result v5

    .line 927
    if-eqz v5, :cond_2d

    .line 928
    .line 929
    const v5, 0x7f0711ce

    .line 930
    .line 931
    .line 932
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 933
    .line 934
    .line 935
    move-result v4

    .line 936
    goto/16 :goto_c

    .line 937
    .line 938
    :cond_2d
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 939
    .line 940
    const-string v6, "SM-A32"

    .line 941
    .line 942
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 943
    .line 944
    .line 945
    move-result v5

    .line 946
    if-eqz v5, :cond_2e

    .line 947
    .line 948
    const v5, 0x7f0711cb

    .line 949
    .line 950
    .line 951
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 952
    .line 953
    .line 954
    move-result v4

    .line 955
    goto/16 :goto_c

    .line 956
    .line 957
    :cond_2e
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 958
    .line 959
    const-string v6, "SM-T97"

    .line 960
    .line 961
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 962
    .line 963
    .line 964
    move-result v5

    .line 965
    if-eqz v5, :cond_2f

    .line 966
    .line 967
    const v5, 0x7f0711fa

    .line 968
    .line 969
    .line 970
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 971
    .line 972
    .line 973
    move-result v4

    .line 974
    goto/16 :goto_c

    .line 975
    .line 976
    :cond_2f
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 977
    .line 978
    const-string v6, "SM-T87"

    .line 979
    .line 980
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 981
    .line 982
    .line 983
    move-result v5

    .line 984
    if-eqz v5, :cond_30

    .line 985
    .line 986
    const v5, 0x7f0711f9

    .line 987
    .line 988
    .line 989
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 990
    .line 991
    .line 992
    move-result v4

    .line 993
    goto :goto_c

    .line 994
    :cond_30
    sget-object v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_NAME:Ljava/lang/String;

    .line 995
    .line 996
    const-string v6, "SM-M127"

    .line 997
    .line 998
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 999
    .line 1000
    .line 1001
    move-result v5

    .line 1002
    if-eqz v5, :cond_31

    .line 1003
    .line 1004
    const v5, 0x7f0711e9

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1008
    .line 1009
    .line 1010
    move-result v4

    .line 1011
    goto :goto_c

    .line 1012
    :cond_31
    const v5, 0x7f0711d0

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1016
    .line 1017
    .line 1018
    move-result v4

    .line 1019
    goto :goto_c

    .line 1020
    :cond_32
    :goto_5
    const v5, 0x7f0711e8

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1024
    .line 1025
    .line 1026
    move-result v4

    .line 1027
    goto :goto_c

    .line 1028
    :cond_33
    :goto_6
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isFolded()Z

    .line 1029
    .line 1030
    .line 1031
    move-result v5

    .line 1032
    if-eqz v5, :cond_34

    .line 1033
    .line 1034
    const v5, 0x7f0711da

    .line 1035
    .line 1036
    .line 1037
    goto :goto_7

    .line 1038
    :cond_34
    const v5, 0x7f0711d9

    .line 1039
    .line 1040
    .line 1041
    :goto_7
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1042
    .line 1043
    .line 1044
    move-result v4

    .line 1045
    goto :goto_c

    .line 1046
    :cond_35
    :goto_8
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isFolded()Z

    .line 1047
    .line 1048
    .line 1049
    move-result v5

    .line 1050
    if-eqz v5, :cond_36

    .line 1051
    .line 1052
    const v5, 0x7f0711dc

    .line 1053
    .line 1054
    .line 1055
    goto :goto_9

    .line 1056
    :cond_36
    const v5, 0x7f0711db

    .line 1057
    .line 1058
    .line 1059
    :goto_9
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1060
    .line 1061
    .line 1062
    move-result v4

    .line 1063
    goto :goto_c

    .line 1064
    :cond_37
    :goto_a
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isFolded()Z

    .line 1065
    .line 1066
    .line 1067
    move-result v5

    .line 1068
    if-eqz v5, :cond_38

    .line 1069
    .line 1070
    const v5, 0x7f0711d3

    .line 1071
    .line 1072
    .line 1073
    goto :goto_b

    .line 1074
    :cond_38
    const v5, 0x7f0711d2

    .line 1075
    .line 1076
    .line 1077
    :goto_b
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1078
    .line 1079
    .line 1080
    move-result v4

    .line 1081
    :goto_c
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v5

    .line 1085
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v5

    .line 1089
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1090
    .line 1091
    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1092
    .line 1093
    if-ge v6, v5, :cond_39

    .line 1094
    .line 1095
    goto :goto_d

    .line 1096
    :cond_39
    move v6, v5

    .line 1097
    :goto_d
    sget v5, Lcom/android/systemui/edgelighting/effect/utils/Utils;->MODEL_DEFAULT_DENSITY:I

    .line 1098
    .line 1099
    int-to-float v5, v5

    .line 1100
    if-eqz v2, :cond_3b

    .line 1101
    .line 1102
    int-to-float v2, v6

    .line 1103
    const/high16 v6, 0x44870000    # 1080.0f

    .line 1104
    .line 1105
    cmpl-float v7, v2, v6

    .line 1106
    .line 1107
    if-lez v7, :cond_3a

    .line 1108
    .line 1109
    const v2, 0x3faaa993    # 1.3333f

    .line 1110
    .line 1111
    .line 1112
    goto :goto_e

    .line 1113
    :cond_3a
    cmpg-float v2, v2, v6

    .line 1114
    .line 1115
    if-gez v2, :cond_3b

    .line 1116
    .line 1117
    const v2, 0x3f2aacda    # 0.6667f

    .line 1118
    .line 1119
    .line 1120
    :goto_e
    mul-float/2addr v5, v2

    .line 1121
    :cond_3b
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v1

    .line 1125
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v1

    .line 1129
    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 1130
    .line 1131
    int-to-float v1, v1

    .line 1132
    div-float/2addr v5, v1

    .line 1133
    int-to-float v1, v4

    .line 1134
    mul-float/2addr v1, v5

    .line 1135
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v2

    .line 1139
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v2

    .line 1143
    const-string v4, "any_screen_running"

    .line 1144
    .line 1145
    const/4 v5, 0x0

    .line 1146
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1147
    .line 1148
    .line 1149
    move-result v2

    .line 1150
    const/4 v4, 0x1

    .line 1151
    if-ne v2, v4, :cond_3c

    .line 1152
    .line 1153
    move v5, v4

    .line 1154
    :cond_3c
    if-eqz v5, :cond_41

    .line 1155
    .line 1156
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v1

    .line 1160
    const-string v2, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_CORNER_ROUND"

    .line 1161
    .line 1162
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v1

    .line 1166
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1167
    .line 1168
    .line 1169
    move-result v1

    .line 1170
    new-instance v2, Landroid/util/DisplayMetrics;

    .line 1171
    .line 1172
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v4

    .line 1179
    const-string/jumbo v5, "window"

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v4

    .line 1186
    check-cast v4, Landroid/view/WindowManager;

    .line 1187
    .line 1188
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v4

    .line 1192
    invoke-virtual {v4, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v4

    .line 1199
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v4

    .line 1203
    const-string/jumbo v5, "reduce_screen_running_info"

    .line 1204
    .line 1205
    .line 1206
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v4

    .line 1210
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1211
    .line 1212
    .line 1213
    move-result v5

    .line 1214
    if-nez v5, :cond_3d

    .line 1215
    .line 1216
    const-string v5, ";"

    .line 1217
    .line 1218
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v4

    .line 1222
    array-length v5, v4

    .line 1223
    const/4 v6, 0x3

    .line 1224
    if-ne v5, v6, :cond_3d

    .line 1225
    .line 1226
    aget-object v3, v4, v3

    .line 1227
    .line 1228
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1229
    .line 1230
    .line 1231
    move-result v3

    .line 1232
    goto :goto_f

    .line 1233
    :cond_3d
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1234
    .line 1235
    :goto_f
    const v4, 0x3f266666    # 0.65f

    .line 1236
    .line 1237
    .line 1238
    cmpg-float v4, v3, v4

    .line 1239
    .line 1240
    if-gez v4, :cond_3e

    .line 1241
    .line 1242
    const v5, 0x3feccccd    # 1.85f

    .line 1243
    .line 1244
    .line 1245
    sub-float/2addr v5, v3

    .line 1246
    mul-float/2addr v5, v3

    .line 1247
    goto :goto_10

    .line 1248
    :cond_3e
    move v5, v3

    .line 1249
    :goto_10
    sget-boolean v6, Lcom/android/systemui/edgelighting/effect/Feature;->FEATURE_IS_CANVAS:Z

    .line 1250
    .line 1251
    if-nez v6, :cond_3f

    .line 1252
    .line 1253
    sget-boolean v6, Lcom/android/systemui/edgelighting/effect/Feature;->FEATURE_IS_TOP:Z

    .line 1254
    .line 1255
    if-eqz v6, :cond_40

    .line 1256
    .line 1257
    :cond_3f
    const v5, 0x3ff9999a    # 1.95f

    .line 1258
    .line 1259
    .line 1260
    sub-float/2addr v5, v3

    .line 1261
    mul-float/2addr v5, v3

    .line 1262
    if-gez v4, :cond_40

    .line 1263
    .line 1264
    const v4, 0x40033333    # 2.05f

    .line 1265
    .line 1266
    .line 1267
    sub-float/2addr v4, v3

    .line 1268
    mul-float v5, v4, v3

    .line 1269
    .line 1270
    :cond_40
    const/high16 v3, 0x40c00000    # 6.0f

    .line 1271
    .line 1272
    mul-float/2addr v1, v3

    .line 1273
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1274
    .line 1275
    mul-float/2addr v1, v2

    .line 1276
    mul-float v12, v1, v5

    .line 1277
    .line 1278
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 1279
    .line 1280
    iget v2, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 1281
    .line 1282
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1283
    .line 1284
    .line 1285
    iget-object v6, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    .line 1286
    .line 1287
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 1288
    .line 1289
    const/high16 v2, 0x40000000    # 2.0f

    .line 1290
    .line 1291
    div-float v8, v1, v2

    .line 1292
    .line 1293
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    .line 1294
    .line 1295
    int-to-float v1, v1

    .line 1296
    sub-float v9, v1, v8

    .line 1297
    .line 1298
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    .line 1299
    .line 1300
    int-to-float v1, v1

    .line 1301
    sub-float v10, v1, v8

    .line 1302
    .line 1303
    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 1304
    .line 1305
    move v7, v8

    .line 1306
    move v11, v12

    .line 1307
    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 1308
    .line 1309
    .line 1310
    goto :goto_11

    .line 1311
    :cond_41
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 1312
    .line 1313
    iget v3, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mStrokeWidth:F

    .line 1314
    .line 1315
    const v4, 0x3fcccccd    # 1.6f

    .line 1316
    .line 1317
    .line 1318
    mul-float/2addr v3, v4

    .line 1319
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1320
    .line 1321
    .line 1322
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 1323
    .line 1324
    .line 1325
    move-result v2

    .line 1326
    if-eqz v2, :cond_42

    .line 1327
    .line 1328
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    .line 1329
    .line 1330
    iget v3, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    .line 1331
    .line 1332
    int-to-float v3, v3

    .line 1333
    iget v4, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    .line 1334
    .line 1335
    int-to-float v4, v4

    .line 1336
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->makeSubScreenPath(Landroid/graphics/Path;FFF)V

    .line 1337
    .line 1338
    .line 1339
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    .line 1340
    .line 1341
    iget v3, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    .line 1342
    .line 1343
    int-to-float v3, v3

    .line 1344
    iget v4, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    .line 1345
    .line 1346
    int-to-float v4, v4

    .line 1347
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->makeSubScreenPath(Landroid/graphics/Path;FFF)V

    .line 1348
    .line 1349
    .line 1350
    goto :goto_11

    .line 1351
    :cond_42
    iget-object v6, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    .line 1352
    .line 1353
    const/4 v2, 0x0

    .line 1354
    const/4 v3, 0x0

    .line 1355
    iget v4, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    .line 1356
    .line 1357
    int-to-float v9, v4

    .line 1358
    iget v4, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    .line 1359
    .line 1360
    int-to-float v10, v4

    .line 1361
    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 1362
    .line 1363
    const/4 v7, 0x0

    .line 1364
    const/4 v8, 0x0

    .line 1365
    move v11, v1

    .line 1366
    move v12, v1

    .line 1367
    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 1368
    .line 1369
    .line 1370
    iget-object v6, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    .line 1371
    .line 1372
    iget v4, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    .line 1373
    .line 1374
    int-to-float v9, v4

    .line 1375
    iget v4, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    .line 1376
    .line 1377
    int-to-float v10, v4

    .line 1378
    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 1379
    .line 1380
    move v7, v2

    .line 1381
    move v8, v3

    .line 1382
    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 1383
    .line 1384
    .line 1385
    :goto_11
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    .line 1386
    .line 1387
    if-eqz v1, :cond_43

    .line 1388
    .line 1389
    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    .line 1390
    .line 1391
    .line 1392
    move-result v1

    .line 1393
    if-nez v1, :cond_43

    .line 1394
    .line 1395
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPath:Landroid/graphics/Path;

    .line 1396
    .line 1397
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 1398
    .line 1399
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1400
    .line 1401
    .line 1402
    :cond_43
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    .line 1403
    .line 1404
    if-eqz v1, :cond_44

    .line 1405
    .line 1406
    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    .line 1407
    .line 1408
    .line 1409
    move-result v1

    .line 1410
    if-nez v1, :cond_44

    .line 1411
    .line 1412
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOutsideMaskPath:Landroid/graphics/Path;

    .line 1413
    .line 1414
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskBgPaint:Landroid/graphics/Paint;

    .line 1415
    .line 1416
    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1417
    .line 1418
    .line 1419
    :cond_44
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1420
    .line 1421
    .line 1422
    :cond_45
    :goto_12
    return-void

    .line 1423
    :cond_46
    :goto_13
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1424
    .line 1425
    .line 1426
    return-void
.end method

.method public final initializeScreen()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/Utils;->getScreenSize(Landroid/content/Context;)Landroid/util/Size;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/Utils;->getScreenSize(Landroid/content/Context;)Landroid/util/Size;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    .line 28
    .line 29
    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->getRadiusController()V

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroid/graphics/Paint;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 45
    .line 46
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    .line 47
    .line 48
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 49
    .line 50
    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskPaint:Landroid/graphics/Paint;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Landroid/graphics/Paint;

    .line 62
    .line 63
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskBgPaint:Landroid/graphics/Paint;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    .line 70
    .line 71
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 72
    .line 73
    const v3, 0x18894

    .line 74
    .line 75
    .line 76
    if-lt v0, v3, :cond_0

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v3, "high_contrast"

    .line 87
    .line 88
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-ne v0, v1, :cond_0

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskBgPaint:Landroid/graphics/Paint;

    .line 95
    .line 96
    const/4 v0, -0x1

    .line 97
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mMaskBgPaint:Landroid/graphics/Paint;

    .line 102
    .line 103
    const/high16 v0, -0x1000000

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void
.end method

.method public final makeSubScreenPath(Landroid/graphics/Path;FFF)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const-string/jumbo v5, "window"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Landroid/view/WindowManager;

    .line 21
    .line 22
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    int-to-float v4, v4

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const v6, 0x7f07026b

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    int-to-float v5, v5

    .line 47
    const/4 v6, 0x0

    .line 48
    cmpl-float v7, v4, v6

    .line 49
    .line 50
    const v8, 0x3ecccccd    # 0.4f

    .line 51
    .line 52
    .line 53
    const v9, 0x3ee66666    # 0.45f

    .line 54
    .line 55
    .line 56
    const v10, 0x3ef851ec    # 0.485f

    .line 57
    .line 58
    .line 59
    const v11, 0x3f051eb8    # 0.52f

    .line 60
    .line 61
    .line 62
    const v12, 0x3f147ae1    # 0.58f

    .line 63
    .line 64
    .line 65
    const/high16 v13, 0x40000000    # 2.0f

    .line 66
    .line 67
    if-nez v7, :cond_0

    .line 68
    .line 69
    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 70
    .line 71
    .line 72
    sub-float v4, v1, v3

    .line 73
    .line 74
    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1, v6, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 78
    .line 79
    .line 80
    sub-float v7, v2, v5

    .line 81
    .line 82
    sub-float v14, v7, v3

    .line 83
    .line 84
    invoke-virtual {v0, v1, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1, v7, v4, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 88
    .line 89
    .line 90
    mul-float v4, v1, v12

    .line 91
    .line 92
    invoke-virtual {v0, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 93
    .line 94
    .line 95
    mul-float v4, v1, v11

    .line 96
    .line 97
    mul-float/2addr v10, v1

    .line 98
    div-float/2addr v5, v13

    .line 99
    sub-float v5, v2, v5

    .line 100
    .line 101
    invoke-virtual {v0, v4, v7, v10, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 102
    .line 103
    .line 104
    mul-float v4, v1, v9

    .line 105
    .line 106
    mul-float/2addr v1, v8

    .line 107
    invoke-virtual {v0, v4, v2, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 111
    .line 112
    .line 113
    sub-float v1, v2, v3

    .line 114
    .line 115
    invoke-virtual {v0, v6, v2, v6, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 119
    .line 120
    .line 121
    add-float v1, v3, v6

    .line 122
    .line 123
    invoke-virtual {v0, v6, v6, v1, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    .line 132
    .line 133
    cmpl-float v7, v4, v7

    .line 134
    .line 135
    const v14, 0x3f19999a    # 0.6f

    .line 136
    .line 137
    .line 138
    const v15, 0x3f0ccccd    # 0.55f

    .line 139
    .line 140
    .line 141
    const v16, 0x3f03d70a    # 0.515f

    .line 142
    .line 143
    .line 144
    const v17, 0x3ef5c28f    # 0.48f

    .line 145
    .line 146
    .line 147
    const v18, 0x3ed70a3d    # 0.42f

    .line 148
    .line 149
    .line 150
    if-nez v7, :cond_1

    .line 151
    .line 152
    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 153
    .line 154
    .line 155
    sub-float v4, v1, v5

    .line 156
    .line 157
    sub-float v7, v4, v3

    .line 158
    .line 159
    invoke-virtual {v0, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v4, v6, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 163
    .line 164
    .line 165
    mul-float v7, v2, v18

    .line 166
    .line 167
    invoke-virtual {v0, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 168
    .line 169
    .line 170
    mul-float v7, v2, v17

    .line 171
    .line 172
    div-float/2addr v5, v13

    .line 173
    sub-float v5, v1, v5

    .line 174
    .line 175
    mul-float v8, v2, v16

    .line 176
    .line 177
    invoke-virtual {v0, v4, v7, v5, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 178
    .line 179
    .line 180
    mul-float v4, v2, v15

    .line 181
    .line 182
    mul-float v5, v2, v14

    .line 183
    .line 184
    invoke-virtual {v0, v1, v4, v1, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 185
    .line 186
    .line 187
    sub-float v4, v2, v3

    .line 188
    .line 189
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 190
    .line 191
    .line 192
    sub-float v5, v1, v3

    .line 193
    .line 194
    invoke-virtual {v0, v1, v2, v5, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v6, v2, v6, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v6, v6, v3, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 207
    .line 208
    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    .line 210
    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_1
    cmpl-float v4, v4, v13

    .line 214
    .line 215
    if-nez v4, :cond_2

    .line 216
    .line 217
    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 218
    .line 219
    .line 220
    mul-float v4, v1, v18

    .line 221
    .line 222
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 223
    .line 224
    .line 225
    mul-float v4, v1, v17

    .line 226
    .line 227
    mul-float v7, v1, v16

    .line 228
    .line 229
    div-float v8, v5, v13

    .line 230
    .line 231
    invoke-virtual {v0, v4, v5, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 232
    .line 233
    .line 234
    mul-float v4, v1, v15

    .line 235
    .line 236
    mul-float v7, v1, v14

    .line 237
    .line 238
    invoke-virtual {v0, v4, v6, v7, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 239
    .line 240
    .line 241
    sub-float v4, v1, v3

    .line 242
    .line 243
    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1, v6, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 247
    .line 248
    .line 249
    sub-float v7, v2, v3

    .line 250
    .line 251
    invoke-virtual {v0, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v1, v2, v4, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v6, v2, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 261
    .line 262
    .line 263
    add-float v1, v5, v3

    .line 264
    .line 265
    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v6, v5, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 269
    .line 270
    .line 271
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    .line 272
    .line 273
    .line 274
    goto :goto_0

    .line 275
    :cond_2
    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 276
    .line 277
    .line 278
    sub-float v4, v1, v3

    .line 279
    .line 280
    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v1, v6, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 284
    .line 285
    .line 286
    sub-float v7, v2, v3

    .line 287
    .line 288
    invoke-virtual {v0, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v1, v2, v4, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 292
    .line 293
    .line 294
    add-float v1, v5, v3

    .line 295
    .line 296
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v5, v2, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 300
    .line 301
    .line 302
    mul-float v1, v2, v12

    .line 303
    .line 304
    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 305
    .line 306
    .line 307
    mul-float v1, v2, v11

    .line 308
    .line 309
    div-float v4, v5, v13

    .line 310
    .line 311
    mul-float v7, v2, v10

    .line 312
    .line 313
    invoke-virtual {v0, v5, v1, v4, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 314
    .line 315
    .line 316
    mul-float v1, v2, v9

    .line 317
    .line 318
    mul-float/2addr v2, v8

    .line 319
    invoke-virtual {v0, v6, v1, v6, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v6, v6, v3, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 326
    .line 327
    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    .line 329
    .line 330
    .line 331
    :goto_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOrientation:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 31
    .line 32
    if-eq p1, p2, :cond_1

    .line 33
    .line 34
    new-instance v5, Landroid/graphics/Matrix;

    .line 35
    .line 36
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 37
    .line 38
    .line 39
    iget p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOrientation:I

    .line 40
    .line 41
    const/4 p2, 0x2

    .line 42
    if-ne p1, p2, :cond_0

    .line 43
    .line 44
    const/high16 p1, 0x42b40000    # 90.0f

    .line 45
    .line 46
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/high16 p1, -0x3d4c0000    # -90.0f

    .line 51
    .line 52
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 53
    .line 54
    .line 55
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const/4 v6, 0x1

    .line 70
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 85
    .line 86
    iput p1, p0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mOrientation:I

    .line 87
    .line 88
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 89
    .line 90
    .line 91
    return-void
.end method
