.class public Lcom/android/wm/shell/freeform/DexSnappingGuideView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mMargin:I

.field public mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a032c

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mView:Landroid/widget/ImageView;

    .line 14
    .line 15
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0702c6

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 29
    .line 30
    return-void
.end method

.method public final show(ILandroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mView:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 12
    .line 13
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 14
    .line 15
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 16
    .line 17
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_0
    and-int/lit8 v1, p1, 0x1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 38
    .line 39
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 40
    .line 41
    :cond_1
    and-int/lit8 v1, p1, 0x2

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 46
    .line 47
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 48
    .line 49
    :cond_2
    and-int/lit8 v1, p1, 0x4

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 58
    .line 59
    :cond_3
    and-int/lit8 v1, p1, 0x8

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 64
    .line 65
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 66
    .line 67
    :cond_4
    const/4 v1, 0x1

    .line 68
    const/4 v2, 0x2

    .line 69
    if-ne p1, v1, :cond_7

    .line 70
    .line 71
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 72
    .line 73
    if-nez p1, :cond_5

    .line 74
    .line 75
    iget p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 76
    .line 77
    :cond_5
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 78
    .line 79
    iget p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 80
    .line 81
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 88
    .line 89
    sub-int/2addr p1, v1

    .line 90
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 91
    .line 92
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 93
    .line 94
    if-nez p1, :cond_6

    .line 95
    .line 96
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    iget p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 101
    .line 102
    mul-int/2addr p2, v2

    .line 103
    sub-int/2addr p1, p2

    .line 104
    goto :goto_0

    .line 105
    :cond_6
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    :goto_0
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 110
    .line 111
    goto/16 :goto_2

    .line 112
    .line 113
    :cond_7
    if-ne p1, v2, :cond_8

    .line 114
    .line 115
    iget p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 116
    .line 117
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 118
    .line 119
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 120
    .line 121
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 126
    .line 127
    mul-int/2addr v1, v2

    .line 128
    sub-int/2addr p1, v1

    .line 129
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 130
    .line 131
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    iget p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 136
    .line 137
    mul-int/2addr p2, v2

    .line 138
    sub-int/2addr p1, p2

    .line 139
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 140
    .line 141
    goto/16 :goto_2

    .line 142
    .line 143
    :cond_8
    const/4 v1, 0x4

    .line 144
    if-ne p1, v1, :cond_b

    .line 145
    .line 146
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 147
    .line 148
    if-nez p1, :cond_9

    .line 149
    .line 150
    iget p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 151
    .line 152
    :cond_9
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 153
    .line 154
    iget p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 155
    .line 156
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 157
    .line 158
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 163
    .line 164
    sub-int/2addr p1, v1

    .line 165
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 166
    .line 167
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 168
    .line 169
    if-nez p1, :cond_a

    .line 170
    .line 171
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    iget p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 176
    .line 177
    mul-int/2addr p2, v2

    .line 178
    sub-int/2addr p1, p2

    .line 179
    goto :goto_1

    .line 180
    :cond_a
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    :goto_1
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_b
    const/4 v1, 0x3

    .line 188
    if-ne p1, v1, :cond_c

    .line 189
    .line 190
    iget p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 191
    .line 192
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 193
    .line 194
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 199
    .line 200
    sub-int/2addr p1, v1

    .line 201
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 202
    .line 203
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    iget p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 208
    .line 209
    sub-int/2addr p1, p2

    .line 210
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_c
    const/16 v1, 0x9

    .line 214
    .line 215
    if-ne p1, v1, :cond_d

    .line 216
    .line 217
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 222
    .line 223
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 228
    .line 229
    sub-int/2addr p1, v1

    .line 230
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 231
    .line 232
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    iget p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 237
    .line 238
    sub-int/2addr p1, p2

    .line 239
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_d
    const/4 v1, 0x6

    .line 243
    if-ne p1, v1, :cond_e

    .line 244
    .line 245
    iget p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 246
    .line 247
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 248
    .line 249
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 254
    .line 255
    sub-int/2addr p1, v1

    .line 256
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 257
    .line 258
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    iget p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 263
    .line 264
    sub-int/2addr p1, p2

    .line 265
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 266
    .line 267
    goto :goto_2

    .line 268
    :cond_e
    const/16 v1, 0xc

    .line 269
    .line 270
    if-ne p1, v1, :cond_f

    .line 271
    .line 272
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 277
    .line 278
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    iget v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 283
    .line 284
    sub-int/2addr p1, v1

    .line 285
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 286
    .line 287
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    iget p2, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mMargin:I

    .line 292
    .line 293
    sub-int/2addr p1, p2

    .line 294
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 295
    .line 296
    :cond_f
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->mView:Landroid/widget/ImageView;

    .line 297
    .line 298
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    .line 300
    .line 301
    const/4 p1, 0x0

    .line 302
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 303
    .line 304
    .line 305
    return-void
.end method
