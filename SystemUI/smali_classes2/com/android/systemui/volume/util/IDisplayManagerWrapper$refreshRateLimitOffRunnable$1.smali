.class public final Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOffRunnable$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/IDisplayManagerWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOffRunnable$1;->this$0:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOffRunnable$1;->this$0:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->lock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->iRefreshRateMinLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    :try_start_1
    invoke-interface {v1}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    .line 11
    .line 12
    .line 13
    const-string v1, "VolumePanelView"

    .line 14
    .line 15
    const-string v2, "disableRefreshRateMinLimit"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :goto_0
    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->iRefreshRateMinLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    .line 30
    :cond_0
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0

    .line 34
    throw p0
.end method
