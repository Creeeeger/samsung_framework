.class public Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;
.super Landroid/app/Service;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final TEST_MOCK_REMOTE_TRANSITION:Z


# instance fields
.field public mMessenger:Landroid/os/Messenger;

.field public mPendingMsg:Landroid/os/Message;

.field public mRecentTasksController:Lcom/android/wm/shell/recents/RecentTasksController;

.field public mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mTestRemoteTransition:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 2
    .line 3
    const-string/jumbo v0, "persist.mt.debug.mock_remote"

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput-boolean v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->TEST_MOCK_REMOTE_TRANSITION:Z

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->TEST_MOCK_REMOTE_TRANSITION:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mTestRemoteTransition:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$1;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final makePendingIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    const/high16 v3, 0xa000000

    .line 3
    .line 4
    const/4 v4, 0x0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 9
    .line 10
    :goto_0
    move-object v5, p2

    .line 11
    move-object v0, p0

    .line 12
    move-object v2, p1

    .line 13
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1
    const-class p1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

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
    const-class p1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 10
    .line 11
    invoke-static {p1, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance p1, Landroid/os/Messenger;

    .line 15
    .line 16
    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mMessenger:Landroid/os/Messenger;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method
