.class public final synthetic Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda0;->$r8$classId:I

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
    .locals 10

    .line 1
    iget p0, p0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/high16 v2, 0x437f0000    # 255.0f

    .line 6
    .line 7
    const/high16 v3, 0x3f800000    # 1.0f

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/high16 v5, 0x43480000    # 200.0f

    .line 11
    .line 12
    packed-switch p0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :pswitch_0
    sget p0, Lcom/google/android/material/chip/SeslChipGroup;->sChipInitialWidth:I

    .line 18
    .line 19
    move-object p0, p1

    .line 20
    check-cast p0, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->mTargetView:Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Landroid/view/View;

    .line 29
    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    instance-of v6, p0, Lcom/google/android/material/chip/SeslChip;

    .line 34
    .line 35
    if-eqz v6, :cond_2

    .line 36
    .line 37
    check-cast p0, Lcom/google/android/material/chip/SeslChip;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Ljava/lang/Float;

    .line 44
    .line 45
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getLeft()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    sget v8, Lcom/google/android/material/chip/SeslChipGroup;->sChipInitialWidth:I

    .line 54
    .line 55
    add-int/2addr v7, v8

    .line 56
    iget-object v8, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 57
    .line 58
    invoke-virtual {v8}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    sget v9, Lcom/google/android/material/chip/SeslChipGroup;->sChipInitialWidth:I

    .line 63
    .line 64
    sub-int/2addr v8, v9

    .line 65
    int-to-float v8, v8

    .line 66
    mul-float/2addr v8, v6

    .line 67
    float-to-int v8, v8

    .line 68
    add-int/2addr v7, v8

    .line 69
    invoke-virtual {p0, v7}, Landroid/widget/CheckBox;->setRight(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getTop()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    iget-object v8, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 77
    .line 78
    iget v8, v8, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    .line 79
    .line 80
    float-to-int v8, v8

    .line 81
    add-int/2addr v7, v8

    .line 82
    invoke-virtual {p0, v7}, Landroid/widget/CheckBox;->setBottom(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 86
    .line 87
    .line 88
    move-result-wide v7

    .line 89
    long-to-int p1, v7

    .line 90
    add-int/lit8 p1, p1, -0x64

    .line 91
    .line 92
    int-to-float p1, p1

    .line 93
    div-float/2addr p1, v5

    .line 94
    invoke-static {p1, v4, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    mul-float/2addr p1, v2

    .line 99
    float-to-int p1, p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/SeslChip;->setInternalsAlpha(I)V

    .line 101
    .line 102
    .line 103
    mul-float/2addr v6, v2

    .line 104
    float-to-int p1, v6

    .line 105
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 106
    .line 107
    invoke-virtual {v2, p1}, Lcom/google/android/material/chip/ChipDrawable;->setAlpha(I)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 111
    .line 112
    if-eqz p1, :cond_1

    .line 113
    .line 114
    iget v2, p1, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    .line 115
    .line 116
    cmpl-float v2, v2, v4

    .line 117
    .line 118
    if-eqz v2, :cond_1

    .line 119
    .line 120
    iput v4, p1, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 126
    .line 127
    .line 128
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 132
    .line 133
    iput-boolean v0, p1, Lcom/google/android/material/chip/ChipDrawable;->isSeslFullText:Z

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Ljava/lang/Float;

    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 150
    .line 151
    .line 152
    :goto_0
    return-void

    .line 153
    :goto_1
    sget p0, Lcom/google/android/material/chip/SeslChipGroup;->sChipInitialWidth:I

    .line 154
    .line 155
    move-object p0, p1

    .line 156
    check-cast p0, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;

    .line 157
    .line 158
    iget-object p0, p0, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->mTargetView:Ljava/lang/ref/WeakReference;

    .line 159
    .line 160
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    check-cast p0, Landroid/view/View;

    .line 165
    .line 166
    if-nez p0, :cond_3

    .line 167
    .line 168
    goto/16 :goto_2

    .line 169
    .line 170
    :cond_3
    instance-of v6, p0, Lcom/google/android/material/chip/SeslChip;

    .line 171
    .line 172
    if-eqz v6, :cond_5

    .line 173
    .line 174
    check-cast p0, Lcom/google/android/material/chip/SeslChip;

    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    check-cast v6, Ljava/lang/Float;

    .line 181
    .line 182
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    sget v7, Lcom/google/android/material/chip/SeslChipGroup;->sChipInitialWidth:I

    .line 187
    .line 188
    int-to-float v7, v7

    .line 189
    iget-object v8, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 190
    .line 191
    invoke-virtual {v8}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    sget v9, Lcom/google/android/material/chip/SeslChipGroup;->sChipInitialWidth:I

    .line 196
    .line 197
    sub-int/2addr v8, v9

    .line 198
    int-to-float v8, v8

    .line 199
    mul-float/2addr v8, v6

    .line 200
    add-float/2addr v8, v7

    .line 201
    float-to-int v7, v8

    .line 202
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getLeft()I

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    add-int/2addr v8, v7

    .line 207
    invoke-virtual {p0, v8}, Landroid/widget/CheckBox;->setRight(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getTop()I

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    iget-object v8, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 215
    .line 216
    iget v8, v8, Lcom/google/android/material/chip/ChipDrawable;->chipMinHeight:F

    .line 217
    .line 218
    float-to-int v8, v8

    .line 219
    add-int/2addr v7, v8

    .line 220
    invoke-virtual {p0, v7}, Landroid/widget/CheckBox;->setBottom(I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 224
    .line 225
    .line 226
    move-result-wide v7

    .line 227
    long-to-int p1, v7

    .line 228
    int-to-float p1, p1

    .line 229
    div-float/2addr p1, v5

    .line 230
    sub-float p1, v3, p1

    .line 231
    .line 232
    invoke-static {p1, v4, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    mul-float/2addr p1, v2

    .line 237
    float-to-int p1, p1

    .line 238
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/SeslChip;->setInternalsAlpha(I)V

    .line 239
    .line 240
    .line 241
    mul-float/2addr v6, v2

    .line 242
    float-to-int p1, v6

    .line 243
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 244
    .line 245
    invoke-virtual {v2, p1}, Lcom/google/android/material/chip/ChipDrawable;->setAlpha(I)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 249
    .line 250
    if-eqz p1, :cond_4

    .line 251
    .line 252
    iget v2, p1, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    .line 253
    .line 254
    cmpl-float v2, v2, v4

    .line 255
    .line 256
    if-eqz v2, :cond_4

    .line 257
    .line 258
    iput v4, p1, Lcom/google/android/material/chip/ChipDrawable;->textEndPadding:F

    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipDrawable;->onSizeChange()V

    .line 264
    .line 265
    .line 266
    :cond_4
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 267
    .line 268
    .line 269
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 270
    .line 271
    iput-boolean v0, p1, Lcom/google/android/material/chip/ChipDrawable;->isSeslFullText:Z

    .line 272
    .line 273
    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    check-cast p1, Ljava/lang/Float;

    .line 282
    .line 283
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 288
    .line 289
    .line 290
    :goto_2
    return-void

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
