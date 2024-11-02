.class public abstract Lcom/samsung/android/knox/cmfa/AuthFactorService;
.super Landroid/app/Service;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;
    }
.end annotation


# static fields
.field public static final DETECT_DEATH_BINDER:Ljava/lang/String; = "detectDeathBinder"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mBinder:Lcom/samsung/android/knox/cmfa/IAuthFactorService$Stub;

.field public mBinderDeathReceiver:Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;

.field public mListener:Lcom/samsung/android/knox/cmfa/IAuthFactorListener;

.field public mScore:J

.field public mStarted:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;

    .line 2
    .line 3
    const-string v0, "AuthFactorService"

    .line 4
    .line 5
    sput-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->TAG:Ljava/lang/String;

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
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;-><init>(Lcom/samsung/android/knox/cmfa/AuthFactorService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mBinder:Lcom/samsung/android/knox/cmfa/IAuthFactorService$Stub;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getTrustScore()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mScore:J

    .line 2
    .line 3
    return-wide v0
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
    iget-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mBinderDeathReceiver:Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;

    .line 16
    .line 17
    iput-object p1, v0, Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

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
    sget-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->TAG:Ljava/lang/String;

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
    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mBinder:Lcom/samsung/android/knox/cmfa/IAuthFactorService$Stub;

    .line 35
    .line 36
    return-object p0
.end method

.method public final onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;-><init>(Lcom/samsung/android/knox/cmfa/AuthFactorService;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mBinderDeathReceiver:Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mListener:Lcom/samsung/android/knox/cmfa/IAuthFactorListener;

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    iput-wide v2, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mScore:J

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mStarted:Z

    .line 20
    .line 21
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

.method public abstract onFactorInit()V
.end method

.method public abstract onFactorStart(Ljava/util/Map;)V
.end method

.method public abstract onFactorStop()V
.end method

.method public final setTrustScore(J)Z
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mStarted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mScore:J

    .line 8
    .line 9
    const-wide/16 v0, 0x64

    .line 10
    .line 11
    cmp-long v2, p1, v0

    .line 12
    .line 13
    if-lez v2, :cond_1

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mScore:J

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    cmp-long p1, p1, v0

    .line 21
    .line 22
    if-gez p1, :cond_2

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mScore:J

    .line 25
    .line 26
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mListener:Lcom/samsung/android/knox/cmfa/IAuthFactorListener;

    .line 27
    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/IAuthFactorListener;->onStateUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception p0

    .line 35
    sget-object p1, Lcom/samsung/android/knox/cmfa/AuthFactorService;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 45
    return p0
.end method
