.class public final Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;


# instance fields
.field public final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchEvent(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "dispatchEvent() event: "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "PluginLockDelegateSysUi"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string v0, "action_data_clear"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onDataCleared()V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public final getDynamicLockData()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final goToLockedShade()V
    .locals 3

    .line 1
    const-string v0, "PluginLockDelegateSysUi"

    .line 2
    .line 3
    const-string v1, "goToLockedShade"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 9
    .line 10
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 14
    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v0, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-interface {v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->goToLockedShade()V

    .line 40
    .line 41
    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method public final isSecure()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 8
    .line 9
    check-cast v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v1, v3, :cond_1

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-interface {v2}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->isSecure()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    return v0
.end method

.method public final makeExpandedInvisible()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 7
    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v0, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->makeExpandedInvisible()V

    .line 33
    .line 34
    .line 35
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public final onLaunchTransitionFadingEnded()V
    .locals 0

    .line 1
    return-void
.end method

.method public final requestDismissKeyguard(Landroid/content/Intent;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "requestDismissKeyguard() "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "PluginLockDelegateSysUi"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 22
    .line 23
    if-eqz p0, :cond_9

    .line 24
    .line 25
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_9

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    move v3, v2

    .line 62
    move v4, v3

    .line 63
    :goto_0
    move-object v5, v1

    .line 64
    check-cast v5, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-ge v3, v6, :cond_3

    .line 71
    .line 72
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 77
    .line 78
    if-eqz v5, :cond_1

    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 85
    .line 86
    if-eqz v5, :cond_1

    .line 87
    .line 88
    instance-of v6, v5, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 89
    .line 90
    if-eqz v6, :cond_1

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-interface {v5, v4}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->isNoUnlockNeed(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    move v4, v2

    .line 104
    :cond_3
    const-string/jumbo v3, "requestDismissKeyguard isNoUnlockNeedApp: "

    .line 105
    .line 106
    .line 107
    invoke-static {v3, v4}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    new-array v5, v2, [Ljava/lang/Object;

    .line 112
    .line 113
    const-string v6, "PluginLockMediatorImpl"

    .line 114
    .line 115
    invoke-static {v6, v3, v5}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    if-eqz v4, :cond_5

    .line 119
    .line 120
    :goto_1
    move-object p0, v1

    .line 121
    check-cast p0, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-ge v2, p1, :cond_9

    .line 128
    .line 129
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 134
    .line 135
    if-eqz p0, :cond_4

    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    check-cast p0, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 142
    .line 143
    instance-of p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 144
    .line 145
    if-eqz p1, :cond_4

    .line 146
    .line 147
    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUnNeedLockAppStarted(Landroid/content/ComponentName;)V

    .line 148
    .line 149
    .line 150
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-eqz v0, :cond_6

    .line 158
    .line 159
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    goto :goto_2

    .line 172
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-eqz v0, :cond_7

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    goto :goto_2

    .line 187
    :cond_7
    move v0, v2

    .line 188
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    .line 189
    .line 190
    const/high16 v3, 0xc000000

    .line 191
    .line 192
    invoke-static {p0, v0, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    sget-object p1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_PLUGIN_LOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 197
    .line 198
    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 199
    .line 200
    .line 201
    :goto_3
    move-object p1, v1

    .line 202
    check-cast p1, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-ge v2, v0, :cond_9

    .line 209
    .line 210
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 215
    .line 216
    if-eqz p1, :cond_8

    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    check-cast p1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 223
    .line 224
    if-eqz p1, :cond_8

    .line 225
    .line 226
    invoke-interface {p1, p0}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    .line 227
    .line 228
    .line 229
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_9
    :goto_4
    return-void
.end method

.method public final setBiometricRecognition(Z)V
    .locals 3

    .line 1
    const-string v0, "PluginLockDelegateSysUi"

    .line 2
    .line 3
    const-string/jumbo v1, "setBiometricRecognition"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->updateBiometricRecognition(Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;ZI)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public final setDynamicLockData(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setDynamicLockData : "

    .line 2
    .line 3
    .line 4
    const-string v1, "PluginLockDelegateSysUi"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string/jumbo p0, "wrong request"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->setDynamicLockDataInternal(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Landroid/os/Handler;

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public final setDynamicLockDataInternal(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "apply()"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mDynamicLockData:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 12
    .line 13
    check-cast v3, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-ge v2, v4, :cond_1

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-interface {v3, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->setDynamicLockData(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string/jumbo v3, "setPluginLockItem() mDynamicLockData:"

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mDynamicLockData:Ljava/lang/String;

    .line 54
    .line 55
    const-string v4, "PluginLockMediatorImpl"

    .line 56
    .line 57
    invoke-static {v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    .line 61
    .line 62
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mDynamicLockData:Ljava/lang/String;

    .line 66
    .line 67
    const-class v5, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 68
    .line 69
    invoke-virtual {v2, v5, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/android/systemui/pluginlock/model/DynamicLockData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception v2

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v5, "[parse, apply] "

    .line 80
    .line 81
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {p1, v4, v3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string/jumbo v5, "setPluginLockItem() currData:"

    .line 105
    .line 106
    .line 107
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 111
    .line 112
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string/jumbo v5, "setPluginLockItem() newData:"

    .line 125
    .line 126
    .line 127
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    if-eqz v2, :cond_5

    .line 141
    .line 142
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    .line 143
    .line 144
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 145
    .line 146
    invoke-virtual {v3, v5, v2}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 147
    .line 148
    .line 149
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    const-string v3, "PluginLockSecure"

    .line 155
    .line 156
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getCaptureData()Lcom/android/systemui/pluginlock/model/CaptureData;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/model/CaptureData;->getType()Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 168
    .line 169
    .line 170
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 171
    .line 172
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 173
    .line 174
    invoke-virtual {v3, v5, v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 175
    .line 176
    .line 177
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    .line 178
    .line 179
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    const-string v3, "PluginLockHelpText"

    .line 183
    .line 184
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :catchall_1
    move-exception v3

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v6, "[basic, apply] "

    .line 197
    .line 198
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {p1, v4, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 216
    .line 217
    .line 218
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    .line 219
    .line 220
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 221
    .line 222
    invoke-virtual {v3, v5, v2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :catchall_2
    move-exception v3

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    const-string v6, "[clock, apply] "

    .line 230
    .line 231
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-virtual {p1, v4, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 249
    .line 250
    .line 251
    :goto_3
    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    .line 252
    .line 253
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 254
    .line 255
    invoke-virtual {v3, v5, v2}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 256
    .line 257
    .line 258
    goto :goto_4

    .line 259
    :catchall_3
    move-exception v3

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string v6, "[music, apply] "

    .line 263
    .line 264
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-virtual {p1, v4, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 282
    .line 283
    .line 284
    :goto_4
    :try_start_4
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    .line 285
    .line 286
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 287
    .line 288
    invoke-virtual {v3, v5, v2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 289
    .line 290
    .line 291
    goto :goto_5

    .line 292
    :catchall_4
    move-exception v3

    .line 293
    new-instance v5, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string v6, "[notification, apply] "

    .line 296
    .line 297
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    invoke-virtual {p1, v4, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 315
    .line 316
    .line 317
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    .line 318
    .line 319
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 320
    .line 321
    invoke-virtual {v3, v5, v2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 322
    .line 323
    .line 324
    goto :goto_6

    .line 325
    :catchall_5
    move-exception v3

    .line 326
    new-instance v5, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    const-string v6, "[shortcut, apply] "

    .line 329
    .line 330
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    invoke-virtual {p1, v4, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 348
    .line 349
    .line 350
    :goto_6
    :try_start_6
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    .line 351
    .line 352
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    const-string v5, "PluginLockStatusBar"

    .line 356
    .line 357
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isStatusBarIconVisible()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isStatusBarNetworkVisible()Z

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    iget-object v3, v3, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;

    .line 369
    .line 370
    if-eqz v3, :cond_4

    .line 371
    .line 372
    const/4 v6, 0x4

    .line 373
    if-eqz v0, :cond_2

    .line 374
    .line 375
    move v0, v1

    .line 376
    goto :goto_7

    .line 377
    :cond_2
    move v0, v6

    .line 378
    :goto_7
    if-eqz v5, :cond_3

    .line 379
    .line 380
    goto :goto_8

    .line 381
    :cond_3
    move v1, v6

    .line 382
    :goto_8
    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;->onVisibilityUpdated(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 383
    .line 384
    .line 385
    goto :goto_9

    .line 386
    :catchall_6
    move-exception v0

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    const-string v3, "[statusbar, apply] "

    .line 390
    .line 391
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-virtual {p1, v4, v1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 409
    .line 410
    .line 411
    :cond_4
    :goto_9
    iput-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 412
    .line 413
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    .line 414
    .line 415
    .line 416
    move-result p1

    .line 417
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    .line 418
    .line 419
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->publishLockStarState()V

    .line 420
    .line 421
    .line 422
    :cond_5
    return-void
.end method

.method public final setLockscreenTimer(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setLockscreenTimer() sec: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "PluginLockDelegateSysUi"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 22
    .line 23
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-ne v0, v1, :cond_0

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->onScreenTimeoutChanged(J)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    .line 46
    .line 47
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda4;

    .line 48
    .line 49
    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method public final setPluginLockInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->setViewMode(I)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    check-cast p2, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 13
    .line 14
    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final setPluginLockWallpaper(IILjava/lang/String;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "setPluginLockWallpaper() wallpaperType:"

    .line 2
    .line 3
    .line 4
    const-string v1, "PluginLockDelegateSysUi"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 10
    .line 11
    move-object v0, p0

    .line 12
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 13
    .line 14
    sget v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->sScreenType:I

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    move v2, p1

    .line 18
    move v3, p2

    .line 19
    move-object v4, p3

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setPluginWallpaper(IIILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setPluginWallpaper(IIILjava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "setPluginWallpaper() screen: "

    const-string v1, ", wallpaperType:"

    const-string v2, "PluginLockDelegateSysUi"

    .line 1
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setPluginWallpaper(IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setPluginWallpaper(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "setPluginWallpaper() screen: "

    const-string v1, ", wallpaperType:"

    const-string v2, ", iCrops = "

    .line 18
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PluginLockDelegateSysUi"

    .line 19
    invoke-static {v0, p5, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setPluginWallpaper(IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setPluginWallpaperHints(ILjava/lang/String;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "setPluginWallpaperHints() screen: "

    .line 2
    .line 3
    .line 4
    const-string v1, ", hints: "

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/util/Scanner;

    .line 16
    .line 17
    invoke-direct {v1, p2}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "</Version>"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const-string v5, "</Which>"

    .line 41
    .line 42
    const-string v6, "</FontColor>"

    .line 43
    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    :cond_1
    const-string v4, ""

    .line 59
    .line 60
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v2, ","

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v0, "PluginLockDelegateSysUi"

    .line 96
    .line 97
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 101
    .line 102
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 103
    .line 104
    invoke-virtual {p0, p2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setPluginWallpaperHint(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final setRotationAllowed(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setScreenOrientation(ZZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setScreenOrientation(ZZ)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final setTimeOut(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->updateOverlayUserTimeout(Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;ZI)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public final setViewMode(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setViewMode : "

    .line 2
    .line 3
    .line 4
    const-string v1, "PluginLockDelegateSysUi"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onViewModeChanged(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final setWallpaperHints(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setWallpaperHints() : "

    .line 2
    .line 3
    .line 4
    const-string v1, "PluginLockDelegateSysUi"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setPluginWallpaperHint(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final updateDynamicLockData(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->sScreenType:I

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v3, "updateDynamicLockData() screenType: "

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, ", dynamicLockData: "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "PluginLockDelegateSysUi"

    .line 35
    .line 36
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    const-string/jumbo p0, "updateDynamicLockData() wrong request"

    .line 42
    .line 43
    .line 44
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    :cond_1
    if-ne v1, v4, :cond_2

    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    new-array p0, p0, [Ljava/lang/Object;

    .line 61
    .line 62
    const-string/jumbo p1, "updateDynamicLockData() skip"

    .line 63
    .line 64
    .line 65
    invoke-static {v3, p1, p0}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-ne v1, v2, :cond_3

    .line 78
    .line 79
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->updateDynamicLockData(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    new-instance v0, Landroid/os/Handler;

    .line 86
    .line 87
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;

    .line 95
    .line 96
    invoke-direct {v1, p0, p1, v4}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    .line 101
    .line 102
    :goto_0
    return-void
.end method

.method public final updateWindowSecureState(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "updateWindowSecureState : "

    .line 2
    .line 3
    .line 4
    const-string v1, "PluginLockDelegateSysUi"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->updateWindowSecureState(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final userActivity()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 7
    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v0, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUserActivity()V

    .line 33
    .line 34
    .line 35
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method
