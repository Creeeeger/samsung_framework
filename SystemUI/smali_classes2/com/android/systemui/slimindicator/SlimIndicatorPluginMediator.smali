.class public final Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# instance fields
.field public mIsSPluginConnected:Z

.field public final mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

.field public final mReceiverManager:Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;

.field public final mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/slimindicator/SlimIndicatorManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    .line 8
    .line 9
    new-instance p2, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->onPluginDisconnected()V

    .line 21
    .line 22
    .line 23
    :cond_0
    new-instance p1, Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mReceiverManager:Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;

    .line 29
    .line 30
    const-class p1, Lcom/samsung/systemui/splugins/SPluginManager;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/samsung/systemui/splugins/SPluginManager;

    .line 37
    .line 38
    const-class p2, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    .line 39
    .line 40
    invoke-interface {p1, p0, p2}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    .line 2
    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v0, "onPluginConnected() mIsSPluginConnected:"

    .line 6
    .line 7
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, ", plugin:"

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string v0, "[QuickStar]SlimIndicatorPluginMediator"

    .line 28
    .line 29
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-boolean p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mReceiverManager:Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;

    .line 38
    .line 39
    iget-boolean v1, p2, Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;->mIsRegistered:Z

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    iget-object v1, p2, Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;->receivers:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->register()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iput-boolean v2, p2, Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;->mIsRegistered:Z

    .line 67
    .line 68
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    .line 69
    .line 70
    iget-object p2, p2, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->mSettingsListener:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 76
    .line 77
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    .line 88
    .line 89
    iget-object v3, p2, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    .line 90
    .line 91
    invoke-virtual {v1, p2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    .line 97
    .line 98
    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 99
    .line 100
    iget-boolean p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mIsAddedTunable:Z

    .line 101
    .line 102
    if-nez p2, :cond_4

    .line 103
    .line 104
    const-class p2, Lcom/android/systemui/tuner/TunerService;

    .line 105
    .line 106
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    check-cast p2, Lcom/android/systemui/tuner/TunerService;

    .line 111
    .line 112
    const-string v1, "icon_blacklist"

    .line 113
    .line 114
    filled-new-array {v1}, [Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p2, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mUserSwitchListener:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$UserSwitchListener;

    .line 124
    .line 125
    invoke-virtual {p2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 126
    .line 127
    .line 128
    iput-boolean v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mIsAddedTunable:Z

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->notifyNewsToSubscribers()V

    .line 131
    .line 132
    .line 133
    :cond_4
    if-eqz p1, :cond_5

    .line 134
    .line 135
    :try_start_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;->onPluginConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :catch_0
    const-string p0, "Please check app version."

    .line 140
    .line 141
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :cond_5
    :goto_1
    return-void
.end method

.method public final onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 3

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "onPluginDisconnected() mIsSPluginConnected:"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", plugin:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", reason:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "[QuickStar]SlimIndicatorPluginMediator"

    .line 29
    .line 30
    invoke-static {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-boolean p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    .line 34
    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mReceiverManager:Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;

    .line 39
    .line 40
    iget-object v0, p2, Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;->receivers:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->unregister()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p2, Lcom/android/systemui/slimindicator/SlimIndicatorReceiverManager;->mIsRegistered:Z

    .line 64
    .line 65
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;->onPluginDisconnected()V

    .line 68
    .line 69
    .line 70
    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    .line 73
    .line 74
    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    .line 75
    .line 76
    iget-boolean p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mIsAddedTunable:Z

    .line 77
    .line 78
    if-eqz p2, :cond_2

    .line 79
    .line 80
    const-class p2, Lcom/android/systemui/tuner/TunerService;

    .line 81
    .line 82
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Lcom/android/systemui/tuner/TunerService;

    .line 87
    .line 88
    invoke-virtual {p2, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 92
    .line 93
    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mUserSwitchListener:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl$UserSwitchListener;

    .line 94
    .line 95
    invoke-virtual {p2, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 96
    .line 97
    .line 98
    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mIsAddedTunable:Z

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->notifyNewsToSubscribers()V

    .line 101
    .line 102
    .line 103
    :cond_2
    if-eqz p1, :cond_3

    .line 104
    .line 105
    :try_start_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBox;->onPluginDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catch_0
    const-string p0, "Please check app version."

    .line 110
    .line 111
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_1
    return-void
.end method
