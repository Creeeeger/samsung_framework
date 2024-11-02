.class public final synthetic Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaControlPanel;

.field public final synthetic f$1:I

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/systemui/monet/ColorScheme;

.field public final synthetic f$5:Lcom/android/systemui/media/controls/models/player/MediaData;

.field public final synthetic f$6:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z

.field public final synthetic f$9:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;ILjava/lang/String;ILcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/media/controls/models/player/MediaData;Landroid/graphics/drawable/Drawable;ZZLandroid/graphics/drawable/Drawable;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$4:Lcom/android/systemui/monet/ColorScheme;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$5:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$6:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    iput-boolean p8, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$7:Z

    .line 19
    .line 20
    iput-boolean p9, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$8:Z

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$9:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    iput p11, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$10:I

    .line 25
    .line 26
    iput p12, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$11:I

    .line 27
    .line 28
    iput p13, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$12:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 4
    .line 5
    iget v2, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$1:I

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$3:I

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$4:Lcom/android/systemui/monet/ColorScheme;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$5:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$6:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    iget-boolean v8, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$7:Z

    .line 18
    .line 19
    iget-boolean v9, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$8:Z

    .line 20
    .line 21
    iget-object v10, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$9:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    iget v11, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$10:I

    .line 24
    .line 25
    iget v12, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$11:I

    .line 26
    .line 27
    iget v0, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;->f$12:I

    .line 28
    .line 29
    iget v13, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mArtworkBoundId:I

    .line 30
    .line 31
    if-ge v2, v13, :cond_0

    .line 32
    .line 33
    invoke-static {v3, v4}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_10

    .line 37
    .line 38
    :cond_0
    if-eqz v5, :cond_3

    .line 39
    .line 40
    iget-object v14, v6, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v15, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;

    .line 43
    .line 44
    iget-object v13, v5, Lcom/android/systemui/monet/ColorScheme;->accent2:Lcom/android/systemui/monet/TonalPalette;

    .line 45
    .line 46
    invoke-virtual {v13}, Lcom/android/systemui/monet/TonalPalette;->getS800()I

    .line 47
    .line 48
    .line 49
    move-result v17

    .line 50
    move-object/from16 v22, v3

    .line 51
    .line 52
    iget-object v3, v5, Lcom/android/systemui/monet/ColorScheme;->accent1:Lcom/android/systemui/monet/TonalPalette;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/android/systemui/monet/TonalPalette;->getS100()I

    .line 55
    .line 56
    .line 57
    move-result v18

    .line 58
    move/from16 v23, v4

    .line 59
    .line 60
    iget-object v4, v3, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    .line 61
    .line 62
    check-cast v4, Ljava/util/ArrayList;

    .line 63
    .line 64
    move-object/from16 v24, v5

    .line 65
    .line 66
    const/4 v5, 0x3

    .line 67
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v19

    .line 77
    invoke-virtual {v13}, Lcom/android/systemui/monet/TonalPalette;->getS700()I

    .line 78
    .line 79
    .line 80
    move-result v20

    .line 81
    invoke-virtual {v3}, Lcom/android/systemui/monet/TonalPalette;->getS700()I

    .line 82
    .line 83
    .line 84
    move-result v21

    .line 85
    move-object/from16 v16, v15

    .line 86
    .line 87
    invoke-direct/range {v16 .. v21}, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;-><init>(IIIII)V

    .line 88
    .line 89
    .line 90
    if-nez v8, :cond_2

    .line 91
    .line 92
    iget-boolean v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mIsArtworkBound:Z

    .line 93
    .line 94
    if-nez v3, :cond_1

    .line 95
    .line 96
    if-eqz v9, :cond_1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v3, 0x0

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 102
    :goto_1
    iget-object v4, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mFaceWidgetColorSchemeController:Lcom/android/systemui/facewidget/plugin/FaceWidgetColorSchemeControllerWrapper;

    .line 103
    .line 104
    iget-object v4, v4, Lcom/android/systemui/facewidget/plugin/FaceWidgetColorSchemeControllerWrapper;->mCallbackList:Ljava/util/List;

    .line 105
    .line 106
    check-cast v4, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_4

    .line 117
    .line 118
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorSchemeCallback;

    .line 123
    .line 124
    invoke-interface {v5, v14, v7, v15, v3}, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorSchemeCallback;->onColorSchemeUpdated(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;Z)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    move-object/from16 v22, v3

    .line 129
    .line 130
    move/from16 v23, v4

    .line 131
    .line 132
    move-object/from16 v24, v5

    .line 133
    .line 134
    :cond_4
    iput v2, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mArtworkBoundId:I

    .line 135
    .line 136
    iget-object v2, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const/4 v3, 0x0

    .line 143
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 144
    .line 145
    .line 146
    if-nez v8, :cond_6

    .line 147
    .line 148
    iget-boolean v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mIsArtworkBound:Z

    .line 149
    .line 150
    if-nez v3, :cond_5

    .line 151
    .line 152
    if-eqz v9, :cond_5

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_5
    const/4 v5, 0x0

    .line 156
    goto/16 :goto_d

    .line 157
    .line 158
    :cond_6
    :goto_3
    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mType:Lcom/android/systemui/media/MediaType;

    .line 159
    .line 160
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaType;->getSupportCapsule()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_d

    .line 165
    .line 166
    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mCoverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

    .line 167
    .line 168
    if-eqz v3, :cond_d

    .line 169
    .line 170
    iget-object v4, v6, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 171
    .line 172
    iget-object v5, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mController:Landroid/media/session/MediaController;

    .line 173
    .line 174
    const-string v8, "capsule_action_pkg"

    .line 175
    .line 176
    iget-object v13, v3, Lcom/android/systemui/media/CoverMusicCapsuleController;->bundle:Landroid/os/Bundle;

    .line 177
    .line 178
    invoke-virtual {v13, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const-string v4, "capsule_action"

    .line 182
    .line 183
    iget-object v6, v6, Lcom/android/systemui/media/controls/models/player/MediaData;->clickIntent:Landroid/app/PendingIntent;

    .line 184
    .line 185
    invoke-virtual {v13, v4, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 186
    .line 187
    .line 188
    if-eqz v10, :cond_a

    .line 189
    .line 190
    iget-object v6, v3, Lcom/android/systemui/media/CoverMusicCapsuleController;->capsule:Landroid/widget/RemoteViews;

    .line 191
    .line 192
    instance-of v8, v10, Landroid/graphics/drawable/BitmapDrawable;

    .line 193
    .line 194
    if-eqz v8, :cond_7

    .line 195
    .line 196
    move-object v8, v10

    .line 197
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_7
    const/4 v8, 0x0

    .line 201
    :goto_4
    const/16 v14, 0x28

    .line 202
    .line 203
    if-eqz v8, :cond_9

    .line 204
    .line 205
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    if-nez v8, :cond_8

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_8
    move-object v4, v8

    .line 213
    const/4 v8, 0x0

    .line 214
    goto :goto_6

    .line 215
    :cond_9
    :goto_5
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 216
    .line 217
    invoke-static {v14, v14, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    new-instance v15, Landroid/graphics/Canvas;

    .line 222
    .line 223
    invoke-direct {v15, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v15}, Landroid/graphics/Canvas;->getWidth()I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    invoke-virtual {v15}, Landroid/graphics/Canvas;->getHeight()I

    .line 231
    .line 232
    .line 233
    move-result v14

    .line 234
    move-object/from16 v18, v8

    .line 235
    .line 236
    const/4 v8, 0x0

    .line 237
    invoke-virtual {v10, v8, v8, v4, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v10, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 241
    .line 242
    .line 243
    move-object/from16 v4, v18

    .line 244
    .line 245
    :goto_6
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 246
    .line 247
    const/16 v14, 0x28

    .line 248
    .line 249
    invoke-static {v14, v14, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    const/4 v15, 0x1

    .line 254
    invoke-static {v4, v14, v14, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    new-instance v14, Landroid/graphics/Rect;

    .line 259
    .line 260
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 261
    .line 262
    .line 263
    move-result v15

    .line 264
    move/from16 v17, v9

    .line 265
    .line 266
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    invoke-direct {v14, v8, v8, v15, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 271
    .line 272
    .line 273
    new-instance v9, Landroid/graphics/Paint;

    .line 274
    .line 275
    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 276
    .line 277
    .line 278
    const/4 v15, 0x1

    .line 279
    invoke-virtual {v9, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 280
    .line 281
    .line 282
    const v15, -0xbdbdbe

    .line 283
    .line 284
    .line 285
    invoke-virtual {v9, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 286
    .line 287
    .line 288
    new-instance v15, Landroid/graphics/Canvas;

    .line 289
    .line 290
    invoke-direct {v15, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v15, v8, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    div-int/lit8 v8, v8, 0x2

    .line 301
    .line 302
    int-to-float v8, v8

    .line 303
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 304
    .line 305
    .line 306
    move-result v18

    .line 307
    move/from16 v19, v0

    .line 308
    .line 309
    div-int/lit8 v0, v18, 0x2

    .line 310
    .line 311
    int-to-float v0, v0

    .line 312
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 313
    .line 314
    .line 315
    move-result v18

    .line 316
    move/from16 v20, v12

    .line 317
    .line 318
    div-int/lit8 v12, v18, 0x2

    .line 319
    .line 320
    int-to-float v12, v12

    .line 321
    invoke-virtual {v15, v8, v0, v12, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 322
    .line 323
    .line 324
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 325
    .line 326
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 327
    .line 328
    invoke-direct {v0, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 332
    .line 333
    .line 334
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 335
    .line 336
    invoke-virtual {v15, v4, v14, v14, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 337
    .line 338
    .line 339
    const v0, 0x7f0a0996

    .line 340
    .line 341
    .line 342
    invoke-virtual {v6, v0, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 343
    .line 344
    .line 345
    goto :goto_7

    .line 346
    :cond_a
    move/from16 v19, v0

    .line 347
    .line 348
    move/from16 v17, v9

    .line 349
    .line 350
    move/from16 v20, v12

    .line 351
    .line 352
    :goto_7
    const-string v0, "bg_startColor"

    .line 353
    .line 354
    invoke-virtual {v13, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    .line 356
    .line 357
    const/4 v0, 0x3

    .line 358
    new-array v0, v0, [F

    .line 359
    .line 360
    invoke-static {v11, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 361
    .line 362
    .line 363
    const/4 v4, 0x0

    .line 364
    aget v6, v0, v4

    .line 365
    .line 366
    const/high16 v8, 0x43160000    # 150.0f

    .line 367
    .line 368
    cmpg-float v8, v6, v8

    .line 369
    .line 370
    if-gez v8, :cond_b

    .line 371
    .line 372
    const/high16 v8, 0x42200000    # 40.0f

    .line 373
    .line 374
    add-float/2addr v6, v8

    .line 375
    goto :goto_8

    .line 376
    :cond_b
    const/high16 v8, 0x42700000    # 60.0f

    .line 377
    .line 378
    sub-float/2addr v6, v8

    .line 379
    :goto_8
    aput v6, v0, v4

    .line 380
    .line 381
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    const-string v4, "bg_endColor"

    .line 386
    .line 387
    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    .line 389
    .line 390
    if-eqz v5, :cond_c

    .line 391
    .line 392
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    goto :goto_9

    .line 397
    :cond_c
    const/4 v4, 0x0

    .line 398
    :goto_9
    invoke-virtual {v3, v4}, Lcom/android/systemui/media/CoverMusicCapsuleController;->updateEqualizerState(Landroid/media/session/PlaybackState;)V

    .line 399
    .line 400
    .line 401
    goto :goto_a

    .line 402
    :cond_d
    move/from16 v19, v0

    .line 403
    .line 404
    move/from16 v17, v9

    .line 405
    .line 406
    move/from16 v20, v12

    .line 407
    .line 408
    :goto_a
    iget-object v0, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mPrevArtwork:Landroid/graphics/drawable/Drawable;

    .line 409
    .line 410
    if-nez v0, :cond_e

    .line 411
    .line 412
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    .line 414
    .line 415
    const/4 v5, 0x0

    .line 416
    goto :goto_c

    .line 417
    :cond_e
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 418
    .line 419
    iget-object v3, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mPrevArtwork:Landroid/graphics/drawable/Drawable;

    .line 420
    .line 421
    filled-new-array {v3, v7}, [Landroid/graphics/drawable/Drawable;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    invoke-direct {v0, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 426
    .line 427
    .line 428
    move/from16 v4, v19

    .line 429
    .line 430
    move/from16 v3, v20

    .line 431
    .line 432
    const/4 v5, 0x0

    .line 433
    invoke-static {v0, v5, v3, v4}, Lcom/android/systemui/media/SecMediaControlPanel;->scaleTransitionDrawableLayer(Landroid/graphics/drawable/TransitionDrawable;III)V

    .line 434
    .line 435
    .line 436
    const/4 v6, 0x1

    .line 437
    invoke-static {v0, v6, v3, v4}, Lcom/android/systemui/media/SecMediaControlPanel;->scaleTransitionDrawableLayer(Landroid/graphics/drawable/TransitionDrawable;III)V

    .line 438
    .line 439
    .line 440
    const/16 v3, 0x11

    .line 441
    .line 442
    invoke-virtual {v0, v5, v3}, Landroid/graphics/drawable/TransitionDrawable;->setLayerGravity(II)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0, v6, v3}, Landroid/graphics/drawable/TransitionDrawable;->setLayerGravity(II)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    .line 453
    .line 454
    if-eqz v17, :cond_f

    .line 455
    .line 456
    const/16 v2, 0x14d

    .line 457
    .line 458
    goto :goto_b

    .line 459
    :cond_f
    const/16 v2, 0x50

    .line 460
    .line 461
    :goto_b
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 462
    .line 463
    .line 464
    :goto_c
    iput-object v7, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mPrevArtwork:Landroid/graphics/drawable/Drawable;

    .line 465
    .line 466
    move/from16 v0, v17

    .line 467
    .line 468
    iput-boolean v0, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mIsArtworkBound:Z

    .line 469
    .line 470
    :goto_d
    iget-object v0, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mColorSchemeTransition:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    .line 471
    .line 472
    iget-boolean v1, v1, Lcom/android/systemui/media/SecMediaControlPanel;->mIsArtworkBound:Z

    .line 473
    .line 474
    iput-boolean v1, v0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->isGradientEnabled:Z

    .line 475
    .line 476
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->colorTransitions:[Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;

    .line 477
    .line 478
    array-length v1, v0

    .line 479
    move v15, v5

    .line 480
    :goto_e
    if-ge v15, v1, :cond_12

    .line 481
    .line 482
    aget-object v2, v0, v15

    .line 483
    .line 484
    if-nez v24, :cond_10

    .line 485
    .line 486
    iget v3, v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->defaultColor:I

    .line 487
    .line 488
    move-object/from16 v4, v24

    .line 489
    .line 490
    goto :goto_f

    .line 491
    :cond_10
    iget-object v3, v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->extractColor:Lkotlin/jvm/functions/Function1;

    .line 492
    .line 493
    move-object/from16 v4, v24

    .line 494
    .line 495
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    check-cast v3, Ljava/lang/Number;

    .line 500
    .line 501
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 502
    .line 503
    .line 504
    move-result v3

    .line 505
    :goto_f
    iget v5, v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->targetColor:I

    .line 506
    .line 507
    if-eq v3, v5, :cond_11

    .line 508
    .line 509
    iget v5, v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->currentColor:I

    .line 510
    .line 511
    iput v5, v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->sourceColor:I

    .line 512
    .line 513
    iput v3, v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->targetColor:I

    .line 514
    .line 515
    iget-object v3, v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 516
    .line 517
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 518
    .line 519
    .line 520
    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/SecAnimatingColorTransition;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 521
    .line 522
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 523
    .line 524
    .line 525
    :cond_11
    add-int/lit8 v15, v15, 0x1

    .line 526
    .line 527
    move-object/from16 v24, v4

    .line 528
    .line 529
    goto :goto_e

    .line 530
    :cond_12
    move-object/from16 v2, v22

    .line 531
    .line 532
    move/from16 v3, v23

    .line 533
    .line 534
    invoke-static {v2, v3}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 535
    .line 536
    .line 537
    :goto_10
    return-void
.end method
