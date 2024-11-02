.class public final Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

.field public final telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/util/settings/SystemSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getSimCardInfo(I)Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz v1, :cond_a

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "BAE0000000000000"

    .line 22
    .line 23
    sparse-switch v2, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :sswitch_0
    const-string v2, "312770"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_8

    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :sswitch_1
    const-string v2, "311480"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :cond_0
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_2

    .line 53
    .line 54
    const-string p0, "BAE1000000000000"

    .line 55
    .line 56
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_2

    .line 61
    .line 62
    const-string p0, "BAE2000000000000"

    .line 63
    .line 64
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_2

    .line 69
    .line 70
    const-string p0, "BA01270000000000"

    .line 71
    .line 72
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->ETC:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 80
    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->VZW:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 84
    .line 85
    goto/16 :goto_3

    .line 86
    .line 87
    :sswitch_2
    const-string v2, "311270"

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_8

    .line 94
    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :sswitch_3
    const-string v2, "310004"

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_8

    .line 104
    .line 105
    goto/16 :goto_1

    .line 106
    .line 107
    :sswitch_4
    const-string p1, "46007"

    .line 108
    .line 109
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_3

    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :sswitch_5
    const-string p1, "46002"

    .line 118
    .line 119
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_3

    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :sswitch_6
    const-string p1, "46000"

    .line 128
    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-nez p1, :cond_3

    .line 134
    .line 135
    goto/16 :goto_1

    .line 136
    .line 137
    :sswitch_7
    const-string p1, "45412"

    .line 138
    .line 139
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-nez p1, :cond_3

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->CMCC:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 147
    .line 148
    goto/16 :goto_3

    .line 149
    .line 150
    :sswitch_8
    const-string p1, "45008"

    .line 151
    .line 152
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_4

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_4
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->KT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 160
    .line 161
    goto/16 :goto_3

    .line 162
    .line 163
    :sswitch_9
    const-string p1, "45006"

    .line 164
    .line 165
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-nez p1, :cond_5

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_5
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->LGT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 173
    .line 174
    goto/16 :goto_3

    .line 175
    .line 176
    :sswitch_a
    const-string p1, "45005"

    .line 177
    .line 178
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-nez p1, :cond_6

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_6
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->SKT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 186
    .line 187
    goto/16 :goto_3

    .line 188
    .line 189
    :sswitch_b
    const-string p1, "20802"

    .line 190
    .line 191
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-nez p1, :cond_7

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :sswitch_c
    const-string p1, "20801"

    .line 199
    .line 200
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-nez p1, :cond_7

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_7
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->ORANGE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :sswitch_d
    const-string v2, "20404"

    .line 211
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-nez v1, :cond_8

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_8
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    if-eqz p0, :cond_9

    .line 224
    .line 225
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->VZW:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_9
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->ETC:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_a
    :goto_1
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    const/4 v2, 0x0

    .line 240
    if-nez v1, :cond_b

    .line 241
    .line 242
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 243
    .line 244
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    const-string v1, "airtel"

    .line 249
    .line 250
    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    goto :goto_2

    .line 255
    :cond_b
    move p1, v2

    .line 256
    :goto_2
    if-eqz p1, :cond_c

    .line 257
    .line 258
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->AIRTEL:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_c
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-nez p1, :cond_d

    .line 270
    .line 271
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 272
    .line 273
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    const-string p1, "jio"

    .line 278
    .line 279
    invoke-static {p0, p1, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    :cond_d
    if-eqz v2, :cond_e

    .line 284
    .line 285
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->RELIANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_e
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->ETC:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 289
    .line 290
    :goto_3
    return-object p0

    .line 291
    :sswitch_data_0
    .sparse-switch
        0x2d7323a -> :sswitch_d
        0x2d7413b -> :sswitch_c
        0x2d7413c -> :sswitch_b
        0x2f59814 -> :sswitch_a
        0x2f59815 -> :sswitch_9
        0x2f59817 -> :sswitch_8
        0x2f5a734 -> :sswitch_7
        0x2f60c6e -> :sswitch_6
        0x2f60c70 -> :sswitch_5
        0x2f60c75 -> :sswitch_4
        0x59d03362 -> :sswitch_3
        0x59d0b018 -> :sswitch_2
        0x59d0b7b9 -> :sswitch_1
        0x59d1373c -> :sswitch_0
    .end sparse-switch
.end method

.method public final isSimSettingOn(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 2
    .line 3
    const-string/jumbo v1, "phone2_on"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "phone1_on"

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    :try_start_0
    sget-boolean v4, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    .line 11
    .line 12
    if-eqz v4, :cond_1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v4, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move-object v4, v2

    .line 20
    :goto_1
    invoke-interface {v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    move-object v6, v0

    .line 25
    check-cast v6, Lcom/android/systemui/util/settings/GlobalSettingsImpl;

    .line 26
    .line 27
    invoke-virtual {v6, v5, v4}, Lcom/android/systemui/util/settings/GlobalSettingsImpl;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    if-ne p0, v3, :cond_6

    .line 36
    .line 37
    goto :goto_4

    .line 38
    :catch_0
    :try_start_2
    new-instance v5, Landroid/provider/Settings$SettingNotFoundException;

    .line 39
    .line 40
    invoke-direct {v5, v4}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v5
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 44
    :catch_1
    sget-boolean v4, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    .line 45
    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move-object v5, v1

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    :goto_2
    move-object v5, v2

    .line 54
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    .line 55
    .line 56
    invoke-interface {p0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    check-cast p0, Lcom/android/systemui/util/settings/SystemSettingsImpl;

    .line 61
    .line 62
    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/util/settings/SystemSettingsImpl;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result p0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    if-nez p1, :cond_5

    .line 73
    .line 74
    :cond_4
    move-object v1, v2

    .line 75
    :cond_5
    invoke-interface {v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-interface {v0, p0, p1, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->putIntForUser(IILjava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    if-ne p0, v3, :cond_6

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    const/4 v3, 0x0

    .line 86
    :goto_4
    return v3

    .line 87
    :catch_2
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    .line 88
    .line 89
    invoke-direct {p0, v5}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method
