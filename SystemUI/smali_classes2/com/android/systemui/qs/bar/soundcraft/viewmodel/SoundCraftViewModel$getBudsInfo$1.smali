.class final Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getBudsInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getBudsInfo$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getBudsInfo$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getBudsInfo$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v18, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, 0x0

    .line 21
    const/4 v10, 0x0

    .line 22
    const/4 v11, 0x0

    .line 23
    const/4 v12, 0x0

    .line 24
    const/4 v13, 0x0

    .line 25
    const/4 v14, 0x0

    .line 26
    const/4 v15, 0x0

    .line 27
    const/16 v16, 0xfff

    .line 28
    .line 29
    const/16 v17, 0x0

    .line 30
    .line 31
    move-object/from16 v3, v18

    .line 32
    .line 33
    invoke-direct/range {v3 .. v17}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;-><init>(Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Set;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v3, v0

    .line 38
    :goto_0
    iput-object v3, v2, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 39
    .line 40
    if-eqz v0, :cond_2a

    .line 41
    .line 42
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getBudsInfo$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 43
    .line 44
    iget-object v2, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 45
    .line 46
    iget-object v3, v2, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->settings:Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;

    .line 47
    .line 48
    iget-boolean v3, v3, Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;->isAppSettingEnabled:Z

    .line 49
    .line 50
    if-eqz v3, :cond_28

    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->audioPlaybackManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/audio/AudioPlaybackManager;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/audio/AudioPlaybackManager;->getPlayingAppPackage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->playingAudioPackageNameForAppSetting:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v2, v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getBudsInfo$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 61
    .line 62
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 63
    .line 64
    iget-object v3, v0, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->playingAudioPackageNameForAppSetting:Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v3, :cond_29

    .line 67
    .line 68
    iget-object v4, v0, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->settings:Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;

    .line 69
    .line 70
    iget-object v4, v4, Lcom/android/systemui/qs/bar/soundcraft/interfaces/settings/SoundCraftSettings;->budsPluginPackageName:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v5, v0, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 73
    .line 74
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->routineManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    const-string v6, "getBudsInfo : packageName="

    .line 80
    .line 81
    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    const-string v7, "SoundCraft.RoutineManager"

    .line 86
    .line 87
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->getRoutineId(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-eqz v3, :cond_18

    .line 95
    .line 96
    iget-object v6, v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->service$delegate:Lkotlin/Lazy;

    .line 97
    .line 98
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    check-cast v6, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService;

    .line 103
    .line 104
    iget-object v8, v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    .line 105
    .line 106
    sget-object v9, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->SOUND_CRAFT:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    .line 107
    .line 108
    check-cast v6, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;

    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    sget-object v0, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    .line 114
    .line 115
    const-string v10, "getRoutineDetailByRoutineId: routineId:"

    .line 116
    .line 117
    invoke-virtual {v10, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    const-string v11, "Routine@AutomationService[1.0.1]: "

    .line 125
    .line 126
    const-string v12, "AutomationServiceImpl@SDK"

    .line 127
    .line 128
    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    sget-object v0, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->Companion:Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;

    .line 136
    .line 137
    invoke-static {v0, v9}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;->access$isValidRequest(Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_1

    .line 142
    .line 143
    const/4 v0, 0x0

    .line 144
    const/4 v6, 0x1

    .line 145
    move-object/from16 v16, v2

    .line 146
    .line 147
    move-object/from16 v17, v4

    .line 148
    .line 149
    move-object/from16 v18, v5

    .line 150
    .line 151
    move-object/from16 p1, v7

    .line 152
    .line 153
    goto/16 :goto_18

    .line 154
    .line 155
    :cond_1
    const-string v10, "enabled"

    .line 156
    .line 157
    const-string/jumbo v13, "tag"

    .line 158
    .line 159
    .line 160
    const-string v14, "instance_id"

    .line 161
    .line 162
    iget-object v6, v6, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->contentHandler:Lcom/samsung/android/sdk/routines/automationservice/interfaces/ContentHandler;

    .line 163
    .line 164
    :try_start_0
    move-object v0, v6

    .line 165
    check-cast v0, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 171
    .line 172
    .line 173
    move-result-object v15

    .line 174
    const-string v0, "content://com.samsung.android.app.routines.routineinfoprovider/routine_info/routine/"

    .line 175
    .line 176
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 181
    .line 182
    .line 183
    move-result-object v16

    .line 184
    const/16 v17, 0x0

    .line 185
    .line 186
    const/16 v18, 0x0

    .line 187
    .line 188
    const/16 v19, 0x0

    .line 189
    .line 190
    const/16 v20, 0x0

    .line 191
    .line 192
    const/16 v21, 0x0

    .line 193
    .line 194
    invoke-virtual/range {v15 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 195
    .line 196
    .line 197
    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    if-eqz v15, :cond_8

    .line 199
    .line 200
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-lez v0, :cond_7

    .line 205
    .line 206
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_7

    .line 211
    .line 212
    sget-object v0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo$Companion;

    .line 213
    .line 214
    const-string v1, "name"

    .line 215
    .line 216
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 224
    if-nez v1, :cond_2

    .line 225
    .line 226
    goto/16 :goto_6

    .line 227
    .line 228
    :cond_2
    move-object/from16 v16, v2

    .line 229
    .line 230
    :try_start_2
    const-string/jumbo v2, "uuid"

    .line 231
    .line 232
    .line 233
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    if-nez v2, :cond_3

    .line 242
    .line 243
    goto/16 :goto_7

    .line 244
    .line 245
    :cond_3
    sget-object v17, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->Companion:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 246
    .line 247
    move-object/from16 v18, v5

    .line 248
    .line 249
    :try_start_3
    const-string/jumbo v5, "type"

    .line 250
    .line 251
    .line 252
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 261
    .line 262
    .line 263
    move-object/from16 v17, v4

    .line 264
    .line 265
    :try_start_4
    invoke-static {}, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->values()[Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    .line 266
    .line 267
    .line 268
    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 269
    move-object/from16 p1, v7

    .line 270
    .line 271
    :try_start_5
    array-length v7, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 272
    const/16 v19, 0x0

    .line 273
    .line 274
    move-object/from16 v20, v11

    .line 275
    .line 276
    move/from16 v11, v19

    .line 277
    .line 278
    :goto_1
    if-ge v11, v7, :cond_5

    .line 279
    .line 280
    :try_start_6
    aget-object v19, v4, v11

    .line 281
    .line 282
    move-object/from16 v21, v4

    .line 283
    .line 284
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->getValue()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-eqz v4, :cond_4

    .line 293
    .line 294
    goto :goto_2

    .line 295
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 296
    .line 297
    move-object/from16 v4, v21

    .line 298
    .line 299
    goto :goto_1

    .line 300
    :cond_5
    const/16 v19, 0x0

    .line 301
    .line 302
    :goto_2
    move-object/from16 v4, v19

    .line 303
    .line 304
    if-nez v4, :cond_6

    .line 305
    .line 306
    goto :goto_8

    .line 307
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    new-instance v0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;

    .line 311
    .line 312
    const/4 v5, 0x0

    .line 313
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 314
    .line 315
    .line 316
    :try_start_7
    invoke-static {v15, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 317
    .line 318
    .line 319
    goto/16 :goto_c

    .line 320
    .line 321
    :catchall_0
    move-exception v0

    .line 322
    :goto_3
    move-object/from16 v20, v11

    .line 323
    .line 324
    goto :goto_9

    .line 325
    :catchall_1
    move-exception v0

    .line 326
    :goto_4
    move-object/from16 p1, v7

    .line 327
    .line 328
    goto :goto_3

    .line 329
    :catchall_2
    move-exception v0

    .line 330
    move-object/from16 v17, v4

    .line 331
    .line 332
    goto :goto_4

    .line 333
    :catchall_3
    move-exception v0

    .line 334
    :goto_5
    move-object/from16 v17, v4

    .line 335
    .line 336
    move-object/from16 v18, v5

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_7
    :goto_6
    move-object/from16 v16, v2

    .line 340
    .line 341
    :goto_7
    move-object/from16 v17, v4

    .line 342
    .line 343
    move-object/from16 v18, v5

    .line 344
    .line 345
    move-object/from16 p1, v7

    .line 346
    .line 347
    move-object/from16 v20, v11

    .line 348
    .line 349
    :goto_8
    :try_start_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 350
    .line 351
    const/4 v0, 0x0

    .line 352
    :try_start_9
    invoke-static {v15, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 353
    .line 354
    .line 355
    goto :goto_b

    .line 356
    :catch_0
    move-exception v0

    .line 357
    goto :goto_a

    .line 358
    :catchall_4
    move-exception v0

    .line 359
    goto :goto_9

    .line 360
    :catchall_5
    move-exception v0

    .line 361
    move-object/from16 v16, v2

    .line 362
    .line 363
    goto :goto_5

    .line 364
    :goto_9
    move-object v1, v0

    .line 365
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 366
    :catchall_6
    move-exception v0

    .line 367
    move-object v2, v0

    .line 368
    :try_start_b
    invoke-static {v15, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 369
    .line 370
    .line 371
    throw v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 372
    :cond_8
    move-object/from16 v16, v2

    .line 373
    .line 374
    move-object/from16 v17, v4

    .line 375
    .line 376
    move-object/from16 v18, v5

    .line 377
    .line 378
    move-object/from16 p1, v7

    .line 379
    .line 380
    move-object/from16 v20, v11

    .line 381
    .line 382
    goto :goto_b

    .line 383
    :catch_1
    move-exception v0

    .line 384
    move-object/from16 v16, v2

    .line 385
    .line 386
    move-object/from16 v17, v4

    .line 387
    .line 388
    move-object/from16 v18, v5

    .line 389
    .line 390
    move-object/from16 p1, v7

    .line 391
    .line 392
    move-object/from16 v20, v11

    .line 393
    .line 394
    :goto_a
    sget-object v1, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    .line 395
    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    const-string/jumbo v4, "queryRoutineInfo: "

    .line 399
    .line 400
    .line 401
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    invoke-static {v12, v0}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    :goto_b
    const/4 v0, 0x0

    .line 422
    :goto_c
    move-object v1, v0

    .line 423
    if-eqz v1, :cond_13

    .line 424
    .line 425
    iget-object v0, v1, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->type:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    .line 426
    .line 427
    if-eq v0, v9, :cond_9

    .line 428
    .line 429
    goto/16 :goto_15

    .line 430
    .line 431
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    .line 432
    .line 433
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .line 435
    .line 436
    :try_start_c
    move-object v0, v6

    .line 437
    check-cast v0, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;

    .line 438
    .line 439
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 443
    .line 444
    .line 445
    move-result-object v21

    .line 446
    const-string v0, "content://com.samsung.android.app.routines.routineinfoprovider/core_service/condition_status/"

    .line 447
    .line 448
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 453
    .line 454
    .line 455
    move-result-object v22

    .line 456
    const/16 v23, 0x0

    .line 457
    .line 458
    const/16 v24, 0x0

    .line 459
    .line 460
    const/16 v25, 0x0

    .line 461
    .line 462
    const/16 v26, 0x0

    .line 463
    .line 464
    const/16 v27, 0x0

    .line 465
    .line 466
    invoke-virtual/range {v21 .. v27}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 467
    .line 468
    .line 469
    move-result-object v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 470
    if-eqz v4, :cond_d

    .line 471
    .line 472
    :try_start_d
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 473
    .line 474
    .line 475
    move-result v0

    .line 476
    if-lez v0, :cond_c

    .line 477
    .line 478
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    if-eqz v0, :cond_c

    .line 483
    .line 484
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    move-result v0

    .line 488
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    move-result v5

    .line 492
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    move-result v7

    .line 496
    :cond_a
    sget-object v9, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus$Companion;

    .line 497
    .line 498
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 499
    .line 500
    .line 501
    move-result-wide v22

    .line 502
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 503
    .line 504
    .line 505
    move-result v11

    .line 506
    const/4 v15, 0x1

    .line 507
    if-ne v11, v15, :cond_b

    .line 508
    .line 509
    const/4 v11, 0x1

    .line 510
    goto :goto_d

    .line 511
    :cond_b
    const/4 v11, 0x0

    .line 512
    :goto_d
    move/from16 v24, v11

    .line 513
    .line 514
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v25

    .line 518
    invoke-static {v4}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->getParameterValues(Landroid/database/Cursor;)Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    .line 519
    .line 520
    .line 521
    move-result-object v26

    .line 522
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    .line 524
    .line 525
    new-instance v9, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;

    .line 526
    .line 527
    const/16 v27, 0x0

    .line 528
    .line 529
    move-object/from16 v21, v9

    .line 530
    .line 531
    invoke-direct/range {v21 .. v27}, Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;-><init>(JZLjava/lang/String;Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 538
    .line 539
    .line 540
    move-result v9

    .line 541
    if-nez v9, :cond_a

    .line 542
    .line 543
    :cond_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 544
    .line 545
    const/4 v0, 0x0

    .line 546
    :try_start_e
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 547
    .line 548
    .line 549
    goto :goto_e

    .line 550
    :catchall_7
    move-exception v0

    .line 551
    move-object v5, v0

    .line 552
    :try_start_f
    throw v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 553
    :catchall_8
    move-exception v0

    .line 554
    move-object v7, v0

    .line 555
    :try_start_10
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 556
    .line 557
    .line 558
    throw v7
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    .line 559
    :catch_2
    move-exception v0

    .line 560
    sget-object v4, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    .line 561
    .line 562
    new-instance v5, Ljava/lang/StringBuilder;

    .line 563
    .line 564
    const-string/jumbo v7, "queryConditionStatus: "

    .line 565
    .line 566
    .line 567
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    invoke-static {v12, v0}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    :cond_d
    :goto_e
    new-instance v4, Ljava/util/ArrayList;

    .line 588
    .line 589
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .line 591
    .line 592
    :try_start_11
    check-cast v6, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;

    .line 593
    .line 594
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 598
    .line 599
    .line 600
    move-result-object v21

    .line 601
    const-string v0, "content://com.samsung.android.app.routines.routineinfoprovider/core_service/action_status/"

    .line 602
    .line 603
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 608
    .line 609
    .line 610
    move-result-object v22

    .line 611
    const/16 v23, 0x0

    .line 612
    .line 613
    const/16 v24, 0x0

    .line 614
    .line 615
    const/16 v25, 0x0

    .line 616
    .line 617
    const/16 v26, 0x0

    .line 618
    .line 619
    const/16 v27, 0x0

    .line 620
    .line 621
    invoke-virtual/range {v21 .. v27}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 622
    .line 623
    .line 624
    move-result-object v5
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    .line 625
    if-eqz v5, :cond_11

    .line 626
    .line 627
    :try_start_12
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    if-lez v0, :cond_10

    .line 632
    .line 633
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    if-eqz v0, :cond_10

    .line 638
    .line 639
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 644
    .line 645
    .line 646
    move-result v6

    .line 647
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 648
    .line 649
    .line 650
    move-result v7

    .line 651
    :cond_e
    sget-object v8, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus$Companion;

    .line 652
    .line 653
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 654
    .line 655
    .line 656
    move-result-wide v22

    .line 657
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 658
    .line 659
    .line 660
    move-result v9
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 661
    const/4 v10, 0x1

    .line 662
    if-ne v9, v10, :cond_f

    .line 663
    .line 664
    move/from16 v24, v10

    .line 665
    .line 666
    goto :goto_f

    .line 667
    :cond_f
    const/4 v9, 0x0

    .line 668
    move/from16 v24, v9

    .line 669
    .line 670
    :goto_f
    :try_start_13
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v25

    .line 674
    invoke-static {v5}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->getParameterValues(Landroid/database/Cursor;)Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    .line 675
    .line 676
    .line 677
    move-result-object v26

    .line 678
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 679
    .line 680
    .line 681
    new-instance v8, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;

    .line 682
    .line 683
    const/16 v27, 0x0

    .line 684
    .line 685
    move-object/from16 v21, v8

    .line 686
    .line 687
    invoke-direct/range {v21 .. v27}, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;-><init>(JZLjava/lang/String;Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 694
    .line 695
    .line 696
    move-result v8

    .line 697
    if-nez v8, :cond_e

    .line 698
    .line 699
    goto :goto_10

    .line 700
    :cond_10
    const/4 v0, 0x1

    .line 701
    move v10, v0

    .line 702
    :goto_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 703
    .line 704
    const/4 v0, 0x0

    .line 705
    :try_start_14
    invoke-static {v5, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    .line 706
    .line 707
    .line 708
    goto :goto_13

    .line 709
    :catch_3
    move-exception v0

    .line 710
    goto :goto_12

    .line 711
    :catchall_9
    move-exception v0

    .line 712
    goto :goto_11

    .line 713
    :catchall_a
    move-exception v0

    .line 714
    const/4 v6, 0x1

    .line 715
    move v10, v6

    .line 716
    :goto_11
    move-object v6, v0

    .line 717
    :try_start_15
    throw v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    .line 718
    :catchall_b
    move-exception v0

    .line 719
    move-object v7, v0

    .line 720
    :try_start_16
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 721
    .line 722
    .line 723
    throw v7
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3

    .line 724
    :cond_11
    const/4 v0, 0x1

    .line 725
    move v6, v0

    .line 726
    goto :goto_14

    .line 727
    :catch_4
    move-exception v0

    .line 728
    const/4 v10, 0x1

    .line 729
    :goto_12
    sget-object v5, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    .line 730
    .line 731
    new-instance v6, Ljava/lang/StringBuilder;

    .line 732
    .line 733
    const-string/jumbo v7, "queryActionStatus: "

    .line 734
    .line 735
    .line 736
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    .line 752
    .line 753
    invoke-static {v12, v0}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    :goto_13
    move v6, v10

    .line 757
    :goto_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 758
    .line 759
    .line 760
    move-result v0

    .line 761
    if-nez v0, :cond_15

    .line 762
    .line 763
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 764
    .line 765
    .line 766
    move-result v0

    .line 767
    if-eqz v0, :cond_12

    .line 768
    .line 769
    goto :goto_17

    .line 770
    :cond_12
    new-instance v0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;

    .line 771
    .line 772
    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;-><init>(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;Ljava/util/List;Ljava/util/List;)V

    .line 773
    .line 774
    .line 775
    sget-object v1, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    .line 776
    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    .line 778
    .line 779
    const-string v4, "getRoutineDetailByRoutineUuid: "

    .line 780
    .line 781
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v2

    .line 791
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 792
    .line 793
    .line 794
    move-object/from16 v1, v20

    .line 795
    .line 796
    invoke-virtual {v1, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    .line 802
    .line 803
    goto :goto_18

    .line 804
    :cond_13
    :goto_15
    const/4 v0, 0x1

    .line 805
    sget-object v2, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    .line 806
    .line 807
    new-instance v4, Ljava/lang/StringBuilder;

    .line 808
    .line 809
    const-string v5, "getRoutineDetailByRoutineUuid() routineInfo.type: "

    .line 810
    .line 811
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    if-eqz v1, :cond_14

    .line 815
    .line 816
    iget-object v1, v1, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->type:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    .line 817
    .line 818
    goto :goto_16

    .line 819
    :cond_14
    const/4 v1, 0x0

    .line 820
    :goto_16
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v1

    .line 827
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 828
    .line 829
    .line 830
    invoke-static {v12, v1}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    move v6, v0

    .line 834
    :cond_15
    :goto_17
    const/4 v0, 0x0

    .line 835
    :goto_18
    if-eqz v0, :cond_17

    .line 836
    .line 837
    iget-object v1, v0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->actions:Ljava/util/List;

    .line 838
    .line 839
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 840
    .line 841
    .line 842
    move-result-object v1

    .line 843
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 844
    .line 845
    .line 846
    move-result v2

    .line 847
    if-eqz v2, :cond_16

    .line 848
    .line 849
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v2

    .line 853
    check-cast v2, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;

    .line 854
    .line 855
    iget-object v4, v2, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;->tag:Ljava/lang/String;

    .line 856
    .line 857
    iget-object v2, v2, Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;->parameterValues:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    .line 858
    .line 859
    invoke-virtual {v2}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->toJsonString()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v2

    .line 863
    const-string v5, "- getRoutineDetailById : action: "

    .line 864
    .line 865
    const-string v7, " - "

    .line 866
    .line 867
    move-object/from16 v8, p1

    .line 868
    .line 869
    invoke-static {v5, v4, v7, v2, v8}, Lcom/android/systemui/keyguard/CustomizationProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    goto :goto_19

    .line 873
    :cond_16
    move-object/from16 v8, p1

    .line 874
    .line 875
    goto :goto_1a

    .line 876
    :cond_17
    move-object/from16 v8, p1

    .line 877
    .line 878
    const/4 v0, 0x0

    .line 879
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 880
    .line 881
    const-string v2, "getRoutineDetailById : routineId="

    .line 882
    .line 883
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    const-string v2, ", return RoutineDetail="

    .line 890
    .line 891
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    .line 903
    .line 904
    goto :goto_1b

    .line 905
    :cond_18
    move-object/from16 v16, v2

    .line 906
    .line 907
    move-object/from16 v17, v4

    .line 908
    .line 909
    move-object/from16 v18, v5

    .line 910
    .line 911
    move-object v8, v7

    .line 912
    const/4 v6, 0x1

    .line 913
    const/4 v0, 0x0

    .line 914
    :goto_1b
    if-eqz v0, :cond_27

    .line 915
    .line 916
    sget-object v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    .line 917
    .line 918
    sget-object v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->EQUALIZER:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 919
    .line 920
    const/4 v2, 0x0

    .line 921
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 922
    .line 923
    .line 924
    move-result-object v3

    .line 925
    sget-object v4, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;->Companion:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;

    .line 926
    .line 927
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 928
    .line 929
    .line 930
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;->findProjectName(Ljava/lang/String;)Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v4

    .line 934
    if-eqz v4, :cond_1b

    .line 935
    .line 936
    sget-object v5, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    .line 937
    .line 938
    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->getTag(Ljava/lang/String;)Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v1

    .line 942
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v4

    .line 946
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 947
    .line 948
    .line 949
    invoke-static {v0, v1, v4}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->getActionValue(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    instance-of v4, v3, Ljava/lang/Boolean;

    .line 954
    .line 955
    if-eqz v4, :cond_19

    .line 956
    .line 957
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 958
    .line 959
    .line 960
    move-result v1

    .line 961
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 962
    .line 963
    .line 964
    move-result-object v1

    .line 965
    check-cast v1, Ljava/lang/Integer;

    .line 966
    .line 967
    goto :goto_1c

    .line 968
    :cond_19
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 969
    .line 970
    .line 971
    move-result v1

    .line 972
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 973
    .line 974
    .line 975
    move-result-object v1

    .line 976
    :goto_1c
    if-nez v1, :cond_1a

    .line 977
    .line 978
    goto :goto_1d

    .line 979
    :cond_1a
    move-object v3, v1

    .line 980
    :cond_1b
    :goto_1d
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 981
    .line 982
    .line 983
    move-result v1

    .line 984
    sget-object v3, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->SPATIAL_AUDIO:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 985
    .line 986
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 987
    .line 988
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;->findProjectName(Ljava/lang/String;)Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v5

    .line 992
    if-eqz v5, :cond_1c

    .line 993
    .line 994
    sget-object v7, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    .line 995
    .line 996
    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->getTag(Ljava/lang/String;)Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v3

    .line 1000
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v5

    .line 1004
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1005
    .line 1006
    .line 1007
    invoke-static {v0, v3, v5}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->getActionValue(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v3

    .line 1011
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1012
    .line 1013
    .line 1014
    move-result v3

    .line 1015
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v3

    .line 1019
    if-nez v3, :cond_1d

    .line 1020
    .line 1021
    :cond_1c
    move-object v3, v4

    .line 1022
    :cond_1d
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1023
    .line 1024
    .line 1025
    move-result v3

    .line 1026
    sget-object v5, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->HEAD_TRACKING:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 1027
    .line 1028
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;->findProjectName(Ljava/lang/String;)Ljava/lang/String;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v7

    .line 1032
    if-eqz v7, :cond_1f

    .line 1033
    .line 1034
    sget-object v9, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    .line 1035
    .line 1036
    invoke-virtual {v5, v7}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->getTag(Ljava/lang/String;)Ljava/lang/String;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v5

    .line 1040
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v7

    .line 1044
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1045
    .line 1046
    .line 1047
    invoke-static {v0, v5, v7}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->getActionValue(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v5

    .line 1051
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v5

    .line 1055
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v5

    .line 1059
    if-nez v5, :cond_1e

    .line 1060
    .line 1061
    goto :goto_1e

    .line 1062
    :cond_1e
    move-object v4, v5

    .line 1063
    :cond_1f
    :goto_1e
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1064
    .line 1065
    .line 1066
    move-result v4

    .line 1067
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getEqualizerList()Ljava/util/List;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v5

    .line 1071
    if-eqz v5, :cond_21

    .line 1072
    .line 1073
    new-instance v7, Ljava/util/ArrayList;

    .line 1074
    .line 1075
    const/16 v9, 0xa

    .line 1076
    .line 1077
    invoke-static {v5, v9}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1078
    .line 1079
    .line 1080
    move-result v9

    .line 1081
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1082
    .line 1083
    .line 1084
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v5

    .line 1088
    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1089
    .line 1090
    .line 1091
    move-result v9

    .line 1092
    if-eqz v9, :cond_22

    .line 1093
    .line 1094
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v9

    .line 1098
    check-cast v9, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;

    .line 1099
    .line 1100
    new-instance v10, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;

    .line 1101
    .line 1102
    invoke-virtual {v9}, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;->getName()Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v11

    .line 1106
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getEqualizerList()Ljava/util/List;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v12

    .line 1110
    if-eqz v12, :cond_20

    .line 1111
    .line 1112
    invoke-interface {v12, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 1113
    .line 1114
    .line 1115
    move-result v9

    .line 1116
    if-ne v9, v1, :cond_20

    .line 1117
    .line 1118
    move v9, v6

    .line 1119
    goto :goto_20

    .line 1120
    :cond_20
    move v9, v2

    .line 1121
    :goto_20
    invoke-direct {v10, v11, v9}, Lcom/android/systemui/qs/bar/soundcraft/model/Equalizer;-><init>(Ljava/lang/String;Z)V

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    .line 1126
    .line 1127
    goto :goto_1f

    .line 1128
    :cond_21
    const/4 v7, 0x0

    .line 1129
    :cond_22
    move-object/from16 v20, v7

    .line 1130
    .line 1131
    sget-object v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    .line 1132
    .line 1133
    sget-object v1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->VOICE_BOOST:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 1134
    .line 1135
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1136
    .line 1137
    sget-object v5, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo;->Companion:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;

    .line 1138
    .line 1139
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1140
    .line 1141
    .line 1142
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;->findProjectName(Ljava/lang/String;)Ljava/lang/String;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v5

    .line 1146
    if-eqz v5, :cond_23

    .line 1147
    .line 1148
    sget-object v6, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    .line 1149
    .line 1150
    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->getTag(Ljava/lang/String;)Ljava/lang/String;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v1

    .line 1154
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v5

    .line 1158
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1159
    .line 1160
    .line 1161
    invoke-static {v0, v1, v5}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->getActionValue(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v1

    .line 1165
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1166
    .line 1167
    .line 1168
    move-result v1

    .line 1169
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v1

    .line 1173
    if-nez v1, :cond_24

    .line 1174
    .line 1175
    :cond_23
    move-object v1, v2

    .line 1176
    :cond_24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1177
    .line 1178
    .line 1179
    move-result v1

    .line 1180
    sget-object v5, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->VOLUME_NORMALIZATION:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;

    .line 1181
    .line 1182
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/BudsPluginInfo$Companion;->findProjectName(Ljava/lang/String;)Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v6

    .line 1186
    if-eqz v6, :cond_26

    .line 1187
    .line 1188
    sget-object v7, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;

    .line 1189
    .line 1190
    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/ActionType;->getTag(Ljava/lang/String;)Ljava/lang/String;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v5

    .line 1194
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v6

    .line 1198
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1199
    .line 1200
    .line 1201
    invoke-static {v0, v5, v6}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/extension/RoutineDetailActionExtractor;->getActionValue(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v0

    .line 1205
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1206
    .line 1207
    .line 1208
    move-result v0

    .line 1209
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v0

    .line 1213
    if-nez v0, :cond_25

    .line 1214
    .line 1215
    goto :goto_21

    .line 1216
    :cond_25
    move-object v2, v0

    .line 1217
    :cond_26
    :goto_21
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1218
    .line 1219
    .line 1220
    move-result v0

    .line 1221
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 1222
    .line 1223
    const/16 v19, 0x0

    .line 1224
    .line 1225
    const/16 v21, 0x0

    .line 1226
    .line 1227
    const/16 v22, 0x0

    .line 1228
    .line 1229
    const/16 v23, 0x0

    .line 1230
    .line 1231
    const/16 v24, 0x0

    .line 1232
    .line 1233
    const/16 v25, 0x0

    .line 1234
    .line 1235
    const/16 v26, 0x0

    .line 1236
    .line 1237
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v27

    .line 1241
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v28

    .line 1245
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v29

    .line 1249
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v30

    .line 1253
    const/16 v31, 0xfd

    .line 1254
    .line 1255
    const/16 v32, 0x0

    .line 1256
    .line 1257
    move-object/from16 v18, v2

    .line 1258
    .line 1259
    invoke-direct/range {v18 .. v32}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;-><init>(Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Set;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1260
    .line 1261
    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1263
    .line 1264
    const-string v1, "getBudsInfo : return budsInfo="

    .line 1265
    .line 1266
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1267
    .line 1268
    .line 1269
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v0

    .line 1276
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    .line 1278
    .line 1279
    goto :goto_22

    .line 1280
    :cond_27
    const/4 v2, 0x0

    .line 1281
    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1282
    .line 1283
    const-string v1, "onCreateView : routineDetail -> budsInfo="

    .line 1284
    .line 1285
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1289
    .line 1290
    .line 1291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v0

    .line 1295
    const-string v1, "SoundCraft.SoundCraftViewModel"

    .line 1296
    .line 1297
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    .line 1299
    .line 1300
    if-eqz v2, :cond_29

    .line 1301
    .line 1302
    move-object/from16 v1, v16

    .line 1303
    .line 1304
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 1305
    .line 1306
    iput-object v2, v0, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 1307
    .line 1308
    goto :goto_23

    .line 1309
    :cond_28
    const/4 v0, 0x0

    .line 1310
    iput-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->playingAudioPackageNameForAppSetting:Ljava/lang/String;

    .line 1311
    .line 1312
    :cond_29
    :goto_23
    move-object/from16 v1, p0

    .line 1313
    .line 1314
    iget-object v0, v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel$getBudsInfo$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 1315
    .line 1316
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1317
    .line 1318
    .line 1319
    :cond_2a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1320
    .line 1321
    return-object v0
.end method
