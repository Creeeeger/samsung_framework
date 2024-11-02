.class final Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;
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

.field final synthetic $routineId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->$routineId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->$budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->$packageName:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->$routineId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->$budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v3, "updateBudsInfo : routineId="

    .line 8
    .line 9
    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, ", budsInfo="

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "SoundCraft.RoutineManager"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;

    .line 34
    .line 35
    sget v2, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->$r8$clinit:I

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->service$delegate:Lkotlin/Lazy;

    .line 38
    .line 39
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;

    .line 46
    .line 47
    iget-object v4, v2, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->context:Landroid/content/Context;

    .line 48
    .line 49
    sget-object v5, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->SOUND_CRAFT:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    .line 50
    .line 51
    iget-object v6, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->$routineId:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v7, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->$packageName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v2, v7}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->access$buildConditions(Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;Ljava/lang/String;)Ljava/util/HashMap;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-object v7, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;

    .line 60
    .line 61
    iget-object v8, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->$budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 62
    .line 63
    invoke-static {v7, v8}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->access$buildActions(Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;)Ljava/util/HashMap;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    check-cast v0, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    sget-object v8, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    .line 73
    .line 74
    const-string/jumbo v9, "updateRoutineByRoutineId: routineId:"

    .line 75
    .line 76
    .line 77
    const-string v10, ", conditions:"

    .line 78
    .line 79
    invoke-static {v9, v6, v10}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v10, ", actions:"

    .line 91
    .line 92
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    const-string v8, "AutomationServiceImpl@SDK"

    .line 110
    .line 111
    const-string v10, "Routine@AutomationService[1.0.1]: "

    .line 112
    .line 113
    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    sget-object v8, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->Companion:Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;

    .line 121
    .line 122
    invoke-static {v8, v5}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;->access$isValidRequest(Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-nez v5, :cond_0

    .line 127
    .line 128
    const/4 v0, -0x1

    .line 129
    goto/16 :goto_2

    .line 130
    .line 131
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    .line 132
    .line 133
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-eqz v9, :cond_1

    .line 149
    .line 150
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    check-cast v9, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    .line 155
    .line 156
    invoke-virtual {v9}, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    check-cast v9, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    .line 165
    .line 166
    invoke-static {v9}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->createContentValue(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    invoke-virtual {v5, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, v0, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->contentHandler:Lcom/samsung/android/sdk/routines/automationservice/interfaces/ContentHandler;

    .line 175
    .line 176
    check-cast v0, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    const-string v2, "content://com.samsung.android.app.routines.routineinfoprovider/core_service/condition_status/"

    .line 186
    .line 187
    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    const/4 v8, 0x0

    .line 196
    invoke-virtual {v0, v2, v5, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    new-instance v2, Landroid/content/ContentValues;

    .line 201
    .line 202
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    if-eqz v9, :cond_2

    .line 218
    .line 219
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    check-cast v9, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;

    .line 224
    .line 225
    invoke-virtual {v9}, Lcom/samsung/android/sdk/routines/automationservice/data/MetaInfo;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    check-cast v9, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    .line 234
    .line 235
    invoke-static {v9}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->createContentValue(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    invoke-virtual {v2, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_2
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    const-string v5, "content://com.samsung.android.app.routines.routineinfoprovider/core_service/action_status/"

    .line 248
    .line 249
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-virtual {v4, v5, v2, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    add-int/2addr v0, v2

    .line 262
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager$updateRoutine$1;->$routineId:Ljava/lang/String;

    .line 263
    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string p0, " update result="

    .line 273
    .line 274
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 288
    .line 289
    return-object p0
.end method
