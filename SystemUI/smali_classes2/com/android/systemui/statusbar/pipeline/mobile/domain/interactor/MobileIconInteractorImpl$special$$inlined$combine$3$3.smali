.class public final Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$3$3;
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
    c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$3$3"
    f = "MobileIconInteractor.kt"
    l = {
        0xee
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$3$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    .line 2
    .line 3
    const/4 p2, 0x3

    .line 4
    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    check-cast p2, [Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$3$3;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$3$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    .line 10
    .line 11
    invoke-direct {v0, p3, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$3$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$3$3;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$3$3;->L$1:Ljava/lang/Object;

    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$3$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$3$3;->label:I

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
    goto/16 :goto_b

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
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$3$3;->L$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$3$3;->L$1:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, [Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    aget-object v4, v1, v3

    .line 36
    .line 37
    check-cast v4, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    aget-object v5, v1, v2

    .line 44
    .line 45
    check-cast v5, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;

    .line 46
    .line 47
    const/4 v6, 0x2

    .line 48
    aget-object v6, v1, v6

    .line 49
    .line 50
    check-cast v6, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    const/4 v7, 0x3

    .line 57
    aget-object v7, v1, v7

    .line 58
    .line 59
    check-cast v7, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    const/4 v8, 0x4

    .line 66
    aget-object v8, v1, v8

    .line 67
    .line 68
    check-cast v8, Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    const/4 v9, 0x5

    .line 75
    aget-object v1, v1, v9

    .line 76
    .line 77
    check-cast v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    .line 78
    .line 79
    if-eqz v4, :cond_3d

    .line 80
    .line 81
    iget-object v4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$3$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    .line 82
    .line 83
    iget-object v9, v4, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->disabledDataIconResource:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;

    .line 84
    .line 85
    iget v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->mSimSubmode:I

    .line 86
    .line 87
    if-ne v1, v2, :cond_2

    .line 88
    .line 89
    move v1, v2

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    move v1, v3

    .line 92
    :goto_0
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget-object v10, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_VZW:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 96
    .line 97
    new-array v11, v3, [Ljava/lang/Object;

    .line 98
    .line 99
    iget-object v12, v9, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 100
    .line 101
    iget v4, v4, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    .line 102
    .line 103
    invoke-interface {v12, v10, v4, v11}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    const-string v11, "DisabledDataIconResource"

    .line 108
    .line 109
    if-eqz v10, :cond_20

    .line 110
    .line 111
    iget-object v1, v9, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 112
    .line 113
    iget-object v4, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 114
    .line 115
    const-string v6, "mobile_data"

    .line 116
    .line 117
    invoke-virtual {v4, v6}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-ne v4, v2, :cond_3

    .line 126
    .line 127
    move v4, v2

    .line 128
    goto :goto_1

    .line 129
    :cond_3
    move v4, v3

    .line 130
    :goto_1
    const-string v8, "data_roaming"

    .line 131
    .line 132
    iget-object v1, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 133
    .line 134
    if-eqz v4, :cond_6

    .line 135
    .line 136
    if-eqz v7, :cond_5

    .line 137
    .line 138
    invoke-virtual {v1, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-ne v4, v2, :cond_4

    .line 147
    .line 148
    move v4, v2

    .line 149
    goto :goto_2

    .line 150
    :cond_4
    move v4, v3

    .line 151
    :goto_2
    if-nez v4, :cond_5

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_5
    move v4, v3

    .line 155
    goto :goto_4

    .line 156
    :cond_6
    :goto_3
    move v4, v2

    .line 157
    :goto_4
    if-eqz v4, :cond_9

    .line 158
    .line 159
    invoke-virtual {v1, v6}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-ne v6, v2, :cond_7

    .line 168
    .line 169
    move v6, v2

    .line 170
    goto :goto_5

    .line 171
    :cond_7
    move v6, v3

    .line 172
    :goto_5
    invoke-virtual {v1, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-ne v1, v2, :cond_8

    .line 181
    .line 182
    move v1, v2

    .line 183
    goto :goto_6

    .line 184
    :cond_8
    move v1, v3

    .line 185
    :goto_6
    const-string v7, "Use slash icon since data="

    .line 186
    .line 187
    const-string v8, " roaming="

    .line 188
    .line 189
    invoke-static {v7, v6, v8, v1, v11}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_9
    invoke-interface {v5}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;->getName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 197
    .line 198
    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 199
    .line 200
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-eqz v5, :cond_a

    .line 205
    .line 206
    goto/16 :goto_7

    .line 207
    .line 208
    :cond_a
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->E_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 209
    .line 210
    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 211
    .line 212
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_c

    .line 217
    .line 218
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    if-eqz v4, :cond_b

    .line 224
    .line 225
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_E_VZW:I

    .line 226
    .line 227
    goto/16 :goto_7

    .line 228
    .line 229
    :cond_b
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_E_VZW:I

    .line 230
    .line 231
    goto/16 :goto_7

    .line 232
    .line 233
    :cond_c
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 234
    .line 235
    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 236
    .line 237
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-eqz v3, :cond_e

    .line 242
    .line 243
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    if-eqz v4, :cond_d

    .line 249
    .line 250
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_3G_VZW:I

    .line 251
    .line 252
    goto/16 :goto_7

    .line 253
    .line 254
    :cond_d
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_3G_VZW:I

    .line 255
    .line 256
    goto/16 :goto_7

    .line 257
    .line 258
    :cond_e
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->H_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 259
    .line 260
    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 261
    .line 262
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-eqz v3, :cond_10

    .line 267
    .line 268
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 269
    .line 270
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    if-eqz v4, :cond_f

    .line 274
    .line 275
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_H_VZW:I

    .line 276
    .line 277
    goto/16 :goto_7

    .line 278
    .line 279
    :cond_f
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_H_VZW:I

    .line 280
    .line 281
    goto/16 :goto_7

    .line 282
    .line 283
    :cond_10
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 284
    .line 285
    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 286
    .line 287
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    if-eqz v3, :cond_12

    .line 292
    .line 293
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    if-eqz v4, :cond_11

    .line 299
    .line 300
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_H_PLUS_VZW:I

    .line 301
    .line 302
    goto/16 :goto_7

    .line 303
    .line 304
    :cond_11
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_H_PLUS_VZW:I

    .line 305
    .line 306
    goto/16 :goto_7

    .line 307
    .line 308
    :cond_12
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 309
    .line 310
    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 311
    .line 312
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-eqz v3, :cond_14

    .line 317
    .line 318
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 319
    .line 320
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    if-eqz v4, :cond_13

    .line 324
    .line 325
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_1X_VZW:I

    .line 326
    .line 327
    goto/16 :goto_7

    .line 328
    .line 329
    :cond_13
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_1X_VZW:I

    .line 330
    .line 331
    goto/16 :goto_7

    .line 332
    .line 333
    :cond_14
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 334
    .line 335
    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 336
    .line 337
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    if-eqz v3, :cond_16

    .line 342
    .line 343
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    if-eqz v4, :cond_15

    .line 349
    .line 350
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_4G_VZW:I

    .line 351
    .line 352
    goto/16 :goto_7

    .line 353
    .line 354
    :cond_15
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_4G_VZW:I

    .line 355
    .line 356
    goto/16 :goto_7

    .line 357
    .line 358
    :cond_16
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 359
    .line 360
    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 361
    .line 362
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    if-eqz v3, :cond_18

    .line 367
    .line 368
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 369
    .line 370
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    if-eqz v4, :cond_17

    .line 374
    .line 375
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_5G_VZW:I

    .line 376
    .line 377
    goto :goto_7

    .line 378
    :cond_17
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_5G_VZW:I

    .line 379
    .line 380
    goto :goto_7

    .line 381
    :cond_18
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 382
    .line 383
    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 384
    .line 385
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    if-eqz v3, :cond_1a

    .line 390
    .line 391
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 392
    .line 393
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    .line 395
    .line 396
    if-eqz v4, :cond_19

    .line 397
    .line 398
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_5G_CONNECTED:I

    .line 399
    .line 400
    goto :goto_7

    .line 401
    :cond_19
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_5G_CONNECTED:I

    .line 402
    .line 403
    goto :goto_7

    .line 404
    :cond_1a
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_VZW_UWB:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 405
    .line 406
    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 407
    .line 408
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    if-eqz v3, :cond_1c

    .line 413
    .line 414
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    if-eqz v4, :cond_1b

    .line 420
    .line 421
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_5G_VZW_UWB:I

    .line 422
    .line 423
    goto :goto_7

    .line 424
    :cond_1b
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_5G_VZW_UWB:I

    .line 425
    .line 426
    goto :goto_7

    .line 427
    :cond_1c
    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 428
    .line 429
    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 430
    .line 431
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v1

    .line 435
    if-eqz v1, :cond_1e

    .line 436
    .line 437
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 438
    .line 439
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 440
    .line 441
    .line 442
    if-eqz v4, :cond_1d

    .line 443
    .line 444
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_G_VZW:I

    .line 445
    .line 446
    goto :goto_7

    .line 447
    :cond_1d
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_G_VZW:I

    .line 448
    .line 449
    goto :goto_7

    .line 450
    :cond_1e
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 451
    .line 452
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    .line 454
    .line 455
    if-eqz v4, :cond_1f

    .line 456
    .line 457
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_G_VZW:I

    .line 458
    .line 459
    goto :goto_7

    .line 460
    :cond_1f
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_G_VZW:I

    .line 461
    .line 462
    :goto_7
    new-instance v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    .line 463
    .line 464
    sget-object v4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;->DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    .line 465
    .line 466
    invoke-direct {v1, v4, v3}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;I)V

    .line 467
    .line 468
    .line 469
    goto/16 :goto_a

    .line 470
    .line 471
    :cond_20
    sget-object v9, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_LATIN_DISABLED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 472
    .line 473
    new-array v10, v3, [Ljava/lang/Object;

    .line 474
    .line 475
    invoke-interface {v12, v9, v4, v10}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v9

    .line 479
    if-eqz v9, :cond_2b

    .line 480
    .line 481
    invoke-interface {v5}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;->getName()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 486
    .line 487
    iget-object v4, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 488
    .line 489
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v4

    .line 493
    if-eqz v4, :cond_21

    .line 494
    .line 495
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 496
    .line 497
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    .line 499
    .line 500
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_G:I

    .line 501
    .line 502
    goto/16 :goto_8

    .line 503
    .line 504
    :cond_21
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 505
    .line 506
    iget-object v4, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 507
    .line 508
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v4

    .line 512
    if-eqz v4, :cond_22

    .line 513
    .line 514
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 515
    .line 516
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_E:I

    .line 520
    .line 521
    goto/16 :goto_8

    .line 522
    .line 523
    :cond_22
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 524
    .line 525
    iget-object v4, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 526
    .line 527
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    if-eqz v4, :cond_23

    .line 532
    .line 533
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 534
    .line 535
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    .line 537
    .line 538
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_3G:I

    .line 539
    .line 540
    goto/16 :goto_8

    .line 541
    .line 542
    :cond_23
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 543
    .line 544
    iget-object v4, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 545
    .line 546
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v4

    .line 550
    if-eqz v4, :cond_24

    .line 551
    .line 552
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 553
    .line 554
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 555
    .line 556
    .line 557
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_H:I

    .line 558
    .line 559
    goto :goto_8

    .line 560
    :cond_24
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 561
    .line 562
    iget-object v4, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 563
    .line 564
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v4

    .line 568
    if-eqz v4, :cond_25

    .line 569
    .line 570
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 571
    .line 572
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_H_PLUS:I

    .line 576
    .line 577
    goto :goto_8

    .line 578
    :cond_25
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 579
    .line 580
    iget-object v4, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 581
    .line 582
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result v4

    .line 586
    if-eqz v4, :cond_26

    .line 587
    .line 588
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 589
    .line 590
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_4G:I

    .line 594
    .line 595
    goto :goto_8

    .line 596
    :cond_26
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 597
    .line 598
    iget-object v4, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 599
    .line 600
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v4

    .line 604
    if-eqz v4, :cond_27

    .line 605
    .line 606
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 607
    .line 608
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_4G_PLUS:I

    .line 612
    .line 613
    goto :goto_8

    .line 614
    :cond_27
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_HALF_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 615
    .line 616
    iget-object v4, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 617
    .line 618
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v4

    .line 622
    if-eqz v4, :cond_28

    .line 623
    .line 624
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 625
    .line 626
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 627
    .line 628
    .line 629
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_4_HALF_G:I

    .line 630
    .line 631
    goto :goto_8

    .line 632
    :cond_28
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_AVAILABLE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 633
    .line 634
    iget-object v4, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 635
    .line 636
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v4

    .line 640
    if-eqz v4, :cond_29

    .line 641
    .line 642
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 643
    .line 644
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 645
    .line 646
    .line 647
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_5G_AVAILABLE:I

    .line 648
    .line 649
    goto :goto_8

    .line 650
    :cond_29
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 651
    .line 652
    iget-object v4, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 653
    .line 654
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    if-eqz v1, :cond_2a

    .line 659
    .line 660
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 661
    .line 662
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 663
    .line 664
    .line 665
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_5G_CONNECTED:I

    .line 666
    .line 667
    :cond_2a
    :goto_8
    new-instance v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    .line 668
    .line 669
    sget-object v4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;->DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    .line 670
    .line 671
    invoke-direct {v1, v4, v3}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;I)V

    .line 672
    .line 673
    .line 674
    goto/16 :goto_a

    .line 675
    .line 676
    :cond_2b
    sget-object v9, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_HKTW_DISABLED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 677
    .line 678
    new-array v10, v3, [Ljava/lang/Object;

    .line 679
    .line 680
    invoke-interface {v12, v9, v4, v10}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    move-result v9

    .line 684
    if-eqz v9, :cond_2c

    .line 685
    .line 686
    new-instance v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    .line 687
    .line 688
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;->DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    .line 689
    .line 690
    invoke-interface {v5}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;->getIconId()I

    .line 691
    .line 692
    .line 693
    move-result v4

    .line 694
    invoke-direct {v1, v3, v4}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;I)V

    .line 695
    .line 696
    .line 697
    goto/16 :goto_a

    .line 698
    .line 699
    :cond_2c
    sget-object v9, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_CHINA:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 700
    .line 701
    new-array v10, v3, [Ljava/lang/Object;

    .line 702
    .line 703
    invoke-interface {v12, v9, v4, v10}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 704
    .line 705
    .line 706
    move-result v9

    .line 707
    if-eqz v9, :cond_3c

    .line 708
    .line 709
    if-eqz v6, :cond_3c

    .line 710
    .line 711
    sget-object v6, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_CHINA_DISABLED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 712
    .line 713
    new-array v9, v3, [Ljava/lang/Object;

    .line 714
    .line 715
    invoke-interface {v12, v6, v4, v9}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    move-result v4

    .line 719
    if-eqz v4, :cond_3a

    .line 720
    .line 721
    if-nez v7, :cond_38

    .line 722
    .line 723
    invoke-interface {v5}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;->getName()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v4

    .line 727
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 728
    .line 729
    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 730
    .line 731
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    move-result v5

    .line 735
    if-eqz v5, :cond_2d

    .line 736
    .line 737
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 738
    .line 739
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 740
    .line 741
    .line 742
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_1X:I

    .line 743
    .line 744
    goto/16 :goto_9

    .line 745
    .line 746
    :cond_2d
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 747
    .line 748
    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 749
    .line 750
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v5

    .line 754
    if-eqz v5, :cond_2e

    .line 755
    .line 756
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 757
    .line 758
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 759
    .line 760
    .line 761
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_G:I

    .line 762
    .line 763
    goto/16 :goto_9

    .line 764
    .line 765
    :cond_2e
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->E_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 766
    .line 767
    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 768
    .line 769
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    move-result v5

    .line 773
    if-eqz v5, :cond_2f

    .line 774
    .line 775
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 776
    .line 777
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 778
    .line 779
    .line 780
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_E:I

    .line 781
    .line 782
    goto/16 :goto_9

    .line 783
    .line 784
    :cond_2f
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->TWO_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 785
    .line 786
    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 787
    .line 788
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    move-result v5

    .line 792
    if-eqz v5, :cond_30

    .line 793
    .line 794
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 795
    .line 796
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 797
    .line 798
    .line 799
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_2G:I

    .line 800
    .line 801
    goto/16 :goto_9

    .line 802
    .line 803
    :cond_30
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 804
    .line 805
    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 806
    .line 807
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 808
    .line 809
    .line 810
    move-result v5

    .line 811
    if-eqz v5, :cond_31

    .line 812
    .line 813
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 814
    .line 815
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 816
    .line 817
    .line 818
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_3G:I

    .line 819
    .line 820
    goto/16 :goto_9

    .line 821
    .line 822
    :cond_31
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_PLUS_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 823
    .line 824
    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 825
    .line 826
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result v5

    .line 830
    if-eqz v5, :cond_32

    .line 831
    .line 832
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 833
    .line 834
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 835
    .line 836
    .line 837
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_3G_PLUS:I

    .line 838
    .line 839
    goto/16 :goto_9

    .line 840
    .line 841
    :cond_32
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->H_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 842
    .line 843
    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 844
    .line 845
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 846
    .line 847
    .line 848
    move-result v5

    .line 849
    if-eqz v5, :cond_33

    .line 850
    .line 851
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 852
    .line 853
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 854
    .line 855
    .line 856
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_H:I

    .line 857
    .line 858
    goto/16 :goto_9

    .line 859
    .line 860
    :cond_33
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 861
    .line 862
    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 863
    .line 864
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 865
    .line 866
    .line 867
    move-result v5

    .line 868
    if-eqz v5, :cond_34

    .line 869
    .line 870
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 871
    .line 872
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 873
    .line 874
    .line 875
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_H_PLUS:I

    .line 876
    .line 877
    goto :goto_9

    .line 878
    :cond_34
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 879
    .line 880
    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 881
    .line 882
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 883
    .line 884
    .line 885
    move-result v5

    .line 886
    if-eqz v5, :cond_35

    .line 887
    .line 888
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 889
    .line 890
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 891
    .line 892
    .line 893
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_4G:I

    .line 894
    .line 895
    goto :goto_9

    .line 896
    :cond_35
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 897
    .line 898
    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 899
    .line 900
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 901
    .line 902
    .line 903
    move-result v5

    .line 904
    if-eqz v5, :cond_36

    .line 905
    .line 906
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 907
    .line 908
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 909
    .line 910
    .line 911
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_4G_PLUS:I

    .line 912
    .line 913
    goto :goto_9

    .line 914
    :cond_36
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 915
    .line 916
    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 917
    .line 918
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 919
    .line 920
    .line 921
    move-result v5

    .line 922
    if-eqz v5, :cond_37

    .line 923
    .line 924
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 925
    .line 926
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 927
    .line 928
    .line 929
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_5G:I

    .line 930
    .line 931
    goto :goto_9

    .line 932
    :cond_37
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5GA_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 933
    .line 934
    iget-object v5, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    .line 935
    .line 936
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 937
    .line 938
    .line 939
    move-result v4

    .line 940
    if-eqz v4, :cond_3a

    .line 941
    .line 942
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 943
    .line 944
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 945
    .line 946
    .line 947
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_5GA:I

    .line 948
    .line 949
    goto :goto_9

    .line 950
    :cond_38
    sget-boolean v4, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_SIGNAL_LIMITED_WHILE_OTHER_SLOT_CALL:Z

    .line 951
    .line 952
    if-eqz v4, :cond_39

    .line 953
    .line 954
    if-eqz v4, :cond_3a

    .line 955
    .line 956
    if-nez v8, :cond_3a

    .line 957
    .line 958
    :cond_39
    new-instance v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    .line 959
    .line 960
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;->DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    .line 961
    .line 962
    invoke-interface {v5}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;->getIconId()I

    .line 963
    .line 964
    .line 965
    move-result v4

    .line 966
    invoke-direct {v1, v3, v4}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;I)V

    .line 967
    .line 968
    .line 969
    goto :goto_a

    .line 970
    :cond_3a
    :goto_9
    sget-boolean v4, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_SIGNAL_LIMITED_WHILE_OTHER_SLOT_CALL:Z

    .line 971
    .line 972
    if-eqz v4, :cond_3b

    .line 973
    .line 974
    if-eqz v8, :cond_3b

    .line 975
    .line 976
    const-string v4, "Display limited icon? "

    .line 977
    .line 978
    invoke-static {v4, v1, v11}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 979
    .line 980
    .line 981
    if-nez v1, :cond_3b

    .line 982
    .line 983
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    .line 984
    .line 985
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 986
    .line 987
    .line 988
    sget v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->SIGNAL_LIMITED_WHILE_OTHER_SLOT_CALL:I

    .line 989
    .line 990
    :cond_3b
    new-instance v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    .line 991
    .line 992
    sget-object v4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;->ROAMING_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    .line 993
    .line 994
    invoke-direct {v1, v4, v3}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;I)V

    .line 995
    .line 996
    .line 997
    goto :goto_a

    .line 998
    :cond_3c
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModelKt;->EMPTY_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    .line 999
    .line 1000
    goto :goto_a

    .line 1001
    :cond_3d
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$3$3;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    .line 1002
    .line 1003
    iget-object v4, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 1004
    .line 1005
    sget-object v5, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_CHINA_DISABLED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 1006
    .line 1007
    iget v1, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->slotId:I

    .line 1008
    .line 1009
    new-array v3, v3, [Ljava/lang/Object;

    .line 1010
    .line 1011
    invoke-interface {v4, v5, v1, v3}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 1012
    .line 1013
    .line 1014
    move-result v1

    .line 1015
    if-eqz v1, :cond_3e

    .line 1016
    .line 1017
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModelKt;->EMPTY_DISABLED_DATA_ROAMING_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    .line 1018
    .line 1019
    goto :goto_a

    .line 1020
    :cond_3e
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModelKt;->EMPTY_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    .line 1021
    .line 1022
    :goto_a
    iput v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$special$$inlined$combine$3$3;->label:I

    .line 1023
    .line 1024
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1025
    .line 1026
    .line 1027
    move-result-object p0

    .line 1028
    if-ne p0, v0, :cond_3f

    .line 1029
    .line 1030
    return-object v0

    .line 1031
    :cond_3f
    :goto_b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1032
    .line 1033
    return-object p0
.end method
