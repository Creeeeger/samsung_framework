.class public final Lcom/android/systemui/volume/middleware/AudioManagerController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;


# instance fields
.field public final infraMediator$delegate:Lkotlin/Lazy;

.field public isHeadsetConnected:Ljava/lang/Boolean;

.field public isPanelShowing:Z

.field public final log$delegate:Lkotlin/Lazy;

.field public final store$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/volume/middleware/AudioManagerController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/middleware/AudioManagerController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/volume/middleware/AudioManagerController$infraMediator$2;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController$infraMediator$2;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->infraMediator$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/android/systemui/volume/middleware/AudioManagerController$store$2;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController$store$2;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->store$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/android/systemui/volume/middleware/AudioManagerController$log$2;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController$log$2;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->log$delegate:Lkotlin/Lazy;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/systemui/volume/middleware/AudioManagerController$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    aget v0, v1, v0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eq v0, v2, :cond_a

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    if-eq v0, v3, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isHeadsetConnected()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->isHeadsetConnected:Ljava/lang/Boolean;

    .line 39
    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setActiveStream(I)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->isPanelShowing:Z

    .line 56
    .line 57
    if-nez v0, :cond_10

    .line 58
    .line 59
    iput-boolean v2, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->isPanelShowing:Z

    .line 60
    .line 61
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 62
    .line 63
    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-interface {v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSafeMediaVolumeDeviceOn()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSafeMediaDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-interface {v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSafeMediaVolumePinDeviceOn()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSafeMediaPinDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    filled-new-array {v4}, [Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    const/4 v5, 0x6

    .line 110
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    filled-new-array {v5}, [Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-interface {v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isBluetoothScoOn()Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-interface {v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isBluetoothScoOn()Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    invoke-interface {v8}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isUserInCall()Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    const/4 v9, 0x0

    .line 147
    if-eqz v8, :cond_5

    .line 148
    .line 149
    if-eqz v6, :cond_3

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-interface {v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getBtCallDeviceName()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    .line 161
    .line 162
    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    .line 164
    .line 165
    move v4, v2

    .line 166
    goto :goto_1

    .line 167
    :cond_3
    if-eqz v7, :cond_4

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-interface {v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getBtCallDeviceName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    move-object v9, v7

    .line 178
    :cond_4
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    .line 180
    .line 181
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_5
    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    .line 187
    .line 188
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    .line 190
    .line 191
    :goto_0
    move v4, v1

    .line 192
    move-object v7, v9

    .line 193
    :goto_1
    invoke-virtual {v0, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isBtScoOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    invoke-virtual {v5, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->btCallDeviceName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v5, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v5, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setUnImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-interface {v5}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getDevicesForStreamMusic()I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-interface {v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getPinDevice()I

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-eq v5, v6, :cond_6

    .line 225
    .line 226
    if-eqz v4, :cond_7

    .line 227
    .line 228
    :cond_6
    move v6, v1

    .line 229
    :cond_7
    const/16 v4, 0x15

    .line 230
    .line 231
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    filled-new-array {v4}, [Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    if-eqz v6, :cond_8

    .line 244
    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    invoke-interface {v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSmartView()Z

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    if-nez v7, :cond_8

    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    invoke-interface {v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isAudioMirroring()Z

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    if-nez v7, :cond_8

    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    invoke-interface {v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isLeBroadcasting()Z

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    if-nez v7, :cond_8

    .line 274
    .line 275
    move v1, v2

    .line 276
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->log$delegate:Lkotlin/Lazy;

    .line 277
    .line 278
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    check-cast v2, Lcom/android/systemui/basic/util/LogWrapper;

    .line 283
    .line 284
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 293
    .line 294
    .line 295
    move-result-object v8

    .line 296
    invoke-interface {v8}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSmartView()Z

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    invoke-interface {v9}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isAudioMirroring()Z

    .line 305
    .line 306
    .line 307
    move-result v9

    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 309
    .line 310
    .line 311
    move-result-object v10

    .line 312
    invoke-interface {v10}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isLeBroadcasting()Z

    .line 313
    .line 314
    .line 315
    move-result v10

    .line 316
    const-string v11, "device="

    .line 317
    .line 318
    const-string v12, ", pinDevice="

    .line 319
    .line 320
    const-string v13, ", isSmartView="

    .line 321
    .line 322
    invoke-static {v11, v5, v12, v7, v13}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    const-string v7, ", isAudioMirroring="

    .line 327
    .line 328
    const-string v11, ", isLeBroadcasting="

    .line 329
    .line 330
    invoke-static {v5, v8, v7, v9, v11}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 331
    .line 332
    .line 333
    const-string v7, ", isImportant="

    .line 334
    .line 335
    invoke-static {v5, v10, v7, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    const-string v7, "AudioManagerController"

    .line 340
    .line 341
    invoke-virtual {v2, v7, v5}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    if-eqz v1, :cond_9

    .line 345
    .line 346
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 347
    .line 348
    .line 349
    goto :goto_2

    .line 350
    :cond_9
    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    .line 352
    .line 353
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-interface {v1, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getPinAppName(I)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->pinAppName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 366
    .line 367
    .line 368
    move-result-object p0

    .line 369
    invoke-interface {p0, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getPinDeviceName(I)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    invoke-virtual {v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->pinDeviceName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 374
    .line 375
    .line 376
    move-result-object p0

    .line 377
    invoke-virtual {p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setUnImportantStreamList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 382
    .line 383
    .line 384
    move-result-object p0

    .line 385
    invoke-virtual {p0, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->pinDevice(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    goto/16 :goto_3

    .line 393
    .line 394
    :cond_a
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 395
    .line 396
    invoke-direct {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    invoke-interface {v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getEarProtectLimit()I

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    sub-int/2addr v3, v2

    .line 408
    mul-int/lit8 v3, v3, 0x64

    .line 409
    .line 410
    add-int/lit8 v3, v3, 0x9

    .line 411
    .line 412
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    iget-object v4, v4, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 417
    .line 418
    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaDeviceOn()Z

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    invoke-virtual {v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSafeMediaDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 427
    .line 428
    .line 429
    move-result-object v5

    .line 430
    iget-object v5, v5, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 431
    .line 432
    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaPinDeviceOn()Z

    .line 433
    .line 434
    .line 435
    move-result v5

    .line 436
    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSafeMediaPinDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    invoke-virtual {v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->earProtectLevel(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 441
    .line 442
    .line 443
    iget-object v3, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->isHeadsetConnected:Ljava/lang/Boolean;

    .line 444
    .line 445
    if-eqz v3, :cond_d

    .line 446
    .line 447
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    if-eqz v3, :cond_b

    .line 452
    .line 453
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    iget-object v4, v4, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 458
    .line 459
    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaDeviceOn()Z

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    if-nez v4, :cond_b

    .line 464
    .line 465
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    iget-object v4, v4, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 470
    .line 471
    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaPinDeviceOn()Z

    .line 472
    .line 473
    .line 474
    move-result v4

    .line 475
    if-eqz v4, :cond_c

    .line 476
    .line 477
    :cond_b
    if-nez v3, :cond_d

    .line 478
    .line 479
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    iget-object v3, v3, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 484
    .line 485
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaDeviceOn()Z

    .line 486
    .line 487
    .line 488
    move-result v3

    .line 489
    if-nez v3, :cond_c

    .line 490
    .line 491
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    iget-object v3, v3, Lcom/android/systemui/volume/store/VolumePanelStore;->currentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 496
    .line 497
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaPinDeviceOn()Z

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    if-eqz v3, :cond_d

    .line 502
    .line 503
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    invoke-interface {v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSafeMediaVolumeDeviceOn()Z

    .line 508
    .line 509
    .line 510
    move-result v3

    .line 511
    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSafeMediaDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    invoke-interface {v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSafeMediaVolumePinDeviceOn()Z

    .line 520
    .line 521
    .line 522
    move-result v4

    .line 523
    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSafeMediaPinDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 524
    .line 525
    .line 526
    :cond_d
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    .line 527
    .line 528
    .line 529
    move-result-object p1

    .line 530
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isDualAudio()Z

    .line 534
    .line 535
    .line 536
    move-result p1

    .line 537
    if-eqz p1, :cond_f

    .line 538
    .line 539
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 540
    .line 541
    .line 542
    move-result-object p1

    .line 543
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isMultiSoundOn()Z

    .line 544
    .line 545
    .line 546
    move-result p1

    .line 547
    if-eqz p1, :cond_f

    .line 548
    .line 549
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getDevicesForStreamMusic()I

    .line 554
    .line 555
    .line 556
    move-result p1

    .line 557
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 558
    .line 559
    .line 560
    move-result-object v3

    .line 561
    invoke-interface {v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getPinDevice()I

    .line 562
    .line 563
    .line 564
    move-result v3

    .line 565
    if-ne p1, v3, :cond_e

    .line 566
    .line 567
    move v3, v1

    .line 568
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 569
    .line 570
    .line 571
    move-result-object p0

    .line 572
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->getMultiSoundDevice()I

    .line 573
    .line 574
    .line 575
    move-result p0

    .line 576
    const/16 p1, 0x8

    .line 577
    .line 578
    if-ne p0, p1, :cond_f

    .line 579
    .line 580
    if-eqz v3, :cond_f

    .line 581
    .line 582
    move v1, v2

    .line 583
    :cond_f
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isMultiSoundBt(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 584
    .line 585
    .line 586
    move-result-object p0

    .line 587
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 588
    .line 589
    .line 590
    move-result-object p1

    .line 591
    :cond_10
    :goto_3
    return-object p1
.end method

.method public final applyState(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/systemui/volume/middleware/AudioManagerController$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    aget v0, v1, v0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eq v0, v1, :cond_8

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    if-eq v0, v3, :cond_6

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    if-eq v0, v1, :cond_3

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x5

    .line 29
    if-eq v0, p1, :cond_0

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->disableSafeMediaVolume()V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sget-object v1, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 47
    .line 48
    invoke-virtual {v1, p1, v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevel()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move v1, v2

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-interface {v3, v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setActiveStream(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/volume/middleware/AudioManagerController;->setStreamVolume(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getRingerModeInternal()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-interface {p0, p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setRingerMode(IZ)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    sget-object v1, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 87
    .line 88
    invoke-virtual {v1, p1, v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isRemoteMic()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isBluetoothSco(I)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_5

    .line 107
    .line 108
    if-nez v1, :cond_5

    .line 109
    .line 110
    add-int/lit8 v2, v2, -0x1

    .line 111
    .line 112
    :cond_5
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/volume/middleware/AudioManagerController;->setStreamVolume(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_6
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_HOME_IOT:Z

    .line 117
    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->initSound(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeDirection()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->playSound(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->initSound(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->playSound()V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_8
    iput-boolean v2, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->isPanelShowing:Z

    .line 159
    .line 160
    :goto_1
    return-void
.end method

.method public final getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->infraMediator$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getStore()Lcom/android/systemui/volume/store/VolumePanelStore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/AudioManagerController;->store$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 8
    .line 9
    return-object p0
.end method

.method public final setStreamVolume(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isDualAudio()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isMultiSoundBt()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget v1, Lcom/android/systemui/volume/util/StreamUtil;->$r8$clinit:I

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x15

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x3

    .line 19
    :goto_0
    if-eq p2, v0, :cond_2

    .line 20
    .line 21
    :cond_1
    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isDualAudio(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_7

    .line 26
    .line 27
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x0

    .line 40
    if-eqz v0, :cond_5

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    move-object v2, v0

    .line 47
    check-cast v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-ne v2, p2, :cond_4

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    const/4 v2, 0x0

    .line 58
    :goto_1
    if-eqz v2, :cond_3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    move-object v0, v1

    .line 62
    :goto_2
    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 63
    .line 64
    if-eqz v0, :cond_6

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getDualBtDeviceAddress()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-interface {p0, p2, p3, v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setStreamVolumeDualAudio(IILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/volume/middleware/AudioManagerController;->getInfraMediator()Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-interface {p0, p2, p3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->setStreamVolume(II)V

    .line 83
    .line 84
    .line 85
    :goto_3
    return-void
.end method
