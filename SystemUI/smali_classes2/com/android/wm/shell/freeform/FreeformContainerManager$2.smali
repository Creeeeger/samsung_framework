.class public final Lcom/android/wm/shell/freeform/FreeformContainerManager$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

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
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x5

    .line 10
    const/4 v1, 0x4

    .line 11
    const/4 v2, 0x3

    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x1

    .line 14
    sparse-switch p2, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :sswitch_0
    const-string p2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    move p2, v3

    .line 27
    goto :goto_1

    .line 28
    :sswitch_1
    const-string p2, "com.samsung.intent.action.LELINK_CAST_CONNECTION_CHANGED"

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    const/4 p2, 0x6

    .line 37
    goto :goto_1

    .line 38
    :sswitch_2
    const-string p2, "android.intent.action.DATE_CHANGED"

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    move p2, v4

    .line 47
    goto :goto_1

    .line 48
    :sswitch_3
    const-string p2, "android.intent.action.USER_SWITCHED"

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_0

    .line 55
    .line 56
    move p2, v2

    .line 57
    goto :goto_1

    .line 58
    :sswitch_4
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_0

    .line 65
    .line 66
    const/4 p2, 0x0

    .line 67
    goto :goto_1

    .line 68
    :sswitch_5
    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_0

    .line 75
    .line 76
    move p2, v1

    .line 77
    goto :goto_1

    .line 78
    :sswitch_6
    const-string p2, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_0

    .line 85
    .line 86
    const/4 p2, 0x7

    .line 87
    goto :goto_1

    .line 88
    :sswitch_7
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-eqz p2, :cond_0

    .line 95
    .line 96
    move p2, v0

    .line 97
    goto :goto_1

    .line 98
    :cond_0
    :goto_0
    const/4 p2, -0x1

    .line 99
    :goto_1
    const-string v5, "[Manager] onReceive: "

    .line 100
    .line 101
    const-string v6, "FreeformContainer"

    .line 102
    .line 103
    if-eqz p2, :cond_3

    .line 104
    .line 105
    if-eq p2, v4, :cond_4

    .line 106
    .line 107
    if-eq p2, v3, :cond_4

    .line 108
    .line 109
    if-eq p2, v2, :cond_2

    .line 110
    .line 111
    if-eq p2, v1, :cond_1

    .line 112
    .line 113
    if-eq p2, v0, :cond_1

    .line 114
    .line 115
    goto/16 :goto_2

    .line 116
    .line 117
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string p1, ", Collapse minimized container tray"

    .line 126
    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 138
    .line 139
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 140
    .line 141
    const/16 p1, 0x2a

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p1, ", Restore only minimized container items"

    .line 157
    .line 158
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 169
    .line 170
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 171
    .line 172
    const/16 p1, 0x20

    .line 173
    .line 174
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_3
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 179
    .line 180
    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    .line 181
    .line 182
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 191
    .line 192
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mConfiguration:Landroid/content/res/Configuration;

    .line 193
    .line 194
    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 199
    .line 200
    new-instance v2, Landroid/content/res/Configuration;

    .line 201
    .line 202
    invoke-direct {v2, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 203
    .line 204
    .line 205
    iput-object v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mConfiguration:Landroid/content/res/Configuration;

    .line 206
    .line 207
    const p2, -0x7ffecdfc

    .line 208
    .line 209
    .line 210
    and-int/2addr p2, v0

    .line 211
    if-nez p2, :cond_4

    .line 212
    .line 213
    const-string p2, ", diff=0x"

    .line 214
    .line 215
    invoke-static {v5, p1, p2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string p2, ", No need to rebuild all"

    .line 227
    .line 228
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 239
    .line 240
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 241
    .line 242
    const/16 p1, 0x24

    .line 243
    .line 244
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$2;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 249
    .line 250
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 251
    .line 252
    const/16 p2, 0x21

    .line 253
    .line 254
    invoke-virtual {p0, p2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_5

    .line 259
    .line 260
    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    .line 262
    .line 263
    :cond_5
    const-string v0, "[Manager] rebuild all, reason: "

    .line 264
    .line 265
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(I)V

    .line 273
    .line 274
    .line 275
    :goto_2
    return-void

    .line 276
    nop

    .line 277
    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_7
        -0x3f4ab253 -> :sswitch_6
        -0x1808c879 -> :sswitch_5
        0x9780086 -> :sswitch_4
        0x392cb822 -> :sswitch_3
        0x3e117848 -> :sswitch_2
        0x66cad08e -> :sswitch_1
        0x6a0dd473 -> :sswitch_0
    .end sparse-switch
.end method
