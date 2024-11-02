.class public Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;
.super Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public final deathRecipient:Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor$1;

.field public service:Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const/4 v2, 0x1

    .line 2
    const/4 v3, 0x1

    .line 3
    const-wide/16 v4, 0x3c

    .line 4
    .line 5
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 8
    .line 9
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 10
    .line 11
    .line 12
    move-object v0, p0

    .line 13
    move-object v1, p1

    .line 14
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;-><init>(Landroid/content/Context;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor$1;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;->deathRecipient:Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor$1;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;->context:Landroid/content/Context;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final getServiceIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "android.intellivoiceservice.SmartReplyService"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "com.samsung.android.intellivoiceservice"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    const-string p1, "SmartReplyServiceExecutor"

    .line 2
    .line 3
    const-string v0, "onServiceConnected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub;->$r8$clinit:I

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "com.samsung.android.sivs.ai.sdkcommon.language.ISmartReplyService"

    .line 15
    .line 16
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    instance-of v1, v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    move-object p2, v0

    .line 27
    check-cast p2, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$Proxy;

    .line 31
    .line 32
    invoke-direct {v0, p2}, Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 33
    .line 34
    .line 35
    move-object p2, v0

    .line 36
    :goto_0
    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;->service:Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService;

    .line 37
    .line 38
    :try_start_0
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;->deathRecipient:Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor$1;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    const-string p2, "RemoteException"

    .line 51
    .line 52
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    :goto_1
    return-void
.end method

.method public final onDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;->service:Lcom/samsung/android/sivs/ai/sdkcommon/language/ISmartReplyService;

    .line 3
    .line 4
    return-void
.end method
