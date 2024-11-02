.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;

    .line 7
    .line 8
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "connectivity"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 19
    .line 20
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public setAirplaneMode(Z)V
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/ConnectivityManagerWrapper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
