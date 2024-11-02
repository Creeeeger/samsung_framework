.class public final Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;


# instance fields
.field public final packs:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->packs:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getPacks(Lcom/android/systemui/navigationbar/store/NavBarStore;)Ljava/util/List;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->packs:Ljava/util/List;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 15
    .line 16
    .line 17
    move-object v1, p0

    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 26
    .line 27
    .line 28
    move-object v1, p0

    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 37
    .line 38
    .line 39
    move-object v1, p0

    .line 40
    check-cast v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;

    .line 46
    .line 47
    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 48
    .line 49
    .line 50
    move-object v1, p0

    .line 51
    check-cast v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack;

    .line 57
    .line 58
    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 59
    .line 60
    .line 61
    move-object v1, p0

    .line 62
    check-cast v1, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack;

    .line 68
    .line 69
    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 70
    .line 71
    .line 72
    move-object v1, p0

    .line 73
    check-cast v1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack;

    .line 79
    .line 80
    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 81
    .line 82
    .line 83
    move-object v1, p0

    .line 84
    check-cast v1, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack;

    .line 90
    .line 91
    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 92
    .line 93
    .line 94
    move-object v1, p0

    .line 95
    check-cast v1, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;

    .line 101
    .line 102
    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 103
    .line 104
    .line 105
    move-object v1, p0

    .line 106
    check-cast v1, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    .line 112
    .line 113
    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 114
    .line 115
    .line 116
    move-object p1, p0

    .line 117
    check-cast p1, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    .line 126
    .line 127
    return-object p1
.end method
