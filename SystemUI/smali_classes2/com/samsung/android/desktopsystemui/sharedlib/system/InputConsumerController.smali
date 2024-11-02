.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputListener;,
        Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$RegistrationListener;,
        Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[DS]InputConsumerController"


# instance fields
.field private mInputEventReceiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

.field private mListener:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputListener;

.field private final mName:Ljava/lang/String;

.field private mRegistrationListener:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$RegistrationListener;

.field private final mToken:Landroid/os/IBinder;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/view/IWindowManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    .line 5
    .line 6
    new-instance p1, Landroid/os/Binder;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mToken:Landroid/os/IBinder;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mName:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;)Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mListener:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getPipInputConsumer()Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;

    .line 2
    .line 3
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "pip_input_consumer"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;-><init>(Landroid/view/IWindowManager;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static getRecentsAnimationInputConsumer()Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;

    .line 2
    .line 3
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "recents_animation_input_consumer"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;-><init>(Landroid/view/IWindowManager;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p2}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    sget-object v1, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "registered="

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mInputEventReceiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    :goto_0
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public isRegistered()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mInputEventReceiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public registerInputConsumer()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->registerInputConsumer(Z)V

    return-void
.end method

.method public registerInputConsumer(Z)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mInputEventReceiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;I)Z

    .line 5
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mName:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1, v0}, Landroid/view/IWindowManager;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    sget-object v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create input consumer"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 7
    sget-object v3, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "registerInputConsumer: IllegalStateException : "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;I)Z

    .line 9
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mName:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1, v0}, Landroid/view/IWindowManager;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .line 10
    sget-object v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create input consumer in 2nd attempt "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v1

    .line 11
    sget-object v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerInputConsumer: IllegalStateException in 2nd attempt : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :goto_0
    new-instance v1, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 13
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    :goto_1
    invoke-direct {v1, p0, v0, v2, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mInputEventReceiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

    .line 14
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mRegistrationListener:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$RegistrationListener;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 15
    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    :cond_1
    return-void
.end method

.method public setInputListener(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mListener:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputListener;

    .line 2
    .line 3
    return-void
.end method

.method public setRegistrationListener(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$RegistrationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mRegistrationListener:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$RegistrationListener;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mInputEventReceiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    invoke-interface {p1, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public unregisterInputConsumer()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mInputEventReceiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mWindowManager:Landroid/view/IWindowManager;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {v1, v2, v0}, Landroid/view/IWindowManager;->destroyInputConsumer(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v1

    .line 15
    sget-object v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "Failed to destroy input consumer"

    .line 18
    .line 19
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mInputEventReceiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/BatchedInputEventReceiver;->dispose()V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mInputEventReceiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$InputEventReceiver;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController;->mRegistrationListener:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$RegistrationListener;

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-interface {p0, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputConsumerController$RegistrationListener;->onRegistrationChanged(Z)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
