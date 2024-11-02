.class public final Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;
.super Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# instance fields
.field public final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const-class p1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 13
    .line 14
    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final onZenChanged(I)V
    .locals 3

    .line 1
    const-string/jumbo v0, "onZenChanged [zen] "

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v1, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v2, "PluginLockShortcutDnd"

    .line 12
    .line 13
    invoke-static {v2, p1, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 22
    .line 23
    check-cast v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 24
    .line 25
    iget v1, v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    .line 30
    move v0, v2

    .line 31
    :cond_0
    const-string v1, "isEnable"

    .line 32
    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "action"

    .line 42
    .line 43
    const-string v2, "get_lockstar_task_shortcut_state"

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "arg"

    .line 49
    .line 50
    const-string v2, "Dnd"

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v1, "extras"

    .line 56
    .line 57
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 61
    .line 62
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onEventReceived(Landroid/os/Bundle;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
