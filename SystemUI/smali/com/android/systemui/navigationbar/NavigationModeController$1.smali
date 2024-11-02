.class public final Lcom/android/systemui/navigationbar/NavigationModeController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationModeController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationModeController$1;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDeviceProvisionedChanged()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationModeController$1;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mDeviceProvisioned:Z

    .line 16
    .line 17
    if-eq v1, v0, :cond_1

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mDeviceProvisioned:Z

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    .line 22
    .line 23
    sget-object v1, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->INSTANCE:Lcom/android/systemui/navigationbar/util/NavigationModeUtil;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string/jumbo v2, "navigation_bar_gesture_while_hidden"

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const-string v2, "com.android.internal.systemui.navbar.threebutton"

    .line 38
    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    move-object v0, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->getGestureOverlayPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    :try_start_0
    sget-object v1, Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;->UPDATE_INTERACTION_MODE_DEVICE_PROVISIONED_COMPLETE:Lcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;

    .line 62
    .line 63
    const/4 v2, -0x2

    .line 64
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->setModeOverlay(ILcom/android/systemui/navigationbar/NavigationModeController$ModeOverlayReason;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string v1, "NavigationModeController"

    .line 70
    .line 71
    const-string v2, "Failed to setModeOverlay: "

    .line 72
    .line 73
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_1
    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnDeviceProvisionedChanged;

    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mDeviceProvisioned:Z

    .line 82
    .line 83
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnDeviceProvisionedChanged;-><init>(Z)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 87
    .line 88
    move-object v2, v1

    .line 89
    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 90
    .line 91
    invoke-virtual {v2, p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarStyleChanged;

    .line 95
    .line 96
    invoke-direct {v0}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarStyleChanged;-><init>()V

    .line 97
    .line 98
    .line 99
    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 100
    .line 101
    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_TASKBAR:Z

    .line 105
    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 109
    .line 110
    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateTaskbarAvailable;

    .line 111
    .line 112
    invoke-direct {v1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateTaskbarAvailable;-><init>()V

    .line 113
    .line 114
    .line 115
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 116
    .line 117
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    return-void
.end method

.method public final onUserSwitched()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onUserSwitched: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "NavigationModeController"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationModeController$1;->this$0:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->updateCurrentInteractionMode(Z)V

    .line 34
    .line 35
    .line 36
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarStyleChanged;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarStyleChanged;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationModeController;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 46
    .line 47
    move-object v2, v1

    .line 48
    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 49
    .line 50
    invoke-virtual {v2, p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUserSwitched;

    .line 54
    .line 55
    invoke-direct {v0}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUserSwitched;-><init>()V

    .line 56
    .line 57
    .line 58
    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 59
    .line 60
    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method
