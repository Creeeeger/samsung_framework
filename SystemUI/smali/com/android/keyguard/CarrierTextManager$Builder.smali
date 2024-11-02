.class public final Lcom/android/keyguard/CarrierTextManager$Builder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mCarrierTextUtil:Lcom/android/systemui/shade/carrier/CarrierTextUtil;

.field public final mContext:Landroid/content/Context;

.field public mDebugLocation:Ljava/lang/String;

.field public final mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLogger:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mSeparator:Ljava/lang/String;

.field public mShowAirplaneMode:Z

.field public mShowMissingSim:Z

.field public final mSubscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

.field public final mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWifiRepository:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;

.field public final mWifiTextManager:Lcom/android/keyguard/WifiTextManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/shade/carrier/CarrierTextUtil;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;Lcom/android/keyguard/logging/CarrierTextManagerLogger;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/keyguard/WifiTextManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string p1, " | "

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mSeparator:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mWifiRepository:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    iput-object p5, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    .line 15
    .line 16
    iput-object p6, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mCarrierTextUtil:Lcom/android/systemui/shade/carrier/CarrierTextUtil;

    .line 17
    .line 18
    iput-object p7, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 19
    .line 20
    iput-object p8, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    iput-object p9, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    iput-object p10, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 25
    .line 26
    iput-object p11, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mSubscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

    .line 27
    .line 28
    iput-object p12, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mLogger:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

    .line 29
    .line 30
    sget-boolean p1, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_DISPLAY_AP_NAME:Z

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    iput-object p14, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mWifiTextManager:Lcom/android/keyguard/WifiTextManager;

    .line 35
    .line 36
    :cond_0
    iput-object p13, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final build()Lcom/android/keyguard/CarrierTextManager;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mDebugLocation:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mLogger:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

    .line 6
    .line 7
    move-object/from16 v16, v2

    .line 8
    .line 9
    iput-object v1, v2, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->location:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Lcom/android/keyguard/CarrierTextManager;

    .line 12
    .line 13
    move-object v2, v1

    .line 14
    iget-object v3, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v4, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mSeparator:Ljava/lang/String;

    .line 17
    .line 18
    iget-boolean v5, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mShowAirplaneMode:Z

    .line 19
    .line 20
    iget-boolean v6, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mShowMissingSim:Z

    .line 21
    .line 22
    iget-object v7, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mWifiRepository:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;

    .line 23
    .line 24
    iget-object v8, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 25
    .line 26
    iget-object v9, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    .line 27
    .line 28
    iget-object v10, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mCarrierTextUtil:Lcom/android/systemui/shade/carrier/CarrierTextUtil;

    .line 29
    .line 30
    iget-object v11, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 31
    .line 32
    iget-object v12, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    iget-object v13, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 35
    .line 36
    iget-object v14, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 37
    .line 38
    iget-object v15, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mSubscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

    .line 39
    .line 40
    move-object/from16 v20, v1

    .line 41
    .line 42
    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 43
    .line 44
    move-object/from16 v17, v1

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/keyguard/CarrierTextManager$Builder;->mWifiTextManager:Lcom/android/keyguard/WifiTextManager;

    .line 47
    .line 48
    move-object/from16 v18, v0

    .line 49
    .line 50
    const/16 v19, 0x0

    .line 51
    .line 52
    invoke-direct/range {v2 .. v19}, Lcom/android/keyguard/CarrierTextManager;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZLcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/shade/carrier/CarrierTextUtil;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;Lcom/android/keyguard/logging/CarrierTextManagerLogger;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/keyguard/WifiTextManager;I)V

    .line 53
    .line 54
    .line 55
    return-object v20
.end method
