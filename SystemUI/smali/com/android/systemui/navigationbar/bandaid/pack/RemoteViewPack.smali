.class public final Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;
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
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;->allBands:Ljava/util/List;

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
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    .line 21
    .line 22
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 23
    .line 24
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->REMOTE_VIEW_PACK_INIT_REMOTE_VIEW_MANAGER:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 25
    .line 26
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 27
    .line 28
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;

    .line 29
    .line 30
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnInvalidateRemoteViews;

    .line 31
    .line 32
    filled-new-array {v2, v3}, [Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 41
    .line 42
    const-class v2, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    .line 43
    .line 44
    const-class v3, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

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
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 55
    .line 56
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 57
    .line 58
    const-class v3, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 59
    .line 60
    filled-new-array {v3, v2}, [Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 69
    .line 70
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$1$1;

    .line 71
    .line 72
    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$1$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;)V

    .line 73
    .line 74
    .line 75
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 76
    .line 77
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 82
    .line 83
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->REMOTE_VIEW_PACK_SET_REMOTEVIEW_CONTAINER:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 84
    .line 85
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 86
    .line 87
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;

    .line 88
    .line 89
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 94
    .line 95
    const-class v2, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    .line 96
    .line 97
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 102
    .line 103
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 104
    .line 105
    filled-new-array {v3, v2}, [Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 114
    .line 115
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$3$1;

    .line 116
    .line 117
    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$3$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;)V

    .line 118
    .line 119
    .line 120
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 121
    .line 122
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 127
    .line 128
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->REMOTE_VIEW_PACK_SET_NAVBAR_SHORTCUT_TO_MANAGER:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 129
    .line 130
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 131
    .line 132
    const-class v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;

    .line 133
    .line 134
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    iput-object v5, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 139
    .line 140
    const-class v5, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 141
    .line 142
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    iput-object v6, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 147
    .line 148
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    iput-object v6, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 153
    .line 154
    new-instance v6, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$5$1;

    .line 155
    .line 156
    invoke-direct {v6, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$5$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;)V

    .line 157
    .line 158
    .line 159
    iput-object v6, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 160
    .line 161
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 166
    .line 167
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 168
    .line 169
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 174
    .line 175
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 180
    .line 181
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 182
    .line 183
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 188
    .line 189
    const/4 v2, 0x2

    .line 190
    iput v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:I

    .line 191
    .line 192
    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$7$1;

    .line 193
    .line 194
    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$7$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;)V

    .line 195
    .line 196
    .line 197
    iput-object v4, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 198
    .line 199
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 204
    .line 205
    sget-object v4, Lcom/android/systemui/navigationbar/bandaid/BandAid;->REMOTE_VIEW_PACK_UPDATE_DARK_INTENSITY:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 206
    .line 207
    iput-object v4, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 208
    .line 209
    const-class v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateDarkIntensity;

    .line 210
    .line 211
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    iput-object v4, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 216
    .line 217
    const-class v4, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 218
    .line 219
    const-class v5, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 220
    .line 221
    filled-new-array {v4, v5}, [Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    iput-object v4, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 230
    .line 231
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    iput-object v4, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 236
    .line 237
    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$9$1;

    .line 238
    .line 239
    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$9$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;)V

    .line 240
    .line 241
    .line 242
    iput-object v4, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 243
    .line 244
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 249
    .line 250
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->REMOTE_VIEW_PACK_PACKAGE_REMOVED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 251
    .line 252
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 253
    .line 254
    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnPackageRemoved;

    .line 255
    .line 256
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 261
    .line 262
    const-class v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 263
    .line 264
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 269
    .line 270
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 275
    .line 276
    iput v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:I

    .line 277
    .line 278
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$11$1;

    .line 279
    .line 280
    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$11$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;)V

    .line 281
    .line 282
    .line 283
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    return-void
.end method


# virtual methods
.method public final getBands()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;->allBands:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
