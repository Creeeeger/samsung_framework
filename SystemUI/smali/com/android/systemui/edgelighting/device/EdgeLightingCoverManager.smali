.class public final Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG:Z

.field public static sInstance:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;


# instance fields
.field public final mCoverStateListeners:Ljava/util/ArrayList;

.field public mCoverType:I

.field public mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field public mSCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;

.field public mSwitchState:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->DEBUG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverStateListener:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverStateListeners:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSwitchState:Z

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    iput v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverType:I

    .line 19
    .line 20
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;
    .locals 2

    .line 1
    const-class v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->sInstance:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v1, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->sInstance:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0

    .line 20
    throw v1
.end method
