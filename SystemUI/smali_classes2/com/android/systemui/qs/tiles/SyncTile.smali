.class public final Lcom/android/systemui/qs/tiles/SyncTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mDetailAdapter:Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public final mReceiver:Lcom/android/systemui/qs/tiles/SyncTile$1;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/systemui/qs/tiles/SyncTile$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/SyncTile$1;-><init>(Lcom/android/systemui/qs/tiles/SyncTile;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mReceiver:Lcom/android/systemui/qs/tiles/SyncTile$1;

    .line 10
    .line 11
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 12
    .line 13
    iput-object p12, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 14
    .line 15
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 16
    .line 17
    new-instance p2, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;

    .line 18
    .line 19
    const/4 p3, 0x0

    .line 20
    invoke-direct {p2, p0, p3}, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/SyncTile;I)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;

    .line 24
    .line 25
    iput-object p13, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 26
    .line 27
    new-instance p2, Landroid/content/IntentFilter;

    .line 28
    .line 29
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object p3, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    .line 33
    .line 34
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p3, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 42
    .line 43
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p10, p2, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 47
    .line 48
    .line 49
    iput-object p14, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile;->hasUserRestriction()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance p0, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v0, "android.settings.SYNC_SETTINGS"

    .line 12
    .line 13
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x138f

    .line 2
    .line 3
    return p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v0, 0x7f130e0a

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "handleClick : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 9
    .line 10
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 11
    .line 12
    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile;->hasUserRestriction()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile;->isBlockedEdmSettingsChange$1()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 44
    .line 45
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 46
    .line 47
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 78
    .line 79
    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 80
    .line 81
    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 82
    .line 83
    if-nez v2, :cond_2

    .line 84
    .line 85
    new-instance v0, Lcom/android/systemui/qs/tiles/SyncTile$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/SyncTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/SyncTile;Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 91
    .line 92
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v2, "isKeyguardVisible() = "

    .line 99
    .line 100
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v2, ", isSecure() = "

    .line 109
    .line 110
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, ", canSkipBouncer() = "

    .line 121
    .line 122
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v2, ", isLockFunctionsEnabled() = "

    .line 137
    .line 138
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    invoke-static {p1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    xor-int/lit8 p1, p1, 0x1

    .line 164
    .line 165
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 166
    .line 167
    if-eqz v1, :cond_3

    .line 168
    .line 169
    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_3

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_3
    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 177
    .line 178
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 179
    .line 180
    const v3, 0x7f140560

    .line 181
    .line 182
    .line 183
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 184
    .line 185
    .line 186
    iput-object v1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 187
    .line 188
    if-eqz p1, :cond_4

    .line 189
    .line 190
    const v2, 0x7f130459

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_4
    const v2, 0x7f130457

    .line 195
    .line 196
    .line 197
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 198
    .line 199
    .line 200
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 201
    .line 202
    if-eqz p1, :cond_5

    .line 203
    .line 204
    const v2, 0x7f130458

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_5
    const v2, 0x7f130456

    .line 209
    .line 210
    .line 211
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 212
    .line 213
    .line 214
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 215
    .line 216
    new-instance v2, Lcom/android/systemui/qs/tiles/SyncTile$$ExternalSyntheticLambda1;

    .line 217
    .line 218
    invoke-direct {v2, p0, p1}, Lcom/android/systemui/qs/tiles/SyncTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/SyncTile;Z)V

    .line 219
    .line 220
    .line 221
    const p1, 0x7f130c57

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 228
    .line 229
    new-instance v1, Lcom/android/systemui/qs/tiles/SyncTile$$ExternalSyntheticLambda2;

    .line 230
    .line 231
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SyncTile$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tiles/SyncTile;)V

    .line 232
    .line 233
    .line 234
    const v2, 0x7f130300

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 241
    .line 242
    new-instance v1, Lcom/android/systemui/qs/tiles/SyncTile$$ExternalSyntheticLambda3;

    .line 243
    .line 244
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SyncTile$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/tiles/SyncTile;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 251
    .line 252
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 253
    .line 254
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;Z)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 258
    .line 259
    invoke-interface {p1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    .line 260
    .line 261
    .line 262
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 263
    .line 264
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 265
    .line 266
    .line 267
    :goto_2
    return-void
.end method

.method public final handleDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mReceiver:Lcom/android/systemui/qs/tiles/SyncTile$1;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "onDestroy(): dismiss the dialog"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SyncTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final handleSecondaryClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile;->hasUserRestriction()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile;->isBlockedEdmSettingsChange$1()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->showDetail(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    .line 3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-static {p2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const v1, 0x7f130e0a

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 26
    .line 27
    const v0, 0x7f080e8b

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile;->hasUserRestriction()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 47
    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    const/4 p2, 0x2

    .line 51
    :cond_1
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public final hasUserRestriction()Z
    .locals 3

    .line 1
    const-string v0, "no_modify_accounts"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v2, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "hasUserRestriction: "

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return v0
.end method

.method public final isAvailable()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_VZW_BRANDING:Z

    .line 2
    .line 3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "CscFeature_SystemUI_ConfigRemoveQuickSettingItem"

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Sync"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    xor-int/2addr v0, v1

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 28
    .line 29
    invoke-interface {p0, v0}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    :goto_0
    return v1
.end method

.method public final isBlockedEdmSettingsChange$1()Z
    .locals 10

    .line 1
    const-string v0, "false"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "phone"

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 17
    .line 18
    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    .line 19
    .line 20
    const-string v5, "isSettingsChangesAllowed"

    .line 21
    .line 22
    invoke-static {v3, v4, v5, v1}, Lcom/android/systemui/util/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const-string v5, "content://com.sec.knox.provider/RoamingPolicy"

    .line 27
    .line 28
    const-string v6, "isRoamingSyncEnabled"

    .line 29
    .line 30
    invoke-static {v3, v5, v6, v1}, Lcom/android/systemui/util/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v3, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    move v1, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v1, v5

    .line 41
    :goto_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isSupportESim()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    const-string v8, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EMBEDDED_SIM_SLOTSWITCH"

    .line 54
    .line 55
    const-string v9, ""

    .line 56
    .line 57
    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    const-string/jumbo v8, "tsds"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string/jumbo v9, "supportESIMSlot: "

    .line 75
    .line 76
    .line 77
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v9, " supportSwitingESIM: "

    .line 84
    .line 85
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    const-string v9, "DeviceType"

    .line 96
    .line 97
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMultiSimSupported()Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-eqz v8, :cond_2

    .line 105
    .line 106
    if-eqz v6, :cond_1

    .line 107
    .line 108
    if-nez v7, :cond_1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    move v6, v3

    .line 112
    goto :goto_2

    .line 113
    :cond_2
    :goto_1
    move v6, v5

    .line 114
    :goto_2
    if-eqz v6, :cond_4

    .line 115
    .line 116
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    const-string v6, "gsm.operator.isroaming"

    .line 125
    .line 126
    invoke-static {v2, v6, v0}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-nez v2, :cond_3

    .line 135
    .line 136
    const-string/jumbo v2, "true"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_3

    .line 144
    .line 145
    move v2, v3

    .line 146
    goto :goto_3

    .line 147
    :cond_3
    move v2, v5

    .line 148
    :cond_4
    :goto_3
    if-eqz v4, :cond_6

    .line 149
    .line 150
    if-eqz v1, :cond_5

    .line 151
    .line 152
    if-eqz v2, :cond_5

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_5
    move v3, v5

    .line 156
    :cond_6
    :goto_4
    const-string v0, "isBlockedEdmSettingsChange: "

    .line 157
    .line 158
    invoke-static {v0, v3}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    return v3
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
