.class public final Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView$bindViewModel$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $vmProvider:Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView$bindViewModel$1$1;->$vmProvider:Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView$bindViewModel$1$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.audioeffect.AudioEffectHeaderViewModel"

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView$bindViewModel$1$1;->$vmProvider:Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object p1, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->craftViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 34
    .line 35
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :cond_1
    const-class v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 40
    .line 41
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    iget-object p1, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->actionBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 60
    .line 61
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_3
    const-class v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 66
    .line 67
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    iget-object p1, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 86
    .line 87
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_5
    const-class v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 92
    .line 93
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_7

    .line 102
    .line 103
    iget-object p1, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 104
    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 108
    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    .line 112
    .line 113
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_7
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_9

    .line 126
    .line 127
    iget-object p1, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->audioEffectHeaderViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 128
    .line 129
    if-eqz p1, :cond_8

    .line 130
    .line 131
    goto/16 :goto_0

    .line 132
    .line 133
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    .line 134
    .line 135
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :cond_9
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 140
    .line 141
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_b

    .line 150
    .line 151
    iget-object p1, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->wearableLinkBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 152
    .line 153
    if-eqz p1, :cond_a

    .line 154
    .line 155
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    .line 160
    .line 161
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0

    .line 165
    :cond_b
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 166
    .line 167
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_d

    .line 176
    .line 177
    iget-object p1, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->spatialAudioViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 178
    .line 179
    if-eqz p1, :cond_c

    .line 180
    .line 181
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    .line 186
    .line 187
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p0

    .line 191
    :cond_d
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 192
    .line 193
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-eqz p1, :cond_f

    .line 202
    .line 203
    iget-object p1, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->equalizerViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 204
    .line 205
    if-eqz p1, :cond_e

    .line 206
    .line 207
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    .line 212
    .line 213
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw p0

    .line 217
    :cond_f
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 218
    .line 219
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-eqz p1, :cond_11

    .line 228
    .line 229
    iget-object p1, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->voiceBoostViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 230
    .line 231
    if-eqz p1, :cond_10

    .line 232
    .line 233
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    .line 238
    .line 239
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw p0

    .line 243
    :cond_11
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 244
    .line 245
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    if-eqz p1, :cond_13

    .line 254
    .line 255
    iget-object p1, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->volumeNormalizationViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 256
    .line 257
    if-eqz p1, :cond_12

    .line 258
    .line 259
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_12
    new-instance p0, Ljava/lang/NullPointerException;

    .line 264
    .line 265
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw p0

    .line 269
    :cond_13
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 270
    .line 271
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    if-eqz p1, :cond_15

    .line 280
    .line 281
    iget-object p1, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->activeNoiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 282
    .line 283
    if-eqz p1, :cond_14

    .line 284
    .line 285
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    .line 290
    .line 291
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw p0

    .line 295
    :cond_15
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 296
    .line 297
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    if-eqz p1, :cond_17

    .line 306
    .line 307
    iget-object p1, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->adaptiveViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 308
    .line 309
    if-eqz p1, :cond_16

    .line 310
    .line 311
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 312
    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :cond_16
    new-instance p0, Ljava/lang/NullPointerException;

    .line 316
    .line 317
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw p0

    .line 321
    :cond_17
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 322
    .line 323
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    if-eqz p1, :cond_19

    .line 332
    .line 333
    iget-object p1, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->ambientSoundViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 334
    .line 335
    if-eqz p1, :cond_18

    .line 336
    .line 337
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 338
    .line 339
    goto/16 :goto_0

    .line 340
    .line 341
    :cond_18
    new-instance p0, Ljava/lang/NullPointerException;

    .line 342
    .line 343
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw p0

    .line 347
    :cond_19
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 348
    .line 349
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    if-eqz p1, :cond_1b

    .line 358
    .line 359
    iget-object p1, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 360
    .line 361
    if-eqz p1, :cond_1a

    .line 362
    .line 363
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 364
    .line 365
    goto :goto_0

    .line 366
    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    .line 367
    .line 368
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    throw p0

    .line 372
    :cond_1b
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 373
    .line 374
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    if-eqz p1, :cond_1d

    .line 383
    .line 384
    iget-object p1, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 385
    .line 386
    if-eqz p1, :cond_1c

    .line 387
    .line 388
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 389
    .line 390
    goto :goto_0

    .line 391
    :cond_1c
    new-instance p0, Ljava/lang/NullPointerException;

    .line 392
    .line 393
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    throw p0

    .line 397
    :cond_1d
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 398
    .line 399
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    if-eqz p1, :cond_1f

    .line 408
    .line 409
    iget-object p1, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseControlOffViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 410
    .line 411
    if-eqz p1, :cond_1e

    .line 412
    .line 413
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 414
    .line 415
    goto :goto_0

    .line 416
    :cond_1e
    new-instance p0, Ljava/lang/NullPointerException;

    .line 417
    .line 418
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    throw p0

    .line 422
    :cond_1f
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 423
    .line 424
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result p1

    .line 432
    if-eqz p1, :cond_21

    .line 433
    .line 434
    iget-object p1, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->noiseCancelingSwitchBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 435
    .line 436
    if-eqz p1, :cond_20

    .line 437
    .line 438
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 439
    .line 440
    goto :goto_0

    .line 441
    :cond_20
    new-instance p0, Ljava/lang/NullPointerException;

    .line 442
    .line 443
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw p0

    .line 447
    :cond_21
    const-class p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 448
    .line 449
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result p1

    .line 457
    if-eqz p1, :cond_24

    .line 458
    .line 459
    iget-object p1, v3, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->routineTestViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 460
    .line 461
    if-eqz p1, :cond_23

    .line 462
    .line 463
    check-cast p1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 464
    .line 465
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;->notifyChange()V

    .line 466
    .line 467
    .line 468
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView$bindViewModel$1$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;

    .line 469
    .line 470
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectBoxView;->spatialAudioView:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/BaseAudioEffectItemView;

    .line 471
    .line 472
    if-eqz p0, :cond_22

    .line 473
    .line 474
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/BaseAudioEffectItemView;->update()V

    .line 475
    .line 476
    .line 477
    :cond_22
    return-void

    .line 478
    :cond_23
    new-instance p0, Ljava/lang/NullPointerException;

    .line 479
    .line 480
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    throw p0

    .line 484
    :cond_24
    new-instance p0, Ljava/lang/RuntimeException;

    .line 485
    .line 486
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 487
    .line 488
    .line 489
    throw p0
.end method
