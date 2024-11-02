.class public abstract Lcom/samsung/android/knox/zt/service/IKnoxZtService$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/knox/zt/service/IKnoxZtService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/zt/service/IKnoxZtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/service/IKnoxZtService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getAppIdStatus:I = 0x1

.field public static final TRANSACTION_getChallenge:I = 0x2

.field public static final TRANSACTION_getDeviceId:I = 0x3

.field public static final TRANSACTION_getDeviceIdStatus:I = 0x4

.field public static final TRANSACTION_getIntegrityStatus:I = 0x5

.field public static final TRANSACTION_getOrigin:I = 0x6

.field public static final TRANSACTION_getRootOfTrustStatus:I = 0x7

.field public static final TRANSACTION_getSecurityLevel:I = 0x8

.field public static final TRANSACTION_loadSignals:I = 0x10

.field public static final TRANSACTION_provisionCert:I = 0x9

.field public static final TRANSACTION_startMonitoringDomains:I = 0xc

.field public static final TRANSACTION_startMonitoringFiles:I = 0xa

.field public static final TRANSACTION_startTracing:I = 0xe

.field public static final TRANSACTION_stopMonitoringDomains:I = 0xd

.field public static final TRANSACTION_stopMonitoringFiles:I = 0xb

.field public static final TRANSACTION_stopTracing:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.samsung.android.knox.zt.service.IKnoxZtService"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/service/IKnoxZtService;
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
    const-string v0, "com.samsung.android.knox.zt.service.IKnoxZtService"

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
    instance-of v1, v0, Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/android/knox/zt/service/IKnoxZtService;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/zt/service/IKnoxZtService$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string v0, "com.samsung.android.knox.zt.service.IKnoxZtService"

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
    invoke-interface {p0}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->loadSignals()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {p2}, Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->stopTracing(ILcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 68
    .line 69
    invoke-static {p2, p4}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    check-cast p4, Landroid/os/Bundle;

    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-static {p2}, Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->startTracing(ILandroid/os/Bundle;Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :pswitch_3
    invoke-interface {p0}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->stopMonitoringDomains()I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    move-result-object p4

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-static {p2}, Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->startMonitoringDomains(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :pswitch_5
    invoke-interface {p0}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->stopMonitoringFiles()I

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 152
    .line 153
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 154
    .line 155
    .line 156
    move-result-object p4

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-static {p2}, Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->startMonitoringFiles(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :pswitch_7
    sget-object p1, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 178
    .line 179
    invoke-static {p2, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    check-cast p1, Lcom/samsung/android/knox/zt/service/ParcelableProfile;

    .line 184
    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-static {p2}, Lcom/samsung/android/knox/zt/service/IServiceCertProvisionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/service/IServiceCertProvisionListener;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->provisionCert(Lcom/samsung/android/knox/zt/service/ParcelableProfile;Lcom/samsung/android/knox/zt/service/IServiceCertProvisionListener;)I

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :pswitch_8
    sget-object p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 206
    .line 207
    invoke-static {p2, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 212
    .line 213
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getSecurityLevel(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :pswitch_9
    sget-object p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 226
    .line 227
    invoke-static {p2, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    check-cast p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 232
    .line 233
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getRootOfTrustStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :pswitch_a
    sget-object p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 246
    .line 247
    invoke-static {p2, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    check-cast p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 252
    .line 253
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getOrigin(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    .line 254
    .line 255
    .line 256
    move-result p0

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    .line 262
    .line 263
    goto :goto_0

    .line 264
    :pswitch_b
    sget-object p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 265
    .line 266
    invoke-static {p2, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    check-cast p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 271
    .line 272
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getIntegrityStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    .line 273
    .line 274
    .line 275
    move-result p0

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    .line 281
    .line 282
    goto :goto_0

    .line 283
    :pswitch_c
    sget-object p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 284
    .line 285
    invoke-static {p2, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    check-cast p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 290
    .line 291
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getDeviceIdStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I

    .line 292
    .line 293
    .line 294
    move-result p0

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    .line 300
    .line 301
    goto :goto_0

    .line 302
    :pswitch_d
    sget-object p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 303
    .line 304
    invoke-static {p2, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    check-cast p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 309
    .line 310
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getDeviceId(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    goto :goto_0

    .line 321
    :pswitch_e
    sget-object p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 322
    .line 323
    invoke-static {p2, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    check-cast p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 328
    .line 329
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getChallenge(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)[B

    .line 330
    .line 331
    .line 332
    move-result-object p0

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 337
    .line 338
    .line 339
    goto :goto_0

    .line 340
    :pswitch_f
    sget-object p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 341
    .line 342
    invoke-static {p2, p1}, Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;->readTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    check-cast p1, Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 347
    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/service/IKnoxZtService;->getAppIdStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;[Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    move-result p0

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    .line 361
    .line 362
    :goto_0
    return v1

    .line 363
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    return v1

    .line 367
    :pswitch_data_0
    .packed-switch 0x1
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
