.class public final synthetic Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_8

    .line 10
    .line 11
    :pswitch_0
    iget-object v0, v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v1, "ScreenDecorations#addTunable"

    .line 17
    .line 18
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v1, "sysui_rounded_size"

    .line 22
    .line 23
    .line 24
    filled-new-array {v1}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 29
    .line 30
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_1
    iget-object v0, v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const-string v1, "ScreenDecorations#startOnScreenDecorationsThread"

    .line 43
    .line 44
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    const-class v3, Landroid/view/WindowManager;

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Landroid/view/WindowManager;

    .line 56
    .line 57
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 58
    .line 59
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 66
    .line 67
    invoke-virtual {v1, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 71
    .line 72
    iget v3, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 73
    .line 74
    iput v3, v0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayMode:Landroid/view/Display$Mode;

    .line 81
    .line 82
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 83
    .line 84
    iget-object v3, v1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 85
    .line 86
    iput-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayUniqueId:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 89
    .line 90
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 91
    .line 92
    new-instance v1, Lcom/android/systemui/decor/RoundedCornerResDelegate;

    .line 93
    .line 94
    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    iget-object v4, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayUniqueId:Ljava/lang/String;

    .line 101
    .line 102
    invoke-direct {v1, v3, v4}, Lcom/android/systemui/decor/RoundedCornerResDelegate;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->getPhysicalPixelDisplaySizeRatio()F

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    iget v4, v1, Lcom/android/systemui/decor/RoundedCornerResDelegate;->physicalPixelDisplaySizeRatio:F

    .line 112
    .line 113
    cmpg-float v4, v4, v3

    .line 114
    .line 115
    const/4 v9, 0x1

    .line 116
    if-nez v4, :cond_0

    .line 117
    .line 118
    move v4, v9

    .line 119
    goto :goto_0

    .line 120
    :cond_0
    move v4, v2

    .line 121
    :goto_0
    if-eqz v4, :cond_1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    iput v3, v1, Lcom/android/systemui/decor/RoundedCornerResDelegate;->physicalPixelDisplaySizeRatio:F

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadMeasures()V

    .line 127
    .line 128
    .line 129
    :goto_1
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->getDisplayAspectRatioChanged()Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    iget-boolean v4, v1, Lcom/android/systemui/decor/RoundedCornerResDelegate;->displayAspectRatioChanged:Z

    .line 136
    .line 137
    if-ne v4, v3, :cond_2

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_2
    iput-boolean v3, v1, Lcom/android/systemui/decor/RoundedCornerResDelegate;->displayAspectRatioChanged:Z

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadMeasures()V

    .line 143
    .line 144
    .line 145
    :goto_2
    new-instance v1, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;

    .line 146
    .line 147
    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    .line 148
    .line 149
    invoke-direct {v1, v3}, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;-><init>(Lcom/android/systemui/decor/RoundedCornerResDelegate;)V

    .line 150
    .line 151
    .line 152
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerFactory:Lcom/android/systemui/decor/DecorProviderFactory;

    .line 153
    .line 154
    new-instance v1, Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    .line 155
    .line 156
    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 157
    .line 158
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-direct {v1, v4, v3}, Lcom/android/systemui/decor/CutoutDecorProviderFactory;-><init>(Landroid/content/res/Resources;Landroid/view/Display;)V

    .line 167
    .line 168
    .line 169
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    .line 170
    .line 171
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 172
    .line 173
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayDecorationSupport()Landroid/hardware/graphics/common/DisplayDecorationSupport;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->updateHwLayerRoundedCornerDrawable()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 190
    .line 191
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    const v4, 0x7f050010

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-nez v3, :cond_3

    .line 203
    .line 204
    sget-boolean v3, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_ICONS_IN_UDC:Z

    .line 205
    .line 206
    if-eqz v3, :cond_4

    .line 207
    .line 208
    :cond_3
    sget-object v3, Lcom/android/systemui/CameraAvailabilityListener;->Factory:Lcom/android/systemui/CameraAvailabilityListener$Factory;

    .line 209
    .line 210
    iget-object v4, v0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 211
    .line 212
    iget-object v5, v0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 213
    .line 214
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    invoke-static {v1, v4, v5}, Lcom/android/systemui/CameraAvailabilityListener$Factory;->build(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Handler;)Lcom/android/systemui/CameraAvailabilityListener;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

    .line 222
    .line 223
    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mCameraTransitionCallback:Lcom/android/systemui/ScreenDecorations$1;

    .line 224
    .line 225
    iget-object v1, v1, Lcom/android/systemui/CameraAvailabilityListener;->listeners:Ljava/util/List;

    .line 226
    .line 227
    check-cast v1, Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

    .line 233
    .line 234
    iget-object v3, v1, Lcom/android/systemui/CameraAvailabilityListener;->handler:Landroid/os/Handler;

    .line 235
    .line 236
    iget-object v4, v1, Lcom/android/systemui/CameraAvailabilityListener;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 237
    .line 238
    iget-object v1, v1, Lcom/android/systemui/CameraAvailabilityListener;->cameraDeviceStateCallback:Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;

    .line 239
    .line 240
    invoke-virtual {v4, v1, v3}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V

    .line 241
    .line 242
    .line 243
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 244
    .line 245
    const-class v3, Landroid/hardware/display/DisplayManager;

    .line 246
    .line 247
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 252
    .line 253
    invoke-virtual {v1, v9}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    if-eqz v1, :cond_18

    .line 258
    .line 259
    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 260
    .line 261
    const/16 v4, 0x7e8

    .line 262
    .line 263
    const/4 v5, 0x0

    .line 264
    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mCoverWindowContext:Landroid/content/Context;

    .line 269
    .line 270
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mCoverDisplayInfo:Landroid/view/DisplayInfo;

    .line 275
    .line 276
    invoke-virtual {v1, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 277
    .line 278
    .line 279
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mCoverDisplayInfo:Landroid/view/DisplayInfo;

    .line 280
    .line 281
    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 282
    .line 283
    iput v1, v0, Lcom/android/systemui/ScreenDecorations;->mCoverRotation:I

    .line 284
    .line 285
    new-instance v1, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;

    .line 286
    .line 287
    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 288
    .line 289
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-direct {v1, v3}, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;-><init>(Landroid/content/res/Resources;)V

    .line 294
    .line 295
    .line 296
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mCoverRoundedCornerFactory:Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;

    .line 297
    .line 298
    iget-boolean v1, v1, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;->hasProviders:Z

    .line 299
    .line 300
    if-nez v1, :cond_5

    .line 301
    .line 302
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->isCoverPrivacyDotEnabled()Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-nez v1, :cond_5

    .line 307
    .line 308
    goto/16 :goto_7

    .line 309
    .line 310
    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->hasCoverOverlay()Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_6

    .line 315
    .line 316
    goto/16 :goto_6

    .line 317
    .line 318
    :cond_6
    new-instance v1, Lcom/android/systemui/decor/OverlayWindow;

    .line 319
    .line 320
    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mCoverWindowContext:Landroid/content/Context;

    .line 321
    .line 322
    invoke-direct {v1, v3}, Lcom/android/systemui/decor/OverlayWindow;-><init>(Landroid/content/Context;)V

    .line 323
    .line 324
    .line 325
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mCoverOverlay:Lcom/android/systemui/decor/OverlayWindow;

    .line 326
    .line 327
    new-instance v1, Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .line 331
    .line 332
    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mCoverRoundedCornerFactory:Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;

    .line 333
    .line 334
    if-nez v3, :cond_7

    .line 335
    .line 336
    move v4, v2

    .line 337
    goto :goto_3

    .line 338
    :cond_7
    iget-boolean v4, v3, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;->hasProviders:Z

    .line 339
    .line 340
    :goto_3
    if-eqz v4, :cond_8

    .line 341
    .line 342
    invoke-virtual {v3}, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;->getProviders()Ljava/util/List;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 347
    .line 348
    .line 349
    :cond_8
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->isCoverPrivacyDotEnabled()Z

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    if-eqz v3, :cond_9

    .line 354
    .line 355
    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mDotFactory:Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;

    .line 356
    .line 357
    invoke-virtual {v3}, Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;->getProviders()Ljava/util/List;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 362
    .line 363
    .line 364
    :cond_9
    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mCoverOverlay:Lcom/android/systemui/decor/OverlayWindow;

    .line 365
    .line 366
    invoke-virtual {v3, v1}, Lcom/android/systemui/decor/OverlayWindow;->hasSameProviders(Ljava/util/List;)Z

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    if-nez v3, :cond_a

    .line 371
    .line 372
    new-instance v3, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda8;

    .line 373
    .line 374
    invoke-direct {v3, v0}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 378
    .line 379
    .line 380
    :cond_a
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mCoverOverlay:Lcom/android/systemui/decor/OverlayWindow;

    .line 381
    .line 382
    iget-object v1, v1, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    .line 383
    .line 384
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 385
    .line 386
    .line 387
    const/16 v3, 0x100

    .line 388
    .line 389
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setForceDarkAllowed(Z)V

    .line 393
    .line 394
    .line 395
    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mCoverWindowContext:Landroid/content/Context;

    .line 396
    .line 397
    const-class v4, Landroid/view/WindowManager;

    .line 398
    .line 399
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    check-cast v3, Landroid/view/WindowManager;

    .line 404
    .line 405
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->getCoverWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-interface {v3, v1, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    new-instance v4, Lcom/android/systemui/ScreenDecorations$CoverValidatingPreDrawListener;

    .line 421
    .line 422
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-direct {v4, v0, v1}, Lcom/android/systemui/ScreenDecorations$CoverValidatingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->isCoverPrivacyDotEnabled()Z

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    if-eqz v1, :cond_12

    .line 437
    .line 438
    const v1, 0x7f0a0826

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0, v1}, Lcom/android/systemui/ScreenDecorations;->getCoverOverlayView(I)Landroid/view/View;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    if-eqz v1, :cond_12

    .line 446
    .line 447
    const v3, 0x7f0a0827

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, v3}, Lcom/android/systemui/ScreenDecorations;->getCoverOverlayView(I)Landroid/view/View;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    if-eqz v3, :cond_12

    .line 455
    .line 456
    const v4, 0x7f0a0824

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0, v4}, Lcom/android/systemui/ScreenDecorations;->getCoverOverlayView(I)Landroid/view/View;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    if-eqz v4, :cond_12

    .line 464
    .line 465
    const v6, 0x7f0a0825

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0, v6}, Lcom/android/systemui/ScreenDecorations;->getCoverOverlayView(I)Landroid/view/View;

    .line 469
    .line 470
    .line 471
    move-result-object v6

    .line 472
    if-eqz v6, :cond_12

    .line 473
    .line 474
    iget-object v7, v0, Lcom/android/systemui/ScreenDecorations;->mCoverDotViewController:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 475
    .line 476
    iget-object v8, v0, Lcom/android/systemui/ScreenDecorations;->mCoverWindowContext:Landroid/content/Context;

    .line 477
    .line 478
    iget-object v10, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->tl:Landroid/view/View;

    .line 479
    .line 480
    if-eqz v10, :cond_e

    .line 481
    .line 482
    iget-object v11, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->tr:Landroid/view/View;

    .line 483
    .line 484
    if-eqz v11, :cond_e

    .line 485
    .line 486
    iget-object v11, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->bl:Landroid/view/View;

    .line 487
    .line 488
    if-eqz v11, :cond_e

    .line 489
    .line 490
    iget-object v11, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->br:Landroid/view/View;

    .line 491
    .line 492
    if-eqz v11, :cond_e

    .line 493
    .line 494
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v10

    .line 498
    if-eqz v10, :cond_e

    .line 499
    .line 500
    iget-object v10, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->tr:Landroid/view/View;

    .line 501
    .line 502
    if-nez v10, :cond_b

    .line 503
    .line 504
    move-object v10, v5

    .line 505
    :cond_b
    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    move-result v10

    .line 509
    if-eqz v10, :cond_e

    .line 510
    .line 511
    iget-object v10, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->bl:Landroid/view/View;

    .line 512
    .line 513
    if-nez v10, :cond_c

    .line 514
    .line 515
    move-object v10, v5

    .line 516
    :cond_c
    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result v10

    .line 520
    if-eqz v10, :cond_e

    .line 521
    .line 522
    iget-object v10, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->br:Landroid/view/View;

    .line 523
    .line 524
    if-nez v10, :cond_d

    .line 525
    .line 526
    goto :goto_4

    .line 527
    :cond_d
    move-object v5, v10

    .line 528
    :goto_4
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v5

    .line 532
    if-eqz v5, :cond_e

    .line 533
    .line 534
    goto/16 :goto_6

    .line 535
    .line 536
    :cond_e
    iput-object v1, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->tl:Landroid/view/View;

    .line 537
    .line 538
    iput-object v3, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->tr:Landroid/view/View;

    .line 539
    .line 540
    iput-object v4, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->bl:Landroid/view/View;

    .line 541
    .line 542
    iput-object v6, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->br:Landroid/view/View;

    .line 543
    .line 544
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    const v3, 0x7f070269

    .line 549
    .line 550
    .line 551
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 552
    .line 553
    .line 554
    move-result v1

    .line 555
    iput v1, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->dotContainerWidth:I

    .line 556
    .line 557
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    const v3, 0x7f070268

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    iput v1, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->dotContainerHeight:I

    .line 569
    .line 570
    invoke-virtual {v8}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    if-eqz v1, :cond_f

    .line 575
    .line 576
    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    if-eqz v1, :cond_f

    .line 581
    .line 582
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    if-nez v1, :cond_10

    .line 587
    .line 588
    :cond_f
    new-instance v1, Landroid/graphics/Rect;

    .line 589
    .line 590
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 591
    .line 592
    .line 593
    :cond_10
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    iput v1, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->cutoutHeight:I

    .line 598
    .line 599
    iget-object v1, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 600
    .line 601
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 602
    .line 603
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->isLayoutRtl()Z

    .line 604
    .line 605
    .line 606
    move-result v14

    .line 607
    invoke-virtual {v7, v2, v14}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->selectDesignatedCorner(IZ)Landroid/view/View;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    if-eqz v1, :cond_11

    .line 612
    .line 613
    invoke-virtual {v7, v1}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->cornerForView(Landroid/view/View;)I

    .line 614
    .line 615
    .line 616
    move-result v3

    .line 617
    goto :goto_5

    .line 618
    :cond_11
    const/4 v3, -0x1

    .line 619
    :goto_5
    move/from16 v16, v3

    .line 620
    .line 621
    iget-object v3, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 622
    .line 623
    new-instance v4, Lcom/android/systemui/decor/CoverPrivacyDotViewController$initialize$5;

    .line 624
    .line 625
    invoke-direct {v4, v7, v8}, Lcom/android/systemui/decor/CoverPrivacyDotViewController$initialize$5;-><init>(Lcom/android/systemui/decor/CoverPrivacyDotViewController;Landroid/content/Context;)V

    .line 626
    .line 627
    .line 628
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v7, v2}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->updateRotations(I)V

    .line 632
    .line 633
    .line 634
    iget-object v3, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->nextViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 635
    .line 636
    invoke-virtual {v7, v3}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->setCornerSizes(Lcom/android/systemui/decor/CoverViewState;)V

    .line 637
    .line 638
    .line 639
    iget-object v3, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->lock:Ljava/lang/Object;

    .line 640
    .line 641
    monitor-enter v3

    .line 642
    :try_start_0
    iget-object v10, v7, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->nextViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 643
    .line 644
    const/4 v11, 0x1

    .line 645
    const/4 v12, 0x0

    .line 646
    const/4 v13, 0x0

    .line 647
    const/4 v15, 0x0

    .line 648
    const/16 v18, 0x0

    .line 649
    .line 650
    const/16 v19, 0x96

    .line 651
    .line 652
    move-object/from16 v17, v1

    .line 653
    .line 654
    invoke-static/range {v10 .. v19}, Lcom/android/systemui/decor/CoverViewState;->copy$default(Lcom/android/systemui/decor/CoverViewState;ZZZZIILandroid/view/View;Ljava/lang/String;I)Lcom/android/systemui/decor/CoverViewState;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    invoke-virtual {v7, v1}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->setNextViewState(Lcom/android/systemui/decor/CoverViewState;)V

    .line 659
    .line 660
    .line 661
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    .line 663
    monitor-exit v3

    .line 664
    goto :goto_6

    .line 665
    :catchall_0
    move-exception v0

    .line 666
    monitor-exit v3

    .line 667
    throw v0

    .line 668
    :cond_12
    :goto_6
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->hasCoverOverlay()Z

    .line 669
    .line 670
    .line 671
    move-result v1

    .line 672
    if-eqz v1, :cond_15

    .line 673
    .line 674
    iget-boolean v1, v0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    .line 675
    .line 676
    if-eqz v1, :cond_13

    .line 677
    .line 678
    goto :goto_7

    .line 679
    :cond_13
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 680
    .line 681
    new-instance v3, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;

    .line 682
    .line 683
    const/4 v4, 0x4

    .line 684
    invoke-direct {v3, v0, v4}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    .line 685
    .line 686
    .line 687
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 688
    .line 689
    .line 690
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SettingObserver;

    .line 691
    .line 692
    if-nez v1, :cond_14

    .line 693
    .line 694
    new-instance v1, Lcom/android/systemui/ScreenDecorations$7;

    .line 695
    .line 696
    iget-object v5, v0, Lcom/android/systemui/ScreenDecorations;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 697
    .line 698
    iget-object v6, v0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 699
    .line 700
    const-string v7, "accessibility_display_inversion_enabled"

    .line 701
    .line 702
    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 703
    .line 704
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 705
    .line 706
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 707
    .line 708
    .line 709
    move-result v8

    .line 710
    move-object v3, v1

    .line 711
    move-object v4, v0

    .line 712
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/ScreenDecorations$7;-><init>(Lcom/android/systemui/ScreenDecorations;Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 713
    .line 714
    .line 715
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SettingObserver;

    .line 716
    .line 717
    :cond_14
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SettingObserver;

    .line 718
    .line 719
    invoke-virtual {v1, v9}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 720
    .line 721
    .line 722
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SettingObserver;

    .line 723
    .line 724
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SettingObserver;->onChange(Z)V

    .line 725
    .line 726
    .line 727
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SettingObserver;

    .line 728
    .line 729
    invoke-virtual {v1}, Lcom/android/systemui/qs/SettingObserver;->getValue()I

    .line 730
    .line 731
    .line 732
    move-result v1

    .line 733
    invoke-virtual {v0, v1}, Lcom/android/systemui/ScreenDecorations;->updateColorInversion(I)V

    .line 734
    .line 735
    .line 736
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 737
    .line 738
    iget-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 739
    .line 740
    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 741
    .line 742
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 743
    .line 744
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 745
    .line 746
    .line 747
    iput-boolean v9, v0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    .line 748
    .line 749
    goto :goto_7

    .line 750
    :cond_15
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->hasOverlays()Z

    .line 751
    .line 752
    .line 753
    move-result v1

    .line 754
    if-nez v1, :cond_17

    .line 755
    .line 756
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 757
    .line 758
    new-instance v3, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;

    .line 759
    .line 760
    const/4 v4, 0x5

    .line 761
    invoke-direct {v3, v0, v4}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    .line 762
    .line 763
    .line 764
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 765
    .line 766
    .line 767
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/qs/SettingObserver;

    .line 768
    .line 769
    if-eqz v1, :cond_16

    .line 770
    .line 771
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 772
    .line 773
    .line 774
    :cond_16
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 775
    .line 776
    iget-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 777
    .line 778
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 779
    .line 780
    invoke-virtual {v1, v3}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 781
    .line 782
    .line 783
    iput-boolean v2, v0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    .line 784
    .line 785
    :cond_17
    :goto_7
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mCoverWindowContext:Landroid/content/Context;

    .line 786
    .line 787
    new-instance v2, Lcom/android/systemui/ScreenDecorations$5;

    .line 788
    .line 789
    invoke-direct {v2, v0}, Lcom/android/systemui/ScreenDecorations$5;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 793
    .line 794
    .line 795
    :cond_18
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    .line 796
    .line 797
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 798
    .line 799
    .line 800
    new-instance v2, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$addSystemAnimationCallback$1;

    .line 801
    .line 802
    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$addSystemAnimationCallback$1;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    .line 803
    .line 804
    .line 805
    iget-object v1, v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 806
    .line 807
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 808
    .line 809
    .line 810
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    .line 811
    .line 812
    iget-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mPrivacyDotCreateListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$CreateListener;

    .line 813
    .line 814
    iput-object v2, v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->createListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$CreateListener;

    .line 815
    .line 816
    sget-boolean v1, Lcom/android/systemui/ScreenDecorations;->DEBUG_PRIVACY_INDICATOR:Z

    .line 817
    .line 818
    if-eqz v1, :cond_19

    .line 819
    .line 820
    const-string v1, "ScreenDecorations"

    .line 821
    .line 822
    const-string v2, "addSystemAnimationCallback & setCreateListener"

    .line 823
    .line 824
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    .line 826
    .line 827
    :cond_19
    new-instance v1, Lcom/android/systemui/ScreenDecorations$6;

    .line 828
    .line 829
    invoke-direct {v1, v0}, Lcom/android/systemui/ScreenDecorations$6;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    .line 830
    .line 831
    .line 832
    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Lcom/android/systemui/settings/DisplayTracker$Callback;

    .line 833
    .line 834
    iget-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 835
    .line 836
    new-instance v3, Landroid/os/HandlerExecutor;

    .line 837
    .line 838
    iget-object v4, v0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 839
    .line 840
    invoke-direct {v3, v4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 841
    .line 842
    .line 843
    check-cast v2, Lcom/android/systemui/settings/DisplayTrackerImpl;

    .line 844
    .line 845
    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/settings/DisplayTrackerImpl;->addDisplayChangeCallback(Lcom/android/systemui/settings/DisplayTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->updateConfiguration()V

    .line 849
    .line 850
    .line 851
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->hasCoverOverlay()Z

    .line 852
    .line 853
    .line 854
    move-result v1

    .line 855
    if-eqz v1, :cond_1a

    .line 856
    .line 857
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 858
    .line 859
    iget-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mAODStateSettingsCallback:Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;

    .line 860
    .line 861
    const-string v3, "aod_show_state"

    .line 862
    .line 863
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 864
    .line 865
    .line 866
    move-result-object v3

    .line 867
    filled-new-array {v3}, [Landroid/net/Uri;

    .line 868
    .line 869
    .line 870
    move-result-object v3

    .line 871
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 872
    .line 873
    .line 874
    :cond_1a
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 875
    .line 876
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    .line 877
    .line 878
    if-eqz v1, :cond_1b

    .line 879
    .line 880
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->updateFillUDCDisplayCutout()V

    .line 881
    .line 882
    .line 883
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 884
    .line 885
    iget-object v0, v0, Lcom/android/systemui/ScreenDecorations;->mFillUDCSettingsCallback:Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda2;

    .line 886
    .line 887
    const-string v2, "fill_udc_display_cutout"

    .line 888
    .line 889
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 890
    .line 891
    .line 892
    move-result-object v2

    .line 893
    filled-new-array {v2}, [Landroid/net/Uri;

    .line 894
    .line 895
    .line 896
    move-result-object v2

    .line 897
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 898
    .line 899
    .line 900
    :cond_1b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 901
    .line 902
    .line 903
    return-void

    .line 904
    :pswitch_2
    iget-object v0, v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 905
    .line 906
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 907
    .line 908
    .line 909
    const-string v1, "ScreenDecorations#removeTunable"

    .line 910
    .line 911
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 915
    .line 916
    invoke-virtual {v1, v0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 917
    .line 918
    .line 919
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 920
    .line 921
    .line 922
    return-void

    .line 923
    :pswitch_3
    iget-object v0, v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 924
    .line 925
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 926
    .line 927
    .line 928
    const-string v1, "ScreenDecorations#addTunable"

    .line 929
    .line 930
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 931
    .line 932
    .line 933
    const-string/jumbo v1, "sysui_rounded_size"

    .line 934
    .line 935
    .line 936
    filled-new-array {v1}, [Ljava/lang/String;

    .line 937
    .line 938
    .line 939
    move-result-object v1

    .line 940
    iget-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 941
    .line 942
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 943
    .line 944
    .line 945
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 946
    .line 947
    .line 948
    return-void

    .line 949
    :pswitch_4
    iget-object v0, v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 950
    .line 951
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 952
    .line 953
    .line 954
    const-string v1, "ScreenDecorations#onConfigurationChanged"

    .line 955
    .line 956
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    iput-boolean v2, v0, Lcom/android/systemui/ScreenDecorations;->mPendingConfigChange:Z

    .line 960
    .line 961
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->updateConfiguration()V

    .line 962
    .line 963
    .line 964
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 965
    .line 966
    .line 967
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 968
    .line 969
    if-eqz v1, :cond_1c

    .line 970
    .line 971
    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    .line 972
    .line 973
    .line 974
    :cond_1c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 975
    .line 976
    .line 977
    return-void

    .line 978
    :goto_8
    iget-object v0, v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 979
    .line 980
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 981
    .line 982
    .line 983
    const-string v1, "ScreenDecorations#removeTunable"

    .line 984
    .line 985
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 986
    .line 987
    .line 988
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 989
    .line 990
    invoke-virtual {v1, v0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 991
    .line 992
    .line 993
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 994
    .line 995
    .line 996
    return-void

    .line 997
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
