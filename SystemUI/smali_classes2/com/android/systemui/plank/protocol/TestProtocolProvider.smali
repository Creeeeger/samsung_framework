.class public final Lcom/android/systemui/plank/protocol/TestProtocolProvider;
.super Landroid/content/ContentProvider;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;


# instance fields
.field public contextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

.field public mInitializer:Lcom/android/systemui/SystemUIInitializer;

.field public plankComponent:Lcom/android/systemui/plank/dagger/PlankComponent;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/plank/protocol/TestProtocolProvider$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/plank/protocol/TestProtocolProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const-class v0, Lcom/android/systemui/plank/protocol/TestProtocolProvider;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/plank/protocol/TestProtocolProvider;->contextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    :cond_0
    if-eqz p1, :cond_2

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;->onContextAvailable(Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/systemui/plank/protocol/TestProtocolProvider;->mInitializer:Lcom/android/systemui/SystemUIInitializer;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move-object v1, v0

    .line 19
    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/SystemUIInitializer;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/plank/protocol/TestProtocolProvider;)V

    .line 24
    .line 25
    .line 26
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string p1, "Required value was null."

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/plank/protocol/TestProtocolProvider;->plankComponent:Lcom/android/systemui/plank/dagger/PlankComponent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/plank/protocol/TestProtocolProvider;->contextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move-object v0, v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {v0, v2}, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;->onContextAvailable(Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/plank/protocol/TestProtocolProvider;->mInitializer:Lcom/android/systemui/SystemUIInitializer;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    move-object v0, v1

    .line 25
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/SystemUIInitializer;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/plank/protocol/TestProtocolProvider;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const-string p0, "Required value was null."

    .line 34
    .line 35
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/plank/protocol/TestProtocolProvider;->plankComponent:Lcom/android/systemui/plank/dagger/PlankComponent;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    move-object v0, v1

    .line 51
    :goto_1
    iget-boolean v2, v0, Lcom/android/systemui/plank/dagger/PlankComponent;->featureEnabled:Z

    .line 52
    .line 53
    if-eqz v2, :cond_5

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/systemui/plank/dagger/PlankComponent;->lazyProtocolManager:Ldagger/Lazy;

    .line 56
    .line 57
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_2

    .line 66
    :cond_5
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :goto_2
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1e

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/systemui/plank/protocol/TestProtocolProvider;->plankComponent:Lcom/android/systemui/plank/dagger/PlankComponent;

    .line 77
    .line 78
    if-eqz p0, :cond_6

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_6
    move-object p0, v1

    .line 82
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/plank/dagger/PlankComponent;->featureEnabled:Z

    .line 83
    .line 84
    if-eqz v0, :cond_7

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/systemui/plank/dagger/PlankComponent;->lazyProtocolManager:Ldagger/Lazy;

    .line 87
    .line 88
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    goto :goto_4

    .line 97
    :cond_7
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    :goto_4
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    check-cast p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    const-string v0, "__plank__"

    .line 111
    .line 112
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    const/4 v2, 0x1

    .line 117
    const/4 v3, 0x0

    .line 118
    if-eqz v0, :cond_11

    .line 119
    .line 120
    new-instance p2, Landroid/os/Bundle;

    .line 121
    .line 122
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 123
    .line 124
    .line 125
    iget-object p3, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->protocol:Lcom/android/systemui/plank/protocol/Protocol;

    .line 126
    .line 127
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/plank/protocol/Protocol$Command;->valueOf(Ljava/lang/String;)Lcom/android/systemui/plank/protocol/Protocol$Command;

    .line 131
    .line 132
    .line 133
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_5

    .line 135
    :catch_0
    sget-object p1, Lcom/android/systemui/plank/protocol/Protocol$Command;->none:Lcom/android/systemui/plank/protocol/Protocol$Command;

    .line 136
    .line 137
    :goto_5
    sget-object p3, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    aget p1, p3, p1

    .line 144
    .line 145
    if-eq p1, v2, :cond_f

    .line 146
    .line 147
    const/4 p3, 0x2

    .line 148
    if-eq p1, p3, :cond_8

    .line 149
    .line 150
    const-string p0, "key_monitor_result"

    .line 151
    .line 152
    invoke-virtual {p2, p0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_f

    .line 156
    .line 157
    :cond_8
    const-string p1, "key_monitor_result"

    .line 158
    .line 159
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    const-string p1, "key_monitor_data"

    .line 163
    .line 164
    iget-object p3, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->testInputMonitor:Lcom/android/systemui/plank/monitor/TestInputMonitor;

    .line 165
    .line 166
    iget-object p3, p3, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mInputHandler:Lcom/android/systemui/plank/monitor/TestInputHandler;

    .line 167
    .line 168
    if-eqz p3, :cond_a

    .line 169
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    new-instance v3, Lcom/android/systemui/plank/utils/GsonWrapper;

    .line 176
    .line 177
    invoke-direct {v3}, Lcom/android/systemui/plank/utils/GsonWrapper;-><init>()V

    .line 178
    .line 179
    .line 180
    new-instance v3, Lcom/google/gson/GsonBuilder;

    .line 181
    .line 182
    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    iput-boolean v2, v3, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    .line 186
    .line 187
    iput-boolean v2, v3, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 188
    .line 189
    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    iget-object v4, p3, Lcom/android/systemui/plank/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    .line 194
    .line 195
    if-eqz v4, :cond_9

    .line 196
    .line 197
    monitor-enter v4

    .line 198
    :try_start_1
    iget-object p3, p3, Lcom/android/systemui/plank/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    .line 199
    .line 200
    invoke-virtual {v3, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p3

    .line 204
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    .line 206
    .line 207
    monitor-exit v4

    .line 208
    goto :goto_6

    .line 209
    :catchall_0
    move-exception p0

    .line 210
    monitor-exit v4

    .line 211
    throw p0

    .line 212
    :cond_9
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p3

    .line 216
    goto :goto_7

    .line 217
    :cond_a
    const-string p3, ""

    .line 218
    .line 219
    :goto_7
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const-string p1, "key_logging_data"

    .line 223
    .line 224
    iget-object p3, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->apiLogger:Lcom/android/systemui/plank/ApiLogger;

    .line 225
    .line 226
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    new-instance p3, Lcom/android/systemui/plank/utils/GsonWrapper;

    .line 230
    .line 231
    invoke-direct {p3}, Lcom/android/systemui/plank/utils/GsonWrapper;-><init>()V

    .line 232
    .line 233
    .line 234
    new-instance p3, Lcom/google/gson/GsonBuilder;

    .line 235
    .line 236
    invoke-direct {p3}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    iput-boolean v2, p3, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    .line 240
    .line 241
    iput-boolean v2, p3, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 242
    .line 243
    invoke-virtual {p3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    .line 244
    .line 245
    .line 246
    move-result-object p3

    .line 247
    sget-object v0, Lcom/android/systemui/plank/ApiLogger;->list:Ljava/util/List;

    .line 248
    .line 249
    invoke-virtual {p3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p3

    .line 253
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget-object p0, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->testInputMonitor:Lcom/android/systemui/plank/monitor/TestInputMonitor;

    .line 257
    .line 258
    iget-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mInputMonitor:Landroid/view/InputMonitor;

    .line 259
    .line 260
    if-eqz p1, :cond_b

    .line 261
    .line 262
    invoke-virtual {p1}, Landroid/view/InputMonitor;->dispose()V

    .line 263
    .line 264
    .line 265
    :cond_b
    iput-object v1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mInputMonitor:Landroid/view/InputMonitor;

    .line 266
    .line 267
    iget-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mTestInputEventReceiver:Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;

    .line 268
    .line 269
    if-eqz p1, :cond_c

    .line 270
    .line 271
    invoke-virtual {p1}, Landroid/view/InputEventReceiver;->dispose()V

    .line 272
    .line 273
    .line 274
    :cond_c
    iput-object v1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mTestInputEventReceiver:Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;

    .line 275
    .line 276
    iget-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 277
    .line 278
    if-eqz p1, :cond_d

    .line 279
    .line 280
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 281
    .line 282
    .line 283
    :cond_d
    iput-object v1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 284
    .line 285
    iget-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mInputHandler:Lcom/android/systemui/plank/monitor/TestInputHandler;

    .line 286
    .line 287
    if-eqz p1, :cond_e

    .line 288
    .line 289
    iget-object p3, p1, Lcom/android/systemui/plank/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    .line 290
    .line 291
    monitor-enter p3

    .line 292
    :try_start_2
    iget-object p1, p1, Lcom/android/systemui/plank/monitor/TestInputHandler;->mEventHistory:Ljava/util/List;

    .line 293
    .line 294
    check-cast p1, Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 297
    .line 298
    .line 299
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 300
    .line 301
    monitor-exit p3

    .line 302
    goto :goto_8

    .line 303
    :catchall_1
    move-exception p0

    .line 304
    monitor-exit p3

    .line 305
    throw p0

    .line 306
    :cond_e
    :goto_8
    iput-object v1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mInputHandler:Lcom/android/systemui/plank/monitor/TestInputHandler;

    .line 307
    .line 308
    sget-object p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->tag:Ljava/lang/String;

    .line 309
    .line 310
    const-string p1, ":: stop ::"

    .line 311
    .line 312
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    goto/16 :goto_f

    .line 316
    .line 317
    :cond_f
    iget-object p1, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->apiLogger:Lcom/android/systemui/plank/ApiLogger;

    .line 318
    .line 319
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    sget-object p1, Lcom/android/systemui/plank/ApiLogger;->list:Ljava/util/List;

    .line 323
    .line 324
    check-cast p1, Ljava/util/ArrayList;

    .line 325
    .line 326
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 327
    .line 328
    .line 329
    iget-object p0, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->testInputMonitor:Lcom/android/systemui/plank/monitor/TestInputMonitor;

    .line 330
    .line 331
    iget-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mTestInputEventReceiver:Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;

    .line 332
    .line 333
    if-nez p1, :cond_10

    .line 334
    .line 335
    new-instance p1, Landroid/os/HandlerThread;

    .line 336
    .line 337
    new-instance p3, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    sget-object v0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->tag:Ljava/lang/String;

    .line 343
    .line 344
    const-string v1, ".Thread"

    .line 345
    .line 346
    invoke-static {p3, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p3

    .line 350
    invoke-direct {p1, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iput-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 354
    .line 355
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 356
    .line 357
    .line 358
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    iget-object p3, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mContext:Landroid/content/Context;

    .line 363
    .line 364
    invoke-virtual {p3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    invoke-virtual {p1, v0, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    iput-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mInputMonitor:Landroid/view/InputMonitor;

    .line 380
    .line 381
    new-instance p1, Lcom/android/systemui/plank/monitor/TestInputHandler;

    .line 382
    .line 383
    invoke-direct {p1, p3}, Lcom/android/systemui/plank/monitor/TestInputHandler;-><init>(Landroid/content/Context;)V

    .line 384
    .line 385
    .line 386
    iput-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mInputHandler:Lcom/android/systemui/plank/monitor/TestInputHandler;

    .line 387
    .line 388
    new-instance p1, Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;

    .line 389
    .line 390
    iget-object v1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mInputHandler:Lcom/android/systemui/plank/monitor/TestInputHandler;

    .line 391
    .line 392
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    iget-object v3, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mInputMonitor:Landroid/view/InputMonitor;

    .line 396
    .line 397
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v3}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    iget-object v4, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 405
    .line 406
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-direct {p1, p0, v1, v3, v4}, Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;-><init>(Lcom/android/systemui/plank/monitor/TestInputMonitor;Lcom/android/systemui/plank/monitor/TestInputMonitor$EventHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 414
    .line 415
    .line 416
    iput-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mTestInputEventReceiver:Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;

    .line 417
    .line 418
    new-instance p0, Landroid/content/Intent;

    .line 419
    .line 420
    const-string p1, "android.intent.action.MAIN"

    .line 421
    .line 422
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    const-string p1, "android.intent.category.HOME"

    .line 426
    .line 427
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    .line 429
    .line 430
    const/high16 p1, 0x10000000

    .line 431
    .line 432
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 433
    .line 434
    .line 435
    invoke-virtual {p3, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 436
    .line 437
    .line 438
    const-string p0, ":: start ::"

    .line 439
    .line 440
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    :cond_10
    const-string p0, "key_monitor_result"

    .line 444
    .line 445
    invoke-virtual {p2, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    .line 447
    .line 448
    goto/16 :goto_f

    .line 449
    .line 450
    :cond_11
    if-eqz p2, :cond_1d

    .line 451
    .line 452
    iget-object v0, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->protocol:Lcom/android/systemui/plank/protocol/Protocol;

    .line 453
    .line 454
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    .line 456
    .line 457
    :try_start_3
    invoke-static {p1}, Lcom/android/systemui/plank/protocol/Protocol$Command;->valueOf(Ljava/lang/String;)Lcom/android/systemui/plank/protocol/Protocol$Command;

    .line 458
    .line 459
    .line 460
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 461
    goto :goto_9

    .line 462
    :catch_1
    sget-object v0, Lcom/android/systemui/plank/protocol/Protocol$Command;->none:Lcom/android/systemui/plank/protocol/Protocol$Command;

    .line 463
    .line 464
    :goto_9
    sget-object v4, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 465
    .line 466
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    aget v0, v4, v0

    .line 471
    .line 472
    const/4 v4, 0x3

    .line 473
    if-ne v0, v4, :cond_17

    .line 474
    .line 475
    new-instance p1, Landroid/os/Bundle;

    .line 476
    .line 477
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 478
    .line 479
    .line 480
    const-wide/16 v0, 0x0

    .line 481
    .line 482
    if-eqz p3, :cond_12

    .line 483
    .line 484
    const-string v4, "key_long_type"

    .line 485
    .line 486
    invoke-virtual {p3, v4, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 487
    .line 488
    .line 489
    move-result-wide v0

    .line 490
    :cond_12
    iget-object p0, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->apiLogger:Lcom/android/systemui/plank/ApiLogger;

    .line 491
    .line 492
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    sget-object p0, Lcom/android/systemui/plank/ApiLogger;->list:Ljava/util/List;

    .line 496
    .line 497
    instance-of p3, p0, Ljava/util/Collection;

    .line 498
    .line 499
    if-eqz p3, :cond_13

    .line 500
    .line 501
    move-object p3, p0

    .line 502
    check-cast p3, Ljava/util/ArrayList;

    .line 503
    .line 504
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 505
    .line 506
    .line 507
    move-result p3

    .line 508
    if-eqz p3, :cond_13

    .line 509
    .line 510
    goto :goto_b

    .line 511
    :cond_13
    check-cast p0, Ljava/util/ArrayList;

    .line 512
    .line 513
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 514
    .line 515
    .line 516
    move-result-object p0

    .line 517
    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 518
    .line 519
    .line 520
    move-result p3

    .line 521
    if-eqz p3, :cond_16

    .line 522
    .line 523
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object p3

    .line 527
    check-cast p3, Lcom/android/systemui/plank/ApiInfo;

    .line 528
    .line 529
    iget-object v4, p3, Lcom/android/systemui/plank/ApiInfo;->name:Ljava/lang/String;

    .line 530
    .line 531
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    move-result v4

    .line 535
    if-eqz v4, :cond_15

    .line 536
    .line 537
    iget-wide v4, p3, Lcom/android/systemui/plank/ApiInfo;->timestamp:J

    .line 538
    .line 539
    cmp-long p3, v4, v0

    .line 540
    .line 541
    if-ltz p3, :cond_15

    .line 542
    .line 543
    move p3, v2

    .line 544
    goto :goto_a

    .line 545
    :cond_15
    move p3, v3

    .line 546
    :goto_a
    if-eqz p3, :cond_14

    .line 547
    .line 548
    goto :goto_c

    .line 549
    :cond_16
    :goto_b
    move v2, v3

    .line 550
    :goto_c
    const-string p0, "key_boolean_type"

    .line 551
    .line 552
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 553
    .line 554
    .line 555
    move-object p2, p1

    .line 556
    goto :goto_f

    .line 557
    :cond_17
    iget-object p0, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->plankDispatcherFactory:Lcom/android/systemui/plank/command/PlankDispatcherFactory;

    .line 558
    .line 559
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 560
    .line 561
    .line 562
    :try_start_4
    invoke-static {p2}, Lcom/android/systemui/plank/command/PlankDispatcherFactory$DispatcherType;->valueOf(Ljava/lang/String;)Lcom/android/systemui/plank/command/PlankDispatcherFactory$DispatcherType;

    .line 563
    .line 564
    .line 565
    move-result-object p2
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 566
    goto :goto_d

    .line 567
    :catch_2
    sget-object p2, Lcom/android/systemui/plank/command/PlankDispatcherFactory$DispatcherType;->none:Lcom/android/systemui/plank/command/PlankDispatcherFactory$DispatcherType;

    .line 568
    .line 569
    :goto_d
    iget-object v0, p0, Lcom/android/systemui/plank/command/PlankDispatcherFactory;->dependencies:Ljava/util/Map;

    .line 570
    .line 571
    if-nez v0, :cond_19

    .line 572
    .line 573
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 574
    .line 575
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 576
    .line 577
    .line 578
    iput-object v0, p0, Lcom/android/systemui/plank/command/PlankDispatcherFactory;->dependencies:Ljava/util/Map;

    .line 579
    .line 580
    sget-object v2, Lcom/android/systemui/plank/command/PlankDispatcherFactory$DispatcherType;->global_action:Lcom/android/systemui/plank/command/PlankDispatcherFactory$DispatcherType;

    .line 581
    .line 582
    new-instance v3, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher;

    .line 583
    .line 584
    invoke-direct {v3}, Lcom/android/systemui/plank/command/GlobalActionCommandDispatcher;-><init>()V

    .line 585
    .line 586
    .line 587
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    iget-object v0, p0, Lcom/android/systemui/plank/command/PlankDispatcherFactory;->dependencies:Ljava/util/Map;

    .line 591
    .line 592
    if-eqz v0, :cond_18

    .line 593
    .line 594
    goto :goto_e

    .line 595
    :cond_18
    move-object v0, v1

    .line 596
    :goto_e
    sget-object v2, Lcom/android/systemui/plank/command/PlankDispatcherFactory$DispatcherType;->navigation_bar:Lcom/android/systemui/plank/command/PlankDispatcherFactory$DispatcherType;

    .line 597
    .line 598
    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;

    .line 599
    .line 600
    const-class v4, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 601
    .line 602
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v4

    .line 606
    check-cast v4, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 607
    .line 608
    invoke-direct {v3, v4}, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    .line 609
    .line 610
    .line 611
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    :cond_19
    iget-object p0, p0, Lcom/android/systemui/plank/command/PlankDispatcherFactory;->dependencies:Ljava/util/Map;

    .line 615
    .line 616
    if-eqz p0, :cond_1a

    .line 617
    .line 618
    move-object v1, p0

    .line 619
    :cond_1a
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object p0

    .line 623
    check-cast p0, Lcom/android/systemui/plank/command/PlankCommandDispatcher;

    .line 624
    .line 625
    if-eqz p0, :cond_1b

    .line 626
    .line 627
    invoke-interface {p0, p1, p3}, Lcom/android/systemui/plank/command/PlankCommandDispatcher;->dispatch(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 628
    .line 629
    .line 630
    move-result-object p0

    .line 631
    if-nez p0, :cond_1c

    .line 632
    .line 633
    :cond_1b
    new-instance p0, Landroid/os/Bundle;

    .line 634
    .line 635
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 636
    .line 637
    .line 638
    :cond_1c
    move-object p2, p0

    .line 639
    goto :goto_f

    .line 640
    :cond_1d
    new-instance p2, Landroid/os/Bundle;

    .line 641
    .line 642
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 643
    .line 644
    .line 645
    const-string p0, "key_monitor_result"

    .line 646
    .line 647
    invoke-virtual {p2, p0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 648
    .line 649
    .line 650
    :goto_f
    return-object p2

    .line 651
    :cond_1e
    new-instance p0, Ljava/lang/RuntimeException;

    .line 652
    .line 653
    const-string p2, " doesn\'t support!!!"

    .line 654
    .line 655
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object p1

    .line 659
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    throw p0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onCreate()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final setContextAvailableCallback(Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/plank/protocol/TestProtocolProvider;->contextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

    .line 2
    .line 3
    return-void
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
