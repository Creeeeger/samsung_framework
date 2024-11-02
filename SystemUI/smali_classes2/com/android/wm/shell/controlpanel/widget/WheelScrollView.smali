.class public final Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;
.super Lcom/android/wm/shell/controlpanel/activity/FloatingUI;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mCustomWheelView:Lcom/android/wm/shell/controlpanel/widget/CustomWheelView;

.field public final mIsMediaPanel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->mIsMediaPanel:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final connectUIObject()V
    .locals 3

    .line 1
    const v0, 0x7f0d0525

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 12
    .line 13
    const v1, 0x7f0a02ea

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/wm/shell/controlpanel/widget/CustomWheelView;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->mCustomWheelView:Lcom/android/wm/shell/controlpanel/widget/CustomWheelView;

    .line 23
    .line 24
    return-void
.end method

.method public final fadeInAnimation()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getPixel(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final setAppendLayoutParams()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    const/high16 v1, 0x800000

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getDisplayX(Landroid/content/Context;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getDisplayY(Landroid/content/Context;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "flex_mode_scroll_wheel_pos"

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    iget-boolean v6, p0, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->mIsMediaPanel:Z

    .line 45
    .line 46
    const v7, 0x7f070d4c

    .line 47
    .line 48
    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    const v4, 0x7f0700a9

    .line 52
    .line 53
    .line 54
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 55
    .line 56
    if-eqz v6, :cond_0

    .line 57
    .line 58
    iget-object v10, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 59
    .line 60
    int-to-double v11, v2

    .line 61
    const-wide v13, 0x403e666666666666L    # 30.4

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    mul-double/2addr v11, v13

    .line 67
    div-double/2addr v11, v8

    .line 68
    double-to-int v2, v11

    .line 69
    invoke-virtual {p0, v7}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel(I)I

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    mul-int/2addr v11, v5

    .line 74
    sub-int/2addr v2, v11

    .line 75
    iput v2, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 76
    .line 77
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 78
    .line 79
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel(I)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {p0, v7}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel(I)I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    add-int/2addr v7, v4

    .line 88
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    iget-object v10, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 92
    .line 93
    int-to-double v11, v2

    .line 94
    const-wide v13, 0x40428ccccccccccdL    # 37.1

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    mul-double/2addr v13, v11

    .line 100
    div-double/2addr v13, v8

    .line 101
    double-to-int v13, v13

    .line 102
    invoke-virtual {p0, v7}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel(I)I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    mul-int/2addr v7, v5

    .line 107
    sub-int/2addr v13, v7

    .line 108
    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 109
    .line 110
    iget-object v7, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 111
    .line 112
    div-int/2addr v2, v5

    .line 113
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel(I)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    sub-int/2addr v2, v4

    .line 118
    const-wide v13, 0x40328ccccccccccdL    # 18.55

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    mul-double/2addr v11, v13

    .line 124
    div-double/2addr v11, v8

    .line 125
    double-to-int v4, v11

    .line 126
    sub-int/2addr v2, v4

    .line 127
    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 128
    .line 129
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 130
    .line 131
    div-int/2addr v4, v5

    .line 132
    sub-int/2addr v2, v4

    .line 133
    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 134
    .line 135
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 136
    .line 137
    const v4, 0x7f070d50

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel(I)I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 145
    .line 146
    const v2, 0x7f070d4b

    .line 147
    .line 148
    .line 149
    const-wide v10, 0x401b0a3d70a3d70aL    # 6.76

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    if-ne v3, v5, :cond_1

    .line 155
    .line 156
    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 157
    .line 158
    const v7, 0x7f070d4f

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v7}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel(I)I

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_1
    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 169
    .line 170
    int-to-double v12, v1

    .line 171
    mul-double/2addr v12, v10

    .line 172
    div-double/2addr v12, v8

    .line 173
    double-to-int v7, v12

    .line 174
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel(I)I

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    add-int/2addr v12, v7

    .line 179
    iput v12, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 180
    .line 181
    :goto_1
    if-eqz v6, :cond_2

    .line 182
    .line 183
    const/16 v4, 0x30

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_2
    const/16 v4, 0x50

    .line 187
    .line 188
    :goto_2
    if-ne v3, v5, :cond_3

    .line 189
    .line 190
    const/4 v3, 0x5

    .line 191
    goto :goto_3

    .line 192
    :cond_3
    const/4 v3, 0x3

    .line 193
    :goto_3
    iget-object v5, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 194
    .line 195
    or-int/2addr v3, v4

    .line 196
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 197
    .line 198
    invoke-static {v0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    const/4 v3, 0x1

    .line 203
    if-ne v0, v3, :cond_8

    .line 204
    .line 205
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 206
    .line 207
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 208
    .line 209
    sub-int v3, v1, v3

    .line 210
    .line 211
    int-to-double v4, v1

    .line 212
    mul-double/2addr v4, v10

    .line 213
    div-double/2addr v4, v8

    .line 214
    double-to-int v1, v4

    .line 215
    sub-int/2addr v3, v1

    .line 216
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel(I)I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    sub-int/2addr v3, v1

    .line 221
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_4
    if-eqz v6, :cond_5

    .line 225
    .line 226
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 227
    .line 228
    const v1, 0x7f0714ee

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    invoke-virtual {p0, v7}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel(I)I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    add-int/2addr v4, v1

    .line 240
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 244
    .line 245
    const v1, 0x7f0714d6

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel(I)I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    invoke-virtual {p0, v7}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel(I)I

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    add-int/2addr v4, v1

    .line 257
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 258
    .line 259
    :goto_4
    if-ne v3, v5, :cond_6

    .line 260
    .line 261
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 262
    .line 263
    const/16 v1, 0x55

    .line 264
    .line 265
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_6
    const/4 v0, 0x1

    .line 269
    if-ne v3, v0, :cond_7

    .line 270
    .line 271
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 272
    .line 273
    const/16 v1, 0x53

    .line 274
    .line 275
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 276
    .line 277
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 278
    .line 279
    const v1, 0x7f070d50

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel(I)I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 287
    .line 288
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 289
    .line 290
    const v1, 0x7f070d4e

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel(I)I

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 298
    .line 299
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 300
    .line 301
    div-int/2addr v2, v5

    .line 302
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 303
    .line 304
    sub-int/2addr v2, v1

    .line 305
    const v1, 0x7f0714ec

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel(I)I

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    sub-int/2addr v2, v1

    .line 313
    invoke-virtual {p0, v7}, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->getPixel(I)I

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    mul-int/2addr v1, v5

    .line 318
    sub-int/2addr v2, v1

    .line 319
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 320
    .line 321
    :cond_8
    :goto_6
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 322
    .line 323
    const-string v0, "FlexPanelWheelScrollView"

    .line 324
    .line 325
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 326
    .line 327
    .line 328
    return-void
.end method
