.class public final Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# instance fields
.field public final allBands:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 3

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
    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack;->allBands:Ljava/util/List;

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
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_DESKTOP:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 21
    .line 22
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->MISC_PACK_CONTROL_NAVBAR_IN_DEX_STANDALONE:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 25
    .line 26
    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnDesktopModeChanged;

    .line 27
    .line 28
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 33
    .line 34
    const-class v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 35
    .line 36
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

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
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 49
    .line 50
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$1$1;

    .line 51
    .line 52
    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 56
    .line 57
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_NEW_DEX:Z

    .line 62
    .line 63
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 64
    .line 65
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->MISC_PACK_CONTROL_NAVBAR_IN_NEW_DEX_MODE:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 66
    .line 67
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 68
    .line 69
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNewDexModeChanged;

    .line 70
    .line 71
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 76
    .line 77
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 82
    .line 83
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 84
    .line 85
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 90
    .line 91
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$3$1;

    .line 92
    .line 93
    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$3$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 97
    .line 98
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->MISC_PACK_SHOW_A11Y_SWIPE_UP_TIP_POPUP:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 103
    .line 104
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 105
    .line 106
    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnShowA11YSwipeUpTipPopup;

    .line 107
    .line 108
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 113
    .line 114
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 115
    .line 116
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 121
    .line 122
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 123
    .line 124
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 129
    .line 130
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$5$1;

    .line 131
    .line 132
    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$5$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 133
    .line 134
    .line 135
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 136
    .line 137
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->MISC_PACK_UPDATE_A11Y_STATE_ON_USER_SWITCHED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 142
    .line 143
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 144
    .line 145
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUserSwitched;

    .line 146
    .line 147
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 152
    .line 153
    const-class v2, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 154
    .line 155
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

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
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$7$1;

    .line 168
    .line 169
    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$7$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 170
    .line 171
    .line 172
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    return-void
.end method


# virtual methods
.method public final getBands()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack;->allBands:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
