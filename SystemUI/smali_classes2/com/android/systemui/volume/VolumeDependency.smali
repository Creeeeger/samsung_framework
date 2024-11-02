.class public final Lcom/android/systemui/volume/VolumeDependency;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDependencyBase;


# static fields
.field public static final Companion:Lcom/android/systemui/volume/VolumeDependency$Companion;

.field public static sInstance:Lcom/android/systemui/volume/VolumeDependency;

.field public static final sProvider:Landroid/util/ArrayMap;


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final centralSurfacesLazy:Ldagger/Lazy;

.field public final pluginAODManagerLazy:Ldagger/Lazy;

.field public final volumePanelLogger:Lcom/android/systemui/log/SamsungServiceLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/volume/VolumeDependency$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDependency$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/volume/VolumeDependency;->Companion:Lcom/android/systemui/volume/VolumeDependency$Companion;

    .line 8
    .line 9
    new-instance v0, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/systemui/volume/VolumeDependency;->sProvider:Landroid/util/ArrayMap;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDependency;->volumePanelLogger:Lcom/android/systemui/log/SamsungServiceLogger;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/volume/VolumeDependency;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/volume/VolumeDependency;->pluginAODManagerLazy:Ldagger/Lazy;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/systemui/volume/VolumeDependency;->centralSurfacesLazy:Ldagger/Lazy;

    .line 11
    .line 12
    const-class p2, Landroid/content/Context;

    .line 13
    .line 14
    sget-object p3, Lcom/android/systemui/volume/VolumeDependency;->sProvider:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    const-class p2, Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p3, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 28
    .line 29
    :cond_0
    sput-object p0, Lcom/android/systemui/volume/VolumeDependency;->sInstance:Lcom/android/systemui/volume/VolumeDependency;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final createDependency(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-class v0, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const-class v1, Lcom/android/systemui/basic/util/LogWrapper;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    new-instance p1, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;

    .line 27
    .line 28
    new-instance v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/android/systemui/basic/util/LogWrapper;

    .line 38
    .line 39
    invoke-direct {p1, v0, p0}, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;Lcom/android/systemui/basic/util/LogWrapper;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :cond_1
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    .line 45
    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_2
    const-class v0, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 59
    .line 60
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    new-instance p1, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    .line 67
    .line 68
    const-class v0, Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Landroid/content/Context;

    .line 75
    .line 76
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/AudioManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_3
    const-class v0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 82
    .line 83
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    new-instance p1, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    .line 90
    .line 91
    const-class v0, Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Landroid/content/Context;

    .line 98
    .line 99
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :cond_4
    const-class v0, Lcom/android/systemui/volume/util/BixbyServiceManager;

    .line 105
    .line 106
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    const-class v2, Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    new-instance p1, Lcom/android/systemui/volume/util/BixbyServiceManager;

    .line 115
    .line 116
    const-class v0, Landroid/content/Context;

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroid/content/Context;

    .line 123
    .line 124
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Lcom/android/systemui/basic/util/LogWrapper;

    .line 129
    .line 130
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p0, Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    .line 135
    .line 136
    invoke-direct {p1, v0, v1, p0}, Lcom/android/systemui/volume/util/BixbyServiceManager;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/volume/util/ActivityManagerWrapper;)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :cond_5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_6

    .line 146
    .line 147
    new-instance p1, Lcom/android/systemui/basic/util/LogWrapper;

    .line 148
    .line 149
    sget-object v0, Lcom/android/systemui/basic/util/ModuleType;->VOLUME:Lcom/android/systemui/basic/util/ModuleType;

    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDependency;->volumePanelLogger:Lcom/android/systemui/log/SamsungServiceLogger;

    .line 152
    .line 153
    invoke-direct {p1, v0, p0}, Lcom/android/systemui/basic/util/LogWrapper;-><init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_6
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_7

    .line 163
    .line 164
    new-instance p1, Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    .line 165
    .line 166
    const-class v0, Landroid/content/Context;

    .line 167
    .line 168
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    check-cast p0, Landroid/content/Context;

    .line 173
    .line 174
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/ActivityManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_7
    const-class v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 180
    .line 181
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_8

    .line 186
    .line 187
    new-instance p1, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 188
    .line 189
    const-class v0, Landroid/content/Context;

    .line 190
    .line 191
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Landroid/content/Context;

    .line 196
    .line 197
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    check-cast p0, Lcom/android/systemui/basic/util/LogWrapper;

    .line 202
    .line 203
    invoke-direct {p1, v0, p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :cond_8
    const-class v0, Lcom/android/systemui/volume/util/ZenModeHelper;

    .line 209
    .line 210
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_9

    .line 215
    .line 216
    new-instance p1, Lcom/android/systemui/volume/util/ZenModeHelper;

    .line 217
    .line 218
    invoke-direct {p1}, Lcom/android/systemui/volume/util/ZenModeHelper;-><init>()V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_9
    const-class v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 224
    .line 225
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-eqz v2, :cond_a

    .line 230
    .line 231
    new-instance p1, Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 232
    .line 233
    invoke-direct {p1}, Lcom/android/systemui/volume/util/HandlerWrapper;-><init>()V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :cond_a
    const-class v2, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 239
    .line 240
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_b

    .line 245
    .line 246
    new-instance p1, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 247
    .line 248
    const-class v1, Landroid/content/Context;

    .line 249
    .line 250
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    check-cast v1, Landroid/content/Context;

    .line 255
    .line 256
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    check-cast p0, Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 261
    .line 262
    invoke-direct {p1, v1, p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/util/HandlerWrapper;)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_b
    const-class v0, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    .line 268
    .line 269
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-eqz v0, :cond_c

    .line 274
    .line 275
    new-instance p1, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    .line 276
    .line 277
    const-class v0, Landroid/content/Context;

    .line 278
    .line 279
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    check-cast p0, Landroid/content/Context;

    .line 284
    .line 285
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 286
    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :cond_c
    const-class v0, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    .line 291
    .line 292
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_d

    .line 297
    .line 298
    new-instance p1, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    .line 299
    .line 300
    invoke-direct {p1}, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;-><init>()V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :cond_d
    const-class v0, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 306
    .line 307
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_e

    .line 312
    .line 313
    new-instance p1, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 314
    .line 315
    const-class v0, Landroid/content/Context;

    .line 316
    .line 317
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    check-cast p0, Landroid/content/Context;

    .line 322
    .line 323
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_0

    .line 327
    .line 328
    :cond_e
    const-class v0, Lcom/android/systemui/volume/util/StatusBarWrapper;

    .line 329
    .line 330
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    const-class v2, Lcom/android/systemui/volume/util/KeyguardManagerWrapper;

    .line 335
    .line 336
    if-eqz v0, :cond_f

    .line 337
    .line 338
    new-instance p1, Lcom/android/systemui/volume/util/StatusBarWrapper;

    .line 339
    .line 340
    const-class v0, Landroid/content/Context;

    .line 341
    .line 342
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    check-cast v0, Landroid/content/Context;

    .line 347
    .line 348
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    check-cast v1, Lcom/android/systemui/basic/util/LogWrapper;

    .line 353
    .line 354
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    check-cast v2, Lcom/android/systemui/volume/util/KeyguardManagerWrapper;

    .line 359
    .line 360
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDependency;->centralSurfacesLazy:Ldagger/Lazy;

    .line 361
    .line 362
    invoke-direct {p1, v0, v1, v2, p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/volume/util/KeyguardManagerWrapper;Ldagger/Lazy;)V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_0

    .line 366
    .line 367
    :cond_f
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-eqz v0, :cond_10

    .line 372
    .line 373
    new-instance p1, Lcom/android/systemui/volume/util/KeyguardManagerWrapper;

    .line 374
    .line 375
    const-class v0, Landroid/content/Context;

    .line 376
    .line 377
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    check-cast p0, Landroid/content/Context;

    .line 382
    .line 383
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/KeyguardManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_0

    .line 387
    .line 388
    :cond_10
    const-class v0, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    .line 389
    .line 390
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-eqz v0, :cond_11

    .line 395
    .line 396
    new-instance p1, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    .line 397
    .line 398
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 399
    .line 400
    .line 401
    goto/16 :goto_0

    .line 402
    .line 403
    :cond_11
    const-class v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    .line 404
    .line 405
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    if-eqz v0, :cond_12

    .line 410
    .line 411
    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;

    .line 412
    .line 413
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelWindow;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 414
    .line 415
    .line 416
    goto/16 :goto_0

    .line 417
    .line 418
    :cond_12
    const-class v0, Lcom/android/systemui/volume/util/SystemClockWrapper;

    .line 419
    .line 420
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    if-eqz v0, :cond_13

    .line 425
    .line 426
    new-instance p1, Lcom/android/systemui/volume/util/SystemClockWrapper;

    .line 427
    .line 428
    invoke-direct {p1}, Lcom/android/systemui/volume/util/SystemClockWrapper;-><init>()V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_0

    .line 432
    .line 433
    :cond_13
    const-class v0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    .line 434
    .line 435
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    if-eqz v0, :cond_14

    .line 440
    .line 441
    new-instance p1, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    .line 442
    .line 443
    invoke-direct {p1}, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;-><init>()V

    .line 444
    .line 445
    .line 446
    goto/16 :goto_0

    .line 447
    .line 448
    :cond_14
    const-class v0, Lcom/android/systemui/volume/util/ConfigurationWrapper;

    .line 449
    .line 450
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    if-eqz v0, :cond_15

    .line 455
    .line 456
    new-instance p1, Lcom/android/systemui/volume/util/ConfigurationWrapper;

    .line 457
    .line 458
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/ConfigurationWrapper;-><init>(Lcom/android/systemui/volume/VolumeDependency;)V

    .line 459
    .line 460
    .line 461
    goto/16 :goto_0

    .line 462
    .line 463
    :cond_15
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 464
    .line 465
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    if-eqz v2, :cond_16

    .line 470
    .line 471
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    goto/16 :goto_0

    .line 476
    .line 477
    :cond_16
    const-class v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    .line 478
    .line 479
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-eqz v0, :cond_17

    .line 484
    .line 485
    new-instance p1, Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    .line 486
    .line 487
    const-class v0, Landroid/content/Context;

    .line 488
    .line 489
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    check-cast v0, Landroid/content/Context;

    .line 494
    .line 495
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    check-cast v1, Lcom/android/systemui/basic/util/LogWrapper;

    .line 500
    .line 501
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDependency;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 502
    .line 503
    invoke-direct {p1, v0, v1, p0}, Lcom/android/systemui/volume/util/BroadcastReceiverManager;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 504
    .line 505
    .line 506
    goto/16 :goto_0

    .line 507
    .line 508
    :cond_17
    const-class v0, Lcom/android/systemui/volume/util/BroadcastSender;

    .line 509
    .line 510
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    if-eqz v0, :cond_18

    .line 515
    .line 516
    new-instance p1, Lcom/android/systemui/volume/util/BroadcastSender;

    .line 517
    .line 518
    const-class v0, Landroid/content/Context;

    .line 519
    .line 520
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object p0

    .line 524
    check-cast p0, Landroid/content/Context;

    .line 525
    .line 526
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/BroadcastSender;-><init>(Landroid/content/Context;)V

    .line 527
    .line 528
    .line 529
    goto/16 :goto_0

    .line 530
    .line 531
    :cond_18
    const-class v0, Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    .line 532
    .line 533
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    if-eqz v0, :cond_19

    .line 538
    .line 539
    new-instance p1, Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    .line 540
    .line 541
    invoke-direct {p1}, Lcom/android/systemui/volume/util/DesktopManagerWrapper;-><init>()V

    .line 542
    .line 543
    .line 544
    goto/16 :goto_0

    .line 545
    .line 546
    :cond_19
    const-class v0, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    .line 547
    .line 548
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    if-eqz v0, :cond_1a

    .line 553
    .line 554
    new-instance p1, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    .line 555
    .line 556
    invoke-direct {p1}, Lcom/android/systemui/volume/util/PowerManagerWrapper;-><init>()V

    .line 557
    .line 558
    .line 559
    goto/16 :goto_0

    .line 560
    .line 561
    :cond_1a
    const-class v0, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 562
    .line 563
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result v2

    .line 567
    if-eqz v2, :cond_1b

    .line 568
    .line 569
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    goto/16 :goto_0

    .line 574
    .line 575
    :cond_1b
    const-class v0, Lcom/android/systemui/volume/util/ToastWrapper;

    .line 576
    .line 577
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    if-eqz v0, :cond_1c

    .line 582
    .line 583
    new-instance p1, Lcom/android/systemui/volume/util/ToastWrapper;

    .line 584
    .line 585
    invoke-direct {p1}, Lcom/android/systemui/volume/util/ToastWrapper;-><init>()V

    .line 586
    .line 587
    .line 588
    goto/16 :goto_0

    .line 589
    .line 590
    :cond_1c
    const-class v0, Lcom/android/systemui/volume/util/SALoggingWrapper;

    .line 591
    .line 592
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    if-eqz v0, :cond_1d

    .line 597
    .line 598
    new-instance p1, Lcom/android/systemui/volume/util/SALoggingWrapper;

    .line 599
    .line 600
    invoke-direct {p1}, Lcom/android/systemui/volume/util/SALoggingWrapper;-><init>()V

    .line 601
    .line 602
    .line 603
    goto/16 :goto_0

    .line 604
    .line 605
    :cond_1d
    const-class v0, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    .line 606
    .line 607
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 608
    .line 609
    .line 610
    move-result v0

    .line 611
    if-eqz v0, :cond_1e

    .line 612
    .line 613
    new-instance p1, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    .line 614
    .line 615
    const-class v0, Landroid/content/Context;

    .line 616
    .line 617
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object p0

    .line 621
    check-cast p0, Landroid/content/Context;

    .line 622
    .line 623
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 624
    .line 625
    .line 626
    goto/16 :goto_0

    .line 627
    .line 628
    :cond_1e
    const-class v0, Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 629
    .line 630
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    if-eqz v0, :cond_1f

    .line 635
    .line 636
    new-instance p1, Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 637
    .line 638
    invoke-direct {p1}, Lcom/android/systemui/volume/view/VolumePanelMotion;-><init>()V

    .line 639
    .line 640
    .line 641
    goto/16 :goto_0

    .line 642
    .line 643
    :cond_1f
    const-class v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 644
    .line 645
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    move-result v0

    .line 649
    if-eqz v0, :cond_20

    .line 650
    .line 651
    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 652
    .line 653
    invoke-direct {p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;-><init>()V

    .line 654
    .line 655
    .line 656
    goto/16 :goto_0

    .line 657
    .line 658
    :cond_20
    const-class v0, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    .line 659
    .line 660
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    if-eqz v0, :cond_21

    .line 665
    .line 666
    new-instance p1, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    .line 667
    .line 668
    const-class v0, Landroid/content/Context;

    .line 669
    .line 670
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object p0

    .line 674
    check-cast p0, Landroid/content/Context;

    .line 675
    .line 676
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;-><init>(Landroid/content/Context;)V

    .line 677
    .line 678
    .line 679
    goto/16 :goto_0

    .line 680
    .line 681
    :cond_21
    const-class v0, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    .line 682
    .line 683
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    if-eqz v0, :cond_22

    .line 688
    .line 689
    new-instance p1, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    .line 690
    .line 691
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object p0

    .line 695
    check-cast p0, Lcom/android/systemui/basic/util/LogWrapper;

    .line 696
    .line 697
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;-><init>(Lcom/android/systemui/basic/util/LogWrapper;)V

    .line 698
    .line 699
    .line 700
    goto/16 :goto_0

    .line 701
    .line 702
    :cond_22
    const-class v0, Lcom/android/systemui/volume/VolumeStarInteractor;

    .line 703
    .line 704
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    move-result v0

    .line 708
    if-eqz v0, :cond_23

    .line 709
    .line 710
    new-instance p1, Lcom/android/systemui/volume/VolumeStarInteractor;

    .line 711
    .line 712
    const-class v0, Landroid/content/Context;

    .line 713
    .line 714
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object p0

    .line 718
    check-cast p0, Landroid/content/Context;

    .line 719
    .line 720
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/VolumeStarInteractor;-><init>(Landroid/content/Context;)V

    .line 721
    .line 722
    .line 723
    goto/16 :goto_0

    .line 724
    .line 725
    :cond_23
    const-class v0, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    .line 726
    .line 727
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 728
    .line 729
    .line 730
    move-result v0

    .line 731
    if-eqz v0, :cond_24

    .line 732
    .line 733
    new-instance p1, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    .line 734
    .line 735
    invoke-direct {p1}, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;-><init>()V

    .line 736
    .line 737
    .line 738
    goto/16 :goto_0

    .line 739
    .line 740
    :cond_24
    const-class v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    .line 741
    .line 742
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 743
    .line 744
    .line 745
    move-result v0

    .line 746
    if-eqz v0, :cond_25

    .line 747
    .line 748
    new-instance p1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    .line 749
    .line 750
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 751
    .line 752
    .line 753
    goto/16 :goto_0

    .line 754
    .line 755
    :cond_25
    const-class v0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    .line 756
    .line 757
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 758
    .line 759
    .line 760
    move-result v0

    .line 761
    if-eqz v0, :cond_26

    .line 762
    .line 763
    new-instance p1, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    .line 764
    .line 765
    const-class v0, Landroid/content/Context;

    .line 766
    .line 767
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object p0

    .line 771
    check-cast p0, Landroid/content/Context;

    .line 772
    .line 773
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 774
    .line 775
    .line 776
    goto :goto_0

    .line 777
    :cond_26
    const-class v0, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    .line 778
    .line 779
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 780
    .line 781
    .line 782
    move-result v0

    .line 783
    if-eqz v0, :cond_27

    .line 784
    .line 785
    new-instance p1, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    .line 786
    .line 787
    const-class v0, Landroid/content/Context;

    .line 788
    .line 789
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object p0

    .line 793
    check-cast p0, Landroid/content/Context;

    .line 794
    .line 795
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 796
    .line 797
    .line 798
    goto :goto_0

    .line 799
    :cond_27
    const-class v0, Lcom/android/systemui/volume/util/VibratorWrapper;

    .line 800
    .line 801
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 802
    .line 803
    .line 804
    move-result v0

    .line 805
    if-eqz v0, :cond_28

    .line 806
    .line 807
    new-instance p1, Lcom/android/systemui/volume/util/VibratorWrapper;

    .line 808
    .line 809
    const-class v0, Landroid/content/Context;

    .line 810
    .line 811
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object p0

    .line 815
    check-cast p0, Landroid/content/Context;

    .line 816
    .line 817
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/VibratorWrapper;-><init>(Landroid/content/Context;)V

    .line 818
    .line 819
    .line 820
    goto :goto_0

    .line 821
    :cond_28
    const-class v0, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    .line 822
    .line 823
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    move-result v0

    .line 827
    if-eqz v0, :cond_29

    .line 828
    .line 829
    new-instance p1, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    .line 830
    .line 831
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDependency;->pluginAODManagerLazy:Ldagger/Lazy;

    .line 832
    .line 833
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;-><init>(Ldagger/Lazy;)V

    .line 834
    .line 835
    .line 836
    goto :goto_0

    .line 837
    :cond_29
    const-class v0, Lcom/android/systemui/volume/config/VolumeConfigs;

    .line 838
    .line 839
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 840
    .line 841
    .line 842
    move-result v0

    .line 843
    if-eqz v0, :cond_2a

    .line 844
    .line 845
    new-instance p1, Lcom/android/systemui/volume/config/VolumeConfigs;

    .line 846
    .line 847
    const-class v0, Landroid/content/Context;

    .line 848
    .line 849
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object p0

    .line 853
    check-cast p0, Landroid/content/Context;

    .line 854
    .line 855
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/config/VolumeConfigs;-><init>(Landroid/content/Context;)V

    .line 856
    .line 857
    .line 858
    goto :goto_0

    .line 859
    :cond_2a
    const-class v0, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    .line 860
    .line 861
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 862
    .line 863
    .line 864
    move-result p1

    .line 865
    if-eqz p1, :cond_2b

    .line 866
    .line 867
    new-instance p1, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;

    .line 868
    .line 869
    const-class v0, Landroid/content/Context;

    .line 870
    .line 871
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    move-result-object p0

    .line 875
    check-cast p0, Landroid/content/Context;

    .line 876
    .line 877
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/soundassistant/SoundAssistantChecker;-><init>(Landroid/content/Context;)V

    .line 878
    .line 879
    .line 880
    goto :goto_0

    .line 881
    :cond_2b
    const/4 p1, 0x0

    .line 882
    :goto_0
    return-object p1
.end method

.method public final get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/volume/VolumeDependency;->sProvider:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDependency;->createDependency(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    return-object v1
.end method

.method public final getNewObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/volume/VolumeDependency;->sProvider:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDependency;->createDependency(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
