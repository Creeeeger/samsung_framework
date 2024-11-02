.class public abstract Lcom/samsung/android/knox/seams/ISEAMS$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/knox/seams/ISEAMS;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/seams/ISEAMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/seams/ISEAMS$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_activateDomain:I = 0x2

.field public static final TRANSACTION_addAppToContainer:I = 0x3

.field public static final TRANSACTION_changeAppDomain:I = 0x20

.field public static final TRANSACTION_createSEContainer:I = 0x4

.field public static final TRANSACTION_deActivateDomain:I = 0x5

.field public static final TRANSACTION_getAMSLog:I = 0x7

.field public static final TRANSACTION_getAMSLogLevel:I = 0x9

.field public static final TRANSACTION_getAMSMode:I = 0xa

.field public static final TRANSACTION_getAVCLog:I = 0xb

.field public static final TRANSACTION_getActivationStatus:I = 0x6

.field public static final TRANSACTION_getDataType:I = 0xe

.field public static final TRANSACTION_getDomain:I = 0xf

.field public static final TRANSACTION_getPackageNamesFromSEContainer:I = 0x10

.field public static final TRANSACTION_getSEAMSLog:I = 0x8

.field public static final TRANSACTION_getSEContainerIDs:I = 0xd

.field public static final TRANSACTION_getSEContainerIDsFromPackageName:I = 0xc

.field public static final TRANSACTION_getSELinuxMode:I = 0x12

.field public static final TRANSACTION_getSepolicyVersion:I = 0x13

.field public static final TRANSACTION_getSignatureFromCertificate:I = 0x15

.field public static final TRANSACTION_getSignatureFromPackage:I = 0x16

.field public static final TRANSACTION_hasKnoxContainers:I = 0x17

.field public static final TRANSACTION_hasSEContainers:I = 0x18

.field public static final TRANSACTION_isAuthorized:I = 0x1

.field public static final TRANSACTION_isSEAndroidLogDumpStateInclude:I = 0x11

.field public static final TRANSACTION_isSEPolicyAutoUpdateEnabled:I = 0x14

.field public static final TRANSACTION_loadContainerSetting:I = 0x19

.field public static final TRANSACTION_relabelAppDir:I = 0x1a

.field public static final TRANSACTION_relabelData:I = 0x1b

.field public static final TRANSACTION_removeAppFromContainer:I = 0x1c

.field public static final TRANSACTION_removeSEContainer:I = 0x1d

.field public static final TRANSACTION_setAMSLogLevel:I = 0x1e

.field public static final TRANSACTION_setSEAndroidLogDumpStateInclude:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.samsung.android.knox.seams.ISEAMS"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/seams/ISEAMS;
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
    const-string v0, "com.samsung.android.knox.seams.ISEAMS"

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
    instance-of v1, v0, Lcom/samsung/android/knox/seams/ISEAMS;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/android/knox/seams/ISEAMS;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/seams/ISEAMS$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/seams/ISEAMS$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string p0, "changeAppDomain"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    const-string p0, "setSEAndroidLogDumpStateInclude"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    const-string p0, "setAMSLogLevel"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    const-string p0, "removeSEContainer"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    const-string p0, "removeAppFromContainer"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    const-string p0, "relabelData"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    const-string p0, "relabelAppDir"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    const-string p0, "loadContainerSetting"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    const-string p0, "hasSEContainers"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    const-string p0, "hasKnoxContainers"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    const-string p0, "getSignatureFromPackage"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    const-string p0, "getSignatureFromCertificate"

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_c
    const-string p0, "isSEPolicyAutoUpdateEnabled"

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_d
    const-string p0, "getSepolicyVersion"

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_e
    const-string p0, "getSELinuxMode"

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_f
    const-string p0, "isSEAndroidLogDumpStateInclude"

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_10
    const-string p0, "getPackageNamesFromSEContainer"

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_11
    const-string p0, "getDomain"

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_12
    const-string p0, "getDataType"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_13
    const-string p0, "getSEContainerIDs"

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_14
    const-string p0, "getSEContainerIDsFromPackageName"

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_15
    const-string p0, "getAVCLog"

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_16
    const-string p0, "getAMSMode"

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_17
    const-string p0, "getAMSLogLevel"

    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_18
    const-string p0, "getSEAMSLog"

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_19
    const-string p0, "getAMSLog"

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_1a
    const-string p0, "getActivationStatus"

    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_1b
    const-string p0, "deActivateDomain"

    .line 88
    .line 89
    return-object p0

    .line 90
    :pswitch_1c
    const-string p0, "createSEContainer"

    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_1d
    const-string p0, "addAppToContainer"

    .line 94
    .line 95
    return-object p0

    .line 96
    :pswitch_1e
    const-string p0, "activateDomain"

    .line 97
    .line 98
    return-object p0

    .line 99
    :pswitch_1f
    const-string p0, "isAuthorized"

    .line 100
    .line 101
    return-object p0

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
    const/16 p0, 0x1f

    .line 2
    .line 3
    return p0
.end method

.method public final getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "com.samsung.android.knox.seams.ISEAMS"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 32
    .line 33
    .line 34
    move-result p4

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/seams/ISEAMS;->changeAppDomain(Ljava/lang/String;Z)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :pswitch_1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 59
    .line 60
    .line 61
    move-result p4

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 63
    .line 64
    .line 65
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/seams/ISEAMS;->setSEAndroidLogDumpStateInclude(Lcom/samsung/android/knox/ContextInfo;Z)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :pswitch_2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 86
    .line 87
    .line 88
    move-result p4

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 90
    .line 91
    .line 92
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/seams/ISEAMS;->setAMSLogLevel(Lcom/samsung/android/knox/ContextInfo;I)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    .line 110
    .line 111
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->removeSEContainer(I)I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_0

    .line 122
    .line 123
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p4

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    .line 141
    .line 142
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/seams/ISEAMS;->removeAppFromContainer(Ljava/lang/String;Ljava/lang/String;II)I

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :pswitch_5
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 155
    .line 156
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 161
    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    .line 164
    .line 165
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->relabelData(Lcom/samsung/android/knox/ContextInfo;)I

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
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    .line 183
    .line 184
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->relabelAppDir(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    .line 202
    .line 203
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->loadContainerSetting(Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :pswitch_8
    invoke-interface {p0}, Lcom/samsung/android/knox/seams/ISEAMS;->hasSEContainers()I

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :pswitch_9
    invoke-interface {p0}, Lcom/samsung/android/knox/seams/ISEAMS;->hasKnoxContainers()I

    .line 228
    .line 229
    .line 230
    move-result p0

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    .line 245
    .line 246
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->getSignatureFromPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    .line 264
    .line 265
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->getSignatureFromCertificate([B)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :pswitch_c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 278
    .line 279
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 284
    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    .line 287
    .line 288
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->isSEPolicyAutoUpdateEnabled(Lcom/samsung/android/knox/ContextInfo;)I

    .line 289
    .line 290
    .line 291
    move-result p0

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :pswitch_d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 301
    .line 302
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 307
    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    .line 310
    .line 311
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->getSepolicyVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_0

    .line 322
    .line 323
    :pswitch_e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 324
    .line 325
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 330
    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    .line 333
    .line 334
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->getSELinuxMode(Lcom/samsung/android/knox/ContextInfo;)I

    .line 335
    .line 336
    .line 337
    move-result p0

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    .line 343
    .line 344
    goto/16 :goto_0

    .line 345
    .line 346
    :pswitch_f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 347
    .line 348
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 353
    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    .line 356
    .line 357
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->isSEAndroidLogDumpStateInclude(Lcom/samsung/android/knox/ContextInfo;)I

    .line 358
    .line 359
    .line 360
    move-result p0

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_0

    .line 368
    .line 369
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 374
    .line 375
    .line 376
    move-result p4

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    .line 379
    .line 380
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/seams/ISEAMS;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p0

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_0

    .line 391
    .line 392
    :pswitch_11
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 393
    .line 394
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 399
    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object p4

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    .line 410
    .line 411
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/seams/ISEAMS;->getDomain(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p0

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_0

    .line 422
    .line 423
    :pswitch_12
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 424
    .line 425
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 430
    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object p4

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    .line 441
    .line 442
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/seams/ISEAMS;->getDataType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p0

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    .line 448
    .line 449
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    goto/16 :goto_0

    .line 453
    .line 454
    :pswitch_13
    invoke-interface {p0}, Lcom/samsung/android/knox/seams/ISEAMS;->getSEContainerIDs()[I

    .line 455
    .line 456
    .line 457
    move-result-object p0

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    .line 460
    .line 461
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_0

    .line 465
    .line 466
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 471
    .line 472
    .line 473
    move-result p4

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    .line 476
    .line 477
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/seams/ISEAMS;->getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I

    .line 478
    .line 479
    .line 480
    move-result-object p0

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 485
    .line 486
    .line 487
    goto/16 :goto_0

    .line 488
    .line 489
    :pswitch_15
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 490
    .line 491
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 496
    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    .line 499
    .line 500
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->getAVCLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object p0

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    .line 506
    .line 507
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    goto/16 :goto_0

    .line 511
    .line 512
    :pswitch_16
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 513
    .line 514
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 519
    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    .line 522
    .line 523
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->getAMSMode(Lcom/samsung/android/knox/ContextInfo;)I

    .line 524
    .line 525
    .line 526
    move-result p0

    .line 527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    .line 529
    .line 530
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    .line 532
    .line 533
    goto/16 :goto_0

    .line 534
    .line 535
    :pswitch_17
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 536
    .line 537
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object p1

    .line 541
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 542
    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    .line 545
    .line 546
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->getAMSLogLevel(Lcom/samsung/android/knox/ContextInfo;)I

    .line 547
    .line 548
    .line 549
    move-result p0

    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    .line 552
    .line 553
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    .line 555
    .line 556
    goto/16 :goto_0

    .line 557
    .line 558
    :pswitch_18
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 559
    .line 560
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object p1

    .line 564
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 565
    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    .line 568
    .line 569
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->getSEAMSLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object p0

    .line 573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    .line 575
    .line 576
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_0

    .line 580
    .line 581
    :pswitch_19
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 582
    .line 583
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object p1

    .line 587
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 588
    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    .line 591
    .line 592
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->getAMSLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object p0

    .line 596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    .line 598
    .line 599
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    goto :goto_0

    .line 603
    :pswitch_1a
    invoke-interface {p0}, Lcom/samsung/android/knox/seams/ISEAMS;->getActivationStatus()I

    .line 604
    .line 605
    .line 606
    move-result p0

    .line 607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    .line 609
    .line 610
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    .line 612
    .line 613
    goto :goto_0

    .line 614
    :pswitch_1b
    invoke-interface {p0}, Lcom/samsung/android/knox/seams/ISEAMS;->deActivateDomain()I

    .line 615
    .line 616
    .line 617
    move-result p0

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    .line 620
    .line 621
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    .line 623
    .line 624
    goto :goto_0

    .line 625
    :pswitch_1c
    invoke-interface {p0}, Lcom/samsung/android/knox/seams/ISEAMS;->createSEContainer()I

    .line 626
    .line 627
    .line 628
    move-result p0

    .line 629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    .line 631
    .line 632
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    .line 634
    .line 635
    goto :goto_0

    .line 636
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object p1

    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object p4

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 649
    .line 650
    .line 651
    move-result v2

    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 653
    .line 654
    .line 655
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/seams/ISEAMS;->addAppToContainer(Ljava/lang/String;Ljava/lang/String;II)I

    .line 656
    .line 657
    .line 658
    move-result p0

    .line 659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    .line 661
    .line 662
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    .line 664
    .line 665
    goto :goto_0

    .line 666
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 667
    .line 668
    .line 669
    move-result p1

    .line 670
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 671
    .line 672
    .line 673
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->activateDomain(Z)I

    .line 674
    .line 675
    .line 676
    move-result p0

    .line 677
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    .line 679
    .line 680
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    .line 682
    .line 683
    goto :goto_0

    .line 684
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 685
    .line 686
    .line 687
    move-result p1

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 689
    .line 690
    .line 691
    move-result p4

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v2

    .line 700
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    .line 702
    .line 703
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/seams/ISEAMS;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    .line 704
    .line 705
    .line 706
    move-result p0

    .line 707
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    .line 709
    .line 710
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    .line 712
    .line 713
    :goto_0
    return v1

    .line 714
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    return v1

    .line 718
    nop

    .line 719
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
