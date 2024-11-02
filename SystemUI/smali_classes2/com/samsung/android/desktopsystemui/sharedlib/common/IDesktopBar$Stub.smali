.class public abstract Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_closePanel:I = 0x5

.field static final TRANSACTION_notifyPrivacyItemsChanged:I = 0xd

.field static final TRANSACTION_onDismiss:I = 0xf

.field static final TRANSACTION_onKeyguardWallpaperChanged:I = 0x11

.field static final TRANSACTION_onShow:I = 0xe

.field static final TRANSACTION_onUpdate:I = 0x10

.field static final TRANSACTION_openPanel:I = 0x4

.field static final TRANSACTION_setAirplaneMode:I = 0x8

.field static final TRANSACTION_setBtTetherIcon:I = 0x9

.field static final TRANSACTION_setConnectedDeviceListForGroup:I = 0xc

.field static final TRANSACTION_setDesktopBarCallback:I = 0x1

.field static final TRANSACTION_setLockout:I = 0x12

.field static final TRANSACTION_setMPTCPIcon:I = 0xa

.field static final TRANSACTION_setMobileIcon:I = 0x7

.field static final TRANSACTION_setOccluded:I = 0x13

.field static final TRANSACTION_setSubs:I = 0xb

.field static final TRANSACTION_setWifiIcon:I = 0x6

.field static final TRANSACTION_start:I = 0x2

.field static final TRANSACTION_stop:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.samsung.android.desktopsystemui.sharedlib.common.IDesktopBar"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;
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
    const-string v0, "com.samsung.android.desktopsystemui.sharedlib.common.IDesktopBar"

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
    instance-of v1, v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string v0, "com.samsung.android.desktopsystemui.sharedlib.common.IDesktopBar"

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
    if-eq p1, v2, :cond_8

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    packed-switch p1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    move v0, v1

    .line 35
    :cond_1
    invoke-interface {p0, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setOccluded(Z)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    move v0, v1

    .line 47
    :cond_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-interface {p0, v0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setLockout(ZLandroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :pswitch_2
    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->onKeyguardWallpaperChanged()V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 70
    .line 71
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Landroid/os/Bundle;

    .line 76
    .line 77
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->onUpdate(ILandroid/os/Bundle;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :pswitch_4
    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->onDismiss()V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->onShow(I)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    move v0, v1

    .line 103
    :cond_3
    invoke-interface {p0, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->notifyPrivacyItemsChanged(Z)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :pswitch_7
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Landroid/os/Bundle;

    .line 115
    .line 116
    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setConnectedDeviceListForGroup(Landroid/os/Bundle;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    :pswitch_8
    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setSubs()V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    move v0, v1

    .line 133
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 138
    .line 139
    .line 140
    move-result p3

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    invoke-interface {p0, v0, p1, p3, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setMPTCPIcon(ZIII)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_5

    .line 154
    .line 155
    move v0, v1

    .line 156
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-interface {p0, v0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setBtTetherIcon(ZI)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_6

    .line 169
    .line 170
    move v0, v1

    .line 171
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    invoke-interface {p0, v0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setAirplaneMode(ZI)V

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :pswitch_c
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 180
    .line 181
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Landroid/os/Bundle;

    .line 186
    .line 187
    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setMobileIcon(Landroid/os/Bundle;)V

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_7

    .line 196
    .line 197
    move v0, v1

    .line 198
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    invoke-interface {p0, v0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setWifiIcon(ZII)V

    .line 207
    .line 208
    .line 209
    goto :goto_0

    .line 210
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->closePanel(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    goto :goto_0

    .line 218
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->openPanel(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto :goto_0

    .line 226
    :pswitch_10
    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->stop()V

    .line 227
    .line 228
    .line 229
    goto :goto_0

    .line 230
    :pswitch_11
    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->start()V

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-static {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setDesktopBarCallback(Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;)V

    .line 243
    .line 244
    .line 245
    :goto_0
    return v1

    .line 246
    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    return v1

    .line 250
    nop

    .line 251
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
