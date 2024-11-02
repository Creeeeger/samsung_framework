.class public final Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack;
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
    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack;->allBands:Ljava/util/List;

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
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_LIGHTBAR:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 21
    .line 22
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COLOR_PACK_REEVALUATE_NAVBAR:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 23
    .line 24
    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 25
    .line 26
    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLightBarControllerCreated;

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
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 35
    .line 36
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 41
    .line 42
    const-class v3, Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 43
    .line 44
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iput-object v4, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 49
    .line 50
    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$band$1$1;

    .line 51
    .line 52
    invoke-direct {v4, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$band$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 53
    .line 54
    .line 55
    iput-object v4, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 56
    .line 57
    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 62
    .line 63
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COLOR_PACK_ON_UPDATE_REGION_SAMPLING_LISTENER:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 64
    .line 65
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 66
    .line 67
    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRegionSamplingListener;

    .line 68
    .line 69
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    .line 74
    .line 75
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 80
    .line 81
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    .line 86
    .line 87
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$1$1;

    .line 88
    .line 89
    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final getBands()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack;->allBands:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
