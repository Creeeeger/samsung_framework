.class public final Lcom/android/wm/shell/controlpanel/activity/TouchPad;
.super Lcom/android/wm/shell/controlpanel/activity/FloatingUI;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mCenterText:Landroid/view/View;

.field public final mIsMediaPanel:Z

.field public mTouchPadBg:Landroid/view/View;

.field public mTouchPadLine:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mIsMediaPanel:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final connectUIObject()V
    .locals 3

    .line 1
    const v0, 0x7f0d00b6

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
    const v1, 0x7f0a0c10

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mTouchPadBg:Landroid/view/View;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 23
    .line 24
    const v1, 0x7f0a0240

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mCenterText:Landroid/view/View;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 34
    .line 35
    const v1, 0x7f0a0c11

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mTouchPadLine:Landroid/view/View;

    .line 43
    .line 44
    const/4 p0, 0x4

    .line 45
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final fadeInAnimation()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mTouchPadBg:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->startFadeInAnimation(Landroid/view/View;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mCenterText:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->startFadeInAnimation(Landroid/view/View;Z)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/TouchPad$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {v2, p0, v1}, Lcom/android/wm/shell/controlpanel/activity/TouchPad$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/TouchPad;I)V

    .line 24
    .line 25
    .line 26
    const-wide/16 v3, 0x64

    .line 27
    .line 28
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    .line 30
    .line 31
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
    .locals 14

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
    const/high16 v1, 0x20000000

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
    const/16 v6, 0x53

    .line 45
    .line 46
    iget-boolean v7, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mIsMediaPanel:Z

    .line 47
    .line 48
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 49
    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    const v4, 0x7f0700a9

    .line 53
    .line 54
    .line 55
    if-eqz v7, :cond_0

    .line 56
    .line 57
    iget-object v6, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 58
    .line 59
    int-to-double v10, v2

    .line 60
    const-wide v12, 0x403e666666666666L    # 30.4

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    mul-double/2addr v10, v12

    .line 66
    div-double/2addr v10, v8

    .line 67
    double-to-int v2, v10

    .line 68
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 69
    .line 70
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 77
    .line 78
    const/16 v4, 0x33

    .line 79
    .line 80
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    iget-object v7, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 84
    .line 85
    int-to-double v10, v2

    .line 86
    const-wide v12, 0x40428ccccccccccdL    # 37.1

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    mul-double/2addr v12, v10

    .line 92
    div-double/2addr v12, v8

    .line 93
    double-to-int v12, v12

    .line 94
    iput v12, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 95
    .line 96
    div-int/2addr v2, v5

    .line 97
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    sub-int/2addr v2, v4

    .line 102
    const-wide v12, 0x40328ccccccccccdL    # 18.55

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    mul-double/2addr v10, v12

    .line 108
    div-double/2addr v10, v8

    .line 109
    double-to-int v4, v10

    .line 110
    sub-int/2addr v2, v4

    .line 111
    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 112
    .line 113
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 114
    .line 115
    div-int/2addr v10, v5

    .line 116
    sub-int/2addr v2, v10

    .line 117
    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 118
    .line 119
    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 120
    .line 121
    :goto_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    .line 122
    .line 123
    const v4, 0x7f0714eb

    .line 124
    .line 125
    .line 126
    const v6, 0x7f0714da

    .line 127
    .line 128
    .line 129
    if-eqz v2, :cond_2

    .line 130
    .line 131
    sget-boolean v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sTalkbackEnabled:Z

    .line 132
    .line 133
    if-nez v2, :cond_2

    .line 134
    .line 135
    invoke-static {v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isWheelActive(Landroid/content/Context;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_2

    .line 140
    .line 141
    const-wide v10, 0x401b0a3d70a3d70aL    # 6.76

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    const v2, 0x7f0700a6

    .line 147
    .line 148
    .line 149
    if-ne v3, v5, :cond_1

    .line 150
    .line 151
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 152
    .line 153
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    int-to-double v4, v1

    .line 158
    mul-double/2addr v4, v10

    .line 159
    div-double/2addr v4, v8

    .line 160
    double-to-int v4, v4

    .line 161
    add-int/2addr v2, v4

    .line 162
    const v4, 0x7f0714db

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    add-int/2addr v4, v2

    .line 170
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 171
    .line 172
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 173
    .line 174
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 175
    .line 176
    sub-int v3, v1, v3

    .line 177
    .line 178
    const v4, 0x7f070cff

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    sub-int/2addr v3, v4

    .line 186
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 190
    .line 191
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    int-to-double v12, v1

    .line 196
    mul-double/2addr v12, v10

    .line 197
    div-double/2addr v12, v8

    .line 198
    double-to-int v5, v12

    .line 199
    add-int/2addr v2, v5

    .line 200
    const v5, 0x7f0714dc

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v5}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    add-int/2addr v5, v2

    .line 208
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 209
    .line 210
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 211
    .line 212
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 213
    .line 214
    sub-int v3, v1, v3

    .line 215
    .line 216
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    sub-int/2addr v3, v4

    .line 221
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 225
    .line 226
    invoke-virtual {p0, v6}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 231
    .line 232
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 233
    .line 234
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 235
    .line 236
    sub-int v3, v1, v3

    .line 237
    .line 238
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    sub-int/2addr v3, v4

    .line 243
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 244
    .line 245
    :goto_1
    invoke-static {v0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    const/4 v2, 0x1

    .line 250
    if-ne v0, v2, :cond_7

    .line 251
    .line 252
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 253
    .line 254
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 255
    .line 256
    sub-int/2addr v1, v2

    .line 257
    invoke-virtual {p0, v6}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    sub-int/2addr v1, v2

    .line 262
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_3
    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 266
    .line 267
    if-eqz v7, :cond_4

    .line 268
    .line 269
    const v7, 0x7f0714ee

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0, v7}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    .line 273
    .line 274
    .line 275
    move-result v7

    .line 276
    goto :goto_2

    .line 277
    :cond_4
    const v7, 0x7f0714d6

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, v7}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    .line 281
    .line 282
    .line 283
    move-result v7

    .line 284
    :goto_2
    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 285
    .line 286
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    .line 287
    .line 288
    if-eqz v4, :cond_6

    .line 289
    .line 290
    sget-boolean v4, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sTalkbackEnabled:Z

    .line 291
    .line 292
    if-nez v4, :cond_6

    .line 293
    .line 294
    invoke-static {v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isWheelActive(Landroid/content/Context;)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_6

    .line 299
    .line 300
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 301
    .line 302
    if-ne v3, v5, :cond_5

    .line 303
    .line 304
    const/16 v6, 0x55

    .line 305
    .line 306
    :cond_5
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 307
    .line 308
    const v3, 0x7f0714ed

    .line 309
    .line 310
    .line 311
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 316
    .line 317
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 318
    .line 319
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 320
    .line 321
    sub-int v3, v1, v3

    .line 322
    .line 323
    int-to-double v6, v1

    .line 324
    const-wide v10, 0x4016333333333333L    # 5.55

    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    mul-double/2addr v6, v10

    .line 330
    div-double/2addr v6, v8

    .line 331
    double-to-int v1, v6

    .line 332
    sub-int/2addr v3, v1

    .line 333
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 334
    .line 335
    goto :goto_3

    .line 336
    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 337
    .line 338
    int-to-double v3, v1

    .line 339
    const-wide v6, 0x405639999999999aL    # 88.9

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    mul-double/2addr v3, v6

    .line 345
    div-double/2addr v3, v8

    .line 346
    double-to-int v1, v3

    .line 347
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 348
    .line 349
    const/16 v1, 0x51

    .line 350
    .line 351
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 352
    .line 353
    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 354
    .line 355
    div-int/2addr v2, v5

    .line 356
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 357
    .line 358
    sub-int/2addr v2, v1

    .line 359
    const v1, 0x7f0714ec

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    sub-int/2addr v2, v1

    .line 367
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 368
    .line 369
    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 370
    .line 371
    const-string v0, "FlexPanelTouchPad"

    .line 372
    .line 373
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    .line 375
    .line 376
    return-void
.end method

.method public final startFadeInAnimation(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v0, 0x7f0101a3

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
