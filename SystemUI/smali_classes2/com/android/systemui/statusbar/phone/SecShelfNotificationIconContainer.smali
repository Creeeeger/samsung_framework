.class public Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;
.super Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mCount:I

.field public mMoreView:Landroid/widget/TextView;

.field public mMoreViewBackground:Landroid/graphics/drawable/Drawable;

.field public mMoreViewRange:I

.field public mPaddingBetweenIcons:I

.field public mPaddingForMoreView:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final calculateIconXTranslations()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    move v7, v2

    .line 11
    move v8, v7

    .line 12
    move v5, v3

    .line 13
    move v6, v4

    .line 14
    :goto_0
    const/4 v9, 0x2

    .line 15
    const/4 v10, 0x1

    .line 16
    if-ge v6, v1, :cond_b

    .line 17
    .line 18
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v11

    .line 22
    instance-of v12, v11, Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v12, :cond_0

    .line 25
    .line 26
    goto/16 :goto_7

    .line 27
    .line 28
    :cond_0
    instance-of v12, v11, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 29
    .line 30
    if-eqz v12, :cond_1

    .line 31
    .line 32
    move-object v12, v11

    .line 33
    check-cast v12, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 34
    .line 35
    iput-boolean v10, v12, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlockDotAnim:Z

    .line 36
    .line 37
    :cond_1
    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v12

    .line 43
    check-cast v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 44
    .line 45
    iget v13, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 46
    .line 47
    const/high16 v14, 0x3f800000    # 1.0f

    .line 48
    .line 49
    cmpl-float v13, v13, v14

    .line 50
    .line 51
    if-nez v13, :cond_6

    .line 52
    .line 53
    if-ne v8, v2, :cond_5

    .line 54
    .line 55
    sub-int v5, v1, v6

    .line 56
    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 62
    .line 63
    if-eq v5, v10, :cond_4

    .line 64
    .line 65
    if-eq v5, v9, :cond_3

    .line 66
    .line 67
    const/4 v15, 0x3

    .line 68
    if-eq v5, v15, :cond_2

    .line 69
    .line 70
    div-int/lit8 v8, v8, 0x2

    .line 71
    .line 72
    sub-int/2addr v8, v13

    .line 73
    iget v5, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mPaddingBetweenIcons:I

    .line 74
    .line 75
    sub-int/2addr v8, v5

    .line 76
    sub-int/2addr v8, v13

    .line 77
    div-int/2addr v5, v9

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    div-int/lit8 v8, v8, 0x2

    .line 80
    .line 81
    sub-int/2addr v8, v13

    .line 82
    iget v5, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mPaddingBetweenIcons:I

    .line 83
    .line 84
    sub-int/2addr v8, v5

    .line 85
    div-int/lit8 v13, v13, 0x2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    div-int/lit8 v8, v8, 0x2

    .line 89
    .line 90
    sub-int/2addr v8, v13

    .line 91
    iget v5, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mPaddingBetweenIcons:I

    .line 92
    .line 93
    div-int/2addr v5, v9

    .line 94
    :goto_1
    sub-int/2addr v8, v5

    .line 95
    goto :goto_3

    .line 96
    :cond_4
    div-int/lit8 v8, v8, 0x2

    .line 97
    .line 98
    div-int/lit8 v13, v13, 0x2

    .line 99
    .line 100
    :goto_2
    sub-int/2addr v8, v13

    .line 101
    :goto_3
    int-to-float v5, v8

    .line 102
    move v8, v6

    .line 103
    :cond_5
    invoke-virtual {v12, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 104
    .line 105
    .line 106
    :cond_6
    iget-boolean v13, v12, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 107
    .line 108
    if-eqz v13, :cond_7

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_7
    move v9, v4

    .line 112
    :goto_4
    iput v9, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 113
    .line 114
    iget v9, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 115
    .line 116
    cmpl-float v13, v9, v14

    .line 117
    .line 118
    if-nez v13, :cond_9

    .line 119
    .line 120
    if-le v8, v2, :cond_8

    .line 121
    .line 122
    move v13, v8

    .line 123
    goto :goto_5

    .line 124
    :cond_8
    move v13, v4

    .line 125
    :goto_5
    sub-int v13, v6, v13

    .line 126
    .line 127
    add-int/2addr v13, v10

    .line 128
    const/4 v14, 0x4

    .line 129
    if-le v13, v14, :cond_9

    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_9
    move v10, v4

    .line 133
    :goto_6
    if-ne v7, v2, :cond_a

    .line 134
    .line 135
    if-eqz v10, :cond_a

    .line 136
    .line 137
    add-int/lit8 v3, v6, -0x1

    .line 138
    .line 139
    iget v7, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 140
    .line 141
    int-to-float v7, v7

    .line 142
    sub-float v7, v5, v7

    .line 143
    .line 144
    iget v10, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mPaddingForMoreView:I

    .line 145
    .line 146
    int-to-float v10, v10

    .line 147
    sub-float/2addr v7, v10

    .line 148
    move/from16 v16, v7

    .line 149
    .line 150
    move v7, v3

    .line 151
    move/from16 v3, v16

    .line 152
    .line 153
    :cond_a
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    int-to-float v10, v10

    .line 158
    mul-float/2addr v9, v10

    .line 159
    iget v10, v12, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    .line 160
    .line 161
    iget v11, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mPaddingBetweenIcons:I

    .line 162
    .line 163
    int-to-float v11, v11

    .line 164
    invoke-static {v10, v11, v9, v5}, Landroidx/constraintlayout/motion/widget/MotionPaths$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    :goto_7
    add-int/lit8 v6, v6, 0x1

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_b
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsShowingOverflowDot:Z

    .line 173
    .line 174
    if-eq v7, v2, :cond_e

    .line 175
    .line 176
    move v2, v7

    .line 177
    :goto_8
    if-ge v2, v1, :cond_f

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 184
    .line 185
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    check-cast v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 190
    .line 191
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 192
    .line 193
    .line 194
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsShowingOverflowDot:Z

    .line 195
    .line 196
    if-nez v8, :cond_d

    .line 197
    .line 198
    iget v8, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    .line 199
    .line 200
    const v11, 0x3f4ccccd    # 0.8f

    .line 201
    .line 202
    .line 203
    cmpg-float v8, v8, v11

    .line 204
    .line 205
    if-gez v8, :cond_c

    .line 206
    .line 207
    iput v4, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 208
    .line 209
    goto :goto_9

    .line 210
    :cond_c
    iput v9, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 211
    .line 212
    sub-int v6, v1, v7

    .line 213
    .line 214
    sub-int/2addr v6, v10

    .line 215
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->updateMoreView(I)V

    .line 216
    .line 217
    .line 218
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    .line 219
    .line 220
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 221
    .line 222
    .line 223
    iput-boolean v10, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsShowingOverflowDot:Z

    .line 224
    .line 225
    :goto_9
    invoke-virtual {v5, v10}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 226
    .line 227
    .line 228
    goto :goto_a

    .line 229
    :cond_d
    iput v9, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 230
    .line 231
    invoke-virtual {v5, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 232
    .line 233
    .line 234
    :goto_a
    add-int/lit8 v2, v2, 0x1

    .line 235
    .line 236
    goto :goto_8

    .line 237
    :cond_e
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->updateMoreView(I)V

    .line 238
    .line 239
    .line 240
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_12

    .line 245
    .line 246
    :goto_b
    if-ge v4, v1, :cond_12

    .line 247
    .line 248
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    instance-of v3, v2, Landroid/widget/TextView;

    .line 253
    .line 254
    if-eqz v3, :cond_10

    .line 255
    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    int-to-float v3, v3

    .line 261
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    sub-float/2addr v3, v5

    .line 266
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    int-to-float v5, v5

    .line 271
    sub-float/2addr v3, v5

    .line 272
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 273
    .line 274
    .line 275
    goto :goto_c

    .line 276
    :cond_10
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 277
    .line 278
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 283
    .line 284
    if-eqz v3, :cond_11

    .line 285
    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    int-to-float v5, v5

    .line 291
    iget v6, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 292
    .line 293
    sub-float/2addr v5, v6

    .line 294
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    int-to-float v2, v2

    .line 299
    sub-float/2addr v5, v2

    .line 300
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 301
    .line 302
    .line 303
    :cond_11
    :goto_c
    add-int/lit8 v4, v4, 0x1

    .line 304
    .line 305
    goto :goto_b

    .line 306
    :cond_12
    return-void
.end method

.method public final initResources()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initResources()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->updateResource()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onClockColorChanged(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->onClockColorChanged(IZ)V

    return-void
.end method

.method public final onClockColorChanged(IZ)V
    .locals 2

    if-nez p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShelfIconColor:I

    if-eq v0, p1, :cond_2

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " onClockColorChanged - current : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShelfIconColor:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " new : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " F : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SecShelfNotificationIconContainer"

    .line 5
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreViewBackground:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 7
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p2

    .line 9
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    .line 10
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    add-int/2addr p2, v0

    add-int/2addr p2, v1

    .line 11
    div-int/lit8 p2, p2, 0x3

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    const/16 v1, 0x80

    if-lt p2, v1, :cond_1

    const/high16 p2, -0x1000000

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShelfIconColor:I

    :cond_2
    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->updateResource()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreViewRange:I

    .line 6
    .line 7
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mCount:I

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->updateMoreView(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    const/high16 p2, 0x40000000    # 2.0f

    .line 7
    .line 8
    div-float/2addr p1, p2

    .line 9
    const/4 p3, 0x0

    .line 10
    move p4, p3

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result p5

    .line 15
    if-ge p4, p5, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p5

    .line 21
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 22
    .line 23
    instance-of v1, p5, Landroid/widget/TextView;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    move v3, v1

    .line 36
    move v1, v0

    .line 37
    move v0, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    move v1, v0

    .line 40
    :goto_1
    int-to-float v2, v0

    .line 41
    div-float/2addr v2, p2

    .line 42
    sub-float v2, p1, v2

    .line 43
    .line 44
    float-to-int v2, v2

    .line 45
    add-int/2addr v0, v2

    .line 46
    invoke-virtual {p5, p3, v2, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 p4, p4, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 6
    .line 7
    const/high16 v2, -0x80000000

    .line 8
    .line 9
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {p0, v3, v1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const v1, 0x7f070e53

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v0, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final updateMoreView(I)V
    .locals 5

    .line 1
    if-lez p1, :cond_6

    .line 2
    .line 3
    const/16 v0, 0x64

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x3

    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0xa

    .line 12
    .line 13
    if-lt p1, v0, :cond_1

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    :goto_0
    if-ne v0, v2, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const v2, 0x7f07086c

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    if-ne v0, v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const v2, 0x7f07086b

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const v2, 0x7f07086a

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    :goto_1
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const v4, 0x7f070869

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-direct {v2, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreViewRange:I

    .line 88
    .line 89
    if-eq v1, v0, :cond_5

    .line 90
    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreViewRange:I

    .line 97
    .line 98
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    .line 99
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v2, "+"

    .line 103
    .line 104
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    .line 118
    .line 119
    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    .line 125
    .line 126
    const/16 v1, 0x8

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    :goto_3
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mCount:I

    .line 137
    .line 138
    return-void
.end method

.method public final updateResource()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f070a8e

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mPaddingBetweenIcons:I

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, 0x7f070a90

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mPaddingForMoreView:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const v1, 0x7f0703e5

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setIconSize(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    new-instance v0, Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    .line 57
    .line 58
    const v1, 0x7f14046a

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreView:Landroid/widget/TextView;

    .line 71
    .line 72
    const/16 v1, 0x11

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const v1, 0x7f0810d9

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->mMoreViewBackground:Landroid/graphics/drawable/Drawable;

    .line 89
    .line 90
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShelfIconColor:I

    .line 91
    .line 92
    const/4 v1, 0x1

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/SecShelfNotificationIconContainer;->onClockColorChanged(IZ)V

    .line 94
    .line 95
    .line 96
    return-void
.end method
