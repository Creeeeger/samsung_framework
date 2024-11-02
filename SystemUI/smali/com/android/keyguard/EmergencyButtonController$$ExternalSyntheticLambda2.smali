.class public final synthetic Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/EmergencyButtonController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/EmergencyButtonController;ZZI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->f$1:Z

    .line 6
    .line 7
    iput-boolean p3, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->f$2:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->f$1:Z

    .line 11
    .line 12
    iget-boolean p0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->f$2:Z

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;

    .line 18
    .line 19
    invoke-direct {v3, v0, v2, p0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/EmergencyButtonController;ZZI)V

    .line 20
    .line 21
    .line 22
    iget-object p0, v0, Lcom/android/keyguard/EmergencyButtonController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->f$1:Z

    .line 31
    .line 32
    iget-boolean p0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->f$2:Z

    .line 33
    .line 34
    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 35
    .line 36
    check-cast v3, Lcom/android/keyguard/EmergencyButton;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v5, "android.hardware.telephony"

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    iget-object v5, v0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 53
    .line 54
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    .line 55
    .line 56
    .line 57
    iget v5, v0, Lcom/android/keyguard/EmergencyButtonController;->mCurrentSimState:I

    .line 58
    .line 59
    iget-boolean v0, v0, Lcom/android/keyguard/EmergencyButtonController;->mBouncerShowing:Z

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const-class v6, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 65
    .line 66
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 71
    .line 72
    sget-boolean v7, Lcom/android/systemui/LsRune;->SECURITY_NOT_REQUIRE_SIMPUK_CODE:Z

    .line 73
    .line 74
    const/4 v8, 0x3

    .line 75
    const/4 v9, 0x0

    .line 76
    if-eqz v7, :cond_0

    .line 77
    .line 78
    if-ne v5, v8, :cond_0

    .line 79
    .line 80
    move v7, v1

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    move v7, v9

    .line 83
    :goto_1
    sget-boolean v10, Lcom/android/systemui/LsRune;->SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    .line 84
    .line 85
    const-string v11, "EmergencyButton"

    .line 86
    .line 87
    if-eqz v10, :cond_1

    .line 88
    .line 89
    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isOutOfService()Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    invoke-virtual {v3}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    invoke-static {v12}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    const-string/jumbo v13, "updateEmergencyCallButton isOutOfService = "

    .line 102
    .line 103
    .line 104
    const-string v14, " isAirplaneModeOn = "

    .line 105
    .line 106
    invoke-static {v13, v6, v14, v12, v11}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_1
    move v6, v9

    .line 111
    move v12, v6

    .line 112
    :goto_2
    if-eqz v10, :cond_2

    .line 113
    .line 114
    if-eqz v6, :cond_2

    .line 115
    .line 116
    if-nez v12, :cond_2

    .line 117
    .line 118
    goto/16 :goto_5

    .line 119
    .line 120
    :cond_2
    sget-boolean v6, Lcom/android/systemui/LsRune;->SECURITY_HIDE_EMERGENCY_BUTTON_BY_SIMSTATE:Z

    .line 121
    .line 122
    if-eqz v6, :cond_5

    .line 123
    .line 124
    if-eq v5, v1, :cond_4

    .line 125
    .line 126
    const/4 v6, 0x2

    .line 127
    if-eq v5, v6, :cond_4

    .line 128
    .line 129
    if-eq v5, v8, :cond_4

    .line 130
    .line 131
    const/4 v6, 0x7

    .line 132
    if-ne v5, v6, :cond_3

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_3
    move v6, v9

    .line 136
    goto :goto_4

    .line 137
    :cond_4
    :goto_3
    move v6, v1

    .line 138
    :goto_4
    if-eqz v6, :cond_5

    .line 139
    .line 140
    goto/16 :goto_5

    .line 141
    .line 142
    :cond_5
    if-eqz v4, :cond_d

    .line 143
    .line 144
    if-eqz v2, :cond_6

    .line 145
    .line 146
    goto/16 :goto_6

    .line 147
    .line 148
    :cond_6
    if-eqz p0, :cond_7

    .line 149
    .line 150
    const-string/jumbo p0, "updateEmergencyCallButton : secure"

    .line 151
    .line 152
    .line 153
    invoke-static {v11, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    goto/16 :goto_6

    .line 157
    .line 158
    :cond_7
    sget-boolean p0, Lcom/android/systemui/LsRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    .line 159
    .line 160
    if-eqz p0, :cond_c

    .line 161
    .line 162
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 163
    .line 164
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 169
    .line 170
    if-ne v5, v1, :cond_8

    .line 171
    .line 172
    invoke-virtual {v3}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isNoSimState(Landroid/content/Context;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_8

    .line 181
    .line 182
    const-string p0, "SIM_STATE_ABSENT"

    .line 183
    .line 184
    invoke-static {v11, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    goto/16 :goto_6

    .line 188
    .line 189
    :cond_8
    iget-object v0, v3, Lcom/android/keyguard/EmergencyButton;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 190
    .line 191
    if-eqz v0, :cond_9

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_9

    .line 198
    .line 199
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isAllSlotEmergencyOnly()Z

    .line 200
    .line 201
    .line 202
    move-result p0

    .line 203
    if-eqz p0, :cond_9

    .line 204
    .line 205
    const-string p0, "AllSlot EmergencyOnly"

    .line 206
    .line 207
    invoke-static {v11, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_9
    const/4 p0, 0x5

    .line 212
    if-ne v5, p0, :cond_a

    .line 213
    .line 214
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_SKT_USIM_TEXT:Z

    .line 215
    .line 216
    if-eqz p0, :cond_a

    .line 217
    .line 218
    const-string/jumbo p0, "ril.simtype"

    .line 219
    .line 220
    .line 221
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    const-string v4, ""

    .line 226
    .line 227
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-nez v0, :cond_a

    .line 232
    .line 233
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    const/16 v0, 0x13

    .line 246
    .line 247
    if-ne v0, p0, :cond_a

    .line 248
    .line 249
    const-string p0, "SKT Usim unregisterd"

    .line 250
    .line 251
    invoke-static {v11, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_a
    invoke-virtual {v3}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    invoke-static {p0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    .line 260
    .line 261
    .line 262
    move-result p0

    .line 263
    if-eqz p0, :cond_b

    .line 264
    .line 265
    const-string p0, "AirplaneMode On"

    .line 266
    .line 267
    invoke-static {v11, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    goto :goto_6

    .line 271
    :cond_b
    const-string p0, "Can\'t match sim state, simState : "

    .line 272
    .line 273
    invoke-static {p0, v5, v11}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_c
    if-eqz v0, :cond_e

    .line 278
    .line 279
    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    if-nez p0, :cond_e

    .line 284
    .line 285
    goto :goto_6

    .line 286
    :cond_d
    if-eqz v7, :cond_e

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_e
    :goto_5
    move v1, v9

    .line 290
    :goto_6
    if-eqz v1, :cond_11

    .line 291
    .line 292
    invoke-virtual {v3, v9}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    if-eqz v2, :cond_f

    .line 296
    .line 297
    const p0, 0x10406e4

    .line 298
    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_f
    if-eqz v7, :cond_10

    .line 302
    .line 303
    const p0, 0x7f130980

    .line 304
    .line 305
    .line 306
    goto :goto_7

    .line 307
    :cond_10
    const p0, 0x7f13089b

    .line 308
    .line 309
    .line 310
    :goto_7
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setText(I)V

    .line 311
    .line 312
    .line 313
    goto :goto_8

    .line 314
    :cond_11
    const/16 p0, 0x8

    .line 315
    .line 316
    invoke-virtual {v3, p0}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    .line 317
    .line 318
    .line 319
    :goto_8
    return-void

    .line 320
    nop

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
