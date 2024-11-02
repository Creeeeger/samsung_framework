.class public final Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# instance fields
.field public final allBands:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 4

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
    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack;->allBands:Ljava/util/List;

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
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->VIS_PACK_UPDATE_NAVBAR_VISIBILITY:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 21
    .line 22
    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateNavBarVisibility;

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
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarFrame;

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
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 45
    .line 46
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$1$1;

    .line 47
    .line 48
    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 52
    .line 53
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_KNOX_MONITOR:Z

    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 60
    .line 61
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->VIS_PACK_UPDATE_NAVBAR_VISIBILITY_BY_KNOX:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 62
    .line 63
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 64
    .line 65
    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarKnoxPolicyChanged;

    .line 66
    .line 67
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 72
    .line 73
    const-class v3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 74
    .line 75
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 80
    .line 81
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 82
    .line 83
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 88
    .line 89
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$3$1;

    .line 90
    .line 91
    invoke-direct {v3, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$3$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 92
    .line 93
    .line 94
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 95
    .line 96
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 101
    .line 102
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 103
    .line 104
    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;

    .line 105
    .line 106
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 111
    .line 112
    const-class v1, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    .line 113
    .line 114
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 119
    .line 120
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 121
    .line 122
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 127
    .line 128
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$5$1;

    .line 129
    .line 130
    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$5$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

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
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->VIS_PACK_REEVAULATE_NAVBAR:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 140
    .line 141
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 142
    .line 143
    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconHintChanged;

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
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 152
    .line 153
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 158
    .line 159
    const-class v1, Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 160
    .line 161
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 166
    .line 167
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$7$1;

    .line 168
    .line 169
    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$7$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 170
    .line 171
    .line 172
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 173
    .line 174
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->VIS_PACK_UPDATE_SYSTEMUI_STATE_FLAG:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 179
    .line 180
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 181
    .line 182
    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSysUiStateFlag;

    .line 183
    .line 184
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 189
    .line 190
    const-class v1, Lcom/android/systemui/recents/OverviewProxyService;

    .line 191
    .line 192
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 197
    .line 198
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 199
    .line 200
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 205
    .line 206
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$9$1;

    .line 207
    .line 208
    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$9$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 209
    .line 210
    .line 211
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    return-void
.end method


# virtual methods
.method public final getBands()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack;->allBands:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
