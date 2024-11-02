.class public final Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;


# instance fields
.field public final buttonDispatcherProxy:Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;

.field public iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

.field public isKeyguardShowing:Z

.field public final keyguardCallback:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar$keyguardCallback$1;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mainContext:Landroid/content/Context;

.field public final mainDisplayId:I

.field public final navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final pluginBundle:Landroid/os/Bundle;

.field public final rotationLockContainer:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field public taskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Context;->getDisplayId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainDisplayId:I

    .line 13
    .line 14
    new-instance v1, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->pluginBundle:Landroid/os/Bundle;

    .line 20
    .line 21
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 28
    .line 29
    new-instance p1, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;

    .line 30
    .line 31
    invoke-direct {p1, p2, v1}, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->buttonDispatcherProxy:Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;

    .line 35
    .line 36
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 45
    .line 46
    const-class p1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->rotationLockContainer:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 55
    .line 56
    new-instance p1, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar$keyguardCallback$1;

    .line 57
    .line 58
    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar$keyguardCallback$1;-><init>(Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->keyguardCallback:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar$keyguardCallback$1;

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final forceSetBackGesture(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/android/systemui/shared/system/QuickStepContract;->SYSUI_FORCE_SET_BACK_GESTURE_BY_SPLUGIN:Z

    .line 2
    .line 3
    return-void
.end method

.method public final getBarDisplayId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainDisplayId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getBarLayoutParamsProvider()Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainDisplayId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getProvider(II)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getButtonDispatcherProxy()Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->buttonDispatcherProxy:Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDefaultColorProvider()Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainDisplayId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getProvider(II)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconTheme;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public final getDefaultLayoutProviderContainer()Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainDisplayId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getProvider(II)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getDisabledFlags()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->taskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mDisabledFlags:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final getFeatureChecker()Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/navigationbar/plugin/BasicRuneFeatureChecker;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/plugin/BasicRuneFeatureChecker;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final getNavBarStoreAdapter()Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->Companion:Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$Companion;

    .line 9
    .line 10
    new-instance v1, Lcom/android/systemui/basic/util/LogWrapper;

    .line 11
    .line 12
    sget-object v2, Lcom/android/systemui/basic/util/ModuleType;->NAVBAR:Lcom/android/systemui/basic/util/ModuleType;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/basic/util/LogWrapper;-><init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->INSTANCE:Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;

    .line 26
    .line 27
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/basic/util/LogWrapper;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->INSTANCE:Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;

    .line 31
    .line 32
    :cond_0
    return-object v0
.end method

.method public final getNavigationBarContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTaskStackAdapter()Lcom/samsung/systemui/splugins/navigationbar/TaskStackAdapterBase;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final isCoverDisplayNavBarEnabled()Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar$DefaultImpls;->isCoverDisplayNavBarEnabled(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final isCoverLargeScreenTaskEnabled()Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar$DefaultImpls;->isCoverLargeScreenTaskEnabled(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final isKeyguardShowing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->isKeyguardShowing:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isTaskbarEnabled()Z
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->$r8$clinit:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isTaskBarEnabled(Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final notifyForceImmersiveStateChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->updatePluginBundle()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final parseAndUpdateBundle()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isBottomGestureMode(Z)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v4, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 16
    .line 17
    iget-object v4, v4, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 18
    .line 19
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v5, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 23
    .line 24
    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isNavBarButtonOrderDefault()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    xor-int/2addr v5, v2

    .line 29
    invoke-interface {v4, v1, v5}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getGesturalLayout(ZZ)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v4, "getGesturalLayout"

    .line 34
    .line 35
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->getDefaultLayout()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_0
    const-string v0, ";"

    .line 47
    .line 48
    filled-new-array {v0}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v4, 0x3

    .line 53
    const/4 v5, 0x2

    .line 54
    invoke-static {v1, v0, v4, v5}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eq v1, v4, :cond_1

    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/CharSequence;

    .line 70
    .line 71
    const-string v4, ","

    .line 72
    .line 73
    filled-new-array {v4}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    const/4 v7, 0x6

    .line 78
    invoke-static {v1, v6, v3, v7}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    check-cast v6, Ljava/lang/CharSequence;

    .line 87
    .line 88
    filled-new-array {v4}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-static {v6, v8, v3, v7}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Ljava/lang/CharSequence;

    .line 101
    .line 102
    filled-new-array {v4}, [Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-static {v0, v4, v3, v7}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v4, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->pluginBundle:Landroid/os/Bundle;

    .line 116
    .line 117
    const-string/jumbo v5, "order"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 121
    .line 122
    .line 123
    const-string/jumbo v4, "pin"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    .line 128
    .line 129
    invoke-static {v6, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    move v1, v3

    .line 144
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-eqz v6, :cond_8

    .line 149
    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    check-cast v6, Ljava/lang/String;

    .line 155
    .line 156
    const-string/jumbo v8, "recent"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    if-nez v8, :cond_6

    .line 164
    .line 165
    const-string v8, "home"

    .line 166
    .line 167
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    if-nez v8, :cond_6

    .line 172
    .line 173
    const-string v8, "back"

    .line 174
    .line 175
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    if-eqz v8, :cond_3

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_3
    sget-object v8, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;

    .line 183
    .line 184
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    sget-object v8, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navkey:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    if-eqz v8, :cond_5

    .line 194
    .line 195
    const-string v8, "("

    .line 196
    .line 197
    invoke-static {v6, v8, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    if-nez v9, :cond_4

    .line 202
    .line 203
    const-string v6, "1"

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_4
    invoke-static {v6, v8, v3, v3, v7}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    add-int/2addr v8, v2

    .line 211
    const-string v9, ":"

    .line 212
    .line 213
    invoke-static {v6, v9, v3, v3, v7}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    :goto_2
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    if-eqz v8, :cond_7

    .line 226
    .line 227
    invoke-virtual {v8, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_5
    sget-object v8, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->pin:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    if-eqz v6, :cond_2

    .line 238
    .line 239
    invoke-virtual {p0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_6
    :goto_3
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    if-eqz v8, :cond_7

    .line 248
    .line 249
    invoke-virtual {v8, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_8
    return-void
.end method

.method public final registerKeyguardStateCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->keyguardCallback:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar$keyguardCallback$1;

    .line 6
    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final resetScheduleAutoHide()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setBarLayoutParamsProvider(Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainDisplayId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->setProvider(IILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setColorProvider(Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;Z)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainDisplayId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->setProvider(IILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setDefaultBarLayoutParamsProvider()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainDisplayId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->setProvider(IILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->setPreloadedIconSet(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->taskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->updateTaskbarButtonIconsAndHints()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->updatePluginBundle()V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public final setForceShowNavigationBarFlag(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setIconThemeAlpha(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->pluginBundle:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v1, "alpha"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->updatePluginBundle()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final setLayoutProviderContainer(Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainDisplayId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 4
    .line 5
    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->setProvider(IILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->parseAndUpdateBundle()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setRotationLockAtAngle(ZI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->rotationLockContainer:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p2, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedAtAngle(IZ)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setRotationLocked(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->rotationLockContainer:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method public final unregisterKeyguardStateCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->keyguardCallback:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar$keyguardCallback$1;

    .line 6
    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final updateActiveIndicatorSpringParams(FF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar$DefaultImpls;->updateActiveIndicatorSpringParams(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;FF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final updateBackPanelColor(IIII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar$DefaultImpls;->updateBackPanelColor(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final updateIconsAndHints(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar$DefaultImpls;->updateIconsAndHints(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final updateOpaqueColor(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updatePluginBundle()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v15, Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v10, 0x0

    .line 14
    const/4 v11, 0x0

    .line 15
    const/4 v12, 0x0

    .line 16
    const/4 v13, 0x0

    .line 17
    const/16 v14, 0xfff

    .line 18
    .line 19
    const/16 v16, 0x0

    .line 20
    .line 21
    move-object v1, v15

    .line 22
    move-object v0, v15

    .line 23
    move-object/from16 v15, v16

    .line 24
    .line 25
    invoke-direct/range {v1 .. v15}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;-><init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_UPDATE_SPLUGIN_BUNDLE:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    .line 29
    .line 30
    iput-object v1, v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    .line 31
    .line 32
    move-object/from16 v1, p0

    .line 33
    .line 34
    iget-object v2, v1, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->pluginBundle:Landroid/os/Bundle;

    .line 35
    .line 36
    iput-object v2, v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->pluginBundle:Landroid/os/Bundle;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->taskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->handleNavigationBarEvent(Lcom/android/systemui/shared/navigationbar/NavBarEvents;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method
