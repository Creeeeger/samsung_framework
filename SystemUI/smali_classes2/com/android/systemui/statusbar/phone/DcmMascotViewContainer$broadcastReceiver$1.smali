.class public final Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 6
    .line 7
    const-string v1, "onReceive "

    .line 8
    .line 9
    invoke-static {v1, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DEBUG:Z

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x1

    .line 29
    const/4 v2, 0x0

    .line 30
    const-string v3, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    .line 31
    .line 32
    sparse-switch v0, :sswitch_data_0

    .line 33
    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :sswitch_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :sswitch_1
    const-string p2, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE"

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_1

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 56
    .line 57
    iget-object v0, p2, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 58
    .line 59
    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;

    .line 60
    .line 61
    invoke-direct {v1, p2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->remoteViews:Landroid/widget/RemoteViews;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :sswitch_2
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_2

    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 93
    .line 94
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isBootCompleted:Z

    .line 95
    .line 96
    iget-boolean p2, p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isWaitingForBootComplete:Z

    .line 97
    .line 98
    if-eqz p2, :cond_6

    .line 99
    .line 100
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->remoteViews:Landroid/widget/RemoteViews;

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 106
    .line 107
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isWaitingForBootComplete:Z

    .line 108
    .line 109
    goto/16 :goto_1

    .line 110
    .line 111
    :sswitch_3
    const-string v0, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_3

    .line 118
    .line 119
    goto/16 :goto_1

    .line 120
    .line 121
    :cond_3
    const-string p1, "RemoteViews"

    .line 122
    .line 123
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Landroid/widget/RemoteViews;

    .line 128
    .line 129
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 130
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v1, "mascotView: "

    .line 134
    .line 135
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 152
    .line 153
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :sswitch_4
    const-string v0, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-nez p1, :cond_4

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_4
    const-string p1, "eventType"

    .line 167
    .line 168
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 173
    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v3, "eventType "

    .line 177
    .line 178
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    if-ltz p2, :cond_5

    .line 195
    .line 196
    sget-object v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->MASCOT_ACTION:[Ljava/lang/String;

    .line 197
    .line 198
    array-length v2, v0

    .line 199
    if-ge p2, v2, :cond_5

    .line 200
    .line 201
    aget-object v0, v0, p2

    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_5
    const/4 v0, 0x0

    .line 205
    :goto_0
    if-eqz v0, :cond_6

    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 208
    .line 209
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->statusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 210
    .line 211
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 212
    .line 213
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->userActivity()V

    .line 214
    .line 215
    .line 216
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->activityStart:Lcom/android/systemui/plugins/ActivityStarter;

    .line 217
    .line 218
    new-instance v2, Landroid/content/Intent;

    .line 219
    .line 220
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const-string v0, "com.nttdocomo.android.mascot"

    .line 224
    .line 225
    const-string v3, "com.nttdocomo.android.mascot.application.MascotApplicationProxy"

    .line 226
    .line 227
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    .line 229
    .line 230
    const-string v0, "android.intent.category.LAUNCHER"

    .line 231
    .line 232
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    .line 237
    .line 238
    const/high16 p1, 0x10200000

    .line 239
    .line 240
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 241
    .line 242
    .line 243
    invoke-interface {p0, v2, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 244
    .line 245
    .line 246
    :cond_6
    :goto_1
    return-void

    .line 247
    :sswitch_data_0
    .sparse-switch
        -0x51c44600 -> :sswitch_4
        -0x133a78b0 -> :sswitch_3
        0x2f94f923 -> :sswitch_2
        0x351fef70 -> :sswitch_1
        0x4f50c6c0 -> :sswitch_0
    .end sparse-switch
.end method
