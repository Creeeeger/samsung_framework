.class final Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl;-><init>(Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;Lcom/android/systemui/log/table/TableLogBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.statusbar.pipeline.wifi.domain.interactor.WifiInteractorImpl$wifiIconGroup$1"
    f = "WifiInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $wifiSignalIconResource:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;

.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;->$wifiSignalIconResource:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 10
    .line 11
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;->$wifiSignalIconResource:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;

    .line 14
    .line 15
    invoke-direct {v0, p0, p3}, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    iput-boolean p2, v0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;->Z$0:Z

    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;->label:I

    .line 4
    .line 5
    if-nez v0, :cond_16

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;->Z$0:Z

    .line 15
    .line 16
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_15

    .line 20
    .line 21
    const-string v1, "get wifiIconGroup ePDGConnected : "

    .line 22
    .line 23
    const-string v3, "WifiInteractor"

    .line 24
    .line 25
    invoke-static {v1, v0, v3}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/domain/interactor/WifiInteractorImpl$wifiIconGroup$1;->$wifiSignalIconResource:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;

    .line 29
    .line 30
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sget-object v1, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->UNMERGED_WIFI:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 36
    .line 37
    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->wifiStandard:I

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    const/16 v5, 0x8

    .line 41
    .line 42
    iget-object v6, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 43
    .line 44
    if-ne v3, v5, :cond_0

    .line 45
    .line 46
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_7G:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 52
    .line 53
    goto/16 :goto_a

    .line 54
    .line 55
    :cond_0
    const/4 v5, 0x6

    .line 56
    const/4 v7, 0x1

    .line 57
    if-ne v3, v5, :cond_4

    .line 58
    .line 59
    const/16 p0, 0x172f

    .line 60
    .line 61
    iget p1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->frequency:I

    .line 62
    .line 63
    if-ne p1, p0, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const/16 p0, 0x1743

    .line 67
    .line 68
    if-gt p0, p1, :cond_2

    .line 69
    .line 70
    const/16 p0, 0x1bcc

    .line 71
    .line 72
    if-ge p1, p0, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move v7, v4

    .line 76
    :goto_0
    if-eqz v7, :cond_3

    .line 77
    .line 78
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_6GE:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_6G:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 92
    .line 93
    :goto_1
    move-object v1, p0

    .line 94
    goto/16 :goto_a

    .line 95
    .line 96
    :cond_4
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_WIFI_CALLING_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 97
    .line 98
    new-array v5, v4, [Ljava/lang/Object;

    .line 99
    .line 100
    invoke-interface {v6, v3, v4, v5}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_WIFI_CALLING:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 114
    .line 115
    goto/16 :goto_a

    .line 116
    .line 117
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_KT:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 118
    .line 119
    new-array v3, v4, [Ljava/lang/Object;

    .line 120
    .line 121
    invoke-interface {v6, v0, v4, v3}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_7

    .line 126
    .line 127
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->gigaAp:Z

    .line 128
    .line 129
    if-eqz v0, :cond_7

    .line 130
    .line 131
    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->receivedInetCondition:I

    .line 132
    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_6

    .line 146
    .line 147
    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->receivedInetCondition:I

    .line 148
    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const/4 v3, -0x1

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_7

    .line 163
    .line 164
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isValidated:Z

    .line 165
    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    :cond_6
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;

    .line 169
    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_KT_GIGA:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 174
    .line 175
    goto/16 :goto_a

    .line 176
    .line 177
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_LGT:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 178
    .line 179
    new-array v3, v4, [Ljava/lang/Object;

    .line 180
    .line 181
    invoke-interface {v6, v0, v4, v3}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_13

    .line 186
    .line 187
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResourceKt;->LGT_SSIDs:[Ljava/lang/String;

    .line 188
    .line 189
    move v3, v4

    .line 190
    :goto_2
    const/4 v5, 0x4

    .line 191
    if-ge v3, v5, :cond_a

    .line 192
    .line 193
    aget-object v8, v0, v3

    .line 194
    .line 195
    iget-object v9, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->ssid:Ljava/lang/String;

    .line 196
    .line 197
    if-eqz v9, :cond_8

    .line 198
    .line 199
    invoke-static {v9, v8, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    if-ne v8, v7, :cond_8

    .line 204
    .line 205
    move v8, v7

    .line 206
    goto :goto_3

    .line 207
    :cond_8
    move v8, v4

    .line 208
    :goto_3
    if-eqz v8, :cond_9

    .line 209
    .line 210
    move v0, v7

    .line 211
    goto :goto_4

    .line 212
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_a
    move v0, v4

    .line 216
    :goto_4
    if-eqz v0, :cond_11

    .line 217
    .line 218
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/WifiSignalIconResource;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 219
    .line 220
    if-eqz p0, :cond_b

    .line 221
    .line 222
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    goto :goto_5

    .line 227
    :cond_b
    move-object p0, v2

    .line 228
    :goto_5
    if-nez p0, :cond_c

    .line 229
    .line 230
    goto :goto_8

    .line 231
    :cond_c
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_f

    .line 240
    .line 241
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    move-object v3, v0

    .line 246
    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 247
    .line 248
    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 249
    .line 250
    iget v8, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->wifiNetworkId:I

    .line 251
    .line 252
    if-ne v3, v8, :cond_e

    .line 253
    .line 254
    move v3, v7

    .line 255
    goto :goto_6

    .line 256
    :cond_e
    move v3, v4

    .line 257
    :goto_6
    if-eqz v3, :cond_d

    .line 258
    .line 259
    goto :goto_7

    .line 260
    :cond_f
    move-object v0, v2

    .line 261
    :goto_7
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 262
    .line 263
    if-eqz v0, :cond_11

    .line 264
    .line 265
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 266
    .line 267
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    .line 268
    .line 269
    .line 270
    move-result p0

    .line 271
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 272
    .line 273
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    const-string v8, "eapMethod="

    .line 278
    .line 279
    const-string v9, " phase2Method="

    .line 280
    .line 281
    const-string v10, "WifiSignalIconResource"

    .line 282
    .line 283
    invoke-static {v8, p0, v9, v3, v10}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 287
    .line 288
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    .line 289
    .line 290
    .line 291
    move-result p0

    .line 292
    const/4 v3, 0x5

    .line 293
    if-eq p0, v3, :cond_12

    .line 294
    .line 295
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 296
    .line 297
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    .line 298
    .line 299
    .line 300
    move-result p0

    .line 301
    if-nez p0, :cond_10

    .line 302
    .line 303
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 304
    .line 305
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    .line 306
    .line 307
    .line 308
    move-result p0

    .line 309
    const/4 v3, 0x3

    .line 310
    if-eq p0, v3, :cond_12

    .line 311
    .line 312
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 313
    .line 314
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    .line 315
    .line 316
    .line 317
    move-result p0

    .line 318
    if-eqz p0, :cond_12

    .line 319
    .line 320
    :cond_10
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 321
    .line 322
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    .line 323
    .line 324
    .line 325
    move-result p0

    .line 326
    if-ne p0, v5, :cond_11

    .line 327
    .line 328
    goto :goto_9

    .line 329
    :cond_11
    :goto_8
    move v7, v4

    .line 330
    :cond_12
    :goto_9
    if-eqz v7, :cond_13

    .line 331
    .line 332
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isValidated:Z

    .line 333
    .line 334
    if-eqz p0, :cond_13

    .line 335
    .line 336
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons$Companion;

    .line 337
    .line 338
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/util/SamsungWifiIcons;->WIFI_ICON_LGT:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 342
    .line 343
    :cond_13
    :goto_a
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_VZW:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    .line 344
    .line 345
    new-array p1, v4, [Ljava/lang/Object;

    .line 346
    .line 347
    invoke-interface {v6, p0, v4, p1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result p0

    .line 351
    if-eqz p0, :cond_14

    .line 352
    .line 353
    iput-object v2, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->activityIcons:[I

    .line 354
    .line 355
    :cond_14
    move-object v2, v1

    .line 356
    :cond_15
    return-object v2

    .line 357
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 358
    .line 359
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 360
    .line 361
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw p0
.end method
