.class public abstract Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_addPackagesToExemptList:I = 0x26

.field public static final TRANSACTION_addPackagesToWhiteList:I = 0xd

.field public static final TRANSACTION_addPackagesToWhiteListInternal:I = 0xe

.field public static final TRANSACTION_changeKeyguardPin:I = 0x3e

.field public static final TRANSACTION_clearWhiteList:I = 0x12

.field public static final TRANSACTION_configureCredentialStorageForODESettings:I = 0x2b

.field public static final TRANSACTION_configureCredentialStoragePlugin:I = 0x2

.field public static final TRANSACTION_deleteCACertificate:I = 0x20

.field public static final TRANSACTION_deleteCertificate:I = 0x19

.field public static final TRANSACTION_deleteCertificateInternal:I = 0x1a

.field public static final TRANSACTION_enableCredentialStorageForLockType:I = 0x34

.field public static final TRANSACTION_enforceCredentialStorageAsLockType:I = 0x31

.field public static final TRANSACTION_getAdminForEnforcedCredentialStorageAsUser:I = 0x30

.field public static final TRANSACTION_getAliases:I = 0x1b

.field public static final TRANSACTION_getAllCertificateAliases:I = 0x1e

.field public static final TRANSACTION_getAuthType:I = 0x8

.field public static final TRANSACTION_getAvailableCredentialStorages:I = 0x1

.field public static final TRANSACTION_getCACertificate:I = 0x22

.field public static final TRANSACTION_getCACertificateAliases:I = 0x21

.field public static final TRANSACTION_getCertificateAliases:I = 0x1c

.field public static final TRANSACTION_getCertificateAliasesAsUser:I = 0x1d

.field public static final TRANSACTION_getCredentialStoragePluginConfiguration:I = 0x3

.field public static final TRANSACTION_getCredentialStorageProperty:I = 0x25

.field public static final TRANSACTION_getCredentialStorages:I = 0x13

.field public static final TRANSACTION_getDefaultInstallStorage:I = 0x14

.field public static final TRANSACTION_getDefaultInstallStorageAsUser:I = 0x15

.field public static final TRANSACTION_getEnforcedCredentialStorageForLockType:I = 0x2e

.field public static final TRANSACTION_getEnforcedCredentialStorageForLockTypeAsUser:I = 0x2f

.field public static final TRANSACTION_getKeyguardPinCurrentRetryCount:I = 0x3b

.field public static final TRANSACTION_getKeyguardPinMaximumLength:I = 0x3d

.field public static final TRANSACTION_getKeyguardPinMaximumRetryCount:I = 0x3a

.field public static final TRANSACTION_getKeyguardPinMinimumLength:I = 0x3c

.field public static final TRANSACTION_getODESettingsConfiguration:I = 0x2c

.field public static final TRANSACTION_getPackagesFromExemptList:I = 0x27

.field public static final TRANSACTION_getPackagesFromWhiteList:I = 0x10

.field public static final TRANSACTION_getStorageAuthenticationType:I = 0x9

.field public static final TRANSACTION_getSupportedAlgorithms:I = 0x23

.field public static final TRANSACTION_getWifiCertificateAliasesAsUser:I = 0x2d

.field public static final TRANSACTION_initKeyguardPin:I = 0x36

.field public static final TRANSACTION_installCACertificate:I = 0x1f

.field public static final TRANSACTION_installCertificate:I = 0x17

.field public static final TRANSACTION_installCertificateInternal:I = 0x18

.field public static final TRANSACTION_isAccessAllowed:I = 0x11

.field public static final TRANSACTION_isCallerDelegated:I = 0x35

.field public static final TRANSACTION_isCredentialStorageEnabledForLockType:I = 0x32

.field public static final TRANSACTION_isCredentialStorageEnabledForLockTypeAsUser:I = 0x33

.field public static final TRANSACTION_isCredentialStorageLocked:I = 0xb

.field public static final TRANSACTION_isCredentialStorageLockedAsUser:I = 0xc

.field public static final TRANSACTION_isCredentialStorageManaged:I = 0x5

.field public static final TRANSACTION_isCredentialStorageManagedAsUser:I = 0x6

.field public static final TRANSACTION_isPackageFromExemptList:I = 0x29

.field public static final TRANSACTION_lockCredentialStorage:I = 0xa

.field public static final TRANSACTION_manageCredentialStorage:I = 0x4

.field public static final TRANSACTION_notifyLicenseStatus:I = 0x2a

.field public static final TRANSACTION_removePackagesFromExemptList:I = 0x28

.field public static final TRANSACTION_removePackagesFromWhiteList:I = 0xf

.field public static final TRANSACTION_setAuthType:I = 0x7

.field public static final TRANSACTION_setCredentialStorageProperty:I = 0x24

.field public static final TRANSACTION_setDefaultInstallStorage:I = 0x16

.field public static final TRANSACTION_setKeyguardPinMaximumLength:I = 0x39

.field public static final TRANSACTION_setKeyguardPinMaximumRetryCount:I = 0x37

.field public static final TRANSACTION_setKeyguardPinMinimumLength:I = 0x38


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.samsung.android.knox.ucm.configurator.IUniversalCredentialManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
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
    const-string v0, "com.samsung.android.knox.ucm.configurator.IUniversalCredentialManager"

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
    instance-of v1, v0, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10

    .line 1
    const-string v0, "com.samsung.android.knox.ucm.configurator.IUniversalCredentialManager"

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
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 34
    .line 35
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    .line 37
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 52
    .line 53
    .line 54
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->changeKeyguardPin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :pswitch_1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 73
    .line 74
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 75
    .line 76
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 81
    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 83
    .line 84
    .line 85
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getKeyguardPinMaximumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :pswitch_2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 98
    .line 99
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 104
    .line 105
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 106
    .line 107
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p4

    .line 111
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 112
    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    .line 115
    .line 116
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getKeyguardPinMinimumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_0

    .line 127
    .line 128
    :pswitch_3
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 129
    .line 130
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 135
    .line 136
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 137
    .line 138
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p4

    .line 142
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 143
    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    .line 146
    .line 147
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getKeyguardPinCurrentRetryCount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :pswitch_4
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 160
    .line 161
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 166
    .line 167
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 168
    .line 169
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p4

    .line 173
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 174
    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    .line 177
    .line 178
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getKeyguardPinMaximumRetryCount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :pswitch_5
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 191
    .line 192
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 197
    .line 198
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 199
    .line 200
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p4

    .line 204
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 205
    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    .line 212
    .line 213
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setKeyguardPinMaximumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

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
    :pswitch_6
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 226
    .line 227
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 232
    .line 233
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 234
    .line 235
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p4

    .line 239
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 240
    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    .line 247
    .line 248
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setKeyguardPinMinimumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :pswitch_7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 261
    .line 262
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 267
    .line 268
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 269
    .line 270
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object p4

    .line 274
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 275
    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    .line 282
    .line 283
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setKeyguardPinMaximumRetryCount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    .line 284
    .line 285
    .line 286
    move-result p0

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    .line 292
    .line 293
    goto/16 :goto_0

    .line 294
    .line 295
    :pswitch_8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 296
    .line 297
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 302
    .line 303
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 304
    .line 305
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object p4

    .line 309
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 310
    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 316
    .line 317
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    check-cast v2, Landroid/os/Bundle;

    .line 322
    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    .line 325
    .line 326
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->initKeyguardPin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 327
    .line 328
    .line 329
    move-result p0

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :pswitch_9
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 339
    .line 340
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 345
    .line 346
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 347
    .line 348
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p4

    .line 352
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 353
    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    .line 360
    .line 361
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCallerDelegated(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    .line 362
    .line 363
    .line 364
    move-result p0

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_0

    .line 372
    .line 373
    :pswitch_a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 374
    .line 375
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 380
    .line 381
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 382
    .line 383
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object p4

    .line 387
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 388
    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    .line 395
    .line 396
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->enableCredentialStorageForLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    .line 397
    .line 398
    .line 399
    move-result p0

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    .line 402
    .line 403
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    .line 405
    .line 406
    goto/16 :goto_0

    .line 407
    .line 408
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 409
    .line 410
    .line 411
    move-result p1

    .line 412
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 413
    .line 414
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object p4

    .line 418
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 419
    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    .line 422
    .line 423
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageEnabledForLockTypeAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    .line 424
    .line 425
    .line 426
    move-result p0

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    .line 429
    .line 430
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 431
    .line 432
    .line 433
    goto/16 :goto_0

    .line 434
    .line 435
    :pswitch_c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 436
    .line 437
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 442
    .line 443
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 444
    .line 445
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object p4

    .line 449
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 450
    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    .line 453
    .line 454
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageEnabledForLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    .line 455
    .line 456
    .line 457
    move-result p0

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    .line 460
    .line 461
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_0

    .line 465
    .line 466
    :pswitch_d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 467
    .line 468
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 473
    .line 474
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 475
    .line 476
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object p4

    .line 480
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 481
    .line 482
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 483
    .line 484
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    check-cast v0, Landroid/os/Bundle;

    .line 489
    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    .line 492
    .line 493
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    .line 494
    .line 495
    .line 496
    move-result p0

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    .line 499
    .line 500
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    .line 502
    .line 503
    goto/16 :goto_0

    .line 504
    .line 505
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 506
    .line 507
    .line 508
    move-result p1

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    .line 511
    .line 512
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAdminForEnforcedCredentialStorageAsUser(I)I

    .line 513
    .line 514
    .line 515
    move-result p0

    .line 516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    .line 518
    .line 519
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    .line 521
    .line 522
    goto/16 :goto_0

    .line 523
    .line 524
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 525
    .line 526
    .line 527
    move-result p1

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    .line 530
    .line 531
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getEnforcedCredentialStorageForLockTypeAsUser(I)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 532
    .line 533
    .line 534
    move-result-object p0

    .line 535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    .line 537
    .line 538
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 539
    .line 540
    .line 541
    goto/16 :goto_0

    .line 542
    .line 543
    :pswitch_10
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 544
    .line 545
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 550
    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    .line 553
    .line 554
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getEnforcedCredentialStorageForLockType(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 555
    .line 556
    .line 557
    move-result-object p0

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    .line 560
    .line 561
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 562
    .line 563
    .line 564
    goto/16 :goto_0

    .line 565
    .line 566
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 567
    .line 568
    .line 569
    move-result p1

    .line 570
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 571
    .line 572
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object p4

    .line 576
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 577
    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 579
    .line 580
    .line 581
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getWifiCertificateAliasesAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object p0

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    .line 587
    .line 588
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    goto/16 :goto_0

    .line 592
    .line 593
    :pswitch_12
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 594
    .line 595
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object p1

    .line 599
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 600
    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    .line 603
    .line 604
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getODESettingsConfiguration(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    .line 605
    .line 606
    .line 607
    move-result-object p0

    .line 608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    .line 610
    .line 611
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 612
    .line 613
    .line 614
    goto/16 :goto_0

    .line 615
    .line 616
    :pswitch_13
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 617
    .line 618
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object p1

    .line 622
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 623
    .line 624
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 625
    .line 626
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object p4

    .line 630
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 631
    .line 632
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 633
    .line 634
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    check-cast v0, Landroid/os/Bundle;

    .line 639
    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    .line 642
    .line 643
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->configureCredentialStorageForODESettings(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    .line 644
    .line 645
    .line 646
    move-result p0

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    .line 649
    .line 650
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    .line 652
    .line 653
    goto/16 :goto_0

    .line 654
    .line 655
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 656
    .line 657
    .line 658
    move-result p1

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object p4

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    .line 665
    .line 666
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->notifyLicenseStatus(ILjava/lang/String;)Z

    .line 667
    .line 668
    .line 669
    move-result p0

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    .line 672
    .line 673
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 674
    .line 675
    .line 676
    goto/16 :goto_0

    .line 677
    .line 678
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 679
    .line 680
    .line 681
    move-result p1

    .line 682
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 683
    .line 684
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object p4

    .line 688
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 689
    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 691
    .line 692
    .line 693
    move-result v0

    .line 694
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 695
    .line 696
    .line 697
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isPackageFromExemptList(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    .line 698
    .line 699
    .line 700
    move-result p0

    .line 701
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    .line 703
    .line 704
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 705
    .line 706
    .line 707
    goto/16 :goto_0

    .line 708
    .line 709
    :pswitch_16
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 710
    .line 711
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object p1

    .line 715
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 716
    .line 717
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 718
    .line 719
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object p4

    .line 723
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 724
    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 726
    .line 727
    .line 728
    move-result v0

    .line 729
    sget-object v2, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 730
    .line 731
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 732
    .line 733
    .line 734
    move-result-object v2

    .line 735
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    .line 737
    .line 738
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->removePackagesFromExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I

    .line 739
    .line 740
    .line 741
    move-result p0

    .line 742
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    .line 744
    .line 745
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    .line 747
    .line 748
    goto/16 :goto_0

    .line 749
    .line 750
    :pswitch_17
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 751
    .line 752
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object p1

    .line 756
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 757
    .line 758
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 759
    .line 760
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object p4

    .line 764
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 765
    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 767
    .line 768
    .line 769
    move-result v0

    .line 770
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 771
    .line 772
    .line 773
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getPackagesFromExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Ljava/util/List;

    .line 774
    .line 775
    .line 776
    move-result-object p0

    .line 777
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    .line 779
    .line 780
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 781
    .line 782
    .line 783
    goto/16 :goto_0

    .line 784
    .line 785
    :pswitch_18
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 786
    .line 787
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object p1

    .line 791
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 792
    .line 793
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 794
    .line 795
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object p4

    .line 799
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 800
    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 802
    .line 803
    .line 804
    move-result v0

    .line 805
    sget-object v2, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 806
    .line 807
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 808
    .line 809
    .line 810
    move-result-object v2

    .line 811
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    .line 813
    .line 814
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->addPackagesToExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I

    .line 815
    .line 816
    .line 817
    move-result p0

    .line 818
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    .line 820
    .line 821
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    .line 823
    .line 824
    goto/16 :goto_0

    .line 825
    .line 826
    :pswitch_19
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 827
    .line 828
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object p1

    .line 832
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 833
    .line 834
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 835
    .line 836
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object p4

    .line 840
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 841
    .line 842
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 843
    .line 844
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    check-cast v0, Landroid/os/Bundle;

    .line 849
    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    .line 852
    .line 853
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCredentialStorageProperty(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 854
    .line 855
    .line 856
    move-result-object p0

    .line 857
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    .line 859
    .line 860
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 861
    .line 862
    .line 863
    goto/16 :goto_0

    .line 864
    .line 865
    :pswitch_1a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 866
    .line 867
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object p1

    .line 871
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 872
    .line 873
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 874
    .line 875
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object p4

    .line 879
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 880
    .line 881
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 882
    .line 883
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    check-cast v0, Landroid/os/Bundle;

    .line 888
    .line 889
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    .line 891
    .line 892
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setCredentialStorageProperty(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 893
    .line 894
    .line 895
    move-result-object p0

    .line 896
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    .line 898
    .line 899
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 900
    .line 901
    .line 902
    goto/16 :goto_0

    .line 903
    .line 904
    :pswitch_1b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 905
    .line 906
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    move-result-object p1

    .line 910
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 911
    .line 912
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 913
    .line 914
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    move-result-object p4

    .line 918
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 919
    .line 920
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 921
    .line 922
    .line 923
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getSupportedAlgorithms(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object p0

    .line 927
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    .line 929
    .line 930
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 931
    .line 932
    .line 933
    goto/16 :goto_0

    .line 934
    .line 935
    :pswitch_1c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 936
    .line 937
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object p1

    .line 941
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 942
    .line 943
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object p4

    .line 947
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    .line 949
    .line 950
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCACertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;

    .line 951
    .line 952
    .line 953
    move-result-object p0

    .line 954
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    .line 956
    .line 957
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 958
    .line 959
    .line 960
    goto/16 :goto_0

    .line 961
    .line 962
    :pswitch_1d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 963
    .line 964
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-result-object p1

    .line 968
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 969
    .line 970
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 971
    .line 972
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 973
    .line 974
    .line 975
    move-result-object p4

    .line 976
    check-cast p4, Landroid/os/Bundle;

    .line 977
    .line 978
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 979
    .line 980
    .line 981
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCACertificateAliases(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)[Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object p0

    .line 985
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    .line 987
    .line 988
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    goto/16 :goto_0

    .line 992
    .line 993
    :pswitch_1e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 994
    .line 995
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object p1

    .line 999
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1000
    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object p4

    .line 1005
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1006
    .line 1007
    .line 1008
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->deleteCACertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    .line 1009
    .line 1010
    .line 1011
    move-result p0

    .line 1012
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    .line 1017
    .line 1018
    goto/16 :goto_0

    .line 1019
    .line 1020
    :pswitch_1f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1021
    .line 1022
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1023
    .line 1024
    .line 1025
    move-result-object p1

    .line 1026
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1027
    .line 1028
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1029
    .line 1030
    .line 1031
    move-result-object p4

    .line 1032
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1037
    .line 1038
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v2

    .line 1042
    check-cast v2, Landroid/os/Bundle;

    .line 1043
    .line 1044
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1045
    .line 1046
    .line 1047
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->installCACertificate(Lcom/samsung/android/knox/ContextInfo;[BLjava/lang/String;Landroid/os/Bundle;)I

    .line 1048
    .line 1049
    .line 1050
    move-result p0

    .line 1051
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    .line 1056
    .line 1057
    goto/16 :goto_0

    .line 1058
    .line 1059
    :pswitch_20
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1060
    .line 1061
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object p1

    .line 1065
    check-cast p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1066
    .line 1067
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1068
    .line 1069
    .line 1070
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAllCertificateAliases(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    .line 1071
    .line 1072
    .line 1073
    move-result-object p0

    .line 1074
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1078
    .line 1079
    .line 1080
    goto/16 :goto_0

    .line 1081
    .line 1082
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1083
    .line 1084
    .line 1085
    move-result p1

    .line 1086
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1087
    .line 1088
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1089
    .line 1090
    .line 1091
    move-result-object p4

    .line 1092
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1093
    .line 1094
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    .line 1096
    .line 1097
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliasesAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    .line 1098
    .line 1099
    .line 1100
    move-result-object p0

    .line 1101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    goto/16 :goto_0

    .line 1108
    .line 1109
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1110
    .line 1111
    .line 1112
    move-result p1

    .line 1113
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1114
    .line 1115
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1116
    .line 1117
    .line 1118
    move-result-object p4

    .line 1119
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1120
    .line 1121
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1122
    .line 1123
    .line 1124
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCertificateAliases(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    .line 1125
    .line 1126
    .line 1127
    move-result-object p0

    .line 1128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1132
    .line 1133
    .line 1134
    goto/16 :goto_0

    .line 1135
    .line 1136
    :pswitch_23
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1137
    .line 1138
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1139
    .line 1140
    .line 1141
    move-result-object p1

    .line 1142
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1143
    .line 1144
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1145
    .line 1146
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1147
    .line 1148
    .line 1149
    move-result-object p4

    .line 1150
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1151
    .line 1152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1153
    .line 1154
    .line 1155
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAliases(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    .line 1156
    .line 1157
    .line 1158
    move-result-object p0

    .line 1159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1160
    .line 1161
    .line 1162
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1163
    .line 1164
    .line 1165
    goto/16 :goto_0

    .line 1166
    .line 1167
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1168
    .line 1169
    .line 1170
    move-result p1

    .line 1171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1172
    .line 1173
    .line 1174
    move-result p4

    .line 1175
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1176
    .line 1177
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v0

    .line 1181
    check-cast v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1182
    .line 1183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v2

    .line 1187
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1188
    .line 1189
    .line 1190
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->deleteCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I

    .line 1191
    .line 1192
    .line 1193
    move-result p0

    .line 1194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    .line 1199
    .line 1200
    goto/16 :goto_0

    .line 1201
    .line 1202
    :pswitch_25
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1203
    .line 1204
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1205
    .line 1206
    .line 1207
    move-result-object p1

    .line 1208
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1209
    .line 1210
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1211
    .line 1212
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1213
    .line 1214
    .line 1215
    move-result-object p4

    .line 1216
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1217
    .line 1218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v0

    .line 1222
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1223
    .line 1224
    .line 1225
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I

    .line 1226
    .line 1227
    .line 1228
    move-result p0

    .line 1229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    .line 1234
    .line 1235
    goto/16 :goto_0

    .line 1236
    .line 1237
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1238
    .line 1239
    .line 1240
    move-result v3

    .line 1241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1242
    .line 1243
    .line 1244
    move-result v4

    .line 1245
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1246
    .line 1247
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1248
    .line 1249
    .line 1250
    move-result-object p1

    .line 1251
    move-object v5, p1

    .line 1252
    check-cast v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1253
    .line 1254
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1255
    .line 1256
    .line 1257
    move-result-object v6

    .line 1258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v7

    .line 1262
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1263
    .line 1264
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1265
    .line 1266
    .line 1267
    move-result-object p1

    .line 1268
    move-object v8, p1

    .line 1269
    check-cast v8, Landroid/os/Bundle;

    .line 1270
    .line 1271
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1272
    .line 1273
    .line 1274
    move-result v9

    .line 1275
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1276
    .line 1277
    .line 1278
    move-object v2, p0

    .line 1279
    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->installCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Landroid/os/Bundle;Z)I

    .line 1280
    .line 1281
    .line 1282
    move-result p0

    .line 1283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1284
    .line 1285
    .line 1286
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1287
    .line 1288
    .line 1289
    goto/16 :goto_0

    .line 1290
    .line 1291
    :pswitch_27
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1292
    .line 1293
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1294
    .line 1295
    .line 1296
    move-result-object p1

    .line 1297
    move-object v3, p1

    .line 1298
    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    .line 1299
    .line 1300
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1301
    .line 1302
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1303
    .line 1304
    .line 1305
    move-result-object p1

    .line 1306
    move-object v4, p1

    .line 1307
    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1308
    .line 1309
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1310
    .line 1311
    .line 1312
    move-result-object v5

    .line 1313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v6

    .line 1317
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v7

    .line 1321
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1322
    .line 1323
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1324
    .line 1325
    .line 1326
    move-result-object p1

    .line 1327
    move-object v8, p1

    .line 1328
    check-cast v8, Landroid/os/Bundle;

    .line 1329
    .line 1330
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1331
    .line 1332
    .line 1333
    move-object v2, p0

    .line 1334
    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 1335
    .line 1336
    .line 1337
    move-result p0

    .line 1338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1342
    .line 1343
    .line 1344
    goto/16 :goto_0

    .line 1345
    .line 1346
    :pswitch_28
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1347
    .line 1348
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1349
    .line 1350
    .line 1351
    move-result-object p1

    .line 1352
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1353
    .line 1354
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1355
    .line 1356
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1357
    .line 1358
    .line 1359
    move-result-object p4

    .line 1360
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1361
    .line 1362
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1363
    .line 1364
    .line 1365
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setDefaultInstallStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    .line 1366
    .line 1367
    .line 1368
    move-result p0

    .line 1369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1373
    .line 1374
    .line 1375
    goto/16 :goto_0

    .line 1376
    .line 1377
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1378
    .line 1379
    .line 1380
    move-result p1

    .line 1381
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1382
    .line 1383
    .line 1384
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getDefaultInstallStorageAsUser(I)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1385
    .line 1386
    .line 1387
    move-result-object p0

    .line 1388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1389
    .line 1390
    .line 1391
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1392
    .line 1393
    .line 1394
    goto/16 :goto_0

    .line 1395
    .line 1396
    :pswitch_2a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1397
    .line 1398
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1399
    .line 1400
    .line 1401
    move-result-object p1

    .line 1402
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1403
    .line 1404
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1405
    .line 1406
    .line 1407
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getDefaultInstallStorage(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1408
    .line 1409
    .line 1410
    move-result-object p0

    .line 1411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1415
    .line 1416
    .line 1417
    goto/16 :goto_0

    .line 1418
    .line 1419
    :pswitch_2b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1420
    .line 1421
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1422
    .line 1423
    .line 1424
    move-result-object p1

    .line 1425
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1426
    .line 1427
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1428
    .line 1429
    .line 1430
    move-result-object p4

    .line 1431
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1432
    .line 1433
    .line 1434
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCredentialStorages(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1435
    .line 1436
    .line 1437
    move-result-object p0

    .line 1438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1442
    .line 1443
    .line 1444
    goto/16 :goto_0

    .line 1445
    .line 1446
    :pswitch_2c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1447
    .line 1448
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1449
    .line 1450
    .line 1451
    move-result-object p1

    .line 1452
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1453
    .line 1454
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1455
    .line 1456
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1457
    .line 1458
    .line 1459
    move-result-object p4

    .line 1460
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1461
    .line 1462
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1463
    .line 1464
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v0

    .line 1468
    check-cast v0, Landroid/os/Bundle;

    .line 1469
    .line 1470
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1471
    .line 1472
    .line 1473
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->clearWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    .line 1474
    .line 1475
    .line 1476
    move-result p0

    .line 1477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1481
    .line 1482
    .line 1483
    goto/16 :goto_0

    .line 1484
    .line 1485
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1486
    .line 1487
    .line 1488
    move-result p1

    .line 1489
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1490
    .line 1491
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1492
    .line 1493
    .line 1494
    move-result-object p4

    .line 1495
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1496
    .line 1497
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1498
    .line 1499
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v0

    .line 1503
    check-cast v0, Landroid/os/Bundle;

    .line 1504
    .line 1505
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1506
    .line 1507
    .line 1508
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isAccessAllowed(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Z

    .line 1509
    .line 1510
    .line 1511
    move-result p0

    .line 1512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1513
    .line 1514
    .line 1515
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1516
    .line 1517
    .line 1518
    goto/16 :goto_0

    .line 1519
    .line 1520
    :pswitch_2e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1521
    .line 1522
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1523
    .line 1524
    .line 1525
    move-result-object p1

    .line 1526
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1527
    .line 1528
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1529
    .line 1530
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1531
    .line 1532
    .line 1533
    move-result-object p4

    .line 1534
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1535
    .line 1536
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1537
    .line 1538
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v0

    .line 1542
    check-cast v0, Landroid/os/Bundle;

    .line 1543
    .line 1544
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1545
    .line 1546
    .line 1547
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;

    .line 1548
    .line 1549
    .line 1550
    move-result-object p0

    .line 1551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1552
    .line 1553
    .line 1554
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1555
    .line 1556
    .line 1557
    goto/16 :goto_0

    .line 1558
    .line 1559
    :pswitch_2f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1560
    .line 1561
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1562
    .line 1563
    .line 1564
    move-result-object p1

    .line 1565
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1566
    .line 1567
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1568
    .line 1569
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1570
    .line 1571
    .line 1572
    move-result-object p4

    .line 1573
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1574
    .line 1575
    sget-object v0, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1576
    .line 1577
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v0

    .line 1581
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1582
    .line 1583
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v2

    .line 1587
    check-cast v2, Landroid/os/Bundle;

    .line 1588
    .line 1589
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1590
    .line 1591
    .line 1592
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->removePackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    .line 1593
    .line 1594
    .line 1595
    move-result p0

    .line 1596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1597
    .line 1598
    .line 1599
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1600
    .line 1601
    .line 1602
    goto/16 :goto_0

    .line 1603
    .line 1604
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1605
    .line 1606
    .line 1607
    move-result v3

    .line 1608
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1609
    .line 1610
    .line 1611
    move-result v4

    .line 1612
    sget-object p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1613
    .line 1614
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1615
    .line 1616
    .line 1617
    move-result-object p1

    .line 1618
    move-object v5, p1

    .line 1619
    check-cast v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1620
    .line 1621
    sget-object p1, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1622
    .line 1623
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v6

    .line 1627
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1628
    .line 1629
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1630
    .line 1631
    .line 1632
    move-result-object p1

    .line 1633
    move-object v7, p1

    .line 1634
    check-cast v7, Landroid/os/Bundle;

    .line 1635
    .line 1636
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1637
    .line 1638
    .line 1639
    move-object v2, p0

    .line 1640
    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->addPackagesToWhiteListInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    .line 1641
    .line 1642
    .line 1643
    move-result p0

    .line 1644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1645
    .line 1646
    .line 1647
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1648
    .line 1649
    .line 1650
    goto/16 :goto_0

    .line 1651
    .line 1652
    :pswitch_31
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1653
    .line 1654
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1655
    .line 1656
    .line 1657
    move-result-object p1

    .line 1658
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1659
    .line 1660
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1661
    .line 1662
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1663
    .line 1664
    .line 1665
    move-result-object p4

    .line 1666
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1667
    .line 1668
    sget-object v0, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1669
    .line 1670
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v0

    .line 1674
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1675
    .line 1676
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v2

    .line 1680
    check-cast v2, Landroid/os/Bundle;

    .line 1681
    .line 1682
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1683
    .line 1684
    .line 1685
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->addPackagesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    .line 1686
    .line 1687
    .line 1688
    move-result p0

    .line 1689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1690
    .line 1691
    .line 1692
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1693
    .line 1694
    .line 1695
    goto/16 :goto_0

    .line 1696
    .line 1697
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1698
    .line 1699
    .line 1700
    move-result p1

    .line 1701
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1702
    .line 1703
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1704
    .line 1705
    .line 1706
    move-result-object p4

    .line 1707
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1708
    .line 1709
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1710
    .line 1711
    .line 1712
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageLockedAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    .line 1713
    .line 1714
    .line 1715
    move-result p0

    .line 1716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1717
    .line 1718
    .line 1719
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1720
    .line 1721
    .line 1722
    goto/16 :goto_0

    .line 1723
    .line 1724
    :pswitch_33
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1725
    .line 1726
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1727
    .line 1728
    .line 1729
    move-result-object p1

    .line 1730
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1731
    .line 1732
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1733
    .line 1734
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1735
    .line 1736
    .line 1737
    move-result-object p4

    .line 1738
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1739
    .line 1740
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1741
    .line 1742
    .line 1743
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageLocked(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    .line 1744
    .line 1745
    .line 1746
    move-result p0

    .line 1747
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1748
    .line 1749
    .line 1750
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1751
    .line 1752
    .line 1753
    goto/16 :goto_0

    .line 1754
    .line 1755
    :pswitch_34
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1756
    .line 1757
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1758
    .line 1759
    .line 1760
    move-result-object p1

    .line 1761
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1762
    .line 1763
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1764
    .line 1765
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1766
    .line 1767
    .line 1768
    move-result-object p4

    .line 1769
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1770
    .line 1771
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1772
    .line 1773
    .line 1774
    move-result v0

    .line 1775
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1776
    .line 1777
    .line 1778
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->lockCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    .line 1779
    .line 1780
    .line 1781
    move-result p0

    .line 1782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1783
    .line 1784
    .line 1785
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1786
    .line 1787
    .line 1788
    goto/16 :goto_0

    .line 1789
    .line 1790
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1791
    .line 1792
    .line 1793
    move-result p1

    .line 1794
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1795
    .line 1796
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1797
    .line 1798
    .line 1799
    move-result-object p4

    .line 1800
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1801
    .line 1802
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1803
    .line 1804
    .line 1805
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getStorageAuthenticationType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    .line 1806
    .line 1807
    .line 1808
    move-result p0

    .line 1809
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1810
    .line 1811
    .line 1812
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1813
    .line 1814
    .line 1815
    goto/16 :goto_0

    .line 1816
    .line 1817
    :pswitch_36
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1818
    .line 1819
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1820
    .line 1821
    .line 1822
    move-result-object p1

    .line 1823
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1824
    .line 1825
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1826
    .line 1827
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1828
    .line 1829
    .line 1830
    move-result-object p4

    .line 1831
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1832
    .line 1833
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1834
    .line 1835
    .line 1836
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAuthType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    .line 1837
    .line 1838
    .line 1839
    move-result p0

    .line 1840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1841
    .line 1842
    .line 1843
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1844
    .line 1845
    .line 1846
    goto/16 :goto_0

    .line 1847
    .line 1848
    :pswitch_37
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1849
    .line 1850
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1851
    .line 1852
    .line 1853
    move-result-object p1

    .line 1854
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1855
    .line 1856
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1857
    .line 1858
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1859
    .line 1860
    .line 1861
    move-result-object p4

    .line 1862
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1863
    .line 1864
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1865
    .line 1866
    .line 1867
    move-result v0

    .line 1868
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1869
    .line 1870
    .line 1871
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setAuthType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    .line 1872
    .line 1873
    .line 1874
    move-result p0

    .line 1875
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1876
    .line 1877
    .line 1878
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1879
    .line 1880
    .line 1881
    goto/16 :goto_0

    .line 1882
    .line 1883
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1884
    .line 1885
    .line 1886
    move-result p1

    .line 1887
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1888
    .line 1889
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1890
    .line 1891
    .line 1892
    move-result-object p4

    .line 1893
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1894
    .line 1895
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1896
    .line 1897
    .line 1898
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageManagedAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    .line 1899
    .line 1900
    .line 1901
    move-result p0

    .line 1902
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1903
    .line 1904
    .line 1905
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1906
    .line 1907
    .line 1908
    goto/16 :goto_0

    .line 1909
    .line 1910
    :pswitch_39
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1911
    .line 1912
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1913
    .line 1914
    .line 1915
    move-result-object p1

    .line 1916
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1917
    .line 1918
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1919
    .line 1920
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1921
    .line 1922
    .line 1923
    move-result-object p4

    .line 1924
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1925
    .line 1926
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1927
    .line 1928
    .line 1929
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageManaged(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    .line 1930
    .line 1931
    .line 1932
    move-result p0

    .line 1933
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1934
    .line 1935
    .line 1936
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1937
    .line 1938
    .line 1939
    goto/16 :goto_0

    .line 1940
    .line 1941
    :pswitch_3a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1942
    .line 1943
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1944
    .line 1945
    .line 1946
    move-result-object p1

    .line 1947
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1948
    .line 1949
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1950
    .line 1951
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1952
    .line 1953
    .line 1954
    move-result-object p4

    .line 1955
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1956
    .line 1957
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1958
    .line 1959
    .line 1960
    move-result v0

    .line 1961
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1962
    .line 1963
    .line 1964
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->manageCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    .line 1965
    .line 1966
    .line 1967
    move-result p0

    .line 1968
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1969
    .line 1970
    .line 1971
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1972
    .line 1973
    .line 1974
    goto :goto_0

    .line 1975
    :pswitch_3b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1976
    .line 1977
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1978
    .line 1979
    .line 1980
    move-result-object p1

    .line 1981
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1982
    .line 1983
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1984
    .line 1985
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1986
    .line 1987
    .line 1988
    move-result-object p4

    .line 1989
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 1990
    .line 1991
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1992
    .line 1993
    .line 1994
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCredentialStoragePluginConfiguration(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Landroid/os/Bundle;

    .line 1995
    .line 1996
    .line 1997
    move-result-object p0

    .line 1998
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1999
    .line 2000
    .line 2001
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2002
    .line 2003
    .line 2004
    goto :goto_0

    .line 2005
    :pswitch_3c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2006
    .line 2007
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2008
    .line 2009
    .line 2010
    move-result-object p1

    .line 2011
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2012
    .line 2013
    sget-object p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2014
    .line 2015
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2016
    .line 2017
    .line 2018
    move-result-object p4

    .line 2019
    check-cast p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 2020
    .line 2021
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2022
    .line 2023
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2024
    .line 2025
    .line 2026
    move-result-object v0

    .line 2027
    check-cast v0, Landroid/os/Bundle;

    .line 2028
    .line 2029
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2030
    .line 2031
    .line 2032
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->configureCredentialStoragePlugin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    .line 2033
    .line 2034
    .line 2035
    move-result p0

    .line 2036
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2037
    .line 2038
    .line 2039
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2040
    .line 2041
    .line 2042
    goto :goto_0

    .line 2043
    :pswitch_3d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2044
    .line 2045
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2046
    .line 2047
    .line 2048
    move-result-object p1

    .line 2049
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2050
    .line 2051
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2052
    .line 2053
    .line 2054
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 2055
    .line 2056
    .line 2057
    move-result-object p0

    .line 2058
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2059
    .line 2060
    .line 2061
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2062
    .line 2063
    .line 2064
    :goto_0
    return v1

    .line 2065
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2066
    .line 2067
    .line 2068
    return v1

    .line 2069
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
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
