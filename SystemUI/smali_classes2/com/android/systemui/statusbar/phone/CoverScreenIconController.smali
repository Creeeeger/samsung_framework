.class public final Lcom/android/systemui/statusbar/phone/CoverScreenIconController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final context:Landroid/content/Context;

.field public final delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mobileConnectionsRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;

.field public final slotMode:Ljava/lang/String;

.field public final subRoomNetworkInfo:Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p3

    .line 3
    move-object v2, p4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 8
    .line 9
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->subRoomNetworkInfo:Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;

    .line 10
    .line 11
    move-object v3, p5

    .line 12
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->context:Landroid/content/Context;

    .line 13
    .line 14
    move-object v4, p6

    .line 15
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 16
    .line 17
    move-object v4, p7

    .line 18
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 19
    .line 20
    move-object/from16 v4, p9

    .line 21
    .line 22
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->mobileConnectionsRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;

    .line 23
    .line 24
    move-object/from16 v4, p10

    .line 25
    .line 26
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 27
    .line 28
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const v4, 0x1040df4

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->slotMode:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v3, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1;

    .line 42
    .line 43
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1;-><init>(Lcom/android/systemui/statusbar/phone/CoverScreenIconController;)V

    .line 44
    .line 45
    .line 46
    sget-object v4, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->SUB_SCREEN_MODE_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    new-array v6, v5, [Ljava/lang/Object;

    .line 50
    .line 51
    invoke-interface {p3, v4, v5, v6}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    const/16 v4, 0x12f

    .line 58
    .line 59
    move-object v6, p1

    .line 60
    invoke-virtual {p1, v4, p4}, Lcom/android/systemui/subscreen/SubScreenManager;->setSubRoom(ILcom/android/systemui/plugins/subscreen/SubRoom;)V

    .line 61
    .line 62
    .line 63
    move-object v2, p2

    .line 64
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->SUB_SCREEN_SIGNAL:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 68
    .line 69
    new-array v2, v5, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-interface {p3, v0, v5, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    .line 78
    .line 79
    const-string v1, "android.intent.action.SERVICE_STATE"

    .line 80
    .line 81
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    const/4 v2, 0x0

    .line 86
    const/4 v4, 0x0

    .line 87
    const/4 v5, 0x0

    .line 88
    const/16 v6, 0x3c

    .line 89
    .line 90
    move-object p0, p8

    .line 91
    move-object p1, v3

    .line 92
    move-object p2, v0

    .line 93
    move-object p3, v1

    .line 94
    move-object p4, v2

    .line 95
    move p5, v4

    .line 96
    move-object p6, v5

    .line 97
    move p7, v6

    .line 98
    invoke-static/range {p0 .. p7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    :cond_1
    return-void
.end method


# virtual methods
.method public final removeIcon(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->slotMode:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "CoverScreenIconController"

    .line 10
    .line 11
    const-string v0, "Remove mode icon"

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->subRoomNetworkInfo:Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->modeIcon:[B

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->stateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    new-instance v0, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "airplane"

    .line 31
    .line 32
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->isAirplane:Z

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    const-string v1, "no_siginal"

    .line 38
    .line 39
    iget v2, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->noServiceType:I

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    const-string/jumbo v1, "routine_mode"

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->modeIcon:[B

    .line 48
    .line 49
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public final setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->slotMode:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-boolean p1, p2, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1;

    .line 14
    .line 15
    invoke-direct {p1, p2, p0}, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1;-><init>(Lcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/phone/CoverScreenIconController;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 19
    .line 20
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p1, "CoverScreenIconController"

    .line 27
    .line 28
    const-string p2, "Remove mode icon"

    .line 29
    .line 30
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->subRoomNetworkInfo:Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->modeIcon:[B

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->stateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    new-instance p2, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v0, "airplane"

    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->isAirplane:Z

    .line 50
    .line 51
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    const-string v0, "no_siginal"

    .line 55
    .line 56
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->noServiceType:I

    .line 57
    .line 58
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo v0, "routine_mode"

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->modeIcon:[B

    .line 65
    .line 66
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    return-void
.end method
