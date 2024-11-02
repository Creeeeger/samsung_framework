.class public final Lcom/android/keyguard/CarrierTextManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public hasSpecialChar:Ljava/lang/Boolean;

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field protected final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mCarrierTextCallback:Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

.field public final mCarrierTextUtil:Lcom/android/systemui/shade/carrier/CarrierTextUtil;

.field public final mContext:Landroid/content/Context;

.field public final mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final mIsEmergencyCallCapable:Z

.field protected mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKnoxStateCallback:Lcom/android/keyguard/CarrierTextManager$4;

.field public final mLogger:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mPhoneStateListener:Lcom/android/keyguard/CarrierTextManager$3;

.field public final mSeparator:Ljava/lang/CharSequence;

.field public final mShowMissingSim:Z

.field public final mSimErrorState:[Z

.field public final mSimNetworkLock:[Z

.field public final mSimSlotsNumber:I

.field public final mSubscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

.field public mTelephonyCapable:Z

.field public final mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWakefulnessObserver:Lcom/android/keyguard/CarrierTextManager$1;

.field public final mWifiRepository:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;

.field public final mWifiTextManager:Lcom/android/keyguard/WifiTextManager;

.field public final plmnOfBroadcast:Ljava/util/HashMap;

.field public final voWifiConnected:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZLcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/shade/carrier/CarrierTextUtil;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;Lcom/android/keyguard/logging/CarrierTextManagerLogger;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/keyguard/WifiTextManager;)V
    .locals 8

    move-object v0, p0

    move-object/from16 v1, p11

    move-object/from16 v2, p16

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v3, Lcom/android/keyguard/CarrierTextManager$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/CarrierTextManager$1;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->mWakefulnessObserver:Lcom/android/keyguard/CarrierTextManager$1;

    .line 5
    new-instance v3, Lcom/android/keyguard/CarrierTextManager$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/CarrierTextManager$2;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 6
    new-instance v3, Lcom/android/keyguard/CarrierTextManager$3;

    invoke-direct {v3, p0}, Lcom/android/keyguard/CarrierTextManager$3;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->mPhoneStateListener:Lcom/android/keyguard/CarrierTextManager$3;

    .line 7
    new-instance v3, Lcom/android/keyguard/CarrierTextManager$4;

    invoke-direct {v3, p0}, Lcom/android/keyguard/CarrierTextManager$4;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->mKnoxStateCallback:Lcom/android/keyguard/CarrierTextManager$4;

    .line 8
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->hasSpecialChar:Ljava/lang/Boolean;

    move-object v3, p1

    .line 9
    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {p6}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/keyguard/CarrierTextManager;->mIsEmergencyCallCapable:Z

    move v3, p4

    .line 11
    iput-boolean v3, v0, Lcom/android/keyguard/CarrierTextManager;->mShowMissingSim:Z

    move-object v3, p5

    .line 12
    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->mWifiRepository:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;

    move-object v3, p6

    .line 13
    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v4, " \u2022 "

    .line 14
    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mSeparator:Ljava/lang/CharSequence;

    move-object v4, p7

    .line 15
    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    move-object/from16 v4, p8

    .line 16
    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mCarrierTextUtil:Lcom/android/systemui/shade/carrier/CarrierTextUtil;

    move-object/from16 v4, p9

    .line 17
    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 18
    invoke-virtual {p6}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v3

    iput v3, v0, Lcom/android/keyguard/CarrierTextManager;->mSimSlotsNumber:I

    .line 19
    new-array v4, v3, [Z

    iput-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mSimErrorState:[Z

    .line 20
    new-array v3, v3, [Z

    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->mSimNetworkLock:[Z

    .line 21
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->voWifiConnected:Ljava/util/HashMap;

    .line 22
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->plmnOfBroadcast:Ljava/util/HashMap;

    move-object/from16 v3, p10

    .line 23
    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 24
    iput-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v3, p12

    .line 25
    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v3, p13

    .line 26
    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->mSubscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

    move-object/from16 v3, p14

    .line 27
    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->mLogger:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

    .line 28
    sget-boolean v3, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_DISPLAY_AP_NAME:Z

    if-eqz v3, :cond_0

    .line 29
    iput-object v2, v0, Lcom/android/keyguard/CarrierTextManager;->mWifiTextManager:Lcom/android/keyguard/WifiTextManager;

    .line 30
    new-instance v3, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    .line 31
    iget-object v4, v2, Lcom/android/keyguard/WifiTextManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 32
    new-instance v5, Lcom/android/keyguard/WifiTextManager$register$1;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v3, v6}, Lcom/android/keyguard/WifiTextManager$register$1;-><init>(Lcom/android/keyguard/WifiTextManager;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    invoke-static {v4, v6, v6, v5, v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 33
    new-instance v4, Lcom/android/keyguard/WifiTextManager$register$2;

    invoke-direct {v4, v2, v3, v6}, Lcom/android/keyguard/WifiTextManager$register$2;-><init>(Lcom/android/keyguard/WifiTextManager;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iget-object v2, v2, Lcom/android/keyguard/WifiTextManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v2, v6, v6, v4, v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_0
    move-object/from16 v2, p15

    .line 34
    iput-object v2, v0, Lcom/android/keyguard/CarrierTextManager;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 35
    new-instance v2, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZLcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/shade/carrier/CarrierTextUtil;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;Lcom/android/keyguard/logging/CarrierTextManagerLogger;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/keyguard/WifiTextManager;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p16}, Lcom/android/keyguard/CarrierTextManager;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZLcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/shade/carrier/CarrierTextUtil;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;Lcom/android/keyguard/logging/CarrierTextManagerLogger;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/keyguard/WifiTextManager;)V

    return-void
.end method

.method public static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    xor-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_0
    if-eqz v0, :cond_1

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_1
    if-eqz v1, :cond_2

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_2
    const-string p0, ""

    .line 43
    .line 44
    return-object p0
.end method


# virtual methods
.method public final getCarrierTextForSimState(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierTextManager;->getStatusForIccState(I)Lcom/android/keyguard/CarrierTextManager$StatusMode;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/android/keyguard/CarrierTextManager$5;->$SwitchMap$com$android$keyguard$CarrierTextManager$StatusMode:[I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    packed-switch p1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    :cond_0
    :pswitch_0
    move-object p2, v2

    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :pswitch_1
    const p1, 0x7f1307c2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/CarrierTextManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :pswitch_2
    const p0, 0x7f1307c4

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    const p0, 0x7f13095c

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :cond_1
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_DIRECT_CALL_TO_ECC:Z

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :pswitch_3
    const p0, 0x7f130978

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    const p0, 0x7f13091c

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :cond_2
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_DIRECT_CALL_TO_ECC:Z

    .line 80
    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move-object p2, p0

    .line 85
    goto :goto_1

    .line 86
    :pswitch_4
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    .line 87
    .line 88
    if-eqz p1, :cond_0

    .line 89
    .line 90
    const p1, 0x7f13089c

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/CarrierTextManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    goto :goto_1

    .line 102
    :pswitch_5
    const p1, 0x7f1307b8

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/CarrierTextManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    .line 114
    .line 115
    if-eqz p0, :cond_4

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :pswitch_6
    const p0, 0x7f130919

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    goto :goto_1

    .line 126
    :pswitch_7
    const p1, 0x7f1307b3

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/CarrierTextManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    goto :goto_1

    .line 138
    :goto_0
    :pswitch_8
    move-object p2, v0

    .line 139
    goto :goto_1

    .line 140
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierTextManager;->isRTL()Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_4

    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->hasSpecialChar:Ljava/lang/Boolean;

    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-nez p0, :cond_4

    .line 153
    .line 154
    new-instance p0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string/jumbo p1, "\u200f"

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    :cond_4
    :goto_1
    return-object p2

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getStatusForIccState(I)Lcom/android/keyguard/CarrierTextManager$StatusMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 4
    .line 5
    if-nez p0, :cond_1

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    if-eq p1, p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x7

    .line 11
    if-ne p1, p0, :cond_1

    .line 12
    .line 13
    :cond_0
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    const/16 p0, 0xc

    .line 17
    .line 18
    if-eq p1, p0, :cond_2

    .line 19
    .line 20
    packed-switch p1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_0
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimRestricted:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_1
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_2
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_3
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_4
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->Normal:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_5
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->NetworkLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_6
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_7
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_8
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_9
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_2
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->PersoLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handleSetListening(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mKnoxStateCallback:Lcom/android/keyguard/CarrierTextManager$4;

    .line 2
    .line 3
    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextManager;->mPhoneStateListener:Lcom/android/keyguard/CarrierTextManager$3;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/keyguard/CarrierTextManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/android/keyguard/CarrierTextManager;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    new-instance p1, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda2;

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    invoke-direct {p1, p0, v5}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Lcom/android/systemui/telephony/TelephonyListenerManager;->addActiveDataSubscriptionIdListener(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 40
    .line 41
    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_DISPLAY_AP_NAME:Z

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    new-instance p1, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda2;

    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    invoke-direct {p1, p0, v0}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance p0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda2;

    .line 62
    .line 63
    const/4 v0, 0x4

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v4, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

    .line 73
    .line 74
    new-instance p1, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda2;

    .line 75
    .line 76
    const/4 v5, 0x3

    .line 77
    invoke-direct {p1, p0, v5}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    iget-object p0, v3, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mActiveDataSubscriptionIdListeners:Ljava/util/List;

    .line 86
    .line 87
    check-cast p0, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/android/systemui/telephony/TelephonyListenerManager;->updateListening()V

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 100
    .line 101
    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    return-void
.end method

.method public final isRTL()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 12
    .line 13
    and-int/lit16 p0, p0, 0xc0

    .line 14
    .line 15
    const/16 v0, 0x80

    .line 16
    .line 17
    if-ne p0, v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextManager;->mIsEmergencyCallCapable:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mSeparator:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-static {p1, p2, p0}, Lcom/android/keyguard/CarrierTextManager;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    return-object p1
.end method

.method public postToCallback(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final updateCarrierText(Landroid/content/Intent;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "CarrierTextManager#updateCarrierText"

    .line 4
    .line 5
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFilteredSubscriptionInfo()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, v0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const v3, 0x10406c7

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    move-object v4, v1

    .line 24
    check-cast v4, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    new-array v11, v5, [I

    .line 31
    .line 32
    iget v6, v0, Lcom/android/keyguard/CarrierTextManager;->mSimSlotsNumber:I

    .line 33
    .line 34
    new-array v7, v6, [I

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    move v10, v8

    .line 42
    :goto_0
    const/4 v12, -0x1

    .line 43
    if-ge v10, v6, :cond_0

    .line 44
    .line 45
    aput v12, v7, v10

    .line 46
    .line 47
    add-int/lit8 v10, v10, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-array v10, v5, [Ljava/lang/CharSequence;

    .line 51
    .line 52
    iget-object v13, v0, Lcom/android/keyguard/CarrierTextManager;->mLogger:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

    .line 53
    .line 54
    invoke-virtual {v13, v5}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logUpdate(I)V

    .line 55
    .line 56
    .line 57
    iget-object v6, v0, Lcom/android/keyguard/CarrierTextManager;->plmnOfBroadcast:Ljava/util/HashMap;

    .line 58
    .line 59
    const/4 v14, 0x0

    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v15

    .line 66
    check-cast v15, Ljava/lang/CharSequence;

    .line 67
    .line 68
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v15

    .line 72
    if-eqz v15, :cond_1

    .line 73
    .line 74
    new-instance v15, Landroid/content/IntentFilter;

    .line 75
    .line 76
    const-string v8, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    .line 77
    .line 78
    invoke-direct {v15, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    move-object/from16 v8, p1

    .line 87
    .line 88
    :goto_1
    iget-object v15, v0, Lcom/android/keyguard/CarrierTextManager;->voWifiConnected:Ljava/util/HashMap;

    .line 89
    .line 90
    if-eqz v8, :cond_3

    .line 91
    .line 92
    const-string v14, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 93
    .line 94
    invoke-virtual {v8, v14, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    move-object/from16 v18, v3

    .line 99
    .line 100
    const-string/jumbo v3, "phone"

    .line 101
    .line 102
    .line 103
    if-ne v14, v12, :cond_2

    .line 104
    .line 105
    const/4 v14, 0x0

    .line 106
    invoke-virtual {v8, v3, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 107
    .line 108
    .line 109
    move-result v16

    .line 110
    if-nez v16, :cond_4

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    const/4 v14, 0x0

    .line 114
    :goto_2
    invoke-virtual {v8, v3, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    move-object/from16 v19, v9

    .line 123
    .line 124
    const-string/jumbo v9, "showEpdg"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v8, v9, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    invoke-virtual {v15, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    iget-object v12, v0, Lcom/android/keyguard/CarrierTextManager;->mCarrierTextUtil:Lcom/android/systemui/shade/carrier/CarrierTextUtil;

    .line 143
    .line 144
    invoke-virtual {v12, v8}, Lcom/android/systemui/shade/carrier/CarrierTextUtil;->updateNetworkName(Landroid/content/Intent;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v14

    .line 148
    invoke-virtual {v6, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v12, v8}, Lcom/android/systemui/shade/carrier/CarrierTextUtil;->updateNetworkName(Landroid/content/Intent;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    invoke-virtual {v13, v3, v8}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logUpdateFromStickyBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_3
    move-object/from16 v18, v3

    .line 164
    .line 165
    :cond_4
    move-object/from16 v19, v9

    .line 166
    .line 167
    :goto_3
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 168
    .line 169
    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->hasSpecialChar:Ljava/lang/Boolean;

    .line 170
    .line 171
    const/4 v3, 0x0

    .line 172
    :goto_4
    if-ge v3, v5, :cond_6

    .line 173
    .line 174
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 179
    .line 180
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    if-eqz v8, :cond_5

    .line 185
    .line 186
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    const-string v9, "&"

    .line 191
    .line 192
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    if-eqz v8, :cond_5

    .line 197
    .line 198
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 199
    .line 200
    iput-object v3, v0, Lcom/android/keyguard/CarrierTextManager;->hasSpecialChar:Ljava/lang/Boolean;

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_6
    :goto_5
    const/4 v3, 0x0

    .line 207
    const/4 v8, 0x0

    .line 208
    const/4 v9, 0x1

    .line 209
    :goto_6
    iget-object v12, v0, Lcom/android/keyguard/CarrierTextManager;->mSubscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

    .line 210
    .line 211
    const-string v14, "CarrierTextController"

    .line 212
    .line 213
    move-object/from16 v20, v15

    .line 214
    .line 215
    const-string v15, ""

    .line 216
    .line 217
    if-ge v3, v5, :cond_e

    .line 218
    .line 219
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v21

    .line 223
    check-cast v21, Landroid/telephony/SubscriptionInfo;

    .line 224
    .line 225
    move-object/from16 v22, v6

    .line 226
    .line 227
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    move-object/from16 v21, v2

    .line 232
    .line 233
    invoke-virtual {v12, v6, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;->getSimOrder(ILjava/util/List;)I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-lt v2, v5, :cond_7

    .line 238
    .line 239
    move v2, v3

    .line 240
    goto :goto_7

    .line 241
    :cond_7
    invoke-virtual {v12, v6, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;->getSimOrder(ILjava/util/List;)I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    :goto_7
    aput-object v15, v10, v2

    .line 246
    .line 247
    aput v6, v11, v2

    .line 248
    .line 249
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v12

    .line 253
    check-cast v12, Landroid/telephony/SubscriptionInfo;

    .line 254
    .line 255
    invoke-virtual {v12}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 256
    .line 257
    .line 258
    move-result v12

    .line 259
    aput v3, v7, v12

    .line 260
    .line 261
    iget-object v12, v0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 262
    .line 263
    invoke-virtual {v12, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)I

    .line 264
    .line 265
    .line 266
    move-result v12

    .line 267
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v15

    .line 271
    check-cast v15, Landroid/telephony/SubscriptionInfo;

    .line 272
    .line 273
    invoke-virtual {v15}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    .line 274
    .line 275
    .line 276
    move-result-object v15

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextManager;->isRTL()Z

    .line 278
    .line 279
    .line 280
    move-result v23

    .line 281
    if-eqz v23, :cond_8

    .line 282
    .line 283
    move-object/from16 v23, v4

    .line 284
    .line 285
    const-string v4, "dea!"

    .line 286
    .line 287
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v24

    .line 291
    if-eqz v24, :cond_9

    .line 292
    .line 293
    move-object v15, v4

    .line 294
    goto :goto_8

    .line 295
    :cond_8
    move-object/from16 v23, v4

    .line 296
    .line 297
    :cond_9
    :goto_8
    invoke-virtual {v0, v12, v15}, Lcom/android/keyguard/CarrierTextManager;->getCarrierTextForSimState(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v15

    .line 305
    invoke-virtual {v13, v6, v12, v15}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logUpdateLoopStart(IILjava/lang/String;)V

    .line 306
    .line 307
    .line 308
    new-instance v15, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    move-object/from16 v24, v1

    .line 311
    .line 312
    const-string v1, "carrierTextForSimState("

    .line 313
    .line 314
    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v1, ")-(order: "

    .line 321
    .line 322
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v1, ") : "

    .line 329
    .line 330
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    if-eqz v4, :cond_a

    .line 344
    .line 345
    aput-object v4, v10, v2

    .line 346
    .line 347
    const/4 v9, 0x0

    .line 348
    :cond_a
    const/4 v1, 0x5

    .line 349
    if-ne v12, v1, :cond_d

    .line 350
    .line 351
    const-string v1, "WFC check"

    .line 352
    .line 353
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 357
    .line 358
    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    .line 359
    .line 360
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    check-cast v1, Landroid/telephony/ServiceState;

    .line 369
    .line 370
    if-eqz v1, :cond_c

    .line 371
    .line 372
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-nez v2, :cond_c

    .line 377
    .line 378
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    const/16 v2, 0x12

    .line 383
    .line 384
    if-ne v1, v2, :cond_b

    .line 385
    .line 386
    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mWifiRepository:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;

    .line 387
    .line 388
    invoke-interface {v1}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;->isWifiConnectedWithValidSsid()Z

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    if-eqz v1, :cond_c

    .line 393
    .line 394
    :cond_b
    invoke-virtual {v13}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logUpdateWfcCheck()V

    .line 395
    .line 396
    .line 397
    const/4 v8, 0x1

    .line 398
    :cond_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 399
    .line 400
    .line 401
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 402
    .line 403
    move-object/from16 v15, v20

    .line 404
    .line 405
    move-object/from16 v2, v21

    .line 406
    .line 407
    move-object/from16 v6, v22

    .line 408
    .line 409
    move-object/from16 v4, v23

    .line 410
    .line 411
    move-object/from16 v1, v24

    .line 412
    .line 413
    goto/16 :goto_6

    .line 414
    .line 415
    :cond_e
    move-object/from16 v24, v1

    .line 416
    .line 417
    move-object/from16 v21, v2

    .line 418
    .line 419
    move-object/from16 v22, v6

    .line 420
    .line 421
    if-eqz v9, :cond_13

    .line 422
    .line 423
    if-nez v8, :cond_13

    .line 424
    .line 425
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_CLEAR_NO_SIM_DEFAULT_TEXT:Z

    .line 426
    .line 427
    if-eqz v1, :cond_f

    .line 428
    .line 429
    move-object v3, v15

    .line 430
    move-object/from16 v2, v21

    .line 431
    .line 432
    goto :goto_9

    .line 433
    :cond_f
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_DISAPPEAR_DEFAULT_CARRIER_TEXT:Z

    .line 434
    .line 435
    if-eqz v1, :cond_10

    .line 436
    .line 437
    const v1, 0x7f1307ff

    .line 438
    .line 439
    .line 440
    move-object/from16 v2, v21

    .line 441
    .line 442
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    goto :goto_a

    .line 447
    :cond_10
    move-object/from16 v2, v21

    .line 448
    .line 449
    move-object/from16 v3, v18

    .line 450
    .line 451
    :goto_9
    move-object v1, v3

    .line 452
    :goto_a
    move-object/from16 v4, v19

    .line 453
    .line 454
    move-object/from16 v3, v22

    .line 455
    .line 456
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v6

    .line 460
    check-cast v6, Ljava/lang/CharSequence;

    .line 461
    .line 462
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 463
    .line 464
    .line 465
    move-result v6

    .line 466
    if-nez v6, :cond_11

    .line 467
    .line 468
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v6

    .line 472
    check-cast v6, Ljava/lang/CharSequence;

    .line 473
    .line 474
    invoke-virtual {v6, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v6

    .line 478
    if-nez v6, :cond_11

    .line 479
    .line 480
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    check-cast v1, Ljava/lang/CharSequence;

    .line 485
    .line 486
    :cond_11
    iget-boolean v4, v0, Lcom/android/keyguard/CarrierTextManager;->mShowMissingSim:Z

    .line 487
    .line 488
    if-eqz v4, :cond_12

    .line 489
    .line 490
    iget-boolean v4, v0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyCapable:Z

    .line 491
    .line 492
    if-eqz v4, :cond_12

    .line 493
    .line 494
    const v4, 0x7f13089c

    .line 495
    .line 496
    .line 497
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    goto :goto_b

    .line 502
    :cond_12
    move-object v4, v15

    .line 503
    :goto_b
    invoke-virtual {v0, v4, v1}, Lcom/android/keyguard/CarrierTextManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    move-object/from16 v17, v1

    .line 508
    .line 509
    goto :goto_c

    .line 510
    :cond_13
    move-object/from16 v2, v21

    .line 511
    .line 512
    move-object/from16 v3, v22

    .line 513
    .line 514
    const/16 v17, 0x0

    .line 515
    .line 516
    :goto_c
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    iget-object v4, v0, Lcom/android/keyguard/CarrierTextManager;->mSeparator:Ljava/lang/CharSequence;

    .line 521
    .line 522
    if-eqz v1, :cond_19

    .line 523
    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextManager;->isRTL()Z

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    iget-object v6, v0, Lcom/android/keyguard/CarrierTextManager;->hasSpecialChar:Ljava/lang/Boolean;

    .line 533
    .line 534
    if-nez v5, :cond_14

    .line 535
    .line 536
    move-object/from16 v18, v13

    .line 537
    .line 538
    move-object/from16 v17, v15

    .line 539
    .line 540
    goto :goto_f

    .line 541
    :cond_14
    new-instance v8, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .line 545
    .line 546
    move-object/from16 v18, v13

    .line 547
    .line 548
    const/4 v13, 0x0

    .line 549
    :goto_d
    if-ge v13, v5, :cond_18

    .line 550
    .line 551
    aget-object v17, v10, v13

    .line 552
    .line 553
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 554
    .line 555
    .line 556
    move-result v17

    .line 557
    if-nez v17, :cond_17

    .line 558
    .line 559
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 560
    .line 561
    .line 562
    move-result v17

    .line 563
    if-nez v17, :cond_16

    .line 564
    .line 565
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 566
    .line 567
    .line 568
    move-result v17

    .line 569
    if-eqz v17, :cond_15

    .line 570
    .line 571
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 572
    .line 573
    .line 574
    move-result v17

    .line 575
    if-eqz v17, :cond_15

    .line 576
    .line 577
    move-object/from16 v17, v1

    .line 578
    .line 579
    const/4 v1, 0x0

    .line 580
    invoke-virtual {v8, v1, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    move-object/from16 v19, v6

    .line 584
    .line 585
    aget-object v6, v10, v13

    .line 586
    .line 587
    invoke-virtual {v8, v1, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    goto :goto_e

    .line 591
    :cond_15
    move-object/from16 v17, v1

    .line 592
    .line 593
    move-object/from16 v19, v6

    .line 594
    .line 595
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    aget-object v1, v10, v13

    .line 599
    .line 600
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    goto :goto_e

    .line 604
    :cond_16
    move-object/from16 v17, v1

    .line 605
    .line 606
    move-object/from16 v19, v6

    .line 607
    .line 608
    aget-object v1, v10, v13

    .line 609
    .line 610
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    goto :goto_e

    .line 614
    :cond_17
    move-object/from16 v17, v1

    .line 615
    .line 616
    move-object/from16 v19, v6

    .line 617
    .line 618
    :goto_e
    add-int/lit8 v13, v13, 0x1

    .line 619
    .line 620
    move-object/from16 v1, v17

    .line 621
    .line 622
    move-object/from16 v6, v19

    .line 623
    .line 624
    goto :goto_d

    .line 625
    :cond_18
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v17

    .line 629
    goto :goto_f

    .line 630
    :cond_19
    move-object/from16 v18, v13

    .line 631
    .line 632
    :goto_f
    const/16 v1, 0x8

    .line 633
    .line 634
    invoke-virtual {v0, v1, v15}, Lcom/android/keyguard/CarrierTextManager;->getCarrierTextForSimState(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    move-object/from16 v8, v17

    .line 639
    .line 640
    const/4 v6, 0x0

    .line 641
    :goto_10
    iget-object v13, v0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 642
    .line 643
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 644
    .line 645
    .line 646
    move-result v13

    .line 647
    if-ge v6, v13, :cond_1d

    .line 648
    .line 649
    iget-object v13, v0, Lcom/android/keyguard/CarrierTextManager;->mSimErrorState:[Z

    .line 650
    .line 651
    aget-boolean v13, v13, v6

    .line 652
    .line 653
    if-nez v13, :cond_1a

    .line 654
    .line 655
    move-object/from16 v17, v7

    .line 656
    .line 657
    goto :goto_11

    .line 658
    :cond_1a
    if-eqz v9, :cond_1b

    .line 659
    .line 660
    const v6, 0x104049e

    .line 661
    .line 662
    .line 663
    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 664
    .line 665
    .line 666
    move-result-object v6

    .line 667
    invoke-static {v1, v6, v4}, Lcom/android/keyguard/CarrierTextManager;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 668
    .line 669
    .line 670
    move-result-object v8

    .line 671
    goto :goto_12

    .line 672
    :cond_1b
    aget v13, v7, v6

    .line 673
    .line 674
    move-object/from16 v17, v7

    .line 675
    .line 676
    const/4 v7, -0x1

    .line 677
    if-eq v13, v7, :cond_1c

    .line 678
    .line 679
    aget-object v7, v10, v13

    .line 680
    .line 681
    invoke-static {v1, v7, v4}, Lcom/android/keyguard/CarrierTextManager;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 682
    .line 683
    .line 684
    move-result-object v7

    .line 685
    aput-object v7, v10, v13

    .line 686
    .line 687
    goto :goto_11

    .line 688
    :cond_1c
    invoke-static {v8, v1, v4}, Lcom/android/keyguard/CarrierTextManager;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 689
    .line 690
    .line 691
    move-result-object v7

    .line 692
    move-object v8, v7

    .line 693
    :goto_11
    add-int/lit8 v6, v6, 0x1

    .line 694
    .line 695
    move-object/from16 v7, v17

    .line 696
    .line 697
    goto :goto_10

    .line 698
    :cond_1d
    :goto_12
    invoke-static {v2}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    .line 699
    .line 700
    .line 701
    move-result v1

    .line 702
    const v6, 0x7f130867

    .line 703
    .line 704
    .line 705
    if-eqz v1, :cond_27

    .line 706
    .line 707
    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    .line 712
    .line 713
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 714
    .line 715
    .line 716
    move-object v8, v1

    .line 717
    const/4 v1, 0x0

    .line 718
    :goto_13
    if-ge v1, v5, :cond_26

    .line 719
    .line 720
    aget v7, v11, v1

    .line 721
    .line 722
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    .line 723
    .line 724
    .line 725
    move-result v7

    .line 726
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 727
    .line 728
    const/4 v6, -0x1

    .line 729
    if-eq v7, v6, :cond_20

    .line 730
    .line 731
    :try_start_0
    iget-object v6, v0, Lcom/android/keyguard/CarrierTextManager;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 732
    .line 733
    if-nez v7, :cond_1e

    .line 734
    .line 735
    const-string/jumbo v19, "phone1_on"

    .line 736
    .line 737
    .line 738
    goto :goto_14

    .line 739
    :cond_1e
    const-string/jumbo v19, "phone2_on"
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 740
    .line 741
    .line 742
    :goto_14
    move/from16 v21, v5

    .line 743
    .line 744
    move-object/from16 v5, v19

    .line 745
    .line 746
    move-object/from16 v19, v8

    .line 747
    .line 748
    :try_start_1
    invoke-interface {v6}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 749
    .line 750
    .line 751
    move-result v8

    .line 752
    check-cast v6, Lcom/android/systemui/util/settings/GlobalSettingsImpl;

    .line 753
    .line 754
    invoke-virtual {v6, v8, v5}, Lcom/android/systemui/util/settings/GlobalSettingsImpl;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v6
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 758
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 759
    .line 760
    .line 761
    move-result v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 762
    const/4 v6, 0x1

    .line 763
    if-ne v5, v6, :cond_1f

    .line 764
    .line 765
    const/4 v5, 0x1

    .line 766
    goto :goto_15

    .line 767
    :cond_1f
    const/4 v5, 0x0

    .line 768
    :goto_15
    :try_start_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 769
    .line 770
    .line 771
    move-result-object v13

    .line 772
    goto :goto_16

    .line 773
    :catch_0
    new-instance v6, Landroid/provider/Settings$SettingNotFoundException;

    .line 774
    .line 775
    invoke-direct {v6, v5}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    throw v6
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 779
    :catch_1
    move/from16 v21, v5

    .line 780
    .line 781
    move-object/from16 v19, v8

    .line 782
    .line 783
    :catch_2
    const-string v5, "Sim settings - SettingNotFound"

    .line 784
    .line 785
    invoke-static {v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    .line 787
    .line 788
    goto :goto_16

    .line 789
    :cond_20
    move/from16 v21, v5

    .line 790
    .line 791
    move-object/from16 v19, v8

    .line 792
    .line 793
    :goto_16
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->isEmpty()Z

    .line 794
    .line 795
    .line 796
    move-result v5

    .line 797
    if-nez v5, :cond_23

    .line 798
    .line 799
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 800
    .line 801
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 802
    .line 803
    .line 804
    move-result-object v6

    .line 805
    move-object/from16 v8, v20

    .line 806
    .line 807
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v6

    .line 811
    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    move-result v5

    .line 815
    if-eqz v5, :cond_24

    .line 816
    .line 817
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 818
    .line 819
    .line 820
    move-result v5

    .line 821
    if-eqz v5, :cond_24

    .line 822
    .line 823
    const-string v5, "WFC PLMN INFO"

    .line 824
    .line 825
    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    .line 827
    .line 828
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 829
    .line 830
    .line 831
    move-result v5

    .line 832
    if-eqz v5, :cond_21

    .line 833
    .line 834
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 835
    .line 836
    .line 837
    move-result-object v5

    .line 838
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v5

    .line 842
    check-cast v5, Ljava/lang/CharSequence;

    .line 843
    .line 844
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    goto :goto_17

    .line 848
    :cond_21
    aget v5, v11, v1

    .line 849
    .line 850
    move-object/from16 v6, v24

    .line 851
    .line 852
    invoke-virtual {v12, v5, v6}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;->getSimOrder(ILjava/util/List;)I

    .line 853
    .line 854
    .line 855
    move-result v5

    .line 856
    if-nez v5, :cond_22

    .line 857
    .line 858
    new-instance v5, Ljava/lang/StringBuilder;

    .line 859
    .line 860
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 861
    .line 862
    .line 863
    move-result-object v7

    .line 864
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    move-result-object v7

    .line 868
    check-cast v7, Ljava/lang/CharSequence;

    .line 869
    .line 870
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    move-object v2, v5

    .line 880
    goto :goto_18

    .line 881
    :cond_22
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 885
    .line 886
    .line 887
    move-result-object v5

    .line 888
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v5

    .line 892
    check-cast v5, Ljava/lang/CharSequence;

    .line 893
    .line 894
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    goto :goto_18

    .line 898
    :cond_23
    move-object/from16 v8, v20

    .line 899
    .line 900
    :cond_24
    :goto_17
    move-object/from16 v6, v24

    .line 901
    .line 902
    :goto_18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 903
    .line 904
    .line 905
    move-result v5

    .line 906
    if-eqz v5, :cond_25

    .line 907
    .line 908
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v5

    .line 912
    move-object/from16 v19, v5

    .line 913
    .line 914
    :cond_25
    add-int/lit8 v1, v1, 0x1

    .line 915
    .line 916
    move-object/from16 v24, v6

    .line 917
    .line 918
    move-object/from16 v20, v8

    .line 919
    .line 920
    move-object/from16 v8, v19

    .line 921
    .line 922
    move/from16 v5, v21

    .line 923
    .line 924
    const v6, 0x7f130867

    .line 925
    .line 926
    .line 927
    goto/16 :goto_13

    .line 928
    .line 929
    :cond_26
    move-object/from16 v19, v8

    .line 930
    .line 931
    const/4 v12, 0x1

    .line 932
    goto :goto_19

    .line 933
    :cond_27
    const/4 v12, 0x0

    .line 934
    :goto_19
    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 935
    .line 936
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    move-result-object v1

    .line 940
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 941
    .line 942
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 943
    .line 944
    iget-object v1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 945
    .line 946
    if-eqz v1, :cond_29

    .line 947
    .line 948
    iget v1, v1, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenHiddenItems:I

    .line 949
    .line 950
    and-int/lit8 v1, v1, 0x4

    .line 951
    .line 952
    if-eqz v1, :cond_28

    .line 953
    .line 954
    const/4 v1, 0x0

    .line 955
    goto :goto_1a

    .line 956
    :cond_28
    const/4 v1, 0x1

    .line 957
    :goto_1a
    if-eqz v1, :cond_29

    .line 958
    .line 959
    const/4 v1, 0x1

    .line 960
    goto :goto_1b

    .line 961
    :cond_29
    const/4 v1, 0x0

    .line 962
    :goto_1b
    if-nez v1, :cond_2a

    .line 963
    .line 964
    const-string v1, "CarrierText is clear by knoxstate"

    .line 965
    .line 966
    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    .line 968
    .line 969
    goto :goto_1c

    .line 970
    :cond_2a
    move-object v15, v8

    .line 971
    :goto_1c
    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_DISPLAY_AP_NAME:Z

    .line 972
    .line 973
    if-eqz v1, :cond_2f

    .line 974
    .line 975
    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mWifiTextManager:Lcom/android/keyguard/WifiTextManager;

    .line 976
    .line 977
    iget-boolean v2, v1, Lcom/android/keyguard/WifiTextManager;->connected:Z

    .line 978
    .line 979
    iget-object v3, v1, Lcom/android/keyguard/WifiTextManager;->context:Landroid/content/Context;

    .line 980
    .line 981
    if-eqz v2, :cond_2c

    .line 982
    .line 983
    iget-object v1, v1, Lcom/android/keyguard/WifiTextManager;->ssid:Ljava/lang/String;

    .line 984
    .line 985
    if-nez v1, :cond_2b

    .line 986
    .line 987
    const v1, 0x7f13125d

    .line 988
    .line 989
    .line 990
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v1

    .line 994
    goto :goto_1d

    .line 995
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 996
    .line 997
    .line 998
    move-result v2

    .line 999
    const/4 v3, 0x1

    .line 1000
    if-le v2, v3, :cond_2e

    .line 1001
    .line 1002
    const/4 v4, 0x0

    .line 1003
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 1004
    .line 1005
    .line 1006
    move-result v4

    .line 1007
    const/16 v5, 0x22

    .line 1008
    .line 1009
    if-ne v4, v5, :cond_2e

    .line 1010
    .line 1011
    sub-int/2addr v2, v3

    .line 1012
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 1013
    .line 1014
    .line 1015
    move-result v4

    .line 1016
    if-ne v4, v5, :cond_2e

    .line 1017
    .line 1018
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    goto :goto_1d

    .line 1023
    :cond_2c
    if-eqz v12, :cond_2d

    .line 1024
    .line 1025
    const v1, 0x7f130867

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v1

    .line 1032
    goto :goto_1d

    .line 1033
    :cond_2d
    const v1, 0x7f130453

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v1

    .line 1040
    :cond_2e
    :goto_1d
    move-object v8, v1

    .line 1041
    goto :goto_1e

    .line 1042
    :cond_2f
    move-object v8, v15

    .line 1043
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1044
    .line 1045
    const-string/jumbo v2, "setText : "

    .line 1046
    .line 1047
    .line 1048
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v1

    .line 1058
    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    .line 1060
    .line 1061
    new-instance v1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;

    .line 1062
    .line 1063
    move-object/from16 v2, v18

    .line 1064
    .line 1065
    iget-object v7, v2, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->location:Ljava/lang/String;

    .line 1066
    .line 1067
    const/4 v3, 0x1

    .line 1068
    xor-int/2addr v3, v9

    .line 1069
    move-object v6, v1

    .line 1070
    move-object v9, v10

    .line 1071
    move v10, v3

    .line 1072
    invoke-direct/range {v6 .. v12}, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[IZ)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v2, v1}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logCallbackSentFromUpdate(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierTextManager;->postToCallback(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V

    .line 1079
    .line 1080
    .line 1081
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1082
    .line 1083
    .line 1084
    return-void
.end method
