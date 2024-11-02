.class public final Lcom/android/systemui/statusbar/phone/CoverHostImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/cover/CoverHost;


# instance fields
.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mContext:Landroid/content/Context;

.field public mCoverState:Lcom/samsung/android/cover/CoverState;

.field public final mCoverUtil:Lcom/android/systemui/util/CoverUtil;

.field public final mIndicatorCoverManager:Lcom/android/systemui/statusbar/phone/IndicatorCoverManager;

.field public mIsCoverAppCovered:Z

.field public mIsCoverClosed:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public final mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mPluginAODManagerLazy:Ldagger/Lazy;

.field public final mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

.field public final mSysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/IndicatorCoverManager;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/util/CoverUtil;Ldagger/Lazy;Lcom/android/systemui/pluginlock/PluginLockManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/phone/CentralSurfaces;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/phone/IndicatorCoverManager;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/util/CoverUtil;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mSysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 18
    .line 19
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 20
    .line 21
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 22
    .line 23
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIndicatorCoverManager:Lcom/android/systemui/statusbar/phone/IndicatorCoverManager;

    .line 24
    .line 25
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 26
    .line 27
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 28
    .line 29
    iput-object p11, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 30
    .line 31
    iput-object p12, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    .line 32
    .line 33
    iput-object p13, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 34
    .line 35
    iput-object p14, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final isAutomaticUnlock(Lcom/samsung/android/cover/CoverState;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAutomaticUnlockEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 24
    .line 25
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    :cond_0
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_1
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public final isNeedScrimAnimation()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 16
    .line 17
    :goto_0
    const/16 v0, 0x11

    .line 18
    .line 19
    if-ne v0, p0, :cond_1

    .line 20
    .line 21
    const-string p0, "CoverHostImpl"

    .line 22
    .line 23
    const-string v0, "isNeedScrimAnimation false"

    .line 24
    .line 25
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 p0, 0x1

    .line 31
    :goto_1
    return p0
.end method

.method public final updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 5
    .line 6
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_SAFEMODE:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    xor-int/2addr v0, v1

    .line 15
    iget v2, p1, Lcom/samsung/android/cover/CoverState;->type:I

    .line 16
    .line 17
    const-string v3, "CoverHostImpl"

    .line 18
    .line 19
    const-string/jumbo v4, "updateCoverState: attach = %s, cover closed = %s, type = %d"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-static {v3, v4, v5}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 48
    .line 49
    invoke-interface {v3, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 50
    .line 51
    .line 52
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    if-eqz v3, :cond_5

    .line 56
    .line 57
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    sget-object v6, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    .line 64
    .line 65
    const/16 v6, 0x11

    .line 66
    .line 67
    if-ne v5, v6, :cond_2

    .line 68
    .line 69
    move v5, v1

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move v5, v4

    .line 72
    :goto_0
    if-eqz v5, :cond_5

    .line 73
    .line 74
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 75
    .line 76
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 77
    .line 78
    check-cast v5, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;

    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v8, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v9, "onCoverStateChanged "

    .line 86
    .line 87
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    const-string v9, "PluginLockManagerImpl"

    .line 98
    .line 99
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    if-eqz v3, :cond_5

    .line 103
    .line 104
    invoke-virtual {v7}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-ne v3, v6, :cond_3

    .line 109
    .line 110
    move v3, v1

    .line 111
    goto :goto_1

    .line 112
    :cond_3
    move v3, v4

    .line 113
    :goto_1
    if-eqz v3, :cond_5

    .line 114
    .line 115
    iget-object v3, v5, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 116
    .line 117
    if-eq v3, v7, :cond_5

    .line 118
    .line 119
    iput-object v7, v5, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 120
    .line 121
    iget-boolean v3, v7, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 122
    .line 123
    if-ne v3, v1, :cond_4

    .line 124
    .line 125
    move v3, v1

    .line 126
    goto :goto_2

    .line 127
    :cond_4
    move v3, v4

    .line 128
    :goto_2
    invoke-virtual {v5, v3}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->onFolderStateChanged(Z)V

    .line 129
    .line 130
    .line 131
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-nez v3, :cond_6

    .line 136
    .line 137
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    .line 138
    .line 139
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    .line 140
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 142
    .line 143
    invoke-interface {v0, v4}, Lcom/android/keyguard/KeyguardSecViewController;->onCoverSwitchStateChanged(Z)V

    .line 144
    .line 145
    .line 146
    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_e

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->updateCoverWindow()V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_4

    .line 156
    .line 157
    :cond_6
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    .line 158
    .line 159
    if-eq v3, v0, :cond_e

    .line 160
    .line 161
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    .line 162
    .line 163
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 164
    .line 165
    invoke-interface {v3, v0}, Lcom/android/keyguard/KeyguardSecViewController;->onCoverSwitchStateChanged(Z)V

    .line 166
    .line 167
    .line 168
    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_c

    .line 173
    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 175
    .line 176
    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 177
    .line 178
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-nez v0, :cond_7

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_7
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    .line 186
    .line 187
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    .line 192
    .line 193
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->isDesktopMode()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_8

    .line 200
    .line 201
    const-string v0, "CoverHostImpl"

    .line 202
    .line 203
    const-string v1, "Don\'t need to update doKeyguardLaterLocked by desktopMode"

    .line 204
    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->canHandleBackPressed()Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_9

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 219
    .line 220
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->isAutomaticUnlock(Lcom/samsung/android/cover/CoverState;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-nez v0, :cond_b

    .line 225
    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 227
    .line 228
    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 229
    .line 230
    if-eqz v0, :cond_a

    .line 231
    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 233
    .line 234
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 235
    .line 236
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getLock()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    monitor-enter v2

    .line 241
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->cancelLockWhenCoverIsOpened(Z)V

    .line 242
    .line 243
    .line 244
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .line 246
    monitor-exit v2

    .line 247
    goto :goto_3

    .line 248
    :catchall_0
    move-exception p0

    .line 249
    monitor-exit v2

    .line 250
    throw p0

    .line 251
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-nez v0, :cond_b

    .line 258
    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 260
    .line 261
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iget-object v0, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->doKeyguardLaterLocked:Lkotlin/jvm/functions/Function0;

    .line 268
    .line 269
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->updateCoverWindow()V

    .line 273
    .line 274
    .line 275
    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    .line 276
    .line 277
    if-nez v0, :cond_e

    .line 278
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 280
    .line 281
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 282
    .line 283
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 284
    .line 285
    if-eqz v0, :cond_d

    .line 286
    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 288
    .line 289
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->isAutomaticUnlock(Lcom/samsung/android/cover/CoverState;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_d

    .line 294
    .line 295
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_COVER_OPENED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 296
    .line 297
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 298
    .line 299
    .line 300
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 301
    .line 302
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetail(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 303
    .line 304
    .line 305
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 310
    .line 311
    invoke-interface {v1, v0}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(I)V

    .line 312
    .line 313
    .line 314
    const-string v0, "CoverHostImpl"

    .line 315
    .line 316
    const-string/jumbo v1, "updateCoverWindow: keyguard dismissed by cover"

    .line 317
    .line 318
    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mSysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 323
    .line 324
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 325
    .line 326
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 327
    .line 328
    if-nez v0, :cond_e

    .line 329
    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 331
    .line 332
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 333
    .line 334
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 335
    .line 336
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->instantCollapse()V

    .line 337
    .line 338
    .line 339
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 340
    .line 341
    check-cast v0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 342
    .line 343
    invoke-virtual {v0}, Lcom/android/systemui/shade/ShadeControllerImpl;->runPostCollapseRunnables()V

    .line 344
    .line 345
    .line 346
    :cond_e
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    .line 347
    .line 348
    iput-object p1, p0, Lcom/android/systemui/util/CoverUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 349
    .line 350
    iget-object p0, p0, Lcom/android/systemui/util/CoverUtil;->mCoverStateChangedListeners:Ljava/util/ArrayList;

    .line 351
    .line 352
    new-instance v0, Lcom/android/systemui/util/CoverUtil$$ExternalSyntheticLambda0;

    .line 353
    .line 354
    invoke-direct {v0, p1}, Lcom/android/systemui/util/CoverUtil$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/cover/CoverState;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 358
    .line 359
    .line 360
    return-void
.end method

.method public final updateCoverWindow()V
    .locals 7

    .line 1
    const-string/jumbo v0, "updateCoverWindow: START"

    .line 2
    .line 3
    .line 4
    const-string v1, "CoverHostImpl"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 17
    .line 18
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 19
    .line 20
    check-cast v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 23
    .line 24
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    .line 25
    .line 26
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    iput-boolean v4, v6, Lcom/android/systemui/shade/NotificationShadeWindowState;->isCoverClosed:Z

    .line 33
    .line 34
    iput-boolean v5, v6, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverAppShowing:Z

    .line 35
    .line 36
    iput v0, v6, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverType:I

    .line 37
    .line 38
    invoke-virtual {v3, v6}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 39
    .line 40
    .line 41
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    .line 47
    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_2

    .line 55
    .line 56
    :cond_1
    const/16 v3, 0xf

    .line 57
    .line 58
    if-eq v0, v3, :cond_2

    .line 59
    .line 60
    const/16 v3, 0x10

    .line 61
    .line 62
    if-ne v0, v3, :cond_3

    .line 63
    .line 64
    :cond_2
    const/4 v0, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move v0, v4

    .line 67
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 68
    .line 69
    iget-object v5, v3, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    .line 70
    .line 71
    iget-boolean v6, v5, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mChangeStatusBarHeight:Z

    .line 72
    .line 73
    if-eq v6, v0, :cond_4

    .line 74
    .line 75
    iput-boolean v0, v5, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mChangeStatusBarHeight:Z

    .line 76
    .line 77
    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;Z)V

    .line 78
    .line 79
    .line 80
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    .line 81
    .line 82
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIndicatorCoverManager:Lcom/android/systemui/statusbar/phone/IndicatorCoverManager;

    .line 83
    .line 84
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 85
    .line 86
    if-nez v0, :cond_6

    .line 87
    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/statusbar/phone/IndicatorCoverManager;->updateCoverMargin(IZ)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    .line 101
    .line 102
    invoke-virtual {p0, v4}, Lcom/android/systemui/doze/PluginAODManager;->disableStatusBar(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_6
    :goto_2
    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    .line 111
    .line 112
    const/high16 v2, 0x10000

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Lcom/android/systemui/doze/PluginAODManager;->disableStatusBar(I)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 118
    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 122
    .line 123
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    .line 124
    .line 125
    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/statusbar/phone/IndicatorCoverManager;->updateCoverMargin(IZ)V

    .line 126
    .line 127
    .line 128
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed()V

    .line 131
    .line 132
    .line 133
    :goto_3
    const-string/jumbo p0, "updateCoverWindow: END"

    .line 134
    .line 135
    .line 136
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    return-void
.end method
