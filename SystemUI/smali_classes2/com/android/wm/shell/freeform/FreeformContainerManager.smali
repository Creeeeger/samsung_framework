.class public final Lcom/android/wm/shell/freeform/FreeformContainerManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static sFreeformContainerManager:Lcom/android/wm/shell/freeform/FreeformContainerManager;


# instance fields
.field public mConfiguration:Landroid/content/res/Configuration;

.field public final mContext:Landroid/content/Context;

.field public final mFreeformContainerFilter:Landroid/content/IntentFilter;

.field public final mFreeformContainerReceiver:Lcom/android/wm/shell/freeform/FreeformContainerManager$2;

.field public final mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

.field public mRotation:I

.field public final mRotationWatcher:Lcom/android/wm/shell/freeform/FreeformContainerManager$1;

.field public final mThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerManager$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerManager;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mRotationWatcher:Lcom/android/wm/shell/freeform/FreeformContainerManager$1;

    .line 10
    .line 11
    new-instance v0, Landroid/content/IntentFilter;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mFreeformContainerFilter:Landroid/content/IntentFilter;

    .line 17
    .line 18
    new-instance v1, Lcom/android/wm/shell/freeform/FreeformContainerManager$2;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$2;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerManager;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mFreeformContainerReceiver:Lcom/android/wm/shell/freeform/FreeformContainerManager$2;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    new-instance p1, Landroid/os/HandlerThread;

    .line 32
    .line 33
    const-string v1, "FreeformContainerHandlerThread"

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {p1, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mThread:Landroid/os/HandlerThread;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerManager;Landroid/os/Looper;I)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 54
    .line 55
    const-string p0, "android.intent.action.CONFIGURATION_CHANGED"

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string p0, "android.intent.action.DATE_CHANGED"

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string p0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string p0, "android.intent.action.USER_SWITCHED"

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string p0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string p0, "android.intent.action.SCREEN_OFF"

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->sFreeformContainerManager:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->sFreeformContainerManager:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->sFreeformContainerManager:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->sFreeformContainerManager:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 25
    .line 26
    return-object p0
.end method

.method public static getStableInsets(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1, p0}, Landroid/view/IWindowManager;->getStableInsets(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v0, "FreeformContainer"

    .line 12
    .line 13
    const-string v1, "Failed to get stable insets"

    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mThread:Landroid/os/HandlerThread;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
