.class Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1;
.super Landroid/window/IRemoteTransition$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;Ljava/util/concurrent/Executor;Landroid/app/IApplicationThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$runner:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;


# direct methods
.method public static synthetic $r8$lambda$CIhxtG26-IjKoYIDb_bD0EAbO2M(Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1;->lambda$startAnimation$0(Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$DhYKGF8L44il_GZfpJJwb_okWso(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1;->lambda$mergeAnimation$3(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$opgUtdb2WIfDCeVcUBBeh4gBRf8(Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1;->lambda$mergeAnimation$2(Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$yHHFGBInfE68TtzJYO318eEbUck(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1;->lambda$startAnimation$1(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;Ljava/util/concurrent/Executor;Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1;->val$executor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1;->val$runner:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static synthetic lambda$mergeAnimation$2(Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p0, v0, v0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    .line 5
    goto :goto_0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    const-string v0, "RemoteTransitionCompat"

    .line 8
    .line 9
    const-string v1, "Failed to call transition finished callback"

    .line 10
    .line 11
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method private static synthetic lambda$mergeAnimation$3(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-interface/range {p0 .. p5}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$startAnimation$0(Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p0, v0, v0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    .line 5
    goto :goto_0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    const-string v0, "RemoteTransitionCompat"

    .line 8
    .line 9
    const-string v1, "Failed to call transition finished callback"

    .line 10
    .line 11
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method private static synthetic lambda$startAnimation$1(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {v6, p5, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1$$ExternalSyntheticLambda0;-><init>(Landroid/window/IRemoteTransitionFinishedCallback;I)V

    .line 5
    .line 6
    .line 7
    iget-object p5, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1;->val$executor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1;->val$runner:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;

    .line 10
    .line 11
    new-instance p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1$$ExternalSyntheticLambda2;

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    move-object v2, p1

    .line 15
    move-object v3, p2

    .line 16
    move-object v4, p3

    .line 17
    move-object v5, p4

    .line 18
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1$$ExternalSyntheticLambda0;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p5, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 6

    .line 1
    new-instance v5, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v5, p4, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1$$ExternalSyntheticLambda0;-><init>(Landroid/window/IRemoteTransitionFinishedCallback;I)V

    .line 5
    .line 6
    .line 7
    iget-object p4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1;->val$executor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1;->val$runner:Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;

    .line 10
    .line 11
    new-instance p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    move-object v2, p1

    .line 15
    move-object v3, p2

    .line 16
    move-object v4, p3

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionRunner;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$1$$ExternalSyntheticLambda0;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p4, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
