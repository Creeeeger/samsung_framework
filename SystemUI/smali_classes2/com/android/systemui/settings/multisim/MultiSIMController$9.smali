.class public final Lcom/android/systemui/settings/multisim/MultiSIMController$9;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "onReceive() - action = "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "MultiSIMController"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-string v0, "com.samsung.telecom.action.DEFAULT_OUTGOING_PHONE_ACCOUNT_CHANGED"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 33
    .line 34
    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 35
    .line 36
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_0
    const-string v0, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const-string v2, "onReceive() - subId = "

    .line 50
    .line 51
    const-string/jumbo v3, "subscription"

    .line 52
    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-static {v2, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 65
    .line 66
    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 67
    .line 68
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_1
    const-string v0, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-static {v2, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 91
    .line 92
    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 93
    .line 94
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :cond_2
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-static {v2, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 117
    .line 118
    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 119
    .line 120
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_0

    .line 126
    .line 127
    :cond_3
    const-string v0, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    const/16 v5, 0x3e8

    .line 134
    .line 135
    if-eqz v0, :cond_4

    .line 136
    .line 137
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    invoke-static {v2, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 145
    .line 146
    iget-object p2, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 147
    .line 148
    iget-boolean p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    .line 149
    .line 150
    if-eqz p2, :cond_10

    .line 151
    .line 152
    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$12;

    .line 153
    .line 154
    if-eqz p1, :cond_10

    .line 155
    .line 156
    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 160
    .line 161
    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$12;

    .line 162
    .line 163
    invoke-virtual {p1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    const-wide/32 v0, 0xea60

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 171
    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_4
    const-string v0, "android.samsung.action.ACTION_NETWORK_SLOT_CHANGING_FINISH"

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 184
    .line 185
    iget-object p2, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 186
    .line 187
    iget-boolean p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    .line 188
    .line 189
    if-eqz p2, :cond_10

    .line 190
    .line 191
    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$12;

    .line 192
    .line 193
    if-eqz p1, :cond_10

    .line 194
    .line 195
    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 199
    .line 200
    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$12;

    .line 201
    .line 202
    invoke-virtual {p1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_5
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 212
    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    const/4 v1, 0x1

    .line 218
    if-eqz v0, :cond_6

    .line 219
    .line 220
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 221
    .line 222
    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    .line 223
    .line 224
    invoke-virtual {p1, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCarrierNameAndPhoneNumber(Z)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_6
    const-string v0, "android.intent.action.SERVICE_STATE"

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_7

    .line 236
    .line 237
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 238
    .line 239
    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUpdateDataHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$11;

    .line 240
    .line 241
    if-eqz p1, :cond_10

    .line 242
    .line 243
    const/16 p2, 0x7d0

    .line 244
    .line 245
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 249
    .line 250
    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUpdateDataHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$11;

    .line 251
    .line 252
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 257
    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :cond_7
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 262
    .line 263
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_a

    .line 268
    .line 269
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 270
    .line 271
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    .line 272
    .line 273
    invoke-virtual {p1, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateMultiSimReadyState(Z)V

    .line 274
    .line 275
    .line 276
    const-string/jumbo p1, "ss"

    .line 277
    .line 278
    .line 279
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    const-string p2, "READY"

    .line 284
    .line 285
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result p2

    .line 289
    const-string v0, "LOADED"

    .line 290
    .line 291
    if-nez p2, :cond_8

    .line 292
    .line 293
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result p2

    .line 297
    if-eqz p2, :cond_9

    .line 298
    .line 299
    :cond_8
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 300
    .line 301
    iget-object v1, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 302
    .line 303
    invoke-virtual {p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isDataEnabled()Z

    .line 304
    .line 305
    .line 306
    move-result p2

    .line 307
    iput-boolean p2, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 308
    .line 309
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 310
    .line 311
    invoke-virtual {p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateSimSlotType()V

    .line 312
    .line 313
    .line 314
    :cond_9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    if-eqz p1, :cond_10

    .line 319
    .line 320
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 321
    .line 322
    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 323
    .line 324
    invoke-virtual {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    .line 325
    .line 326
    .line 327
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 328
    .line 329
    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 330
    .line 331
    invoke-virtual {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    .line 332
    .line 333
    .line 334
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 335
    .line 336
    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 337
    .line 338
    invoke-virtual {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    .line 339
    .line 340
    .line 341
    goto :goto_0

    .line 342
    :cond_a
    const-string v0, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    .line 343
    .line 344
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-eqz v0, :cond_b

    .line 349
    .line 350
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 351
    .line 352
    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    .line 353
    .line 354
    invoke-virtual {p1, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateMultiSimReadyState(Z)V

    .line 355
    .line 356
    .line 357
    goto :goto_0

    .line 358
    :cond_b
    const-string v0, "android.intent.action.PHONE_STATE"

    .line 359
    .line 360
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_e

    .line 365
    .line 366
    const-string/jumbo p1, "state"

    .line 367
    .line 368
    .line 369
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 374
    .line 375
    .line 376
    move-result p2

    .line 377
    if-nez p2, :cond_10

    .line 378
    .line 379
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 380
    .line 381
    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 382
    .line 383
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 384
    .line 385
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-nez v0, :cond_c

    .line 390
    .line 391
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 392
    .line 393
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result p1

    .line 397
    if-eqz p1, :cond_d

    .line 398
    .line 399
    :cond_c
    move v4, v1

    .line 400
    :cond_d
    iput-boolean v4, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    .line 401
    .line 402
    goto :goto_0

    .line 403
    :cond_e
    const-string p2, "com.samsung.android.softsim.ServiceStatus"

    .line 404
    .line 405
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result p1

    .line 409
    if-eqz p1, :cond_10

    .line 410
    .line 411
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 412
    .line 413
    iget-object p2, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 414
    .line 415
    invoke-virtual {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSRoamingVirtualSlot()I

    .line 416
    .line 417
    .line 418
    move-result p1

    .line 419
    if-ne p1, v1, :cond_f

    .line 420
    .line 421
    move v4, v1

    .line 422
    :cond_f
    iput-boolean v4, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    .line 423
    .line 424
    :cond_10
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$9;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 425
    .line 426
    sget-object p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    .line 427
    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    .line 429
    .line 430
    .line 431
    return-void
.end method
