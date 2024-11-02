.class public final synthetic Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

.field public final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda4;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda4;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda4;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda4;->f$2:Z

    .line 8
    .line 9
    move-object/from16 v3, p1

    .line 10
    .line 11
    check-cast v3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    const v10, 0x7f0a0d0c

    .line 20
    .line 21
    .line 22
    const/4 v11, 0x0

    .line 23
    const/16 v13, 0x14

    .line 24
    .line 25
    const v14, 0x7f0a0d0e

    .line 26
    .line 27
    .line 28
    const/high16 v15, 0x3f800000    # 1.0f

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    if-eqz v4, :cond_18

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const v8, 0x7f0d051c

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;

    .line 49
    .line 50
    iget-object v8, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 51
    .line 52
    iget-object v11, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 53
    .line 54
    iget-object v5, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 55
    .line 56
    iget-boolean v7, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    .line 57
    .line 58
    if-eqz v7, :cond_0

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    move v0, v6

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move v0, v9

    .line 65
    :goto_0
    iget-object v7, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mVibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

    .line 66
    .line 67
    iget-object v12, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 68
    .line 69
    iput-object v8, v12, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 70
    .line 71
    invoke-virtual {v12}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 72
    .line 73
    .line 74
    iput-object v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 75
    .line 76
    iput-object v11, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 77
    .line 78
    iput-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mVibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isHasVibrator()Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    iput v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isSliderEnabled()Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconEnabled()Z

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconClickable()Z

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    iput-boolean v12, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIconClickable:Z

    .line 103
    .line 104
    iput-boolean v0, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIsDualViewEnabled:Z

    .line 105
    .line 106
    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    check-cast v10, Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 111
    .line 112
    iput-object v10, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 113
    .line 114
    invoke-virtual {v10, v8, v2, v3}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    if-eqz v10, :cond_3

    .line 122
    .line 123
    iget v10, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    .line 124
    .line 125
    const/16 v12, 0xa

    .line 126
    .line 127
    if-ne v10, v12, :cond_1

    .line 128
    .line 129
    iget-object v10, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 130
    .line 131
    const/4 v12, 0x2

    .line 132
    invoke-virtual {v10, v12}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    iget-object v10, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 137
    .line 138
    new-instance v12, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda7;

    .line 139
    .line 140
    invoke-direct {v12, v4}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10, v12}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    iget-object v10, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 147
    .line 148
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->isEnabled()Z

    .line 149
    .line 150
    .line 151
    move-result v12

    .line 152
    if-eqz v12, :cond_2

    .line 153
    .line 154
    iget-boolean v12, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIconClickable:Z

    .line 155
    .line 156
    if-eqz v12, :cond_2

    .line 157
    .line 158
    move v12, v6

    .line 159
    goto :goto_1

    .line 160
    :cond_2
    move v12, v9

    .line 161
    :goto_1
    invoke-virtual {v10, v12}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 162
    .line 163
    .line 164
    :cond_3
    :goto_2
    if-nez v7, :cond_5

    .line 165
    .line 166
    iget-object v10, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 167
    .line 168
    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 169
    .line 170
    .line 171
    iget-object v10, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 172
    .line 173
    if-eqz v11, :cond_4

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_4
    const v15, 0x3ecccccd    # 0.4f

    .line 177
    .line 178
    .line 179
    :goto_3
    invoke-virtual {v10, v15}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_5
    iget-object v10, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 184
    .line 185
    invoke-virtual {v10, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 186
    .line 187
    .line 188
    iget-object v10, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 189
    .line 190
    invoke-virtual {v10, v15}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 191
    .line 192
    .line 193
    :goto_4
    invoke-virtual {v4, v14}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    check-cast v10, Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 198
    .line 199
    iput-object v10, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 200
    .line 201
    iget v11, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    .line 202
    .line 203
    iput v11, v10, Lcom/android/systemui/volume/view/VolumeSeekBar;->stream:I

    .line 204
    .line 205
    iput-boolean v9, v10, Lcom/android/systemui/volume/view/VolumeSeekBar;->isTracking:Z

    .line 206
    .line 207
    iget-object v10, v10, Lcom/android/systemui/volume/view/VolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 208
    .line 209
    iput-object v8, v10, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 210
    .line 211
    invoke-virtual {v10}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 212
    .line 213
    .line 214
    iget v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    .line 215
    .line 216
    if-ne v8, v13, :cond_6

    .line 217
    .line 218
    iget-object v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 219
    .line 220
    invoke-virtual {v8, v6}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    .line 221
    .line 222
    .line 223
    :cond_6
    iget-object v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 224
    .line 225
    invoke-static {v3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewMinLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    invoke-virtual {v8, v10}, Landroid/widget/SeekBar;->semSetMin(I)V

    .line 230
    .line 231
    .line 232
    iget-object v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 233
    .line 234
    invoke-static {v3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewMaxLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    invoke-virtual {v8, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 239
    .line 240
    .line 241
    iget-object v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 242
    .line 243
    invoke-static {v3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    .line 244
    .line 245
    .line 246
    move-result v10

    .line 247
    invoke-virtual {v8, v10}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 248
    .line 249
    .line 250
    iget-object v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 251
    .line 252
    invoke-virtual {v8, v7}, Lcom/android/systemui/volume/view/VolumeSeekBar;->setEnabled(Z)V

    .line 253
    .line 254
    .line 255
    const v7, 0x7f0a0d0b

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    check-cast v7, Landroid/widget/TextView;

    .line 263
    .line 264
    iput-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    .line 265
    .line 266
    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v8

    .line 270
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    iget-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    .line 274
    .line 275
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    const/16 v8, 0x16

    .line 283
    .line 284
    if-eq v7, v8, :cond_8

    .line 285
    .line 286
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    .line 287
    .line 288
    .line 289
    move-result v7

    .line 290
    if-eqz v7, :cond_7

    .line 291
    .line 292
    move v7, v9

    .line 293
    goto :goto_5

    .line 294
    :cond_7
    const/16 v7, 0x8

    .line 295
    .line 296
    :goto_5
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 297
    .line 298
    .line 299
    :cond_8
    const v7, 0x7f0a0af0

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    check-cast v7, Landroid/view/ViewGroup;

    .line 307
    .line 308
    if-eqz v0, :cond_9

    .line 309
    .line 310
    move v8, v9

    .line 311
    goto :goto_6

    .line 312
    :cond_9
    const/16 v8, 0x8

    .line 313
    .line 314
    :goto_6
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 315
    .line 316
    .line 317
    const v7, 0x7f0a0d12

    .line 318
    .line 319
    .line 320
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 321
    .line 322
    .line 323
    move-result-object v7

    .line 324
    check-cast v7, Landroid/view/ViewGroup;

    .line 325
    .line 326
    iget-boolean v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIsDualViewEnabled:Z

    .line 327
    .line 328
    const-class v10, Lcom/android/systemui/util/SettingsHelper;

    .line 329
    .line 330
    if-eqz v8, :cond_b

    .line 331
    .line 332
    const/4 v8, 0x0

    .line 333
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 334
    .line 335
    .line 336
    invoke-static {v10}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v7

    .line 340
    check-cast v7, Lcom/android/systemui/util/SettingsHelper;

    .line 341
    .line 342
    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 343
    .line 344
    .line 345
    move-result v7

    .line 346
    if-eqz v7, :cond_a

    .line 347
    .line 348
    iget-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 349
    .line 350
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 351
    .line 352
    .line 353
    move-result-object v8

    .line 354
    const v10, 0x7f08124e

    .line 355
    .line 356
    .line 357
    invoke-virtual {v8, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 358
    .line 359
    .line 360
    move-result-object v8

    .line 361
    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    .line 363
    .line 364
    goto :goto_7

    .line 365
    :cond_a
    iget-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 366
    .line 367
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 368
    .line 369
    .line 370
    move-result-object v8

    .line 371
    const v10, 0x7f081239

    .line 372
    .line 373
    .line 374
    invoke-virtual {v8, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 375
    .line 376
    .line 377
    move-result-object v8

    .line 378
    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    .line 380
    .line 381
    goto :goto_7

    .line 382
    :cond_b
    invoke-static {v10}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v8

    .line 386
    check-cast v8, Lcom/android/systemui/util/SettingsHelper;

    .line 387
    .line 388
    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 389
    .line 390
    .line 391
    move-result v8

    .line 392
    if-eqz v8, :cond_c

    .line 393
    .line 394
    iget-object v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 395
    .line 396
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 397
    .line 398
    .line 399
    move-result-object v10

    .line 400
    const v11, 0x7f08124f

    .line 401
    .line 402
    .line 403
    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 404
    .line 405
    .line 406
    move-result-object v10

    .line 407
    invoke-virtual {v8, v10}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 411
    .line 412
    .line 413
    move-result-object v8

    .line 414
    const v10, 0x7f08124d

    .line 415
    .line 416
    .line 417
    invoke-virtual {v8, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 418
    .line 419
    .line 420
    move-result-object v8

    .line 421
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 422
    .line 423
    .line 424
    goto :goto_7

    .line 425
    :cond_c
    iget-object v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 426
    .line 427
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 428
    .line 429
    .line 430
    move-result-object v10

    .line 431
    const v11, 0x7f081238

    .line 432
    .line 433
    .line 434
    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 435
    .line 436
    .line 437
    move-result-object v10

    .line 438
    invoke-virtual {v8, v10}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 442
    .line 443
    .line 444
    move-result-object v8

    .line 445
    const v10, 0x7f08124c

    .line 446
    .line 447
    .line 448
    invoke-virtual {v8, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 449
    .line 450
    .line 451
    move-result-object v8

    .line 452
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 453
    .line 454
    .line 455
    :goto_7
    const v7, 0x7f0a0d14

    .line 456
    .line 457
    .line 458
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 459
    .line 460
    .line 461
    move-result-object v8

    .line 462
    check-cast v8, Landroid/view/ViewGroup;

    .line 463
    .line 464
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 465
    .line 466
    .line 467
    move-result-object v10

    .line 468
    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 469
    .line 470
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 471
    .line 472
    .line 473
    move-result-object v11

    .line 474
    sget-object v12, Lcom/android/systemui/volume/view/subscreen/simple/CoverDisplayLayoutHelper;->INSTANCE:Lcom/android/systemui/volume/view/subscreen/simple/CoverDisplayLayoutHelper;

    .line 475
    .line 476
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 477
    .line 478
    .line 479
    move-result-object v12

    .line 480
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 481
    .line 482
    .line 483
    move-result-object v12

    .line 484
    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 485
    .line 486
    int-to-float v12, v12

    .line 487
    sget-object v13, Lcom/android/systemui/volume/view/subscreen/simple/CoverDisplayLayoutHelper;->INSTANCE:Lcom/android/systemui/volume/view/subscreen/simple/CoverDisplayLayoutHelper;

    .line 488
    .line 489
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 493
    .line 494
    .line 495
    move-result-object v13

    .line 496
    if-eqz v0, :cond_d

    .line 497
    .line 498
    const v14, 0x7f071597

    .line 499
    .line 500
    .line 501
    goto :goto_8

    .line 502
    :cond_d
    const v14, 0x7f0715a2

    .line 503
    .line 504
    .line 505
    :goto_8
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getFloat(I)F

    .line 506
    .line 507
    .line 508
    move-result v13

    .line 509
    sget-object v14, Lcom/android/systemui/volume/util/SettingHelper;->INSTANCE:Lcom/android/systemui/volume/util/SettingHelper;

    .line 510
    .line 511
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 515
    .line 516
    .line 517
    move-result-object v14

    .line 518
    const-string/jumbo v15, "show_navigation_for_subscreen"

    .line 519
    .line 520
    .line 521
    invoke-static {v14, v15, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 522
    .line 523
    .line 524
    move-result v14

    .line 525
    if-ne v14, v6, :cond_e

    .line 526
    .line 527
    move v14, v6

    .line 528
    goto :goto_9

    .line 529
    :cond_e
    move v14, v9

    .line 530
    :goto_9
    if-eqz v14, :cond_11

    .line 531
    .line 532
    sget-object v14, Lcom/android/systemui/volume/VolumeDependency;->Companion:Lcom/android/systemui/volume/VolumeDependency$Companion;

    .line 533
    .line 534
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 535
    .line 536
    .line 537
    sget-object v14, Lcom/android/systemui/volume/VolumeDependency;->sInstance:Lcom/android/systemui/volume/VolumeDependency;

    .line 538
    .line 539
    if-eqz v14, :cond_f

    .line 540
    .line 541
    goto :goto_a

    .line 542
    :cond_f
    const/4 v14, 0x0

    .line 543
    :goto_a
    const-class v15, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 544
    .line 545
    invoke-virtual {v14, v15}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v14

    .line 549
    check-cast v14, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 550
    .line 551
    invoke-virtual {v14}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getFrontSubDisplay()Landroid/view/Display;

    .line 552
    .line 553
    .line 554
    move-result-object v14

    .line 555
    if-eqz v14, :cond_11

    .line 556
    .line 557
    new-instance v15, Landroid/graphics/Point;

    .line 558
    .line 559
    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v14, v15}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 563
    .line 564
    .line 565
    iget v6, v15, Landroid/graphics/Point;->x:I

    .line 566
    .line 567
    iget v15, v15, Landroid/graphics/Point;->y:I

    .line 568
    .line 569
    if-ge v6, v15, :cond_11

    .line 570
    .line 571
    invoke-virtual {v14}, Landroid/view/Display;->getRotation()I

    .line 572
    .line 573
    .line 574
    move-result v6

    .line 575
    if-eqz v6, :cond_11

    .line 576
    .line 577
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 578
    .line 579
    .line 580
    move-result-object v6

    .line 581
    if-eqz v0, :cond_10

    .line 582
    .line 583
    const v11, 0x7f071598

    .line 584
    .line 585
    .line 586
    goto :goto_b

    .line 587
    :cond_10
    const v11, 0x7f0715a3

    .line 588
    .line 589
    .line 590
    :goto_b
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getFloat(I)F

    .line 591
    .line 592
    .line 593
    move-result v13

    .line 594
    :cond_11
    mul-float/2addr v12, v13

    .line 595
    invoke-static {v12}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 596
    .line 597
    .line 598
    move-result v6

    .line 599
    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 600
    .line 601
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 602
    .line 603
    .line 604
    move-result-object v6

    .line 605
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 606
    .line 607
    .line 608
    move-result-object v11

    .line 609
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 610
    .line 611
    .line 612
    move-result-object v11

    .line 613
    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 614
    .line 615
    int-to-float v11, v11

    .line 616
    if-eqz v0, :cond_12

    .line 617
    .line 618
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 619
    .line 620
    .line 621
    move-result-object v6

    .line 622
    const v12, 0x7f071596

    .line 623
    .line 624
    .line 625
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getFloat(I)F

    .line 626
    .line 627
    .line 628
    move-result v6

    .line 629
    goto :goto_c

    .line 630
    :cond_12
    const/4 v6, 0x0

    .line 631
    :goto_c
    mul-float/2addr v11, v6

    .line 632
    invoke-static {v11}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 633
    .line 634
    .line 635
    move-result v6

    .line 636
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 646
    .line 647
    .line 648
    iget-object v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 649
    .line 650
    iget-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    .line 651
    .line 652
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 653
    .line 654
    .line 655
    move-result-object v6

    .line 656
    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 660
    .line 661
    .line 662
    move-result-object v5

    .line 663
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 664
    .line 665
    .line 666
    move-result-object v5

    .line 667
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 668
    .line 669
    .line 670
    move-result-object v5

    .line 671
    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 672
    .line 673
    .line 674
    move-result v5

    .line 675
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 679
    .line 680
    .line 681
    move-result v5

    .line 682
    const/16 v6, 0x16

    .line 683
    .line 684
    if-ne v5, v6, :cond_13

    .line 685
    .line 686
    const/16 v5, 0x8

    .line 687
    .line 688
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 689
    .line 690
    .line 691
    :cond_13
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 692
    .line 693
    .line 694
    move-result-object v5

    .line 695
    check-cast v5, Landroid/view/ViewGroup;

    .line 696
    .line 697
    iget-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 698
    .line 699
    if-eqz v0, :cond_14

    .line 700
    .line 701
    move-object v7, v5

    .line 702
    goto :goto_d

    .line 703
    :cond_14
    move-object v7, v4

    .line 704
    :goto_d
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 705
    .line 706
    .line 707
    invoke-static {v7}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarTouchDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 708
    .line 709
    .line 710
    move-result-object v6

    .line 711
    iput-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mTouchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 712
    .line 713
    iget-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 714
    .line 715
    if-eqz v0, :cond_15

    .line 716
    .line 717
    goto :goto_e

    .line 718
    :cond_15
    move-object v5, v4

    .line 719
    :goto_e
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 720
    .line 721
    .line 722
    invoke-static {v5}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarTouchUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    iput-object v0, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mTouchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 727
    .line 728
    iget-object v0, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 729
    .line 730
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 731
    .line 732
    .line 733
    invoke-static {v4}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarKeyDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    iput-object v0, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mKeyDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 738
    .line 739
    iget-object v0, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 740
    .line 741
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 742
    .line 743
    .line 744
    invoke-static {v4}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarKeyUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    iput-object v0, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mKeyUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 749
    .line 750
    iget-object v0, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mRowContainer:Landroid/view/ViewGroup;

    .line 751
    .line 752
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 756
    .line 757
    .line 758
    move-result v0

    .line 759
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    .line 760
    .line 761
    .line 762
    move-result v2

    .line 763
    if-ne v0, v2, :cond_16

    .line 764
    .line 765
    const/4 v6, 0x1

    .line 766
    goto :goto_f

    .line 767
    :cond_16
    move v6, v9

    .line 768
    :goto_f
    if-eqz v6, :cond_17

    .line 769
    .line 770
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 771
    .line 772
    .line 773
    move-result v0

    .line 774
    iput v0, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mActiveStream:I

    .line 775
    .line 776
    :cond_17
    iget-boolean v0, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    .line 777
    .line 778
    if-nez v0, :cond_23

    .line 779
    .line 780
    const v0, 0x7f0a0d15

    .line 781
    .line 782
    .line 783
    invoke-virtual {v1, v0}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 788
    .line 789
    .line 790
    goto/16 :goto_15

    .line 791
    .line 792
    :cond_18
    invoke-virtual {v1}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    .line 793
    .line 794
    .line 795
    move-result-object v4

    .line 796
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 797
    .line 798
    .line 799
    move-result-object v4

    .line 800
    const v5, 0x7f0d0516

    .line 801
    .line 802
    .line 803
    const/4 v6, 0x0

    .line 804
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 805
    .line 806
    .line 807
    move-result-object v4

    .line 808
    check-cast v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    .line 809
    .line 810
    iget-object v5, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 811
    .line 812
    iget-object v6, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 813
    .line 814
    iget-boolean v7, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    .line 815
    .line 816
    if-eqz v7, :cond_19

    .line 817
    .line 818
    if-eqz v0, :cond_19

    .line 819
    .line 820
    const/4 v0, 0x1

    .line 821
    goto :goto_10

    .line 822
    :cond_19
    move v0, v9

    .line 823
    :goto_10
    iget-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 824
    .line 825
    iput-object v5, v7, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 826
    .line 827
    invoke-virtual {v7}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 828
    .line 829
    .line 830
    iput-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 831
    .line 832
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isHasVibrator()Z

    .line 833
    .line 834
    .line 835
    move-result v6

    .line 836
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 837
    .line 838
    .line 839
    move-result v7

    .line 840
    iput v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    .line 841
    .line 842
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    .line 843
    .line 844
    .line 845
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevelMin()I

    .line 846
    .line 847
    .line 848
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevelMax()I

    .line 849
    .line 850
    .line 851
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isSliderEnabled()Z

    .line 852
    .line 853
    .line 854
    move-result v7

    .line 855
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconEnabled()Z

    .line 856
    .line 857
    .line 858
    move-result v8

    .line 859
    if-eqz v0, :cond_1a

    .line 860
    .line 861
    const v5, 0x7f0a0d0d

    .line 862
    .line 863
    .line 864
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 865
    .line 866
    .line 867
    move-result-object v5

    .line 868
    check-cast v5, Landroid/widget/ImageButton;

    .line 869
    .line 870
    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 871
    .line 872
    .line 873
    goto :goto_12

    .line 874
    :cond_1a
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 875
    .line 876
    .line 877
    move-result-object v11

    .line 878
    check-cast v11, Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 879
    .line 880
    iput-object v11, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 881
    .line 882
    invoke-virtual {v11, v5, v2, v3}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 883
    .line 884
    .line 885
    iget-object v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 886
    .line 887
    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 888
    .line 889
    .line 890
    if-nez v7, :cond_1c

    .line 891
    .line 892
    iget-object v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 893
    .line 894
    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 895
    .line 896
    .line 897
    iget-object v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 898
    .line 899
    if-eqz v8, :cond_1b

    .line 900
    .line 901
    goto :goto_11

    .line 902
    :cond_1b
    const v15, 0x3ecccccd    # 0.4f

    .line 903
    .line 904
    .line 905
    :goto_11
    invoke-virtual {v5, v15}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 906
    .line 907
    .line 908
    goto :goto_12

    .line 909
    :cond_1c
    iget-object v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 910
    .line 911
    const/4 v8, 0x1

    .line 912
    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 913
    .line 914
    .line 915
    iget-object v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 916
    .line 917
    invoke-virtual {v5, v15}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 918
    .line 919
    .line 920
    :goto_12
    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 921
    .line 922
    .line 923
    move-result-object v5

    .line 924
    check-cast v5, Landroid/widget/SeekBar;

    .line 925
    .line 926
    iput-object v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 927
    .line 928
    iget-object v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 929
    .line 930
    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 931
    .line 932
    .line 933
    iget-object v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 934
    .line 935
    iget-object v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIconActiveBgColor:Landroid/content/res/ColorStateList;

    .line 936
    .line 937
    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 938
    .line 939
    .line 940
    iget-object v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 941
    .line 942
    iget-object v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 943
    .line 944
    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 945
    .line 946
    .line 947
    iget-object v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 948
    .line 949
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 950
    .line 951
    .line 952
    move-result-object v8

    .line 953
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 954
    .line 955
    .line 956
    move-result-object v8

    .line 957
    const v11, 0x7f060817

    .line 958
    .line 959
    .line 960
    const/4 v12, 0x0

    .line 961
    invoke-virtual {v8, v11, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 962
    .line 963
    .line 964
    move-result v8

    .line 965
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 966
    .line 967
    .line 968
    move-result-object v11

    .line 969
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 970
    .line 971
    .line 972
    move-result-object v11

    .line 973
    const v14, 0x7f060818

    .line 974
    .line 975
    .line 976
    invoke-virtual {v11, v14, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 977
    .line 978
    .line 979
    move-result v11

    .line 980
    invoke-virtual {v5, v8, v11}, Landroid/widget/SeekBar;->setDualModeOverlapColor(II)V

    .line 981
    .line 982
    .line 983
    iget v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    .line 984
    .line 985
    if-ne v5, v13, :cond_1d

    .line 986
    .line 987
    iget-object v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 988
    .line 989
    const/4 v8, 0x1

    .line 990
    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    .line 991
    .line 992
    .line 993
    :cond_1d
    iget-object v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 994
    .line 995
    new-instance v8, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;

    .line 996
    .line 997
    invoke-direct {v8, v4, v9}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;I)V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1001
    .line 1002
    .line 1003
    iget-object v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 1004
    .line 1005
    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1006
    .line 1007
    .line 1008
    iget-object v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 1009
    .line 1010
    invoke-static {v3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewMinLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    .line 1011
    .line 1012
    .line 1013
    move-result v7

    .line 1014
    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->semSetMin(I)V

    .line 1015
    .line 1016
    .line 1017
    iget-object v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 1018
    .line 1019
    invoke-static {v3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewMaxLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    .line 1020
    .line 1021
    .line 1022
    move-result v7

    .line 1023
    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1024
    .line 1025
    .line 1026
    iget-object v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 1027
    .line 1028
    invoke-static {v3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    .line 1029
    .line 1030
    .line 1031
    move-result v7

    .line 1032
    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getEarProtectLevel()I

    .line 1036
    .line 1037
    .line 1038
    move-result v5

    .line 1039
    iget v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mEarProtectLevel:I

    .line 1040
    .line 1041
    if-eq v5, v7, :cond_1e

    .line 1042
    .line 1043
    iput v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mEarProtectLevel:I

    .line 1044
    .line 1045
    iget-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 1046
    .line 1047
    invoke-virtual {v7, v5}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    .line 1048
    .line 1049
    .line 1050
    :cond_1e
    const v5, 0x7f0a0d0b

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v5

    .line 1057
    check-cast v5, Landroid/widget/TextView;

    .line 1058
    .line 1059
    iput-object v5, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    .line 1060
    .line 1061
    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v2

    .line 1065
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    .line 1067
    .line 1068
    iget-object v2, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    .line 1069
    .line 1070
    const/4 v5, 0x1

    .line 1071
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 1075
    .line 1076
    .line 1077
    move-result v2

    .line 1078
    const/16 v5, 0x16

    .line 1079
    .line 1080
    if-eq v2, v5, :cond_20

    .line 1081
    .line 1082
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    .line 1083
    .line 1084
    .line 1085
    move-result v2

    .line 1086
    if-eqz v2, :cond_1f

    .line 1087
    .line 1088
    move v2, v9

    .line 1089
    goto :goto_13

    .line 1090
    :cond_1f
    const/16 v2, 0x8

    .line 1091
    .line 1092
    :goto_13
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1093
    .line 1094
    .line 1095
    :cond_20
    const v2, 0x7f0a0af0

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v2

    .line 1102
    check-cast v2, Landroid/view/ViewGroup;

    .line 1103
    .line 1104
    if-eqz v0, :cond_21

    .line 1105
    .line 1106
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v0

    .line 1110
    check-cast v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 1111
    .line 1112
    const/16 v5, 0x8

    .line 1113
    .line 1114
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1118
    .line 1119
    .line 1120
    goto :goto_14

    .line 1121
    :cond_21
    const/16 v5, 0x8

    .line 1122
    .line 1123
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1124
    .line 1125
    .line 1126
    :goto_14
    invoke-virtual {v4, v3, v6}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 1127
    .line 1128
    .line 1129
    iget-object v0, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 1130
    .line 1131
    iget-object v2, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    .line 1132
    .line 1133
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v2

    .line 1137
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v0

    .line 1144
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v0

    .line 1148
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v0

    .line 1152
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 1153
    .line 1154
    .line 1155
    move-result v0

    .line 1156
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 1160
    .line 1161
    .line 1162
    move-result v0

    .line 1163
    const/16 v2, 0x16

    .line 1164
    .line 1165
    if-ne v0, v2, :cond_22

    .line 1166
    .line 1167
    const/16 v0, 0x8

    .line 1168
    .line 1169
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1170
    .line 1171
    .line 1172
    :cond_22
    iget-object v0, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mRowContainer:Landroid/view/ViewGroup;

    .line 1173
    .line 1174
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1175
    .line 1176
    .line 1177
    :cond_23
    :goto_15
    return-void
.end method
