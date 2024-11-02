.class public final Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter;
.super Lcom/android/systemui/qs/FullScreenDetailAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;

.field public viewModelProvider:Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/qs/FullScreenDetailAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string p0, "SoundCraft.QpDetailAdapter"

    .line 5
    .line 6
    const-string p1, "init"

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final bindViewModel(Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;)V
    .locals 25

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "SoundCraft.QpDetailAdapter"

    .line 4
    .line 5
    const-string v2, "bindViewModel"

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;

    .line 11
    .line 12
    iput-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter;->getViewModelProvider()Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-class v4, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 19
    .line 20
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    const-class v7, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 33
    .line 34
    const-class v8, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 35
    .line 36
    const-class v9, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 37
    .line 38
    const-class v10, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 39
    .line 40
    const-class v11, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 41
    .line 42
    const-class v12, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 43
    .line 44
    const-class v13, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 45
    .line 46
    const-class v14, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 47
    .line 48
    const-class v15, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 49
    .line 50
    const-class v16, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 51
    .line 52
    const-class v17, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 53
    .line 54
    const-class v18, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 55
    .line 56
    const-class v19, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 57
    .line 58
    const-class v20, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 59
    .line 60
    const-class v21, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 61
    .line 62
    const-class v22, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 63
    .line 64
    const-class v23, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 65
    .line 66
    move-object/from16 v24, v2

    .line 67
    .line 68
    const-string v2, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel"

    .line 69
    .line 70
    if-eqz v6, :cond_1

    .line 71
    .line 72
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->craftViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 73
    .line 74
    if-eqz v3, :cond_0

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 79
    .line 80
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_1
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_3

    .line 93
    .line 94
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->actionBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 95
    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 103
    .line 104
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v0

    .line 108
    :cond_3
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_5

    .line 117
    .line 118
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 119
    .line 120
    if-eqz v3, :cond_4

    .line 121
    .line 122
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 127
    .line 128
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw v0

    .line 132
    :cond_5
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-eqz v6, :cond_7

    .line 141
    .line 142
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 143
    .line 144
    if-eqz v3, :cond_6

    .line 145
    .line 146
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 151
    .line 152
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v0

    .line 156
    :cond_7
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_9

    .line 165
    .line 166
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectHeaderViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 167
    .line 168
    if-eqz v3, :cond_8

    .line 169
    .line 170
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 175
    .line 176
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v0

    .line 180
    :cond_9
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-eqz v6, :cond_b

    .line 189
    .line 190
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->wearableLinkBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 191
    .line 192
    if-eqz v3, :cond_a

    .line 193
    .line 194
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 199
    .line 200
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v0

    .line 204
    :cond_b
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    if-eqz v6, :cond_d

    .line 213
    .line 214
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->spatialAudioViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 215
    .line 216
    if-eqz v3, :cond_c

    .line 217
    .line 218
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 223
    .line 224
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v0

    .line 228
    :cond_d
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    if-eqz v6, :cond_f

    .line 237
    .line 238
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->equalizerViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 239
    .line 240
    if-eqz v3, :cond_e

    .line 241
    .line 242
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 247
    .line 248
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v0

    .line 252
    :cond_f
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    if-eqz v6, :cond_11

    .line 261
    .line 262
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->voiceBoostViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 263
    .line 264
    if-eqz v3, :cond_10

    .line 265
    .line 266
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 267
    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    .line 271
    .line 272
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw v0

    .line 276
    :cond_11
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    if-eqz v6, :cond_13

    .line 285
    .line 286
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->volumeNormalizationViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 287
    .line 288
    if-eqz v3, :cond_12

    .line 289
    .line 290
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    .line 295
    .line 296
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw v0

    .line 300
    :cond_13
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v6

    .line 308
    if-eqz v6, :cond_15

    .line 309
    .line 310
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->activeNoiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 311
    .line 312
    if-eqz v3, :cond_14

    .line 313
    .line 314
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    .line 319
    .line 320
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw v0

    .line 324
    :cond_15
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v6

    .line 332
    if-eqz v6, :cond_17

    .line 333
    .line 334
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->adaptiveViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 335
    .line 336
    if-eqz v3, :cond_16

    .line 337
    .line 338
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 339
    .line 340
    goto/16 :goto_0

    .line 341
    .line 342
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    .line 343
    .line 344
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw v0

    .line 348
    :cond_17
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v6

    .line 356
    if-eqz v6, :cond_19

    .line 357
    .line 358
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->ambientSoundViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 359
    .line 360
    if-eqz v3, :cond_18

    .line 361
    .line 362
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 363
    .line 364
    goto/16 :goto_0

    .line 365
    .line 366
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    .line 367
    .line 368
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    throw v0

    .line 372
    :cond_19
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 373
    .line 374
    .line 375
    move-result-object v6

    .line 376
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v6

    .line 380
    if-eqz v6, :cond_1b

    .line 381
    .line 382
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 383
    .line 384
    if-eqz v3, :cond_1a

    .line 385
    .line 386
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 387
    .line 388
    goto :goto_0

    .line 389
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 390
    .line 391
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    throw v0

    .line 395
    :cond_1b
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 396
    .line 397
    .line 398
    move-result-object v6

    .line 399
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v6

    .line 403
    if-eqz v6, :cond_1d

    .line 404
    .line 405
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 406
    .line 407
    if-eqz v3, :cond_1c

    .line 408
    .line 409
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 410
    .line 411
    goto :goto_0

    .line 412
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 413
    .line 414
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    throw v0

    .line 418
    :cond_1d
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 419
    .line 420
    .line 421
    move-result-object v6

    .line 422
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v6

    .line 426
    if-eqz v6, :cond_1f

    .line 427
    .line 428
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlOffViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 429
    .line 430
    if-eqz v3, :cond_1e

    .line 431
    .line 432
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 433
    .line 434
    goto :goto_0

    .line 435
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 436
    .line 437
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    throw v0

    .line 441
    :cond_1f
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 442
    .line 443
    .line 444
    move-result-object v6

    .line 445
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v6

    .line 449
    if-eqz v6, :cond_21

    .line 450
    .line 451
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingSwitchBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 452
    .line 453
    if-eqz v3, :cond_20

    .line 454
    .line 455
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 456
    .line 457
    goto :goto_0

    .line 458
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    .line 459
    .line 460
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw v0

    .line 464
    :cond_21
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 465
    .line 466
    .line 467
    move-result-object v6

    .line 468
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v5

    .line 472
    if-eqz v5, :cond_e2

    .line 473
    .line 474
    iget-object v3, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->routineTestViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 475
    .line 476
    if-eqz v3, :cond_e1

    .line 477
    .line 478
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 479
    .line 480
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    const-string v5, "bindViewModel : viewModel="

    .line 483
    .line 484
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    const-string v5, "SoundCraft.DetailPageView"

    .line 495
    .line 496
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .line 498
    .line 499
    iget-object v2, v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->showNoiseControlBox:Landroidx/lifecycle/MutableLiveData;

    .line 500
    .line 501
    new-instance v5, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$1;

    .line 502
    .line 503
    invoke-direct {v5, v1}, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v2, v1, v5}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 507
    .line 508
    .line 509
    iget-object v2, v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->showAudioEffectBox:Landroidx/lifecycle/MutableLiveData;

    .line 510
    .line 511
    new-instance v5, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$2;

    .line 512
    .line 513
    invoke-direct {v5, v1}, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$2;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v2, v1, v5}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 517
    .line 518
    .line 519
    iget-object v2, v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->showDownloadGuideView:Landroidx/lifecycle/MutableLiveData;

    .line 520
    .line 521
    sget-object v5, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$3;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$3;

    .line 522
    .line 523
    invoke-virtual {v2, v1, v5}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 524
    .line 525
    .line 526
    iget-object v2, v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->showLoadingView:Landroidx/lifecycle/MutableLiveData;

    .line 527
    .line 528
    sget-object v5, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$4;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$4;

    .line 529
    .line 530
    invoke-virtual {v2, v1, v5}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v3}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->notifyChange()V

    .line 534
    .line 535
    .line 536
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;->actionBar:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftActionBarBinding;

    .line 537
    .line 538
    iget-object v2, v1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftActionBarBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView;

    .line 539
    .line 540
    iput-object v1, v2, Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftActionBarBinding;

    .line 541
    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter;->getViewModelProvider()Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 551
    .line 552
    .line 553
    move-result-object v5

    .line 554
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    move-result v5

    .line 558
    const-string v6, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.actionbar.SoundCraftActionBarViewModel"

    .line 559
    .line 560
    if-eqz v5, :cond_23

    .line 561
    .line 562
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->craftViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 563
    .line 564
    if-eqz v1, :cond_22

    .line 565
    .line 566
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 567
    .line 568
    goto/16 :goto_1

    .line 569
    .line 570
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    .line 571
    .line 572
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    throw v0

    .line 576
    :cond_23
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 577
    .line 578
    .line 579
    move-result-object v5

    .line 580
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    move-result v5

    .line 584
    if-eqz v5, :cond_25

    .line 585
    .line 586
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->actionBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 587
    .line 588
    if-eqz v1, :cond_24

    .line 589
    .line 590
    goto/16 :goto_1

    .line 591
    .line 592
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    .line 593
    .line 594
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    throw v0

    .line 598
    :cond_25
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 599
    .line 600
    .line 601
    move-result-object v5

    .line 602
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v5

    .line 606
    if-eqz v5, :cond_27

    .line 607
    .line 608
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 609
    .line 610
    if-eqz v1, :cond_26

    .line 611
    .line 612
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 613
    .line 614
    goto/16 :goto_1

    .line 615
    .line 616
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    .line 617
    .line 618
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    throw v0

    .line 622
    :cond_27
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 623
    .line 624
    .line 625
    move-result-object v5

    .line 626
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    move-result v5

    .line 630
    if-eqz v5, :cond_29

    .line 631
    .line 632
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 633
    .line 634
    if-eqz v1, :cond_28

    .line 635
    .line 636
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 637
    .line 638
    goto/16 :goto_1

    .line 639
    .line 640
    :cond_28
    new-instance v0, Ljava/lang/NullPointerException;

    .line 641
    .line 642
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    throw v0

    .line 646
    :cond_29
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 647
    .line 648
    .line 649
    move-result-object v5

    .line 650
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    move-result v5

    .line 654
    if-eqz v5, :cond_2b

    .line 655
    .line 656
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectHeaderViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 657
    .line 658
    if-eqz v1, :cond_2a

    .line 659
    .line 660
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 661
    .line 662
    goto/16 :goto_1

    .line 663
    .line 664
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 665
    .line 666
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    throw v0

    .line 670
    :cond_2b
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 671
    .line 672
    .line 673
    move-result-object v5

    .line 674
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result v5

    .line 678
    if-eqz v5, :cond_2d

    .line 679
    .line 680
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->wearableLinkBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 681
    .line 682
    if-eqz v1, :cond_2c

    .line 683
    .line 684
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 685
    .line 686
    goto/16 :goto_1

    .line 687
    .line 688
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 689
    .line 690
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    throw v0

    .line 694
    :cond_2d
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 695
    .line 696
    .line 697
    move-result-object v5

    .line 698
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 699
    .line 700
    .line 701
    move-result v5

    .line 702
    if-eqz v5, :cond_2f

    .line 703
    .line 704
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->spatialAudioViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 705
    .line 706
    if-eqz v1, :cond_2e

    .line 707
    .line 708
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 709
    .line 710
    goto/16 :goto_1

    .line 711
    .line 712
    :cond_2e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 713
    .line 714
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    throw v0

    .line 718
    :cond_2f
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 719
    .line 720
    .line 721
    move-result-object v5

    .line 722
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 723
    .line 724
    .line 725
    move-result v5

    .line 726
    if-eqz v5, :cond_31

    .line 727
    .line 728
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->equalizerViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 729
    .line 730
    if-eqz v1, :cond_30

    .line 731
    .line 732
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 733
    .line 734
    goto/16 :goto_1

    .line 735
    .line 736
    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    .line 737
    .line 738
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    throw v0

    .line 742
    :cond_31
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 743
    .line 744
    .line 745
    move-result-object v5

    .line 746
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    move-result v5

    .line 750
    if-eqz v5, :cond_33

    .line 751
    .line 752
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->voiceBoostViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 753
    .line 754
    if-eqz v1, :cond_32

    .line 755
    .line 756
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 757
    .line 758
    goto/16 :goto_1

    .line 759
    .line 760
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    .line 761
    .line 762
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    throw v0

    .line 766
    :cond_33
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 767
    .line 768
    .line 769
    move-result-object v5

    .line 770
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    move-result v5

    .line 774
    if-eqz v5, :cond_35

    .line 775
    .line 776
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->volumeNormalizationViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 777
    .line 778
    if-eqz v1, :cond_34

    .line 779
    .line 780
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 781
    .line 782
    goto/16 :goto_1

    .line 783
    .line 784
    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    .line 785
    .line 786
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    throw v0

    .line 790
    :cond_35
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 791
    .line 792
    .line 793
    move-result-object v5

    .line 794
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 795
    .line 796
    .line 797
    move-result v5

    .line 798
    if-eqz v5, :cond_37

    .line 799
    .line 800
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->activeNoiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 801
    .line 802
    if-eqz v1, :cond_36

    .line 803
    .line 804
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 805
    .line 806
    goto/16 :goto_1

    .line 807
    .line 808
    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    .line 809
    .line 810
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    throw v0

    .line 814
    :cond_37
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 815
    .line 816
    .line 817
    move-result-object v5

    .line 818
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 819
    .line 820
    .line 821
    move-result v5

    .line 822
    if-eqz v5, :cond_39

    .line 823
    .line 824
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->adaptiveViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 825
    .line 826
    if-eqz v1, :cond_38

    .line 827
    .line 828
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 829
    .line 830
    goto/16 :goto_1

    .line 831
    .line 832
    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    .line 833
    .line 834
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    throw v0

    .line 838
    :cond_39
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 839
    .line 840
    .line 841
    move-result-object v5

    .line 842
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 843
    .line 844
    .line 845
    move-result v5

    .line 846
    if-eqz v5, :cond_3b

    .line 847
    .line 848
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->ambientSoundViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 849
    .line 850
    if-eqz v1, :cond_3a

    .line 851
    .line 852
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 853
    .line 854
    goto/16 :goto_1

    .line 855
    .line 856
    :cond_3a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 857
    .line 858
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    throw v0

    .line 862
    :cond_3b
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 863
    .line 864
    .line 865
    move-result-object v5

    .line 866
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 867
    .line 868
    .line 869
    move-result v5

    .line 870
    if-eqz v5, :cond_3d

    .line 871
    .line 872
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 873
    .line 874
    if-eqz v1, :cond_3c

    .line 875
    .line 876
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 877
    .line 878
    goto :goto_1

    .line 879
    :cond_3c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 880
    .line 881
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    throw v0

    .line 885
    :cond_3d
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 886
    .line 887
    .line 888
    move-result-object v5

    .line 889
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 890
    .line 891
    .line 892
    move-result v5

    .line 893
    if-eqz v5, :cond_3f

    .line 894
    .line 895
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 896
    .line 897
    if-eqz v1, :cond_3e

    .line 898
    .line 899
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 900
    .line 901
    goto :goto_1

    .line 902
    :cond_3e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 903
    .line 904
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    throw v0

    .line 908
    :cond_3f
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 909
    .line 910
    .line 911
    move-result-object v5

    .line 912
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 913
    .line 914
    .line 915
    move-result v5

    .line 916
    if-eqz v5, :cond_41

    .line 917
    .line 918
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlOffViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 919
    .line 920
    if-eqz v1, :cond_40

    .line 921
    .line 922
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 923
    .line 924
    goto :goto_1

    .line 925
    :cond_40
    new-instance v0, Ljava/lang/NullPointerException;

    .line 926
    .line 927
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    throw v0

    .line 931
    :cond_41
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 932
    .line 933
    .line 934
    move-result-object v5

    .line 935
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 936
    .line 937
    .line 938
    move-result v5

    .line 939
    if-eqz v5, :cond_43

    .line 940
    .line 941
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingSwitchBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 942
    .line 943
    if-eqz v1, :cond_42

    .line 944
    .line 945
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 946
    .line 947
    goto :goto_1

    .line 948
    :cond_42
    new-instance v0, Ljava/lang/NullPointerException;

    .line 949
    .line 950
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    throw v0

    .line 954
    :cond_43
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 955
    .line 956
    .line 957
    move-result-object v5

    .line 958
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 959
    .line 960
    .line 961
    move-result v3

    .line 962
    if-eqz v3, :cond_e0

    .line 963
    .line 964
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->routineTestViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 965
    .line 966
    if-eqz v1, :cond_df

    .line 967
    .line 968
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 969
    .line 970
    :goto_1
    iput-object v1, v2, Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView;->viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 971
    .line 972
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;->title$delegate:Lkotlin/Lazy;

    .line 973
    .line 974
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v1

    .line 978
    check-cast v1, Landroidx/lifecycle/MutableLiveData;

    .line 979
    .line 980
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView$bindViewModel$1;

    .line 981
    .line 982
    invoke-direct {v3, v2}, Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView$bindViewModel$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView;)V

    .line 983
    .line 984
    .line 985
    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 986
    .line 987
    .line 988
    iget-object v1, v2, Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftActionBarBinding;

    .line 989
    .line 990
    if-eqz v1, :cond_44

    .line 991
    .line 992
    goto :goto_2

    .line 993
    :cond_44
    const/4 v1, 0x0

    .line 994
    :goto_2
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftActionBarBinding;->backButton:Landroid/view/View;

    .line 995
    .line 996
    new-instance v5, Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView$bindViewModel$2;

    .line 997
    .line 998
    invoke-direct {v5, v2}, Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView$bindViewModel$2;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView;)V

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1002
    .line 1003
    .line 1004
    iget-object v1, v2, Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView;->viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 1005
    .line 1006
    if-eqz v1, :cond_45

    .line 1007
    .line 1008
    goto :goto_3

    .line 1009
    :cond_45
    const/4 v1, 0x0

    .line 1010
    :goto_3
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;->notifyChange()V

    .line 1011
    .line 1012
    .line 1013
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;->noiseControlBox:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 1014
    .line 1015
    iget-object v2, v1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 1016
    .line 1017
    iput-object v1, v2, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 1018
    .line 1019
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter;->getViewModelProvider()Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v1

    .line 1023
    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->bindViewModel(Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;)V

    .line 1024
    .line 1025
    .line 1026
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;->audioEffectBox:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;

    .line 1027
    .line 1028
    iget-object v2, v1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;

    .line 1029
    .line 1030
    iput-object v1, v2, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;

    .line 1031
    .line 1032
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter;->getViewModelProvider()Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v5

    .line 1036
    const-string v6, "SoundCraft.AudioEffectBoxView"

    .line 1037
    .line 1038
    move-object/from16 v3, v24

    .line 1039
    .line 1040
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    .line 1042
    .line 1043
    iput-object v5, v2, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->vmProvider:Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 1044
    .line 1045
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v3

    .line 1049
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v6

    .line 1053
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1054
    .line 1055
    .line 1056
    move-result v6

    .line 1057
    const-string v0, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel"

    .line 1058
    .line 1059
    if-eqz v6, :cond_47

    .line 1060
    .line 1061
    iget-object v3, v5, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->craftViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 1062
    .line 1063
    if-eqz v3, :cond_46

    .line 1064
    .line 1065
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1066
    .line 1067
    goto/16 :goto_4

    .line 1068
    .line 1069
    :cond_46
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1070
    .line 1071
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1072
    .line 1073
    .line 1074
    throw v1

    .line 1075
    :cond_47
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v6

    .line 1079
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1080
    .line 1081
    .line 1082
    move-result v6

    .line 1083
    if-eqz v6, :cond_49

    .line 1084
    .line 1085
    iget-object v3, v5, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->actionBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 1086
    .line 1087
    if-eqz v3, :cond_48

    .line 1088
    .line 1089
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1090
    .line 1091
    goto/16 :goto_4

    .line 1092
    .line 1093
    :cond_48
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1094
    .line 1095
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1096
    .line 1097
    .line 1098
    throw v1

    .line 1099
    :cond_49
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v6

    .line 1103
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1104
    .line 1105
    .line 1106
    move-result v6

    .line 1107
    if-eqz v6, :cond_4b

    .line 1108
    .line 1109
    iget-object v3, v5, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 1110
    .line 1111
    if-eqz v3, :cond_4a

    .line 1112
    .line 1113
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1114
    .line 1115
    goto/16 :goto_4

    .line 1116
    .line 1117
    :cond_4a
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1118
    .line 1119
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1120
    .line 1121
    .line 1122
    throw v1

    .line 1123
    :cond_4b
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v6

    .line 1127
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1128
    .line 1129
    .line 1130
    move-result v6

    .line 1131
    if-eqz v6, :cond_4d

    .line 1132
    .line 1133
    iget-object v3, v5, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1134
    .line 1135
    if-eqz v3, :cond_4c

    .line 1136
    .line 1137
    goto/16 :goto_4

    .line 1138
    .line 1139
    :cond_4c
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1140
    .line 1141
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1142
    .line 1143
    .line 1144
    throw v1

    .line 1145
    :cond_4d
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v6

    .line 1149
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1150
    .line 1151
    .line 1152
    move-result v6

    .line 1153
    if-eqz v6, :cond_4f

    .line 1154
    .line 1155
    iget-object v3, v5, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectHeaderViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1156
    .line 1157
    if-eqz v3, :cond_4e

    .line 1158
    .line 1159
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1160
    .line 1161
    goto/16 :goto_4

    .line 1162
    .line 1163
    :cond_4e
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1164
    .line 1165
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1166
    .line 1167
    .line 1168
    throw v1

    .line 1169
    :cond_4f
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v6

    .line 1173
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1174
    .line 1175
    .line 1176
    move-result v6

    .line 1177
    if-eqz v6, :cond_51

    .line 1178
    .line 1179
    iget-object v3, v5, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->wearableLinkBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 1180
    .line 1181
    if-eqz v3, :cond_50

    .line 1182
    .line 1183
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1184
    .line 1185
    goto/16 :goto_4

    .line 1186
    .line 1187
    :cond_50
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1188
    .line 1189
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1190
    .line 1191
    .line 1192
    throw v1

    .line 1193
    :cond_51
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v6

    .line 1197
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1198
    .line 1199
    .line 1200
    move-result v6

    .line 1201
    if-eqz v6, :cond_53

    .line 1202
    .line 1203
    iget-object v3, v5, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->spatialAudioViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1204
    .line 1205
    if-eqz v3, :cond_52

    .line 1206
    .line 1207
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1208
    .line 1209
    goto/16 :goto_4

    .line 1210
    .line 1211
    :cond_52
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1212
    .line 1213
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1214
    .line 1215
    .line 1216
    throw v1

    .line 1217
    :cond_53
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v6

    .line 1221
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1222
    .line 1223
    .line 1224
    move-result v6

    .line 1225
    if-eqz v6, :cond_55

    .line 1226
    .line 1227
    iget-object v3, v5, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->equalizerViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1228
    .line 1229
    if-eqz v3, :cond_54

    .line 1230
    .line 1231
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1232
    .line 1233
    goto/16 :goto_4

    .line 1234
    .line 1235
    :cond_54
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1236
    .line 1237
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    throw v1

    .line 1241
    :cond_55
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v6

    .line 1245
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1246
    .line 1247
    .line 1248
    move-result v6

    .line 1249
    if-eqz v6, :cond_57

    .line 1250
    .line 1251
    iget-object v3, v5, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->voiceBoostViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 1252
    .line 1253
    if-eqz v3, :cond_56

    .line 1254
    .line 1255
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1256
    .line 1257
    goto/16 :goto_4

    .line 1258
    .line 1259
    :cond_56
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1260
    .line 1261
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1262
    .line 1263
    .line 1264
    throw v1

    .line 1265
    :cond_57
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v6

    .line 1269
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1270
    .line 1271
    .line 1272
    move-result v6

    .line 1273
    if-eqz v6, :cond_59

    .line 1274
    .line 1275
    iget-object v3, v5, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->volumeNormalizationViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 1276
    .line 1277
    if-eqz v3, :cond_58

    .line 1278
    .line 1279
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1280
    .line 1281
    goto/16 :goto_4

    .line 1282
    .line 1283
    :cond_58
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1284
    .line 1285
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1286
    .line 1287
    .line 1288
    throw v1

    .line 1289
    :cond_59
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v6

    .line 1293
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1294
    .line 1295
    .line 1296
    move-result v6

    .line 1297
    if-eqz v6, :cond_5b

    .line 1298
    .line 1299
    iget-object v3, v5, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->activeNoiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 1300
    .line 1301
    if-eqz v3, :cond_5a

    .line 1302
    .line 1303
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1304
    .line 1305
    goto/16 :goto_4

    .line 1306
    .line 1307
    :cond_5a
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1308
    .line 1309
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1310
    .line 1311
    .line 1312
    throw v1

    .line 1313
    :cond_5b
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v6

    .line 1317
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1318
    .line 1319
    .line 1320
    move-result v6

    .line 1321
    if-eqz v6, :cond_5d

    .line 1322
    .line 1323
    iget-object v3, v5, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->adaptiveViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 1324
    .line 1325
    if-eqz v3, :cond_5c

    .line 1326
    .line 1327
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1328
    .line 1329
    goto/16 :goto_4

    .line 1330
    .line 1331
    :cond_5c
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1332
    .line 1333
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1334
    .line 1335
    .line 1336
    throw v1

    .line 1337
    :cond_5d
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v6

    .line 1341
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1342
    .line 1343
    .line 1344
    move-result v6

    .line 1345
    if-eqz v6, :cond_5f

    .line 1346
    .line 1347
    iget-object v3, v5, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->ambientSoundViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 1348
    .line 1349
    if-eqz v3, :cond_5e

    .line 1350
    .line 1351
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1352
    .line 1353
    goto/16 :goto_4

    .line 1354
    .line 1355
    :cond_5e
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1356
    .line 1357
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1358
    .line 1359
    .line 1360
    throw v1

    .line 1361
    :cond_5f
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v6

    .line 1365
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1366
    .line 1367
    .line 1368
    move-result v6

    .line 1369
    if-eqz v6, :cond_61

    .line 1370
    .line 1371
    iget-object v3, v5, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1372
    .line 1373
    if-eqz v3, :cond_60

    .line 1374
    .line 1375
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1376
    .line 1377
    goto :goto_4

    .line 1378
    :cond_60
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1379
    .line 1380
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1381
    .line 1382
    .line 1383
    throw v1

    .line 1384
    :cond_61
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v6

    .line 1388
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1389
    .line 1390
    .line 1391
    move-result v6

    .line 1392
    if-eqz v6, :cond_63

    .line 1393
    .line 1394
    iget-object v3, v5, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1395
    .line 1396
    if-eqz v3, :cond_62

    .line 1397
    .line 1398
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1399
    .line 1400
    goto :goto_4

    .line 1401
    :cond_62
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1402
    .line 1403
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1404
    .line 1405
    .line 1406
    throw v1

    .line 1407
    :cond_63
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v6

    .line 1411
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1412
    .line 1413
    .line 1414
    move-result v6

    .line 1415
    if-eqz v6, :cond_65

    .line 1416
    .line 1417
    iget-object v3, v5, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlOffViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 1418
    .line 1419
    if-eqz v3, :cond_64

    .line 1420
    .line 1421
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1422
    .line 1423
    goto :goto_4

    .line 1424
    :cond_64
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1425
    .line 1426
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1427
    .line 1428
    .line 1429
    throw v1

    .line 1430
    :cond_65
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v6

    .line 1434
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1435
    .line 1436
    .line 1437
    move-result v6

    .line 1438
    if-eqz v6, :cond_67

    .line 1439
    .line 1440
    iget-object v3, v5, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingSwitchBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 1441
    .line 1442
    if-eqz v3, :cond_66

    .line 1443
    .line 1444
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1445
    .line 1446
    goto :goto_4

    .line 1447
    :cond_66
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1448
    .line 1449
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1450
    .line 1451
    .line 1452
    throw v1

    .line 1453
    :cond_67
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v6

    .line 1457
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1458
    .line 1459
    .line 1460
    move-result v3

    .line 1461
    if-eqz v3, :cond_de

    .line 1462
    .line 1463
    iget-object v3, v5, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->routineTestViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 1464
    .line 1465
    if-eqz v3, :cond_dd

    .line 1466
    .line 1467
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1468
    .line 1469
    :goto_4
    iget-object v0, v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;->showSpatialAudio:Landroidx/lifecycle/MutableLiveData;

    .line 1470
    .line 1471
    new-instance v6, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView$bindViewModel$1$1;

    .line 1472
    .line 1473
    invoke-direct {v6, v5, v2}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView$bindViewModel$1$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    .line 1474
    .line 1475
    .line 1476
    invoke-virtual {v0, v2, v6}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 1477
    .line 1478
    .line 1479
    iget-object v0, v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;->showEqualizer:Landroidx/lifecycle/MutableLiveData;

    .line 1480
    .line 1481
    new-instance v5, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView$bindViewModel$1$2;

    .line 1482
    .line 1483
    invoke-direct {v5, v2}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView$bindViewModel$1$2;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    .line 1484
    .line 1485
    .line 1486
    invoke-virtual {v0, v2, v5}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 1487
    .line 1488
    .line 1489
    iget-object v0, v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;->showVoiceBoost:Landroidx/lifecycle/MutableLiveData;

    .line 1490
    .line 1491
    new-instance v5, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView$bindViewModel$1$3;

    .line 1492
    .line 1493
    invoke-direct {v5, v2}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView$bindViewModel$1$3;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    .line 1494
    .line 1495
    .line 1496
    invoke-virtual {v0, v2, v5}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 1497
    .line 1498
    .line 1499
    iget-object v0, v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;->showVolumeNormalization:Landroidx/lifecycle/MutableLiveData;

    .line 1500
    .line 1501
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView$bindViewModel$1$4;

    .line 1502
    .line 1503
    invoke-direct {v3, v2}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView$bindViewModel$1$4;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;)V

    .line 1504
    .line 1505
    .line 1506
    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 1507
    .line 1508
    .line 1509
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;->header:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectHeaderViewBinding;

    .line 1510
    .line 1511
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectHeaderViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView;

    .line 1512
    .line 1513
    iput-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectHeaderViewBinding;

    .line 1514
    .line 1515
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter;->getViewModelProvider()Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v0

    .line 1519
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v2

    .line 1523
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v3

    .line 1527
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1528
    .line 1529
    .line 1530
    move-result v3

    .line 1531
    const-string v5, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel"

    .line 1532
    .line 1533
    if-eqz v3, :cond_69

    .line 1534
    .line 1535
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->craftViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 1536
    .line 1537
    if-eqz v0, :cond_68

    .line 1538
    .line 1539
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1540
    .line 1541
    goto/16 :goto_5

    .line 1542
    .line 1543
    :cond_68
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1544
    .line 1545
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1546
    .line 1547
    .line 1548
    throw v0

    .line 1549
    :cond_69
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v3

    .line 1553
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1554
    .line 1555
    .line 1556
    move-result v3

    .line 1557
    if-eqz v3, :cond_6b

    .line 1558
    .line 1559
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->actionBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 1560
    .line 1561
    if-eqz v0, :cond_6a

    .line 1562
    .line 1563
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1564
    .line 1565
    goto/16 :goto_5

    .line 1566
    .line 1567
    :cond_6a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1568
    .line 1569
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1570
    .line 1571
    .line 1572
    throw v0

    .line 1573
    :cond_6b
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v3

    .line 1577
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1578
    .line 1579
    .line 1580
    move-result v3

    .line 1581
    if-eqz v3, :cond_6d

    .line 1582
    .line 1583
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 1584
    .line 1585
    if-eqz v0, :cond_6c

    .line 1586
    .line 1587
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1588
    .line 1589
    goto/16 :goto_5

    .line 1590
    .line 1591
    :cond_6c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1592
    .line 1593
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1594
    .line 1595
    .line 1596
    throw v0

    .line 1597
    :cond_6d
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v3

    .line 1601
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1602
    .line 1603
    .line 1604
    move-result v3

    .line 1605
    if-eqz v3, :cond_6f

    .line 1606
    .line 1607
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1608
    .line 1609
    if-eqz v0, :cond_6e

    .line 1610
    .line 1611
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1612
    .line 1613
    goto/16 :goto_5

    .line 1614
    .line 1615
    :cond_6e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1616
    .line 1617
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1618
    .line 1619
    .line 1620
    throw v0

    .line 1621
    :cond_6f
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v3

    .line 1625
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1626
    .line 1627
    .line 1628
    move-result v3

    .line 1629
    if-eqz v3, :cond_71

    .line 1630
    .line 1631
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectHeaderViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1632
    .line 1633
    if-eqz v0, :cond_70

    .line 1634
    .line 1635
    goto/16 :goto_5

    .line 1636
    .line 1637
    :cond_70
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1638
    .line 1639
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1640
    .line 1641
    .line 1642
    throw v0

    .line 1643
    :cond_71
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v3

    .line 1647
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1648
    .line 1649
    .line 1650
    move-result v3

    .line 1651
    if-eqz v3, :cond_73

    .line 1652
    .line 1653
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->wearableLinkBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 1654
    .line 1655
    if-eqz v0, :cond_72

    .line 1656
    .line 1657
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1658
    .line 1659
    goto/16 :goto_5

    .line 1660
    .line 1661
    :cond_72
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1662
    .line 1663
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1664
    .line 1665
    .line 1666
    throw v0

    .line 1667
    :cond_73
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v3

    .line 1671
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1672
    .line 1673
    .line 1674
    move-result v3

    .line 1675
    if-eqz v3, :cond_75

    .line 1676
    .line 1677
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->spatialAudioViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1678
    .line 1679
    if-eqz v0, :cond_74

    .line 1680
    .line 1681
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1682
    .line 1683
    goto/16 :goto_5

    .line 1684
    .line 1685
    :cond_74
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1686
    .line 1687
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1688
    .line 1689
    .line 1690
    throw v0

    .line 1691
    :cond_75
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v3

    .line 1695
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1696
    .line 1697
    .line 1698
    move-result v3

    .line 1699
    if-eqz v3, :cond_77

    .line 1700
    .line 1701
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->equalizerViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1702
    .line 1703
    if-eqz v0, :cond_76

    .line 1704
    .line 1705
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1706
    .line 1707
    goto/16 :goto_5

    .line 1708
    .line 1709
    :cond_76
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1710
    .line 1711
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1712
    .line 1713
    .line 1714
    throw v0

    .line 1715
    :cond_77
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v3

    .line 1719
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1720
    .line 1721
    .line 1722
    move-result v3

    .line 1723
    if-eqz v3, :cond_79

    .line 1724
    .line 1725
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->voiceBoostViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 1726
    .line 1727
    if-eqz v0, :cond_78

    .line 1728
    .line 1729
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1730
    .line 1731
    goto/16 :goto_5

    .line 1732
    .line 1733
    :cond_78
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1734
    .line 1735
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1736
    .line 1737
    .line 1738
    throw v0

    .line 1739
    :cond_79
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1740
    .line 1741
    .line 1742
    move-result-object v3

    .line 1743
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1744
    .line 1745
    .line 1746
    move-result v3

    .line 1747
    if-eqz v3, :cond_7b

    .line 1748
    .line 1749
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->volumeNormalizationViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 1750
    .line 1751
    if-eqz v0, :cond_7a

    .line 1752
    .line 1753
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1754
    .line 1755
    goto/16 :goto_5

    .line 1756
    .line 1757
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1758
    .line 1759
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1760
    .line 1761
    .line 1762
    throw v0

    .line 1763
    :cond_7b
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v3

    .line 1767
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1768
    .line 1769
    .line 1770
    move-result v3

    .line 1771
    if-eqz v3, :cond_7d

    .line 1772
    .line 1773
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->activeNoiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 1774
    .line 1775
    if-eqz v0, :cond_7c

    .line 1776
    .line 1777
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1778
    .line 1779
    goto/16 :goto_5

    .line 1780
    .line 1781
    :cond_7c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1782
    .line 1783
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1784
    .line 1785
    .line 1786
    throw v0

    .line 1787
    :cond_7d
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v3

    .line 1791
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1792
    .line 1793
    .line 1794
    move-result v3

    .line 1795
    if-eqz v3, :cond_7f

    .line 1796
    .line 1797
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->adaptiveViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 1798
    .line 1799
    if-eqz v0, :cond_7e

    .line 1800
    .line 1801
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1802
    .line 1803
    goto/16 :goto_5

    .line 1804
    .line 1805
    :cond_7e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1806
    .line 1807
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1808
    .line 1809
    .line 1810
    throw v0

    .line 1811
    :cond_7f
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v3

    .line 1815
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1816
    .line 1817
    .line 1818
    move-result v3

    .line 1819
    if-eqz v3, :cond_81

    .line 1820
    .line 1821
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->ambientSoundViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 1822
    .line 1823
    if-eqz v0, :cond_80

    .line 1824
    .line 1825
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1826
    .line 1827
    goto/16 :goto_5

    .line 1828
    .line 1829
    :cond_80
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1830
    .line 1831
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1832
    .line 1833
    .line 1834
    throw v0

    .line 1835
    :cond_81
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1836
    .line 1837
    .line 1838
    move-result-object v3

    .line 1839
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1840
    .line 1841
    .line 1842
    move-result v3

    .line 1843
    if-eqz v3, :cond_83

    .line 1844
    .line 1845
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1846
    .line 1847
    if-eqz v0, :cond_82

    .line 1848
    .line 1849
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1850
    .line 1851
    goto :goto_5

    .line 1852
    :cond_82
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1853
    .line 1854
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1855
    .line 1856
    .line 1857
    throw v0

    .line 1858
    :cond_83
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v3

    .line 1862
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1863
    .line 1864
    .line 1865
    move-result v3

    .line 1866
    if-eqz v3, :cond_85

    .line 1867
    .line 1868
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1869
    .line 1870
    if-eqz v0, :cond_84

    .line 1871
    .line 1872
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1873
    .line 1874
    goto :goto_5

    .line 1875
    :cond_84
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1876
    .line 1877
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1878
    .line 1879
    .line 1880
    throw v0

    .line 1881
    :cond_85
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1882
    .line 1883
    .line 1884
    move-result-object v3

    .line 1885
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1886
    .line 1887
    .line 1888
    move-result v3

    .line 1889
    if-eqz v3, :cond_87

    .line 1890
    .line 1891
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlOffViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 1892
    .line 1893
    if-eqz v0, :cond_86

    .line 1894
    .line 1895
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1896
    .line 1897
    goto :goto_5

    .line 1898
    :cond_86
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1899
    .line 1900
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1901
    .line 1902
    .line 1903
    throw v0

    .line 1904
    :cond_87
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1905
    .line 1906
    .line 1907
    move-result-object v3

    .line 1908
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1909
    .line 1910
    .line 1911
    move-result v3

    .line 1912
    if-eqz v3, :cond_89

    .line 1913
    .line 1914
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingSwitchBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 1915
    .line 1916
    if-eqz v0, :cond_88

    .line 1917
    .line 1918
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1919
    .line 1920
    goto :goto_5

    .line 1921
    :cond_88
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1922
    .line 1923
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1924
    .line 1925
    .line 1926
    throw v0

    .line 1927
    :cond_89
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1928
    .line 1929
    .line 1930
    move-result-object v3

    .line 1931
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1932
    .line 1933
    .line 1934
    move-result v2

    .line 1935
    if-eqz v2, :cond_dc

    .line 1936
    .line 1937
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->routineTestViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 1938
    .line 1939
    if-eqz v0, :cond_db

    .line 1940
    .line 1941
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1942
    .line 1943
    :goto_5
    iput-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView;->viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1944
    .line 1945
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 1946
    .line 1947
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView$bindViewModel$1;

    .line 1948
    .line 1949
    invoke-direct {v2, v1}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView$bindViewModel$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView;)V

    .line 1950
    .line 1951
    .line 1952
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 1953
    .line 1954
    .line 1955
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView;->viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1956
    .line 1957
    if-eqz v0, :cond_8a

    .line 1958
    .line 1959
    goto :goto_6

    .line 1960
    :cond_8a
    const/4 v0, 0x0

    .line 1961
    :goto_6
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;->icon:Landroidx/lifecycle/MutableLiveData;

    .line 1962
    .line 1963
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView$bindViewModel$2;

    .line 1964
    .line 1965
    invoke-direct {v2, v1}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView$bindViewModel$2;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView;)V

    .line 1966
    .line 1967
    .line 1968
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 1969
    .line 1970
    .line 1971
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectHeaderView;->viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1972
    .line 1973
    if-eqz v0, :cond_8b

    .line 1974
    .line 1975
    goto :goto_7

    .line 1976
    :cond_8b
    const/4 v0, 0x0

    .line 1977
    :goto_7
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;->notifyChange()V

    .line 1978
    .line 1979
    .line 1980
    move-object/from16 v0, p1

    .line 1981
    .line 1982
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;->wearableLinkBox:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/WearableLinkBoxViewBinding;

    .line 1983
    .line 1984
    iget-object v2, v1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/WearableLinkBoxViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/wearable/WearableLinkBoxView;

    .line 1985
    .line 1986
    iput-object v1, v2, Lcom/android/systemui/qs/bar/soundcraft/view/wearable/WearableLinkBoxView;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/WearableLinkBoxViewBinding;

    .line 1987
    .line 1988
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter;->getViewModelProvider()Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 1989
    .line 1990
    .line 1991
    move-result-object v1

    .line 1992
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1993
    .line 1994
    const-string v5, "bindViewModel binding : viewModel="

    .line 1995
    .line 1996
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1997
    .line 1998
    .line 1999
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2000
    .line 2001
    .line 2002
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v3

    .line 2006
    const-string v5, "SoundCraft.WearableLinkBoxView"

    .line 2007
    .line 2008
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    .line 2010
    .line 2011
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2012
    .line 2013
    .line 2014
    move-result-object v3

    .line 2015
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2016
    .line 2017
    .line 2018
    move-result-object v5

    .line 2019
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2020
    .line 2021
    .line 2022
    move-result v5

    .line 2023
    const-string v6, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.wearable.WearableLinkBoxViewModel"

    .line 2024
    .line 2025
    if-eqz v5, :cond_8d

    .line 2026
    .line 2027
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->craftViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 2028
    .line 2029
    if-eqz v1, :cond_8c

    .line 2030
    .line 2031
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2032
    .line 2033
    goto/16 :goto_8

    .line 2034
    .line 2035
    :cond_8c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2036
    .line 2037
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2038
    .line 2039
    .line 2040
    throw v0

    .line 2041
    :cond_8d
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2042
    .line 2043
    .line 2044
    move-result-object v5

    .line 2045
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2046
    .line 2047
    .line 2048
    move-result v5

    .line 2049
    if-eqz v5, :cond_8f

    .line 2050
    .line 2051
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->actionBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 2052
    .line 2053
    if-eqz v1, :cond_8e

    .line 2054
    .line 2055
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2056
    .line 2057
    goto/16 :goto_8

    .line 2058
    .line 2059
    :cond_8e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2060
    .line 2061
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2062
    .line 2063
    .line 2064
    throw v0

    .line 2065
    :cond_8f
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2066
    .line 2067
    .line 2068
    move-result-object v5

    .line 2069
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2070
    .line 2071
    .line 2072
    move-result v5

    .line 2073
    if-eqz v5, :cond_91

    .line 2074
    .line 2075
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 2076
    .line 2077
    if-eqz v1, :cond_90

    .line 2078
    .line 2079
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2080
    .line 2081
    goto/16 :goto_8

    .line 2082
    .line 2083
    :cond_90
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2084
    .line 2085
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2086
    .line 2087
    .line 2088
    throw v0

    .line 2089
    :cond_91
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2090
    .line 2091
    .line 2092
    move-result-object v5

    .line 2093
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2094
    .line 2095
    .line 2096
    move-result v5

    .line 2097
    if-eqz v5, :cond_93

    .line 2098
    .line 2099
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 2100
    .line 2101
    if-eqz v1, :cond_92

    .line 2102
    .line 2103
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2104
    .line 2105
    goto/16 :goto_8

    .line 2106
    .line 2107
    :cond_92
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2108
    .line 2109
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2110
    .line 2111
    .line 2112
    throw v0

    .line 2113
    :cond_93
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2114
    .line 2115
    .line 2116
    move-result-object v5

    .line 2117
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2118
    .line 2119
    .line 2120
    move-result v5

    .line 2121
    if-eqz v5, :cond_95

    .line 2122
    .line 2123
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectHeaderViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 2124
    .line 2125
    if-eqz v1, :cond_94

    .line 2126
    .line 2127
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2128
    .line 2129
    goto/16 :goto_8

    .line 2130
    .line 2131
    :cond_94
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2132
    .line 2133
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2134
    .line 2135
    .line 2136
    throw v0

    .line 2137
    :cond_95
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2138
    .line 2139
    .line 2140
    move-result-object v5

    .line 2141
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2142
    .line 2143
    .line 2144
    move-result v5

    .line 2145
    if-eqz v5, :cond_97

    .line 2146
    .line 2147
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->wearableLinkBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2148
    .line 2149
    if-eqz v1, :cond_96

    .line 2150
    .line 2151
    goto/16 :goto_8

    .line 2152
    .line 2153
    :cond_96
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2154
    .line 2155
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2156
    .line 2157
    .line 2158
    throw v0

    .line 2159
    :cond_97
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2160
    .line 2161
    .line 2162
    move-result-object v5

    .line 2163
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2164
    .line 2165
    .line 2166
    move-result v5

    .line 2167
    if-eqz v5, :cond_99

    .line 2168
    .line 2169
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->spatialAudioViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 2170
    .line 2171
    if-eqz v1, :cond_98

    .line 2172
    .line 2173
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2174
    .line 2175
    goto/16 :goto_8

    .line 2176
    .line 2177
    :cond_98
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2178
    .line 2179
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2180
    .line 2181
    .line 2182
    throw v0

    .line 2183
    :cond_99
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2184
    .line 2185
    .line 2186
    move-result-object v5

    .line 2187
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2188
    .line 2189
    .line 2190
    move-result v5

    .line 2191
    if-eqz v5, :cond_9b

    .line 2192
    .line 2193
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->equalizerViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 2194
    .line 2195
    if-eqz v1, :cond_9a

    .line 2196
    .line 2197
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2198
    .line 2199
    goto/16 :goto_8

    .line 2200
    .line 2201
    :cond_9a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2202
    .line 2203
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2204
    .line 2205
    .line 2206
    throw v0

    .line 2207
    :cond_9b
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2208
    .line 2209
    .line 2210
    move-result-object v5

    .line 2211
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2212
    .line 2213
    .line 2214
    move-result v5

    .line 2215
    if-eqz v5, :cond_9d

    .line 2216
    .line 2217
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->voiceBoostViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2218
    .line 2219
    if-eqz v1, :cond_9c

    .line 2220
    .line 2221
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2222
    .line 2223
    goto/16 :goto_8

    .line 2224
    .line 2225
    :cond_9c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2226
    .line 2227
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2228
    .line 2229
    .line 2230
    throw v0

    .line 2231
    :cond_9d
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v5

    .line 2235
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2236
    .line 2237
    .line 2238
    move-result v5

    .line 2239
    if-eqz v5, :cond_9f

    .line 2240
    .line 2241
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->volumeNormalizationViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2242
    .line 2243
    if-eqz v1, :cond_9e

    .line 2244
    .line 2245
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2246
    .line 2247
    goto/16 :goto_8

    .line 2248
    .line 2249
    :cond_9e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2250
    .line 2251
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2252
    .line 2253
    .line 2254
    throw v0

    .line 2255
    :cond_9f
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2256
    .line 2257
    .line 2258
    move-result-object v5

    .line 2259
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2260
    .line 2261
    .line 2262
    move-result v5

    .line 2263
    if-eqz v5, :cond_a1

    .line 2264
    .line 2265
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->activeNoiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2266
    .line 2267
    if-eqz v1, :cond_a0

    .line 2268
    .line 2269
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2270
    .line 2271
    goto/16 :goto_8

    .line 2272
    .line 2273
    :cond_a0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2274
    .line 2275
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2276
    .line 2277
    .line 2278
    throw v0

    .line 2279
    :cond_a1
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2280
    .line 2281
    .line 2282
    move-result-object v5

    .line 2283
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2284
    .line 2285
    .line 2286
    move-result v5

    .line 2287
    if-eqz v5, :cond_a3

    .line 2288
    .line 2289
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->adaptiveViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2290
    .line 2291
    if-eqz v1, :cond_a2

    .line 2292
    .line 2293
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2294
    .line 2295
    goto/16 :goto_8

    .line 2296
    .line 2297
    :cond_a2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2298
    .line 2299
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2300
    .line 2301
    .line 2302
    throw v0

    .line 2303
    :cond_a3
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2304
    .line 2305
    .line 2306
    move-result-object v5

    .line 2307
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2308
    .line 2309
    .line 2310
    move-result v5

    .line 2311
    if-eqz v5, :cond_a5

    .line 2312
    .line 2313
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->ambientSoundViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 2314
    .line 2315
    if-eqz v1, :cond_a4

    .line 2316
    .line 2317
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2318
    .line 2319
    goto/16 :goto_8

    .line 2320
    .line 2321
    :cond_a4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2322
    .line 2323
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2324
    .line 2325
    .line 2326
    throw v0

    .line 2327
    :cond_a5
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2328
    .line 2329
    .line 2330
    move-result-object v5

    .line 2331
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2332
    .line 2333
    .line 2334
    move-result v5

    .line 2335
    if-eqz v5, :cond_a7

    .line 2336
    .line 2337
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 2338
    .line 2339
    if-eqz v1, :cond_a6

    .line 2340
    .line 2341
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2342
    .line 2343
    goto :goto_8

    .line 2344
    :cond_a6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2345
    .line 2346
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2347
    .line 2348
    .line 2349
    throw v0

    .line 2350
    :cond_a7
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2351
    .line 2352
    .line 2353
    move-result-object v5

    .line 2354
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2355
    .line 2356
    .line 2357
    move-result v5

    .line 2358
    if-eqz v5, :cond_a9

    .line 2359
    .line 2360
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 2361
    .line 2362
    if-eqz v1, :cond_a8

    .line 2363
    .line 2364
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2365
    .line 2366
    goto :goto_8

    .line 2367
    :cond_a8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2368
    .line 2369
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2370
    .line 2371
    .line 2372
    throw v0

    .line 2373
    :cond_a9
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2374
    .line 2375
    .line 2376
    move-result-object v5

    .line 2377
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2378
    .line 2379
    .line 2380
    move-result v5

    .line 2381
    if-eqz v5, :cond_ab

    .line 2382
    .line 2383
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlOffViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 2384
    .line 2385
    if-eqz v1, :cond_aa

    .line 2386
    .line 2387
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2388
    .line 2389
    goto :goto_8

    .line 2390
    :cond_aa
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2391
    .line 2392
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2393
    .line 2394
    .line 2395
    throw v0

    .line 2396
    :cond_ab
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2397
    .line 2398
    .line 2399
    move-result-object v5

    .line 2400
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2401
    .line 2402
    .line 2403
    move-result v5

    .line 2404
    if-eqz v5, :cond_ad

    .line 2405
    .line 2406
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingSwitchBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 2407
    .line 2408
    if-eqz v1, :cond_ac

    .line 2409
    .line 2410
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2411
    .line 2412
    goto :goto_8

    .line 2413
    :cond_ac
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2414
    .line 2415
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2416
    .line 2417
    .line 2418
    throw v0

    .line 2419
    :cond_ad
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2420
    .line 2421
    .line 2422
    move-result-object v5

    .line 2423
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2424
    .line 2425
    .line 2426
    move-result v3

    .line 2427
    if-eqz v3, :cond_da

    .line 2428
    .line 2429
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->routineTestViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2430
    .line 2431
    if-eqz v1, :cond_d9

    .line 2432
    .line 2433
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2434
    .line 2435
    :goto_8
    iput-object v1, v2, Lcom/android/systemui/qs/bar/soundcraft/view/wearable/WearableLinkBoxView;->viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2436
    .line 2437
    iget-object v1, v2, Lcom/android/systemui/qs/bar/soundcraft/view/wearable/WearableLinkBoxView;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/WearableLinkBoxViewBinding;

    .line 2438
    .line 2439
    if-eqz v1, :cond_ae

    .line 2440
    .line 2441
    goto :goto_9

    .line 2442
    :cond_ae
    const/4 v1, 0x0

    .line 2443
    :goto_9
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/WearableLinkBoxViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/wearable/WearableLinkBoxView;

    .line 2444
    .line 2445
    const/4 v3, 0x0

    .line 2446
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2447
    .line 2448
    .line 2449
    iget-object v1, v2, Lcom/android/systemui/qs/bar/soundcraft/view/wearable/WearableLinkBoxView;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/WearableLinkBoxViewBinding;

    .line 2450
    .line 2451
    if-eqz v1, :cond_af

    .line 2452
    .line 2453
    goto :goto_a

    .line 2454
    :cond_af
    const/4 v1, 0x0

    .line 2455
    :goto_a
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/WearableLinkBoxViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/wearable/WearableLinkBoxView;

    .line 2456
    .line 2457
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/view/wearable/WearableLinkBoxView$bindViewModel$1;

    .line 2458
    .line 2459
    invoke-direct {v3, v2}, Lcom/android/systemui/qs/bar/soundcraft/view/wearable/WearableLinkBoxView$bindViewModel$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/wearable/WearableLinkBoxView;)V

    .line 2460
    .line 2461
    .line 2462
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2463
    .line 2464
    .line 2465
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;->routineTest:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;

    .line 2466
    .line 2467
    if-eqz v0, :cond_d8

    .line 2468
    .line 2469
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;

    .line 2470
    .line 2471
    iput-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;

    .line 2472
    .line 2473
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter;->getViewModelProvider()Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 2474
    .line 2475
    .line 2476
    move-result-object v0

    .line 2477
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2478
    .line 2479
    .line 2480
    move-result-object v2

    .line 2481
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2482
    .line 2483
    .line 2484
    move-result-object v3

    .line 2485
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2486
    .line 2487
    .line 2488
    move-result v3

    .line 2489
    const-string v4, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.routine.RoutineTestViewModel"

    .line 2490
    .line 2491
    if-eqz v3, :cond_b1

    .line 2492
    .line 2493
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->craftViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 2494
    .line 2495
    if-eqz v0, :cond_b0

    .line 2496
    .line 2497
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2498
    .line 2499
    goto/16 :goto_b

    .line 2500
    .line 2501
    :cond_b0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2502
    .line 2503
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2504
    .line 2505
    .line 2506
    throw v0

    .line 2507
    :cond_b1
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2508
    .line 2509
    .line 2510
    move-result-object v3

    .line 2511
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2512
    .line 2513
    .line 2514
    move-result v3

    .line 2515
    if-eqz v3, :cond_b3

    .line 2516
    .line 2517
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->actionBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 2518
    .line 2519
    if-eqz v0, :cond_b2

    .line 2520
    .line 2521
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2522
    .line 2523
    goto/16 :goto_b

    .line 2524
    .line 2525
    :cond_b2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2526
    .line 2527
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2528
    .line 2529
    .line 2530
    throw v0

    .line 2531
    :cond_b3
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2532
    .line 2533
    .line 2534
    move-result-object v3

    .line 2535
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2536
    .line 2537
    .line 2538
    move-result v3

    .line 2539
    if-eqz v3, :cond_b5

    .line 2540
    .line 2541
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 2542
    .line 2543
    if-eqz v0, :cond_b4

    .line 2544
    .line 2545
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2546
    .line 2547
    goto/16 :goto_b

    .line 2548
    .line 2549
    :cond_b4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2550
    .line 2551
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2552
    .line 2553
    .line 2554
    throw v0

    .line 2555
    :cond_b5
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2556
    .line 2557
    .line 2558
    move-result-object v3

    .line 2559
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2560
    .line 2561
    .line 2562
    move-result v3

    .line 2563
    if-eqz v3, :cond_b7

    .line 2564
    .line 2565
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 2566
    .line 2567
    if-eqz v0, :cond_b6

    .line 2568
    .line 2569
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2570
    .line 2571
    goto/16 :goto_b

    .line 2572
    .line 2573
    :cond_b6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2574
    .line 2575
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2576
    .line 2577
    .line 2578
    throw v0

    .line 2579
    :cond_b7
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2580
    .line 2581
    .line 2582
    move-result-object v3

    .line 2583
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2584
    .line 2585
    .line 2586
    move-result v3

    .line 2587
    if-eqz v3, :cond_b9

    .line 2588
    .line 2589
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectHeaderViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 2590
    .line 2591
    if-eqz v0, :cond_b8

    .line 2592
    .line 2593
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2594
    .line 2595
    goto/16 :goto_b

    .line 2596
    .line 2597
    :cond_b8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2598
    .line 2599
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2600
    .line 2601
    .line 2602
    throw v0

    .line 2603
    :cond_b9
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2604
    .line 2605
    .line 2606
    move-result-object v3

    .line 2607
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2608
    .line 2609
    .line 2610
    move-result v3

    .line 2611
    if-eqz v3, :cond_bb

    .line 2612
    .line 2613
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->wearableLinkBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2614
    .line 2615
    if-eqz v0, :cond_ba

    .line 2616
    .line 2617
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2618
    .line 2619
    goto/16 :goto_b

    .line 2620
    .line 2621
    :cond_ba
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2622
    .line 2623
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2624
    .line 2625
    .line 2626
    throw v0

    .line 2627
    :cond_bb
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2628
    .line 2629
    .line 2630
    move-result-object v3

    .line 2631
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2632
    .line 2633
    .line 2634
    move-result v3

    .line 2635
    if-eqz v3, :cond_bd

    .line 2636
    .line 2637
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->spatialAudioViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 2638
    .line 2639
    if-eqz v0, :cond_bc

    .line 2640
    .line 2641
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2642
    .line 2643
    goto/16 :goto_b

    .line 2644
    .line 2645
    :cond_bc
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2646
    .line 2647
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2648
    .line 2649
    .line 2650
    throw v0

    .line 2651
    :cond_bd
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2652
    .line 2653
    .line 2654
    move-result-object v3

    .line 2655
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2656
    .line 2657
    .line 2658
    move-result v3

    .line 2659
    if-eqz v3, :cond_bf

    .line 2660
    .line 2661
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->equalizerViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 2662
    .line 2663
    if-eqz v0, :cond_be

    .line 2664
    .line 2665
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2666
    .line 2667
    goto/16 :goto_b

    .line 2668
    .line 2669
    :cond_be
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2670
    .line 2671
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2672
    .line 2673
    .line 2674
    throw v0

    .line 2675
    :cond_bf
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2676
    .line 2677
    .line 2678
    move-result-object v3

    .line 2679
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2680
    .line 2681
    .line 2682
    move-result v3

    .line 2683
    if-eqz v3, :cond_c1

    .line 2684
    .line 2685
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->voiceBoostViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2686
    .line 2687
    if-eqz v0, :cond_c0

    .line 2688
    .line 2689
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2690
    .line 2691
    goto/16 :goto_b

    .line 2692
    .line 2693
    :cond_c0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2694
    .line 2695
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2696
    .line 2697
    .line 2698
    throw v0

    .line 2699
    :cond_c1
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2700
    .line 2701
    .line 2702
    move-result-object v3

    .line 2703
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2704
    .line 2705
    .line 2706
    move-result v3

    .line 2707
    if-eqz v3, :cond_c3

    .line 2708
    .line 2709
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->volumeNormalizationViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2710
    .line 2711
    if-eqz v0, :cond_c2

    .line 2712
    .line 2713
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2714
    .line 2715
    goto/16 :goto_b

    .line 2716
    .line 2717
    :cond_c2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2718
    .line 2719
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2720
    .line 2721
    .line 2722
    throw v0

    .line 2723
    :cond_c3
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2724
    .line 2725
    .line 2726
    move-result-object v3

    .line 2727
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2728
    .line 2729
    .line 2730
    move-result v3

    .line 2731
    if-eqz v3, :cond_c5

    .line 2732
    .line 2733
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->activeNoiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2734
    .line 2735
    if-eqz v0, :cond_c4

    .line 2736
    .line 2737
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2738
    .line 2739
    goto/16 :goto_b

    .line 2740
    .line 2741
    :cond_c4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2742
    .line 2743
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2744
    .line 2745
    .line 2746
    throw v0

    .line 2747
    :cond_c5
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2748
    .line 2749
    .line 2750
    move-result-object v3

    .line 2751
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2752
    .line 2753
    .line 2754
    move-result v3

    .line 2755
    if-eqz v3, :cond_c7

    .line 2756
    .line 2757
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->adaptiveViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2758
    .line 2759
    if-eqz v0, :cond_c6

    .line 2760
    .line 2761
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2762
    .line 2763
    goto/16 :goto_b

    .line 2764
    .line 2765
    :cond_c6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2766
    .line 2767
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2768
    .line 2769
    .line 2770
    throw v0

    .line 2771
    :cond_c7
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2772
    .line 2773
    .line 2774
    move-result-object v3

    .line 2775
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2776
    .line 2777
    .line 2778
    move-result v3

    .line 2779
    if-eqz v3, :cond_c9

    .line 2780
    .line 2781
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->ambientSoundViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 2782
    .line 2783
    if-eqz v0, :cond_c8

    .line 2784
    .line 2785
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2786
    .line 2787
    goto/16 :goto_b

    .line 2788
    .line 2789
    :cond_c8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2790
    .line 2791
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2792
    .line 2793
    .line 2794
    throw v0

    .line 2795
    :cond_c9
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2796
    .line 2797
    .line 2798
    move-result-object v3

    .line 2799
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2800
    .line 2801
    .line 2802
    move-result v3

    .line 2803
    if-eqz v3, :cond_cb

    .line 2804
    .line 2805
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 2806
    .line 2807
    if-eqz v0, :cond_ca

    .line 2808
    .line 2809
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2810
    .line 2811
    goto :goto_b

    .line 2812
    :cond_ca
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2813
    .line 2814
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2815
    .line 2816
    .line 2817
    throw v0

    .line 2818
    :cond_cb
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2819
    .line 2820
    .line 2821
    move-result-object v3

    .line 2822
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2823
    .line 2824
    .line 2825
    move-result v3

    .line 2826
    if-eqz v3, :cond_cd

    .line 2827
    .line 2828
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 2829
    .line 2830
    if-eqz v0, :cond_cc

    .line 2831
    .line 2832
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2833
    .line 2834
    goto :goto_b

    .line 2835
    :cond_cc
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2836
    .line 2837
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2838
    .line 2839
    .line 2840
    throw v0

    .line 2841
    :cond_cd
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2842
    .line 2843
    .line 2844
    move-result-object v3

    .line 2845
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2846
    .line 2847
    .line 2848
    move-result v3

    .line 2849
    if-eqz v3, :cond_cf

    .line 2850
    .line 2851
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlOffViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 2852
    .line 2853
    if-eqz v0, :cond_ce

    .line 2854
    .line 2855
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2856
    .line 2857
    goto :goto_b

    .line 2858
    :cond_ce
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2859
    .line 2860
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2861
    .line 2862
    .line 2863
    throw v0

    .line 2864
    :cond_cf
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2865
    .line 2866
    .line 2867
    move-result-object v3

    .line 2868
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2869
    .line 2870
    .line 2871
    move-result v3

    .line 2872
    if-eqz v3, :cond_d1

    .line 2873
    .line 2874
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingSwitchBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 2875
    .line 2876
    if-eqz v0, :cond_d0

    .line 2877
    .line 2878
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2879
    .line 2880
    goto :goto_b

    .line 2881
    :cond_d0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2882
    .line 2883
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2884
    .line 2885
    .line 2886
    throw v0

    .line 2887
    :cond_d1
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2888
    .line 2889
    .line 2890
    move-result-object v3

    .line 2891
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2892
    .line 2893
    .line 2894
    move-result v2

    .line 2895
    if-eqz v2, :cond_d7

    .line 2896
    .line 2897
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->routineTestViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2898
    .line 2899
    if-eqz v0, :cond_d6

    .line 2900
    .line 2901
    :goto_b
    iput-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;->viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2902
    .line 2903
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;->routineCount:Landroidx/lifecycle/MutableLiveData;

    .line 2904
    .line 2905
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$1;

    .line 2906
    .line 2907
    invoke-direct {v2, v1}, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;)V

    .line 2908
    .line 2909
    .line 2910
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 2911
    .line 2912
    .line 2913
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;

    .line 2914
    .line 2915
    if-eqz v0, :cond_d2

    .line 2916
    .line 2917
    goto :goto_c

    .line 2918
    :cond_d2
    const/4 v0, 0x0

    .line 2919
    :goto_c
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;->startButton:Landroid/view/View;

    .line 2920
    .line 2921
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$2;

    .line 2922
    .line 2923
    invoke-direct {v2, v1}, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$2;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;)V

    .line 2924
    .line 2925
    .line 2926
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2927
    .line 2928
    .line 2929
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;

    .line 2930
    .line 2931
    if-eqz v0, :cond_d3

    .line 2932
    .line 2933
    goto :goto_d

    .line 2934
    :cond_d3
    const/4 v0, 0x0

    .line 2935
    :goto_d
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;->updateButton:Landroid/view/View;

    .line 2936
    .line 2937
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$3;

    .line 2938
    .line 2939
    invoke-direct {v2, v1}, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$3;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;)V

    .line 2940
    .line 2941
    .line 2942
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2943
    .line 2944
    .line 2945
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;

    .line 2946
    .line 2947
    if-eqz v0, :cond_d4

    .line 2948
    .line 2949
    goto :goto_e

    .line 2950
    :cond_d4
    const/4 v0, 0x0

    .line 2951
    :goto_e
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;->stopButton:Landroid/view/View;

    .line 2952
    .line 2953
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$4;

    .line 2954
    .line 2955
    invoke-direct {v2, v1}, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$4;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;)V

    .line 2956
    .line 2957
    .line 2958
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2959
    .line 2960
    .line 2961
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;->viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2962
    .line 2963
    if-eqz v0, :cond_d5

    .line 2964
    .line 2965
    move-object v3, v0

    .line 2966
    goto :goto_f

    .line 2967
    :cond_d5
    const/4 v3, 0x0

    .line 2968
    :goto_f
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2969
    .line 2970
    .line 2971
    goto :goto_10

    .line 2972
    :cond_d6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2973
    .line 2974
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2975
    .line 2976
    .line 2977
    throw v0

    .line 2978
    :cond_d7
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2979
    .line 2980
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2981
    .line 2982
    .line 2983
    throw v0

    .line 2984
    :cond_d8
    :goto_10
    return-void

    .line 2985
    :cond_d9
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2986
    .line 2987
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2988
    .line 2989
    .line 2990
    throw v0

    .line 2991
    :cond_da
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2992
    .line 2993
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2994
    .line 2995
    .line 2996
    throw v0

    .line 2997
    :cond_db
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2998
    .line 2999
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3000
    .line 3001
    .line 3002
    throw v0

    .line 3003
    :cond_dc
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3004
    .line 3005
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 3006
    .line 3007
    .line 3008
    throw v0

    .line 3009
    :cond_dd
    new-instance v1, Ljava/lang/NullPointerException;

    .line 3010
    .line 3011
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3012
    .line 3013
    .line 3014
    throw v1

    .line 3015
    :cond_de
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3016
    .line 3017
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 3018
    .line 3019
    .line 3020
    throw v0

    .line 3021
    :cond_df
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3022
    .line 3023
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3024
    .line 3025
    .line 3026
    throw v0

    .line 3027
    :cond_e0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3028
    .line 3029
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 3030
    .line 3031
    .line 3032
    throw v0

    .line 3033
    :cond_e1
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3034
    .line 3035
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3036
    .line 3037
    .line 3038
    throw v0

    .line 3039
    :cond_e2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3040
    .line 3041
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 3042
    .line 3043
    .line 3044
    throw v0
.end method

.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter;->getViewModelProvider()Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "createDetailView :convertView="

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ", parent="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ", viewModelProvider="

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "SoundCraft.QpDetailAdapter"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    new-instance p0, Landroid/view/View;

    .line 43
    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    instance-of v1, p2, Landroid/view/ViewGroup;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    check-cast p2, Landroid/view/ViewGroup;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-object p2, v0

    .line 63
    :goto_0
    if-eqz p2, :cond_2

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;

    .line 69
    .line 70
    if-eqz p2, :cond_4

    .line 71
    .line 72
    iget-object p2, p2, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;

    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    instance-of v1, p2, Landroid/view/ViewGroup;

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    move-object v0, p2

    .line 83
    check-cast v0, Landroid/view/ViewGroup;

    .line 84
    .line 85
    :cond_3
    if-eqz v0, :cond_4

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 88
    .line 89
    .line 90
    :cond_4
    sget p2, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBindingFactory;->$r8$clinit:I

    .line 91
    .line 92
    new-instance p2, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;

    .line 93
    .line 94
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const/4 v0, 0x0

    .line 99
    const v1, 0x7f0d040f

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {p2, p1}, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;-><init>(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;

    .line 110
    .line 111
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter;->bindViewModel(Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter;->getViewModelProvider()Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 119
    .line 120
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    const-string v0, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.SoundCraftViewModel"

    .line 133
    .line 134
    if-eqz p1, :cond_6

    .line 135
    .line 136
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->craftViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 137
    .line 138
    if-eqz p0, :cond_5

    .line 139
    .line 140
    goto/16 :goto_1

    .line 141
    .line 142
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    .line 143
    .line 144
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p0

    .line 148
    :cond_6
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 149
    .line 150
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_8

    .line 159
    .line 160
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->actionBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 161
    .line 162
    if-eqz p0, :cond_7

    .line 163
    .line 164
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 165
    .line 166
    goto/16 :goto_1

    .line 167
    .line 168
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    .line 169
    .line 170
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p0

    .line 174
    :cond_8
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 175
    .line 176
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_a

    .line 185
    .line 186
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 187
    .line 188
    if-eqz p0, :cond_9

    .line 189
    .line 190
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 191
    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    .line 195
    .line 196
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p0

    .line 200
    :cond_a
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 201
    .line 202
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-eqz p1, :cond_c

    .line 211
    .line 212
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 213
    .line 214
    if-eqz p0, :cond_b

    .line 215
    .line 216
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 217
    .line 218
    goto/16 :goto_1

    .line 219
    .line 220
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    .line 221
    .line 222
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p0

    .line 226
    :cond_c
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 227
    .line 228
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-eqz p1, :cond_e

    .line 237
    .line 238
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectHeaderViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 239
    .line 240
    if-eqz p0, :cond_d

    .line 241
    .line 242
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 243
    .line 244
    goto/16 :goto_1

    .line 245
    .line 246
    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    .line 247
    .line 248
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw p0

    .line 252
    :cond_e
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 253
    .line 254
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-eqz p1, :cond_10

    .line 263
    .line 264
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->wearableLinkBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 265
    .line 266
    if-eqz p0, :cond_f

    .line 267
    .line 268
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 269
    .line 270
    goto/16 :goto_1

    .line 271
    .line 272
    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    .line 273
    .line 274
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw p0

    .line 278
    :cond_10
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 279
    .line 280
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    if-eqz p1, :cond_12

    .line 289
    .line 290
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->spatialAudioViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 291
    .line 292
    if-eqz p0, :cond_11

    .line 293
    .line 294
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 295
    .line 296
    goto/16 :goto_1

    .line 297
    .line 298
    :cond_11
    new-instance p0, Ljava/lang/NullPointerException;

    .line 299
    .line 300
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw p0

    .line 304
    :cond_12
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 305
    .line 306
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    if-eqz p1, :cond_14

    .line 315
    .line 316
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->equalizerViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 317
    .line 318
    if-eqz p0, :cond_13

    .line 319
    .line 320
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 321
    .line 322
    goto/16 :goto_1

    .line 323
    .line 324
    :cond_13
    new-instance p0, Ljava/lang/NullPointerException;

    .line 325
    .line 326
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw p0

    .line 330
    :cond_14
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 331
    .line 332
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result p1

    .line 340
    if-eqz p1, :cond_16

    .line 341
    .line 342
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->voiceBoostViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 343
    .line 344
    if-eqz p0, :cond_15

    .line 345
    .line 346
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 347
    .line 348
    goto/16 :goto_1

    .line 349
    .line 350
    :cond_15
    new-instance p0, Ljava/lang/NullPointerException;

    .line 351
    .line 352
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw p0

    .line 356
    :cond_16
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 357
    .line 358
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    if-eqz p1, :cond_18

    .line 367
    .line 368
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->volumeNormalizationViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 369
    .line 370
    if-eqz p0, :cond_17

    .line 371
    .line 372
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 373
    .line 374
    goto/16 :goto_1

    .line 375
    .line 376
    :cond_17
    new-instance p0, Ljava/lang/NullPointerException;

    .line 377
    .line 378
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw p0

    .line 382
    :cond_18
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 383
    .line 384
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result p1

    .line 392
    if-eqz p1, :cond_1a

    .line 393
    .line 394
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->activeNoiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 395
    .line 396
    if-eqz p0, :cond_19

    .line 397
    .line 398
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 399
    .line 400
    goto/16 :goto_1

    .line 401
    .line 402
    :cond_19
    new-instance p0, Ljava/lang/NullPointerException;

    .line 403
    .line 404
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    throw p0

    .line 408
    :cond_1a
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 409
    .line 410
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result p1

    .line 418
    if-eqz p1, :cond_1c

    .line 419
    .line 420
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->adaptiveViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 421
    .line 422
    if-eqz p0, :cond_1b

    .line 423
    .line 424
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 425
    .line 426
    goto/16 :goto_1

    .line 427
    .line 428
    :cond_1b
    new-instance p0, Ljava/lang/NullPointerException;

    .line 429
    .line 430
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    throw p0

    .line 434
    :cond_1c
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 435
    .line 436
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result p1

    .line 444
    if-eqz p1, :cond_1e

    .line 445
    .line 446
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->ambientSoundViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 447
    .line 448
    if-eqz p0, :cond_1d

    .line 449
    .line 450
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 451
    .line 452
    goto/16 :goto_1

    .line 453
    .line 454
    :cond_1d
    new-instance p0, Ljava/lang/NullPointerException;

    .line 455
    .line 456
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    throw p0

    .line 460
    :cond_1e
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 461
    .line 462
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result p1

    .line 470
    if-eqz p1, :cond_20

    .line 471
    .line 472
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 473
    .line 474
    if-eqz p0, :cond_1f

    .line 475
    .line 476
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 477
    .line 478
    goto :goto_1

    .line 479
    :cond_1f
    new-instance p0, Ljava/lang/NullPointerException;

    .line 480
    .line 481
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    throw p0

    .line 485
    :cond_20
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 486
    .line 487
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result p1

    .line 495
    if-eqz p1, :cond_22

    .line 496
    .line 497
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 498
    .line 499
    if-eqz p0, :cond_21

    .line 500
    .line 501
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 502
    .line 503
    goto :goto_1

    .line 504
    :cond_21
    new-instance p0, Ljava/lang/NullPointerException;

    .line 505
    .line 506
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    throw p0

    .line 510
    :cond_22
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 511
    .line 512
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result p1

    .line 520
    if-eqz p1, :cond_24

    .line 521
    .line 522
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlOffViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 523
    .line 524
    if-eqz p0, :cond_23

    .line 525
    .line 526
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 527
    .line 528
    goto :goto_1

    .line 529
    :cond_23
    new-instance p0, Ljava/lang/NullPointerException;

    .line 530
    .line 531
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    throw p0

    .line 535
    :cond_24
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 536
    .line 537
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 538
    .line 539
    .line 540
    move-result-object p1

    .line 541
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result p1

    .line 545
    if-eqz p1, :cond_26

    .line 546
    .line 547
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingSwitchBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 548
    .line 549
    if-eqz p0, :cond_25

    .line 550
    .line 551
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 552
    .line 553
    goto :goto_1

    .line 554
    :cond_25
    new-instance p0, Ljava/lang/NullPointerException;

    .line 555
    .line 556
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    throw p0

    .line 560
    :cond_26
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 561
    .line 562
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 563
    .line 564
    .line 565
    move-result-object p1

    .line 566
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result p1

    .line 570
    if-eqz p1, :cond_28

    .line 571
    .line 572
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->routineTestViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 573
    .line 574
    if-eqz p0, :cond_27

    .line 575
    .line 576
    check-cast p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 577
    .line 578
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->onCreateView()V

    .line 579
    .line 580
    .line 581
    iget-object p0, p2, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;

    .line 582
    .line 583
    return-object p0

    .line 584
    :cond_27
    new-instance p0, Ljava/lang/NullPointerException;

    .line 585
    .line 586
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    throw p0

    .line 590
    :cond_28
    new-instance p0, Ljava/lang/RuntimeException;

    .line 591
    .line 592
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 593
    .line 594
    .line 595
    throw p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x13a6

    .line 2
    .line 3
    return p0
.end method

.method public final getViewModelProvider()Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftQpDetailAdapter;->viewModelProvider:Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method
