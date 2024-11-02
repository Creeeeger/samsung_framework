.class public final Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;


# instance fields
.field public final FORCE_SHOW_NAVIGATION_BAR:I

.field public final buttonDispatcher:Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;

.field public final context:Landroid/content/Context;

.field public final displayId:I

.field public final featureChecker:Lcom/android/systemui/navigationbar/plugin/BasicRuneFeatureChecker;

.field public final keyguardCallback:Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar$keyguardCallback$1;

.field public keyguardShowing:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

.field public final taskStackAdapter:Lcom/android/systemui/navigationbar/plugin/TaskStackAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->buttonDispatcher:Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->context:Landroid/content/Context;

    .line 11
    .line 12
    new-instance p1, Lcom/android/systemui/navigationbar/plugin/BasicRuneFeatureChecker;

    .line 13
    .line 14
    invoke-direct {p1}, Lcom/android/systemui/navigationbar/plugin/BasicRuneFeatureChecker;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->featureChecker:Lcom/android/systemui/navigationbar/plugin/BasicRuneFeatureChecker;

    .line 18
    .line 19
    new-instance p1, Lcom/android/systemui/navigationbar/plugin/TaskStackAdapter;

    .line 20
    .line 21
    invoke-direct {p1}, Lcom/android/systemui/navigationbar/plugin/TaskStackAdapter;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->taskStackAdapter:Lcom/android/systemui/navigationbar/plugin/TaskStackAdapter;

    .line 25
    .line 26
    const/high16 p1, 0x800000

    .line 27
    .line 28
    iput p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->FORCE_SHOW_NAVIGATION_BAR:I

    .line 29
    .line 30
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 39
    .line 40
    new-instance p1, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar$keyguardCallback$1;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar$keyguardCallback$1;-><init>(Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->keyguardCallback:Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar$keyguardCallback$1;

    .line 46
    .line 47
    invoke-virtual {p4}, Landroid/content/Context;->getDisplayId()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->displayId:I

    .line 52
    .line 53
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
    iget p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->displayId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getBarLayoutParamsProvider()Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->displayId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

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
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->buttonDispatcher:Lcom/android/systemui/navigationbar/plugin/ButtonDispatcherProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDefaultColorProvider()Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 3
    .line 4
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getProvider(II)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    .line 11
    .line 12
    return-object p0
.end method

.method public final getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getDefaultLayoutProviderContainer()Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->displayId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

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
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 11
    .line 12
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->disable1:I

    .line 13
    .line 14
    return p0
.end method

.method public final getFeatureChecker()Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->featureChecker:Lcom/android/systemui/navigationbar/plugin/BasicRuneFeatureChecker;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNavBarStoreAdapter()Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

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
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTaskStackAdapter()Lcom/samsung/systemui/splugins/navigationbar/TaskStackAdapterBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->taskStackAdapter:Lcom/android/systemui/navigationbar/plugin/TaskStackAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isCoverDisplayNavBarEnabled()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 3
    .line 4
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isCoverDisplayNavBarEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final isCoverLargeScreenTaskEnabled()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 3
    .line 4
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isLargeCoverTaskEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final isKeyguardShowing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->keyguardShowing:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isTaskbarEnabled()Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar$DefaultImpls;->isTaskbarEnabled(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final notifyForceImmersiveStateChanged()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar$DefaultImpls;->notifyForceImmersiveStateChanged(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final registerKeyguardStateCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->keyguardCallback:Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar$keyguardCallback$1;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 4
    .line 5
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->displayId:I

    .line 8
    .line 9
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string v0, "NavigationBar"

    .line 19
    .line 20
    const-string/jumbo v1, "resetAutoHide()"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final setBarLayoutParamsProvider(Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->displayId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

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
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 3
    .line 4
    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 5
    .line 6
    invoke-virtual {v1, v0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->setProvider(IILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavigationBarColor()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final setDefaultBarLayoutParamsProvider()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->displayId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

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
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIconsAndHints()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setForceShowNavigationBarFlag(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/view/WindowManager$LayoutParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    iget p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->FORCE_SHOW_NAVIGATION_BAR:I

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    :try_start_1
    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 24
    .line 25
    or-int/2addr p0, p2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget p2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 28
    .line 29
    not-int p0, p0

    .line 30
    and-int/2addr p0, p2

    .line 31
    :goto_0
    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 32
    .line 33
    const-string/jumbo p0, "window"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Landroid/view/WindowManager;

    .line 41
    .line 42
    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :goto_1
    return-void
.end method

.method public final setIconThemeAlpha(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setIconThemeAlpha(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setLayoutProviderContainer(Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->displayId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

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
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateLayoutProviderView()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setRotationLockAtAngle(ZI)V
    .locals 0

    .line 1
    const-class p0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 8
    .line 9
    invoke-interface {p0, p2, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedAtAngle(IZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setRotationLocked(Z)V
    .locals 0

    .line 1
    const-class p0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final unregisterKeyguardStateCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->keyguardCallback:Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar$keyguardCallback$1;

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
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateActiveIndicatorSpringParams(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateBackPanelColor(IIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateBackPanelColor(IIII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateIconsAndHints(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reInflateNavBarLayout()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIconsAndHints()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final updateOpaqueColor(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginNavigationBar;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateOpaqueColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
