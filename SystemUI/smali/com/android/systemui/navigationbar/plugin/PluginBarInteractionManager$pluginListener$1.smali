.class public final Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;->this$0:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    .line 2
    .line 3
    const-string p2, "PluginBarInteractionManager"

    .line 4
    .line 5
    const-string v0, "Plugin connected"

    .line 6
    .line 7
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;->this$0:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->connect()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navDependencies:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 36
    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Ljava/lang/Integer;

    .line 44
    .line 45
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 56
    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->getPluginBar()Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-interface {v0, p2}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->onAttachedToWindow(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_TASKBAR:Z

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->mainContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const-class p2, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 82
    .line 83
    invoke-virtual {v0, p2, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 88
    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    iget-boolean p2, p1, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mInitialized:Z

    .line 92
    .line 93
    if-eqz p2, :cond_3

    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    .line 96
    .line 97
    if-eqz p0, :cond_3

    .line 98
    .line 99
    iget-object p1, p1, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mPluginTaskBar:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;

    .line 100
    .line 101
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->onAttachedToWindow(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    return-void
.end method

.method public final onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    .line 2
    .line 3
    const-string p1, "PluginBarInteractionManager"

    .line 4
    .line 5
    const-string p2, "Plugin disconnected"

    .line 6
    .line 7
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;->this$0:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->disconnect()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    .line 21
    .line 22
    return-void
.end method

.method public final onPluginLoadFailed(I)V
    .locals 1

    .line 1
    const-string p1, "PluginBarInteractionManager"

    .line 2
    .line 3
    const-string v0, "Plugin load failed"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;->this$0:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->mainContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string/jumbo p1, "policy_control"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "null"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
