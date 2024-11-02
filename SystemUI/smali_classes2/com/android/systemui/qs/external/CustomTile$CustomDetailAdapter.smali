.class public final Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mInteractionHandler:Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;

.field public final mService:Landroid/service/quicksettings/IQSTileService;

.field public final synthetic this$0:Lcom/android/systemui/qs/external/CustomTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/CustomTile;Landroid/service/quicksettings/IQSTileService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;-><init>(Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mInteractionHandler:Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    const-string p2, "getDetailView remoteViews = "

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object p3

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    .line 10
    .line 11
    iget-boolean v2, v1, Lcom/android/systemui/qs/external/CustomTile;->mIsSupportDetailView:Z

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    return-object p3

    .line 16
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/android/systemui/qs/external/CustomTile;->shouldUseArchivedDetailInfo()Z

    .line 17
    .line 18
    .line 19
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    iget-object v3, v1, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    :try_start_1
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    .line 29
    .line 30
    .line 31
    iget-object v0, v1, Lcom/android/systemui/qs/external/CustomTile;->mDetailView:Landroid/widget/RemoteViews;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->semGetDetailView()Landroid/widget/RemoteViews;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-boolean v5, v1, Lcom/android/systemui/qs/external/CustomTile;->mIsSecActiveTile:Z

    .line 39
    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    iput-object v2, v1, Lcom/android/systemui/qs/external/CustomTile;->mDetailView:Landroid/widget/RemoteViews;

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    .line 48
    .line 49
    .line 50
    :cond_3
    move-object v0, v2

    .line 51
    :goto_0
    iget-object v1, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    return-object p3

    .line 71
    :cond_4
    new-instance p2, Landroid/widget/FrameLayout;

    .line 72
    .line 73
    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mInteractionHandler:Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;

    .line 77
    .line 78
    invoke-virtual {v0, p1, p2, p0, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    .line 84
    .line 85
    return-object p2

    .line 86
    :catch_0
    return-object p3
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x10c

    .line 2
    .line 3
    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    sget v2, Lcom/android/systemui/qs/external/CustomTile;->$r8$clinit:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->shouldUseArchivedDetailInfo()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mSettingsIntent:Landroid/content/Intent;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semGetSettingsIntent()Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-boolean v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecActiveTile:Z

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mSettingsIntent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    :cond_2
    return-object v1

    .line 31
    :catch_0
    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    sget v2, Lcom/android/systemui/qs/external/CustomTile;->$r8$clinit:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->shouldUseArchivedDetailInfo()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDetailViewTitle:Ljava/lang/CharSequence;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semGetDetailViewTitle()Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-boolean v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecActiveTile:Z

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mDetailViewTitle:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    :cond_2
    return-object v1

    .line 31
    :catch_0
    return-object v0
.end method

.method public final getToggleEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mToggleEnabled:Z

    .line 4
    .line 5
    return p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    sget v2, Lcom/android/systemui/qs/external/CustomTile;->$r8$clinit:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->shouldUseArchivedDetailInfo()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsToggleButtonExist:Z

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 22
    .line 23
    iget p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    if-ne p0, v0, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_2
    :try_start_0
    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semIsToggleButtonExists()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iget-boolean v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecActiveTile:Z

    .line 41
    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    iput-boolean v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsToggleButtonExist:Z

    .line 45
    .line 46
    :cond_3
    if-eqz v2, :cond_4

    .line 47
    .line 48
    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semIsToggleButtonChecked()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-object p0

    .line 57
    :catch_0
    :cond_4
    return-object v0
.end method

.method public final setToggleState(Z)V
    .locals 9

    .line 1
    const-string/jumbo v0, "setToggleState state = "

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget v2, Lcom/android/systemui/qs/external/CustomTile;->$r8$clinit:I

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    .line 11
    .line 12
    iget-object v3, v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v4, v2, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 15
    .line 16
    const-string/jumbo v5, "setToggleState  "

    .line 17
    .line 18
    .line 19
    const-string v6, "getTileSpec() = "

    .line 20
    .line 21
    invoke-static {v5, p1, v6}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-object v6, v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v5, v6, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 31
    .line 32
    if-eqz v3, :cond_7

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_0
    const-class v5, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 39
    .line 40
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 45
    .line 46
    check-cast v5, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBlockedEdmSettingsChange$1()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    iget-object v6, v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 57
    .line 58
    .line 59
    const-string/jumbo p0, "setToggleState blocked"

    .line 60
    .line 61
    .line 62
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-virtual {v2, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    iget-object v5, v2, Lcom/android/systemui/qs/external/CustomTile;->mUnlockPolicy:Ljava/lang/String;

    .line 74
    .line 75
    const-string v7, "ALL"

    .line 76
    .line 77
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    const/4 v7, 0x1

    .line 82
    if-eqz v5, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iget-object v5, v2, Lcom/android/systemui/qs/external/CustomTile;->mUnlockPolicy:Ljava/lang/String;

    .line 86
    .line 87
    const-string v8, "ON"

    .line 88
    .line 89
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_3

    .line 94
    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    iget-object v5, v2, Lcom/android/systemui/qs/external/CustomTile;->mUnlockPolicy:Ljava/lang/String;

    .line 99
    .line 100
    const-string v8, "OFF"

    .line 101
    .line 102
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_4

    .line 107
    .line 108
    if-nez p1, :cond_4

    .line 109
    .line 110
    :goto_0
    move v5, v7

    .line 111
    goto :goto_1

    .line 112
    :cond_4
    const/4 v5, 0x0

    .line 113
    :goto_1
    if-eqz v5, :cond_5

    .line 114
    .line 115
    const-class v5, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 116
    .line 117
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 122
    .line 123
    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 124
    .line 125
    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 126
    .line 127
    if-eqz v8, :cond_5

    .line 128
    .line 129
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 134
    .line 135
    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 136
    .line 137
    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 138
    .line 139
    if-eqz v8, :cond_5

    .line 140
    .line 141
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 146
    .line 147
    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 148
    .line 149
    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 150
    .line 151
    if-nez v5, :cond_5

    .line 152
    .line 153
    const-class v5, Lcom/android/systemui/util/SettingsHelper;

    .line 154
    .line 155
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    check-cast v5, Lcom/android/systemui/util/SettingsHelper;

    .line 160
    .line 161
    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-eqz v5, :cond_5

    .line 166
    .line 167
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 168
    .line 169
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 174
    .line 175
    new-instance v0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda1;

    .line 176
    .line 177
    invoke-direct {v0, v7, p0, v1}, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    invoke-virtual {v2, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_5
    :try_start_0
    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-eqz p0, :cond_6

    .line 196
    .line 197
    invoke-virtual {v4, v7}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 198
    .line 199
    .line 200
    invoke-interface {v3}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    .line 201
    .line 202
    .line 203
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    invoke-interface {v3, p1}, Landroid/service/quicksettings/IQSTileService;->semSetToggleButtonChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .line 220
    .line 221
    :catch_0
    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 222
    .line 223
    .line 224
    :cond_7
    :goto_2
    return-void
.end method
