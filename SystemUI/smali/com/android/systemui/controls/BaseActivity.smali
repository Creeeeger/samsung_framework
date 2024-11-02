.class public abstract Lcom/android/systemui/controls/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiver:Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;

.field public final controller:Lcom/android/systemui/controls/controller/ControlsController;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/controls/BaseActivity;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/controls/BaseActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/controls/BaseActivity;->executor:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    const-string p1, "BaseActivity"

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance p1, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;-><init>(Lcom/android/systemui/controls/BaseActivity;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity;->broadcastReceiver:Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;

    .line 22
    .line 23
    new-instance p1, Lcom/android/systemui/controls/BaseActivity$userTrackerCallback$1;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/BaseActivity$userTrackerCallback$1;-><init>(Lcom/android/systemui/controls/BaseActivity;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/BaseActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/BaseActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance v2, Landroid/content/IntentFilter;

    .line 5
    .line 6
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/controls/BaseActivity;->getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/systemui/controls/BaseActivity;->broadcastReceiver:Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/16 v7, 0x3c

    .line 30
    .line 31
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/systemui/controls/BaseActivity;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/controls/BaseActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 37
    .line 38
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/controls/BaseActivity;->executor:Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/BaseActivity;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/controls/BaseActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 4
    .line 5
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/BaseActivity;->getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/controls/BaseActivity;->broadcastReceiver:Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/BaseActivity;->getTAG()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "broadcastReceiver not registered"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onHomeKeyPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/BaseActivity;->getTAG()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "onHomeKeyPressed"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onRecentAppsKeyPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/BaseActivity;->getTAG()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "onRecentAppsKeyPressed"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method
