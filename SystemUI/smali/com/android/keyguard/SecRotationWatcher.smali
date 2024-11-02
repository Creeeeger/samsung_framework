.class public final Lcom/android/keyguard/SecRotationWatcher;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentRotation:I

.field public final mHandler:Lcom/android/keyguard/SecRotationWatcher$2;

.field public final mListeners:Ljava/util/ArrayList;

.field public final mWatcher:Lcom/android/keyguard/SecRotationWatcher$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/keyguard/SecRotationWatcher;->mListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/android/keyguard/SecRotationWatcher$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/keyguard/SecRotationWatcher$1;-><init>(Lcom/android/keyguard/SecRotationWatcher;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/keyguard/SecRotationWatcher;->mWatcher:Lcom/android/keyguard/SecRotationWatcher$1;

    .line 17
    .line 18
    new-instance v0, Lcom/android/keyguard/SecRotationWatcher$2;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/SecRotationWatcher$2;-><init>(Lcom/android/keyguard/SecRotationWatcher;Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/keyguard/SecRotationWatcher;->mHandler:Lcom/android/keyguard/SecRotationWatcher$2;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/keyguard/SecRotationWatcher;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/util/function/IntConsumer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/SecRotationWatcher;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lcom/android/keyguard/SecRotationWatcher;->mCurrentRotation:I

    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 20
    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const-string p1, "SecRotationWatcher"

    .line 25
    .line 26
    :try_start_0
    const-string v0, "enable watchRotation"

    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/keyguard/SecRotationWatcher;->mWatcher:Lcom/android/keyguard/SecRotationWatcher$1;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/keyguard/SecRotationWatcher;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-interface {v0, v1, p0}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    const-string v0, "Failed to set rotation watcher"

    .line 49
    .line 50
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method public final removeCallback(Ljava/util/function/IntConsumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/SecRotationWatcher;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const-string p1, "SecRotationWatcher"

    .line 13
    .line 14
    :try_start_0
    const-string v0, "disable watchRotation"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object p0, p0, Lcom/android/keyguard/SecRotationWatcher;->mWatcher:Lcom/android/keyguard/SecRotationWatcher$1;

    .line 24
    .line 25
    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    const-string v0, "Failed to remove rotation watcher"

    .line 31
    .line 32
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    return-void
.end method
