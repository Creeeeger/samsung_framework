.class public final Lcom/android/systemui/qs/external/CustomTile$Builder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mBackgroundLooper:Landroid/os/Looper;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mCustomTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mQSHostLazy:Ldagger/Lazy;

.field public final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field public mSpec:Ljava/lang/String;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mTileServices:Lcom/android/systemui/qs/external/TileServices;

.field public final mUiEventLogger:Lcom/android/systemui/qs/QsEventLogger;

.field public mUserContext:Landroid/content/Context;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/qs/external/CustomTileStatePersister;Lcom/android/systemui/qs/external/TileServices;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/qs/QsEventLogger;",
            "Landroid/os/Looper;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/qs/logging/QSLogger;",
            "Lcom/android/systemui/qs/external/CustomTileStatePersister;",
            "Lcom/android/systemui/qs/external/TileServices;",
            "Lcom/android/systemui/settings/DisplayTracker;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mSpec:Ljava/lang/String;

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mQSHostLazy:Ldagger/Lazy;

    .line 11
    .line 12
    move-object v1, p2

    .line 13
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mUiEventLogger:Lcom/android/systemui/qs/QsEventLogger;

    .line 14
    .line 15
    move-object v1, p3

    .line 16
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mBackgroundLooper:Landroid/os/Looper;

    .line 17
    .line 18
    move-object v1, p4

    .line 19
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mMainHandler:Landroid/os/Handler;

    .line 20
    .line 21
    move-object v1, p5

    .line 22
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 23
    .line 24
    move-object v1, p6

    .line 25
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 26
    .line 27
    move-object v1, p7

    .line 28
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 29
    .line 30
    move-object v1, p8

    .line 31
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 32
    .line 33
    move-object v1, p9

    .line 34
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 35
    .line 36
    move-object v1, p10

    .line 37
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mCustomTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

    .line 38
    .line 39
    move-object v1, p11

    .line 40
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mTileServices:Lcom/android/systemui/qs/external/TileServices;

    .line 41
    .line 42
    move-object v1, p12

    .line 43
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 44
    .line 45
    move-object v1, p13

    .line 46
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 47
    .line 48
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    move-object/from16 v1, p15

    .line 53
    .line 54
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 55
    .line 56
    move-object/from16 v1, p14

    .line 57
    .line 58
    iput-object v1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 59
    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/qs/external/CustomTile;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mUserContext:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mSpec:Ljava/lang/String;

    .line 8
    .line 9
    sget v2, Lcom/android/systemui/qs/external/CustomTile;->$r8$clinit:I

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    const-string v2, "custom("

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    const-string v2, ")"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    add-int/lit8 v2, v2, -0x1

    .line 34
    .line 35
    const/4 v3, 0x7

    .line 36
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v14

    .line 40
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    new-instance v1, Lcom/android/systemui/qs/external/CustomTile;

    .line 47
    .line 48
    move-object v4, v1

    .line 49
    iget-object v2, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mQSHostLazy:Ldagger/Lazy;

    .line 50
    .line 51
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    move-object v5, v2

    .line 56
    check-cast v5, Lcom/android/systemui/qs/QSHost;

    .line 57
    .line 58
    iget-object v6, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mUiEventLogger:Lcom/android/systemui/qs/QsEventLogger;

    .line 59
    .line 60
    iget-object v7, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mBackgroundLooper:Landroid/os/Looper;

    .line 61
    .line 62
    iget-object v8, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mMainHandler:Landroid/os/Handler;

    .line 63
    .line 64
    iget-object v9, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 65
    .line 66
    iget-object v10, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 67
    .line 68
    iget-object v11, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 69
    .line 70
    iget-object v12, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 71
    .line 72
    iget-object v13, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 73
    .line 74
    iget-object v15, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mUserContext:Landroid/content/Context;

    .line 75
    .line 76
    iget-object v2, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mCustomTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

    .line 77
    .line 78
    move-object/from16 v16, v2

    .line 79
    .line 80
    iget-object v2, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mTileServices:Lcom/android/systemui/qs/external/TileServices;

    .line 81
    .line 82
    move-object/from16 v17, v2

    .line 83
    .line 84
    iget-object v2, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 85
    .line 86
    move-object/from16 v18, v2

    .line 87
    .line 88
    iget-object v2, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 89
    .line 90
    move-object/from16 v19, v2

    .line 91
    .line 92
    iget-object v2, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 93
    .line 94
    move-object/from16 v20, v2

    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 97
    .line 98
    move-object/from16 v21, v0

    .line 99
    .line 100
    const/16 v22, 0x0

    .line 101
    .line 102
    invoke-direct/range {v4 .. v22}, Lcom/android/systemui/qs/external/CustomTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Ljava/lang/String;Landroid/content/Context;Lcom/android/systemui/qs/external/CustomTileStatePersister;Lcom/android/systemui/qs/external/TileServices;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/keyguard/DisplayLifecycle;I)V

    .line 103
    .line 104
    .line 105
    return-object v1

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    const-string v1, "Empty custom tile spec action"

    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    const-string v2, "Bad custom tile spec: "

    .line 117
    .line 118
    invoke-static {v2, v1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 127
    .line 128
    const-string v1, "UserContext cannot be null"

    .line 129
    .line 130
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v0
.end method
