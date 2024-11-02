.class public abstract Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;
.super Landroid/app/Service;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;
    }
.end annotation


# static fields
.field public static final DETECT_DEATH_BINDER:Ljava/lang/String; = "detectDeathBinder"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mBinder:Lcom/samsung/android/knox/ex/peripheral/IPeripheralPluginService$Stub;

.field public mBinderDeathReceiver:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    .line 2
    .line 3
    const-string v0, "PeripheralPluginService"

    .line 4
    .line 5
    sput-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->mBinder:Lcom/samsung/android/knox/ex/peripheral/IPeripheralPluginService$Stub;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract beep(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract clearMemory(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract connect(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract connectEx(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract disconnect(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract displayText(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract getAllState(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract getAvailablePeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract getConfiguration(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/ex/peripheral/IResultListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getConnectionProfile(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract getPairingBarcodeData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract getStoredData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract getSupportedPeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract isStarted()Z
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v0, "detectDeathBinder"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->mBinderDeathReceiver:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;

    .line 16
    .line 17
    iput-object p1, v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->mBinder:Lcom/samsung/android/knox/ex/peripheral/IPeripheralPluginService$Stub;

    .line 35
    .line 36
    return-object p0
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->mBinderDeathReceiver:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;

    .line 11
    .line 12
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract resetPeripheral(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract setConfiguration(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract setConnectionProfile(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract start(Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IEventListener;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract startAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract startBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract stop(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract stopAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract stopBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract triggerVendorCommand(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract updateFirmware(Ljava/lang/String;[BIILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract vibrate(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method
