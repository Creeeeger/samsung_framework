.class public final Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;


# static fields
.field public static final Companion:Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$Companion;

.field public static volatile INSTANCE:Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;


# instance fields
.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final pluginPack:Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->Companion:Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 7
    .line 8
    new-instance p2, Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->pluginPack:Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;

    .line 14
    .line 15
    new-instance p0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ForceHideGestureHint;

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-direct {p1, p2, v0, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ForceHideGestureHint;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final addBand(Ljava/lang/String;Ljava/lang/Runnable;ILjava/util/List;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->addBand(Ljava/lang/String;Ljava/lang/Runnable;ILjava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public final addBand(Ljava/lang/String;Ljava/lang/Runnable;ILjava/util/List;Ljava/lang/Object;)V
    .locals 1

    const-string p3, "NavBarStoreAdapterImpl"

    iget-object p4, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string p5, "addBand() event: "

    .line 2
    :try_start_0
    invoke-virtual {p5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p3, p5}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->removeBand(Ljava/lang/String;)V

    .line 4
    sget p5, Lcom/android/systemui/navigationbar/bandaid/Band;->$r8$clinit:I

    .line 5
    new-instance p5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 6
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/BandAid;->PLUGIN_PACK_RUN_PLUGIN_ACTIONS:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 7
    iput-object v0, p5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    .line 8
    const-class v0, Lcom/android/systemui/navigationbar/util/NavBarReflectUtil;

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 10
    iput-object v0, p5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    .line 11
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 12
    iput-object v0, p5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const/4 v0, 0x2

    .line 13
    iput v0, p5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:I

    .line 14
    iput-object p1, p5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->sPluginTag:Ljava/lang/String;

    .line 15
    new-instance p1, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$addBand$1$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$addBand$1$1;-><init>(Ljava/lang/Runnable;)V

    .line 16
    iput-object p1, p5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    .line 17
    invoke-virtual {p5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p1

    .line 18
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->pluginPack:Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;

    .line 19
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;->allBands:Ljava/util/List;

    .line 20
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "An error occurred while running the addBand(): "

    .line 21
    invoke-virtual {p4, p3, p1}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final addPack()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->pluginPack:Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;

    .line 4
    .line 5
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->packs:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->packs:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "An error occurred while running the addPack(): "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 37
    .line 38
    const-string v1, "NavBarStoreAdapterImpl"

    .line 39
    .line 40
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    return-void
.end method

.method public final apply(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    const-string v0, ""

    invoke-static {p0, p1, v0, p2}, Lcom/android/systemui/navigationbar/util/NavBarReflectUtil;->runFakeStoreAction(Lcom/android/systemui/navigationbar/store/NavBarStore;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final apply(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/navigationbar/util/NavBarReflectUtil;->runFakeStoreAction(Lcom/android/systemui/navigationbar/store/NavBarStore;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final getNavBarState(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 4

    .line 1
    const-string v0, "NavBarStoreAdapterImpl"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 4
    .line 5
    const-string v2, "getNavBarState() value: "

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 16
    .line 17
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 24
    .line 25
    const-string p2, "disable1"

    .line 26
    .line 27
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->disable1:I

    .line 34
    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string p2, "disable2"

    .line 41
    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->disable2:I

    .line 49
    .line 50
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_1
    :goto_0
    return-object v3

    .line 55
    :catch_0
    move-exception p0

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string p2, "An error occurred while running the getNavBarState(): "

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object v3
.end method

.method public final getValue(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 6

    .line 1
    const-string v0, "NavBarStoreAdapterImpl"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 4
    .line 5
    const-string v2, "getValue() value: "

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 16
    .line 17
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v4, 0x1

    .line 29
    iget-object v5, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 30
    .line 31
    sparse-switch p2, :sswitch_data_0

    .line 32
    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :sswitch_0
    :try_start_1
    const-string p0, "leftRemoteViewExist"

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p0, v5, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_1

    .line 52
    .line 53
    move v2, v4

    .line 54
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    goto :goto_0

    .line 59
    :sswitch_1
    const-string/jumbo p2, "sPayShowing"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 70
    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->sPayShowing:Z

    .line 72
    .line 73
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    goto :goto_0

    .line 78
    :sswitch_2
    const-string/jumbo p0, "rightRemoteViewExist"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-nez p0, :cond_3

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    iget-object p0, v5, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-nez p0, :cond_4

    .line 95
    .line 96
    move v2, v4

    .line 97
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    goto :goto_0

    .line 102
    :sswitch_3
    const-string p2, "getHomeHandlePort"

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_5

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->getGestureWidth(Z)I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    goto :goto_0

    .line 120
    :sswitch_4
    const-string p2, "getHomeHandleLand"

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_6

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->getGestureWidth(Z)I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    :goto_0
    return-object v3

    .line 138
    :catch_0
    move-exception p0

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string p2, "An error occurred while running the getValue(): "

    .line 142
    .line 143
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-object v3

    .line 157
    :sswitch_data_0
    .sparse-switch
        0xda47368 -> :sswitch_4
        0xda679fe -> :sswitch_3
        0x4c372ff0 -> :sswitch_2
        0x5f7d02d0 -> :sswitch_1
        0x64ad5ea5 -> :sswitch_0
    .end sparse-switch
.end method

.method public final initPack()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->pluginPack:Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;->allBands:Ljava/util/List;

    .line 4
    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 11
    .line 12
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->bandAidPackFactory:Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;

    .line 15
    .line 16
    check-cast v1, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->getPacks(Lcom/android/systemui/navigationbar/store/NavBarStore;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->packs:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "An error occurred while running the initPack(): "

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 41
    .line 42
    const-string v1, "NavBarStoreAdapterImpl"

    .line 43
    .line 44
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public final removeBand(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "NavBarStoreAdapterImpl"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 4
    .line 5
    const-string/jumbo v2, "removeBand() event: "

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->pluginPack:Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;->allBands:Ljava/util/List;

    .line 18
    .line 19
    new-instance v2, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$removeBand$1;

    .line 20
    .line 21
    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$removeBand$1;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast p0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "An error occurred while running the removeBand(): "

    .line 34
    .line 35
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public final removePack()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->bandAidPackFactory:Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;

    .line 6
    .line 7
    check-cast v1, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->getPacks(Lcom/android/systemui/navigationbar/store/NavBarStore;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->packs:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "An error occurred while running the removePack(): "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 32
    .line 33
    const-string v1, "NavBarStoreAdapterImpl"

    .line 34
    .line 35
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method
