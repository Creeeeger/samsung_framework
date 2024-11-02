.class final Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;Ljava/lang/String;Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;->$packageName:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;->$budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;->$packageName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->access$buildConditions(Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;Ljava/lang/String;)Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$createRoutine$1;->$budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 12
    .line 13
    invoke-static {v3, p0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->access$buildActions(Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;)Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v3, "createRoutine : packageName="

    .line 18
    .line 19
    const-string v4, "SoundCraft.RoutineManager"

    .line 20
    .line 21
    invoke-static {v3, v1, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->service$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService;

    .line 31
    .line 32
    sget-object v4, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->SOUND_CRAFT:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    .line 33
    .line 34
    const-string v5, " Preset"

    .line 35
    .line 36
    invoke-static {v1, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v3, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sget-object v5, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->Companion:Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;

    .line 46
    .line 47
    invoke-static {v5, v4}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;->access$isValidRequest(Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_0

    .line 52
    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    .line 56
    .line 57
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const-string v7, "condition_size"

    .line 65
    .line 66
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    const-string v7, "action_size"

    .line 74
    .line 75
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    new-instance v7, Ljava/util/ArrayList;

    .line 83
    .line 84
    const/16 v8, 0xa

    .line 85
    .line 86
    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-eqz v9, :cond_1

    .line 102
    .line 103
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    check-cast v9, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    .line 108
    .line 109
    invoke-virtual {v9}, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    const-string v6, "condition_keys"

    .line 118
    .line 119
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    new-instance v7, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-eqz v8, :cond_2

    .line 144
    .line 145
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    check-cast v8, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    .line 150
    .line 151
    invoke-virtual {v8}, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_2
    const-string v6, "action_keys"

    .line 160
    .line 161
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 162
    .line 163
    .line 164
    const-string v6, "name"

    .line 165
    .line 166
    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string/jumbo v1, "type"

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->getValue()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    new-instance v1, Landroid/content/ContentValues;

    .line 180
    .line 181
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-eqz v6, :cond_3

    .line 197
    .line 198
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    check-cast v6, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    .line 203
    .line 204
    invoke-virtual {v6}, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    check-cast v6, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    .line 213
    .line 214
    invoke-static {v6}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->createContentValue(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-virtual {v1, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_3
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-eqz v4, :cond_4

    .line 235
    .line 236
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    check-cast v4, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    .line 241
    .line 242
    invoke-virtual {v4}, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    check-cast v4, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    .line 251
    .line 252
    invoke-static {v4}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->createContentValue(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_4
    iget-object p0, v3, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->contentHandler:Lcom/samsung/android/sdk/routines/automationservice/interfaces/ContentHandler;

    .line 261
    .line 262
    check-cast p0, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;

    .line 263
    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    iget-object p0, v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    .line 268
    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    const-string v0, "content://com.samsung.android.app.routines.routineinfoprovider/core_service"

    .line 274
    .line 275
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {p0, v0, v1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    if-eqz p0, :cond_5

    .line 284
    .line 285
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    :cond_5
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 289
    .line 290
    return-object p0
.end method
