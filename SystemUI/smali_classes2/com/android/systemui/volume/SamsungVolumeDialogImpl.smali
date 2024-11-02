.class public final Lcom/android/systemui/volume/SamsungVolumeDialogImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;


# instance fields
.field public final broadcastReceiverManager:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

.field public final callbacks:Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;

.field public final coverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

.field public final deviceProvisionedListener:Lcom/android/systemui/volume/SamsungVolumeDialogImpl$deviceProvisionedListener$1;

.field public final deviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

.field public final deviceStateManagerWrapper:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

.field public final handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field public final keyguardUpdateMonitorWrapper:Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

.field public final soundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

.field public final volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

.field public final volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependency;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/volume/VolumePanelImpl;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Lcom/android/systemui/volume/VolumePanelImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    .line 10
    .line 11
    const-class p1, Lcom/android/systemui/plugins/VolumeDialogController;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/systemui/plugins/VolumeDialogController;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 20
    .line 21
    const-class p1, Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 30
    .line 31
    const-class p1, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->soundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 40
    .line 41
    const-class p1, Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->broadcastReceiverManager:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    .line 50
    .line 51
    const-class p1, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->keyguardUpdateMonitorWrapper:Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    .line 60
    .line 61
    const-class p1, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->deviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    .line 70
    .line 71
    new-instance p1, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;

    .line 72
    .line 73
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->callbacks:Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;

    .line 77
    .line 78
    new-instance p1, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$deviceProvisionedListener$1;

    .line 79
    .line 80
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$deviceProvisionedListener$1;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->deviceProvisionedListener:Lcom/android/systemui/volume/SamsungVolumeDialogImpl$deviceProvisionedListener$1;

    .line 84
    .line 85
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isCoverSupported()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_0

    .line 90
    .line 91
    const-class p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 98
    .line 99
    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->coverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 100
    .line 101
    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    .line 102
    .line 103
    if-eqz p1, :cond_1

    .line 104
    .line 105
    const-class p1, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    .line 106
    .line 107
    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    .line 112
    .line 113
    iput-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->deviceStateManagerWrapper:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    .line 114
    .line 115
    :cond_1
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanelImpl;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 4
    .line 5
    check-cast v0, Lcom/android/systemui/volume/VolumeDependency;

    .line 6
    .line 7
    const-class v1, Lcom/android/systemui/volume/VolumeStarInteractor;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/systemui/volume/VolumeStarInteractor;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-class v1, Lcom/samsung/systemui/splugins/SPluginManager;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/samsung/systemui/splugins/SPluginManager;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/systemui/volume/VolumeStarInteractor;->listener:Lcom/android/systemui/volume/VolumeStarInteractor$start$1;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    move-object v0, v2

    .line 32
    :cond_0
    invoke-interface {v1, v0}, Lcom/samsung/systemui/splugins/SPluginManager;->removePluginListener(Lcom/samsung/systemui/splugins/SPluginListener;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->callbacks:Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/systemui/volume/util/HandlerWrapper;->workerThread$delegate:Lkotlin/Lazy;

    .line 45
    .line 46
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/os/HandlerThread;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->broadcastReceiverManager:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    .line 78
    .line 79
    iget-object v4, v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    .line 80
    .line 81
    if-eqz v4, :cond_1

    .line 82
    .line 83
    iget-object v5, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 84
    .line 85
    invoke-virtual {v5, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    .line 87
    .line 88
    iput-object v2, v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->coverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    sget-object v1, Lcom/android/systemui/basic/util/ModuleType;->VOLUME:Lcom/android/systemui/basic/util/ModuleType;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mListeners:Ljava/util/Map;

    .line 98
    .line 99
    check-cast v0, Ljava/util/HashMap;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    :cond_3
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->deviceStateManagerWrapper:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    .line 109
    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    iget-object v1, v0, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;->foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 113
    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    sget-object v3, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    const-class v3, Landroid/hardware/devicestate/DeviceStateManager;

    .line 122
    .line 123
    iget-object v4, v0, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;->context:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    check-cast v3, Landroid/hardware/devicestate/DeviceStateManager;

    .line 130
    .line 131
    invoke-virtual {v3, v1}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 132
    .line 133
    .line 134
    iput-object v2, v0, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;->foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 135
    .line 136
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->keyguardUpdateMonitorWrapper:Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    .line 137
    .line 138
    iget-object v1, v0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;->callback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    iget-object v3, v0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 143
    .line 144
    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 145
    .line 146
    .line 147
    iput-object v2, v0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;->callback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 148
    .line 149
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->deviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 152
    .line 153
    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 154
    .line 155
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->deviceProvisionedListener:Lcom/android/systemui/volume/SamsungVolumeDialogImpl$deviceProvisionedListener$1;

    .line 156
    .line 157
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public final init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumePanel:Lcom/android/systemui/volume/VolumePanelImpl;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/android/systemui/volume/VolumePanelImpl;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/volume/VolumeDependency;

    .line 7
    .line 8
    const-class v1, Lcom/android/systemui/volume/VolumeStarInteractor;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/systemui/volume/VolumeStarInteractor;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/android/systemui/volume/VolumeStarInteractor$start$1;

    .line 20
    .line 21
    invoke-direct {v1, v0, p2, p1}, Lcom/android/systemui/volume/VolumeStarInteractor$start$1;-><init>(Lcom/android/systemui/volume/VolumeStarInteractor;Lcom/android/systemui/volume/VolumeDependencyBase;Lcom/samsung/systemui/splugins/volume/ExtendableVolumePanel;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeStarInteractor;->listener:Lcom/android/systemui/volume/VolumeStarInteractor$start$1;

    .line 25
    .line 26
    const-class p2, Lcom/samsung/systemui/splugins/SPluginManager;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Lcom/samsung/systemui/splugins/SPluginManager;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/systemui/volume/VolumeStarInteractor;->listener:Lcom/android/systemui/volume/VolumeStarInteractor$start$1;

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    :cond_0
    const-class v1, Lcom/samsung/systemui/splugins/volume/VolumeStar;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-interface {p2, v0, v1, v2}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p1, Lcom/android/systemui/volume/VolumePanelImpl;->soundAssistant:Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    .line 46
    .line 47
    iget-object p2, p2, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;->satMananger:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 48
    .line 49
    const-string/jumbo v0, "volumestar_enable=0"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->setSoundAssistantProperty(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p1, Lcom/android/systemui/volume/VolumePanelImpl;->window:Lcom/android/systemui/volume/view/standard/VolumePanelWindow;

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/android/systemui/volume/view/standard/VolumePanelWindow;->observeStore()V

    .line 58
    .line 59
    .line 60
    new-instance p2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 61
    .line 62
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_INIT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 63
    .line 64
    invoke-direct {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanelImpl;->infraMediator:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    .line 68
    .line 69
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isVoiceCapable()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isVoiceCapable(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isHasVibrator()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isHasVibrator(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isAllSoundOff()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isAllSoundOff(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;->isSetupWizardComplete()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSetupWizardComplete(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    const/4 v0, 0x1

    .line 102
    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSupportSmartViewStream(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSupportWarningPopupWalletMini(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSupportWarningPopupSideView(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSupportBudsTogether(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isSupportDualAudio(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p1, p2, v2}, Lcom/android/systemui/volume/VolumePanelImpl;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 127
    .line 128
    .line 129
    new-instance p1, Landroid/os/Handler;

    .line 130
    .line 131
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    .line 137
    .line 138
    iget-object p2, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->callbacks:Lcom/android/systemui/volume/SamsungVolumeDialogImpl$callbacks$1;

    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 141
    .line 142
    invoke-interface {v0, p2, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->soundPoolWrapper:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    new-instance p2, Lcom/android/systemui/volume/util/SoundPoolWrapper$makeSound$1;

    .line 154
    .line 155
    invoke-direct {p2, p1}, Lcom/android/systemui/volume/util/SoundPoolWrapper$makeSound$1;-><init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p1, Lcom/android/systemui/volume/util/SoundPoolWrapper;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 159
    .line 160
    invoke-virtual {p1, p2}, Lcom/android/systemui/volume/util/HandlerWrapper;->postInBgThread(Ljava/lang/Runnable;)V

    .line 161
    .line 162
    .line 163
    new-instance p1, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$1;

    .line 164
    .line 165
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$1;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    .line 166
    .line 167
    .line 168
    iget-object p2, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->broadcastReceiverManager:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    .line 169
    .line 170
    iget-object v0, p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    .line 171
    .line 172
    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->ALLSOUND_OFF:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    .line 173
    .line 174
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    .line 179
    .line 180
    if-eqz v0, :cond_1

    .line 181
    .line 182
    new-instance v9, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAllSoundOffAction$1$1;

    .line 183
    .line 184
    invoke-direct {v9, p1}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAllSoundOffAction$1$1;-><init>(Ljava/util/function/Consumer;)V

    .line 185
    .line 186
    .line 187
    iget-object v1, p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 188
    .line 189
    iget-object v3, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    .line 190
    .line 191
    const/4 v4, 0x0

    .line 192
    const/4 v5, 0x0

    .line 193
    const/4 v6, 0x0

    .line 194
    const/4 v7, 0x0

    .line 195
    const/16 v8, 0x3c

    .line 196
    .line 197
    move-object v2, v9

    .line 198
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 199
    .line 200
    .line 201
    iput-object v9, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    .line 202
    .line 203
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 204
    .line 205
    :cond_1
    new-instance p1, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$2;

    .line 206
    .line 207
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$2;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    .line 211
    .line 212
    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->MIRROR_LINK:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    .line 213
    .line 214
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    check-cast v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    .line 219
    .line 220
    if-eqz v1, :cond_2

    .line 221
    .line 222
    new-instance v10, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerMirrorLinkAction$1$1;

    .line 223
    .line 224
    invoke-direct {v10, p1}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerMirrorLinkAction$1$1;-><init>(Ljava/lang/Runnable;)V

    .line 225
    .line 226
    .line 227
    iget-object v2, p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 228
    .line 229
    iget-object v4, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    .line 230
    .line 231
    const/4 v5, 0x0

    .line 232
    const/4 v6, 0x0

    .line 233
    const/4 v7, 0x0

    .line 234
    const/4 v8, 0x0

    .line 235
    const/16 v9, 0x3c

    .line 236
    .line 237
    move-object v3, v10

    .line 238
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 239
    .line 240
    .line 241
    iput-object v10, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    .line 242
    .line 243
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 244
    .line 245
    :cond_2
    new-instance p1, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$3;

    .line 246
    .line 247
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$3;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    .line 248
    .line 249
    .line 250
    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->OPEN_THEME:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    .line 251
    .line 252
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    check-cast v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    .line 257
    .line 258
    if-eqz v1, :cond_3

    .line 259
    .line 260
    new-instance v10, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerOpenThemeChangedAction$1$1;

    .line 261
    .line 262
    invoke-direct {v10, p1}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerOpenThemeChangedAction$1$1;-><init>(Ljava/lang/Runnable;)V

    .line 263
    .line 264
    .line 265
    iget-object v2, p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 266
    .line 267
    iget-object v4, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    .line 268
    .line 269
    const/4 v5, 0x0

    .line 270
    const/4 v6, 0x0

    .line 271
    const/4 v7, 0x0

    .line 272
    const/4 v8, 0x0

    .line 273
    const/16 v9, 0x3c

    .line 274
    .line 275
    move-object v3, v10

    .line 276
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 277
    .line 278
    .line 279
    iput-object v10, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    .line 280
    .line 281
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 282
    .line 283
    :cond_3
    new-instance p1, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$4;

    .line 284
    .line 285
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$4;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    .line 286
    .line 287
    .line 288
    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->DUAL_AUDIO_MODE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    .line 289
    .line 290
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    check-cast v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    .line 295
    .line 296
    if-eqz v1, :cond_4

    .line 297
    .line 298
    new-instance v10, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDualPlayModeAction$1$1;

    .line 299
    .line 300
    invoke-direct {v10, p1}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDualPlayModeAction$1$1;-><init>(Ljava/lang/Runnable;)V

    .line 301
    .line 302
    .line 303
    iget-object v2, p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 304
    .line 305
    iget-object v4, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    .line 306
    .line 307
    const/4 v5, 0x0

    .line 308
    const/4 v6, 0x0

    .line 309
    const/4 v7, 0x0

    .line 310
    const/4 v8, 0x0

    .line 311
    const/16 v9, 0x3c

    .line 312
    .line 313
    move-object v3, v10

    .line 314
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 315
    .line 316
    .line 317
    iput-object v10, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    .line 318
    .line 319
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 320
    .line 321
    :cond_4
    new-instance p1, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$5;

    .line 322
    .line 323
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$5;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    .line 324
    .line 325
    .line 326
    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->HEADSET_CONNECTION:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    .line 327
    .line 328
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    check-cast v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    .line 333
    .line 334
    if-eqz v0, :cond_5

    .line 335
    .line 336
    new-instance v9, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerHeadsetConnectionAction$1$1;

    .line 337
    .line 338
    invoke-direct {v9, p1}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerHeadsetConnectionAction$1$1;-><init>(Ljava/util/function/Consumer;)V

    .line 339
    .line 340
    .line 341
    iget-object v1, p2, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 342
    .line 343
    iget-object v3, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    .line 344
    .line 345
    const/4 v4, 0x0

    .line 346
    const/4 v5, 0x0

    .line 347
    const/4 v6, 0x0

    .line 348
    const/4 v7, 0x0

    .line 349
    const/16 v8, 0x3c

    .line 350
    .line 351
    move-object v2, v9

    .line 352
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 353
    .line 354
    .line 355
    iput-object v9, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    .line 356
    .line 357
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 358
    .line 359
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->coverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 360
    .line 361
    if-eqz p1, :cond_6

    .line 362
    .line 363
    sget-object p2, Lcom/android/systemui/basic/util/ModuleType;->VOLUME:Lcom/android/systemui/basic/util/ModuleType;

    .line 364
    .line 365
    new-instance v0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$6;

    .line 366
    .line 367
    invoke-direct {v0, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$6;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    .line 368
    .line 369
    .line 370
    iget-object p1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mListeners:Ljava/util/Map;

    .line 371
    .line 372
    check-cast p1, Ljava/util/HashMap;

    .line 373
    .line 374
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    :cond_6
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    .line 378
    .line 379
    if-eqz p1, :cond_7

    .line 380
    .line 381
    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->deviceStateManagerWrapper:Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;

    .line 382
    .line 383
    if-eqz p1, :cond_7

    .line 384
    .line 385
    new-instance p2, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$7;

    .line 386
    .line 387
    invoke-direct {p2, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$7;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    .line 388
    .line 389
    .line 390
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 391
    .line 392
    new-instance v1, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper$registerFoldStateListener$1;

    .line 393
    .line 394
    invoke-direct {v1, p2, p1}, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper$registerFoldStateListener$1;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;)V

    .line 395
    .line 396
    .line 397
    iget-object p2, p1, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;->context:Landroid/content/Context;

    .line 398
    .line 399
    invoke-direct {v0, p2, v1}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 400
    .line 401
    .line 402
    sget-object v1, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    .line 403
    .line 404
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 408
    .line 409
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    check-cast p2, Landroid/hardware/devicestate/DeviceStateManager;

    .line 414
    .line 415
    sget-object v1, Lcom/android/systemui/volume/util/VolumeExecutor;->INSTANCE:Lcom/android/systemui/volume/util/VolumeExecutor;

    .line 416
    .line 417
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    sget-object v1, Lcom/android/systemui/volume/util/VolumeExecutor;->sExecutor$delegate:Lkotlin/Lazy;

    .line 421
    .line 422
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    check-cast v1, Landroid/os/HandlerExecutor;

    .line 427
    .line 428
    invoke-virtual {p2, v1, v0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 429
    .line 430
    .line 431
    iput-object v0, p1, Lcom/android/systemui/volume/util/DeviceStateManagerWrapper;->foldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 432
    .line 433
    :cond_7
    new-instance p1, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$8;

    .line 434
    .line 435
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/SamsungVolumeDialogImpl$init$8;-><init>(Lcom/android/systemui/volume/SamsungVolumeDialogImpl;)V

    .line 436
    .line 437
    .line 438
    iget-object p2, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->keyguardUpdateMonitorWrapper:Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    .line 439
    .line 440
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    new-instance v0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper$registerCallback$1;

    .line 444
    .line 445
    invoke-direct {v0, p1}, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper$registerCallback$1;-><init>(Ljava/lang/Runnable;)V

    .line 446
    .line 447
    .line 448
    iput-object v0, p2, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;->callback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 449
    .line 450
    iget-object p1, p2, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 451
    .line 452
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 453
    .line 454
    .line 455
    iget-object p1, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->deviceProvisionedWrapper:Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    .line 456
    .line 457
    iget-object p1, p1, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 458
    .line 459
    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 460
    .line 461
    iget-object p0, p0, Lcom/android/systemui/volume/SamsungVolumeDialogImpl;->deviceProvisionedListener:Lcom/android/systemui/volume/SamsungVolumeDialogImpl$deviceProvisionedListener$1;

    .line 462
    .line 463
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    return-void
.end method
