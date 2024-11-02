.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final mLocationManager:Landroid/location/LocationManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;

    .line 7
    .line 8
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "location"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/location/LocationManager;

    .line 19
    .line 20
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public setLocationEnabledForUser(ZI)V
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
