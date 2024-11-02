.class public final Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# instance fields
.field public final allBands:Ljava/util/List;

.field public coverWindowState:I

.field public final gestureSidePadding:I

.field public final sidePadding:I

.field public final store:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->allBands:Ljava/util/List;

    .line 12
    .line 13
    const/16 v0, 0x18f

    .line 14
    .line 15
    iput v0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->sidePadding:I

    .line 16
    .line 17
    const/16 v0, 0x42

    .line 18
    .line 19
    iput v0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->gestureSidePadding:I

    .line 20
    .line 21
    sget v0, Lcom/android/systemui/navigationbar/bandaid/Band;->$r8$clinit:I

    .line 22
    .line 23
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    .line 29
    .line 30
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 31
    .line 32
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COVER_SCREEN_PACK_NAVBAR_VISIBILITY_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 33
    .line 34
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 35
    .line 36
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarLargeCoverScreenVisibilityChanged;

    .line 37
    .line 38
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 43
    .line 44
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 45
    .line 46
    const-class v3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 47
    .line 48
    filled-new-array {v2, v3}, [Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 57
    .line 58
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 59
    .line 60
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 65
    .line 66
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$1$1;

    .line 67
    .line 68
    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$1$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    .line 69
    .line 70
    .line 71
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 72
    .line 73
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 78
    .line 79
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COVER_SCREEN_PACK_NAVBAR_ATTACHED_TO_WINDOW:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 80
    .line 81
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 82
    .line 83
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;

    .line 84
    .line 85
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 90
    .line 91
    const-class v2, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    .line 92
    .line 93
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 98
    .line 99
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 100
    .line 101
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 106
    .line 107
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$3$1;

    .line 108
    .line 109
    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$3$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    .line 110
    .line 111
    .line 112
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 113
    .line 114
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$3$2;

    .line 115
    .line 116
    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$3$2;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    .line 117
    .line 118
    .line 119
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    .line 120
    .line 121
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 126
    .line 127
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COVER_SCREEN_PACK_NAVBAR_DETACHED_TO_WINDOW:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 128
    .line 129
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 130
    .line 131
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarDetachedFromWindow;

    .line 132
    .line 133
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 138
    .line 139
    const-class v2, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    .line 140
    .line 141
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 146
    .line 147
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$5$1;

    .line 148
    .line 149
    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$5$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    .line 150
    .line 151
    .line 152
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 153
    .line 154
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 159
    .line 160
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COVER_SCREEN_PACK_GET_NAVBAR_PADDING:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 161
    .line 162
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 163
    .line 164
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarLargeCoverScreenPadding;

    .line 165
    .line 166
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 171
    .line 172
    const-class v2, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    .line 173
    .line 174
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 179
    .line 180
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 181
    .line 182
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 187
    .line 188
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$7$1;

    .line 189
    .line 190
    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$7$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    .line 191
    .line 192
    .line 193
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 194
    .line 195
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 200
    .line 201
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COVER_SCREEN_PACK_FOLD_STATE_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 202
    .line 203
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 204
    .line 205
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnFoldStateChanged;

    .line 206
    .line 207
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 212
    .line 213
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 218
    .line 219
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 220
    .line 221
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 226
    .line 227
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$9$1;

    .line 228
    .line 229
    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$9$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    .line 230
    .line 231
    .line 232
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 233
    .line 234
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 239
    .line 240
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COVER_SCREEN_PACK_GET_DEADZONE_SIZE:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 241
    .line 242
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 243
    .line 244
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetDeadZoneSize;

    .line 245
    .line 246
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 251
    .line 252
    const-class v2, Lcom/android/systemui/navigationbar/buttons/DeadZone;

    .line 253
    .line 254
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 259
    .line 260
    const/4 v2, 0x2

    .line 261
    iput v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:I

    .line 262
    .line 263
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$11$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$11$1;

    .line 264
    .line 265
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 266
    .line 267
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 272
    .line 273
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COVER_SCREEN_PACK_COVER_WINDOW_STATE:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 274
    .line 275
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 276
    .line 277
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarWindowStateShowing;

    .line 278
    .line 279
    const-class v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarWindowStateHidden;

    .line 280
    .line 281
    filled-new-array {v2, v4}, [Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 290
    .line 291
    const-class v2, Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 292
    .line 293
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 298
    .line 299
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$1;

    .line 300
    .line 301
    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    .line 302
    .line 303
    .line 304
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 305
    .line 306
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$2;

    .line 307
    .line 308
    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$2;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    .line 309
    .line 310
    .line 311
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    .line 312
    .line 313
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 318
    .line 319
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COVER_SCREEN_PACK_ROTATION_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 320
    .line 321
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 322
    .line 323
    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnCoverRotationChanged;

    .line 324
    .line 325
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 330
    .line 331
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 336
    .line 337
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 338
    .line 339
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 344
    .line 345
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$15$1;

    .line 346
    .line 347
    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$15$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    .line 348
    .line 349
    .line 350
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    .line 351
    .line 352
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    .line 353
    .line 354
    .line 355
    move-result-object p0

    .line 356
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    return-void
.end method

.method public static final access$updateLargeCoverNavBarVisibility(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;Lcom/android/systemui/navigationbar/bandaid/Band$Kit;I)V
    .locals 28

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v15, p2

    .line 4
    .line 5
    move/from16 v14, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v13, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SetNavBarVisibility;

    .line 11
    .line 12
    new-instance v12, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 13
    .line 14
    move-object v1, v12

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v10, 0x0

    .line 24
    const/4 v11, 0x0

    .line 25
    const/16 v16, 0x0

    .line 26
    .line 27
    move-object/from16 v26, v12

    .line 28
    .line 29
    move/from16 v12, v16

    .line 30
    .line 31
    move-object/from16 v27, v13

    .line 32
    .line 33
    move/from16 v13, v16

    .line 34
    .line 35
    move/from16 v15, v16

    .line 36
    .line 37
    const/16 v16, 0x0

    .line 38
    .line 39
    const/16 v17, 0x0

    .line 40
    .line 41
    const/16 v18, 0x0

    .line 42
    .line 43
    const/16 v19, 0x0

    .line 44
    .line 45
    const/16 v20, 0x0

    .line 46
    .line 47
    const/16 v21, 0x0

    .line 48
    .line 49
    const/16 v22, 0x0

    .line 50
    .line 51
    const/16 v23, 0x0

    .line 52
    .line 53
    const v24, 0x3fefff

    .line 54
    .line 55
    .line 56
    const/16 v25, 0x0

    .line 57
    .line 58
    invoke-direct/range {v1 .. v25}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    .line 60
    .line 61
    move-object/from16 v2, v26

    .line 62
    .line 63
    move-object/from16 v1, v27

    .line 64
    .line 65
    invoke-direct {v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SetNavBarVisibility;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    .line 66
    .line 67
    .line 68
    move-object/from16 v2, p0

    .line 69
    .line 70
    iget-object v2, v2, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 71
    .line 72
    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 73
    .line 74
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 75
    .line 76
    .line 77
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 78
    .line 79
    iget v0, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    .line 80
    .line 81
    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 86
    .line 87
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 88
    .line 89
    const/4 v2, 0x1

    .line 90
    const/4 v3, 0x0

    .line 91
    const/16 v4, 0x8

    .line 92
    .line 93
    move/from16 v5, p2

    .line 94
    .line 95
    if-ne v5, v4, :cond_0

    .line 96
    .line 97
    move v6, v2

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    move v6, v3

    .line 100
    :goto_0
    iput-boolean v6, v1, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mIsWindowGone:Z

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    .line 103
    .line 104
    .line 105
    if-ne v5, v4, :cond_1

    .line 106
    .line 107
    move v1, v2

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    move v1, v3

    .line 110
    :goto_1
    iget-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 111
    .line 112
    iput-boolean v1, v6, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsLargeCoverBackGestureEnabled:Z

    .line 113
    .line 114
    invoke-virtual {v6}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateCurrentUserResources()V

    .line 118
    .line 119
    .line 120
    if-ne v5, v4, :cond_2

    .line 121
    .line 122
    move v3, v2

    .line 123
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 124
    .line 125
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityGestureHandler:Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;

    .line 126
    .line 127
    xor-int/lit8 v1, v3, 0x1

    .line 128
    .line 129
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->isCoverNavBarVisible:Z

    .line 130
    .line 131
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->tag:Ljava/lang/String;

    .line 132
    .line 133
    const-string v2, "coverNavbarVisibilityChanged"

    .line 134
    .line 135
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->updateIsEnabled()V

    .line 139
    .line 140
    .line 141
    return-void
.end method


# virtual methods
.method public final getBands()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->allBands:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
