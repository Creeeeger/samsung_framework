.class public final Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# instance fields
.field public final allBands:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack;->allBands:Ljava/util/List;

    .line 10
    .line 11
    sget p0, Lcom/android/systemui/navigationbar/bandaid/Band;->$r8$clinit:I

    .line 12
    .line 13
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 21
    .line 22
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_SET_HINT_GROUP:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 23
    .line 24
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 25
    .line 26
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;

    .line 27
    .line 28
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 33
    .line 34
    const-class v2, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    .line 35
    .line 36
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 41
    .line 42
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 43
    .line 44
    const-class v3, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 45
    .line 46
    filled-new-array {v2, v3}, [Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 55
    .line 56
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$1$1;

    .line 57
    .line 58
    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 59
    .line 60
    .line 61
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 62
    .line 63
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 68
    .line 69
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_EDGE_BACK_GESTURE_DISABLE_BY_POLICY:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 70
    .line 71
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 72
    .line 73
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnEdgeBackGestureDisabledByPolicyChanged;

    .line 74
    .line 75
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 80
    .line 81
    const-class v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 82
    .line 83
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    iput-object v4, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 88
    .line 89
    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$3$1;

    .line 90
    .line 91
    invoke-direct {v4, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$3$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 92
    .line 93
    .line 94
    iput-object v4, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 95
    .line 96
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const/4 v4, 0x1

    .line 101
    const/4 v5, 0x0

    .line 102
    if-eqz v1, :cond_0

    .line 103
    .line 104
    sget-boolean v6, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    .line 105
    .line 106
    if-eqz v6, :cond_0

    .line 107
    .line 108
    move v6, v4

    .line 109
    goto :goto_0

    .line 110
    :cond_0
    move v6, v5

    .line 111
    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 112
    .line 113
    sget-object v6, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_SHOW_FLOATING_GAMETOOLS_ICON:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 114
    .line 115
    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 116
    .line 117
    const-class v6, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;

    .line 118
    .line 119
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 124
    .line 125
    const-class v6, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 126
    .line 127
    const-class v7, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 128
    .line 129
    filled-new-array {v7, v6}, [Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-static {v6}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 138
    .line 139
    sget-object v6, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$5$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$5$1;

    .line 140
    .line 141
    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 142
    .line 143
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 148
    .line 149
    sget-object v6, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_SET_HINT_VISIBILITY:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 150
    .line 151
    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 152
    .line 153
    const-class v6, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSpayVisibility;

    .line 154
    .line 155
    const-class v8, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;

    .line 156
    .line 157
    filled-new-array {v6, v8}, [Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-static {v6}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 166
    .line 167
    const-class v6, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    .line 168
    .line 169
    filled-new-array {v7, v6}, [Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-static {v6}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 178
    .line 179
    const-class v6, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 180
    .line 181
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 186
    .line 187
    new-instance v6, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$7$1;

    .line 188
    .line 189
    invoke-direct {v6, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$7$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 190
    .line 191
    .line 192
    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    .line 193
    .line 194
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 199
    .line 200
    sget-object v6, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_RESET_HINT_VI:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 201
    .line 202
    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 203
    .line 204
    const-class v6, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$ResetBottomGestureHintVI;

    .line 205
    .line 206
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 211
    .line 212
    const-class v6, Lcom/android/systemui/recents/OverviewProxyService;

    .line 213
    .line 214
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 219
    .line 220
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 225
    .line 226
    new-instance v7, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$9$1;

    .line 227
    .line 228
    invoke-direct {v7, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$9$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 229
    .line 230
    .line 231
    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 232
    .line 233
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 238
    .line 239
    sget-object v7, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_START_HINT_VI:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 240
    .line 241
    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 242
    .line 243
    const-class v7, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$StartBottomGestureHintVI;

    .line 244
    .line 245
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 250
    .line 251
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 256
    .line 257
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 262
    .line 263
    new-instance v7, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$11$1;

    .line 264
    .line 265
    invoke-direct {v7, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$11$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 266
    .line 267
    .line 268
    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 269
    .line 270
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 275
    .line 276
    sget-object v7, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_MOVE_HINT_VI:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 277
    .line 278
    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 279
    .line 280
    const-class v7, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;

    .line 281
    .line 282
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 287
    .line 288
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 293
    .line 294
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 299
    .line 300
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$13$1;

    .line 301
    .line 302
    invoke-direct {v3, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$13$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 303
    .line 304
    .line 305
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 306
    .line 307
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 312
    .line 313
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_KNOX_HARD_KEY_INTENT_POLICY:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 314
    .line 315
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 316
    .line 317
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnHardKeyIntentPolicyChanged;

    .line 318
    .line 319
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 324
    .line 325
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 330
    .line 331
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 332
    .line 333
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 338
    .line 339
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$15$1;

    .line 340
    .line 341
    invoke-direct {v3, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$15$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 342
    .line 343
    .line 344
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    .line 345
    .line 346
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 351
    .line 352
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_UPDATE_SYSTEMUI_STATE_FLAG:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 353
    .line 354
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 355
    .line 356
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSysUiStateFlag;

    .line 357
    .line 358
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 363
    .line 364
    const-class v3, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    .line 365
    .line 366
    filled-new-array {v6, v3}, [Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 375
    .line 376
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 377
    .line 378
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 383
    .line 384
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$17$1;

    .line 385
    .line 386
    invoke-direct {v3, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$17$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 387
    .line 388
    .line 389
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    .line 390
    .line 391
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 392
    .line 393
    .line 394
    move-result-object p0

    .line 395
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 396
    .line 397
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_UPDATE_ONEHAND_MODE_INFO:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 398
    .line 399
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 400
    .line 401
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnOneHandModeChanged;

    .line 402
    .line 403
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 404
    .line 405
    .line 406
    move-result-object v6

    .line 407
    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 408
    .line 409
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 414
    .line 415
    new-instance v6, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$19$1;

    .line 416
    .line 417
    invoke-direct {v6, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$19$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 418
    .line 419
    .line 420
    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 421
    .line 422
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 423
    .line 424
    .line 425
    move-result-object p0

    .line 426
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 427
    .line 428
    sget-object v6, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_UPDATE_REGION_SAMPLING_RECT:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 429
    .line 430
    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 431
    .line 432
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 433
    .line 434
    .line 435
    move-result-object v3

    .line 436
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 437
    .line 438
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 443
    .line 444
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 445
    .line 446
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 451
    .line 452
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$21$1;

    .line 453
    .line 454
    invoke-direct {v3, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$21$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 455
    .line 456
    .line 457
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    .line 458
    .line 459
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 460
    .line 461
    .line 462
    move-result-object p0

    .line 463
    if-eqz v1, :cond_1

    .line 464
    .line 465
    sget-boolean v3, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    .line 466
    .line 467
    if-eqz v3, :cond_1

    .line 468
    .line 469
    move v3, v4

    .line 470
    goto :goto_1

    .line 471
    :cond_1
    move v3, v5

    .line 472
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 473
    .line 474
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_RECALCULATE_INSET_SCALE:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 475
    .line 476
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 477
    .line 478
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnFoldStateChanged;

    .line 479
    .line 480
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 485
    .line 486
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 491
    .line 492
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$23$1;

    .line 493
    .line 494
    invoke-direct {v3, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$23$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 495
    .line 496
    .line 497
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 498
    .line 499
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 500
    .line 501
    .line 502
    move-result-object p0

    .line 503
    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    .line 504
    .line 505
    if-eqz v3, :cond_2

    .line 506
    .line 507
    if-eqz v1, :cond_2

    .line 508
    .line 509
    goto :goto_2

    .line 510
    :cond_2
    move v4, v5

    .line 511
    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 512
    .line 513
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_UPDATE_GAMETOOLS_VISIBILITY:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 514
    .line 515
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 516
    .line 517
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;

    .line 518
    .line 519
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 524
    .line 525
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 526
    .line 527
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 528
    .line 529
    .line 530
    move-result-object v3

    .line 531
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 532
    .line 533
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$25$1;

    .line 534
    .line 535
    invoke-direct {v3, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$25$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 536
    .line 537
    .line 538
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 539
    .line 540
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 541
    .line 542
    .line 543
    move-result-object p0

    .line 544
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 545
    .line 546
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_BOTTOM_SENSITIVITY_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 547
    .line 548
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 549
    .line 550
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnBottomSensitivityChanged;

    .line 551
    .line 552
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 557
    .line 558
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 563
    .line 564
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$27$1;

    .line 565
    .line 566
    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$27$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 567
    .line 568
    .line 569
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 570
    .line 571
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 572
    .line 573
    .line 574
    move-result-object p0

    .line 575
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 576
    .line 577
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_UPDATE_ACTIVE_INDICATOR_SPRING_PARAMS:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 578
    .line 579
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 580
    .line 581
    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateBackGestureActiveIndicatorParams;

    .line 582
    .line 583
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 588
    .line 589
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 590
    .line 591
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 592
    .line 593
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$29$1;

    .line 594
    .line 595
    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$29$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 596
    .line 597
    .line 598
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 599
    .line 600
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    .line 601
    .line 602
    .line 603
    move-result-object p0

    .line 604
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    return-void
.end method


# virtual methods
.method public final getBands()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack;->allBands:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
