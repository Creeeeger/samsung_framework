.class public final Lcom/android/systemui/privacy/PrivacyDialog$onCreate$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/privacy/PrivacyDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialog$onCreate$4;->this$0:Lcom/android/systemui/privacy/PrivacyDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyDialog$onCreate$4;->this$0:Lcom/android/systemui/privacy/PrivacyDialog;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialog;->mBlurView:Landroid/widget/ImageView;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    move-object v1, v2

    .line 11
    :cond_0
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR:Z

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v3, :cond_6

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const v5, 0x7f070e5e

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    int-to-float v3, v3

    .line 32
    const-class v5, Lcom/android/systemui/util/SettingsHelper;

    .line 33
    .line 34
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lcom/android/systemui/util/SettingsHelper;

    .line 39
    .line 40
    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const v6, 0x7f06059c

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const v6, 0x7f06059b

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    :goto_0
    sget-boolean v6, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    .line 78
    .line 79
    const/16 v7, 0x78

    .line 80
    .line 81
    const/4 v8, 0x0

    .line 82
    if-eqz v6, :cond_2

    .line 83
    .line 84
    new-instance v0, Landroid/view/SemBlurInfo$Builder;

    .line 85
    .line 86
    invoke-direct {v0, v8}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v7}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, v5}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0, v3}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :cond_2
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    .line 104
    .line 105
    if-eqz v3, :cond_5

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 120
    .line 121
    const-class v5, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 122
    .line 123
    if-ne v3, v4, :cond_3

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    const v6, 0x7f070e5b

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    goto :goto_1

    .line 141
    :cond_3
    iget-boolean v3, v0, Lcom/android/systemui/privacy/PrivacyDialog;->qsExpanded:Z

    .line 142
    .line 143
    if-eqz v3, :cond_4

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    check-cast v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-static {v6}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQQSPanelSidePadding(Landroid/content/Context;)I

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    :goto_1
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    mul-int/lit8 v8, v8, 0x2

    .line 181
    .line 182
    sub-int v14, v3, v8

    .line 183
    .line 184
    iget-object v3, v0, Lcom/android/systemui/privacy/PrivacyDialog;->list:Ljava/util/List;

    .line 185
    .line 186
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    const v6, 0x7f070e60

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    mul-int v15, v5, v3

    .line 206
    .line 207
    new-instance v3, Landroid/graphics/Point;

    .line 208
    .line 209
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 224
    .line 225
    .line 226
    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 227
    .line 228
    sub-int/2addr v3, v14

    .line 229
    div-int/lit8 v3, v3, 0x2

    .line 230
    .line 231
    iget v5, v0, Lcom/android/systemui/privacy/PrivacyDialog;->mDialogTranslateX:I

    .line 232
    .line 233
    add-int/2addr v3, v5

    .line 234
    iget v5, v0, Lcom/android/systemui/privacy/PrivacyDialog;->mDialogTopMargin:I

    .line 235
    .line 236
    new-instance v13, Landroid/graphics/Rect;

    .line 237
    .line 238
    add-int v6, v3, v14

    .line 239
    .line 240
    add-int v8, v5, v15

    .line 241
    .line 242
    invoke-direct {v13, v3, v5, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 243
    .line 244
    .line 245
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const-string/jumbo v3, "window"

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Landroid/view/WindowManager;

    .line 257
    .line 258
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 267
    .line 268
    .line 269
    move-result v10

    .line 270
    const/16 v11, 0x7f4

    .line 271
    .line 272
    const/4 v12, 0x1

    .line 273
    const/16 v16, 0x0

    .line 274
    .line 275
    const/16 v17, 0x0

    .line 276
    .line 277
    const/16 v18, 0x1

    .line 278
    .line 279
    invoke-virtual/range {v9 .. v18}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    .line 280
    .line 281
    .line 282
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    goto :goto_2

    .line 284
    :catch_0
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 286
    .line 287
    .line 288
    move-object v0, v2

    .line 289
    :goto_2
    if-eqz v0, :cond_5

    .line 290
    .line 291
    new-instance v2, Landroid/view/SemBlurInfo$Builder;

    .line 292
    .line 293
    invoke-direct {v2, v4}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v7}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v2, v0}, Landroid/view/SemBlurInfo$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroid/view/SemBlurInfo$Builder;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 305
    .line 306
    invoke-virtual {v2}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 311
    .line 312
    .line 313
    :cond_6
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 314
    .line 315
    .line 316
    return-void
.end method
