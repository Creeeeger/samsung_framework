.class public final Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shade/carrier/LatinNetworkNameProvider;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiver:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;

.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final cbMsgBody:Ljava/util/HashMap;

.field public cellBroadcastService:Landroid/telephony/ICellBroadcastService;

.field public final cellBroadcastServiceConnection:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;

.field public final cellLocationCallback0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

.field public final cellLocationCallback1:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

.field public final context:Landroid/content/Context;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final imsRegStateUtil:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

.field public isAirplaneMode:Z

.field public latinNetworkNameCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;

.field public final locationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field public final mNetworkNameSeparator:Ljava/lang/String;

.field public networkManuallySelected:Ljava/lang/String;

.field public final networkNameHash:Ljava/util/HashMap;

.field public final serviceStateHash:Ljava/util/HashMap;

.field public showCBMsg:Z

.field public final simState:Ljava/util/HashMap;

.field public final subscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final subscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

.field public final telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Landroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/LocationController;Landroid/telephony/SubscriptionManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->locationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->imsRegStateUtil:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->subscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

    .line 23
    .line 24
    new-instance p2, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    .line 30
    .line 31
    new-instance p2, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    .line 37
    .line 38
    new-instance p2, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->simState:Ljava/util/HashMap;

    .line 44
    .line 45
    new-instance p2, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;

    .line 46
    .line 47
    invoke-direct {p2, p0}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;-><init>(Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;)V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastReceiver:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;

    .line 51
    .line 52
    new-instance p2, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

    .line 53
    .line 54
    new-instance p3, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellLocationCallback0$1;

    .line 55
    .line 56
    invoke-direct {p3, p0}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellLocationCallback0$1;-><init>(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const/4 p4, 0x0

    .line 60
    invoke-direct {p2, p4, p3}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellLocationCallback0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

    .line 64
    .line 65
    new-instance p2, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

    .line 66
    .line 67
    new-instance p3, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellLocationCallback1$1;

    .line 68
    .line 69
    invoke-direct {p3, p0}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellLocationCallback1$1;-><init>(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    const/4 p4, 0x1

    .line 73
    invoke-direct {p2, p4, p3}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellLocationCallback1:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

    .line 77
    .line 78
    new-instance p2, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;

    .line 79
    .line 80
    invoke-direct {p2, p0}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;-><init>(Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;)V

    .line 81
    .line 82
    .line 83
    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellBroadcastServiceConnection:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    const p3, 0x7f131053

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->mNetworkNameSeparator:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const p2, 0x10406c7

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    new-instance p1, Ljava/util/HashMap;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cbMsgBody:Ljava/util/HashMap;

    .line 114
    .line 115
    return-void
.end method

.method public static final access$handleCellLocationChanged(Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "onCellLocationChanged ["

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "]"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "LatinNetworkNameProvider"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget v1, v0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->networkType:I

    .line 43
    .line 44
    iget v0, v0, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->voiceNetworkType:I

    .line 45
    .line 46
    invoke-static {v1, v0}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->isLatinGSM(II)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->DISPLAY_CBCH50:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    new-array v2, v1, [Ljava/lang/Object;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 58
    .line 59
    invoke-interface {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastCBClear(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->latinNetworkNameCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;

    .line 70
    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->getCombinedNetworkName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p1, p0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;->updateCarrierInfo(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    return-void
.end method

.method public static isLatinGSM(II)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x12

    .line 4
    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p0, p1

    .line 9
    :goto_0
    const/4 p1, 0x1

    .line 10
    if-eq p0, p1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x10

    .line 16
    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    :cond_1
    return p1
.end method


# virtual methods
.method public final broadcastCBClear(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.sec.android.app.mms.CB_CLEAR"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "phone"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->context:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "] "

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v4, "network name["

    .line 36
    .line 37
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string/jumbo v4, "service state["

    .line 90
    .line 91
    .line 92
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->isAirplaneMode:Z

    .line 113
    .line 114
    const-string p2, "isAirplaneMode="

    .line 115
    .line 116
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final getCombinedNetworkName()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x1

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    iget-boolean v3, v3, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->hasVoWifiPLMN:Z

    .line 28
    .line 29
    if-ne v3, v4, :cond_0

    .line 30
    .line 31
    move v3, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v3, v1

    .line 34
    :goto_0
    if-nez v3, :cond_3

    .line 35
    .line 36
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    iget-boolean v3, v3, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->hasVoWifiPLMN:Z

    .line 51
    .line 52
    if-ne v3, v4, :cond_2

    .line 53
    .line 54
    move v3, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move v3, v1

    .line 57
    :goto_1
    if-eqz v3, :cond_4

    .line 58
    .line 59
    :cond_3
    move v3, v4

    .line 60
    goto :goto_2

    .line 61
    :cond_4
    move v3, v1

    .line 62
    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->isAirplaneMode:Z

    .line 63
    .line 64
    if-eqz v6, :cond_5

    .line 65
    .line 66
    if-nez v3, :cond_5

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->context:Landroid/content/Context;

    .line 69
    .line 70
    const v0, 0x7f130867

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 83
    .line 84
    iget-object v6, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->simState:Ljava/util/HashMap;

    .line 85
    .line 86
    const-string v7, "UNKNOWN"

    .line 87
    .line 88
    if-eqz v3, :cond_6

    .line 89
    .line 90
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v2, v7, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_6

    .line 101
    .line 102
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_6

    .line 111
    .line 112
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->getLatinNetworkName(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    goto :goto_3

    .line 117
    :cond_6
    const-string v2, ""

    .line 118
    .line 119
    :goto_3
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 124
    .line 125
    const-string v3, "LatinNetworkNameProvider"

    .line 126
    .line 127
    if-eqz v0, :cond_e

    .line 128
    .line 129
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v0, v7, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_e

    .line 140
    .line 141
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_e

    .line 150
    .line 151
    invoke-virtual {p0, v4}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->getLatinNetworkName(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-lez v5, :cond_7

    .line 160
    .line 161
    move v5, v4

    .line 162
    goto :goto_4

    .line 163
    :cond_7
    move v5, v1

    .line 164
    :goto_4
    if-eqz v5, :cond_d

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-lez v5, :cond_8

    .line 171
    .line 172
    move v5, v4

    .line 173
    goto :goto_5

    .line 174
    :cond_8
    move v5, v1

    .line 175
    :goto_5
    if-eqz v5, :cond_d

    .line 176
    .line 177
    iget-object v5, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->subscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

    .line 178
    .line 179
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    new-instance v6, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .line 186
    .line 187
    move v7, v1

    .line 188
    :goto_6
    const/4 v8, 0x2

    .line 189
    if-ge v7, v8, :cond_a

    .line 190
    .line 191
    iget-object v8, v5, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 192
    .line 193
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    invoke-virtual {v8, v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    if-eqz v8, :cond_9

    .line 202
    .line 203
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_a
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    invoke-virtual {v5, v7, v6}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;->getSimOrder(ILjava/util/List;)I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-eqz v5, :cond_b

    .line 218
    .line 219
    move v1, v4

    .line 220
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->mNetworkNameSeparator:Ljava/lang/String;

    .line 221
    .line 222
    if-eqz v1, :cond_c

    .line 223
    .line 224
    const-string/jumbo v1, "subscriptionsOrder should be REVERSED"

    .line 225
    .line 226
    .line 227
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    goto :goto_7

    .line 261
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    goto :goto_7

    .line 292
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    :goto_7
    move-object v2, p0

    .line 308
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string v0, "getCombinedNetworkName : carrierText - "

    .line 311
    .line 312
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    return-object v2
.end method

.method public final getLatinNetworkName(I)Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lcom/android/systemui/shade/carrier/ServiceStateInfo;

    .line 16
    .line 17
    const-string v4, ""

    .line 18
    .line 19
    if-eqz v3, :cond_47

    .line 20
    .line 21
    iget v5, v3, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->networkType:I

    .line 22
    .line 23
    iget v3, v3, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->voiceNetworkType:I

    .line 24
    .line 25
    invoke-static {v5, v3}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->isLatinGSM(II)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v5, 0x0

    .line 30
    iget-object v6, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 31
    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    invoke-virtual {v6, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_1f

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-boolean v3, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->showCBMsg:Z

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cbMsgBody:Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_2

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-lez v3, :cond_0

    .line 85
    .line 86
    const/4 v5, 0x1

    .line 87
    :cond_0
    if-eqz v5, :cond_1

    .line 88
    .line 89
    const-string v3, " / "

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    :cond_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    :cond_2
    if-nez v2, :cond_45

    .line 119
    .line 120
    goto/16 :goto_12

    .line 121
    .line 122
    :cond_3
    iget-object v3, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkNameHash:Ljava/util/HashMap;

    .line 123
    .line 124
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    check-cast v5, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 133
    .line 134
    if-eqz v5, :cond_4

    .line 135
    .line 136
    iget-boolean v5, v5, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->showSpn:Z

    .line 137
    .line 138
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    goto :goto_0

    .line 143
    :cond_4
    const/4 v5, 0x0

    .line 144
    :goto_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    check-cast v7, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 153
    .line 154
    if-eqz v7, :cond_5

    .line 155
    .line 156
    iget-object v7, v7, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->spn:Ljava/lang/String;

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_5
    const/4 v7, 0x0

    .line 160
    :goto_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    check-cast v8, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 169
    .line 170
    if-eqz v8, :cond_6

    .line 171
    .line 172
    iget-object v8, v8, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->dataSpn:Ljava/lang/String;

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_6
    const/4 v8, 0x0

    .line 176
    :goto_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    check-cast v9, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 185
    .line 186
    if-eqz v9, :cond_7

    .line 187
    .line 188
    iget-boolean v9, v9, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->showPlmn:Z

    .line 189
    .line 190
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    goto :goto_3

    .line 195
    :cond_7
    const/4 v9, 0x0

    .line 196
    :goto_3
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    check-cast v10, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 205
    .line 206
    if-eqz v10, :cond_8

    .line 207
    .line 208
    iget-object v10, v10, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_8
    const/4 v10, 0x0

    .line 212
    :goto_4
    iget-object v11, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->imsRegStateUtil:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 213
    .line 214
    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->isVoWifiConnected(I)Z

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    iget-object v13, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkManuallySelected:Ljava/lang/String;

    .line 219
    .line 220
    new-instance v14, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string/jumbo v15, "updateNetworkNameLatin: showSpn="

    .line 223
    .line 224
    .line 225
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v5, ", spn="

    .line 232
    .line 233
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v5, ", dataSpn="

    .line 240
    .line 241
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v5, ", showPlmn="

    .line 248
    .line 249
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v5, ", plmn="

    .line 256
    .line 257
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v5, ", voWifiConnected="

    .line 264
    .line 265
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v5, ", networkManuallySelected="

    .line 272
    .line 273
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v5, "LatinNetworkNameProvider"

    .line 277
    .line 278
    invoke-static {v14, v13, v5}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_CLARO_PLMN:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 282
    .line 283
    const/4 v8, 0x0

    .line 284
    new-array v8, v8, [Ljava/lang/Object;

    .line 285
    .line 286
    iget-object v9, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 287
    .line 288
    invoke-interface {v9, v7, v1, v8}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    if-eqz v7, :cond_e

    .line 293
    .line 294
    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->isVoWifiConnected(I)Z

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    if-eqz v7, :cond_e

    .line 299
    .line 300
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 309
    .line 310
    if-eqz v0, :cond_9

    .line 311
    .line 312
    iget-object v0, v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    .line 313
    .line 314
    if-nez v0, :cond_a

    .line 315
    .line 316
    :cond_9
    move-object v0, v4

    .line 317
    :cond_a
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    check-cast v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 326
    .line 327
    if-eqz v2, :cond_b

    .line 328
    .line 329
    iget-object v2, v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->spn:Ljava/lang/String;

    .line 330
    .line 331
    goto :goto_5

    .line 332
    :cond_b
    const/4 v2, 0x0

    .line 333
    :goto_5
    if-eqz v2, :cond_20

    .line 334
    .line 335
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    check-cast v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 344
    .line 345
    if-eqz v2, :cond_c

    .line 346
    .line 347
    iget-object v2, v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->dataSpn:Ljava/lang/String;

    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_c
    const/4 v2, 0x0

    .line 351
    :goto_6
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    if-nez v2, :cond_20

    .line 356
    .line 357
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 366
    .line 367
    if-eqz v0, :cond_d

    .line 368
    .line 369
    iget-object v0, v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->dataSpn:Ljava/lang/String;

    .line 370
    .line 371
    goto :goto_7

    .line 372
    :cond_d
    const/4 v0, 0x0

    .line 373
    :goto_7
    move-object v2, v0

    .line 374
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_28

    .line 378
    .line 379
    :cond_e
    iget-boolean v7, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->isAirplaneMode:Z

    .line 380
    .line 381
    if-eqz v7, :cond_1a

    .line 382
    .line 383
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    if-eqz v2, :cond_1f

    .line 392
    .line 393
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    check-cast v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 402
    .line 403
    if-eqz v2, :cond_f

    .line 404
    .line 405
    iget-boolean v2, v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->hasVoWifiPLMN:Z

    .line 406
    .line 407
    const/4 v5, 0x1

    .line 408
    if-ne v2, v5, :cond_10

    .line 409
    .line 410
    move v2, v5

    .line 411
    goto :goto_8

    .line 412
    :cond_f
    const/4 v5, 0x1

    .line 413
    :cond_10
    const/4 v2, 0x0

    .line 414
    move/from16 v16, v5

    .line 415
    .line 416
    move v5, v2

    .line 417
    move/from16 v2, v16

    .line 418
    .line 419
    :goto_8
    if-eqz v5, :cond_1f

    .line 420
    .line 421
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    check-cast v5, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 430
    .line 431
    if-eqz v5, :cond_11

    .line 432
    .line 433
    iget-boolean v5, v5, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->showPlmn:Z

    .line 434
    .line 435
    if-ne v5, v2, :cond_11

    .line 436
    .line 437
    const/4 v2, 0x1

    .line 438
    goto :goto_9

    .line 439
    :cond_11
    const/4 v2, 0x0

    .line 440
    :goto_9
    if-eqz v2, :cond_14

    .line 441
    .line 442
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    check-cast v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 451
    .line 452
    if-eqz v2, :cond_12

    .line 453
    .line 454
    iget-object v2, v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    .line 455
    .line 456
    goto :goto_a

    .line 457
    :cond_12
    const/4 v2, 0x0

    .line 458
    :goto_a
    if-eqz v2, :cond_14

    .line 459
    .line 460
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    check-cast v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 469
    .line 470
    if-eqz v2, :cond_13

    .line 471
    .line 472
    iget-object v2, v2, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    .line 473
    .line 474
    goto :goto_b

    .line 475
    :cond_13
    const/4 v2, 0x0

    .line 476
    :goto_b
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    goto :goto_c

    .line 481
    :cond_14
    move-object v2, v4

    .line 482
    :goto_c
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    check-cast v5, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 491
    .line 492
    if-eqz v5, :cond_15

    .line 493
    .line 494
    iget-boolean v5, v5, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->showSpn:Z

    .line 495
    .line 496
    const/4 v6, 0x1

    .line 497
    if-ne v5, v6, :cond_15

    .line 498
    .line 499
    const/4 v5, 0x1

    .line 500
    goto :goto_d

    .line 501
    :cond_15
    const/4 v5, 0x0

    .line 502
    :goto_d
    if-eqz v5, :cond_45

    .line 503
    .line 504
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 505
    .line 506
    .line 507
    move-result-object v5

    .line 508
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v5

    .line 512
    check-cast v5, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 513
    .line 514
    if-eqz v5, :cond_16

    .line 515
    .line 516
    iget-object v5, v5, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->spn:Ljava/lang/String;

    .line 517
    .line 518
    goto :goto_e

    .line 519
    :cond_16
    const/4 v5, 0x0

    .line 520
    :goto_e
    if-eqz v5, :cond_45

    .line 521
    .line 522
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 523
    .line 524
    .line 525
    move-result v5

    .line 526
    if-lez v5, :cond_17

    .line 527
    .line 528
    const/4 v5, 0x1

    .line 529
    goto :goto_f

    .line 530
    :cond_17
    const/4 v5, 0x0

    .line 531
    :goto_f
    if-eqz v5, :cond_18

    .line 532
    .line 533
    invoke-static {v2}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    iget-object v0, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->mNetworkNameSeparator:Ljava/lang/String;

    .line 538
    .line 539
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    :cond_18
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 555
    .line 556
    if-eqz v0, :cond_19

    .line 557
    .line 558
    iget-object v0, v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->spn:Ljava/lang/String;

    .line 559
    .line 560
    goto :goto_10

    .line 561
    :cond_19
    const/4 v0, 0x0

    .line 562
    :goto_10
    invoke-static {v2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    goto/16 :goto_13

    .line 567
    .line 568
    :cond_1a
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 569
    .line 570
    .line 571
    move-result-object v7

    .line 572
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v7

    .line 576
    const-string v8, " "

    .line 577
    .line 578
    if-eqz v7, :cond_1b

    .line 579
    .line 580
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 581
    .line 582
    .line 583
    move-result-object v7

    .line 584
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v7

    .line 588
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 589
    .line 590
    .line 591
    check-cast v7, Lcom/android/systemui/shade/carrier/ServiceStateInfo;

    .line 592
    .line 593
    iget-boolean v7, v7, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->isEmergency:Z

    .line 594
    .line 595
    if-nez v7, :cond_1c

    .line 596
    .line 597
    :cond_1b
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 598
    .line 599
    .line 600
    move-result-object v7

    .line 601
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v7

    .line 605
    if-eqz v7, :cond_21

    .line 606
    .line 607
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 608
    .line 609
    .line 610
    move-result-object v7

    .line 611
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v7

    .line 615
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 616
    .line 617
    .line 618
    check-cast v7, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 619
    .line 620
    iget-object v7, v7, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    .line 621
    .line 622
    if-eqz v7, :cond_21

    .line 623
    .line 624
    iget-object v7, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->context:Landroid/content/Context;

    .line 625
    .line 626
    const v10, 0x104049e

    .line 627
    .line 628
    .line 629
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v7

    .line 633
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 634
    .line 635
    .line 636
    move-result-object v10

    .line 637
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v10

    .line 641
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 642
    .line 643
    .line 644
    check-cast v10, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 645
    .line 646
    iget-object v10, v10, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    .line 647
    .line 648
    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    move-result v7

    .line 652
    if-eqz v7, :cond_21

    .line 653
    .line 654
    :cond_1c
    if-ltz v1, :cond_1e

    .line 655
    .line 656
    iget-object v2, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkManuallySelected:Ljava/lang/String;

    .line 657
    .line 658
    if-eqz v2, :cond_1e

    .line 659
    .line 660
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 661
    .line 662
    .line 663
    move-result v2

    .line 664
    if-lez v2, :cond_1d

    .line 665
    .line 666
    const/4 v2, 0x1

    .line 667
    goto :goto_11

    .line 668
    :cond_1d
    const/4 v2, 0x0

    .line 669
    :goto_11
    if-eqz v2, :cond_1e

    .line 670
    .line 671
    iget-object v0, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->networkManuallySelected:Ljava/lang/String;

    .line 672
    .line 673
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 682
    .line 683
    .line 684
    check-cast v1, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 685
    .line 686
    invoke-static {v0, v8}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    iget-object v1, v1, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    .line 691
    .line 692
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    goto :goto_13

    .line 700
    :cond_1e
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 709
    .line 710
    .line 711
    check-cast v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 712
    .line 713
    iget-object v0, v0, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    .line 714
    .line 715
    if-nez v0, :cond_20

    .line 716
    .line 717
    :cond_1f
    :goto_12
    move-object v2, v4

    .line 718
    goto/16 :goto_28

    .line 719
    .line 720
    :cond_20
    :goto_13
    move-object v2, v0

    .line 721
    goto/16 :goto_28

    .line 722
    .line 723
    :cond_21
    sget-object v7, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->MULTI_LINE_CARRIER_LABEL:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 724
    .line 725
    const/4 v10, 0x0

    .line 726
    new-array v11, v10, [Ljava/lang/Object;

    .line 727
    .line 728
    invoke-interface {v9, v7, v10, v11}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    move-result v7

    .line 732
    if-eqz v7, :cond_43

    .line 733
    .line 734
    const-string v7, "gsm.sim.operator.numeric"

    .line 735
    .line 736
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v7

    .line 740
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 741
    .line 742
    .line 743
    move-result v9

    .line 744
    add-int/lit8 v9, v9, -0x1

    .line 745
    .line 746
    const/4 v10, 0x0

    .line 747
    const/4 v11, 0x0

    .line 748
    :goto_14
    const/16 v12, 0x20

    .line 749
    .line 750
    if-gt v11, v9, :cond_27

    .line 751
    .line 752
    if-nez v10, :cond_22

    .line 753
    .line 754
    move v13, v11

    .line 755
    goto :goto_15

    .line 756
    :cond_22
    move v13, v9

    .line 757
    :goto_15
    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    .line 758
    .line 759
    .line 760
    move-result v13

    .line 761
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 762
    .line 763
    .line 764
    move-result v13

    .line 765
    if-gtz v13, :cond_23

    .line 766
    .line 767
    const/4 v13, 0x1

    .line 768
    goto :goto_16

    .line 769
    :cond_23
    const/4 v13, 0x0

    .line 770
    :goto_16
    if-nez v10, :cond_25

    .line 771
    .line 772
    if-nez v13, :cond_24

    .line 773
    .line 774
    const/4 v10, 0x1

    .line 775
    goto :goto_14

    .line 776
    :cond_24
    add-int/lit8 v11, v11, 0x1

    .line 777
    .line 778
    goto :goto_14

    .line 779
    :cond_25
    if-nez v13, :cond_26

    .line 780
    .line 781
    goto :goto_17

    .line 782
    :cond_26
    add-int/lit8 v9, v9, -0x1

    .line 783
    .line 784
    goto :goto_14

    .line 785
    :cond_27
    :goto_17
    add-int/lit8 v9, v9, 0x1

    .line 786
    .line 787
    invoke-virtual {v7, v11, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 788
    .line 789
    .line 790
    move-result-object v7

    .line 791
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v7

    .line 795
    const-string v9, ","

    .line 796
    .line 797
    filled-new-array {v9}, [Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v10

    .line 801
    const/4 v11, 0x6

    .line 802
    const/4 v13, 0x0

    .line 803
    invoke-static {v7, v10, v13, v11}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 804
    .line 805
    .line 806
    move-result-object v7

    .line 807
    new-array v10, v13, [Ljava/lang/String;

    .line 808
    .line 809
    invoke-interface {v7, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v7

    .line 813
    check-cast v7, [Ljava/lang/String;

    .line 814
    .line 815
    const-string v10, "gsm.operator.numeric"

    .line 816
    .line 817
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v10

    .line 821
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 822
    .line 823
    .line 824
    move-result v11

    .line 825
    add-int/lit8 v11, v11, -0x1

    .line 826
    .line 827
    const/4 v14, 0x0

    .line 828
    :goto_18
    if-gt v14, v11, :cond_2d

    .line 829
    .line 830
    if-nez v13, :cond_28

    .line 831
    .line 832
    move v15, v14

    .line 833
    goto :goto_19

    .line 834
    :cond_28
    move v15, v11

    .line 835
    :goto_19
    invoke-virtual {v10, v15}, Ljava/lang/String;->charAt(I)C

    .line 836
    .line 837
    .line 838
    move-result v15

    .line 839
    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 840
    .line 841
    .line 842
    move-result v15

    .line 843
    if-gtz v15, :cond_29

    .line 844
    .line 845
    const/4 v15, 0x1

    .line 846
    goto :goto_1a

    .line 847
    :cond_29
    const/4 v15, 0x0

    .line 848
    :goto_1a
    if-nez v13, :cond_2b

    .line 849
    .line 850
    if-nez v15, :cond_2a

    .line 851
    .line 852
    const/4 v13, 0x1

    .line 853
    goto :goto_18

    .line 854
    :cond_2a
    add-int/lit8 v14, v14, 0x1

    .line 855
    .line 856
    goto :goto_18

    .line 857
    :cond_2b
    if-nez v15, :cond_2c

    .line 858
    .line 859
    goto :goto_1b

    .line 860
    :cond_2c
    add-int/lit8 v11, v11, -0x1

    .line 861
    .line 862
    goto :goto_18

    .line 863
    :cond_2d
    :goto_1b
    add-int/lit8 v11, v11, 0x1

    .line 864
    .line 865
    invoke-virtual {v10, v14, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 866
    .line 867
    .line 868
    move-result-object v10

    .line 869
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v10

    .line 873
    filled-new-array {v9}, [Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v11

    .line 877
    const/4 v12, 0x6

    .line 878
    const/4 v13, 0x0

    .line 879
    invoke-static {v10, v11, v13, v12}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 880
    .line 881
    .line 882
    move-result-object v10

    .line 883
    new-array v11, v13, [Ljava/lang/String;

    .line 884
    .line 885
    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v10

    .line 889
    check-cast v10, [Ljava/lang/String;

    .line 890
    .line 891
    aget-object v7, v7, v1

    .line 892
    .line 893
    const-string v11, "72406"

    .line 894
    .line 895
    const-string v12, "72410"

    .line 896
    .line 897
    const-string v13, "72411"

    .line 898
    .line 899
    const-string v14, "72423"

    .line 900
    .line 901
    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v15

    .line 905
    invoke-static {v15}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 906
    .line 907
    .line 908
    move-result-object v15

    .line 909
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 910
    .line 911
    .line 912
    move-result v7

    .line 913
    if-eqz v7, :cond_2e

    .line 914
    .line 915
    aget-object v7, v10, v1

    .line 916
    .line 917
    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v10

    .line 921
    invoke-static {v10}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 922
    .line 923
    .line 924
    move-result-object v10

    .line 925
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 926
    .line 927
    .line 928
    move-result v7

    .line 929
    if-eqz v7, :cond_2e

    .line 930
    .line 931
    const/4 v7, 0x1

    .line 932
    goto :goto_1c

    .line 933
    :cond_2e
    const/4 v7, 0x0

    .line 934
    :goto_1c
    if-eqz v7, :cond_43

    .line 935
    .line 936
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 937
    .line 938
    .line 939
    move-result-object v6

    .line 940
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v6

    .line 944
    check-cast v6, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 945
    .line 946
    if-eqz v6, :cond_2f

    .line 947
    .line 948
    iget-object v6, v6, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->plmn:Ljava/lang/String;

    .line 949
    .line 950
    if-nez v6, :cond_30

    .line 951
    .line 952
    :cond_2f
    move-object v6, v4

    .line 953
    :cond_30
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 954
    .line 955
    .line 956
    move-result-object v7

    .line 957
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    .line 959
    .line 960
    move-result-object v7

    .line 961
    check-cast v7, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 962
    .line 963
    if-eqz v7, :cond_31

    .line 964
    .line 965
    iget-object v7, v7, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->spn:Ljava/lang/String;

    .line 966
    .line 967
    if-nez v7, :cond_32

    .line 968
    .line 969
    :cond_31
    move-object v7, v4

    .line 970
    :cond_32
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 971
    .line 972
    .line 973
    move-result-object v10

    .line 974
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v10

    .line 978
    check-cast v10, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 979
    .line 980
    if-eqz v10, :cond_33

    .line 981
    .line 982
    iget-boolean v10, v10, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->showSpn:Z

    .line 983
    .line 984
    goto :goto_1d

    .line 985
    :cond_33
    const/4 v10, 0x0

    .line 986
    :goto_1d
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 987
    .line 988
    .line 989
    move-result-object v11

    .line 990
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    move-result-object v3

    .line 994
    check-cast v3, Lcom/android/systemui/shade/carrier/NetworkNameInfo;

    .line 995
    .line 996
    if-eqz v3, :cond_34

    .line 997
    .line 998
    iget-boolean v3, v3, Lcom/android/systemui/shade/carrier/NetworkNameInfo;->showPlmn:Z

    .line 999
    .line 1000
    goto :goto_1e

    .line 1001
    :cond_34
    const/4 v3, 0x0

    .line 1002
    :goto_1e
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v11

    .line 1006
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    check-cast v2, Lcom/android/systemui/shade/carrier/ServiceStateInfo;

    .line 1011
    .line 1012
    if-eqz v2, :cond_42

    .line 1013
    .line 1014
    iget-boolean v11, v2, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->isRoaming:Z

    .line 1015
    .line 1016
    if-nez v11, :cond_37

    .line 1017
    .line 1018
    const-string v11, "gsm.operator.isroaming"

    .line 1019
    .line 1020
    const-string v12, "false, false"

    .line 1021
    .line 1022
    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v11

    .line 1026
    filled-new-array {v9}, [Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v9

    .line 1030
    const/4 v12, 0x0

    .line 1031
    const/4 v13, 0x6

    .line 1032
    invoke-static {v11, v9, v12, v13}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v9

    .line 1036
    new-array v11, v12, [Ljava/lang/String;

    .line 1037
    .line 1038
    invoke-interface {v9, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v9

    .line 1042
    check-cast v9, [Ljava/lang/String;

    .line 1043
    .line 1044
    array-length v11, v9

    .line 1045
    const-string/jumbo v13, "true"

    .line 1046
    .line 1047
    .line 1048
    const/4 v14, 0x1

    .line 1049
    if-le v11, v14, :cond_35

    .line 1050
    .line 1051
    aget-object v9, v9, v1

    .line 1052
    .line 1053
    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1054
    .line 1055
    .line 1056
    move-result v9

    .line 1057
    if-eqz v9, :cond_36

    .line 1058
    .line 1059
    goto :goto_1f

    .line 1060
    :cond_35
    aget-object v9, v9, v12

    .line 1061
    .line 1062
    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1063
    .line 1064
    .line 1065
    move-result v9

    .line 1066
    if-eqz v9, :cond_36

    .line 1067
    .line 1068
    :goto_1f
    move v9, v14

    .line 1069
    goto :goto_20

    .line 1070
    :cond_36
    move v9, v12

    .line 1071
    :goto_20
    if-eqz v9, :cond_38

    .line 1072
    .line 1073
    goto :goto_21

    .line 1074
    :cond_37
    const/4 v12, 0x0

    .line 1075
    const/4 v14, 0x1

    .line 1076
    :goto_21
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1077
    .line 1078
    .line 1079
    move-result v9

    .line 1080
    if-nez v9, :cond_38

    .line 1081
    .line 1082
    if-eqz v3, :cond_41

    .line 1083
    .line 1084
    if-eqz v10, :cond_41

    .line 1085
    .line 1086
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1087
    .line 1088
    .line 1089
    move-result v0

    .line 1090
    if-nez v0, :cond_41

    .line 1091
    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v0

    .line 1110
    :goto_22
    move-object v6, v0

    .line 1111
    goto/16 :goto_26

    .line 1112
    .line 1113
    :cond_38
    iget-boolean v9, v2, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->connected:Z

    .line 1114
    .line 1115
    if-eqz v9, :cond_41

    .line 1116
    .line 1117
    iget-boolean v2, v2, Lcom/android/systemui/shade/carrier/ServiceStateInfo;->isEmergency:Z

    .line 1118
    .line 1119
    if-nez v2, :cond_41

    .line 1120
    .line 1121
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1122
    .line 1123
    .line 1124
    move-result v2

    .line 1125
    if-eqz v2, :cond_39

    .line 1126
    .line 1127
    goto/16 :goto_26

    .line 1128
    .line 1129
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1132
    .line 1133
    .line 1134
    iget-object v0, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 1135
    .line 1136
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v9

    .line 1140
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 1141
    .line 1142
    .line 1143
    move-result v10

    .line 1144
    if-lez v10, :cond_3a

    .line 1145
    .line 1146
    move v12, v14

    .line 1147
    :cond_3a
    if-eqz v12, :cond_3d

    .line 1148
    .line 1149
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1150
    .line 1151
    .line 1152
    move-result v10

    .line 1153
    if-nez v10, :cond_3d

    .line 1154
    .line 1155
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1156
    .line 1157
    .line 1158
    move-result v9

    .line 1159
    if-lez v9, :cond_3d

    .line 1160
    .line 1161
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    .line 1162
    .line 1163
    .line 1164
    move-result v1

    .line 1165
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1166
    .line 1167
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCellLocationBySubId(I)Landroid/telephony/CellLocation;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v0

    .line 1174
    if-nez v0, :cond_3b

    .line 1175
    .line 1176
    goto/16 :goto_24

    .line 1177
    .line 1178
    :cond_3b
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 1179
    .line 1180
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    .line 1181
    .line 1182
    .line 1183
    move-result v0

    .line 1184
    const/4 v1, -0x1

    .line 1185
    if-eq v0, v1, :cond_3c

    .line 1186
    .line 1187
    const/16 v1, 0xff

    .line 1188
    .line 1189
    if-eq v0, v1, :cond_3c

    .line 1190
    .line 1191
    if-eqz v0, :cond_3c

    .line 1192
    .line 1193
    const v1, 0xffff

    .line 1194
    .line 1195
    .line 1196
    if-eq v0, v1, :cond_3c

    .line 1197
    .line 1198
    rem-int/lit8 v0, v0, 0x64

    .line 1199
    .line 1200
    packed-switch v0, :pswitch_data_0

    .line 1201
    .line 1202
    .line 1203
    :pswitch_0
    move-object v1, v4

    .line 1204
    goto/16 :goto_23

    .line 1205
    .line 1206
    :pswitch_1
    const-string v1, "MA"

    .line 1207
    .line 1208
    goto/16 :goto_23

    .line 1209
    .line 1210
    :pswitch_2
    const-string v1, "AP"

    .line 1211
    .line 1212
    goto :goto_23

    .line 1213
    :pswitch_3
    const-string v1, "RR"

    .line 1214
    .line 1215
    goto :goto_23

    .line 1216
    :pswitch_4
    const-string v1, "AM"

    .line 1217
    .line 1218
    goto :goto_23

    .line 1219
    :pswitch_5
    const-string v1, "PA"

    .line 1220
    .line 1221
    goto :goto_23

    .line 1222
    :pswitch_6
    const-string v1, "PI"

    .line 1223
    .line 1224
    goto :goto_23

    .line 1225
    :pswitch_7
    const-string v1, "CE"

    .line 1226
    .line 1227
    goto :goto_23

    .line 1228
    :pswitch_8
    const-string v1, "RN"

    .line 1229
    .line 1230
    goto :goto_23

    .line 1231
    :pswitch_9
    const-string v1, "PB"

    .line 1232
    .line 1233
    goto :goto_23

    .line 1234
    :pswitch_a
    const-string v1, "AL"

    .line 1235
    .line 1236
    goto :goto_23

    .line 1237
    :pswitch_b
    const-string v1, "PE"

    .line 1238
    .line 1239
    goto :goto_23

    .line 1240
    :pswitch_c
    const-string v1, "SE"

    .line 1241
    .line 1242
    goto :goto_23

    .line 1243
    :pswitch_d
    const-string v1, "BA"

    .line 1244
    .line 1245
    goto :goto_23

    .line 1246
    :pswitch_e
    const-string v1, "RO"

    .line 1247
    .line 1248
    goto :goto_23

    .line 1249
    :pswitch_f
    const-string v1, "AC"

    .line 1250
    .line 1251
    goto :goto_23

    .line 1252
    :pswitch_10
    const-string v1, "MS"

    .line 1253
    .line 1254
    goto :goto_23

    .line 1255
    :pswitch_11
    const-string v1, "MT"

    .line 1256
    .line 1257
    goto :goto_23

    .line 1258
    :pswitch_12
    const-string v1, "TO"

    .line 1259
    .line 1260
    goto :goto_23

    .line 1261
    :pswitch_13
    const-string v1, "GO"

    .line 1262
    .line 1263
    goto :goto_23

    .line 1264
    :pswitch_14
    const-string v1, "DF"

    .line 1265
    .line 1266
    goto :goto_23

    .line 1267
    :pswitch_15
    const-string v1, "RS"

    .line 1268
    .line 1269
    goto :goto_23

    .line 1270
    :pswitch_16
    const-string v1, "SC"

    .line 1271
    .line 1272
    goto :goto_23

    .line 1273
    :pswitch_17
    const-string v1, "PR"

    .line 1274
    .line 1275
    goto :goto_23

    .line 1276
    :pswitch_18
    const-string v1, "MG"

    .line 1277
    .line 1278
    goto :goto_23

    .line 1279
    :pswitch_19
    const-string v1, "ES"

    .line 1280
    .line 1281
    goto :goto_23

    .line 1282
    :pswitch_1a
    const-string v1, "RJ"

    .line 1283
    .line 1284
    goto :goto_23

    .line 1285
    :pswitch_1b
    const-string v1, "SP"

    .line 1286
    .line 1287
    :goto_23
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1288
    .line 1289
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    .line 1297
    .line 1298
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v0

    .line 1305
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    .line 1307
    .line 1308
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1309
    .line 1310
    const-string/jumbo v1, "setAreaCode areaInfo="

    .line 1311
    .line 1312
    .line 1313
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1314
    .line 1315
    .line 1316
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v0

    .line 1323
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    .line 1325
    .line 1326
    :cond_3d
    :goto_24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v0

    .line 1330
    if-nez v3, :cond_3e

    .line 1331
    .line 1332
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v0

    .line 1336
    goto/16 :goto_22

    .line 1337
    .line 1338
    :cond_3e
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1339
    .line 1340
    .line 1341
    move-result v1

    .line 1342
    if-eqz v1, :cond_40

    .line 1343
    .line 1344
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1345
    .line 1346
    .line 1347
    move-result v1

    .line 1348
    if-nez v1, :cond_3f

    .line 1349
    .line 1350
    goto :goto_25

    .line 1351
    :cond_3f
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v0

    .line 1355
    goto/16 :goto_22

    .line 1356
    .line 1357
    :cond_40
    :goto_25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1358
    .line 1359
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    .line 1364
    .line 1365
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v0

    .line 1378
    goto/16 :goto_22

    .line 1379
    .line 1380
    :cond_41
    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1381
    .line 1382
    const-string/jumbo v1, "updateNetworkNameLatinLAC="

    .line 1383
    .line 1384
    .line 1385
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1389
    .line 1390
    .line 1391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v0

    .line 1395
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    .line 1397
    .line 1398
    :cond_42
    move-object v2, v6

    .line 1399
    goto :goto_28

    .line 1400
    :cond_43
    invoke-virtual {v6, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v0

    .line 1404
    if-eqz v0, :cond_44

    .line 1405
    .line 1406
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v0

    .line 1410
    goto :goto_27

    .line 1411
    :cond_44
    const/4 v0, 0x0

    .line 1412
    :goto_27
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v0

    .line 1416
    goto/16 :goto_13

    .line 1417
    .line 1418
    :cond_45
    :goto_28
    if-nez v2, :cond_46

    .line 1419
    .line 1420
    goto :goto_29

    .line 1421
    :cond_46
    move-object v4, v2

    .line 1422
    :cond_47
    :goto_29
    return-object v4

    .line 1423
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_0
        :pswitch_1a
        :pswitch_1a
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_0
        :pswitch_18
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final isUseLatinNetworkName()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->DISPLAY_CBCH50:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 7
    .line 8
    invoke-interface {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/4 v0, 0x1

    .line 25
    xor-int/2addr p0, v0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    move v1, v0

    .line 29
    :cond_0
    return v1
.end method

.method public final registerLocationListener()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v3, "registerLocationListener subscriptions="

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "LatinNetworkNameProvider"

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/util/Map$Entry;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/Number;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget-object v3, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 58
    .line 59
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-nez v1, :cond_0

    .line 68
    .line 69
    iget-object v4, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellLocationCallback0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellLocationCallback1:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

    .line 73
    .line 74
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->locationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 75
    .line 76
    check-cast v5, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .line 77
    .line 78
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    const-string v6, "]"

    .line 83
    .line 84
    if-eqz v5, :cond_1

    .line 85
    .line 86
    iget-object v5, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 87
    .line 88
    invoke-virtual {v3, v5, v4}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 89
    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v4, "Location is enabled, start listening cell location ["

    .line 94
    .line 95
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-static {v3, v6, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 106
    .line 107
    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v4, "Location is turned off, stop listening cell location ["

    .line 111
    .line 112
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    return-void
.end method

.method public final unregisterLocationListener()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->serviceStateHash:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Number;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget-object v2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 34
    .line 35
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellLocationCallback0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellLocationCallback1:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;

    .line 49
    .line 50
    :goto_1
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method
