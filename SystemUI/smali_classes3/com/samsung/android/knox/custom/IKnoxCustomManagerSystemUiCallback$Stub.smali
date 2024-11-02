.class public abstract Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_setBatteryLevelColourItem:I = 0xa

.field public static final TRANSACTION_setChargerConnectionSoundEnabledState:I = 0xf

.field public static final TRANSACTION_setHardKeyIntentState:I = 0x13

.field public static final TRANSACTION_setHideNotificationMessages:I = 0xb

.field public static final TRANSACTION_setLockScreenHiddenItems:I = 0x1

.field public static final TRANSACTION_setLockScreenOverrideMode:I = 0x2

.field public static final TRANSACTION_setQuickPanelButtonUsers:I = 0x12

.field public static final TRANSACTION_setQuickPanelButtons:I = 0x3

.field public static final TRANSACTION_setQuickPanelEditMode:I = 0x4

.field public static final TRANSACTION_setQuickPanelItems:I = 0x5

.field public static final TRANSACTION_setQuickPanelUnavailableButtons:I = 0x6

.field public static final TRANSACTION_setScreenOffOnStatusBarDoubleTapState:I = 0x7

.field public static final TRANSACTION_setStatusBarHidden:I = 0x11

.field public static final TRANSACTION_setStatusBarIconsState:I = 0x9

.field public static final TRANSACTION_setStatusBarNotificationsState:I = 0xc

.field public static final TRANSACTION_setStatusBarTextInfo:I = 0x8

.field public static final TRANSACTION_setUnlockSimOnBootState:I = 0xd

.field public static final TRANSACTION_setUnlockSimPin:I = 0xe

.field public static final TRANSACTION_setVolumePanelEnabledState:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.samsung.android.knox.custom.IKnoxCustomManagerSystemUiCallback"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.samsung.android.knox.custom.IKnoxCustomManagerSystemUiCallback"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_0
    const-string p0, "setHardKeyIntentState"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    const-string p0, "setQuickPanelButtonUsers"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    const-string p0, "setStatusBarHidden"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    const-string p0, "setVolumePanelEnabledState"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    const-string p0, "setChargerConnectionSoundEnabledState"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    const-string p0, "setUnlockSimPin"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    const-string p0, "setUnlockSimOnBootState"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    const-string p0, "setStatusBarNotificationsState"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    const-string p0, "setHideNotificationMessages"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    const-string p0, "setBatteryLevelColourItem"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    const-string p0, "setStatusBarIconsState"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    const-string p0, "setStatusBarTextInfo"

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_c
    const-string p0, "setScreenOffOnStatusBarDoubleTapState"

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_d
    const-string p0, "setQuickPanelUnavailableButtons"

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_e
    const-string p0, "setQuickPanelItems"

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_f
    const-string p0, "setQuickPanelEditMode"

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_10
    const-string p0, "setQuickPanelButtons"

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_11
    const-string p0, "setLockScreenOverrideMode"

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_12
    const-string p0, "setLockScreenHiddenItems"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getMaxTransactionId()I
    .locals 0

    .line 1
    const/16 p0, 0x12

    .line 2
    .line 3
    return p0
.end method

.method public final getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string v0, "com.samsung.android.knox.custom.IKnoxCustomManagerSystemUiCallback"

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
    if-eq p1, v2, :cond_1

    .line 18
    .line 19
    packed-switch p1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setHardKeyIntentState(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 47
    .line 48
    .line 49
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelButtonUsers(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 62
    .line 63
    .line 64
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarHidden(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 77
    .line 78
    .line 79
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setVolumePanelEnabledState(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 92
    .line 93
    .line 94
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setChargerConnectionSoundEnabledState(Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    .line 108
    .line 109
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setUnlockSimPin(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    .line 123
    .line 124
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setUnlockSimOnBootState(Z)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_0

    .line 131
    .line 132
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    .line 138
    .line 139
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarNotificationsState(Z)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    .line 153
    .line 154
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setHideNotificationMessages(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :pswitch_9
    sget-object p1, Lcom/samsung/android/knox/custom/StatusbarIconItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 163
    .line 164
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Lcom/samsung/android/knox/custom/StatusbarIconItem;

    .line 169
    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    .line 172
    .line 173
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    .line 187
    .line 188
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarIconsState(Z)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 201
    .line 202
    .line 203
    move-result p4

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    .line 214
    .line 215
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarTextInfo(Ljava/lang/String;III)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    .line 220
    .line 221
    goto :goto_0

    .line 222
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    .line 228
    .line 229
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setScreenOffOnStatusBarDoubleTapState(Z)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    .line 234
    .line 235
    goto :goto_0

    .line 236
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    .line 242
    .line 243
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelUnavailableButtons(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    .line 248
    .line 249
    goto :goto_0

    .line 250
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    .line 256
    .line 257
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelItems(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    .line 262
    .line 263
    goto :goto_0

    .line 264
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    .line 270
    .line 271
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelEditMode(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    .line 276
    .line 277
    goto :goto_0

    .line 278
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    .line 284
    .line 285
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelButtons(I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    .line 290
    .line 291
    goto :goto_0

    .line 292
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    .line 298
    .line 299
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setLockScreenOverrideMode(I)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    .line 304
    .line 305
    goto :goto_0

    .line 306
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    .line 312
    .line 313
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setLockScreenHiddenItems(I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    .line 318
    .line 319
    :goto_0
    return v1

    .line 320
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    return v1

    .line 324
    nop

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
