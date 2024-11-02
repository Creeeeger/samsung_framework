.class public final synthetic Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isLockScreenRotationAllowed()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    iput-boolean v3, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    .line 23
    .line 24
    new-instance v3, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 30
    .line 31
    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->isKeyguardScreenRotationAllowed()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    const-string v4, "lock_screen_allow_rotation"

    .line 40
    .line 41
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getUserActivityTimeout()J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    iput-wide v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    .line 53
    .line 54
    const-string/jumbo v4, "powersaving_switch"

    .line 55
    .line 56
    .line 57
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    const-string/jumbo v4, "psm_switch"

    .line 65
    .line 66
    .line 67
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    const-string v4, "emergency_mode"

    .line 75
    .line 76
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    const-string v4, "low_power"

    .line 84
    .line 85
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    const-string v4, "accessibility_interactive_ui_timeout_ms"

    .line 93
    .line 94
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    xor-int/2addr v4, v2

    .line 106
    if-eqz v4, :cond_1

    .line 107
    .line 108
    new-instance v4, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$2;

    .line 109
    .line 110
    invoke-direct {v4, p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$2;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;)V

    .line 111
    .line 112
    .line 113
    iput-object v4, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelperCallback:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$2;

    .line 114
    .line 115
    new-array v1, v1, [Landroid/net/Uri;

    .line 116
    .line 117
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, [Landroid/net/Uri;

    .line 122
    .line 123
    array-length v3, v1

    .line 124
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, [Landroid/net/Uri;

    .line 129
    .line 130
    iget-object v3, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 131
    .line 132
    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 133
    .line 134
    .line 135
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 136
    .line 137
    if-eqz v1, :cond_2

    .line 138
    .line 139
    check-cast v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 140
    .line 141
    iget-object v3, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 142
    .line 143
    iput-object v3, v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 144
    .line 145
    :cond_2
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    .line 146
    .line 147
    if-eqz v1, :cond_3

    .line 148
    .line 149
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_ROTATIONAL:Z

    .line 150
    .line 151
    if-nez v1, :cond_3

    .line 152
    .line 153
    new-instance v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$3;

    .line 154
    .line 155
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$3;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_3
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_COLOR_CURVE_BLUR:Z

    .line 164
    .line 165
    if-eqz v0, :cond_4

    .line 166
    .line 167
    new-instance v0, Lcom/android/systemui/blur/BouncerColorCurve;

    .line 168
    .line 169
    invoke-direct {v0}, Lcom/android/systemui/blur/BouncerColorCurve;-><init>()V

    .line 170
    .line 171
    .line 172
    iput-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerColorCurve:Lcom/android/systemui/blur/BouncerColorCurve;

    .line 173
    .line 174
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isInitFinished:Z

    .line 175
    .line 176
    return-void

    .line 177
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 180
    .line 181
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    .line 182
    .line 183
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 184
    .line 185
    iget-object v4, v3, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 186
    .line 187
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-eqz v5, :cond_5

    .line 192
    .line 193
    new-instance v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$setHasTopUi$1;

    .line 194
    .line 195
    invoke-direct {v1, v3, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$setHasTopUi$1;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;Z)V

    .line 196
    .line 197
    .line 198
    iget-object v0, v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->executor:Ljava/util/concurrent/ExecutorService;

    .line 199
    .line 200
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;

    .line 201
    .line 202
    const-string v4, "IActivityManager#setHasTopUi"

    .line 203
    .line 204
    invoke-direct {v3, v1, v4}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 208
    .line 209
    .line 210
    move v1, v2

    .line 211
    :cond_5
    if-eqz v1, :cond_6

    .line 212
    .line 213
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    .line 214
    .line 215
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUi:Z

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mActivityManager:Landroid/app/IActivityManager;

    .line 219
    .line 220
    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    .line 221
    .line 222
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setHasTopUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    const-string v1, "NotificationShadeWindowController"

    .line 228
    .line 229
    const-string v2, "Failed to call setHasTopUi"

    .line 230
    .line 231
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    .line 233
    .line 234
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    .line 235
    .line 236
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUi:Z

    .line 237
    .line 238
    :goto_2
    return-void

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
