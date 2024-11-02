.class public final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# instance fields
.field public final allBands:Ljava/util/List;

.field public final mExtraKeyList:Ljava/util/List;

.field public final mMainKeyList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->allBands:Ljava/util/List;

    .line 14
    .line 15
    const-string v3, "home"

    .line 16
    .line 17
    const-string v4, "back"

    .line 18
    .line 19
    const-string/jumbo v5, "recent"

    .line 20
    .line 21
    .line 22
    sget-object v9, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;

    .line 23
    .line 24
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-object v6, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftGestureHint:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-object v7, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->centerGestureHint:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    sget-object v8, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightGestureHint:Ljava/lang/String;

    .line 38
    .line 39
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->mMainKeyList:Ljava/util/List;

    .line 48
    .line 49
    const-string/jumbo v10, "menu_ime"

    .line 50
    .line 51
    .line 52
    const-string/jumbo v11, "space"

    .line 53
    .line 54
    .line 55
    const-string v12, "ime_switcher"

    .line 56
    .line 57
    const-string v13, "clipboard"

    .line 58
    .line 59
    const-string v14, "contextual"

    .line 60
    .line 61
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    sget-object v15, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->pin:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    sget-object v16, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->extraBack:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    sget-object v17, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftRemoteView:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    sget-object v18, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightRemoteView:Ljava/lang/String;

    .line 80
    .line 81
    const-string v19, "left"

    .line 82
    .line 83
    const-string/jumbo v20, "right"

    .line 84
    .line 85
    .line 86
    filled-new-array/range {v10 .. v20}, [Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->mExtraKeyList:Ljava/util/List;

    .line 95
    .line 96
    sget v3, Lcom/android/systemui/navigationbar/bandaid/Band;->$r8$clinit:I

    .line 97
    .line 98
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 99
    .line 100
    invoke-direct {v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 104
    .line 105
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 106
    .line 107
    .line 108
    sget-boolean v5, Lcom/android/systemui/BasicRune;->NAVBAR_STABLE_LAYOUT:Z

    .line 109
    .line 110
    iput-boolean v5, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 111
    .line 112
    sget-object v6, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_NAVBAR_CONFIG_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 113
    .line 114
    iput-object v6, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 115
    .line 116
    const-class v6, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;

    .line 117
    .line 118
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    iput-object v6, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 123
    .line 124
    const-class v6, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 125
    .line 126
    const-class v7, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 127
    .line 128
    filled-new-array {v6, v7}, [Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-static {v6}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    iput-object v6, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 137
    .line 138
    new-instance v6, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$1$1;

    .line 139
    .line 140
    invoke-direct {v6, v4}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$1$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 141
    .line 142
    .line 143
    iput-object v6, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 144
    .line 145
    new-instance v6, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$1$2;

    .line 146
    .line 147
    invoke-direct {v6, v4, v1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$1$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 148
    .line 149
    .line 150
    iput-object v6, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    .line 151
    .line 152
    invoke-static {v3, v2}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_KNOX_MONITOR:Z

    .line 157
    .line 158
    iput-boolean v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 159
    .line 160
    sget-object v4, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_NAVBAR_ATTACHED_TO_WINDOW:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 161
    .line 162
    iput-object v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 163
    .line 164
    const-class v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;

    .line 165
    .line 166
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    iput-object v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 171
    .line 172
    const-class v4, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    .line 173
    .line 174
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    iput-object v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 179
    .line 180
    const-class v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 181
    .line 182
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    iput-object v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 187
    .line 188
    const/4 v4, 0x0

    .line 189
    iput v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:I

    .line 190
    .line 191
    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$3$1;

    .line 192
    .line 193
    invoke-direct {v4, v1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$3$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 194
    .line 195
    .line 196
    iput-object v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 197
    .line 198
    invoke-static {v3, v2}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    iput-boolean v5, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 203
    .line 204
    sget-object v4, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_GET_INFLATE_LAYOUT_ID:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 205
    .line 206
    iput-object v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 207
    .line 208
    const-class v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateLayoutID;

    .line 209
    .line 210
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    iput-object v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 215
    .line 216
    const-class v4, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;

    .line 217
    .line 218
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    iput-object v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 223
    .line 224
    sget-object v4, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$5$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$5$1;

    .line 225
    .line 226
    iput-object v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 227
    .line 228
    invoke-static {v3, v2}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    iput-boolean v5, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 233
    .line 234
    sget-object v4, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_GET_DEFAULT_LAYOUT:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 235
    .line 236
    iput-object v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 237
    .line 238
    const-class v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetDefaultLayout;

    .line 239
    .line 240
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    iput-object v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 245
    .line 246
    const-class v4, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;

    .line 247
    .line 248
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    iput-object v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 253
    .line 254
    sget-object v4, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$7$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$7$1;

    .line 255
    .line 256
    iput-object v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 257
    .line 258
    invoke-static {v3, v2}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    iput-boolean v5, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 263
    .line 264
    sget-object v4, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_INFLATE_NAVBAR:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 265
    .line 266
    iput-object v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 267
    .line 268
    const-class v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;

    .line 269
    .line 270
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    iput-object v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 275
    .line 276
    const-class v4, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;

    .line 277
    .line 278
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    iput-object v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 283
    .line 284
    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$9$1;

    .line 285
    .line 286
    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$9$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;)V

    .line 287
    .line 288
    .line 289
    iput-object v4, v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 290
    .line 291
    invoke-static {v3, v2}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    iput-boolean v5, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 296
    .line 297
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_GET_BAR_LAYOUT_PARAMS:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 298
    .line 299
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 300
    .line 301
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetBarLayoutParams;

    .line 302
    .line 303
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 308
    .line 309
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 314
    .line 315
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$11$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$11$1;

    .line 316
    .line 317
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 318
    .line 319
    invoke-static {v0, v2}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    iput-boolean v5, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 324
    .line 325
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_INFLATE_NAVBAR_SIDE_PADDING:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 326
    .line 327
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 328
    .line 329
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarSidePadding;

    .line 330
    .line 331
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 336
    .line 337
    const-class v3, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;

    .line 338
    .line 339
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 344
    .line 345
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$13$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$13$1;

    .line 346
    .line 347
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 348
    .line 349
    invoke-static {v0, v2}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    iput-boolean v5, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 354
    .line 355
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_BAR_LAYOUT_PARAMS_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 356
    .line 357
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 358
    .line 359
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnBarLayoutParamsProviderChanged;

    .line 360
    .line 361
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 366
    .line 367
    const-class v3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 368
    .line 369
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    iput-object v4, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 374
    .line 375
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    iput-object v4, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 380
    .line 381
    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$15$1;

    .line 382
    .line 383
    invoke-direct {v4, v1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$15$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 384
    .line 385
    .line 386
    iput-object v4, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    .line 387
    .line 388
    invoke-static {v0, v2}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    iput-boolean v5, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 393
    .line 394
    sget-object v4, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_BUTTON_TO_HIDE_KEYBOARD_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 395
    .line 396
    iput-object v4, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 397
    .line 398
    const-class v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnButtonToHideKeyboardChanged;

    .line 399
    .line 400
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    iput-object v4, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 405
    .line 406
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 411
    .line 412
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 417
    .line 418
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$17$1;

    .line 419
    .line 420
    invoke-direct {v3, v1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$17$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 421
    .line 422
    .line 423
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 424
    .line 425
    invoke-static {v0, v2}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    iput-boolean v5, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 430
    .line 431
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_GET_NAVBAR_INSETS:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 432
    .line 433
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 434
    .line 435
    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarInsets;

    .line 436
    .line 437
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 442
    .line 443
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 448
    .line 449
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$19$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$19$1;

    .line 450
    .line 451
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 452
    .line 453
    invoke-static {v0, v2}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    iput-boolean v5, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 458
    .line 459
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_GET_IME_INSETS:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 460
    .line 461
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 462
    .line 463
    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetImeInsets;

    .line 464
    .line 465
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 470
    .line 471
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 476
    .line 477
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$21$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$21$1;

    .line 478
    .line 479
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 480
    .line 481
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    sget v0, Lcom/android/systemui/navigationbar/bandaid/Band;->$r8$clinit:I

    .line 489
    .line 490
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 491
    .line 492
    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 493
    .line 494
    .line 495
    iput-boolean v5, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 496
    .line 497
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_GET_MANDATORY_INSETS:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 498
    .line 499
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 500
    .line 501
    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetMandatoryInsets;

    .line 502
    .line 503
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 508
    .line 509
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 514
    .line 515
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$23$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$23$1;

    .line 516
    .line 517
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 518
    .line 519
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    return-void
.end method


# virtual methods
.method public final getBands()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->allBands:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
