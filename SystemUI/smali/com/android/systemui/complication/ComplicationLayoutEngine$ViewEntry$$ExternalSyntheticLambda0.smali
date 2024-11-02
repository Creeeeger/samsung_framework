.class public final synthetic Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

.field public final synthetic f$4:Landroid/view/View;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;ZILandroidx/constraintlayout/widget/Constraints$LayoutParams;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$3:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$4:Landroid/view/View;

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$5:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    iget v2, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$3:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$4:Landroid/view/View;

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;->f$5:Z

    .line 12
    .line 13
    check-cast p1, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v5, 0x0

    .line 23
    const/16 v6, 0x8

    .line 24
    .line 25
    const/4 v7, 0x4

    .line 26
    const/4 v8, 0x2

    .line 27
    const/4 v9, 0x1

    .line 28
    if-eq p1, v9, :cond_c

    .line 29
    .line 30
    if-eq p1, v8, :cond_8

    .line 31
    .line 32
    if-eq p1, v7, :cond_4

    .line 33
    .line 34
    if-eq p1, v6, :cond_0

    .line 35
    .line 36
    goto/16 :goto_8

    .line 37
    .line 38
    :cond_0
    if-nez v1, :cond_2

    .line 39
    .line 40
    if-eq v2, v7, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 51
    .line 52
    :goto_1
    if-eqz p0, :cond_10

    .line 53
    .line 54
    if-eq v2, v9, :cond_3

    .line 55
    .line 56
    if-ne v2, v8, :cond_10

    .line 57
    .line 58
    :cond_3
    const p0, 0x7f0a0285

    .line 59
    .line 60
    .line 61
    iput p0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 62
    .line 63
    goto :goto_8

    .line 64
    :cond_4
    if-nez v1, :cond_6

    .line 65
    .line 66
    if-eq v2, v6, :cond_5

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_6
    :goto_2
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 77
    .line 78
    :goto_3
    if-eqz p0, :cond_10

    .line 79
    .line 80
    if-eq v2, v8, :cond_7

    .line 81
    .line 82
    if-ne v2, v9, :cond_10

    .line 83
    .line 84
    :cond_7
    const p0, 0x7f0a0286

    .line 85
    .line 86
    .line 87
    iput p0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 88
    .line 89
    goto :goto_8

    .line 90
    :cond_8
    if-nez v1, :cond_a

    .line 91
    .line 92
    if-eq v2, v9, :cond_9

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_a
    :goto_4
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 103
    .line 104
    :goto_5
    if-eqz p0, :cond_10

    .line 105
    .line 106
    if-eq v2, v6, :cond_b

    .line 107
    .line 108
    if-ne v2, v7, :cond_10

    .line 109
    .line 110
    :cond_b
    const p0, 0x7f0a0284

    .line 111
    .line 112
    .line 113
    iput p0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 114
    .line 115
    goto :goto_8

    .line 116
    :cond_c
    if-nez v1, :cond_e

    .line 117
    .line 118
    if-eq v2, v8, :cond_d

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_d
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iput p1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 126
    .line 127
    goto :goto_7

    .line 128
    :cond_e
    :goto_6
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 129
    .line 130
    :goto_7
    if-eqz p0, :cond_10

    .line 131
    .line 132
    if-eq v2, v6, :cond_f

    .line 133
    .line 134
    if-ne v2, v7, :cond_10

    .line 135
    .line 136
    :cond_f
    const p0, 0x7f0a0287

    .line 137
    .line 138
    .line 139
    iput p0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 140
    .line 141
    :cond_10
    :goto_8
    iget-object p0, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mParent:Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$Parent;

    .line 142
    .line 143
    check-cast p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;

    .line 144
    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    iget-object p1, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mLayoutParams:Lcom/android/systemui/complication/ComplicationLayoutParams;

    .line 149
    .line 150
    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;->mParent:Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup$Parent;

    .line 151
    .line 152
    check-cast p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$PositionGroup;

    .line 153
    .line 154
    iget v2, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$PositionGroup;->mDefaultDirectionalSpacing:I

    .line 155
    .line 156
    iget p1, p1, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirectionalSpacing:I

    .line 157
    .line 158
    const/4 v4, -0x1

    .line 159
    if-ne p1, v4, :cond_11

    .line 160
    .line 161
    goto :goto_9

    .line 162
    :cond_11
    move v2, p1

    .line 163
    :goto_9
    new-instance p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    .line 164
    .line 165
    invoke-direct {p1}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>()V

    .line 166
    .line 167
    .line 168
    if-nez v1, :cond_16

    .line 169
    .line 170
    iget-object v4, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mLayoutParams:Lcom/android/systemui/complication/ComplicationLayoutParams;

    .line 171
    .line 172
    iget v4, v4, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirection:I

    .line 173
    .line 174
    if-eq v4, v9, :cond_15

    .line 175
    .line 176
    if-eq v4, v8, :cond_14

    .line 177
    .line 178
    if-eq v4, v7, :cond_13

    .line 179
    .line 180
    if-eq v4, v6, :cond_12

    .line 181
    .line 182
    goto :goto_a

    .line 183
    :cond_12
    new-instance p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    .line 184
    .line 185
    invoke-direct {p1, v2, v5, v5, v5}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    .line 186
    .line 187
    .line 188
    goto :goto_a

    .line 189
    :cond_13
    new-instance p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    .line 190
    .line 191
    invoke-direct {p1, v5, v5, v2, v5}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    .line 192
    .line 193
    .line 194
    goto :goto_a

    .line 195
    :cond_14
    new-instance p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    .line 196
    .line 197
    invoke-direct {p1, v5, v2, v5, v5}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    .line 198
    .line 199
    .line 200
    goto :goto_a

    .line 201
    :cond_15
    new-instance p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    .line 202
    .line 203
    invoke-direct {p1, v5, v5, v5, v2}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    .line 204
    .line 205
    .line 206
    :cond_16
    :goto_a
    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$PositionGroup;->mDirectionalMargins:Ljava/util/HashMap;

    .line 207
    .line 208
    if-eqz v1, :cond_17

    .line 209
    .line 210
    new-instance v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    .line 211
    .line 212
    invoke-direct {v0}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-eqz v1, :cond_18

    .line 228
    .line 229
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    check-cast v1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    .line 234
    .line 235
    new-instance v2, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    .line 236
    .line 237
    iget v4, v1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->start:I

    .line 238
    .line 239
    iget v5, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->start:I

    .line 240
    .line 241
    add-int/2addr v4, v5

    .line 242
    iget v5, v1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->top:I

    .line 243
    .line 244
    iget v6, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->top:I

    .line 245
    .line 246
    add-int/2addr v5, v6

    .line 247
    iget v6, v1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->end:I

    .line 248
    .line 249
    iget v7, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->end:I

    .line 250
    .line 251
    add-int/2addr v6, v7

    .line 252
    iget v1, v1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->bottom:I

    .line 253
    .line 254
    iget v0, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->bottom:I

    .line 255
    .line 256
    add-int/2addr v1, v0

    .line 257
    invoke-direct {v2, v4, v5, v6, v1}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    .line 258
    .line 259
    .line 260
    move-object v0, v2

    .line 261
    goto :goto_b

    .line 262
    :cond_17
    iget-object v0, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mLayoutParams:Lcom/android/systemui/complication/ComplicationLayoutParams;

    .line 263
    .line 264
    iget v0, v0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirection:I

    .line 265
    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    move-object v0, p0

    .line 275
    check-cast v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    .line 276
    .line 277
    :cond_18
    new-instance p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;

    .line 278
    .line 279
    iget v1, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->start:I

    .line 280
    .line 281
    iget v2, p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->start:I

    .line 282
    .line 283
    add-int/2addr v1, v2

    .line 284
    iget v2, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->top:I

    .line 285
    .line 286
    iget v4, p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->top:I

    .line 287
    .line 288
    add-int/2addr v2, v4

    .line 289
    iget v4, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->end:I

    .line 290
    .line 291
    iget v5, p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->end:I

    .line 292
    .line 293
    add-int/2addr v4, v5

    .line 294
    iget v0, v0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->bottom:I

    .line 295
    .line 296
    iget p1, p1, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->bottom:I

    .line 297
    .line 298
    add-int/2addr v0, p1

    .line 299
    invoke-direct {p0, v1, v2, v4, v0}, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;-><init>(IIII)V

    .line 300
    .line 301
    .line 302
    iget p1, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->start:I

    .line 303
    .line 304
    iget v0, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->top:I

    .line 305
    .line 306
    iget v1, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->end:I

    .line 307
    .line 308
    iget p0, p0, Lcom/android/systemui/complication/ComplicationLayoutEngine$Margins;->bottom:I

    .line 309
    .line 310
    invoke-virtual {v3, p1, v0, v1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 311
    .line 312
    .line 313
    return-void
.end method
