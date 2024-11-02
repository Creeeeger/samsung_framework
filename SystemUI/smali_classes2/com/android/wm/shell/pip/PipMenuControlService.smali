.class public Lcom/android/wm/shell/pip/PipMenuControlService;
.super Landroid/app/Service;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mMessenger:Landroid/os/Messenger;

.field public mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/pip/PipMenuControlService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    const-class p1, Lcom/android/wm/shell/pip/PipMenuControlService;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-class p1, Lcom/android/wm/shell/pip/PipMenuControlService;

    .line 10
    .line 11
    invoke-static {p1, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const-string p1, "PipMenuControlService"

    .line 15
    .line 16
    const-string v0, "onBind"

    .line 17
    .line 18
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMenuControlService;->mMessenger:Landroid/os/Messenger;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final onCreate()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Messenger;

    .line 2
    .line 3
    new-instance v1, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/pip/PipMenuControlService$MessageHandler;-><init>(Lcom/android/wm/shell/pip/PipMenuControlService;I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/wm/shell/pip/PipMenuControlService;->mMessenger:Landroid/os/Messenger;

    .line 13
    .line 14
    return-void
.end method
