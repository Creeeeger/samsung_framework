.class public final Lcom/samsung/android/knox/kiosk/KioskMode$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/kiosk/KioskMode;->disableKioskMode(Lcom/samsung/android/knox/kiosk/KioskSetting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

.field public final synthetic val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

.field public final synthetic val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/kiosk/KioskMode;Lcom/samsung/android/knox/kiosk/IKioskMode;Lcom/samsung/android/knox/kiosk/KioskSetting;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const-string v0, "KioskMode"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 8
    .line 9
    invoke-interface {v1, v2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->disableKioskMode(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v1

    .line 14
    const-string v2, "Failed talking with kiosk mode service"

    .line 15
    .line 16
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    new-instance v1, Lcom/samsung/android/knox/kiosk/KioskSetting;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/samsung/android/knox/kiosk/KioskSetting;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    .line 31
    .line 32
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    .line 33
    .line 34
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    .line 35
    .line 36
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    .line 37
    .line 38
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    .line 39
    .line 40
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    .line 41
    .line 42
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    .line 43
    .line 44
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    .line 45
    .line 46
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    .line 47
    .line 48
    iput-boolean v2, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    .line 49
    .line 50
    iput-boolean v2, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    .line 51
    .line 52
    iput-boolean v2, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    .line 53
    .line 54
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    .line 55
    .line 56
    iput v2, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    .line 57
    .line 58
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 59
    .line 60
    sget-object v5, Lcom/samsung/android/knox/kiosk/KioskMode;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    if-nez v4, :cond_1

    .line 67
    .line 68
    const-string v4, "Failed talking with restriction service"

    .line 69
    .line 70
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 75
    .line 76
    iget-object v5, v5, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 77
    .line 78
    iget-boolean v6, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    .line 79
    .line 80
    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-nez v5, :cond_2

    .line 85
    .line 86
    const-string v5, "allow settings changes failed"

    .line 87
    .line 88
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catch_1
    move-exception v5

    .line 93
    const-string v6, "Failed to allow settings changes"

    .line 94
    .line 95
    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 99
    .line 100
    iget-object v5, v5, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 101
    .line 102
    iget-boolean v6, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    .line 103
    .line 104
    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-nez v5, :cond_3

    .line 109
    .line 110
    const-string v5, "allow status bar expansion failed"

    .line 111
    .line 112
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catch_2
    move-exception v5

    .line 117
    const-string v6, "Failed to allow status bar expansion"

    .line 118
    .line 119
    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .line 121
    .line 122
    :cond_3
    :goto_2
    :try_start_3
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 123
    .line 124
    iget-object v5, v5, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 125
    .line 126
    iget-boolean v6, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    .line 127
    .line 128
    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-nez v5, :cond_4

    .line 133
    .line 134
    const-string v5, "set home key state failed"

    .line 135
    .line 136
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :catch_3
    move-exception v5

    .line 141
    const-string v6, "Failed to set home key state"

    .line 142
    .line 143
    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .line 145
    .line 146
    :cond_4
    :goto_3
    :try_start_4
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 147
    .line 148
    iget-object v5, v5, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 149
    .line 150
    iget-boolean v6, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    .line 151
    .line 152
    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-nez v4, :cond_5

    .line 157
    .line 158
    const-string v4, "allow smart clip mode failed"

    .line 159
    .line 160
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :catch_4
    move-exception v4

    .line 165
    const-string v5, "Failed to allow smart clip mode"

    .line 166
    .line 167
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .line 169
    .line 170
    :cond_5
    :goto_4
    :try_start_5
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 171
    .line 172
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 173
    .line 174
    iget-object v5, v5, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 175
    .line 176
    iget-boolean v6, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    .line 177
    .line 178
    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    if-nez v4, :cond_6

    .line 183
    .line 184
    const-string v4, "allow air command failed"

    .line 185
    .line 186
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :catch_5
    move-exception v4

    .line 191
    const-string v5, "Failed to allow air command mode"

    .line 192
    .line 193
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .line 195
    .line 196
    :cond_6
    :goto_5
    :try_start_6
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 197
    .line 198
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 199
    .line 200
    iget-object v5, v5, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 201
    .line 202
    iget-boolean v6, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    .line 203
    .line 204
    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirViewMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    if-nez v4, :cond_7

    .line 209
    .line 210
    const-string v4, "allow air view failed"

    .line 211
    .line 212
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 213
    .line 214
    .line 215
    goto :goto_6

    .line 216
    :catch_6
    move-exception v4

    .line 217
    const-string v5, "Failed to allow air view mode"

    .line 218
    .line 219
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    .line 221
    .line 222
    :cond_7
    :goto_6
    iget-object v4, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    .line 223
    .line 224
    if-eqz v4, :cond_9

    .line 225
    .line 226
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    new-array v4, v4, [I

    .line 231
    .line 232
    :goto_7
    iget-object v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    .line 233
    .line 234
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-ge v2, v5, :cond_8

    .line 239
    .line 240
    iget-object v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    .line 241
    .line 242
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    check-cast v5, Ljava/lang/Integer;

    .line 247
    .line 248
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    aput v5, v4, v2

    .line 253
    .line 254
    add-int/lit8 v2, v2, 0x1

    .line 255
    .line 256
    goto :goto_7

    .line 257
    :cond_8
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 258
    .line 259
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 260
    .line 261
    iget-object v5, v5, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 262
    .line 263
    invoke-interface {v2, v5, v4, v3}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowHardwareKeys(Lcom/samsung/android/knox/ContextInfo;[IZ)[I

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    if-nez v2, :cond_9

    .line 268
    .line 269
    const-string v2, "allowHardwareKeys failed"

    .line 270
    .line 271
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 272
    .line 273
    .line 274
    goto :goto_8

    .line 275
    :catch_7
    move-exception v2

    .line 276
    const-string v4, "Failed to allow hardware keys"

    .line 277
    .line 278
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .line 280
    .line 281
    :cond_9
    :goto_8
    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 282
    .line 283
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 284
    .line 285
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 286
    .line 287
    iget-boolean v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    .line 288
    .line 289
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-nez v2, :cond_a

    .line 294
    .line 295
    const-string v2, "set multiwindow mode failed"

    .line 296
    .line 297
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    .line 298
    .line 299
    .line 300
    goto :goto_9

    .line 301
    :catch_8
    move-exception v2

    .line 302
    const-string v4, "Failed to allow multiwindow mode"

    .line 303
    .line 304
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    .line 306
    .line 307
    :cond_a
    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 308
    .line 309
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 310
    .line 311
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 312
    .line 313
    iget-boolean v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    .line 314
    .line 315
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowTaskManager(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-nez v2, :cond_b

    .line 320
    .line 321
    const-string v2, "set task manager failed"

    .line 322
    .line 323
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    .line 324
    .line 325
    .line 326
    goto :goto_a

    .line 327
    :catch_9
    move-exception v2

    .line 328
    const-string v4, "Failed to allow task manager"

    .line 329
    .line 330
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    .line 332
    .line 333
    :cond_b
    :goto_a
    iget-boolean v2, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    .line 334
    .line 335
    if-eqz v2, :cond_c

    .line 336
    .line 337
    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 338
    .line 339
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 340
    .line 341
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 342
    .line 343
    invoke-interface {v2, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->clearAllNotifications(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-nez v2, :cond_c

    .line 348
    .line 349
    const-string v2, "clear all notifications failed"

    .line 350
    .line 351
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    .line 352
    .line 353
    .line 354
    goto :goto_b

    .line 355
    :catch_a
    move-exception v2

    .line 356
    const-string v4, "Failed to clear all notifications"

    .line 357
    .line 358
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    .line 360
    .line 361
    :cond_c
    :goto_b
    :try_start_b
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 362
    .line 363
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 364
    .line 365
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 366
    .line 367
    iget-boolean v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    .line 368
    .line 369
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideNavigationBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-nez v2, :cond_d

    .line 374
    .line 375
    const-string v2, "hide navigationbar failed"

    .line 376
    .line 377
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    .line 378
    .line 379
    .line 380
    goto :goto_c

    .line 381
    :catch_b
    move-exception v2

    .line 382
    const-string v4, "Failed to hide navigationbar"

    .line 383
    .line 384
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    .line 386
    .line 387
    :cond_d
    :goto_c
    :try_start_c
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 388
    .line 389
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 390
    .line 391
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 392
    .line 393
    iget-boolean v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    .line 394
    .line 395
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideStatusBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    if-nez v2, :cond_e

    .line 400
    .line 401
    const-string v2, "hide status bar failed"

    .line 402
    .line 403
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    .line 404
    .line 405
    .line 406
    goto :goto_d

    .line 407
    :catch_c
    move-exception v2

    .line 408
    const-string v4, "Failed to hide status bar"

    .line 409
    .line 410
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    .line 412
    .line 413
    :cond_e
    :goto_d
    :try_start_d
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 414
    .line 415
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 416
    .line 417
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 418
    .line 419
    iget-boolean v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    .line 420
    .line 421
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideSystemBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    if-nez v2, :cond_f

    .line 426
    .line 427
    const-string v2, "hide system bar failed"

    .line 428
    .line 429
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    .line 430
    .line 431
    .line 432
    goto :goto_e

    .line 433
    :catch_d
    move-exception v2

    .line 434
    const-string v4, "Failed to hide system bar"

    .line 435
    .line 436
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    .line 438
    .line 439
    :cond_f
    :goto_e
    iget-boolean v2, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    .line 440
    .line 441
    if-eqz v2, :cond_10

    .line 442
    .line 443
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 444
    .line 445
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 446
    .line 447
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 448
    .line 449
    invoke-interface {v2, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->wipeRecentTasks(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    if-nez v2, :cond_10

    .line 454
    .line 455
    const-string v2, "wipe recent task failed"

    .line 456
    .line 457
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    .line 458
    .line 459
    .line 460
    goto :goto_f

    .line 461
    :catch_e
    move-exception v2

    .line 462
    const-string v4, "Failed to wipe recent task"

    .line 463
    .line 464
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    .line 466
    .line 467
    :cond_10
    :goto_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 468
    .line 469
    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 470
    .line 471
    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 472
    .line 473
    iget v1, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    .line 474
    .line 475
    invoke-interface {v2, p0, v1, v3}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowEdgeScreen(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    .line 476
    .line 477
    .line 478
    move-result p0

    .line 479
    if-nez p0, :cond_11

    .line 480
    .line 481
    const-string p0, "Allow edge functions failed"

    .line 482
    .line 483
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f

    .line 484
    .line 485
    .line 486
    goto :goto_10

    .line 487
    :catch_f
    move-exception p0

    .line 488
    const-string v1, "Failed to Allow Edge Functions"

    .line 489
    .line 490
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    .line 492
    .line 493
    :cond_11
    :goto_10
    return-void
.end method
