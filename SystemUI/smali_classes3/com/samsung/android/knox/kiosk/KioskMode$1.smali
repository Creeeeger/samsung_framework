.class public final Lcom/samsung/android/knox/kiosk/KioskMode$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/kiosk/KioskMode;->enableKioskMode(Lcom/samsung/android/knox/kiosk/KioskSetting;)V
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
.method public constructor <init>(Lcom/samsung/android/knox/kiosk/KioskMode;Lcom/samsung/android/knox/kiosk/KioskSetting;Lcom/samsung/android/knox/kiosk/IKioskMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/samsung/android/knox/kiosk/KioskSetting;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/samsung/android/knox/kiosk/KioskSetting;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    .line 12
    .line 13
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    .line 14
    .line 15
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    .line 16
    .line 17
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    .line 18
    .line 19
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    .line 20
    .line 21
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    .line 22
    .line 23
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    .line 24
    .line 25
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    .line 26
    .line 27
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    .line 31
    .line 32
    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    .line 33
    .line 34
    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    .line 35
    .line 36
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    .line 37
    .line 38
    iput v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    .line 39
    .line 40
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 41
    .line 42
    sget-object v3, Lcom/samsung/android/knox/kiosk/KioskMode;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/samsung/android/knox/kiosk/KioskMode;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "KioskMode"

    .line 49
    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    const-string v2, "Failed talking with restriction service"

    .line 53
    .line 54
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 59
    .line 60
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 61
    .line 62
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    .line 63
    .line 64
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_2

    .line 69
    .line 70
    const-string v4, "allow settings changes failed"

    .line 71
    .line 72
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v4

    .line 77
    const-string v5, "Failed to allow settings changes"

    .line 78
    .line 79
    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 83
    .line 84
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 85
    .line 86
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    .line 87
    .line 88
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_3

    .line 93
    .line 94
    const-string v4, "allow status bar expansion failed"

    .line 95
    .line 96
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catch_1
    move-exception v4

    .line 101
    const-string v5, "Failed to allow status bar expansion"

    .line 102
    .line 103
    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    :cond_3
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 107
    .line 108
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 109
    .line 110
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    .line 111
    .line 112
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_4

    .line 117
    .line 118
    const-string v4, "set home key state failed"

    .line 119
    .line 120
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :catch_2
    move-exception v4

    .line 125
    const-string v5, "Failed to set home key state"

    .line 126
    .line 127
    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .line 129
    .line 130
    :cond_4
    :goto_2
    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 131
    .line 132
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 133
    .line 134
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    .line 135
    .line 136
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_5

    .line 141
    .line 142
    const-string v2, "allow smart clip mode failed"

    .line 143
    .line 144
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :catch_3
    move-exception v2

    .line 149
    const-string v4, "Failed to allow smart clip mode"

    .line 150
    .line 151
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .line 153
    .line 154
    :cond_5
    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 155
    .line 156
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 157
    .line 158
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 159
    .line 160
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    .line 161
    .line 162
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-nez v2, :cond_6

    .line 167
    .line 168
    const-string v2, "set air command mode failed"

    .line 169
    .line 170
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 171
    .line 172
    .line 173
    goto :goto_4

    .line 174
    :catch_4
    move-exception v2

    .line 175
    const-string v4, "Failed to allow air command mode"

    .line 176
    .line 177
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .line 179
    .line 180
    :cond_6
    :goto_4
    :try_start_5
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 181
    .line 182
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 183
    .line 184
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 185
    .line 186
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    .line 187
    .line 188
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirViewMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-nez v2, :cond_7

    .line 193
    .line 194
    const-string v2, "set air view mode failed"

    .line 195
    .line 196
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 197
    .line 198
    .line 199
    goto :goto_5

    .line 200
    :catch_5
    move-exception v2

    .line 201
    const-string v4, "Failed to allow air view mode"

    .line 202
    .line 203
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .line 205
    .line 206
    :cond_7
    :goto_5
    iget-object v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    .line 207
    .line 208
    if-eqz v2, :cond_9

    .line 209
    .line 210
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    new-array v2, v2, [I

    .line 215
    .line 216
    move v4, v1

    .line 217
    :goto_6
    iget-object v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    .line 218
    .line 219
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    if-ge v4, v5, :cond_8

    .line 224
    .line 225
    iget-object v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    .line 226
    .line 227
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    check-cast v5, Ljava/lang/Integer;

    .line 232
    .line 233
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    aput v5, v2, v4

    .line 238
    .line 239
    add-int/lit8 v4, v4, 0x1

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_8
    :try_start_6
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 243
    .line 244
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 245
    .line 246
    iget-object v5, v5, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 247
    .line 248
    invoke-interface {v4, v5, v2, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowHardwareKeys(Lcom/samsung/android/knox/ContextInfo;[IZ)[I

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    if-nez v2, :cond_9

    .line 253
    .line 254
    const-string v2, "allowHardwareKeys failed"

    .line 255
    .line 256
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 257
    .line 258
    .line 259
    goto :goto_7

    .line 260
    :catch_6
    move-exception v2

    .line 261
    const-string v4, "Failed to allow hardware keys"

    .line 262
    .line 263
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .line 265
    .line 266
    :cond_9
    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 267
    .line 268
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 269
    .line 270
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 271
    .line 272
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    .line 273
    .line 274
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-nez v2, :cond_a

    .line 279
    .line 280
    const-string v2, "set multiwindow mode failed"

    .line 281
    .line 282
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 283
    .line 284
    .line 285
    goto :goto_8

    .line 286
    :catch_7
    move-exception v2

    .line 287
    const-string v4, "Failed to allow multiwindow mode"

    .line 288
    .line 289
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    .line 291
    .line 292
    :cond_a
    :goto_8
    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 293
    .line 294
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 295
    .line 296
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 297
    .line 298
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    .line 299
    .line 300
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowTaskManager(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-nez v2, :cond_b

    .line 305
    .line 306
    const-string v2, "set task manager failed"

    .line 307
    .line 308
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    .line 309
    .line 310
    .line 311
    goto :goto_9

    .line 312
    :catch_8
    move-exception v2

    .line 313
    const-string v4, "Failed to allow task manager"

    .line 314
    .line 315
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    .line 317
    .line 318
    :cond_b
    :goto_9
    iget-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    .line 319
    .line 320
    if-eqz v2, :cond_c

    .line 321
    .line 322
    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 323
    .line 324
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 325
    .line 326
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 327
    .line 328
    invoke-interface {v2, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->clearAllNotifications(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-nez v2, :cond_c

    .line 333
    .line 334
    const-string v2, "clear all notifications failed"

    .line 335
    .line 336
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    .line 337
    .line 338
    .line 339
    goto :goto_a

    .line 340
    :catch_9
    move-exception v2

    .line 341
    const-string v4, "Failed to clear all notifications"

    .line 342
    .line 343
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    .line 345
    .line 346
    :cond_c
    :goto_a
    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 347
    .line 348
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 349
    .line 350
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 351
    .line 352
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    .line 353
    .line 354
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideSystemBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    if-nez v2, :cond_d

    .line 359
    .line 360
    const-string v2, "hide system bar failed"

    .line 361
    .line 362
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    .line 363
    .line 364
    .line 365
    goto :goto_b

    .line 366
    :catch_a
    move-exception v2

    .line 367
    const-string v4, "Failed to hide system bar"

    .line 368
    .line 369
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .line 371
    .line 372
    :cond_d
    :goto_b
    :try_start_b
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 373
    .line 374
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 375
    .line 376
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 377
    .line 378
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    .line 379
    .line 380
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideNavigationBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    if-nez v2, :cond_e

    .line 385
    .line 386
    const-string v2, "hide navigationbar failed"

    .line 387
    .line 388
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    .line 389
    .line 390
    .line 391
    goto :goto_c

    .line 392
    :catch_b
    move-exception v2

    .line 393
    const-string v4, "Failed to hide navigationbar"

    .line 394
    .line 395
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    .line 397
    .line 398
    :cond_e
    :goto_c
    :try_start_c
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 399
    .line 400
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 401
    .line 402
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 403
    .line 404
    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    .line 405
    .line 406
    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideStatusBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    if-nez v2, :cond_f

    .line 411
    .line 412
    const-string v2, "hide status bar failed"

    .line 413
    .line 414
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    .line 415
    .line 416
    .line 417
    goto :goto_d

    .line 418
    :catch_c
    move-exception v2

    .line 419
    const-string v4, "Failed to hide status bar"

    .line 420
    .line 421
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    .line 423
    .line 424
    :cond_f
    :goto_d
    iget-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    .line 425
    .line 426
    if-eqz v2, :cond_10

    .line 427
    .line 428
    :try_start_d
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 429
    .line 430
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 431
    .line 432
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 433
    .line 434
    invoke-interface {v2, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->wipeRecentTasks(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    if-nez v2, :cond_10

    .line 439
    .line 440
    const-string v2, "wipe recent task failed"

    .line 441
    .line 442
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    .line 443
    .line 444
    .line 445
    goto :goto_e

    .line 446
    :catch_d
    move-exception v2

    .line 447
    const-string v4, "Failed to wipe recent task"

    .line 448
    .line 449
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    .line 451
    .line 452
    :cond_10
    :goto_e
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 453
    .line 454
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 455
    .line 456
    iget-object v4, v4, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 457
    .line 458
    iget v0, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    .line 459
    .line 460
    invoke-interface {v2, v4, v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowEdgeScreen(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    if-nez v0, :cond_11

    .line 465
    .line 466
    const-string v0, "block edge functions failed"

    .line 467
    .line 468
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    .line 469
    .line 470
    .line 471
    goto :goto_f

    .line 472
    :catch_e
    move-exception v0

    .line 473
    const-string v1, "Failed to Block Edge Functions"

    .line 474
    .line 475
    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    .line 477
    .line 478
    :cond_11
    :goto_f
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 479
    .line 480
    invoke-virtual {v0}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    if-nez v0, :cond_12

    .line 485
    .line 486
    :try_start_f
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 487
    .line 488
    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 489
    .line 490
    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 491
    .line 492
    const-string v1, "com.sec.android.kiosk"

    .line 493
    .line 494
    invoke-interface {v0, p0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f

    .line 495
    .line 496
    .line 497
    goto :goto_10

    .line 498
    :catch_f
    move-exception p0

    .line 499
    const-string v0, "Failed talking with kiosk mode service"

    .line 500
    .line 501
    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    .line 503
    .line 504
    :cond_12
    :goto_10
    return-void
.end method
