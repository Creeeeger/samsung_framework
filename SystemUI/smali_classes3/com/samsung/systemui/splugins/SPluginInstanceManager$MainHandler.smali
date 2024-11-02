.class Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/SPluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# static fields
.field private static final PLUGIN_CONNECTED:I = 0x1

.field private static final PLUGIN_DISCONNECTED:I = 0x2

.field private static final PLUGIN_UPDATED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/SPluginInstanceManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    const-string v0, "ms"

    .line 2
    .line 3
    const-string v1, " elapsed="

    .line 4
    .line 5
    const-string v2, "], what="

    .line 6
    .line 7
    const-string v3, "PluginInstanceManager"

    .line 8
    .line 9
    const-string v4, "["

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    :try_start_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v7, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    .line 18
    .line 19
    iget v8, p1, Landroid/os/Message;->what:I

    .line 20
    .line 21
    const/4 v9, 0x1

    .line 22
    if-eq v8, v9, :cond_3

    .line 23
    .line 24
    const/4 v10, 0x2

    .line 25
    if-eq v8, v10, :cond_1

    .line 26
    .line 27
    const/4 v10, 0x4

    .line 28
    if-eq v8, v10, :cond_0

    .line 29
    .line 30
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v10, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 41
    .line 42
    invoke-static {v10}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmAction(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v10, "], [PLUGIN_UPDATED], mPackage "

    .line 50
    .line 51
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v10, v7, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 67
    .line 68
    invoke-static {v8}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmListener(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    iget-object v10, v7, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v10, Lcom/samsung/systemui/splugins/SPlugin;

    .line 75
    .line 76
    invoke-interface {v8, v10, v9}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V

    .line 77
    .line 78
    .line 79
    iget-object v7, v7, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    .line 80
    .line 81
    instance-of v8, v7, Lcom/samsung/systemui/splugins/SPluginFragment;

    .line 82
    .line 83
    if-nez v8, :cond_5

    .line 84
    .line 85
    check-cast v7, Lcom/samsung/systemui/splugins/SPlugin;

    .line 86
    .line 87
    invoke-interface {v7}, Lcom/samsung/systemui/splugins/SPlugin;->onDestroy()V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v9, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 98
    .line 99
    invoke-static {v9}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmAction(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v9, "], [PLUGIN_DISCONNECTED] "

    .line 107
    .line 108
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-static {v7}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->-$$Nest$fgetmClass(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v9, ", mIsPkgChanged ="

    .line 119
    .line 120
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v9, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 124
    .line 125
    invoke-static {v9}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmIsPkgChanged(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Z

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 140
    .line 141
    invoke-static {v8}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmIsPkgChanged(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-eqz v8, :cond_2

    .line 146
    .line 147
    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 148
    .line 149
    invoke-static {v8}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmListener(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    iget-object v9, v7, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v9, Lcom/samsung/systemui/splugins/SPlugin;

    .line 156
    .line 157
    invoke-interface {v8, v9, v10}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_2
    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 162
    .line 163
    invoke-static {v8}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmListener(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    iget-object v9, v7, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v9, Lcom/samsung/systemui/splugins/SPlugin;

    .line 170
    .line 171
    const/4 v10, 0x0

    .line 172
    invoke-interface {v8, v9, v10}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V

    .line 173
    .line 174
    .line 175
    :goto_0
    iget-object v7, v7, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    .line 176
    .line 177
    instance-of v8, v7, Lcom/samsung/systemui/splugins/SPluginFragment;

    .line 178
    .line 179
    if-nez v8, :cond_5

    .line 180
    .line 181
    check-cast v7, Lcom/samsung/systemui/splugins/SPlugin;

    .line 182
    .line 183
    invoke-interface {v7}, Lcom/samsung/systemui/splugins/SPlugin;->onDestroy()V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v9, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 193
    .line 194
    invoke-static {v9}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmAction(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v9, "], [PLUGIN_CONNECTED] "

    .line 202
    .line 203
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-static {v7}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->-$$Nest$fgetmClass(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 221
    .line 222
    invoke-static {v8}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/Context;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    invoke-static {v8}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setHasPlugins(Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 230
    .line 231
    invoke-static {v8}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmManager(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    invoke-virtual {v8}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->handleWtfs()V

    .line 236
    .line 237
    .line 238
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 239
    .line 240
    instance-of v8, v8, Lcom/samsung/systemui/splugins/SPluginFragment;

    .line 241
    .line 242
    if-nez v8, :cond_4

    .line 243
    .line 244
    iget-object v8, v7, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v8, Lcom/samsung/systemui/splugins/SPlugin;

    .line 247
    .line 248
    iget-object v9, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 249
    .line 250
    invoke-static {v9}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmContext(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Landroid/content/Context;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    invoke-static {v7}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->-$$Nest$fgetmPluginContext(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Landroid/content/Context;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    invoke-interface {v8, v9, v10}, Lcom/samsung/systemui/splugins/SPlugin;->onCreate(Landroid/content/Context;Landroid/content/Context;)V

    .line 259
    .line 260
    .line 261
    :cond_4
    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 262
    .line 263
    invoke-static {v8}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmListener(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    iget-object v9, v7, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v9, Lcom/samsung/systemui/splugins/SPlugin;

    .line 270
    .line 271
    invoke-static {v7}, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->-$$Nest$fgetmPluginContext(Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;)Landroid/content/Context;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    invoke-interface {v8, v9, v7}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    .line 277
    .line 278
    :cond_5
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :goto_2
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 284
    .line 285
    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmAction(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    iget p0, p1, Landroid/os/Message;->what:I

    .line 296
    .line 297
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 304
    .line 305
    .line 306
    move-result-wide p0

    .line 307
    sub-long/2addr p0, v5

    .line 308
    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    goto :goto_3

    .line 322
    :catchall_0
    move-exception v7

    .line 323
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    iget-object v9, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 329
    .line 330
    invoke-static {v9}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmAction(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    const-string v9, "] what="

    .line 338
    .line 339
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    iget v9, p1, Landroid/os/Message;->what:I

    .line 343
    .line 344
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v8

    .line 351
    invoke-static {v3, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 352
    .line 353
    .line 354
    new-instance v7, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    goto :goto_2

    .line 360
    :goto_3
    return-void

    .line 361
    :catchall_1
    move-exception v7

    .line 362
    new-instance v8, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginInstanceManager$MainHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 368
    .line 369
    invoke-static {p0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->-$$Nest$fgetmAction(Lcom/samsung/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    iget p0, p1, Landroid/os/Message;->what:I

    .line 380
    .line 381
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 388
    .line 389
    .line 390
    move-result-wide p0

    .line 391
    sub-long/2addr p0, v5

    .line 392
    invoke-virtual {v8, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p0

    .line 402
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    throw v7
.end method
