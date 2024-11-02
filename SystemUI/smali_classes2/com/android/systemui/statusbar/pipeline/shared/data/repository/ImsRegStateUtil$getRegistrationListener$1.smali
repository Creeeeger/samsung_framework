.class public final Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic $slotId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;


# direct methods
.method public constructor <init>(ILcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/16 v0, 0xf

    .line 6
    .line 7
    const-string v1, "onDeregistered["

    .line 8
    .line 9
    const-string v2, "ImsRegStateUtil"

    .line 10
    .line 11
    if-ne p2, v0, :cond_0

    .line 12
    .line 13
    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    .line 14
    .line 15
    const-string p1, "]: TYPE_MOBILE_EMERGENCY"

    .line 16
    .line 17
    invoke-static {v1, p0, p1, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string p2, "mmtel"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    .line 33
    .line 34
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    .line 35
    .line 36
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voLTERegState:Z

    .line 37
    .line 38
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->ePDGRegState:Z

    .line 39
    .line 40
    iget p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    .line 41
    .line 42
    const-string p2, "]: voice profiles are disconnected"

    .line 43
    .line 44
    invoke-static {v1, p1, p2, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/16 p2, 0xb

    .line 53
    .line 54
    if-ne p1, p2, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    .line 59
    .line 60
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    .line 61
    .line 62
    iget p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    .line 63
    .line 64
    const-string p2, "]: VoWifi is disconnected"

    .line 65
    .line 66
    invoke-static {v1, p1, p2, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    .line 70
    .line 71
    const-string p2, "]: is not MMTEL_VOICE"

    .line 72
    .line 73
    invoke-static {v1, p1, p2, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegStates:Ljava/util/Map;

    .line 79
    .line 80
    iget p2, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    .line 81
    .line 82
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    .line 89
    .line 90
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 94
    .line 95
    iget-object p2, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->_ePDGConnected:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->ePDGConnected()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegStateChangedCallbacks:Ljava/util/List;

    .line 111
    .line 112
    iget p2, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    .line 113
    .line 114
    check-cast p1, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Ljava/lang/Iterable;

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 123
    .line 124
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-eqz p2, :cond_3

    .line 133
    .line 134
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    check-cast p2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$imsRegState$1$mImsRegStateChangedCallback$1;

    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    .line 141
    .line 142
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    .line 143
    .line 144
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voLTERegState:Z

    .line 145
    .line 146
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->ePDGRegState:Z

    .line 147
    .line 148
    new-instance v3, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    .line 149
    .line 150
    invoke-direct {v3, v1, v2, v0}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;-><init>(ZZZ)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, v3}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$imsRegState$1$mImsRegStateChangedCallback$1;->onImsRegStateChanged(Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_3
    return-void
.end method

.method public final onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xf

    .line 6
    .line 7
    const-string v2, "onRegistered["

    .line 8
    .line 9
    const-string v3, "ImsRegStateUtil"

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    .line 14
    .line 15
    const-string p1, "]: TYPE_MOBILE_EMERGENCY"

    .line 16
    .line 17
    invoke-static {v2, p0, p1, v3}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string v0, "mmtel"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v1, 0xb

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v5, 0x1

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ne v0, v5, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-ne v0, v1, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    .line 55
    .line 56
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voLTERegState:Z

    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    .line 61
    .line 62
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    .line 63
    .line 64
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const-string v5, "]: MMTEL_VOICE. network type="

    .line 71
    .line 72
    invoke-static {v2, v0, v5, v1, v3}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    .line 79
    .line 80
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    .line 81
    .line 82
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    .line 83
    .line 84
    const-string v1, "]: VoWifi is connected"

    .line 85
    .line 86
    invoke-static {v2, v0, v1, v3}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-ne v0, v1, :cond_5

    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    .line 105
    .line 106
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    .line 107
    .line 108
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    .line 109
    .line 110
    const-string v1, "]: VoWifi is disconnected"

    .line 111
    .line 112
    invoke-static {v2, v0, v1, v3}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    .line 116
    .line 117
    const-string v1, "]: is not MMTEL_VOICE"

    .line 118
    .line 119
    invoke-static {v2, v0, v1, v3}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 125
    .line 126
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_WIFI_CALLING_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 127
    .line 128
    iget v5, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    .line 129
    .line 130
    new-array v4, v4, [Ljava/lang/Object;

    .line 131
    .line 132
    invoke-interface {v0, v1, v5, v4}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->ePDGRegState:Z

    .line 147
    .line 148
    iget p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    .line 149
    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 151
    .line 152
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    .line 153
    .line 154
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->ePDGRegState:Z

    .line 155
    .line 156
    const-string v1, "]: ePDGStatus="

    .line 157
    .line 158
    invoke-static {v2, p1, v1, v0, v3}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 162
    .line 163
    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegStates:Ljava/util/Map;

    .line 164
    .line 165
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    .line 166
    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 172
    .line 173
    iget-object v1, v1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    .line 174
    .line 175
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 179
    .line 180
    iget-object v0, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->_ePDGConnected:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->ePDGConnected()Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 194
    .line 195
    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegStateChangedCallbacks:Ljava/util/List;

    .line 196
    .line 197
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->$slotId:I

    .line 198
    .line 199
    check-cast p1, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Ljava/lang/Iterable;

    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil$getRegistrationListener$1;->this$0:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    .line 208
    .line 209
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_7

    .line 218
    .line 219
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$imsRegState$1$mImsRegStateChangedCallback$1;

    .line 224
    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;->imsRegState:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    .line 226
    .line 227
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    .line 228
    .line 229
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voLTERegState:Z

    .line 230
    .line 231
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->ePDGRegState:Z

    .line 232
    .line 233
    new-instance v4, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    .line 234
    .line 235
    invoke-direct {v4, v2, v3, v1}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;-><init>(ZZZ)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$imsRegState$1$mImsRegStateChangedCallback$1;->onImsRegStateChanged(Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;)V

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_7
    return-void
.end method
