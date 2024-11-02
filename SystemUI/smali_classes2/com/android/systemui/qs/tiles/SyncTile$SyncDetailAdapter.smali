.class public final Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# instance fields
.field public mSummary:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/SyncTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/SyncTile;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SyncTile;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/SyncTile;)V

    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    sget p1, Lcom/android/systemui/qs/tiles/SyncTile;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/SyncTile;->hasUserRestriction()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const p2, 0x7f0d0388

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const p2, 0x7f0a0684

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->mSummary:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    const p0, 0x7f130458

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const p0, 0x7f130456

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    .line 56
    .line 57
    .line 58
    return-object p1
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x1390

    .line 2
    .line 3
    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile;->getLongClickIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/qs/tiles/SyncTile;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const v0, 0x7f130e0a

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getToggleEnabled()Z
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/qs/tiles/SyncTile;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 6
    .line 7
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/qs/tiles/SyncTile;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 6
    .line 7
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final setToggleState(Z)V
    .locals 6

    .line 1
    sget v0, Lcom/android/systemui/qs/tiles/SyncTile;->$r8$clinit:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SyncTile;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SyncTile;->isBlockedEdmSettingsChange$1()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/SyncTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 27
    .line 28
    move-object v2, v1

    .line 29
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 30
    .line 31
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 32
    .line 33
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/SyncTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 34
    .line 35
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/SyncTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 62
    .line 63
    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 64
    .line 65
    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 66
    .line 67
    if-nez v2, :cond_1

    .line 68
    .line 69
    new-instance p1, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 75
    .line 76
    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v5, "isKeyguardVisible() = "

    .line 94
    .line 95
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 99
    .line 100
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 101
    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, ", isSecure() = "

    .line 106
    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, ", canSkipBouncer() = "

    .line 118
    .line 119
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", isLockFunctionsEnabled() = "

    .line 134
    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    invoke-static {p1, v1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 159
    .line 160
    .line 161
    sget-object v1, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    .line 167
    .line 168
    .line 169
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->mSummary:Landroid/widget/TextView;

    .line 170
    .line 171
    if-eqz p1, :cond_2

    .line 172
    .line 173
    const p1, 0x7f130458

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_2
    const p1, 0x7f130456

    .line 178
    .line 179
    .line 180
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    .line 182
    .line 183
    return-void
.end method
