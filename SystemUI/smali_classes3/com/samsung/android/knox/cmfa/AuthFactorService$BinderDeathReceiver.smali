.class public final Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/cmfa/AuthFactorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinderDeathReceiver"
.end annotation


# instance fields
.field public mReceiver:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/cmfa/AuthFactorService;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/knox/cmfa/AuthFactorService;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;-><init>(Lcom/samsung/android/knox/cmfa/AuthFactorService;)V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Binder Death Detected!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final handleBinderDeath()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setReceiver(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$BinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

    .line 2
    .line 3
    return-void
.end method
