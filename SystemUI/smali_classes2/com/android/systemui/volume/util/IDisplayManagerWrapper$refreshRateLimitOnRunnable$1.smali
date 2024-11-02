.class public final Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOnRunnable$1;
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
    iput-object p1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOnRunnable$1;->this$0:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

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
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper$refreshRateLimitOnRunnable$1;->this$0:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->lock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string/jumbo v2, "refresh_rate_mode"

    .line 13
    .line 14
    .line 15
    const/4 v3, -0x2

    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eq v1, v4, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->iRefreshRateMinLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->iDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    const-string v1, "display"

    .line 36
    .line 37
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->iDisplayManager:Landroid/hardware/display/IDisplayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->refreshRateToken:Landroid/os/IBinder;

    .line 50
    .line 51
    const-string v3, "VolumePanelView"

    .line 52
    .line 53
    const/16 v4, 0x3c

    .line 54
    .line 55
    invoke-interface {v1, v2, v4, v3}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMinLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/4 v1, 0x0

    .line 63
    :goto_0
    iput-object v1, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->iRefreshRateMinLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 64
    .line 65
    const-string v1, "VolumePanelView"

    .line 66
    .line 67
    const-string v2, "enableRefreshRateMinLimit"

    .line 68
    .line 69
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/volume/util/IDisplayManagerWrapper;->iRefreshRateMinLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 77
    .line 78
    if-nez p0, :cond_3

    .line 79
    .line 80
    const-string p0, "VolumePanelView"

    .line 81
    .line 82
    const-string v1, "enableRefreshRateMinLimit failed"

    .line 83
    .line 84
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    monitor-exit v0

    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    monitor-exit v0

    .line 93
    throw p0
.end method
