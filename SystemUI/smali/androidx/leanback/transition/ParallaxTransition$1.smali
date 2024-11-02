.class public final Landroidx/leanback/transition/ParallaxTransition$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic val$source:Landroidx/leanback/widget/Parallax;


# direct methods
.method public constructor <init>(Landroidx/leanback/transition/ParallaxTransition;Landroidx/leanback/widget/Parallax;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/leanback/transition/ParallaxTransition$1;->val$source:Landroidx/leanback/widget/Parallax;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11

    .line 1
    iget-object p0, p0, Landroidx/leanback/transition/ParallaxTransition$1;->val$source:Landroidx/leanback/widget/Parallax;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    move v0, p1

    .line 5
    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    .line 6
    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v0, v2, :cond_d

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/leanback/widget/ParallaxEffect;

    .line 20
    .line 21
    iget-object v2, v1, Landroidx/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    .line 22
    .line 23
    check-cast v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x2

    .line 30
    if-ge v2, v3, :cond_0

    .line 31
    .line 32
    goto/16 :goto_7

    .line 33
    .line 34
    :cond_0
    instance-of v2, v1, Landroidx/leanback/widget/ParallaxEffect$IntEffect;

    .line 35
    .line 36
    iget-object v4, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    const-string v6, "Parallax Property[%d]\"%s\" is UNKNOWN_BEFORE and Property[%d]\"%s\" is UNKNOWN_AFTER"

    .line 40
    .line 41
    const-string v7, "Parallax Property[%d]\"%s\" is smaller than Property[%d]\"%s\""

    .line 42
    .line 43
    if-eqz v2, :cond_5

    .line 44
    .line 45
    check-cast v4, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ge v2, v3, :cond_1

    .line 52
    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_1
    iget-object v2, p0, Landroidx/leanback/widget/Parallax;->mValues:[I

    .line 56
    .line 57
    aget v3, v2, p1

    .line 58
    .line 59
    move v8, v5

    .line 60
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-ge v8, v9, :cond_a

    .line 65
    .line 66
    aget v9, v2, v8

    .line 67
    .line 68
    if-lt v9, v3, :cond_4

    .line 69
    .line 70
    const/high16 v10, -0x80000000

    .line 71
    .line 72
    if-ne v3, v10, :cond_3

    .line 73
    .line 74
    const v3, 0x7fffffff

    .line 75
    .line 76
    .line 77
    if-eq v9, v3, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    add-int/lit8 p1, v8, -0x1

    .line 83
    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Landroid/util/Property;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Landroid/util/Property;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    filled-new-array {v0, p1, v1, v2}, [Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 125
    .line 126
    move v3, v9

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroid/util/Property;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    sub-int/2addr v8, v5

    .line 145
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Landroid/util/Property;

    .line 154
    .line 155
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {v7, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p0

    .line 171
    :cond_5
    check-cast v4, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-ge v2, v3, :cond_6

    .line 178
    .line 179
    goto/16 :goto_5

    .line 180
    .line 181
    :cond_6
    iget-object v2, p0, Landroidx/leanback/widget/Parallax;->mFloatValues:[F

    .line 182
    .line 183
    aget v3, v2, p1

    .line 184
    .line 185
    move v8, v5

    .line 186
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    if-ge v8, v9, :cond_a

    .line 191
    .line 192
    aget v9, v2, v8

    .line 193
    .line 194
    cmpg-float v10, v9, v3

    .line 195
    .line 196
    if-ltz v10, :cond_9

    .line 197
    .line 198
    const v10, -0x800001

    .line 199
    .line 200
    .line 201
    cmpl-float v3, v3, v10

    .line 202
    .line 203
    if-nez v3, :cond_8

    .line 204
    .line 205
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 206
    .line 207
    .line 208
    cmpl-float v3, v9, v3

    .line 209
    .line 210
    if-eqz v3, :cond_7

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 214
    .line 215
    add-int/lit8 p1, v8, -0x1

    .line 216
    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    check-cast p1, Landroid/util/Property;

    .line 226
    .line 227
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    check-cast v2, Landroid/util/Property;

    .line 240
    .line 241
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    filled-new-array {v0, p1, v1, v2}, [Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw p0

    .line 257
    :cond_8
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 258
    .line 259
    move v3, v9

    .line 260
    goto :goto_3

    .line 261
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 262
    .line 263
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Landroid/util/Property;

    .line 272
    .line 273
    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    sub-int/2addr v8, v5

    .line 278
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    check-cast v2, Landroid/util/Property;

    .line 287
    .line 288
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-static {v7, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw p0

    .line 304
    :cond_a
    :goto_5
    move v2, p1

    .line 305
    move v3, v2

    .line 306
    :goto_6
    iget-object v4, v1, Landroidx/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    .line 307
    .line 308
    check-cast v4, Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    if-ge v2, v6, :cond_c

    .line 315
    .line 316
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    check-cast v4, Landroidx/leanback/widget/ParallaxTarget;

    .line 321
    .line 322
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    if-nez v3, :cond_b

    .line 326
    .line 327
    invoke-virtual {v1, p0}, Landroidx/leanback/widget/ParallaxEffect;->calculateFraction(Landroidx/leanback/widget/Parallax;)F

    .line 328
    .line 329
    .line 330
    move v3, v5

    .line 331
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 332
    .line 333
    goto :goto_6

    .line 334
    :cond_c
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :cond_d
    return-void
.end method
