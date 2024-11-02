.class public final Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$2;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 25

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Boolean;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "showAudioEffectBox="

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "SoundCraft.DetailPageView"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-object/from16 v0, p0

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$2;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;->audioEffectBox:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->getVmProvider()Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-class v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 44
    .line 45
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-class v5, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 50
    .line 51
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    const-class v7, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 60
    .line 61
    const-class v8, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 62
    .line 63
    const-class v9, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 64
    .line 65
    const-class v10, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 66
    .line 67
    const-class v11, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 68
    .line 69
    const-class v12, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 70
    .line 71
    const-class v13, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 72
    .line 73
    const-class v14, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 74
    .line 75
    const-class v15, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 76
    .line 77
    const-class v16, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 78
    .line 79
    const-class v17, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 80
    .line 81
    const-class v18, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 82
    .line 83
    const-class v19, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 84
    .line 85
    const-class v20, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 86
    .line 87
    const-class v21, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 88
    .line 89
    const-class v22, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 90
    .line 91
    const-string v1, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectBoxViewModel"

    .line 92
    .line 93
    if-eqz v6, :cond_2

    .line 94
    .line 95
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->craftViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 96
    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_2
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-eqz v6, :cond_4

    .line 118
    .line 119
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->actionBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 120
    .line 121
    if-eqz v2, :cond_3

    .line 122
    .line 123
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_4
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-eqz v6, :cond_6

    .line 142
    .line 143
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 144
    .line 145
    if-eqz v2, :cond_5

    .line 146
    .line 147
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 148
    .line 149
    goto/16 :goto_1

    .line 150
    .line 151
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    .line 152
    .line 153
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-eqz v6, :cond_8

    .line 166
    .line 167
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 168
    .line 169
    if-eqz v2, :cond_7

    .line 170
    .line 171
    goto/16 :goto_1

    .line 172
    .line 173
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    .line 174
    .line 175
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw v0

    .line 179
    :cond_8
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-eqz v6, :cond_a

    .line 188
    .line 189
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectHeaderViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 190
    .line 191
    if-eqz v2, :cond_9

    .line 192
    .line 193
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 194
    .line 195
    goto/16 :goto_1

    .line 196
    .line 197
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    .line 198
    .line 199
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw v0

    .line 203
    :cond_a
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-eqz v6, :cond_c

    .line 212
    .line 213
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->wearableLinkBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 214
    .line 215
    if-eqz v2, :cond_b

    .line 216
    .line 217
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 218
    .line 219
    goto/16 :goto_1

    .line 220
    .line 221
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    .line 222
    .line 223
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v0

    .line 227
    :cond_c
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    if-eqz v6, :cond_e

    .line 236
    .line 237
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->spatialAudioViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 238
    .line 239
    if-eqz v2, :cond_d

    .line 240
    .line 241
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    .line 246
    .line 247
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw v0

    .line 251
    :cond_e
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    if-eqz v6, :cond_10

    .line 260
    .line 261
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->equalizerViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 262
    .line 263
    if-eqz v2, :cond_f

    .line 264
    .line 265
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    .line 270
    .line 271
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw v0

    .line 275
    :cond_10
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    if-eqz v6, :cond_12

    .line 284
    .line 285
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->voiceBoostViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 286
    .line 287
    if-eqz v2, :cond_11

    .line 288
    .line 289
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 290
    .line 291
    goto/16 :goto_1

    .line 292
    .line 293
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    .line 294
    .line 295
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw v0

    .line 299
    :cond_12
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v6

    .line 307
    if-eqz v6, :cond_14

    .line 308
    .line 309
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->volumeNormalizationViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 310
    .line 311
    if-eqz v2, :cond_13

    .line 312
    .line 313
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 314
    .line 315
    goto/16 :goto_1

    .line 316
    .line 317
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    .line 318
    .line 319
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw v0

    .line 323
    :cond_14
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v6

    .line 331
    if-eqz v6, :cond_16

    .line 332
    .line 333
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->activeNoiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 334
    .line 335
    if-eqz v2, :cond_15

    .line 336
    .line 337
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 338
    .line 339
    goto/16 :goto_1

    .line 340
    .line 341
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    .line 342
    .line 343
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw v0

    .line 347
    :cond_16
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 348
    .line 349
    .line 350
    move-result-object v6

    .line 351
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    if-eqz v6, :cond_18

    .line 356
    .line 357
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->adaptiveViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 358
    .line 359
    if-eqz v2, :cond_17

    .line 360
    .line 361
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 362
    .line 363
    goto/16 :goto_1

    .line 364
    .line 365
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    .line 366
    .line 367
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw v0

    .line 371
    :cond_18
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v6

    .line 379
    if-eqz v6, :cond_1a

    .line 380
    .line 381
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->ambientSoundViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 382
    .line 383
    if-eqz v2, :cond_19

    .line 384
    .line 385
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 386
    .line 387
    goto/16 :goto_1

    .line 388
    .line 389
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    .line 390
    .line 391
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    throw v0

    .line 395
    :cond_1a
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 396
    .line 397
    .line 398
    move-result-object v6

    .line 399
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v6

    .line 403
    if-eqz v6, :cond_1c

    .line 404
    .line 405
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 406
    .line 407
    if-eqz v2, :cond_1b

    .line 408
    .line 409
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 410
    .line 411
    goto :goto_1

    .line 412
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    .line 413
    .line 414
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    throw v0

    .line 418
    :cond_1c
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 419
    .line 420
    .line 421
    move-result-object v6

    .line 422
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v6

    .line 426
    if-eqz v6, :cond_1e

    .line 427
    .line 428
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 429
    .line 430
    if-eqz v2, :cond_1d

    .line 431
    .line 432
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 433
    .line 434
    goto :goto_1

    .line 435
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    .line 436
    .line 437
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    throw v0

    .line 441
    :cond_1e
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 442
    .line 443
    .line 444
    move-result-object v6

    .line 445
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v6

    .line 449
    if-eqz v6, :cond_20

    .line 450
    .line 451
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlOffViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 452
    .line 453
    if-eqz v2, :cond_1f

    .line 454
    .line 455
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 456
    .line 457
    goto :goto_1

    .line 458
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    .line 459
    .line 460
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw v0

    .line 464
    :cond_20
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 465
    .line 466
    .line 467
    move-result-object v6

    .line 468
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v6

    .line 472
    if-eqz v6, :cond_22

    .line 473
    .line 474
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingSwitchBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 475
    .line 476
    if-eqz v2, :cond_21

    .line 477
    .line 478
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 479
    .line 480
    goto :goto_1

    .line 481
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    .line 482
    .line 483
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    throw v0

    .line 487
    :cond_22
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 488
    .line 489
    .line 490
    move-result-object v6

    .line 491
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v4

    .line 495
    if-eqz v4, :cond_e1

    .line 496
    .line 497
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->routineTestViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 498
    .line 499
    if-eqz v2, :cond_e0

    .line 500
    .line 501
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 502
    .line 503
    :goto_1
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;->notifyChange()V

    .line 504
    .line 505
    .line 506
    const-string/jumbo v2, "updateLayout"

    .line 507
    .line 508
    .line 509
    const-string v4, "SoundCraft.AudioEffectBoxView"

    .line 510
    .line 511
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;->effectItemList:Landroid/widget/LinearLayout;

    .line 519
    .line 520
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->getVmProvider()Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 528
    .line 529
    .line 530
    move-result-object v6

    .line 531
    move-object/from16 p1, v0

    .line 532
    .line 533
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-eqz v0, :cond_24

    .line 542
    .line 543
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->craftViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 544
    .line 545
    if-eqz v0, :cond_23

    .line 546
    .line 547
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 548
    .line 549
    goto/16 :goto_2

    .line 550
    .line 551
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    .line 552
    .line 553
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    throw v0

    .line 557
    :cond_24
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-eqz v0, :cond_26

    .line 566
    .line 567
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->actionBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 568
    .line 569
    if-eqz v0, :cond_25

    .line 570
    .line 571
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 572
    .line 573
    goto/16 :goto_2

    .line 574
    .line 575
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    .line 576
    .line 577
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    throw v0

    .line 581
    :cond_26
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move-result v0

    .line 589
    if-eqz v0, :cond_28

    .line 590
    .line 591
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 592
    .line 593
    if-eqz v0, :cond_27

    .line 594
    .line 595
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 596
    .line 597
    goto/16 :goto_2

    .line 598
    .line 599
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    .line 600
    .line 601
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    throw v0

    .line 605
    :cond_28
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v0

    .line 613
    if-eqz v0, :cond_2a

    .line 614
    .line 615
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 616
    .line 617
    if-eqz v0, :cond_29

    .line 618
    .line 619
    goto/16 :goto_2

    .line 620
    .line 621
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    .line 622
    .line 623
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    throw v0

    .line 627
    :cond_2a
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    if-eqz v0, :cond_2c

    .line 636
    .line 637
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectHeaderViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 638
    .line 639
    if-eqz v0, :cond_2b

    .line 640
    .line 641
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 642
    .line 643
    goto/16 :goto_2

    .line 644
    .line 645
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    .line 646
    .line 647
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    throw v0

    .line 651
    :cond_2c
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    if-eqz v0, :cond_2e

    .line 660
    .line 661
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->wearableLinkBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 662
    .line 663
    if-eqz v0, :cond_2d

    .line 664
    .line 665
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 666
    .line 667
    goto/16 :goto_2

    .line 668
    .line 669
    :cond_2d
    new-instance v0, Ljava/lang/NullPointerException;

    .line 670
    .line 671
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    throw v0

    .line 675
    :cond_2e
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    move-result v0

    .line 683
    if-eqz v0, :cond_30

    .line 684
    .line 685
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->spatialAudioViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 686
    .line 687
    if-eqz v0, :cond_2f

    .line 688
    .line 689
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 690
    .line 691
    goto/16 :goto_2

    .line 692
    .line 693
    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    .line 694
    .line 695
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    throw v0

    .line 699
    :cond_30
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 704
    .line 705
    .line 706
    move-result v0

    .line 707
    if-eqz v0, :cond_32

    .line 708
    .line 709
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->equalizerViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 710
    .line 711
    if-eqz v0, :cond_31

    .line 712
    .line 713
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 714
    .line 715
    goto/16 :goto_2

    .line 716
    .line 717
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    .line 718
    .line 719
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    throw v0

    .line 723
    :cond_32
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 728
    .line 729
    .line 730
    move-result v0

    .line 731
    if-eqz v0, :cond_34

    .line 732
    .line 733
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->voiceBoostViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 734
    .line 735
    if-eqz v0, :cond_33

    .line 736
    .line 737
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 738
    .line 739
    goto/16 :goto_2

    .line 740
    .line 741
    :cond_33
    new-instance v0, Ljava/lang/NullPointerException;

    .line 742
    .line 743
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    throw v0

    .line 747
    :cond_34
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    move-result v0

    .line 755
    if-eqz v0, :cond_36

    .line 756
    .line 757
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->volumeNormalizationViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 758
    .line 759
    if-eqz v0, :cond_35

    .line 760
    .line 761
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 762
    .line 763
    goto/16 :goto_2

    .line 764
    .line 765
    :cond_35
    new-instance v0, Ljava/lang/NullPointerException;

    .line 766
    .line 767
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    throw v0

    .line 771
    :cond_36
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 776
    .line 777
    .line 778
    move-result v0

    .line 779
    if-eqz v0, :cond_38

    .line 780
    .line 781
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->activeNoiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 782
    .line 783
    if-eqz v0, :cond_37

    .line 784
    .line 785
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 786
    .line 787
    goto/16 :goto_2

    .line 788
    .line 789
    :cond_37
    new-instance v0, Ljava/lang/NullPointerException;

    .line 790
    .line 791
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    throw v0

    .line 795
    :cond_38
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    move-result v0

    .line 803
    if-eqz v0, :cond_3a

    .line 804
    .line 805
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->adaptiveViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 806
    .line 807
    if-eqz v0, :cond_39

    .line 808
    .line 809
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 810
    .line 811
    goto/16 :goto_2

    .line 812
    .line 813
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    .line 814
    .line 815
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    throw v0

    .line 819
    :cond_3a
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    move-result v0

    .line 827
    if-eqz v0, :cond_3c

    .line 828
    .line 829
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->ambientSoundViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 830
    .line 831
    if-eqz v0, :cond_3b

    .line 832
    .line 833
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 834
    .line 835
    goto/16 :goto_2

    .line 836
    .line 837
    :cond_3b
    new-instance v0, Ljava/lang/NullPointerException;

    .line 838
    .line 839
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    throw v0

    .line 843
    :cond_3c
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 848
    .line 849
    .line 850
    move-result v0

    .line 851
    if-eqz v0, :cond_3e

    .line 852
    .line 853
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 854
    .line 855
    if-eqz v0, :cond_3d

    .line 856
    .line 857
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 858
    .line 859
    goto :goto_2

    .line 860
    :cond_3d
    new-instance v0, Ljava/lang/NullPointerException;

    .line 861
    .line 862
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    throw v0

    .line 866
    :cond_3e
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 867
    .line 868
    .line 869
    move-result-object v0

    .line 870
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 871
    .line 872
    .line 873
    move-result v0

    .line 874
    if-eqz v0, :cond_40

    .line 875
    .line 876
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 877
    .line 878
    if-eqz v0, :cond_3f

    .line 879
    .line 880
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 881
    .line 882
    goto :goto_2

    .line 883
    :cond_3f
    new-instance v0, Ljava/lang/NullPointerException;

    .line 884
    .line 885
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    throw v0

    .line 889
    :cond_40
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 894
    .line 895
    .line 896
    move-result v0

    .line 897
    if-eqz v0, :cond_42

    .line 898
    .line 899
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlOffViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 900
    .line 901
    if-eqz v0, :cond_41

    .line 902
    .line 903
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 904
    .line 905
    goto :goto_2

    .line 906
    :cond_41
    new-instance v0, Ljava/lang/NullPointerException;

    .line 907
    .line 908
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    throw v0

    .line 912
    :cond_42
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 917
    .line 918
    .line 919
    move-result v0

    .line 920
    if-eqz v0, :cond_44

    .line 921
    .line 922
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingSwitchBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 923
    .line 924
    if-eqz v0, :cond_43

    .line 925
    .line 926
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 927
    .line 928
    goto :goto_2

    .line 929
    :cond_43
    new-instance v0, Ljava/lang/NullPointerException;

    .line 930
    .line 931
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    throw v0

    .line 935
    :cond_44
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 940
    .line 941
    .line 942
    move-result v0

    .line 943
    if-eqz v0, :cond_df

    .line 944
    .line 945
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->routineTestViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 946
    .line 947
    if-eqz v0, :cond_de

    .line 948
    .line 949
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 950
    .line 951
    :goto_2
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;->showSpatialAudio:Landroidx/lifecycle/MutableLiveData;

    .line 952
    .line 953
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    move-result-object v1

    .line 957
    check-cast v1, Ljava/lang/Boolean;

    .line 958
    .line 959
    if-eqz v1, :cond_6a

    .line 960
    .line 961
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 962
    .line 963
    .line 964
    move-result v23

    .line 965
    if-eqz v23, :cond_45

    .line 966
    .line 967
    goto :goto_3

    .line 968
    :cond_45
    const/4 v1, 0x0

    .line 969
    :goto_3
    if-eqz v1, :cond_6a

    .line 970
    .line 971
    const-string v1, "addSpatialAudioView"

    .line 972
    .line 973
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    .line 975
    .line 976
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->getVmProvider()Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 977
    .line 978
    .line 979
    move-result-object v1

    .line 980
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 981
    .line 982
    .line 983
    move-result-object v2

    .line 984
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 985
    .line 986
    .line 987
    move-result-object v6

    .line 988
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 989
    .line 990
    .line 991
    move-result v6

    .line 992
    move-object/from16 v24, v5

    .line 993
    .line 994
    const-string v5, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.SpatialAudioViewModel"

    .line 995
    .line 996
    if-eqz v6, :cond_47

    .line 997
    .line 998
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->craftViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 999
    .line 1000
    if-eqz v1, :cond_46

    .line 1001
    .line 1002
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1003
    .line 1004
    :goto_4
    move-object/from16 v2, p1

    .line 1005
    .line 1006
    goto/16 :goto_5

    .line 1007
    .line 1008
    :cond_46
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1009
    .line 1010
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1011
    .line 1012
    .line 1013
    throw v0

    .line 1014
    :cond_47
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v6

    .line 1018
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v6

    .line 1022
    if-eqz v6, :cond_49

    .line 1023
    .line 1024
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->actionBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 1025
    .line 1026
    if-eqz v1, :cond_48

    .line 1027
    .line 1028
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1029
    .line 1030
    goto :goto_4

    .line 1031
    :cond_48
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1032
    .line 1033
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1034
    .line 1035
    .line 1036
    throw v0

    .line 1037
    :cond_49
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v6

    .line 1041
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v6

    .line 1045
    if-eqz v6, :cond_4b

    .line 1046
    .line 1047
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 1048
    .line 1049
    if-eqz v1, :cond_4a

    .line 1050
    .line 1051
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1052
    .line 1053
    goto :goto_4

    .line 1054
    :cond_4a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1055
    .line 1056
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1057
    .line 1058
    .line 1059
    throw v0

    .line 1060
    :cond_4b
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v6

    .line 1064
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1065
    .line 1066
    .line 1067
    move-result v6

    .line 1068
    if-eqz v6, :cond_4d

    .line 1069
    .line 1070
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1071
    .line 1072
    if-eqz v1, :cond_4c

    .line 1073
    .line 1074
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1075
    .line 1076
    goto :goto_4

    .line 1077
    :cond_4c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1078
    .line 1079
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1080
    .line 1081
    .line 1082
    throw v0

    .line 1083
    :cond_4d
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v6

    .line 1087
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1088
    .line 1089
    .line 1090
    move-result v6

    .line 1091
    if-eqz v6, :cond_4f

    .line 1092
    .line 1093
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectHeaderViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1094
    .line 1095
    if-eqz v1, :cond_4e

    .line 1096
    .line 1097
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1098
    .line 1099
    goto :goto_4

    .line 1100
    :cond_4e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1101
    .line 1102
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1103
    .line 1104
    .line 1105
    throw v0

    .line 1106
    :cond_4f
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v6

    .line 1110
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1111
    .line 1112
    .line 1113
    move-result v6

    .line 1114
    if-eqz v6, :cond_51

    .line 1115
    .line 1116
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->wearableLinkBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 1117
    .line 1118
    if-eqz v1, :cond_50

    .line 1119
    .line 1120
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1121
    .line 1122
    goto :goto_4

    .line 1123
    :cond_50
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1124
    .line 1125
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1126
    .line 1127
    .line 1128
    throw v0

    .line 1129
    :cond_51
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v6

    .line 1133
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1134
    .line 1135
    .line 1136
    move-result v6

    .line 1137
    if-eqz v6, :cond_53

    .line 1138
    .line 1139
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->spatialAudioViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1140
    .line 1141
    if-eqz v1, :cond_52

    .line 1142
    .line 1143
    goto/16 :goto_4

    .line 1144
    .line 1145
    :cond_52
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1146
    .line 1147
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1148
    .line 1149
    .line 1150
    throw v0

    .line 1151
    :cond_53
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v6

    .line 1155
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1156
    .line 1157
    .line 1158
    move-result v6

    .line 1159
    if-eqz v6, :cond_55

    .line 1160
    .line 1161
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->equalizerViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1162
    .line 1163
    if-eqz v1, :cond_54

    .line 1164
    .line 1165
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1166
    .line 1167
    goto/16 :goto_4

    .line 1168
    .line 1169
    :cond_54
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1170
    .line 1171
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1172
    .line 1173
    .line 1174
    throw v0

    .line 1175
    :cond_55
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v6

    .line 1179
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1180
    .line 1181
    .line 1182
    move-result v6

    .line 1183
    if-eqz v6, :cond_57

    .line 1184
    .line 1185
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->voiceBoostViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 1186
    .line 1187
    if-eqz v1, :cond_56

    .line 1188
    .line 1189
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1190
    .line 1191
    goto/16 :goto_4

    .line 1192
    .line 1193
    :cond_56
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1194
    .line 1195
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1196
    .line 1197
    .line 1198
    throw v0

    .line 1199
    :cond_57
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v6

    .line 1203
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1204
    .line 1205
    .line 1206
    move-result v6

    .line 1207
    if-eqz v6, :cond_59

    .line 1208
    .line 1209
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->volumeNormalizationViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 1210
    .line 1211
    if-eqz v1, :cond_58

    .line 1212
    .line 1213
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1214
    .line 1215
    goto/16 :goto_4

    .line 1216
    .line 1217
    :cond_58
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1218
    .line 1219
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1220
    .line 1221
    .line 1222
    throw v0

    .line 1223
    :cond_59
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v6

    .line 1227
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1228
    .line 1229
    .line 1230
    move-result v6

    .line 1231
    if-eqz v6, :cond_5b

    .line 1232
    .line 1233
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->activeNoiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 1234
    .line 1235
    if-eqz v1, :cond_5a

    .line 1236
    .line 1237
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1238
    .line 1239
    goto/16 :goto_4

    .line 1240
    .line 1241
    :cond_5a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1242
    .line 1243
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1244
    .line 1245
    .line 1246
    throw v0

    .line 1247
    :cond_5b
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v6

    .line 1251
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1252
    .line 1253
    .line 1254
    move-result v6

    .line 1255
    if-eqz v6, :cond_5d

    .line 1256
    .line 1257
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->adaptiveViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 1258
    .line 1259
    if-eqz v1, :cond_5c

    .line 1260
    .line 1261
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1262
    .line 1263
    goto/16 :goto_4

    .line 1264
    .line 1265
    :cond_5c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1266
    .line 1267
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1268
    .line 1269
    .line 1270
    throw v0

    .line 1271
    :cond_5d
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v6

    .line 1275
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1276
    .line 1277
    .line 1278
    move-result v6

    .line 1279
    if-eqz v6, :cond_5f

    .line 1280
    .line 1281
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->ambientSoundViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 1282
    .line 1283
    if-eqz v1, :cond_5e

    .line 1284
    .line 1285
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1286
    .line 1287
    goto/16 :goto_4

    .line 1288
    .line 1289
    :cond_5e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1290
    .line 1291
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1292
    .line 1293
    .line 1294
    throw v0

    .line 1295
    :cond_5f
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v6

    .line 1299
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1300
    .line 1301
    .line 1302
    move-result v6

    .line 1303
    if-eqz v6, :cond_61

    .line 1304
    .line 1305
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1306
    .line 1307
    if-eqz v1, :cond_60

    .line 1308
    .line 1309
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1310
    .line 1311
    goto/16 :goto_4

    .line 1312
    .line 1313
    :cond_60
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1314
    .line 1315
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1316
    .line 1317
    .line 1318
    throw v0

    .line 1319
    :cond_61
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v6

    .line 1323
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1324
    .line 1325
    .line 1326
    move-result v6

    .line 1327
    if-eqz v6, :cond_63

    .line 1328
    .line 1329
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1330
    .line 1331
    if-eqz v1, :cond_62

    .line 1332
    .line 1333
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1334
    .line 1335
    goto/16 :goto_4

    .line 1336
    .line 1337
    :cond_62
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1338
    .line 1339
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1340
    .line 1341
    .line 1342
    throw v0

    .line 1343
    :cond_63
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v6

    .line 1347
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1348
    .line 1349
    .line 1350
    move-result v6

    .line 1351
    if-eqz v6, :cond_65

    .line 1352
    .line 1353
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlOffViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 1354
    .line 1355
    if-eqz v1, :cond_64

    .line 1356
    .line 1357
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1358
    .line 1359
    goto/16 :goto_4

    .line 1360
    .line 1361
    :cond_64
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1362
    .line 1363
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1364
    .line 1365
    .line 1366
    throw v0

    .line 1367
    :cond_65
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v6

    .line 1371
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1372
    .line 1373
    .line 1374
    move-result v6

    .line 1375
    if-eqz v6, :cond_67

    .line 1376
    .line 1377
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingSwitchBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 1378
    .line 1379
    if-eqz v1, :cond_66

    .line 1380
    .line 1381
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1382
    .line 1383
    goto/16 :goto_4

    .line 1384
    .line 1385
    :cond_66
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1386
    .line 1387
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1388
    .line 1389
    .line 1390
    throw v0

    .line 1391
    :cond_67
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v6

    .line 1395
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1396
    .line 1397
    .line 1398
    move-result v2

    .line 1399
    if-eqz v2, :cond_69

    .line 1400
    .line 1401
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->routineTestViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 1402
    .line 1403
    if-eqz v1, :cond_68

    .line 1404
    .line 1405
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1406
    .line 1407
    goto/16 :goto_4

    .line 1408
    .line 1409
    :goto_5
    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->createItemView(Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseViewModel;)Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/BaseAudioEffectItemView;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v1

    .line 1413
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v5

    .line 1417
    iget-object v5, v5, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;->effectItemList:Landroid/widget/LinearLayout;

    .line 1418
    .line 1419
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/BaseAudioEffectItemView;->getRootView()Landroid/view/ViewGroup;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v6

    .line 1423
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1424
    .line 1425
    .line 1426
    iput-object v1, v2, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->spatialAudioView:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/BaseAudioEffectItemView;

    .line 1427
    .line 1428
    const/4 v1, 0x1

    .line 1429
    goto :goto_6

    .line 1430
    :cond_68
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1431
    .line 1432
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1433
    .line 1434
    .line 1435
    throw v0

    .line 1436
    :cond_69
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1437
    .line 1438
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1439
    .line 1440
    .line 1441
    throw v0

    .line 1442
    :cond_6a
    move-object/from16 v2, p1

    .line 1443
    .line 1444
    move-object/from16 v24, v5

    .line 1445
    .line 1446
    const/4 v1, 0x0

    .line 1447
    :goto_6
    iget-object v5, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;->showEqualizer:Landroidx/lifecycle/MutableLiveData;

    .line 1448
    .line 1449
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v5

    .line 1453
    check-cast v5, Ljava/lang/Boolean;

    .line 1454
    .line 1455
    if-eqz v5, :cond_90

    .line 1456
    .line 1457
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1458
    .line 1459
    .line 1460
    move-result v6

    .line 1461
    if-eqz v6, :cond_6b

    .line 1462
    .line 1463
    goto :goto_7

    .line 1464
    :cond_6b
    const/4 v5, 0x0

    .line 1465
    :goto_7
    if-eqz v5, :cond_90

    .line 1466
    .line 1467
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->addDivider()V

    .line 1468
    .line 1469
    .line 1470
    const-string v1, "addEqualizerView"

    .line 1471
    .line 1472
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->getVmProvider()Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v1

    .line 1479
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v5

    .line 1483
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v6

    .line 1487
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1488
    .line 1489
    .line 1490
    move-result v6

    .line 1491
    move-object/from16 p1, v4

    .line 1492
    .line 1493
    const-string v4, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.EqualizerViewModel"

    .line 1494
    .line 1495
    if-eqz v6, :cond_6d

    .line 1496
    .line 1497
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->craftViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 1498
    .line 1499
    if-eqz v1, :cond_6c

    .line 1500
    .line 1501
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1502
    .line 1503
    goto/16 :goto_8

    .line 1504
    .line 1505
    :cond_6c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1506
    .line 1507
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1508
    .line 1509
    .line 1510
    throw v0

    .line 1511
    :cond_6d
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v6

    .line 1515
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1516
    .line 1517
    .line 1518
    move-result v6

    .line 1519
    if-eqz v6, :cond_6f

    .line 1520
    .line 1521
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->actionBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 1522
    .line 1523
    if-eqz v1, :cond_6e

    .line 1524
    .line 1525
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1526
    .line 1527
    goto/16 :goto_8

    .line 1528
    .line 1529
    :cond_6e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1530
    .line 1531
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1532
    .line 1533
    .line 1534
    throw v0

    .line 1535
    :cond_6f
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v6

    .line 1539
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1540
    .line 1541
    .line 1542
    move-result v6

    .line 1543
    if-eqz v6, :cond_71

    .line 1544
    .line 1545
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 1546
    .line 1547
    if-eqz v1, :cond_70

    .line 1548
    .line 1549
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1550
    .line 1551
    goto/16 :goto_8

    .line 1552
    .line 1553
    :cond_70
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1554
    .line 1555
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1556
    .line 1557
    .line 1558
    throw v0

    .line 1559
    :cond_71
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1560
    .line 1561
    .line 1562
    move-result-object v6

    .line 1563
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1564
    .line 1565
    .line 1566
    move-result v6

    .line 1567
    if-eqz v6, :cond_73

    .line 1568
    .line 1569
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1570
    .line 1571
    if-eqz v1, :cond_72

    .line 1572
    .line 1573
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1574
    .line 1575
    goto/16 :goto_8

    .line 1576
    .line 1577
    :cond_72
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1578
    .line 1579
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1580
    .line 1581
    .line 1582
    throw v0

    .line 1583
    :cond_73
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v6

    .line 1587
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1588
    .line 1589
    .line 1590
    move-result v6

    .line 1591
    if-eqz v6, :cond_75

    .line 1592
    .line 1593
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectHeaderViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1594
    .line 1595
    if-eqz v1, :cond_74

    .line 1596
    .line 1597
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1598
    .line 1599
    goto/16 :goto_8

    .line 1600
    .line 1601
    :cond_74
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1602
    .line 1603
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1604
    .line 1605
    .line 1606
    throw v0

    .line 1607
    :cond_75
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v6

    .line 1611
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1612
    .line 1613
    .line 1614
    move-result v6

    .line 1615
    if-eqz v6, :cond_77

    .line 1616
    .line 1617
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->wearableLinkBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 1618
    .line 1619
    if-eqz v1, :cond_76

    .line 1620
    .line 1621
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1622
    .line 1623
    goto/16 :goto_8

    .line 1624
    .line 1625
    :cond_76
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1626
    .line 1627
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1628
    .line 1629
    .line 1630
    throw v0

    .line 1631
    :cond_77
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v6

    .line 1635
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1636
    .line 1637
    .line 1638
    move-result v6

    .line 1639
    if-eqz v6, :cond_79

    .line 1640
    .line 1641
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->spatialAudioViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1642
    .line 1643
    if-eqz v1, :cond_78

    .line 1644
    .line 1645
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1646
    .line 1647
    goto/16 :goto_8

    .line 1648
    .line 1649
    :cond_78
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1650
    .line 1651
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1652
    .line 1653
    .line 1654
    throw v0

    .line 1655
    :cond_79
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v6

    .line 1659
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1660
    .line 1661
    .line 1662
    move-result v6

    .line 1663
    if-eqz v6, :cond_7b

    .line 1664
    .line 1665
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->equalizerViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1666
    .line 1667
    if-eqz v1, :cond_7a

    .line 1668
    .line 1669
    goto/16 :goto_8

    .line 1670
    .line 1671
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1672
    .line 1673
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1674
    .line 1675
    .line 1676
    throw v0

    .line 1677
    :cond_7b
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v6

    .line 1681
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1682
    .line 1683
    .line 1684
    move-result v6

    .line 1685
    if-eqz v6, :cond_7d

    .line 1686
    .line 1687
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->voiceBoostViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 1688
    .line 1689
    if-eqz v1, :cond_7c

    .line 1690
    .line 1691
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1692
    .line 1693
    goto/16 :goto_8

    .line 1694
    .line 1695
    :cond_7c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1696
    .line 1697
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1698
    .line 1699
    .line 1700
    throw v0

    .line 1701
    :cond_7d
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1702
    .line 1703
    .line 1704
    move-result-object v6

    .line 1705
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1706
    .line 1707
    .line 1708
    move-result v6

    .line 1709
    if-eqz v6, :cond_7f

    .line 1710
    .line 1711
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->volumeNormalizationViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 1712
    .line 1713
    if-eqz v1, :cond_7e

    .line 1714
    .line 1715
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1716
    .line 1717
    goto/16 :goto_8

    .line 1718
    .line 1719
    :cond_7e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1720
    .line 1721
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1722
    .line 1723
    .line 1724
    throw v0

    .line 1725
    :cond_7f
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v6

    .line 1729
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1730
    .line 1731
    .line 1732
    move-result v6

    .line 1733
    if-eqz v6, :cond_81

    .line 1734
    .line 1735
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->activeNoiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 1736
    .line 1737
    if-eqz v1, :cond_80

    .line 1738
    .line 1739
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1740
    .line 1741
    goto/16 :goto_8

    .line 1742
    .line 1743
    :cond_80
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1744
    .line 1745
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1746
    .line 1747
    .line 1748
    throw v0

    .line 1749
    :cond_81
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v6

    .line 1753
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1754
    .line 1755
    .line 1756
    move-result v6

    .line 1757
    if-eqz v6, :cond_83

    .line 1758
    .line 1759
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->adaptiveViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 1760
    .line 1761
    if-eqz v1, :cond_82

    .line 1762
    .line 1763
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1764
    .line 1765
    goto/16 :goto_8

    .line 1766
    .line 1767
    :cond_82
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1768
    .line 1769
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1770
    .line 1771
    .line 1772
    throw v0

    .line 1773
    :cond_83
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1774
    .line 1775
    .line 1776
    move-result-object v6

    .line 1777
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1778
    .line 1779
    .line 1780
    move-result v6

    .line 1781
    if-eqz v6, :cond_85

    .line 1782
    .line 1783
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->ambientSoundViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 1784
    .line 1785
    if-eqz v1, :cond_84

    .line 1786
    .line 1787
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1788
    .line 1789
    goto/16 :goto_8

    .line 1790
    .line 1791
    :cond_84
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1792
    .line 1793
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1794
    .line 1795
    .line 1796
    throw v0

    .line 1797
    :cond_85
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v6

    .line 1801
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1802
    .line 1803
    .line 1804
    move-result v6

    .line 1805
    if-eqz v6, :cond_87

    .line 1806
    .line 1807
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1808
    .line 1809
    if-eqz v1, :cond_86

    .line 1810
    .line 1811
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1812
    .line 1813
    goto :goto_8

    .line 1814
    :cond_86
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1815
    .line 1816
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1817
    .line 1818
    .line 1819
    throw v0

    .line 1820
    :cond_87
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v6

    .line 1824
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1825
    .line 1826
    .line 1827
    move-result v6

    .line 1828
    if-eqz v6, :cond_89

    .line 1829
    .line 1830
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1831
    .line 1832
    if-eqz v1, :cond_88

    .line 1833
    .line 1834
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1835
    .line 1836
    goto :goto_8

    .line 1837
    :cond_88
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1838
    .line 1839
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1840
    .line 1841
    .line 1842
    throw v0

    .line 1843
    :cond_89
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1844
    .line 1845
    .line 1846
    move-result-object v6

    .line 1847
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1848
    .line 1849
    .line 1850
    move-result v6

    .line 1851
    if-eqz v6, :cond_8b

    .line 1852
    .line 1853
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlOffViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 1854
    .line 1855
    if-eqz v1, :cond_8a

    .line 1856
    .line 1857
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1858
    .line 1859
    goto :goto_8

    .line 1860
    :cond_8a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1861
    .line 1862
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1863
    .line 1864
    .line 1865
    throw v0

    .line 1866
    :cond_8b
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v6

    .line 1870
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1871
    .line 1872
    .line 1873
    move-result v6

    .line 1874
    if-eqz v6, :cond_8d

    .line 1875
    .line 1876
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingSwitchBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 1877
    .line 1878
    if-eqz v1, :cond_8c

    .line 1879
    .line 1880
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1881
    .line 1882
    goto :goto_8

    .line 1883
    :cond_8c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1884
    .line 1885
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1886
    .line 1887
    .line 1888
    throw v0

    .line 1889
    :cond_8d
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1890
    .line 1891
    .line 1892
    move-result-object v6

    .line 1893
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1894
    .line 1895
    .line 1896
    move-result v5

    .line 1897
    if-eqz v5, :cond_8f

    .line 1898
    .line 1899
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->routineTestViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 1900
    .line 1901
    if-eqz v1, :cond_8e

    .line 1902
    .line 1903
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1904
    .line 1905
    :goto_8
    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->createItemView(Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseViewModel;)Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/BaseAudioEffectItemView;

    .line 1906
    .line 1907
    .line 1908
    move-result-object v1

    .line 1909
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;

    .line 1910
    .line 1911
    .line 1912
    move-result-object v4

    .line 1913
    iget-object v4, v4, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;->effectItemList:Landroid/widget/LinearLayout;

    .line 1914
    .line 1915
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/BaseAudioEffectItemView;->getRootView()Landroid/view/ViewGroup;

    .line 1916
    .line 1917
    .line 1918
    move-result-object v5

    .line 1919
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1920
    .line 1921
    .line 1922
    iput-object v1, v2, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->equalizerView:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/BaseAudioEffectItemView;

    .line 1923
    .line 1924
    const/4 v1, 0x1

    .line 1925
    goto :goto_9

    .line 1926
    :cond_8e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1927
    .line 1928
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1929
    .line 1930
    .line 1931
    throw v0

    .line 1932
    :cond_8f
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1933
    .line 1934
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1935
    .line 1936
    .line 1937
    throw v0

    .line 1938
    :cond_90
    move-object/from16 p1, v4

    .line 1939
    .line 1940
    :goto_9
    iget-object v4, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;->showVoiceBoost:Landroidx/lifecycle/MutableLiveData;

    .line 1941
    .line 1942
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 1943
    .line 1944
    .line 1945
    move-result-object v4

    .line 1946
    check-cast v4, Ljava/lang/Boolean;

    .line 1947
    .line 1948
    if-eqz v4, :cond_b6

    .line 1949
    .line 1950
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1951
    .line 1952
    .line 1953
    move-result v5

    .line 1954
    if-eqz v5, :cond_91

    .line 1955
    .line 1956
    goto :goto_a

    .line 1957
    :cond_91
    const/4 v4, 0x0

    .line 1958
    :goto_a
    if-eqz v4, :cond_b6

    .line 1959
    .line 1960
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->addDivider()V

    .line 1961
    .line 1962
    .line 1963
    const-string v1, "addVoiceBoostView"

    .line 1964
    .line 1965
    move-object/from16 v4, p1

    .line 1966
    .line 1967
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    .line 1969
    .line 1970
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->getVmProvider()Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 1971
    .line 1972
    .line 1973
    move-result-object v1

    .line 1974
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v5

    .line 1978
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1979
    .line 1980
    .line 1981
    move-result-object v6

    .line 1982
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1983
    .line 1984
    .line 1985
    move-result v6

    .line 1986
    const-string v4, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.VoiceBoostViewModel"

    .line 1987
    .line 1988
    if-eqz v6, :cond_93

    .line 1989
    .line 1990
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->craftViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 1991
    .line 1992
    if-eqz v1, :cond_92

    .line 1993
    .line 1994
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 1995
    .line 1996
    goto/16 :goto_b

    .line 1997
    .line 1998
    :cond_92
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1999
    .line 2000
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2001
    .line 2002
    .line 2003
    throw v0

    .line 2004
    :cond_93
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2005
    .line 2006
    .line 2007
    move-result-object v6

    .line 2008
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2009
    .line 2010
    .line 2011
    move-result v6

    .line 2012
    if-eqz v6, :cond_95

    .line 2013
    .line 2014
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->actionBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 2015
    .line 2016
    if-eqz v1, :cond_94

    .line 2017
    .line 2018
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2019
    .line 2020
    goto/16 :goto_b

    .line 2021
    .line 2022
    :cond_94
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2023
    .line 2024
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2025
    .line 2026
    .line 2027
    throw v0

    .line 2028
    :cond_95
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2029
    .line 2030
    .line 2031
    move-result-object v6

    .line 2032
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2033
    .line 2034
    .line 2035
    move-result v6

    .line 2036
    if-eqz v6, :cond_97

    .line 2037
    .line 2038
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 2039
    .line 2040
    if-eqz v1, :cond_96

    .line 2041
    .line 2042
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2043
    .line 2044
    goto/16 :goto_b

    .line 2045
    .line 2046
    :cond_96
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2047
    .line 2048
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2049
    .line 2050
    .line 2051
    throw v0

    .line 2052
    :cond_97
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2053
    .line 2054
    .line 2055
    move-result-object v6

    .line 2056
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2057
    .line 2058
    .line 2059
    move-result v6

    .line 2060
    if-eqz v6, :cond_99

    .line 2061
    .line 2062
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 2063
    .line 2064
    if-eqz v1, :cond_98

    .line 2065
    .line 2066
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2067
    .line 2068
    goto/16 :goto_b

    .line 2069
    .line 2070
    :cond_98
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2071
    .line 2072
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2073
    .line 2074
    .line 2075
    throw v0

    .line 2076
    :cond_99
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2077
    .line 2078
    .line 2079
    move-result-object v6

    .line 2080
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2081
    .line 2082
    .line 2083
    move-result v6

    .line 2084
    if-eqz v6, :cond_9b

    .line 2085
    .line 2086
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectHeaderViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 2087
    .line 2088
    if-eqz v1, :cond_9a

    .line 2089
    .line 2090
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2091
    .line 2092
    goto/16 :goto_b

    .line 2093
    .line 2094
    :cond_9a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2095
    .line 2096
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2097
    .line 2098
    .line 2099
    throw v0

    .line 2100
    :cond_9b
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2101
    .line 2102
    .line 2103
    move-result-object v6

    .line 2104
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2105
    .line 2106
    .line 2107
    move-result v6

    .line 2108
    if-eqz v6, :cond_9d

    .line 2109
    .line 2110
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->wearableLinkBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2111
    .line 2112
    if-eqz v1, :cond_9c

    .line 2113
    .line 2114
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2115
    .line 2116
    goto/16 :goto_b

    .line 2117
    .line 2118
    :cond_9c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2119
    .line 2120
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2121
    .line 2122
    .line 2123
    throw v0

    .line 2124
    :cond_9d
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2125
    .line 2126
    .line 2127
    move-result-object v6

    .line 2128
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2129
    .line 2130
    .line 2131
    move-result v6

    .line 2132
    if-eqz v6, :cond_9f

    .line 2133
    .line 2134
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->spatialAudioViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 2135
    .line 2136
    if-eqz v1, :cond_9e

    .line 2137
    .line 2138
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2139
    .line 2140
    goto/16 :goto_b

    .line 2141
    .line 2142
    :cond_9e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2143
    .line 2144
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2145
    .line 2146
    .line 2147
    throw v0

    .line 2148
    :cond_9f
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2149
    .line 2150
    .line 2151
    move-result-object v6

    .line 2152
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2153
    .line 2154
    .line 2155
    move-result v6

    .line 2156
    if-eqz v6, :cond_a1

    .line 2157
    .line 2158
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->equalizerViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 2159
    .line 2160
    if-eqz v1, :cond_a0

    .line 2161
    .line 2162
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2163
    .line 2164
    goto/16 :goto_b

    .line 2165
    .line 2166
    :cond_a0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2167
    .line 2168
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2169
    .line 2170
    .line 2171
    throw v0

    .line 2172
    :cond_a1
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v6

    .line 2176
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2177
    .line 2178
    .line 2179
    move-result v6

    .line 2180
    if-eqz v6, :cond_a3

    .line 2181
    .line 2182
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->voiceBoostViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2183
    .line 2184
    if-eqz v1, :cond_a2

    .line 2185
    .line 2186
    goto/16 :goto_b

    .line 2187
    .line 2188
    :cond_a2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2189
    .line 2190
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2191
    .line 2192
    .line 2193
    throw v0

    .line 2194
    :cond_a3
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2195
    .line 2196
    .line 2197
    move-result-object v6

    .line 2198
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2199
    .line 2200
    .line 2201
    move-result v6

    .line 2202
    if-eqz v6, :cond_a5

    .line 2203
    .line 2204
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->volumeNormalizationViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2205
    .line 2206
    if-eqz v1, :cond_a4

    .line 2207
    .line 2208
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2209
    .line 2210
    goto/16 :goto_b

    .line 2211
    .line 2212
    :cond_a4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2213
    .line 2214
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2215
    .line 2216
    .line 2217
    throw v0

    .line 2218
    :cond_a5
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2219
    .line 2220
    .line 2221
    move-result-object v6

    .line 2222
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2223
    .line 2224
    .line 2225
    move-result v6

    .line 2226
    if-eqz v6, :cond_a7

    .line 2227
    .line 2228
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->activeNoiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2229
    .line 2230
    if-eqz v1, :cond_a6

    .line 2231
    .line 2232
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2233
    .line 2234
    goto/16 :goto_b

    .line 2235
    .line 2236
    :cond_a6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2237
    .line 2238
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2239
    .line 2240
    .line 2241
    throw v0

    .line 2242
    :cond_a7
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2243
    .line 2244
    .line 2245
    move-result-object v6

    .line 2246
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2247
    .line 2248
    .line 2249
    move-result v6

    .line 2250
    if-eqz v6, :cond_a9

    .line 2251
    .line 2252
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->adaptiveViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2253
    .line 2254
    if-eqz v1, :cond_a8

    .line 2255
    .line 2256
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2257
    .line 2258
    goto/16 :goto_b

    .line 2259
    .line 2260
    :cond_a8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2261
    .line 2262
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2263
    .line 2264
    .line 2265
    throw v0

    .line 2266
    :cond_a9
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2267
    .line 2268
    .line 2269
    move-result-object v6

    .line 2270
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2271
    .line 2272
    .line 2273
    move-result v6

    .line 2274
    if-eqz v6, :cond_ab

    .line 2275
    .line 2276
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->ambientSoundViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 2277
    .line 2278
    if-eqz v1, :cond_aa

    .line 2279
    .line 2280
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2281
    .line 2282
    goto/16 :goto_b

    .line 2283
    .line 2284
    :cond_aa
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2285
    .line 2286
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2287
    .line 2288
    .line 2289
    throw v0

    .line 2290
    :cond_ab
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2291
    .line 2292
    .line 2293
    move-result-object v6

    .line 2294
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2295
    .line 2296
    .line 2297
    move-result v6

    .line 2298
    if-eqz v6, :cond_ad

    .line 2299
    .line 2300
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 2301
    .line 2302
    if-eqz v1, :cond_ac

    .line 2303
    .line 2304
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2305
    .line 2306
    goto :goto_b

    .line 2307
    :cond_ac
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2308
    .line 2309
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2310
    .line 2311
    .line 2312
    throw v0

    .line 2313
    :cond_ad
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2314
    .line 2315
    .line 2316
    move-result-object v6

    .line 2317
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2318
    .line 2319
    .line 2320
    move-result v6

    .line 2321
    if-eqz v6, :cond_af

    .line 2322
    .line 2323
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 2324
    .line 2325
    if-eqz v1, :cond_ae

    .line 2326
    .line 2327
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2328
    .line 2329
    goto :goto_b

    .line 2330
    :cond_ae
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2331
    .line 2332
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2333
    .line 2334
    .line 2335
    throw v0

    .line 2336
    :cond_af
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2337
    .line 2338
    .line 2339
    move-result-object v6

    .line 2340
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2341
    .line 2342
    .line 2343
    move-result v6

    .line 2344
    if-eqz v6, :cond_b1

    .line 2345
    .line 2346
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlOffViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 2347
    .line 2348
    if-eqz v1, :cond_b0

    .line 2349
    .line 2350
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2351
    .line 2352
    goto :goto_b

    .line 2353
    :cond_b0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2354
    .line 2355
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2356
    .line 2357
    .line 2358
    throw v0

    .line 2359
    :cond_b1
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2360
    .line 2361
    .line 2362
    move-result-object v6

    .line 2363
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2364
    .line 2365
    .line 2366
    move-result v6

    .line 2367
    if-eqz v6, :cond_b3

    .line 2368
    .line 2369
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingSwitchBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 2370
    .line 2371
    if-eqz v1, :cond_b2

    .line 2372
    .line 2373
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2374
    .line 2375
    goto :goto_b

    .line 2376
    :cond_b2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2377
    .line 2378
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2379
    .line 2380
    .line 2381
    throw v0

    .line 2382
    :cond_b3
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2383
    .line 2384
    .line 2385
    move-result-object v6

    .line 2386
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2387
    .line 2388
    .line 2389
    move-result v5

    .line 2390
    if-eqz v5, :cond_b5

    .line 2391
    .line 2392
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->routineTestViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2393
    .line 2394
    if-eqz v1, :cond_b4

    .line 2395
    .line 2396
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2397
    .line 2398
    :goto_b
    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->createItemView(Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseViewModel;)Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/BaseAudioEffectItemView;

    .line 2399
    .line 2400
    .line 2401
    move-result-object v1

    .line 2402
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;

    .line 2403
    .line 2404
    .line 2405
    move-result-object v4

    .line 2406
    iget-object v4, v4, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;->effectItemList:Landroid/widget/LinearLayout;

    .line 2407
    .line 2408
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/BaseAudioEffectItemView;->getRootView()Landroid/view/ViewGroup;

    .line 2409
    .line 2410
    .line 2411
    move-result-object v5

    .line 2412
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2413
    .line 2414
    .line 2415
    iput-object v1, v2, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->voiceBoostView:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/BaseAudioEffectItemView;

    .line 2416
    .line 2417
    const/4 v1, 0x1

    .line 2418
    goto :goto_c

    .line 2419
    :cond_b4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2420
    .line 2421
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2422
    .line 2423
    .line 2424
    throw v0

    .line 2425
    :cond_b5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2426
    .line 2427
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2428
    .line 2429
    .line 2430
    throw v0

    .line 2431
    :cond_b6
    :goto_c
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;->showVolumeNormalization:Landroidx/lifecycle/MutableLiveData;

    .line 2432
    .line 2433
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 2434
    .line 2435
    .line 2436
    move-result-object v0

    .line 2437
    check-cast v0, Ljava/lang/Boolean;

    .line 2438
    .line 2439
    if-eqz v0, :cond_dc

    .line 2440
    .line 2441
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2442
    .line 2443
    .line 2444
    move-result v4

    .line 2445
    if-eqz v4, :cond_b7

    .line 2446
    .line 2447
    goto :goto_d

    .line 2448
    :cond_b7
    const/4 v0, 0x0

    .line 2449
    :goto_d
    if-eqz v0, :cond_dc

    .line 2450
    .line 2451
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->addDivider()V

    .line 2452
    .line 2453
    .line 2454
    const-string v0, "addVolumeNormalizationView"

    .line 2455
    .line 2456
    move-object/from16 v1, p1

    .line 2457
    .line 2458
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    .line 2460
    .line 2461
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->getVmProvider()Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 2462
    .line 2463
    .line 2464
    move-result-object v0

    .line 2465
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2466
    .line 2467
    .line 2468
    move-result-object v1

    .line 2469
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2470
    .line 2471
    .line 2472
    move-result-object v4

    .line 2473
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2474
    .line 2475
    .line 2476
    move-result v4

    .line 2477
    const-string v5, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.VolumeNormalizationViewModel"

    .line 2478
    .line 2479
    if-eqz v4, :cond_b9

    .line 2480
    .line 2481
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->craftViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 2482
    .line 2483
    if-eqz v0, :cond_b8

    .line 2484
    .line 2485
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2486
    .line 2487
    goto/16 :goto_e

    .line 2488
    .line 2489
    :cond_b8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2490
    .line 2491
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2492
    .line 2493
    .line 2494
    throw v0

    .line 2495
    :cond_b9
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2496
    .line 2497
    .line 2498
    move-result-object v4

    .line 2499
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2500
    .line 2501
    .line 2502
    move-result v4

    .line 2503
    if-eqz v4, :cond_bb

    .line 2504
    .line 2505
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->actionBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 2506
    .line 2507
    if-eqz v0, :cond_ba

    .line 2508
    .line 2509
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2510
    .line 2511
    goto/16 :goto_e

    .line 2512
    .line 2513
    :cond_ba
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2514
    .line 2515
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2516
    .line 2517
    .line 2518
    throw v0

    .line 2519
    :cond_bb
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2520
    .line 2521
    .line 2522
    move-result-object v4

    .line 2523
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2524
    .line 2525
    .line 2526
    move-result v4

    .line 2527
    if-eqz v4, :cond_bd

    .line 2528
    .line 2529
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 2530
    .line 2531
    if-eqz v0, :cond_bc

    .line 2532
    .line 2533
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2534
    .line 2535
    goto/16 :goto_e

    .line 2536
    .line 2537
    :cond_bc
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2538
    .line 2539
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2540
    .line 2541
    .line 2542
    throw v0

    .line 2543
    :cond_bd
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2544
    .line 2545
    .line 2546
    move-result-object v3

    .line 2547
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2548
    .line 2549
    .line 2550
    move-result v3

    .line 2551
    if-eqz v3, :cond_bf

    .line 2552
    .line 2553
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 2554
    .line 2555
    if-eqz v0, :cond_be

    .line 2556
    .line 2557
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2558
    .line 2559
    goto/16 :goto_e

    .line 2560
    .line 2561
    :cond_be
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2562
    .line 2563
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2564
    .line 2565
    .line 2566
    throw v0

    .line 2567
    :cond_bf
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2568
    .line 2569
    .line 2570
    move-result-object v3

    .line 2571
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2572
    .line 2573
    .line 2574
    move-result v3

    .line 2575
    if-eqz v3, :cond_c1

    .line 2576
    .line 2577
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectHeaderViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 2578
    .line 2579
    if-eqz v0, :cond_c0

    .line 2580
    .line 2581
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2582
    .line 2583
    goto/16 :goto_e

    .line 2584
    .line 2585
    :cond_c0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2586
    .line 2587
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2588
    .line 2589
    .line 2590
    throw v0

    .line 2591
    :cond_c1
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2592
    .line 2593
    .line 2594
    move-result-object v3

    .line 2595
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2596
    .line 2597
    .line 2598
    move-result v3

    .line 2599
    if-eqz v3, :cond_c3

    .line 2600
    .line 2601
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->wearableLinkBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2602
    .line 2603
    if-eqz v0, :cond_c2

    .line 2604
    .line 2605
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2606
    .line 2607
    goto/16 :goto_e

    .line 2608
    .line 2609
    :cond_c2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2610
    .line 2611
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2612
    .line 2613
    .line 2614
    throw v0

    .line 2615
    :cond_c3
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2616
    .line 2617
    .line 2618
    move-result-object v3

    .line 2619
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2620
    .line 2621
    .line 2622
    move-result v3

    .line 2623
    if-eqz v3, :cond_c5

    .line 2624
    .line 2625
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->spatialAudioViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 2626
    .line 2627
    if-eqz v0, :cond_c4

    .line 2628
    .line 2629
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2630
    .line 2631
    goto/16 :goto_e

    .line 2632
    .line 2633
    :cond_c4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2634
    .line 2635
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2636
    .line 2637
    .line 2638
    throw v0

    .line 2639
    :cond_c5
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2640
    .line 2641
    .line 2642
    move-result-object v3

    .line 2643
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2644
    .line 2645
    .line 2646
    move-result v3

    .line 2647
    if-eqz v3, :cond_c7

    .line 2648
    .line 2649
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->equalizerViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 2650
    .line 2651
    if-eqz v0, :cond_c6

    .line 2652
    .line 2653
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2654
    .line 2655
    goto/16 :goto_e

    .line 2656
    .line 2657
    :cond_c6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2658
    .line 2659
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2660
    .line 2661
    .line 2662
    throw v0

    .line 2663
    :cond_c7
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2664
    .line 2665
    .line 2666
    move-result-object v3

    .line 2667
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2668
    .line 2669
    .line 2670
    move-result v3

    .line 2671
    if-eqz v3, :cond_c9

    .line 2672
    .line 2673
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->voiceBoostViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2674
    .line 2675
    if-eqz v0, :cond_c8

    .line 2676
    .line 2677
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2678
    .line 2679
    goto/16 :goto_e

    .line 2680
    .line 2681
    :cond_c8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2682
    .line 2683
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2684
    .line 2685
    .line 2686
    throw v0

    .line 2687
    :cond_c9
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2688
    .line 2689
    .line 2690
    move-result-object v3

    .line 2691
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2692
    .line 2693
    .line 2694
    move-result v3

    .line 2695
    if-eqz v3, :cond_cb

    .line 2696
    .line 2697
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->volumeNormalizationViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2698
    .line 2699
    if-eqz v0, :cond_ca

    .line 2700
    .line 2701
    goto/16 :goto_e

    .line 2702
    .line 2703
    :cond_ca
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2704
    .line 2705
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2706
    .line 2707
    .line 2708
    throw v0

    .line 2709
    :cond_cb
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2710
    .line 2711
    .line 2712
    move-result-object v3

    .line 2713
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2714
    .line 2715
    .line 2716
    move-result v3

    .line 2717
    if-eqz v3, :cond_cd

    .line 2718
    .line 2719
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->activeNoiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2720
    .line 2721
    if-eqz v0, :cond_cc

    .line 2722
    .line 2723
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2724
    .line 2725
    goto/16 :goto_e

    .line 2726
    .line 2727
    :cond_cc
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2728
    .line 2729
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2730
    .line 2731
    .line 2732
    throw v0

    .line 2733
    :cond_cd
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2734
    .line 2735
    .line 2736
    move-result-object v3

    .line 2737
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2738
    .line 2739
    .line 2740
    move-result v3

    .line 2741
    if-eqz v3, :cond_cf

    .line 2742
    .line 2743
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->adaptiveViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2744
    .line 2745
    if-eqz v0, :cond_ce

    .line 2746
    .line 2747
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2748
    .line 2749
    goto/16 :goto_e

    .line 2750
    .line 2751
    :cond_ce
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2752
    .line 2753
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2754
    .line 2755
    .line 2756
    throw v0

    .line 2757
    :cond_cf
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2758
    .line 2759
    .line 2760
    move-result-object v3

    .line 2761
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2762
    .line 2763
    .line 2764
    move-result v3

    .line 2765
    if-eqz v3, :cond_d1

    .line 2766
    .line 2767
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->ambientSoundViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 2768
    .line 2769
    if-eqz v0, :cond_d0

    .line 2770
    .line 2771
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2772
    .line 2773
    goto/16 :goto_e

    .line 2774
    .line 2775
    :cond_d0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2776
    .line 2777
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2778
    .line 2779
    .line 2780
    throw v0

    .line 2781
    :cond_d1
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2782
    .line 2783
    .line 2784
    move-result-object v3

    .line 2785
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2786
    .line 2787
    .line 2788
    move-result v3

    .line 2789
    if-eqz v3, :cond_d3

    .line 2790
    .line 2791
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 2792
    .line 2793
    if-eqz v0, :cond_d2

    .line 2794
    .line 2795
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2796
    .line 2797
    goto :goto_e

    .line 2798
    :cond_d2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2799
    .line 2800
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2801
    .line 2802
    .line 2803
    throw v0

    .line 2804
    :cond_d3
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2805
    .line 2806
    .line 2807
    move-result-object v3

    .line 2808
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2809
    .line 2810
    .line 2811
    move-result v3

    .line 2812
    if-eqz v3, :cond_d5

    .line 2813
    .line 2814
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 2815
    .line 2816
    if-eqz v0, :cond_d4

    .line 2817
    .line 2818
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2819
    .line 2820
    goto :goto_e

    .line 2821
    :cond_d4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2822
    .line 2823
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2824
    .line 2825
    .line 2826
    throw v0

    .line 2827
    :cond_d5
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2828
    .line 2829
    .line 2830
    move-result-object v3

    .line 2831
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2832
    .line 2833
    .line 2834
    move-result v3

    .line 2835
    if-eqz v3, :cond_d7

    .line 2836
    .line 2837
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlOffViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 2838
    .line 2839
    if-eqz v0, :cond_d6

    .line 2840
    .line 2841
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2842
    .line 2843
    goto :goto_e

    .line 2844
    :cond_d6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2845
    .line 2846
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2847
    .line 2848
    .line 2849
    throw v0

    .line 2850
    :cond_d7
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2851
    .line 2852
    .line 2853
    move-result-object v3

    .line 2854
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2855
    .line 2856
    .line 2857
    move-result v3

    .line 2858
    if-eqz v3, :cond_d9

    .line 2859
    .line 2860
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingSwitchBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 2861
    .line 2862
    if-eqz v0, :cond_d8

    .line 2863
    .line 2864
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2865
    .line 2866
    goto :goto_e

    .line 2867
    :cond_d8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2868
    .line 2869
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2870
    .line 2871
    .line 2872
    throw v0

    .line 2873
    :cond_d9
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2874
    .line 2875
    .line 2876
    move-result-object v3

    .line 2877
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2878
    .line 2879
    .line 2880
    move-result v1

    .line 2881
    if-eqz v1, :cond_db

    .line 2882
    .line 2883
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->routineTestViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2884
    .line 2885
    if-eqz v0, :cond_da

    .line 2886
    .line 2887
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2888
    .line 2889
    :goto_e
    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->createItemView(Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseViewModel;)Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/BaseAudioEffectItemView;

    .line 2890
    .line 2891
    .line 2892
    move-result-object v0

    .line 2893
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;

    .line 2894
    .line 2895
    .line 2896
    move-result-object v1

    .line 2897
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;->effectItemList:Landroid/widget/LinearLayout;

    .line 2898
    .line 2899
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/BaseAudioEffectItemView;->getRootView()Landroid/view/ViewGroup;

    .line 2900
    .line 2901
    .line 2902
    move-result-object v3

    .line 2903
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2904
    .line 2905
    .line 2906
    iput-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->volumeNormalizationView:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/BaseAudioEffectItemView;

    .line 2907
    .line 2908
    const/4 v6, 0x1

    .line 2909
    goto :goto_f

    .line 2910
    :cond_da
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2911
    .line 2912
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2913
    .line 2914
    .line 2915
    throw v0

    .line 2916
    :cond_db
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2917
    .line 2918
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2919
    .line 2920
    .line 2921
    throw v0

    .line 2922
    :cond_dc
    move v6, v1

    .line 2923
    :goto_f
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;

    .line 2924
    .line 2925
    .line 2926
    move-result-object v0

    .line 2927
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectBoxViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;

    .line 2928
    .line 2929
    if-eqz v6, :cond_dd

    .line 2930
    .line 2931
    const/4 v2, 0x0

    .line 2932
    goto :goto_10

    .line 2933
    :cond_dd
    const/16 v2, 0x8

    .line 2934
    .line 2935
    :goto_10
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2936
    .line 2937
    .line 2938
    return-void

    .line 2939
    :cond_de
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2940
    .line 2941
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2942
    .line 2943
    .line 2944
    throw v0

    .line 2945
    :cond_df
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2946
    .line 2947
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2948
    .line 2949
    .line 2950
    throw v0

    .line 2951
    :cond_e0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2952
    .line 2953
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2954
    .line 2955
    .line 2956
    throw v0

    .line 2957
    :cond_e1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2958
    .line 2959
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2960
    .line 2961
    .line 2962
    throw v0
.end method
