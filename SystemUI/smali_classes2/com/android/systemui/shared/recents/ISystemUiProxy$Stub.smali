.class public abstract Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shared/recents/ISystemUiProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.android.systemui.shared.recents.ISystemUiProxy"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    .line 1
    const-string v0, "com.android.systemui.shared.recents.ISystemUiProxy"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-eq p1, v2, :cond_1b

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    if-eq p1, v0, :cond_1a

    .line 21
    .line 22
    const/4 v2, 0x7

    .line 23
    if-eq p1, v2, :cond_19

    .line 24
    .line 25
    const-string v3, "OverviewProxyService"

    .line 26
    .line 27
    const/16 v4, 0xa

    .line 28
    .line 29
    if-eq p1, v4, :cond_17

    .line 30
    .line 31
    const/16 v4, 0x1a

    .line 32
    .line 33
    if-eq p1, v4, :cond_16

    .line 34
    .line 35
    const/16 v4, 0x1e

    .line 36
    .line 37
    if-eq p1, v4, :cond_14

    .line 38
    .line 39
    const/16 v4, 0xd

    .line 40
    .line 41
    if-eq p1, v4, :cond_13

    .line 42
    .line 43
    const/16 v4, 0xe

    .line 44
    .line 45
    if-eq p1, v4, :cond_12

    .line 46
    .line 47
    const/16 v4, 0x2d

    .line 48
    .line 49
    if-eq p1, v4, :cond_11

    .line 50
    .line 51
    const/16 v4, 0x2e

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    if-eq p1, v4, :cond_10

    .line 55
    .line 56
    packed-switch p1, :pswitch_data_0

    .line 57
    .line 58
    .line 59
    packed-switch p1, :pswitch_data_1

    .line 60
    .line 61
    .line 62
    packed-switch p1, :pswitch_data_2

    .line 63
    .line 64
    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    return p0

    .line 70
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 75
    .line 76
    .line 77
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 78
    .line 79
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda6;

    .line 80
    .line 81
    invoke-direct {p2, p0, p1, v5}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;FI)V

    .line 82
    .line 83
    .line 84
    const-string p1, "onAssistantGestureCompletion"

    .line 85
    .line 86
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_3

    .line 90
    .line 91
    :pswitch_1
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 92
    .line 93
    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda7;

    .line 94
    .line 95
    invoke-direct {p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda7;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string/jumbo p2, "stopScreenPinning"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :pswitch_2
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 107
    .line 108
    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;

    .line 109
    .line 110
    const/16 p2, 0x9

    .line 111
    .line 112
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    .line 113
    .line 114
    .line 115
    const-string p2, "notifyAccessibilityButtonLongClicked"

    .line 116
    .line 117
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-nez p0, :cond_1

    .line 122
    .line 123
    goto/16 :goto_3

    .line 124
    .line 125
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 126
    .line 127
    .line 128
    move-result-wide p2

    .line 129
    :try_start_0
    invoke-virtual {p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    .line 132
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_3

    .line 136
    .line 137
    :catchall_0
    move-exception p0

    .line 138
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    .line 140
    .line 141
    throw p0

    .line 142
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    .line 148
    .line 149
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 150
    .line 151
    const-string p2, "notifyAccessibilityButtonClicked"

    .line 152
    .line 153
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    if-nez p2, :cond_2

    .line 158
    .line 159
    goto/16 :goto_3

    .line 160
    .line 161
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 162
    .line 163
    .line 164
    move-result-wide p2

    .line 165
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 166
    .line 167
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 168
    .line 169
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    .line 175
    .line 176
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_3

    .line 180
    .line 181
    :catchall_1
    move-exception p0

    .line 182
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    .line 184
    .line 185
    throw p0

    .line 186
    :pswitch_4
    sget-object p1, Lcom/android/internal/util/ScreenshotRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 187
    .line 188
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    check-cast p1, Lcom/android/internal/util/ScreenshotRequest;

    .line 193
    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    .line 196
    .line 197
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 198
    .line 199
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 200
    .line 201
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 202
    .line 203
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    .line 204
    .line 205
    const/4 p3, 0x0

    .line 206
    invoke-virtual {p2, p1, p0, p3}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(Lcom/android/internal/util/ScreenshotRequest;Landroid/os/Handler;Ljava/util/function/Consumer;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_3

    .line 210
    .line 211
    :pswitch_5
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 212
    .line 213
    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;

    .line 214
    .line 215
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    .line 216
    .line 217
    .line 218
    const-string/jumbo p2, "toggleNotificationPanel"

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_3

    .line 225
    .line 226
    :pswitch_6
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 227
    .line 228
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 229
    .line 230
    iget-object p1, p1, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 231
    .line 232
    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    .line 233
    .line 234
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 239
    .line 240
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 241
    .line 242
    iget-object p2, p2, Lcom/android/systemui/recents/OverviewProxyService;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 243
    .line 244
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerFromSystem(ZI)V

    .line 248
    .line 249
    .line 250
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 251
    .line 252
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 253
    .line 254
    sget-object p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_IME_SWITCHER_BUTTON_TAP:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    .line 255
    .line 256
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_3

    .line 260
    .line 261
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    .line 267
    .line 268
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 269
    .line 270
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;

    .line 271
    .line 272
    invoke-direct {p2, p0, p1, v1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;-><init>(Landroid/os/Binder;ZI)V

    .line 273
    .line 274
    .line 275
    const-string p1, "notifyTaskbarAutohideSuspend"

    .line 276
    .line 277
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_3

    .line 281
    .line 282
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 287
    .line 288
    .line 289
    move-result p3

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    .line 292
    .line 293
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 294
    .line 295
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;

    .line 296
    .line 297
    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;ZZ)V

    .line 298
    .line 299
    .line 300
    const-string p1, "notifyTaskbarStatus"

    .line 301
    .line 302
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    goto/16 :goto_3

    .line 306
    .line 307
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    .line 313
    .line 314
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 315
    .line 316
    const-string p2, "invokeSearcleWithPackageName packageName = "

    .line 317
    .line 318
    invoke-static {p2, p1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    sget-boolean p2, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    .line 322
    .line 323
    if-eqz p2, :cond_3

    .line 324
    .line 325
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->mMainHandler:Landroid/os/Handler;

    .line 326
    .line 327
    new-instance p4, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;

    .line 328
    .line 329
    invoke-direct {p4, p0, p1, v5}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Ljava/lang/Object;I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    .line 334
    .line 335
    :cond_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_3

    .line 339
    .line 340
    :pswitch_a
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 341
    .line 342
    const-string p1, "cancelSearcle"

    .line 343
    .line 344
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    sget-boolean p1, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    .line 348
    .line 349
    if-eqz p1, :cond_4

    .line 350
    .line 351
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->mMainHandler:Landroid/os/Handler;

    .line 352
    .line 353
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;

    .line 354
    .line 355
    const/4 p4, 0x6

    .line 356
    invoke-direct {p2, p0, p4}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 360
    .line 361
    .line 362
    :cond_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_3

    .line 366
    .line 367
    :pswitch_b
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 368
    .line 369
    const-string p1, "invokeSearcle"

    .line 370
    .line 371
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    sget-boolean p1, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    .line 375
    .line 376
    if-eqz p1, :cond_5

    .line 377
    .line 378
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->mMainHandler:Landroid/os/Handler;

    .line 379
    .line 380
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;

    .line 381
    .line 382
    invoke-direct {p2, p0, v5}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    .line 387
    .line 388
    :cond_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_3

    .line 392
    .line 393
    :pswitch_c
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 394
    .line 395
    const-string/jumbo p1, "startSearcle"

    .line 396
    .line 397
    .line 398
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .line 400
    .line 401
    sget-boolean p1, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    .line 402
    .line 403
    if-eqz p1, :cond_6

    .line 404
    .line 405
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->mMainHandler:Landroid/os/Handler;

    .line 406
    .line 407
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;

    .line 408
    .line 409
    const/4 p4, 0x4

    .line 410
    invoke-direct {p2, p0, p4}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    .line 415
    .line 416
    :cond_6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_3

    .line 420
    .line 421
    :pswitch_d
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 422
    .line 423
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 424
    .line 425
    iget-object p1, p1, Lcom/android/systemui/recents/OverviewProxyService;->mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

    .line 426
    .line 427
    if-nez p1, :cond_7

    .line 428
    .line 429
    goto :goto_0

    .line 430
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->mMainHandler:Landroid/os/Handler;

    .line 431
    .line 432
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;

    .line 433
    .line 434
    invoke-direct {p2, p0, v2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    .line 439
    .line 440
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_3

    .line 444
    .line 445
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 446
    .line 447
    .line 448
    move-result p1

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    .line 451
    .line 452
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 453
    .line 454
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 455
    .line 456
    iget-object p2, p2, Lcom/android/systemui/recents/OverviewProxyService;->mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

    .line 457
    .line 458
    if-nez p2, :cond_8

    .line 459
    .line 460
    goto :goto_1

    .line 461
    :cond_8
    if-eqz p1, :cond_9

    .line 462
    .line 463
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->mOnNumberOfPackagesChangedListener:Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;

    .line 464
    .line 465
    check-cast p2, Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 466
    .line 467
    iget-object p4, p2, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    .line 468
    .line 469
    monitor-enter p4

    .line 470
    :try_start_2
    iget-object v0, p2, Lcom/android/systemui/qs/FgsManagerControllerImpl;->onNumberOfPackagesChangedListeners:Ljava/util/Set;

    .line 471
    .line 472
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 473
    .line 474
    .line 475
    monitor-exit p4

    .line 476
    iget-object p1, p2, Lcom/android/systemui/qs/FgsManagerControllerImpl;->secFgsManagerController:Lcom/android/systemui/qs/SecFgsManagerControllerImpl;

    .line 477
    .line 478
    const-string p2, "addOnNumberOfPackagesChangedListener"

    .line 479
    .line 480
    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/SecFgsManagerControllerImpl;->log(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 484
    .line 485
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

    .line 486
    .line 487
    check-cast p1, Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 488
    .line 489
    invoke-virtual {p1}, Lcom/android/systemui/qs/FgsManagerControllerImpl;->getNumRunningPackages()I

    .line 490
    .line 491
    .line 492
    move-result p1

    .line 493
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 494
    .line 495
    if-eqz p0, :cond_a

    .line 496
    .line 497
    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    .line 498
    .line 499
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->onNumberOfVisibleFgsChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 500
    .line 501
    .line 502
    goto :goto_1

    .line 503
    :catch_0
    move-exception p0

    .line 504
    const-string p1, "OverviewProxyService"

    .line 505
    .line 506
    const-string p2, "Failed to call onNumberOfVisibleFgsChanged()."

    .line 507
    .line 508
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    .line 510
    .line 511
    goto :goto_1

    .line 512
    :catchall_2
    move-exception p0

    .line 513
    monitor-exit p4

    .line 514
    throw p0

    .line 515
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->mOnNumberOfPackagesChangedListener:Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;

    .line 516
    .line 517
    check-cast p2, Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 518
    .line 519
    iget-object p1, p2, Lcom/android/systemui/qs/FgsManagerControllerImpl;->secFgsManagerController:Lcom/android/systemui/qs/SecFgsManagerControllerImpl;

    .line 520
    .line 521
    const-string/jumbo p4, "removeOnNumberOfPackagesChangedListener"

    .line 522
    .line 523
    .line 524
    invoke-virtual {p1, p4}, Lcom/android/systemui/qs/SecFgsManagerControllerImpl;->log(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    iget-object p1, p2, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    .line 528
    .line 529
    monitor-enter p1

    .line 530
    :try_start_4
    iget-object p2, p2, Lcom/android/systemui/qs/FgsManagerControllerImpl;->onNumberOfPackagesChangedListeners:Ljava/util/Set;

    .line 531
    .line 532
    invoke-interface {p2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 533
    .line 534
    .line 535
    monitor-exit p1

    .line 536
    :cond_a
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    .line 538
    .line 539
    goto/16 :goto_3

    .line 540
    .line 541
    :catchall_3
    move-exception p0

    .line 542
    monitor-exit p1

    .line 543
    throw p0

    .line 544
    :pswitch_f
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 545
    .line 546
    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;

    .line 547
    .line 548
    const/4 p2, 0x3

    .line 549
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    .line 550
    .line 551
    .line 552
    const-string p2, "notifyTaskbarSPluginButtonClicked"

    .line 553
    .line 554
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_3

    .line 561
    .line 562
    :pswitch_10
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 563
    .line 564
    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;

    .line 565
    .line 566
    invoke-direct {p1, p0, v1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    .line 567
    .line 568
    .line 569
    const-string p2, "notifyTaskbarNavigationBarInitialized"

    .line 570
    .line 571
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    .line 576
    .line 577
    goto/16 :goto_3

    .line 578
    .line 579
    :pswitch_11
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 580
    .line 581
    const-string p1, "notifyOnLongPressRecentsWithMultiStar"

    .line 582
    .line 583
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    .line 584
    .line 585
    .line 586
    move-result p0

    .line 587
    if-nez p0, :cond_b

    .line 588
    .line 589
    goto :goto_2

    .line 590
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 591
    .line 592
    .line 593
    move-result-wide p0

    .line 594
    :try_start_5
    sget-object p2, Lcom/samsung/android/systemui/multistar/MultiStarManager;->sInstance:Lcom/samsung/android/systemui/multistar/MultiStarManager$1;

    .line 595
    .line 596
    invoke-virtual {p2}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object p2

    .line 600
    check-cast p2, Lcom/samsung/android/systemui/multistar/MultiStarManager;

    .line 601
    .line 602
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    sget-object p2, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    .line 606
    .line 607
    if-eqz p2, :cond_c

    .line 608
    .line 609
    invoke-interface {p2}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->onLongPressRecents()Z

    .line 610
    .line 611
    .line 612
    move-result p2

    .line 613
    sput-boolean p2, Lcom/samsung/android/systemui/multistar/MultiStarManager;->sRecentKeyConsumed:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 614
    .line 615
    :cond_c
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 616
    .line 617
    .line 618
    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    .line 620
    .line 621
    goto/16 :goto_3

    .line 622
    .line 623
    :catchall_4
    move-exception p2

    .line 624
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 625
    .line 626
    .line 627
    throw p2

    .line 628
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 629
    .line 630
    .line 631
    move-result v3

    .line 632
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 633
    .line 634
    .line 635
    move-result v4

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 637
    .line 638
    .line 639
    move-result v5

    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 641
    .line 642
    .line 643
    move-result-wide v6

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    .line 646
    .line 647
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 648
    .line 649
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 650
    .line 651
    if-eqz p1, :cond_d

    .line 652
    .line 653
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 654
    .line 655
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 656
    .line 657
    new-instance p2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;

    .line 658
    .line 659
    move-object v2, p2

    .line 660
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;-><init>(IIIJ)V

    .line 661
    .line 662
    .line 663
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 664
    .line 665
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    .line 666
    .line 667
    .line 668
    :cond_d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    .line 670
    .line 671
    goto/16 :goto_3

    .line 672
    .line 673
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 674
    .line 675
    .line 676
    move-result p1

    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    .line 679
    .line 680
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 681
    .line 682
    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 683
    .line 684
    if-eqz p2, :cond_e

    .line 685
    .line 686
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 687
    .line 688
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 689
    .line 690
    new-instance p4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$StartBottomGestureHintVI;

    .line 691
    .line 692
    invoke-direct {p4, p1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$StartBottomGestureHintVI;-><init>(I)V

    .line 693
    .line 694
    .line 695
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 696
    .line 697
    invoke-virtual {p2, p0, p4}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    .line 698
    .line 699
    .line 700
    :cond_e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    .line 702
    .line 703
    goto/16 :goto_3

    .line 704
    .line 705
    :pswitch_14
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 706
    .line 707
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 708
    .line 709
    if-eqz p1, :cond_f

    .line 710
    .line 711
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 712
    .line 713
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 714
    .line 715
    new-instance p2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$ResetBottomGestureHintVI;

    .line 716
    .line 717
    invoke-direct {p2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$ResetBottomGestureHintVI;-><init>()V

    .line 718
    .line 719
    .line 720
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 721
    .line 722
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    .line 723
    .line 724
    .line 725
    :cond_f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    .line 727
    .line 728
    goto/16 :goto_3

    .line 729
    .line 730
    :cond_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 731
    .line 732
    .line 733
    move-result p1

    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 735
    .line 736
    .line 737
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 738
    .line 739
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;

    .line 740
    .line 741
    invoke-direct {p2, p0, p1, v5}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;-><init>(Landroid/os/Binder;ZI)V

    .line 742
    .line 743
    .line 744
    const-string/jumbo p1, "setHomeRotationEnabled"

    .line 745
    .line 746
    .line 747
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    goto/16 :goto_3

    .line 751
    .line 752
    :cond_11
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 753
    .line 754
    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;

    .line 755
    .line 756
    const/4 p2, 0x5

    .line 757
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    .line 758
    .line 759
    .line 760
    const-string p2, "onBackPressed"

    .line 761
    .line 762
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    goto/16 :goto_3

    .line 766
    .line 767
    :cond_12
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 768
    .line 769
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object p1

    .line 773
    check-cast p1, Landroid/os/Bundle;

    .line 774
    .line 775
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    .line 777
    .line 778
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 779
    .line 780
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;

    .line 781
    .line 782
    invoke-direct {p2, p0, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Ljava/lang/Object;I)V

    .line 783
    .line 784
    .line 785
    const-string/jumbo p1, "startAssistant"

    .line 786
    .line 787
    .line 788
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    goto/16 :goto_3

    .line 792
    .line 793
    :cond_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 794
    .line 795
    .line 796
    move-result p1

    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    .line 799
    .line 800
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 801
    .line 802
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda6;

    .line 803
    .line 804
    invoke-direct {p2, p0, p1, v1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;FI)V

    .line 805
    .line 806
    .line 807
    const-string p1, "onAssistantProgress"

    .line 808
    .line 809
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    goto/16 :goto_3

    .line 813
    .line 814
    :cond_14
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 815
    .line 816
    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;

    .line 817
    .line 818
    const/16 p2, 0x8

    .line 819
    .line 820
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    .line 821
    .line 822
    .line 823
    const-string p2, "expandNotificationPanel"

    .line 824
    .line 825
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    .line 826
    .line 827
    .line 828
    move-result p0

    .line 829
    if-nez p0, :cond_15

    .line 830
    .line 831
    goto/16 :goto_3

    .line 832
    .line 833
    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 834
    .line 835
    .line 836
    move-result-wide p2

    .line 837
    :try_start_6
    invoke-virtual {p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;->run()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 838
    .line 839
    .line 840
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 841
    .line 842
    .line 843
    goto/16 :goto_3

    .line 844
    .line 845
    :catchall_5
    move-exception p0

    .line 846
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 847
    .line 848
    .line 849
    throw p0

    .line 850
    :cond_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 851
    .line 852
    .line 853
    move-result p1

    .line 854
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    .line 856
    .line 857
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 858
    .line 859
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;

    .line 860
    .line 861
    invoke-direct {p2, p0, p1, v1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;II)V

    .line 862
    .line 863
    .line 864
    const-string p1, "notifyPrioritizedRotation"

    .line 865
    .line 866
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    goto :goto_3

    .line 870
    :cond_17
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 871
    .line 872
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object p1

    .line 876
    check-cast p1, Landroid/view/MotionEvent;

    .line 877
    .line 878
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 879
    .line 880
    .line 881
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 882
    .line 883
    new-instance p2, Ljava/lang/StringBuilder;

    .line 884
    .line 885
    const-string p3, "onStatusBarMotionEvent "

    .line 886
    .line 887
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 891
    .line 892
    .line 893
    move-result p3

    .line 894
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object p2

    .line 901
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    .line 903
    .line 904
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;

    .line 905
    .line 906
    invoke-direct {p2, p0, p1, v1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Ljava/lang/Object;I)V

    .line 907
    .line 908
    .line 909
    const-string p1, "onStatusBarMotionEvent"

    .line 910
    .line 911
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    .line 912
    .line 913
    .line 914
    move-result p0

    .line 915
    if-nez p0, :cond_18

    .line 916
    .line 917
    goto :goto_3

    .line 918
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 919
    .line 920
    .line 921
    move-result-wide p0

    .line 922
    :try_start_7
    invoke-virtual {p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;->run()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 923
    .line 924
    .line 925
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 926
    .line 927
    .line 928
    goto :goto_3

    .line 929
    :catchall_6
    move-exception p2

    .line 930
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 931
    .line 932
    .line 933
    throw p2

    .line 934
    :cond_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 935
    .line 936
    .line 937
    move-result p1

    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 939
    .line 940
    .line 941
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 942
    .line 943
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;

    .line 944
    .line 945
    invoke-direct {p2, p0, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;-><init>(Landroid/os/Binder;ZI)V

    .line 946
    .line 947
    .line 948
    const-string p1, "onOverviewShown"

    .line 949
    .line 950
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    goto :goto_3

    .line 954
    :cond_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 955
    .line 956
    .line 957
    move-result p1

    .line 958
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 959
    .line 960
    .line 961
    move-result p3

    .line 962
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object p4

    .line 966
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 967
    .line 968
    .line 969
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 970
    .line 971
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;

    .line 972
    .line 973
    invoke-direct {p2, p0, p1, p3, p4}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;IZLjava/lang/String;)V

    .line 974
    .line 975
    .line 976
    const-string/jumbo p1, "startScreenPinning"

    .line 977
    .line 978
    .line 979
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 980
    .line 981
    .line 982
    :goto_3
    return v1

    .line 983
    :cond_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    return v1

    .line 987
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    :pswitch_data_2
    .packed-switch 0x65
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
