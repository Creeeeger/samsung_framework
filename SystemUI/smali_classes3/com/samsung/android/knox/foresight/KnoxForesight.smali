.class public final Lcom/samsung/android/knox/foresight/KnoxForesight;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ERROR_DOWNLOAD:Ljava/lang/String; = "ERROR_DOWNLOAD"

.field public static final ERROR_INSTALL:Ljava/lang/String; = "ERROR_INSTALL"

.field public static final ERROR_VERSION:Ljava/lang/String; = "ERROR_VERSION"

.field public static final SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static commandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public FS_APP_NAME:Ljava/lang/String;

.field public TAG:Ljava/lang/String;

.field public connection:Landroid/content/ServiceConnection;

.field public eventReceiver:Landroid/content/ComponentName;

.field public fsEventReceiver:Landroid/content/BroadcastReceiver;

.field public fsReturnReceiver:Landroid/content/BroadcastReceiver;

.field public iBinder:Lcom/samsung/android/knox/foresight/framework/system/IKFCommnadService;

.field public kfCallback:Lcom/samsung/android/knox/foresight/KnoxForesightCallback;

.field public mContext:Landroid/content/Context;

.field public packagemanager:Landroid/content/pm/PackageManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/foresight/KnoxForesight;->commandList:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/foresight/KnoxForesightCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/knox/foresight/KnoxForesight;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/foresight/KnoxForesightCallback;Landroid/content/ComponentName;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/foresight/KnoxForesightCallback;Landroid/content/ComponentName;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KnoxForesight"

    .line 3
    iput-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    const-string v0, "com.samsung.android.knox.foresight"

    .line 4
    iput-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->FS_APP_NAME:Ljava/lang/String;

    .line 5
    new-instance v1, Lcom/samsung/android/knox/foresight/KnoxForesight$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/foresight/KnoxForesight$1;-><init>(Lcom/samsung/android/knox/foresight/KnoxForesight;)V

    iput-object v1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->connection:Landroid/content/ServiceConnection;

    .line 6
    new-instance v1, Lcom/samsung/android/knox/foresight/KnoxForesight$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/foresight/KnoxForesight$2;-><init>(Lcom/samsung/android/knox/foresight/KnoxForesight;)V

    iput-object v1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->fsReturnReceiver:Landroid/content/BroadcastReceiver;

    .line 7
    new-instance v1, Lcom/samsung/android/knox/foresight/KnoxForesight$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/foresight/KnoxForesight$3;-><init>(Lcom/samsung/android/knox/foresight/KnoxForesight;)V

    iput-object v1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->fsEventReceiver:Landroid/content/BroadcastReceiver;

    .line 8
    iput-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->mContext:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->kfCallback:Lcom/samsung/android/knox/foresight/KnoxForesightCallback;

    .line 10
    iput-object p3, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->eventReceiver:Landroid/content/ComponentName;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->packagemanager:Landroid/content/pm/PackageManager;

    .line 12
    iget-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->fsReturnReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.knox.containercore.action.FORESIGHT_RETURN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 13
    iget-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->fsEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.knox.containercore.action.FORESIGHT_EVENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 14
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.foresight.COMMAND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "eventReceiver"

    .line 15
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    iget-object p2, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->connection:Landroid/content/ServiceConnection;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p0, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public final notifyCallbacks(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "notifyt : "

    .line 4
    .line 5
    invoke-static {v1, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->kfCallback:Lcom/samsung/android/knox/foresight/KnoxForesightCallback;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/foresight/KnoxForesightCallback;->notify(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final sendCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/foresight/KnoxForesight;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendCommand. received msg is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callback? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->packagemanager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    move v2, v1

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    iget-object v3, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->FS_APP_NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 6
    sget-object v0, Lcom/samsung/android/knox/foresight/KnoxForesight;->commandList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object p2, Lcom/samsung/android/knox/foresight/KnoxForesight;->commandList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    const-string p2, "Requested app donwload"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.knox.containercore.action.FORESIGHT_COMMAND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.samsung.android.knox.containercore"

    const-string v0, "com.samsung.android.knox.containercore.KnoxForesightCommandReceiver"

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->mContext:Landroid/content/Context;

    const-string p2, "persona"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 13
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->sendKnoxForesightBroadcast(Landroid/content/Intent;)Z

    const-string p0, "app_download"

    return-object p0

    :catchall_0
    move-exception p0

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 15
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send command.... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->iBinder:Lcom/samsung/android/knox/foresight/framework/system/IKFCommnadService;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/foresight/framework/system/IKFCommnadService;->SendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p2, :cond_3

    .line 17
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.containercore.action.FORESIGHT_RETURN"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "error"

    .line 18
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->fsReturnReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    return-object p1

    :catch_0
    move-exception p0

    .line 20
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final sendCommandAsync(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "sendCommandAsync. msg : "

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/foresight/KnoxForesight;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v2, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, " / This message will be forwarded to the callback."

    .line 19
    .line 20
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :catch_0
    move-exception p1

    .line 32
    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "sendCommandAsync. error"

    .line 35
    .line 36
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public final sendLastCommand()V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/knox/foresight/KnoxForesight;->commandList:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/foresight/KnoxForesight;->commandList:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v5, "sendLastCommand.... "

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/foresight/KnoxForesight;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    new-instance p0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    sput-object p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->commandList:Ljava/util/ArrayList;

    .line 56
    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p0
.end method
