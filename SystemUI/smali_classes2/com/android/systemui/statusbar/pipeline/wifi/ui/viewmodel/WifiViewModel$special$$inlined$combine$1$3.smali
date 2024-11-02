.class public final Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.statusbar.pipeline.wifi.ui.viewmodel.WifiViewModel$special$$inlined$combine$1$3"
    f = "WifiViewModel.kt"
    l = {
        0xee
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $connectivityConstants$inlined:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

.field final synthetic $semWifiManager$inlined:Lcom/samsung/android/wifi/SemWifiManager;

.field final synthetic $wifiConstants$inlined:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/samsung/android/wifi/SemWifiManager;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->$semWifiManager$inlined:Lcom/samsung/android/wifi/SemWifiManager;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->$wifiConstants$inlined:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->$connectivityConstants$inlined:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

    .line 8
    .line 9
    const/4 p2, 0x3

    .line 10
    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    check-cast p2, [Ljava/lang/Object;

    .line 4
    .line 5
    move-object v1, p3

    .line 6
    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 7
    .line 8
    new-instance p3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->$semWifiManager$inlined:Lcom/samsung/android/wifi/SemWifiManager;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->$wifiConstants$inlined:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;

    .line 15
    .line 16
    iget-object v5, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->$connectivityConstants$inlined:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

    .line 17
    .line 18
    move-object v0, p3

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/samsung/android/wifi/SemWifiManager;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p2, p3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    .line 28
    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->label:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto/16 :goto_6

    .line 14
    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, [Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    aget-object v3, v1, v3

    .line 36
    .line 37
    check-cast v3, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    aget-object v4, v1, v2

    .line 44
    .line 45
    check-cast v4, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/4 v5, 0x2

    .line 52
    aget-object v5, v1, v5

    .line 53
    .line 54
    check-cast v5, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    const/4 v6, 0x3

    .line 61
    aget-object v6, v1, v6

    .line 62
    .line 63
    check-cast v6, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    .line 64
    .line 65
    const/4 v7, 0x4

    .line 66
    aget-object v7, v1, v7

    .line 67
    .line 68
    check-cast v7, Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 69
    .line 70
    const/4 v8, 0x5

    .line 71
    aget-object v8, v1, v8

    .line 72
    .line 73
    check-cast v8, Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    const/4 v9, 0x6

    .line 80
    aget-object v1, v1, v9

    .line 81
    .line 82
    check-cast v1, Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v3, :cond_13

    .line 89
    .line 90
    if-nez v5, :cond_13

    .line 91
    .line 92
    instance-of v3, v6, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$CarrierMerged;

    .line 93
    .line 94
    if-nez v3, :cond_13

    .line 95
    .line 96
    if-eqz v8, :cond_2

    .line 97
    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :cond_2
    if-nez v1, :cond_3

    .line 101
    .line 102
    instance-of v5, v6, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 103
    .line 104
    if-eqz v5, :cond_3

    .line 105
    .line 106
    move-object v5, v6

    .line 107
    check-cast v5, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 108
    .line 109
    iget-boolean v5, v5, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isValidated:Z

    .line 110
    .line 111
    if-eqz v5, :cond_3

    .line 112
    .line 113
    iget-object v5, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->$semWifiManager$inlined:Lcom/samsung/android/wifi/SemWifiManager;

    .line 114
    .line 115
    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemWifiManager;->getWcmEverQualityTested()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-ne v5, v2, :cond_3

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    move v2, v1

    .line 123
    :goto_0
    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_WIFI_FLASHING:Z

    .line 124
    .line 125
    if-eqz v1, :cond_4

    .line 126
    .line 127
    instance-of v5, v6, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 128
    .line 129
    if-eqz v5, :cond_4

    .line 130
    .line 131
    if-nez v2, :cond_4

    .line 132
    .line 133
    new-instance v3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    .line 134
    .line 135
    new-instance v5, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    .line 136
    .line 137
    const/4 v7, 0x0

    .line 138
    invoke-direct {v5, v7}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const v7, 0x7f081219

    .line 142
    .line 143
    .line 144
    invoke-direct {v3, v7, v5}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription$Loaded;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_3

    .line 148
    .line 149
    :cond_4
    if-eqz v7, :cond_d

    .line 150
    .line 151
    iget-object v5, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;

    .line 152
    .line 153
    sget v8, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;->NO_INTERNET:I

    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    instance-of v8, v6, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Unavailable;

    .line 159
    .line 160
    if-eqz v8, :cond_5

    .line 161
    .line 162
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;

    .line 163
    .line 164
    goto/16 :goto_3

    .line 165
    .line 166
    :cond_5
    instance-of v8, v6, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Invalid;

    .line 167
    .line 168
    if-eqz v8, :cond_6

    .line 169
    .line 170
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;

    .line 171
    .line 172
    goto/16 :goto_3

    .line 173
    .line 174
    :cond_6
    if-eqz v3, :cond_7

    .line 175
    .line 176
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;

    .line 177
    .line 178
    goto/16 :goto_3

    .line 179
    .line 180
    :cond_7
    instance-of v3, v6, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Inactive;

    .line 181
    .line 182
    sget v8, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;->NO_INTERNET:I

    .line 183
    .line 184
    const-string v9, ","

    .line 185
    .line 186
    iget-object v5, v5, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;->context:Landroid/content/Context;

    .line 187
    .line 188
    if-eqz v3, :cond_8

    .line 189
    .line 190
    new-instance v3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    .line 191
    .line 192
    new-instance v7, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    .line 193
    .line 194
    const v10, 0x7f1300da

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-static {v10, v9, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-direct {v7, v5}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const v5, 0x10805c5

    .line 213
    .line 214
    .line 215
    invoke-direct {v3, v5, v7}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription$Loaded;)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_3

    .line 219
    .line 220
    :cond_8
    instance-of v3, v6, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 221
    .line 222
    if-eqz v3, :cond_c

    .line 223
    .line 224
    move-object v3, v6

    .line 225
    check-cast v3, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 226
    .line 227
    iget-object v10, v7, Lcom/android/settingslib/SignalIcon$IconGroup;->contentDesc:[I

    .line 228
    .line 229
    iget v11, v3, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->level:I

    .line 230
    .line 231
    aget v10, v10, v11

    .line 232
    .line 233
    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    iget v12, v3, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->receivedInetCondition:I

    .line 238
    .line 239
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v12

    .line 243
    const/4 v13, -0x1

    .line 244
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v13

    .line 248
    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v12

    .line 252
    iget-object v7, v7, Lcom/android/settingslib/SignalIcon$IconGroup;->sbIcons:[[I

    .line 253
    .line 254
    if-eqz v12, :cond_a

    .line 255
    .line 256
    iget-boolean v12, v3, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isValidated:Z

    .line 257
    .line 258
    if-nez v12, :cond_9

    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_9
    const/4 v3, 0x1

    .line 262
    goto :goto_2

    .line 263
    :cond_a
    :goto_1
    iget v3, v3, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->receivedInetCondition:I

    .line 264
    .line 265
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    const/4 v12, 0x1

    .line 270
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v13

    .line 274
    invoke-virtual {v3, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-eqz v3, :cond_b

    .line 279
    .line 280
    move v3, v12

    .line 281
    :goto_2
    new-instance v5, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    .line 282
    .line 283
    aget-object v3, v7, v3

    .line 284
    .line 285
    aget v3, v3, v11

    .line 286
    .line 287
    new-instance v7, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    .line 288
    .line 289
    invoke-direct {v7, v10}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-direct {v5, v3, v7}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription$Loaded;)V

    .line 293
    .line 294
    .line 295
    move-object v3, v5

    .line 296
    goto :goto_3

    .line 297
    :cond_b
    new-instance v3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    .line 298
    .line 299
    const/4 v12, 0x0

    .line 300
    aget-object v7, v7, v12

    .line 301
    .line 302
    aget v7, v7, v11

    .line 303
    .line 304
    new-instance v11, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    .line 305
    .line 306
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    invoke-static {v10, v9, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    invoke-direct {v11, v5}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-direct {v3, v7, v11}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription$Loaded;)V

    .line 318
    .line 319
    .line 320
    goto :goto_3

    .line 321
    :cond_c
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 322
    .line 323
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 324
    .line 325
    .line 326
    throw p0

    .line 327
    :cond_d
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;

    .line 328
    .line 329
    :goto_3
    if-eqz v1, :cond_e

    .line 330
    .line 331
    if-nez v2, :cond_e

    .line 332
    .line 333
    instance-of v1, v6, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 334
    .line 335
    if-eqz v1, :cond_e

    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_e
    if-eqz v4, :cond_f

    .line 339
    .line 340
    goto :goto_5

    .line 341
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->$wifiConstants$inlined:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;

    .line 342
    .line 343
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;->alwaysShowIconIfEnabled:Z

    .line 344
    .line 345
    if-eqz v1, :cond_10

    .line 346
    .line 347
    goto :goto_5

    .line 348
    :cond_10
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->$connectivityConstants$inlined:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

    .line 349
    .line 350
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;->hasDataCapabilities:Z

    .line 351
    .line 352
    if-nez v1, :cond_11

    .line 353
    .line 354
    goto :goto_5

    .line 355
    :cond_11
    instance-of v1, v6, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 356
    .line 357
    if-eqz v1, :cond_12

    .line 358
    .line 359
    goto :goto_5

    .line 360
    :cond_12
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;

    .line 361
    .line 362
    goto :goto_5

    .line 363
    :cond_13
    :goto_4
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;

    .line 364
    .line 365
    :goto_5
    const/4 v1, 0x1

    .line 366
    iput v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$special$$inlined$combine$1$3;->label:I

    .line 367
    .line 368
    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    if-ne p0, v0, :cond_14

    .line 373
    .line 374
    return-object v0

    .line 375
    :cond_14
    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 376
    .line 377
    return-object p0
.end method
