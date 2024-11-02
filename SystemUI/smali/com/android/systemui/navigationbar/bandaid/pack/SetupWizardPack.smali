.class public final Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# instance fields
.field public final allBands:Ljava/util/List;

.field public final store:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;->allBands:Ljava/util/List;

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
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_SETUPWIZARD:Z

    .line 21
    .line 22
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 23
    .line 24
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->SETUPWIZARD_PACK_SET_NAVBAR_STYLE:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 25
    .line 26
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 27
    .line 28
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarStyleChanged;

    .line 29
    .line 30
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;

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
    const-class v3, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 45
    .line 46
    const-class v4, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 47
    .line 48
    filled-new-array {v2, v4, v3}, [Ljava/lang/Class;

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
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$band$1$1;

    .line 67
    .line 68
    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$band$1$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;)V

    .line 69
    .line 70
    .line 71
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

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
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->SETUPWIZARD_PACK_UPDATE_DISABLE_FLAGS:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 80
    .line 81
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 82
    .line 83
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetDisableFlags;

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
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 96
    .line 97
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 98
    .line 99
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 104
    .line 105
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$1$1;

    .line 106
    .line 107
    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$1$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;)V

    .line 108
    .line 109
    .line 110
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 111
    .line 112
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 117
    .line 118
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->SETUPWIZARD_PACK_UPDATE_DARK_INTENSITY:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 119
    .line 120
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 121
    .line 122
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateDarkIntensity;

    .line 123
    .line 124
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 129
    .line 130
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 131
    .line 132
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 137
    .line 138
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 139
    .line 140
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 145
    .line 146
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1;

    .line 147
    .line 148
    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;)V

    .line 149
    .line 150
    .line 151
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 152
    .line 153
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 158
    .line 159
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->SETUPWIZARD_PACK_SET_NAVBAR_ICON_HINT:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 160
    .line 161
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 162
    .line 163
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconHintChanged;

    .line 164
    .line 165
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 170
    .line 171
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 176
    .line 177
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 178
    .line 179
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 184
    .line 185
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$3$1;

    .line 186
    .line 187
    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$3$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;)V

    .line 188
    .line 189
    .line 190
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 191
    .line 192
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 197
    .line 198
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->SETUPWIZARD_PACK_UPDATE_A11Y_SERVICE:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 199
    .line 200
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 201
    .line 202
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarUpdateA11YService;

    .line 203
    .line 204
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 209
    .line 210
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 215
    .line 216
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 217
    .line 218
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 223
    .line 224
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$4$1;

    .line 225
    .line 226
    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$4$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;)V

    .line 227
    .line 228
    .line 229
    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 230
    .line 231
    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 236
    .line 237
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->SETUPWIZARD_PACK_NAVBAR_BUTTON_FORCED_VISIBLE_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 238
    .line 239
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 240
    .line 241
    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarButtonForcedVisibleChanged;

    .line 242
    .line 243
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 248
    .line 249
    const-class v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 250
    .line 251
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 256
    .line 257
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 258
    .line 259
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 264
    .line 265
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$5$1;

    .line 266
    .line 267
    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$5$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;)V

    .line 268
    .line 269
    .line 270
    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    return-void
.end method


# virtual methods
.method public final getBands()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;->allBands:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
