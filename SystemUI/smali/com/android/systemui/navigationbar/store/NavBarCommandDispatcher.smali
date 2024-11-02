.class public final Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plank/command/PlankCommandDispatcher;


# instance fields
.field public final enabled:Z

.field public final handler:Landroid/os/Handler;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final originNavState:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->originNavState:Ljava/util/HashMap;

    .line 12
    .line 13
    new-instance p1, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 25
    .line 26
    const-string/jumbo v0, "user"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    const-string p1, "NaBarCommandDispatcher"

    .line 36
    .line 37
    const-string v0, "init()"

    .line 38
    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->enabled:Z

    .line 44
    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public final copyPrevStatesIfNeeded(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->originNavState:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, "NaBarCommandDispatcher"

    .line 14
    .line 15
    const-string v2, "copyPrevStates()"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 25
    .line 26
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 33
    .line 34
    invoke-static {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->copy$default(Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;)Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final dispatch(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const-string v3, "NaBarCommandDispatcher"

    .line 8
    .line 9
    const-string v4, "Execute fake handle event "

    .line 10
    .line 11
    const-string v5, "Update fakeParams "

    .line 12
    .line 13
    const-string v6, "Running fake store action "

    .line 14
    .line 15
    const-string v7, "Failed to restore originNavState: "

    .line 16
    .line 17
    const-string v8, "Failed to get params: "

    .line 18
    .line 19
    :try_start_0
    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const-string v9, "cmdType"

    .line 23
    .line 24
    invoke-virtual {v1, v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v9

    .line 28
    const-string v10, "eventName"

    .line 29
    .line 30
    invoke-virtual {v1, v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    const-string v11, "displayId"

    .line 35
    .line 36
    const/4 v12, 0x0

    .line 37
    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    const-string/jumbo v13, "params"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string/jumbo v13, "update"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v13, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v13

    .line 55
    iget-boolean v14, v0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->enabled:Z

    .line 56
    .line 57
    if-nez v14, :cond_0

    .line 58
    .line 59
    return-object v1

    .line 60
    :cond_0
    if-eqz v9, :cond_f

    .line 61
    .line 62
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const-string v12, ".."

    .line 67
    .line 68
    iget-object v15, v0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 69
    .line 70
    move/from16 v16, v13

    .line 71
    .line 72
    const-string v13, "Failed to get eventName: "

    .line 73
    .line 74
    sparse-switch v14, :sswitch_data_0

    .line 75
    .line 76
    .line 77
    goto/16 :goto_5

    .line 78
    .line 79
    :sswitch_0
    :try_start_1
    const-string v4, "FAKE_STATUS"

    .line 80
    .line 81
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_1

    .line 86
    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :cond_1
    if-eqz v2, :cond_3

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_2

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    const/4 v4, 0x0

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    :goto_0
    const/4 v4, 0x1

    .line 101
    :goto_1
    if-eqz v4, :cond_4

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    return-object v1

    .line 119
    :cond_4
    invoke-virtual {v0, v11}, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->copyPrevStatesIfNeeded(I)V

    .line 120
    .line 121
    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    const/4 v5, 0x1

    .line 141
    new-array v4, v5, [Ljava/lang/String;

    .line 142
    .line 143
    const-string v5, ","

    .line 144
    .line 145
    const/4 v7, 0x0

    .line 146
    aput-object v5, v4, v7

    .line 147
    .line 148
    const/4 v5, 0x6

    .line 149
    invoke-static {v2, v4, v7, v5}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-static {v15, v11, v2}, Lcom/android/systemui/navigationbar/util/NavBarReflectUtil;->updateFakeStatus(Lcom/android/systemui/navigationbar/store/NavBarStore;ILjava/util/List;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_5

    .line 157
    .line 158
    :sswitch_1
    const/4 v5, 0x1

    .line 159
    const/4 v7, 0x0

    .line 160
    const-string v4, "FAKE_STORE_ACTION"

    .line 161
    .line 162
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-nez v4, :cond_5

    .line 167
    .line 168
    goto/16 :goto_5

    .line 169
    .line 170
    :cond_5
    if-eqz v10, :cond_7

    .line 171
    .line 172
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-nez v4, :cond_6

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_6
    move v5, v7

    .line 180
    :cond_7
    :goto_2
    if-eqz v5, :cond_8

    .line 181
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    return-object v1

    .line 198
    :cond_8
    invoke-virtual {v0, v11}, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->copyPrevStatesIfNeeded(I)V

    .line 199
    .line 200
    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    invoke-static {v15, v10, v2, v11}, Lcom/android/systemui/navigationbar/util/NavBarReflectUtil;->runFakeStoreAction(Lcom/android/systemui/navigationbar/store/NavBarStore;Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_5

    .line 223
    .line 224
    :sswitch_2
    const/4 v5, 0x1

    .line 225
    const-string v2, "RESET"

    .line 226
    .line 227
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-nez v2, :cond_9

    .line 232
    .line 233
    goto/16 :goto_5

    .line 234
    .line 235
    :cond_9
    iget-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->originNavState:Ljava/util/HashMap;

    .line 236
    .line 237
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 246
    .line 247
    if-eqz v2, :cond_a

    .line 248
    .line 249
    check-cast v15, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 250
    .line 251
    invoke-virtual {v15, v11}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    iput-object v2, v4, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v4, " has null states."

    .line 267
    .line 268
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    :goto_3
    move v13, v5

    .line 279
    goto :goto_6

    .line 280
    :sswitch_3
    const/4 v5, 0x1

    .line 281
    const/4 v7, 0x0

    .line 282
    const-string v6, "FAKE_HANDLE_EVENT"

    .line 283
    .line 284
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v6

    .line 288
    if-nez v6, :cond_b

    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_b
    if-eqz v10, :cond_d

    .line 292
    .line 293
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 294
    .line 295
    .line 296
    move-result v6

    .line 297
    if-nez v6, :cond_c

    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_c
    move v5, v7

    .line 301
    :cond_d
    :goto_4
    if-eqz v5, :cond_e

    .line 302
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    return-object v1

    .line 319
    :cond_e
    invoke-virtual {v0, v11}, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->copyPrevStatesIfNeeded(I)V

    .line 320
    .line 321
    .line 322
    invoke-static {v10, v2}, Lcom/android/systemui/navigationbar/util/NavBarReflectUtil;->createFakeHandleEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    if-eqz v2, :cond_10

    .line 327
    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    const-class v4, Lcom/android/systemui/navigationbar/util/NavBarReflectUtil;

    .line 347
    .line 348
    check-cast v15, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 349
    .line 350
    invoke-virtual {v15, v4, v2, v11}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    .line 351
    .line 352
    .line 353
    goto :goto_5

    .line 354
    :cond_f
    move/from16 v16, v13

    .line 355
    .line 356
    :cond_10
    :goto_5
    move/from16 v13, v16

    .line 357
    .line 358
    :goto_6
    if-eqz v13, :cond_11

    .line 359
    .line 360
    iget-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->handler:Landroid/os/Handler;

    .line 361
    .line 362
    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;

    .line 363
    .line 364
    invoke-direct {v4, v0, v11}, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;-><init>(Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 368
    .line 369
    .line 370
    goto :goto_7

    .line 371
    :catch_0
    move-exception v0

    .line 372
    const-string v2, "An exception occurred while processing dispatch()."

    .line 373
    .line 374
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    .line 379
    .line 380
    :cond_11
    :goto_7
    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    return-object v1

    .line 384
    nop

    .line 385
    :sswitch_data_0
    .sparse-switch
        -0x6d4711b3 -> :sswitch_3
        0x4a4252f -> :sswitch_2
        0x5947301e -> :sswitch_1
        0x60bcf81c -> :sswitch_0
    .end sparse-switch
.end method
