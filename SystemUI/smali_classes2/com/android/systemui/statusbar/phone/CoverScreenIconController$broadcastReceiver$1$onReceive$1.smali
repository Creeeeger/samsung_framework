.class public final Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1$onReceive$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CoverScreenIconController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1$onReceive$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1$onReceive$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->mobileConnectionsRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getNoServiceInfo()Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "no service state="

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "CoverScreenIconController"

    .line 24
    .line 25
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$broadcastReceiver$1$onReceive$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    .line 29
    .line 30
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;->isAirplaneMode:Z

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sget-object v2, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->SUB_SCREEN_SIGNAL:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    new-array v4, v3, [Ljava/lang/Object;

    .line 39
    .line 40
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 41
    .line 42
    invoke-interface {v5, v2, v3, v4}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->subRoomNetworkInfo:Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->isAirplane:Z

    .line 51
    .line 52
    iget v0, v0, Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;->noServiceType:I

    .line 53
    .line 54
    iput v0, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->noServiceType:I

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->stateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    new-instance v1, Landroid/os/Bundle;

    .line 61
    .line 62
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v2, "airplane"

    .line 66
    .line 67
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->isAirplane:Z

    .line 68
    .line 69
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    const-string v2, "no_siginal"

    .line 73
    .line 74
    iget v3, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->noServiceType:I

    .line 75
    .line 76
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v2, "routine_mode"

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SubRoomNetworkInfo;->modeIcon:[B

    .line 83
    .line 84
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    :cond_0
    return-void
.end method
