.class public final synthetic Lcom/android/systemui/pluginlock/component/PluginLockNotification$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pluginlock/component/PluginLockNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pluginlock/component/PluginLockNotification;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "onChange() uri: "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "PluginLockNotification"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_6

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "onChange() mCallbackValue: "

    .line 30
    .line 31
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget v2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, " , mVisibility: "

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    .line 45
    .line 46
    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-wide v2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 50
    .line 51
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    cmp-long v0, v2, v4

    .line 54
    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    iget v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 58
    .line 59
    const/4 v2, -0x1

    .line 60
    if-ne v0, v2, :cond_0

    .line 61
    .line 62
    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    .line 63
    .line 64
    if-ne v0, v2, :cond_0

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    iget-wide v5, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 73
    .line 74
    sub-long/2addr v3, v5

    .line 75
    const-wide/16 v5, 0x1f40

    .line 76
    .line 77
    cmp-long v0, v3, v5

    .line 78
    .line 79
    const/4 v3, 0x1

    .line 80
    const-string v4, "lock_screen_show_notifications"

    .line 81
    .line 82
    if-gez v0, :cond_2

    .line 83
    .line 84
    iget v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->getCurrentNotificationType()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eq v0, v5, :cond_1

    .line 91
    .line 92
    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    .line 93
    .line 94
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(ILjava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-ne v0, v5, :cond_2

    .line 99
    .line 100
    :cond_1
    const-string p0, "onChange() ignored"

    .line 101
    .line 102
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    goto/16 :goto_2

    .line 106
    .line 107
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 108
    .line 109
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {p1, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    const-string v6, "extras"

    .line 121
    .line 122
    const-string/jumbo v7, "update_lockstar_data_item"

    .line 123
    .line 124
    .line 125
    const-string/jumbo v8, "update_lockstar_data"

    .line 126
    .line 127
    .line 128
    const-string v9, "action"

    .line 129
    .line 130
    if-eqz v5, :cond_3

    .line 131
    .line 132
    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance p1, Landroid/os/Bundle;

    .line 136
    .line 137
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v5, "notification_visibility"

    .line 141
    .line 142
    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(ILjava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_3
    const-string v3, "lockscreen_minimizing_notification"

    .line 157
    .line 158
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_4

    .line 167
    .line 168
    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    new-instance p1, Landroid/os/Bundle;

    .line 172
    .line 173
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v3, "notification_type"

    .line 177
    .line 178
    invoke-virtual {p1, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->getCurrentNotificationType()I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 189
    .line 190
    .line 191
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string/jumbo v3, "updateLockStarStoredData() bundle"

    .line 194
    .line 195
    .line 196
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 214
    .line 215
    check-cast p1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 216
    .line 217
    invoke-virtual {p1, v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onEventReceived(Landroid/os/Bundle;)V

    .line 218
    .line 219
    .line 220
    const-string/jumbo p1, "recover()"

    .line 221
    .line 222
    .line 223
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mVisibility:I

    .line 227
    .line 228
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationBackup(II)V

    .line 229
    .line 230
    .line 231
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 232
    .line 233
    if-eqz p1, :cond_6

    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    if-eqz p1, :cond_6

    .line 240
    .line 241
    const/4 v0, -0x2

    .line 242
    invoke-virtual {p1, v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setNotificationState(I)V

    .line 243
    .line 244
    .line 245
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    .line 248
    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_5
    :goto_1
    const-string p0, "onChange() wrong state"

    .line 252
    .line 253
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    :cond_6
    :goto_2
    return-void
.end method
