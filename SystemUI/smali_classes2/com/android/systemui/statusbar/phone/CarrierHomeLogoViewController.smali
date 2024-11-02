.class public final Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final carrierLogoVisibilityManager:Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field public final defaultDataListener:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$defaultDataListener$1;

.field public final deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final deviceProvisionedListener:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$deviceProvisionedListener$1;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public final logoView:Lcom/android/systemui/statusbar/phone/CarrierLogoView;

.field public final quickStarListener:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$quickStarListener$1;

.field public final serviceStateChanged:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$special$$inlined$map$1;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final settingsListener:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$settingsListener$1;

.field public final simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

.field public final simStateChanged:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

.field public final slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

.field public final slotId:I

.field public final spnUpdated:Lkotlinx/coroutines/flow/Flow;

.field public final subscriptionManager:Landroid/telephony/SubscriptionManager;

.field public userSetup:Z

.field public final visibilityHistory:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;ILcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/statusbar/phone/CarrierLogoView;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p16

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    move-object v2, p3

    .line 8
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 9
    .line 10
    move-object v2, p4

    .line 11
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 12
    .line 13
    move-object v2, p5

    .line 14
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 15
    .line 16
    move-object v2, p6

    .line 17
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->carrierLogoVisibilityManager:Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;

    .line 18
    .line 19
    move v2, p7

    .line 20
    iput v2, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->slotId:I

    .line 21
    .line 22
    move-object/from16 v2, p8

    .line 23
    .line 24
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 25
    .line 26
    move-object/from16 v2, p9

    .line 27
    .line 28
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 29
    .line 30
    move-object/from16 v2, p10

    .line 31
    .line 32
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 33
    .line 34
    move-object/from16 v2, p11

    .line 35
    .line 36
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->logoView:Lcom/android/systemui/statusbar/phone/CarrierLogoView;

    .line 37
    .line 38
    move-object/from16 v2, p12

    .line 39
    .line 40
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    .line 41
    .line 42
    move-object/from16 v2, p13

    .line 43
    .line 44
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 45
    .line 46
    move-object/from16 v2, p14

    .line 47
    .line 48
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

    .line 49
    .line 50
    move-object/from16 v2, p15

    .line 51
    .line 52
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    .line 53
    .line 54
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 55
    .line 56
    new-instance v2, Ljava/util/LinkedList;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->visibilityHistory:Ljava/util/LinkedList;

    .line 62
    .line 63
    new-instance v2, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$settingsListener$1;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$settingsListener$1;-><init>(Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;)V

    .line 66
    .line 67
    .line 68
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->settingsListener:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$settingsListener$1;

    .line 69
    .line 70
    new-instance v2, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$defaultDataListener$1;

    .line 71
    .line 72
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$defaultDataListener$1;-><init>(Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;)V

    .line 73
    .line 74
    .line 75
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->defaultDataListener:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$defaultDataListener$1;

    .line 76
    .line 77
    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->userSetup:Z

    .line 84
    .line 85
    new-instance v1, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$quickStarListener$1;

    .line 86
    .line 87
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$quickStarListener$1;-><init>(Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;)V

    .line 88
    .line 89
    .line 90
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->quickStarListener:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$quickStarListener$1;

    .line 91
    .line 92
    new-instance v1, Landroid/content/IntentFilter;

    .line 93
    .line 94
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 95
    .line 96
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    const/4 v3, 0x0

    .line 101
    const/4 v4, 0x0

    .line 102
    const/16 v5, 0xe

    .line 103
    .line 104
    move-object p3, p2

    .line 105
    move-object p4, v1

    .line 106
    move-object p5, v2

    .line 107
    move p6, v3

    .line 108
    move-object p7, v4

    .line 109
    move/from16 p8, v5

    .line 110
    .line 111
    invoke-static/range {p3 .. p8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;ILjava/lang/String;I)Lkotlinx/coroutines/flow/Flow;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    new-instance v2, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$simStateChanged$1;

    .line 116
    .line 117
    const/4 v3, 0x0

    .line 118
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$simStateChanged$1;-><init>(Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;Lkotlin/coroutines/Continuation;)V

    .line 119
    .line 120
    .line 121
    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 122
    .line 123
    invoke-direct {v4, v2, v1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 124
    .line 125
    .line 126
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->simStateChanged:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 127
    .line 128
    new-instance v1, Landroid/content/IntentFilter;

    .line 129
    .line 130
    const-string v2, "android.intent.action.SERVICE_STATE"

    .line 131
    .line 132
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    const/4 v4, 0x0

    .line 137
    sget-object v5, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$serviceStateChanged$1;->INSTANCE:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$serviceStateChanged$1;

    .line 138
    .line 139
    const/16 v6, 0xe

    .line 140
    .line 141
    move-object v7, p2

    .line 142
    invoke-static {p2, v1, v3, v5, v6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/flow/Flow;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    new-instance v3, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$special$$inlined$map$1;

    .line 147
    .line 148
    invoke-direct {v3, v1, p0}, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;)V

    .line 149
    .line 150
    .line 151
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->serviceStateChanged:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$special$$inlined$map$1;

    .line 152
    .line 153
    new-instance v1, Landroid/content/IntentFilter;

    .line 154
    .line 155
    const-string v3, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    .line 156
    .line 157
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const/4 v3, 0x0

    .line 161
    const/16 v5, 0xe

    .line 162
    .line 163
    move-object p1, p2

    .line 164
    move-object p2, v1

    .line 165
    move-object p3, v3

    .line 166
    move p4, v2

    .line 167
    move-object p5, v4

    .line 168
    move p6, v5

    .line 169
    invoke-static/range {p1 .. p6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;ILjava/lang/String;I)Lkotlinx/coroutines/flow/Flow;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->spnUpdated:Lkotlinx/coroutines/flow/Flow;

    .line 174
    .line 175
    new-instance v1, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$deviceProvisionedListener$1;

    .line 176
    .line 177
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$deviceProvisionedListener$1;-><init>(Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;)V

    .line 178
    .line 179
    .line 180
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->deviceProvisionedListener:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$deviceProvisionedListener$1;

    .line 181
    .line 182
    return-void
.end method

.method public static final access$updateSimTypes(Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->getSimCardInfo(I)Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->carrierLogoVisibilityManager:Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;->simTypes:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v2, 0x0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_9

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 76
    .line 77
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    .line 78
    .line 79
    iget v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;->defaultSubscriptionSlotId:I

    .line 80
    .line 81
    new-array v5, v2, [Ljava/lang/Object;

    .line 82
    .line 83
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 84
    .line 85
    invoke-interface {v6, v3, v4, v5}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    const-string v4, "SKT"

    .line 90
    .line 91
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    const/4 v5, 0x1

    .line 96
    if-eqz v4, :cond_3

    .line 97
    .line 98
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->SKT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 99
    .line 100
    if-ne v1, v3, :cond_8

    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_3
    const-string v4, "KTT"

    .line 105
    .line 106
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_4

    .line 111
    .line 112
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->KT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 113
    .line 114
    if-ne v1, v3, :cond_8

    .line 115
    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    :cond_4
    const-string v4, "LGT"

    .line 119
    .line 120
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_5

    .line 125
    .line 126
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->LGT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 127
    .line 128
    if-ne v1, v3, :cond_8

    .line 129
    .line 130
    goto/16 :goto_2

    .line 131
    .line 132
    :cond_5
    const-string v4, "ORANGE"

    .line 133
    .line 134
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_8

    .line 139
    .line 140
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->ORANGE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 141
    .line 142
    if-ne v1, v3, :cond_8

    .line 143
    .line 144
    iget v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;->defaultSubscriptionSlotId:I

    .line 145
    .line 146
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;->simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

    .line 147
    .line 148
    iget-object v3, v3, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 149
    .line 150
    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    const-string v6, "Orange F"

    .line 155
    .line 156
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    const-string v7, "SimCardInfoUtil"

    .line 161
    .line 162
    if-eqz v6, :cond_6

    .line 163
    .line 164
    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v6, "numeric information, sim="

    .line 175
    .line 176
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v6, " plmn="

    .line 183
    .line 184
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    const/4 v6, 0x3

    .line 202
    if-lt v3, v6, :cond_7

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-lt v3, v6, :cond_7

    .line 209
    .line 210
    new-instance v3, Lkotlin/ranges/IntRange;

    .line 211
    .line 212
    const/4 v6, 0x2

    .line 213
    invoke-direct {v3, v2, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 214
    .line 215
    .line 216
    iget v7, v3, Lkotlin/ranges/IntProgression;->first:I

    .line 217
    .line 218
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    iget v3, v3, Lkotlin/ranges/IntProgression;->last:I

    .line 227
    .line 228
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    add-int/2addr v3, v5

    .line 237
    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    new-instance v4, Lkotlin/ranges/IntRange;

    .line 242
    .line 243
    invoke-direct {v4, v2, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 244
    .line 245
    .line 246
    iget v6, v4, Lkotlin/ranges/IntProgression;->first:I

    .line 247
    .line 248
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    iget v4, v4, Lkotlin/ranges/IntProgression;->last:I

    .line 257
    .line 258
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    add-int/2addr v4, v5

    .line 267
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    goto :goto_1

    .line 276
    :cond_6
    const-string/jumbo v1, "spn isn\'t matched with Orange="

    .line 277
    .line 278
    .line 279
    invoke-static {v1, v4, v7}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    :cond_7
    move v1, v2

    .line 283
    :goto_1
    if-eqz v1, :cond_8

    .line 284
    .line 285
    :goto_2
    move v1, v5

    .line 286
    goto :goto_3

    .line 287
    :cond_8
    move v1, v2

    .line 288
    :goto_3
    if-eqz v1, :cond_2

    .line 289
    .line 290
    move v2, v5

    .line 291
    :cond_9
    :goto_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;->matchedSim:Z

    .line 292
    .line 293
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->userSetup:Z

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, " userSetup="

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->carrierLogoVisibilityManager:Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v0, "Last visibility state:"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->visibilityHistory:Ljava/util/LinkedList;

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_0

    .line 51
    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->logoView:Lcom/android/systemui/statusbar/phone/CarrierLogoView;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    mul-float/2addr v3, v0

    .line 29
    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    int-to-float v3, v3

    .line 44
    mul-float/2addr v3, v0

    .line 45
    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const v2, 0x7f071267

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 66
    .line 67
    int-to-float v1, v1

    .line 68
    mul-float/2addr v1, v0

    .line 69
    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v1, v1, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final onDisplayDeviceTypeChanged()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->onDensityOrFontScaleChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onViewAttached()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/util/CarrierConfigTracker;->mDataListeners:Ljava/util/Set;

    .line 4
    .line 5
    check-cast v0, Landroid/util/ArraySet;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->defaultDataListener:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$defaultDataListener$1;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isCarrierLogoEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->carrierLogoVisibilityManager:Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;

    .line 19
    .line 20
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;->settingEnabled:Z

    .line 21
    .line 22
    const-string/jumbo v1, "status_bar_show_network_information"

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    filled-new-array {v1}, [Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->settingsListener:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$settingsListener$1;

    .line 34
    .line 35
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    new-array v3, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 44
    .line 45
    iget v5, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->slotId:I

    .line 46
    .line 47
    invoke-interface {v4, v0, v5, v3}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v6, "SKT"

    .line 52
    .line 53
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    const-string v8, "ORANGE"

    .line 58
    .line 59
    const-string v9, "LGT"

    .line 60
    .line 61
    const-string v10, "KTT"

    .line 62
    .line 63
    if-eqz v7, :cond_0

    .line 64
    .line 65
    const v3, 0x7f081116

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_1

    .line 74
    .line 75
    const v3, 0x7f081113

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_2

    .line 84
    .line 85
    const v3, 0x7f081114

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_3

    .line 94
    .line 95
    const v3, 0x7f081115

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    move v3, v1

    .line 100
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->logoView:Lcom/android/systemui/statusbar/phone/CarrierLogoView;

    .line 101
    .line 102
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    .line 104
    .line 105
    new-array v3, v1, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-interface {v4, v0, v5, v3}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    sparse-switch v3, :sswitch_data_0

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :sswitch_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_4

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const v3, 0x7f1310a1

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    goto :goto_2

    .line 140
    :sswitch_1
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_5

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const v3, 0x7f1310a0

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    goto :goto_2

    .line 159
    :sswitch_2
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_6

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    const v3, 0x7f13109f

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    goto :goto_2

    .line 178
    :sswitch_3
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-nez v0, :cond_7

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_7
    const-string v0, "Orange F"

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :goto_1
    const-string v0, ""

    .line 189
    .line 190
    :goto_2
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 194
    .line 195
    invoke-interface {v0, v7}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Landroid/widget/ImageView;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 199
    .line 200
    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 201
    .line 202
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->deviceProvisionedListener:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$deviceProvisionedListener$1;

    .line 203
    .line 204
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 208
    .line 209
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 210
    .line 211
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 215
    .line 216
    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 217
    .line 218
    iget-object v3, v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    .line 219
    .line 220
    iget-boolean v3, v3, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    .line 221
    .line 222
    const/4 v4, 0x1

    .line 223
    if-eqz v3, :cond_9

    .line 224
    .line 225
    iget-object v3, v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    .line 226
    .line 227
    iget v3, v3, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsHomeCarrierDisabled:I

    .line 228
    .line 229
    if-ne v3, v4, :cond_8

    .line 230
    .line 231
    move v3, v4

    .line 232
    goto :goto_3

    .line 233
    :cond_8
    move v3, v1

    .line 234
    :goto_3
    if-eqz v3, :cond_9

    .line 235
    .line 236
    move v1, v4

    .line 237
    :cond_9
    xor-int/2addr v1, v4

    .line 238
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;->quickStarEnabled:Z

    .line 239
    .line 240
    const-string v1, "CarrierHomeLogoViewController"

    .line 241
    .line 242
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->quickStarListener:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$quickStarListener$1;

    .line 243
    .line 244
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    .line 245
    .line 246
    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 248
    .line 249
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 253
    .line 254
    new-instance v1, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$onViewAttached$1;

    .line 255
    .line 256
    const/4 v2, 0x0

    .line 257
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$onViewAttached$1;-><init>(Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;Lkotlin/coroutines/Continuation;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v0, v1}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    nop

    .line 265
    :sswitch_data_0
    .sparse-switch
        -0x748ee5d2 -> :sswitch_3
        0x1240b -> :sswitch_2
        0x12639 -> :sswitch_1
        0x140fc -> :sswitch_0
    .end sparse-switch
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/util/CarrierConfigTracker;->mDataListeners:Ljava/util/Set;

    .line 4
    .line 5
    check-cast v0, Landroid/util/ArraySet;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->defaultDataListener:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$defaultDataListener$1;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->settingsListener:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$settingsListener$1;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->logoView:Lcom/android/systemui/statusbar/phone/CarrierLogoView;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Landroid/widget/ImageView;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 27
    .line 28
    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->deviceProvisionedListener:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$deviceProvisionedListener$1;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 36
    .line 37
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 43
    .line 44
    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 45
    .line 46
    const-string v1, "CarrierHomeLogoViewController"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->unregisterSubscriber(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final updateCarrierLogoVisibility()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->carrierLogoVisibilityManager:Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;->getVisible()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;->getVisible()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->visibilityHistory:Ljava/util/LinkedList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v2, 0xa

    .line 31
    .line 32
    if-le v1, v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 38
    .line 39
    const-string v2, "MM-dd HH:mm:ss.SSS"

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, " "

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;->getVisible()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    const-string v0, "Visibility changed="

    .line 84
    .line 85
    const-string v1, "CarrierHomeLogoViewController"

    .line 86
    .line 87
    invoke-static {v0, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    return-void
.end method
