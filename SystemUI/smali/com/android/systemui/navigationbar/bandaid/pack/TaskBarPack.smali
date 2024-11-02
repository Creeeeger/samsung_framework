.class public final Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# instance fields
.field public final allBands:Ljava/util/List;

.field public final store:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;->allBands:Ljava/util/List;

    .line 12
    .line 13
    sget v0, Lcom/android/systemui/navigationbar/bandaid/Band;->$r8$clinit:I

    .line 14
    .line 15
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_TASKBAR:Z

    .line 21
    .line 22
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 23
    .line 24
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_PACKAGE_REMOVED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 25
    .line 26
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 27
    .line 28
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnPackageRemoved;

    .line 29
    .line 30
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 35
    .line 36
    const-class v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 37
    .line 38
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 43
    .line 44
    const-class v3, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 45
    .line 46
    const-class v4, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 47
    .line 48
    filled-new-array {v4, v3}, [Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    iput v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:I

    .line 60
    .line 61
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$1$1;

    .line 62
    .line 63
    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$1$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    .line 64
    .line 65
    .line 66
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 67
    .line 68
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 73
    .line 74
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_OPEN_THEME_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 75
    .line 76
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 77
    .line 78
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUseThemeDefaultChanged;

    .line 79
    .line 80
    const-class v5, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnOpenThemeChanged;

    .line 81
    .line 82
    const-class v6, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;

    .line 83
    .line 84
    filled-new-array {v3, v6, v5}, [Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 93
    .line 94
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 95
    .line 96
    filled-new-array {v2, v3}, [Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 105
    .line 106
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 111
    .line 112
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$3$1;

    .line 113
    .line 114
    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$3$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    .line 115
    .line 116
    .line 117
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 118
    .line 119
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 124
    .line 125
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_ROTATION_LOCKED_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 126
    .line 127
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 128
    .line 129
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationLockedChanged;

    .line 130
    .line 131
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 136
    .line 137
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 142
    .line 143
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 148
    .line 149
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$5$1;

    .line 150
    .line 151
    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$5$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    .line 152
    .line 153
    .line 154
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 155
    .line 156
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 161
    .line 162
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_SET_REMOTEVIEW:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 163
    .line 164
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 165
    .line 166
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;

    .line 167
    .line 168
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 173
    .line 174
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 175
    .line 176
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 181
    .line 182
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 187
    .line 188
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$7$1;

    .line 189
    .line 190
    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$7$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    .line 191
    .line 192
    .line 193
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

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
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_UPDATE_VISIBILITY_BY_KNOX:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 202
    .line 203
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 204
    .line 205
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarKnoxPolicyChanged;

    .line 206
    .line 207
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 212
    .line 213
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 218
    .line 219
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 224
    .line 225
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$9$1;

    .line 226
    .line 227
    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$9$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    .line 228
    .line 229
    .line 230
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 231
    .line 232
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 237
    .line 238
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_ATTACHED_TO_WINDOW:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 239
    .line 240
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 241
    .line 242
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnTaskbarAttachedToWindow;

    .line 243
    .line 244
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 249
    .line 250
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 255
    .line 256
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 261
    .line 262
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$11$1;

    .line 263
    .line 264
    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$11$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    .line 265
    .line 266
    .line 267
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 268
    .line 269
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 274
    .line 275
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_DETACHED_FROM_WINDOW:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 276
    .line 277
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 278
    .line 279
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnTaskbarDetachedFromWindow;

    .line 280
    .line 281
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 286
    .line 287
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 292
    .line 293
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 298
    .line 299
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$13$1;

    .line 300
    .line 301
    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$13$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    .line 302
    .line 303
    .line 304
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 305
    .line 306
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 311
    .line 312
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_CONFIG_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 313
    .line 314
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 315
    .line 316
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 321
    .line 322
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 327
    .line 328
    const-class v3, Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 329
    .line 330
    const-class v5, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 331
    .line 332
    filled-new-array {v4, v3, v5}, [Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 341
    .line 342
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$15$1;

    .line 343
    .line 344
    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$15$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    .line 345
    .line 346
    .line 347
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 348
    .line 349
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 354
    .line 355
    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_UPDATE_SIDE_BACK_INSETS:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 356
    .line 357
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 358
    .line 359
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSideBackGestureInsets;

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
    const-class v3, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 368
    .line 369
    filled-new-array {v3, v4}, [Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 378
    .line 379
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 384
    .line 385
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$17$1;

    .line 386
    .line 387
    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$17$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    .line 388
    .line 389
    .line 390
    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 391
    .line 392
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 393
    .line 394
    .line 395
    move-result-object p0

    .line 396
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 397
    .line 398
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_UPDATE_TASKBAR_AVAILABLE:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 399
    .line 400
    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 401
    .line 402
    const-class v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateTaskbarAvailable;

    .line 403
    .line 404
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 409
    .line 410
    const-class v0, Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 411
    .line 412
    const-class v1, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 413
    .line 414
    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 423
    .line 424
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$19$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$19$1;

    .line 425
    .line 426
    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 427
    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    return-void
.end method

.method public static final access$makeRemoteViewEventToRemove(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;Ljava/lang/String;I)Lcom/android/systemui/shared/navigationbar/NavBarEvents;
    .locals 16

    .line 1
    new-instance v15, Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v8, 0x0

    .line 11
    const/4 v9, 0x0

    .line 12
    const/4 v10, 0x0

    .line 13
    const/4 v11, 0x0

    .line 14
    const/4 v12, 0x0

    .line 15
    const/16 v13, 0xfff

    .line 16
    .line 17
    const/4 v14, 0x0

    .line 18
    move-object v0, v15

    .line 19
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;-><init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v1, "requestClass"

    .line 28
    .line 29
    .line 30
    move-object/from16 v2, p1

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v1, "remoteViews"

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v1, "position"

    .line 43
    .line 44
    .line 45
    move/from16 v2, p2

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    const-string/jumbo v1, "priority"

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    sget-object v1, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_UPDATE_NAVBAR_REMOTEVIEWS:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    .line 58
    .line 59
    iput-object v1, v15, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    .line 60
    .line 61
    iput-object v0, v15, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->remoteViewBundle:Landroid/os/Bundle;

    .line 62
    .line 63
    return-object v15
.end method


# virtual methods
.method public final getBands()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;->allBands:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
