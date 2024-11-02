.class public final Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const-string v0, "com.nttdocomo.android.screenlockservice"

    .line 2
    .line 3
    const-string v1, "exception "

    .line 4
    .line 5
    const-string/jumbo v2, "unread count: "

    .line 6
    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 9
    .line 10
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DEBUG:Z

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string/jumbo v3, "sendUnreadCountBroadcast"

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v5, 0x4

    .line 33
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 34
    .line 35
    .line 36
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 37
    .line 38
    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->blockingQueue:Ljava/util/concurrent/BlockingDeque;

    .line 39
    .line 40
    check-cast v4, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 43
    .line 44
    .line 45
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    new-instance v5, Landroid/content/Intent;

    .line 52
    .line 53
    sget-object v6, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DCM_SCREEN_LOCK_SERVICE_ACTION:Ljava/lang/String;

    .line 54
    .line 55
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 63
    .line 64
    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->serviceConnection:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;

    .line 65
    .line 66
    const/4 v6, 0x1

    .line 67
    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 68
    .line 69
    .line 70
    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->blockingQueue:Ljava/util/concurrent/BlockingDeque;

    .line 76
    .line 77
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 78
    .line 79
    check-cast v0, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 80
    .line 81
    const-wide/16 v4, 0x5dc

    .line 82
    .line 83
    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    .line 88
    .line 89
    if-eqz v0, :cond_0

    .line 90
    .line 91
    check-cast v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub$Proxy;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub$Proxy;->getUnreadCount()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 98
    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 118
    .line 119
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    new-instance v3, Landroid/content/Intent;

    .line 124
    .line 125
    const-string v4, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE_LOCAL"

    .line 126
    .line 127
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string/jumbo v4, "spcnt"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    .line 138
    .line 139
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    .line 141
    .line 142
    :cond_0
    move v3, v6

    .line 143
    goto :goto_3

    .line 144
    :catch_0
    move-exception v0

    .line 145
    move v3, v6

    .line 146
    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    .line 148
    move v3, v6

    .line 149
    goto :goto_1

    .line 150
    :catch_2
    move v3, v6

    .line 151
    goto :goto_2

    .line 152
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 153
    .line 154
    const-string v2, "failed to bind service"

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :catch_3
    move-exception v0

    .line 164
    goto :goto_0

    .line 165
    :catch_4
    move-exception v0

    .line 166
    goto :goto_1

    .line 167
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 193
    .line 194
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :catch_5
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    const-string v0, "no package exists: com.nttdocomo.android.screenlockservice"

    .line 223
    .line 224
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :goto_3
    if-eqz v3, :cond_2

    .line 228
    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 230
    .line 231
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 236
    .line 237
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->serviceConnection:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;

    .line 238
    .line 239
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 240
    .line 241
    .line 242
    :cond_2
    return-void
.end method
