.class public Lcom/android/wm/shell/freeform/MinimizeContainerService;
.super Landroid/app/Service;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final mFreeformCallback:Lcom/android/wm/shell/freeform/MinimizeContainerService$1;

.field public final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Binder;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService;->mBinder:Landroid/os/IBinder;

    .line 17
    .line 18
    new-instance v0, Lcom/android/wm/shell/freeform/MinimizeContainerService$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/MinimizeContainerService$1;-><init>(Lcom/android/wm/shell/freeform/MinimizeContainerService;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService;->mFreeformCallback:Lcom/android/wm/shell/freeform/MinimizeContainerService$1;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    const-string p1, "FreeformContainer"

    .line 2
    .line 3
    const-string v0, "[MinimizeContainerService] onBind()"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService;->mFreeformCallback:Lcom/android/wm/shell/freeform/MinimizeContainerService$1;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 20
    .line 21
    const/16 v0, 0xb

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService;->mBinder:Landroid/os/IBinder;

    .line 27
    .line 28
    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    const-string v0, "FreeformContainer"

    .line 2
    .line 3
    const-string v1, "[MinimizeContainerService] onUnbind()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService;->mFreeformCallback:Lcom/android/wm/shell/freeform/MinimizeContainerService$1;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 20
    .line 21
    const/16 v1, 0xc

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    .line 24
    .line 25
    .line 26
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method
