.class public final Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# instance fields
.field public final allBands:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 5

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
    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack;->allBands:Ljava/util/List;

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
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->CONFIG_PACK_CONFIG_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 21
    .line 22
    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;

    .line 23
    .line 24
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 29
    .line 30
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 31
    .line 32
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 37
    .line 38
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 39
    .line 40
    const-class v2, Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 41
    .line 42
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 43
    .line 44
    filled-new-array {v1, v2, v3}, [Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 53
    .line 54
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$band$1$1;

    .line 55
    .line 56
    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$band$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 60
    .line 61
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_ICON_MOVEMENT:Z

    .line 66
    .line 67
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 68
    .line 69
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->CONFIG_PACK_NAVBAR_ICON_MARQUEE:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 70
    .line 71
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 72
    .line 73
    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconMarquee;

    .line 74
    .line 75
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 80
    .line 81
    const-class v1, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    .line 82
    .line 83
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 88
    .line 89
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 90
    .line 91
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 96
    .line 97
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$1$1;

    .line 98
    .line 99
    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 103
    .line 104
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->CONFIG_PACK_GET_DEADZONE_SIZE:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 109
    .line 110
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 111
    .line 112
    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetDeadZoneSize;

    .line 113
    .line 114
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 119
    .line 120
    const-class v1, Lcom/android/systemui/navigationbar/buttons/DeadZone;

    .line 121
    .line 122
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 127
    .line 128
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$2$1;

    .line 129
    .line 130
    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$2$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 131
    .line 132
    .line 133
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 134
    .line 135
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->CONFIG_PACK_KEY_ORDER_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 140
    .line 141
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 142
    .line 143
    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnButtonOrderChanged;

    .line 144
    .line 145
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 150
    .line 151
    const-class v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 152
    .line 153
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 158
    .line 159
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$3$1;

    .line 160
    .line 161
    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$3$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 162
    .line 163
    .line 164
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 165
    .line 166
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->CONFIG_PACK_KEY_POSITION_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 171
    .line 172
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 173
    .line 174
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnButtonPositionChanged;

    .line 175
    .line 176
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 181
    .line 182
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 187
    .line 188
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$4$1;

    .line 189
    .line 190
    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$4$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 191
    .line 192
    .line 193
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 194
    .line 195
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_OPEN_THEME:Z

    .line 200
    .line 201
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 202
    .line 203
    sget-object v4, Lcom/android/systemui/navigationbar/bandaid/BandAid;->CONFIG_PACK_OPEN_THEME_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 204
    .line 205
    iput-object v4, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 206
    .line 207
    const-class v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnOpenThemeChanged;

    .line 208
    .line 209
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    iput-object v4, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 214
    .line 215
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    iput-object v4, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 220
    .line 221
    const-class v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 222
    .line 223
    filled-new-array {v4, v3}, [Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    iput-object v4, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 232
    .line 233
    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$5$1;

    .line 234
    .line 235
    invoke-direct {v4, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$5$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 236
    .line 237
    .line 238
    iput-object v4, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 239
    .line 240
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 245
    .line 246
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->CONFIG_PACK_THEME_DEFAULT_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 247
    .line 248
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 249
    .line 250
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUseThemeDefaultChanged;

    .line 251
    .line 252
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 257
    .line 258
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 263
    .line 264
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 265
    .line 266
    filled-new-array {v2, v3}, [Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 275
    .line 276
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$6$1;

    .line 277
    .line 278
    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$6$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 279
    .line 280
    .line 281
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 282
    .line 283
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    sget-object p1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->CONFIG_PACK_ACTION_SOFT_RESET:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 288
    .line 289
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 290
    .line 291
    const-class p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSettingsSoftReset;

    .line 292
    .line 293
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 298
    .line 299
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 304
    .line 305
    sget-object p1, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$7$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$7$1;

    .line 306
    .line 307
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 308
    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    return-void
.end method


# virtual methods
.method public final getBands()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack;->allBands:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
