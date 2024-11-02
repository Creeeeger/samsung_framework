.class public final Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;
.super Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;


# instance fields
.field public final mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field public final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcutTask;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const-class p1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 13
    .line 14
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->addListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final onFlashlightAvailabilityChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFlashlightChanged(Z)V
    .locals 3

    .line 1
    const-string v0, "onFlashlightChanged [enabled] "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v2, "PluginLockShortcutFlashLight"

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "isEnable"

    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "action"

    .line 31
    .line 32
    const-string v2, "get_lockstar_task_shortcut_state"

    .line 33
    .line 34
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "arg"

    .line 38
    .line 39
    const-string v2, "Flashlight"

    .line 40
    .line 41
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v1, "extras"

    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 50
    .line 51
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onEventReceived(Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final onFlashlightError()V
    .locals 0

    .line 1
    return-void
.end method
