.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;

    .line 7
    .line 8
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "sem_wifi"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 20
    .line 21
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 22
    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public isDualAPConfiguration()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public isWifiSharingLiteSupported()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isWifiSharingSupported()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SemWifiManagerWrapper;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingSupported()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
