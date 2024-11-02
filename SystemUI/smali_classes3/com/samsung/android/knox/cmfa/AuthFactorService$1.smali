.class public final Lcom/samsung/android/knox/cmfa/AuthFactorService$1;
.super Lcom/samsung/android/knox/cmfa/IAuthFactorService$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/cmfa/AuthFactorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/cmfa/AuthFactorService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/knox/cmfa/IAuthFactorService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getTrustScore()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mScore:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public final getType()Lcom/samsung/android/knox/cmfa/AuthFactorType;
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/knox/cmfa/AuthFactorType;->TRUSTED_SERVICE:Lcom/samsung/android/knox/cmfa/AuthFactorType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final init(Lcom/samsung/android/knox/cmfa/IResultListener;)I
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$1;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$1;-><init>(Lcom/samsung/android/knox/cmfa/AuthFactorService$1;Lcom/samsung/android/knox/cmfa/IResultListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final isStarted()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mStarted:Z

    .line 4
    .line 5
    return p0
.end method

.method public final start(Ljava/util/Map;Lcom/samsung/android/knox/cmfa/IAuthFactorListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "start"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    .line 9
    .line 10
    iput-object p2, v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mListener:Lcom/samsung/android/knox/cmfa/IAuthFactorListener;

    .line 11
    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    iput-wide v1, v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mScore:J

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    iput-boolean p2, v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mStarted:Z

    .line 18
    .line 19
    new-instance p2, Landroid/os/Handler;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$2;

    .line 31
    .line 32
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$2;-><init>(Lcom/samsung/android/knox/cmfa/AuthFactorService$1;Ljava/util/Map;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final stop()I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "stop"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mListener:Lcom/samsung/android/knox/cmfa/IAuthFactorListener;

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    iput-wide v1, v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mScore:J

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Lcom/samsung/android/knox/cmfa/AuthFactorService;->mStarted:Z

    .line 19
    .line 20
    new-instance v0, Landroid/os/Handler;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/samsung/android/knox/cmfa/AuthFactorService$1;->this$0:Lcom/samsung/android/knox/cmfa/AuthFactorService;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$3;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lcom/samsung/android/knox/cmfa/AuthFactorService$1$3;-><init>(Lcom/samsung/android/knox/cmfa/AuthFactorService$1;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return v1
.end method
