.class public final Lcom/android/systemui/qs/SecAutoTileManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mContext:Landroid/content/Context;

.field public final mDemoResetStartedReceiver:Lcom/android/systemui/qs/SecAutoTileManager$3;

.field public final mHandler:Landroid/os/Handler;

.field public final mHost:Lcom/android/systemui/qs/QSTileHost;

.field public final mManagedProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

.field public mPreInstallerFinishedReceiver:Landroid/content/BroadcastReceiver;

.field public final mProfileCallback:Lcom/android/systemui/qs/SecAutoTileManager$4;

.field public final mQQSHost:Lcom/android/systemui/qs/SecQQSTileHost;

.field public final mRemovedTileListByAppIntent:Ljava/util/ArrayList;

.field public final mTileVisibilityUpdateReceiver:Lcom/android/systemui/qs/SecAutoTileManager$2;


# direct methods
.method public static -$$Nest$mupdateRemovedTileListByAppIntent(Lcom/android/systemui/qs/SecAutoTileManager;ZLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "updateRemovedTileListByAppIntent : isAdded = "

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", spec = "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mRemovedTileListByAppIntent = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "AutoTileManager"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/AutoAddTracker$Builder;Lcom/android/systemui/qs/QSTileHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/ManagedProfileController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mPreInstallerFinishedReceiver:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mTileVisibilityUpdateReceiver:Lcom/android/systemui/qs/SecAutoTileManager$2;

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mDemoResetStartedReceiver:Lcom/android/systemui/qs/SecAutoTileManager$3;

    .line 17
    .line 18
    new-instance v0, Lcom/android/systemui/qs/SecAutoTileManager$4;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecAutoTileManager$4;-><init>(Lcom/android/systemui/qs/SecAutoTileManager;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mProfileCallback:Lcom/android/systemui/qs/SecAutoTileManager$4;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p3, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 28
    .line 29
    iget-object p1, p3, Lcom/android/systemui/qs/QSTileHost;->mQQSTileHost:Lcom/android/systemui/qs/SecQQSTileHost;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mQQSHost:Lcom/android/systemui/qs/SecQQSTileHost;

    .line 32
    .line 33
    iput-object p4, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    iget-object p1, p3, Lcom/android/systemui/qs/QSTileHost;->mUserContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p2, Lcom/android/systemui/qs/AutoAddTracker$Builder;->userId:I

    .line 46
    .line 47
    new-instance p1, Lcom/android/systemui/qs/AutoAddTracker;

    .line 48
    .line 49
    iget-object v2, p2, Lcom/android/systemui/qs/AutoAddTracker$Builder;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 50
    .line 51
    iget-object v3, p2, Lcom/android/systemui/qs/AutoAddTracker$Builder;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 52
    .line 53
    iget-object v4, p2, Lcom/android/systemui/qs/AutoAddTracker$Builder;->qsHost:Lcom/android/systemui/qs/QSHost;

    .line 54
    .line 55
    iget-object v5, p2, Lcom/android/systemui/qs/AutoAddTracker$Builder;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 56
    .line 57
    iget-object v6, p2, Lcom/android/systemui/qs/AutoAddTracker$Builder;->handler:Landroid/os/Handler;

    .line 58
    .line 59
    iget-object v7, p2, Lcom/android/systemui/qs/AutoAddTracker$Builder;->executor:Ljava/util/concurrent/Executor;

    .line 60
    .line 61
    iget v8, p2, Lcom/android/systemui/qs/AutoAddTracker$Builder;->userId:I

    .line 62
    .line 63
    move-object v1, p1

    .line 64
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/qs/AutoAddTracker;-><init>(Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;I)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    .line 68
    .line 69
    iput-object p6, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 70
    .line 71
    new-instance p2, Lcom/android/systemui/qs/SecAutoTileManager$1;

    .line 72
    .line 73
    invoke-direct {p2, p0}, Lcom/android/systemui/qs/SecAutoTileManager$1;-><init>(Lcom/android/systemui/qs/SecAutoTileManager;)V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mPreInstallerFinishedReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    .line 78
    const-string p2, "com.samsung.intent.action.PREINSTALLER_FINISH"

    .line 79
    .line 80
    invoke-static {p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    iget-object p3, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mPreInstallerFinishedReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    .line 86
    invoke-virtual {p6, p2, p3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 87
    .line 88
    .line 89
    new-instance v2, Lcom/android/systemui/qs/SecAutoTileManager$2;

    .line 90
    .line 91
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/SecAutoTileManager$2;-><init>(Lcom/android/systemui/qs/SecAutoTileManager;)V

    .line 92
    .line 93
    .line 94
    iput-object v2, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mTileVisibilityUpdateReceiver:Lcom/android/systemui/qs/SecAutoTileManager$2;

    .line 95
    .line 96
    const-string p2, "com.samsung.systemui.qs.action.ACTION_UPDATE_CUSTOMTILE_VISIBILITY"

    .line 97
    .line 98
    invoke-static {p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const/4 v4, 0x0

    .line 103
    const/4 v5, 0x0

    .line 104
    const/4 v6, 0x2

    .line 105
    const-string v7, "com.samsung.systemui.permission.SEC_UPDATE_CUSTOMTILE_VISIBILITY"

    .line 106
    .line 107
    move-object v1, p6

    .line 108
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance p2, Lcom/android/systemui/qs/SecAutoTileManager$3;

    .line 112
    .line 113
    invoke-direct {p2, p0}, Lcom/android/systemui/qs/SecAutoTileManager$3;-><init>(Lcom/android/systemui/qs/SecAutoTileManager;)V

    .line 114
    .line 115
    .line 116
    iput-object p2, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mDemoResetStartedReceiver:Lcom/android/systemui/qs/SecAutoTileManager$3;

    .line 117
    .line 118
    new-instance p3, Landroid/content/IntentFilter;

    .line 119
    .line 120
    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string p4, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 124
    .line 125
    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p6, p3, p2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 129
    .line 130
    .line 131
    iput-object p5, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mManagedProfileController:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    .line 132
    .line 133
    const-string p0, "WorkMode"

    .line 134
    .line 135
    iget-object p2, p1, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 136
    .line 137
    monitor-enter p2

    .line 138
    :try_start_0
    iget-object p1, p1, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 139
    .line 140
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p2

    .line 145
    if-nez p0, :cond_0

    .line 146
    .line 147
    check-cast p5, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    .line 148
    .line 149
    invoke-virtual {p5, v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_0
    return-void

    .line 153
    :catchall_0
    move-exception p0

    .line 154
    monitor-exit p2

    .line 155
    throw p0
.end method


# virtual methods
.method public final isRemovedTileByAppIntent(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "isRemovedTileByAppIntent : spec = "

    .line 2
    .line 3
    const-string v1, ", mRemovedTileListByAppIntent = "

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mRemovedTileListByAppIntent:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "AutoTileManager"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method
