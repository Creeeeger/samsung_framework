.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final TAG:Ljava/lang/String; = "[DSU]TelephoneManagerWrapper"

.field private static final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private static final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;

    .line 7
    .line 8
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "phone"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 20
    .line 21
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 22
    .line 23
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 34
    .line 35
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 36
    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p0, -0x1

    .line 5
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    :cond_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-string v1, "[DSU]TelephoneManagerWrapper"

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    :try_start_0
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "Failed to getActiveSubscriptionInfoList: subscriptionId="

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    :goto_0
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Landroid/telephony/SubscriptionInfo;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    :cond_1
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    :try_start_1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_1
    move-exception v0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v3, "Failed to createForSubscriptionId: subscriptionId="

    .line 87
    .line 88
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public getPhoneCount()I
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public in_ecm_mode()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->semIsInEmergencyCallbackMode()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setDataEnabled(Z)V
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
