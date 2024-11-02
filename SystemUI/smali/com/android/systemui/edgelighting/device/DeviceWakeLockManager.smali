.class public final Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static sInstance:Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;


# instance fields
.field public final mWakeLockMap:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->mWakeLockMap:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;
    .locals 2

    .line 1
    const-class v0, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->sInstance:Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->sInstance:Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->sInstance:Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method
