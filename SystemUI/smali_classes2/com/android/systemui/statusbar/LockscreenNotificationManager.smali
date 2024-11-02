.class public final Lcom/android/systemui/statusbar/LockscreenNotificationManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field public mBarState:I

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mCoverCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mCurrentNotificationType:I

.field public mCurrentOrientation:I

.field public mCurrentUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mHandler:Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;

.field public mIsCovered:Z

.field public mIsDetail:Z

.field public mIsFolded:Z

.field public mIsFolderStateOpen:Z

.field public final mIsKeyguardSupportLandscapePhone:Z

.field public mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLock:Ljava/lang/Object;

.field public mLockScreenNotificationStateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

.field public final mLogger:Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;

.field public final mNotificationSettingUri:Landroid/net/Uri;

.field public mSemDisplayDeviceType:I

.field public mSettingNotificationType:I

.field public final mSettingsListenerForNotificationStyle:Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;

.field public mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Landroid/os/Looper;I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;

    .line 29
    .line 30
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsDetail:Z

    .line 31
    .line 32
    const-string v0, "lockscreen_minimizing_notification"

    .line 33
    .line 34
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mNotificationSettingUri:Landroid/net/Uri;

    .line 39
    .line 40
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsCovered:Z

    .line 41
    .line 42
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolded:Z

    .line 43
    .line 44
    new-instance v1, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingsListenerForNotificationStyle:Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;

    .line 50
    .line 51
    new-instance v3, Lcom/android/systemui/statusbar/LockscreenNotificationManager$4;

    .line 52
    .line 53
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$4;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V

    .line 54
    .line 55
    .line 56
    iput-object v3, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCoverCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 61
    .line 62
    iput-object p5, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLogger:Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 65
    .line 66
    .line 67
    move-result p5

    .line 68
    if-eqz p5, :cond_0

    .line 69
    .line 70
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 71
    .line 72
    .line 73
    move-result p5

    .line 74
    if-nez p5, :cond_0

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsKeyguardSupportLandscapePhone:Z

    .line 78
    .line 79
    sget-boolean p5, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 80
    .line 81
    if-eqz p5, :cond_1

    .line 82
    .line 83
    const-class p5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 84
    .line 85
    invoke-static {p5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 90
    .line 91
    new-instance v4, Lcom/android/systemui/statusbar/LockscreenNotificationManager$2;

    .line 92
    .line 93
    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$2;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v4}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p5

    .line 103
    check-cast p5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 104
    .line 105
    iget-boolean p5, p5, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 106
    .line 107
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolderStateOpen:Z

    .line 108
    .line 109
    :cond_1
    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 110
    .line 111
    .line 112
    check-cast p8, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 113
    .line 114
    invoke-virtual {p8, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 126
    .line 127
    .line 128
    filled-new-array {v0}, [Landroid/net/Uri;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p3, v1, p1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;->onChanged(Landroid/net/Uri;)V

    .line 136
    .line 137
    .line 138
    iput-object p4, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 139
    .line 140
    invoke-virtual {p4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 141
    .line 142
    .line 143
    const-class p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 144
    .line 145
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 150
    .line 151
    new-instance p1, Lcom/android/systemui/statusbar/LockscreenNotificationManager$3;

    .line 152
    .line 153
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$3;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V

    .line 154
    .line 155
    .line 156
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 157
    .line 158
    new-instance p2, Landroid/os/HandlerExecutor;

    .line 159
    .line 160
    invoke-direct {p2, p7}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 161
    .line 162
    .line 163
    check-cast p6, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 164
    .line 165
    invoke-virtual {p6, p1, p2}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 166
    .line 167
    .line 168
    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    .line 169
    .line 170
    if-nez p1, :cond_2

    .line 171
    .line 172
    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION:Z

    .line 173
    .line 174
    if-eqz p1, :cond_3

    .line 175
    .line 176
    :cond_2
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    const/4 p2, 0x0

    .line 181
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    .line 182
    .line 183
    .line 184
    :cond_3
    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentOrientation:I

    .line 2
    .line 3
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 4
    .line 5
    const-string v2, "LockscreenNotificationManager"

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iput v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentOrientation:I

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Orientation updated : "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentOrientation:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSemDisplayDeviceType:I

    .line 34
    .line 35
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 36
    .line 37
    if-eq v0, p1, :cond_2

    .line 38
    .line 39
    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSemDisplayDeviceType:I

    .line 40
    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v0, "Fold state updated : "

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSemDisplayDeviceType:I

    .line 49
    .line 50
    invoke-static {p1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSemDisplayDeviceType:I

    .line 54
    .line 55
    const/4 v0, 0x5

    .line 56
    if-ne p1, v0, :cond_1

    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 p1, 0x0

    .line 61
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolded:Z

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method

.method public final onFoldStateChanged(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "FOLD "

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "UNFOLD "

    .line 7
    .line 8
    :goto_0
    const-string v1, " FOLD STATE - "

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "LockscreenNotificationManager"

    .line 15
    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolded:Z

    .line 20
    .line 21
    if-eq v0, p1, :cond_1

    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolded:Z

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isLockscreenDisabled()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockScreenNotificationStateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$1;

    .line 40
    .line 41
    const-string p1, "LockScreenNotiStateChanged"

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mBarState:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mBarState:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsDetail:Z

    .line 9
    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "BarState updated : "

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mBarState:I

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "LockscreenNotificationManager"

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateNotificationType()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v0, v3, :cond_2

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsKeyguardSupportLandscapePhone:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentOrientation:I

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolderStateOpen:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    move v0, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingNotificationType:I

    .line 27
    .line 28
    if-ne v0, v3, :cond_2

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsDetail:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v0, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    move v0, v2

    .line 38
    :goto_1
    iget v4, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    .line 39
    .line 40
    if-eq v0, v4, :cond_6

    .line 41
    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    if-ne v4, v1, :cond_3

    .line 45
    .line 46
    move v4, v3

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    move v4, v2

    .line 49
    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;

    .line 55
    .line 56
    const/16 v6, 0x64

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 59
    .line 60
    .line 61
    iget-object v5, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;

    .line 62
    .line 63
    iget v7, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    .line 64
    .line 65
    const/4 v8, 0x0

    .line 66
    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 71
    .line 72
    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockScreenNotificationStateListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$1;

    .line 79
    .line 80
    const-string v5, "LockScreenNotiStateChanged"

    .line 81
    .line 82
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    if-eqz v4, :cond_5

    .line 86
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateVisibility()V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 93
    .line 94
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSpeedBumpIndexDirty:Z

    .line 95
    .line 96
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 97
    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    .line 101
    .line 102
    if-eqz v3, :cond_5

    .line 103
    .line 104
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    .line 105
    .line 106
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 109
    .line 110
    .line 111
    :cond_5
    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    .line 112
    .line 113
    if-ne p0, v1, :cond_6

    .line 114
    .line 115
    const-class p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 116
    .line 117
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->resetTransformAnimation()V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :catchall_0
    move-exception p0

    .line 128
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    throw p0

    .line 130
    :cond_6
    :goto_3
    return-void
.end method
