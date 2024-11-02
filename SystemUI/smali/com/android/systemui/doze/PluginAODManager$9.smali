.class public final Lcom/android/systemui/doze/PluginAODManager$9;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$9;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "MSG_EXPAND_NOTI_PANEL: mDozing="

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager$9;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 17
    .line 18
    iget-boolean v1, v1, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    .line 19
    .line 20
    const-string v2, "PluginAODManager"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$9;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    .line 28
    .line 29
    if-nez v0, :cond_a

    .line 30
    .line 31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Landroid/service/notification/StatusBarNotification;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 38
    .line 39
    const-string v1, "DozeServiceHost"

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    const-string p0, "animateExpandLockedShadePanel() called before initialize(), return"

    .line 44
    .line 45
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "animateExpandLockedShadePanel sbn="

    .line 53
    .line 54
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    const/4 v3, 0x1

    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    move v4, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move v4, v2

    .line 64
    :goto_0
    invoke-static {v0, v4, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mSecPanelPolicyLazy:Ldagger/Lazy;

    .line 68
    .line 69
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Lcom/android/systemui/shade/SecPanelPolicy;

    .line 74
    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelPolicy;->mCommonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 86
    .line 87
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 96
    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isShowingPublic()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_4

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 107
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelPolicy;->mSysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 108
    .line 109
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 110
    .line 111
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 112
    .line 113
    if-ne v0, v3, :cond_5

    .line 114
    .line 115
    move v0, v3

    .line 116
    goto :goto_3

    .line 117
    :cond_5
    move v0, v2

    .line 118
    :goto_3
    if-eqz v0, :cond_7

    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelPolicy;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_6

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelPolicy;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 130
    .line 131
    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShade(Landroid/view/View;Z)V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelPolicy;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 136
    .line 137
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 138
    .line 139
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->animateExpandNotificationsPanel()V

    .line 142
    .line 143
    .line 144
    :goto_4
    if-eqz p1, :cond_a

    .line 145
    .line 146
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 147
    .line 148
    if-eqz p1, :cond_a

    .line 149
    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v0, "[animateExpandShadeLockedPanel]"

    .line 153
    .line 154
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v1, "isKeyguardState:"

    .line 160
    .line 161
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Lcom/android/systemui/shade/SecPanelPolicy;->mSysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 165
    .line 166
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 167
    .line 168
    iget v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 169
    .line 170
    if-ne v1, v3, :cond_8

    .line 171
    .line 172
    move v2, v3

    .line 173
    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelPolicy;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 184
    .line 185
    check-cast p0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 186
    .line 187
    const-string v0, ""

    .line 188
    .line 189
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/SecPanelLoggerImpl;->appendStatusBarState(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    sget-boolean v0, Lcom/android/systemui/log/SecPanelLoggerImpl;->DEBUG_MODE:Z

    .line 197
    .line 198
    if-eqz v0, :cond_9

    .line 199
    .line 200
    const-string v0, "SecPanelLogger"

    .line 201
    .line 202
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    :cond_9
    const-string v0, "EXTERNAL_INPUT"

    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/systemui/log/SecPanelLoggerImpl;->writer:Lcom/android/systemui/log/SecPanelLogWriter;

    .line 208
    .line 209
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/log/SecPanelLogWriter;->logPanel(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_a
    :goto_5
    return-void
.end method
