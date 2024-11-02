.class public final Lcom/android/wm/shell/freeform/MinimizeContainerService$1;
.super Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/MinimizeContainerService;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/MinimizeContainerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService$1;->this$0:Lcom/android/wm/shell/freeform/MinimizeContainerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMinimizeAnimationEnd(I)V
    .locals 2

    .line 1
    const-string v0, "[MinimizeContainerService] IFreeformCallback_onMinimizeAnimationEnd: taskId="

    .line 2
    .line 3
    const-string v1, "FreeformContainer"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService$1;->this$0:Lcom/android/wm/shell/freeform/MinimizeContainerService;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    const/16 v1, 0xf

    .line 18
    .line 19
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onMinimized(Landroid/content/ComponentName;IIIIZ)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[MinimizeContainerService] IFreeformCallback_onMinimized: taskId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", r="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "FreeformContainer"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-wide/16 v1, 0x80

    .line 33
    .line 34
    invoke-interface {v0, p1, v1, v2, p3}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService$1;->this$0:Lcom/android/wm/shell/freeform/MinimizeContainerService;

    .line 41
    .line 42
    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    new-instance v0, Lcom/android/wm/shell/freeform/MinimizeContainerItem;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    move-object v1, v0

    .line 52
    move-object v4, p1

    .line 53
    move v5, p2

    .line 54
    move v6, p3

    .line 55
    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/freeform/MinimizeContainerItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;IIZ)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 59
    .line 60
    const/16 p1, 0xd

    .line 61
    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    const/4 p1, -0x1

    .line 66
    if-ne p4, p1, :cond_0

    .line 67
    .line 68
    if-eq p5, p1, :cond_1

    .line 69
    .line 70
    :cond_0
    new-instance p1, Landroid/graphics/Point;

    .line 71
    .line 72
    invoke-direct {p1, p4, p5}, Landroid/graphics/Point;-><init>(II)V

    .line 73
    .line 74
    .line 75
    const/4 p2, 0x0

    .line 76
    const/16 p3, 0x25

    .line 77
    .line 78
    invoke-virtual {p0, p3, p6, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    .line 84
    .line 85
    :cond_1
    return-void

    .line 86
    :catch_0
    move-exception p0

    .line 87
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final onTaskMoveEnded(ILandroid/os/IRemoteCallback;)V
    .locals 2

    .line 1
    const-string v0, "[MinimizeContainerService] IFreeformCallback_onTaskMoveEnded: taskId="

    .line 2
    .line 3
    const-string v1, "FreeformContainer"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService$1;->this$0:Lcom/android/wm/shell/freeform/MinimizeContainerService;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    const/16 v1, 0x29

    .line 18
    .line 19
    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onTaskMoveStarted(ILandroid/graphics/Point;)V
    .locals 2

    .line 1
    const-string v0, "[MinimizeContainerService] IFreeformCallback_onTaskMoveStarted: taskId="

    .line 2
    .line 3
    const-string v1, "FreeformContainer"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService$1;->this$0:Lcom/android/wm/shell/freeform/MinimizeContainerService;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    const/16 v1, 0x28

    .line 18
    .line 19
    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onUnminimized(I)V
    .locals 2

    .line 1
    const-string v0, "[MinimizeContainerService] IFreeformCallback_onUnminimized: taskId="

    .line 2
    .line 3
    const-string v1, "FreeformContainer"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerService$1;->this$0:Lcom/android/wm/shell/freeform/MinimizeContainerService;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    const/16 v1, 0xe

    .line 18
    .line 19
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method
