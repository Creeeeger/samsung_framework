.class public abstract Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/knox/container/IKnoxContainerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/container/IKnoxContainerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_addConfigurationType:I = 0xa

.field public static final TRANSACTION_addHomeShortcutToPersonal:I = 0x32

.field public static final TRANSACTION_addNetworkSSID:I = 0x2b

.field public static final TRANSACTION_addPackageToExternalStorageBlackList:I = 0x47

.field public static final TRANSACTION_addPackageToExternalStorageWhiteList:I = 0x48

.field public static final TRANSACTION_addPackageToInstallWhiteList:I = 0x41

.field public static final TRANSACTION_addSecureKeyPad:I = 0x3e

.field public static final TRANSACTION_allowLayoutSwitching:I = 0x4e

.field public static final TRANSACTION_cancelCreateContainer:I = 0x3

.field public static final TRANSACTION_checkProvisioningPreCondition:I = 0x3a

.field public static final TRANSACTION_clearNetworkSSID:I = 0x2e

.field public static final TRANSACTION_clearPackagesFromExternalStorageBlackList:I = 0x44

.field public static final TRANSACTION_clearPackagesFromExternalStorageWhiteList:I = 0x4c

.field public static final TRANSACTION_createContainer:I = 0x1

.field public static final TRANSACTION_createContainerInternal:I = 0x2

.field public static final TRANSACTION_createContainerMarkSuccess:I = 0x4

.field public static final TRANSACTION_createContainerWithCallback:I = 0x15

.field public static final TRANSACTION_deleteHomeShortcutFromPersonal:I = 0x33

.field public static final TRANSACTION_doSelfUninstall:I = 0x2a

.field public static final TRANSACTION_enableBluetooth:I = 0x1f

.field public static final TRANSACTION_enableExternalStorage:I = 0x28

.field public static final TRANSACTION_enableNFC:I = 0x22

.field public static final TRANSACTION_enableUsbAccess:I = 0x24

.field public static final TRANSACTION_enforceMultifactorAuthentication:I = 0x18

.field public static final TRANSACTION_forceResetPassword:I = 0x17

.field public static final TRANSACTION_getAppSeparationConfig:I = 0x51

.field public static final TRANSACTION_getConfigurationType:I = 0xb

.field public static final TRANSACTION_getConfigurationTypeByName:I = 0x8

.field public static final TRANSACTION_getConfigurationTypes:I = 0x9

.field public static final TRANSACTION_getContainerCreationParams:I = 0x12

.field public static final TRANSACTION_getContainers:I = 0x7

.field public static final TRANSACTION_getCustomResource:I = 0x39

.field public static final TRANSACTION_getDefaultConfigurationTypes:I = 0xc

.field public static final TRANSACTION_getEnforceAuthForContainer:I = 0x10

.field public static final TRANSACTION_getFIDOInfo:I = 0x38

.field public static final TRANSACTION_getHibernationTimeout:I = 0x1b

.field public static final TRANSACTION_getKnoxCustomBadgePolicy:I = 0x35

.field public static final TRANSACTION_getNetworkSSID:I = 0x2d

.field public static final TRANSACTION_getOwnContainers:I = 0x16

.field public static final TRANSACTION_getPackageSignaturesFromExternalStorageWhiteList:I = 0x4b

.field public static final TRANSACTION_getPackagesFromExternalStorageBlackList:I = 0x45

.field public static final TRANSACTION_getPackagesFromExternalStorageWhiteList:I = 0x4a

.field public static final TRANSACTION_getPackagesFromInstallWhiteList:I = 0x43

.field public static final TRANSACTION_getProvisioningState:I = 0x3c

.field public static final TRANSACTION_getSecureKeyPad:I = 0x3d

.field public static final TRANSACTION_getStatus:I = 0xd

.field public static final TRANSACTION_getStatusInternal:I = 0x4f

.field public static final TRANSACTION_isBluetoothEnabled:I = 0x20

.field public static final TRANSACTION_isBluetoothEnabledBeforeFOTA:I = 0x21

.field public static final TRANSACTION_isContactsSharingEnabled:I = 0x27

.field public static final TRANSACTION_isEmergencyModeSupported:I = 0x36

.field public static final TRANSACTION_isExternalStorageEnabled:I = 0x29

.field public static final TRANSACTION_isLayoutSwitchingAllowed:I = 0x4d

.field public static final TRANSACTION_isMultifactorAuthenticationEnforced:I = 0x19

.field public static final TRANSACTION_isNFCEnabled:I = 0x23

.field public static final TRANSACTION_isPackageAllowedToAccessExternalSdcard:I = 0x34

.field public static final TRANSACTION_isPackageInInstallWhiteList:I = 0x40

.field public static final TRANSACTION_isResetContainerOnRebootEnabled:I = 0x1e

.field public static final TRANSACTION_isSettingsOptionEnabled:I = 0x30

.field public static final TRANSACTION_isSettingsOptionEnabledInternal:I = 0x31

.field public static final TRANSACTION_isUsbAccessEnabled:I = 0x25

.field public static final TRANSACTION_lockContainer:I = 0xe

.field public static final TRANSACTION_registerBroadcastReceiverIntent:I = 0x13

.field public static final TRANSACTION_removeConfigurationType:I = 0x1a

.field public static final TRANSACTION_removeContainer:I = 0x5

.field public static final TRANSACTION_removeContainerInternal:I = 0x6

.field public static final TRANSACTION_removeNetworkSSID:I = 0x2c

.field public static final TRANSACTION_removePackageFromExternalStorageBlackList:I = 0x46

.field public static final TRANSACTION_removePackageFromExternalStorageWhiteList:I = 0x49

.field public static final TRANSACTION_removePackageFromInstallWhiteList:I = 0x42

.field public static final TRANSACTION_removeSecureKeyPad:I = 0x3f

.field public static final TRANSACTION_resetContainerOnReboot:I = 0x1d

.field public static final TRANSACTION_setAppSeparationCoexistentApps:I = 0x54

.field public static final TRANSACTION_setAppSeparationConfig:I = 0x52

.field public static final TRANSACTION_setAppSeparationWhitelistedApps:I = 0x53

.field public static final TRANSACTION_setContactsSharingEnabled:I = 0x26

.field public static final TRANSACTION_setCustomResource:I = 0x50

.field public static final TRANSACTION_setEnforceAuthForContainer:I = 0x11

.field public static final TRANSACTION_setFIDOInfo:I = 0x37

.field public static final TRANSACTION_setHibernationTimeout:I = 0x1c

.field public static final TRANSACTION_setSettingsOptionEnabled:I = 0x2f

.field public static final TRANSACTION_unlockContainer:I = 0xf

.field public static final TRANSACTION_unregisterBroadcastReceiverIntent:I = 0x14

.field public static final TRANSACTION_updateProvisioningState:I = 0x3b


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.samsung.android.knox.container.IKnoxContainerManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;
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
    const-string v0, "com.samsung.android.knox.container.IKnoxContainerManager"

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
    instance-of v1, v0, Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/android/knox/container/IKnoxContainerManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4

    .line 1
    const-string v0, "com.samsung.android.knox.container.IKnoxContainerManager"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 40
    .line 41
    .line 42
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setAppSeparationCoexistentApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :pswitch_1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 67
    .line 68
    .line 69
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setAppSeparationWhitelistedApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :pswitch_2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 82
    .line 83
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 88
    .line 89
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 90
    .line 91
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    check-cast p4, Landroid/os/Bundle;

    .line 96
    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    .line 99
    .line 100
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setAppSeparationConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :pswitch_3
    invoke-interface {p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    sget-object p4, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 129
    .line 130
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p4

    .line 134
    check-cast p4, Lcom/samsung/android/knox/ContextInfo;

    .line 135
    .line 136
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 137
    .line 138
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Landroid/os/Bundle;

    .line 143
    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    .line 146
    .line 147
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setCustomResource(ILcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I

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
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    .line 165
    .line 166
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getStatusInternal(I)I

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :pswitch_6
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 179
    .line 180
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 185
    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 187
    .line 188
    .line 189
    move-result p4

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    .line 192
    .line 193
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->allowLayoutSwitching(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :pswitch_7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 206
    .line 207
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 212
    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    .line 215
    .line 216
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isLayoutSwitchingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :pswitch_8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 229
    .line 230
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 235
    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    .line 238
    .line 239
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->clearPackagesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;)I

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :pswitch_9
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 252
    .line 253
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 258
    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p4

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    .line 265
    .line 266
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackageSignaturesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Landroid/content/pm/Signature;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :pswitch_a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 279
    .line 280
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 285
    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    .line 288
    .line 289
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackagesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :pswitch_b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 302
    .line 303
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 308
    .line 309
    sget-object p4, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 310
    .line 311
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object p4

    .line 315
    check-cast p4, Lcom/samsung/android/knox/AppIdentity;

    .line 316
    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    .line 319
    .line 320
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removePackageFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 321
    .line 322
    .line 323
    move-result p0

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_0

    .line 331
    .line 332
    :pswitch_c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 333
    .line 334
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 339
    .line 340
    sget-object p4, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 341
    .line 342
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object p4

    .line 346
    check-cast p4, Lcom/samsung/android/knox/AppIdentity;

    .line 347
    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    .line 350
    .line 351
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addPackageToExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 352
    .line 353
    .line 354
    move-result p0

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_0

    .line 362
    .line 363
    :pswitch_d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 364
    .line 365
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 370
    .line 371
    sget-object p4, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 372
    .line 373
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object p4

    .line 377
    check-cast p4, Lcom/samsung/android/knox/AppIdentity;

    .line 378
    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    .line 381
    .line 382
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addPackageToExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 383
    .line 384
    .line 385
    move-result p0

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_0

    .line 393
    .line 394
    :pswitch_e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 395
    .line 396
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 401
    .line 402
    sget-object p4, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 403
    .line 404
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object p4

    .line 408
    check-cast p4, Lcom/samsung/android/knox/AppIdentity;

    .line 409
    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    .line 412
    .line 413
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removePackageFromExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 414
    .line 415
    .line 416
    move-result p0

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    .line 422
    .line 423
    goto/16 :goto_0

    .line 424
    .line 425
    :pswitch_f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 426
    .line 427
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 432
    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    .line 435
    .line 436
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackagesFromExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 437
    .line 438
    .line 439
    move-result-object p0

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 444
    .line 445
    .line 446
    goto/16 :goto_0

    .line 447
    .line 448
    :pswitch_10
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 449
    .line 450
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 455
    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    .line 458
    .line 459
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->clearPackagesFromExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;)I

    .line 460
    .line 461
    .line 462
    move-result p0

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    .line 468
    .line 469
    goto/16 :goto_0

    .line 470
    .line 471
    :pswitch_11
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 472
    .line 473
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 478
    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    .line 481
    .line 482
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 483
    .line 484
    .line 485
    move-result-object p0

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 490
    .line 491
    .line 492
    goto/16 :goto_0

    .line 493
    .line 494
    :pswitch_12
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 495
    .line 496
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 501
    .line 502
    sget-object p4, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 503
    .line 504
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object p4

    .line 508
    check-cast p4, Lcom/samsung/android/knox/AppIdentity;

    .line 509
    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    .line 512
    .line 513
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removePackageFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 514
    .line 515
    .line 516
    move-result p0

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    .line 519
    .line 520
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    .line 522
    .line 523
    goto/16 :goto_0

    .line 524
    .line 525
    :pswitch_13
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 526
    .line 527
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object p1

    .line 531
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 532
    .line 533
    sget-object p4, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 534
    .line 535
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object p4

    .line 539
    check-cast p4, Lcom/samsung/android/knox/AppIdentity;

    .line 540
    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    .line 543
    .line 544
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addPackageToInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 545
    .line 546
    .line 547
    move-result p0

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    .line 550
    .line 551
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    .line 553
    .line 554
    goto/16 :goto_0

    .line 555
    .line 556
    :pswitch_14
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 557
    .line 558
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object p1

    .line 562
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 563
    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object p4

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    .line 570
    .line 571
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isPackageInInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 572
    .line 573
    .line 574
    move-result p0

    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    .line 577
    .line 578
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 579
    .line 580
    .line 581
    goto/16 :goto_0

    .line 582
    .line 583
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 584
    .line 585
    .line 586
    move-result p1

    .line 587
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object p4

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    .line 593
    .line 594
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removeSecureKeyPad(ILjava/lang/String;)Z

    .line 595
    .line 596
    .line 597
    move-result p0

    .line 598
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    .line 600
    .line 601
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 602
    .line 603
    .line 604
    goto/16 :goto_0

    .line 605
    .line 606
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 607
    .line 608
    .line 609
    move-result p1

    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object p4

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    .line 616
    .line 617
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addSecureKeyPad(ILjava/lang/String;)Z

    .line 618
    .line 619
    .line 620
    move-result p0

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    .line 623
    .line 624
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 625
    .line 626
    .line 627
    goto/16 :goto_0

    .line 628
    .line 629
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 630
    .line 631
    .line 632
    move-result p1

    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    .line 635
    .line 636
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getSecureKeyPad(I)Ljava/util/List;

    .line 637
    .line 638
    .line 639
    move-result-object p0

    .line 640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    .line 642
    .line 643
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_0

    .line 647
    .line 648
    :pswitch_18
    invoke-interface {p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getProvisioningState()Landroid/os/Bundle;

    .line 649
    .line 650
    .line 651
    move-result-object p0

    .line 652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    .line 654
    .line 655
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 656
    .line 657
    .line 658
    goto/16 :goto_0

    .line 659
    .line 660
    :pswitch_19
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 661
    .line 662
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object p1

    .line 666
    check-cast p1, Landroid/os/Bundle;

    .line 667
    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    .line 670
    .line 671
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->updateProvisioningState(Landroid/os/Bundle;)Z

    .line 672
    .line 673
    .line 674
    move-result p0

    .line 675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    .line 677
    .line 678
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 679
    .line 680
    .line 681
    goto/16 :goto_0

    .line 682
    .line 683
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object p1

    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 688
    .line 689
    .line 690
    move-result p4

    .line 691
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    .line 693
    .line 694
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->checkProvisioningPreCondition(Ljava/lang/String;I)I

    .line 695
    .line 696
    .line 697
    move-result p0

    .line 698
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    .line 700
    .line 701
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    .line 703
    .line 704
    goto/16 :goto_0

    .line 705
    .line 706
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 707
    .line 708
    .line 709
    move-result p1

    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object p4

    .line 714
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 715
    .line 716
    .line 717
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object p0

    .line 721
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    .line 723
    .line 724
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    goto/16 :goto_0

    .line 728
    .line 729
    :pswitch_1c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 730
    .line 731
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object p1

    .line 735
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 736
    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    .line 739
    .line 740
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getFIDOInfo(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    .line 741
    .line 742
    .line 743
    move-result-object p0

    .line 744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    .line 746
    .line 747
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 748
    .line 749
    .line 750
    goto/16 :goto_0

    .line 751
    .line 752
    :pswitch_1d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 753
    .line 754
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object p1

    .line 758
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 759
    .line 760
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 761
    .line 762
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object p4

    .line 766
    check-cast p4, Landroid/os/Bundle;

    .line 767
    .line 768
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    .line 770
    .line 771
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setFIDOInfo(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z

    .line 772
    .line 773
    .line 774
    move-result p0

    .line 775
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    .line 777
    .line 778
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 779
    .line 780
    .line 781
    goto/16 :goto_0

    .line 782
    .line 783
    :pswitch_1e
    invoke-interface {p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isEmergencyModeSupported()Z

    .line 784
    .line 785
    .line 786
    move-result p0

    .line 787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    .line 789
    .line 790
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 791
    .line 792
    .line 793
    goto/16 :goto_0

    .line 794
    .line 795
    :pswitch_1f
    invoke-interface {p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getKnoxCustomBadgePolicy()Ljava/util/List;

    .line 796
    .line 797
    .line 798
    move-result-object p0

    .line 799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    .line 801
    .line 802
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 803
    .line 804
    .line 805
    goto/16 :goto_0

    .line 806
    .line 807
    :pswitch_20
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 808
    .line 809
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object p1

    .line 813
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 814
    .line 815
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 816
    .line 817
    .line 818
    move-result p4

    .line 819
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 820
    .line 821
    .line 822
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isPackageAllowedToAccessExternalSdcard(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 823
    .line 824
    .line 825
    move-result p0

    .line 826
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    .line 828
    .line 829
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 830
    .line 831
    .line 832
    goto/16 :goto_0

    .line 833
    .line 834
    :pswitch_21
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 835
    .line 836
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object p1

    .line 840
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 841
    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object p4

    .line 846
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    .line 852
    .line 853
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->deleteHomeShortcutFromPersonal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 854
    .line 855
    .line 856
    move-result p0

    .line 857
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    .line 859
    .line 860
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 861
    .line 862
    .line 863
    goto/16 :goto_0

    .line 864
    .line 865
    :pswitch_22
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object p4

    .line 877
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    .line 883
    .line 884
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addHomeShortcutToPersonal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 885
    .line 886
    .line 887
    move-result p0

    .line 888
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    .line 890
    .line 891
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 892
    .line 893
    .line 894
    goto/16 :goto_0

    .line 895
    .line 896
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 897
    .line 898
    .line 899
    move-result p1

    .line 900
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object p4

    .line 904
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 905
    .line 906
    .line 907
    move-result v0

    .line 908
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 909
    .line 910
    .line 911
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isSettingsOptionEnabledInternal(ILjava/lang/String;Z)Z

    .line 912
    .line 913
    .line 914
    move-result p0

    .line 915
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    .line 917
    .line 918
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 919
    .line 920
    .line 921
    goto/16 :goto_0

    .line 922
    .line 923
    :pswitch_24
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 924
    .line 925
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object p1

    .line 929
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 930
    .line 931
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object p4

    .line 935
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 936
    .line 937
    .line 938
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isSettingsOptionEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 939
    .line 940
    .line 941
    move-result p0

    .line 942
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    .line 944
    .line 945
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 946
    .line 947
    .line 948
    goto/16 :goto_0

    .line 949
    .line 950
    :pswitch_25
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 951
    .line 952
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 953
    .line 954
    .line 955
    move-result-object p1

    .line 956
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 957
    .line 958
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object p4

    .line 962
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 963
    .line 964
    .line 965
    move-result v0

    .line 966
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 967
    .line 968
    .line 969
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setSettingsOptionEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 970
    .line 971
    .line 972
    move-result p0

    .line 973
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    .line 975
    .line 976
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 977
    .line 978
    .line 979
    goto/16 :goto_0

    .line 980
    .line 981
    :pswitch_26
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 982
    .line 983
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    move-result-object p1

    .line 987
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 988
    .line 989
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    .line 991
    .line 992
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->clearNetworkSSID(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 993
    .line 994
    .line 995
    move-result p0

    .line 996
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    .line 998
    .line 999
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1000
    .line 1001
    .line 1002
    goto/16 :goto_0

    .line 1003
    .line 1004
    :pswitch_27
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1005
    .line 1006
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object p1

    .line 1010
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1011
    .line 1012
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    .line 1014
    .line 1015
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getNetworkSSID(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 1016
    .line 1017
    .line 1018
    move-result-object p0

    .line 1019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1023
    .line 1024
    .line 1025
    goto/16 :goto_0

    .line 1026
    .line 1027
    :pswitch_28
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1028
    .line 1029
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-result-object p1

    .line 1033
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1034
    .line 1035
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object p4

    .line 1039
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1040
    .line 1041
    .line 1042
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removeNetworkSSID(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 1043
    .line 1044
    .line 1045
    move-result p0

    .line 1046
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1050
    .line 1051
    .line 1052
    goto/16 :goto_0

    .line 1053
    .line 1054
    :pswitch_29
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1055
    .line 1056
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1057
    .line 1058
    .line 1059
    move-result-object p1

    .line 1060
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1061
    .line 1062
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1063
    .line 1064
    .line 1065
    move-result-object p4

    .line 1066
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1067
    .line 1068
    .line 1069
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addNetworkSSID(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 1070
    .line 1071
    .line 1072
    move-result p0

    .line 1073
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1077
    .line 1078
    .line 1079
    goto/16 :goto_0

    .line 1080
    .line 1081
    :pswitch_2a
    invoke-interface {p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->doSelfUninstall()V

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    .line 1086
    .line 1087
    goto/16 :goto_0

    .line 1088
    .line 1089
    :pswitch_2b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1090
    .line 1091
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    move-result-object p1

    .line 1095
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1096
    .line 1097
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    .line 1099
    .line 1100
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isExternalStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1101
    .line 1102
    .line 1103
    move-result p0

    .line 1104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1108
    .line 1109
    .line 1110
    goto/16 :goto_0

    .line 1111
    .line 1112
    :pswitch_2c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1113
    .line 1114
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1115
    .line 1116
    .line 1117
    move-result-object p1

    .line 1118
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1119
    .line 1120
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1121
    .line 1122
    .line 1123
    move-result p4

    .line 1124
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1125
    .line 1126
    .line 1127
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enableExternalStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1128
    .line 1129
    .line 1130
    move-result p0

    .line 1131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1135
    .line 1136
    .line 1137
    goto/16 :goto_0

    .line 1138
    .line 1139
    :pswitch_2d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1140
    .line 1141
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1142
    .line 1143
    .line 1144
    move-result-object p1

    .line 1145
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1146
    .line 1147
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1148
    .line 1149
    .line 1150
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isContactsSharingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1151
    .line 1152
    .line 1153
    move-result p0

    .line 1154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1158
    .line 1159
    .line 1160
    goto/16 :goto_0

    .line 1161
    .line 1162
    :pswitch_2e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1163
    .line 1164
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1165
    .line 1166
    .line 1167
    move-result-object p1

    .line 1168
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1169
    .line 1170
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1171
    .line 1172
    .line 1173
    move-result p4

    .line 1174
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1175
    .line 1176
    .line 1177
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setContactsSharingEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1178
    .line 1179
    .line 1180
    move-result p0

    .line 1181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1185
    .line 1186
    .line 1187
    goto/16 :goto_0

    .line 1188
    .line 1189
    :pswitch_2f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1190
    .line 1191
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1192
    .line 1193
    .line 1194
    move-result-object p1

    .line 1195
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1196
    .line 1197
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1198
    .line 1199
    .line 1200
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isUsbAccessEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1201
    .line 1202
    .line 1203
    move-result p0

    .line 1204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1208
    .line 1209
    .line 1210
    goto/16 :goto_0

    .line 1211
    .line 1212
    :pswitch_30
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1213
    .line 1214
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1215
    .line 1216
    .line 1217
    move-result-object p1

    .line 1218
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1219
    .line 1220
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1221
    .line 1222
    .line 1223
    move-result p4

    .line 1224
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1225
    .line 1226
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v0

    .line 1230
    check-cast v0, Landroid/os/Bundle;

    .line 1231
    .line 1232
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1233
    .line 1234
    .line 1235
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enableUsbAccess(Lcom/samsung/android/knox/ContextInfo;ZLandroid/os/Bundle;)Z

    .line 1236
    .line 1237
    .line 1238
    move-result p0

    .line 1239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1243
    .line 1244
    .line 1245
    goto/16 :goto_0

    .line 1246
    .line 1247
    :pswitch_31
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1248
    .line 1249
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1250
    .line 1251
    .line 1252
    move-result-object p1

    .line 1253
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1254
    .line 1255
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1256
    .line 1257
    .line 1258
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isNFCEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1259
    .line 1260
    .line 1261
    move-result p0

    .line 1262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1266
    .line 1267
    .line 1268
    goto/16 :goto_0

    .line 1269
    .line 1270
    :pswitch_32
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1271
    .line 1272
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1273
    .line 1274
    .line 1275
    move-result-object p1

    .line 1276
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1277
    .line 1278
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1279
    .line 1280
    .line 1281
    move-result p4

    .line 1282
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1283
    .line 1284
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v0

    .line 1288
    check-cast v0, Landroid/os/Bundle;

    .line 1289
    .line 1290
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1291
    .line 1292
    .line 1293
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enableNFC(Lcom/samsung/android/knox/ContextInfo;ZLandroid/os/Bundle;)Z

    .line 1294
    .line 1295
    .line 1296
    move-result p0

    .line 1297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1298
    .line 1299
    .line 1300
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1301
    .line 1302
    .line 1303
    goto/16 :goto_0

    .line 1304
    .line 1305
    :pswitch_33
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1306
    .line 1307
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1308
    .line 1309
    .line 1310
    move-result-object p1

    .line 1311
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1312
    .line 1313
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1314
    .line 1315
    .line 1316
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isBluetoothEnabledBeforeFOTA(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1317
    .line 1318
    .line 1319
    move-result p0

    .line 1320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1324
    .line 1325
    .line 1326
    goto/16 :goto_0

    .line 1327
    .line 1328
    :pswitch_34
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1329
    .line 1330
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1331
    .line 1332
    .line 1333
    move-result-object p1

    .line 1334
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1335
    .line 1336
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1337
    .line 1338
    .line 1339
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1340
    .line 1341
    .line 1342
    move-result p0

    .line 1343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1347
    .line 1348
    .line 1349
    goto/16 :goto_0

    .line 1350
    .line 1351
    :pswitch_35
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1352
    .line 1353
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1354
    .line 1355
    .line 1356
    move-result-object p1

    .line 1357
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1358
    .line 1359
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1360
    .line 1361
    .line 1362
    move-result p4

    .line 1363
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1364
    .line 1365
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v0

    .line 1369
    check-cast v0, Landroid/os/Bundle;

    .line 1370
    .line 1371
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1372
    .line 1373
    .line 1374
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enableBluetooth(Lcom/samsung/android/knox/ContextInfo;ZLandroid/os/Bundle;)Z

    .line 1375
    .line 1376
    .line 1377
    move-result p0

    .line 1378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1379
    .line 1380
    .line 1381
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1382
    .line 1383
    .line 1384
    goto/16 :goto_0

    .line 1385
    .line 1386
    :pswitch_36
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1387
    .line 1388
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1389
    .line 1390
    .line 1391
    move-result-object p1

    .line 1392
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1393
    .line 1394
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1395
    .line 1396
    .line 1397
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isResetContainerOnRebootEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1398
    .line 1399
    .line 1400
    move-result p0

    .line 1401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    .line 1403
    .line 1404
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1405
    .line 1406
    .line 1407
    goto/16 :goto_0

    .line 1408
    .line 1409
    :pswitch_37
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1410
    .line 1411
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1412
    .line 1413
    .line 1414
    move-result-object p1

    .line 1415
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1416
    .line 1417
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1418
    .line 1419
    .line 1420
    move-result p4

    .line 1421
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1422
    .line 1423
    .line 1424
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->resetContainerOnReboot(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1425
    .line 1426
    .line 1427
    move-result p0

    .line 1428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1429
    .line 1430
    .line 1431
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1432
    .line 1433
    .line 1434
    goto/16 :goto_0

    .line 1435
    .line 1436
    :pswitch_38
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1437
    .line 1438
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1439
    .line 1440
    .line 1441
    move-result-object p1

    .line 1442
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1443
    .line 1444
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1445
    .line 1446
    .line 1447
    move-result-wide v2

    .line 1448
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1449
    .line 1450
    .line 1451
    invoke-interface {p0, p1, v2, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setHibernationTimeout(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 1452
    .line 1453
    .line 1454
    move-result p0

    .line 1455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1456
    .line 1457
    .line 1458
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1459
    .line 1460
    .line 1461
    goto/16 :goto_0

    .line 1462
    .line 1463
    :pswitch_39
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1464
    .line 1465
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1466
    .line 1467
    .line 1468
    move-result-object p1

    .line 1469
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1470
    .line 1471
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1472
    .line 1473
    .line 1474
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getHibernationTimeout(Lcom/samsung/android/knox/ContextInfo;)J

    .line 1475
    .line 1476
    .line 1477
    move-result-wide p0

    .line 1478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1479
    .line 1480
    .line 1481
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1482
    .line 1483
    .line 1484
    goto/16 :goto_0

    .line 1485
    .line 1486
    :pswitch_3a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1487
    .line 1488
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1489
    .line 1490
    .line 1491
    move-result-object p1

    .line 1492
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1493
    .line 1494
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1495
    .line 1496
    .line 1497
    move-result-object p4

    .line 1498
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1499
    .line 1500
    .line 1501
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removeConfigurationType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 1502
    .line 1503
    .line 1504
    move-result p0

    .line 1505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1506
    .line 1507
    .line 1508
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1509
    .line 1510
    .line 1511
    goto/16 :goto_0

    .line 1512
    .line 1513
    :pswitch_3b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1514
    .line 1515
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1516
    .line 1517
    .line 1518
    move-result-object p1

    .line 1519
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1520
    .line 1521
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1522
    .line 1523
    .line 1524
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isMultifactorAuthenticationEnforced(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1525
    .line 1526
    .line 1527
    move-result p0

    .line 1528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1529
    .line 1530
    .line 1531
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1532
    .line 1533
    .line 1534
    goto/16 :goto_0

    .line 1535
    .line 1536
    :pswitch_3c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1537
    .line 1538
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1539
    .line 1540
    .line 1541
    move-result-object p1

    .line 1542
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1543
    .line 1544
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1545
    .line 1546
    .line 1547
    move-result p4

    .line 1548
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1549
    .line 1550
    .line 1551
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enforceMultifactorAuthentication(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1552
    .line 1553
    .line 1554
    move-result p0

    .line 1555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1556
    .line 1557
    .line 1558
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1559
    .line 1560
    .line 1561
    goto/16 :goto_0

    .line 1562
    .line 1563
    :pswitch_3d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1564
    .line 1565
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1566
    .line 1567
    .line 1568
    move-result-object p1

    .line 1569
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1570
    .line 1571
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1572
    .line 1573
    .line 1574
    move-result-object p4

    .line 1575
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1576
    .line 1577
    .line 1578
    move-result v0

    .line 1579
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1580
    .line 1581
    .line 1582
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->forceResetPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I

    .line 1583
    .line 1584
    .line 1585
    move-result p0

    .line 1586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1587
    .line 1588
    .line 1589
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1590
    .line 1591
    .line 1592
    goto/16 :goto_0

    .line 1593
    .line 1594
    :pswitch_3e
    invoke-interface {p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getOwnContainers()[Lcom/samsung/android/knox/container/EnterpriseContainerObject;

    .line 1595
    .line 1596
    .line 1597
    move-result-object p0

    .line 1598
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    .line 1600
    .line 1601
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1602
    .line 1603
    .line 1604
    goto/16 :goto_0

    .line 1605
    .line 1606
    :pswitch_3f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1607
    .line 1608
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1609
    .line 1610
    .line 1611
    move-result-object p1

    .line 1612
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1613
    .line 1614
    sget-object p4, Lcom/samsung/android/knox/container/CreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1615
    .line 1616
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1617
    .line 1618
    .line 1619
    move-result-object p4

    .line 1620
    check-cast p4, Lcom/samsung/android/knox/container/CreationParams;

    .line 1621
    .line 1622
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1623
    .line 1624
    .line 1625
    move-result v0

    .line 1626
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v2

    .line 1630
    invoke-static {v2}, Lcom/samsung/android/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseContainerCallback;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v2

    .line 1634
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1635
    .line 1636
    .line 1637
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainerWithCallback(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;ILcom/samsung/android/knox/IEnterpriseContainerCallback;)I

    .line 1638
    .line 1639
    .line 1640
    move-result p0

    .line 1641
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    .line 1643
    .line 1644
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1645
    .line 1646
    .line 1647
    goto/16 :goto_0

    .line 1648
    .line 1649
    :pswitch_40
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1650
    .line 1651
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1652
    .line 1653
    .line 1654
    move-result-object p1

    .line 1655
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1656
    .line 1657
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1658
    .line 1659
    .line 1660
    move-result-object p4

    .line 1661
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v0

    .line 1665
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1666
    .line 1667
    .line 1668
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->unregisterBroadcastReceiverIntent(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1669
    .line 1670
    .line 1671
    move-result p0

    .line 1672
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1673
    .line 1674
    .line 1675
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1676
    .line 1677
    .line 1678
    goto/16 :goto_0

    .line 1679
    .line 1680
    :pswitch_41
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1681
    .line 1682
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1683
    .line 1684
    .line 1685
    move-result-object p1

    .line 1686
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1687
    .line 1688
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1689
    .line 1690
    .line 1691
    move-result-object p4

    .line 1692
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v0

    .line 1696
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1697
    .line 1698
    .line 1699
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->registerBroadcastReceiverIntent(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1700
    .line 1701
    .line 1702
    move-result p0

    .line 1703
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1704
    .line 1705
    .line 1706
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1707
    .line 1708
    .line 1709
    goto/16 :goto_0

    .line 1710
    .line 1711
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1712
    .line 1713
    .line 1714
    move-result p1

    .line 1715
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1716
    .line 1717
    .line 1718
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getContainerCreationParams(I)Lcom/samsung/android/knox/container/ContainerCreationParams;

    .line 1719
    .line 1720
    .line 1721
    move-result-object p0

    .line 1722
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1723
    .line 1724
    .line 1725
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1726
    .line 1727
    .line 1728
    goto/16 :goto_0

    .line 1729
    .line 1730
    :pswitch_43
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1731
    .line 1732
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1733
    .line 1734
    .line 1735
    move-result-object p1

    .line 1736
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1737
    .line 1738
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1739
    .line 1740
    .line 1741
    move-result p4

    .line 1742
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1743
    .line 1744
    .line 1745
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setEnforceAuthForContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1746
    .line 1747
    .line 1748
    move-result p0

    .line 1749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1750
    .line 1751
    .line 1752
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1753
    .line 1754
    .line 1755
    goto/16 :goto_0

    .line 1756
    .line 1757
    :pswitch_44
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1758
    .line 1759
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1760
    .line 1761
    .line 1762
    move-result-object p1

    .line 1763
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1764
    .line 1765
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1766
    .line 1767
    .line 1768
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getEnforceAuthForContainer(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1769
    .line 1770
    .line 1771
    move-result p0

    .line 1772
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1773
    .line 1774
    .line 1775
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1776
    .line 1777
    .line 1778
    goto/16 :goto_0

    .line 1779
    .line 1780
    :pswitch_45
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1781
    .line 1782
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1783
    .line 1784
    .line 1785
    move-result-object p1

    .line 1786
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1787
    .line 1788
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1789
    .line 1790
    .line 1791
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->unlockContainer(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1792
    .line 1793
    .line 1794
    move-result p0

    .line 1795
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1796
    .line 1797
    .line 1798
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1799
    .line 1800
    .line 1801
    goto/16 :goto_0

    .line 1802
    .line 1803
    :pswitch_46
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1804
    .line 1805
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1806
    .line 1807
    .line 1808
    move-result-object p1

    .line 1809
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1810
    .line 1811
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1812
    .line 1813
    .line 1814
    move-result-object p4

    .line 1815
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1816
    .line 1817
    .line 1818
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->lockContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 1819
    .line 1820
    .line 1821
    move-result p0

    .line 1822
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1823
    .line 1824
    .line 1825
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1826
    .line 1827
    .line 1828
    goto/16 :goto_0

    .line 1829
    .line 1830
    :pswitch_47
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1831
    .line 1832
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1833
    .line 1834
    .line 1835
    move-result-object p1

    .line 1836
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1837
    .line 1838
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1839
    .line 1840
    .line 1841
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getStatus(Lcom/samsung/android/knox/ContextInfo;)I

    .line 1842
    .line 1843
    .line 1844
    move-result p0

    .line 1845
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1846
    .line 1847
    .line 1848
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1849
    .line 1850
    .line 1851
    goto/16 :goto_0

    .line 1852
    .line 1853
    :pswitch_48
    invoke-interface {p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getDefaultConfigurationTypes()Ljava/util/List;

    .line 1854
    .line 1855
    .line 1856
    move-result-object p0

    .line 1857
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1858
    .line 1859
    .line 1860
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1861
    .line 1862
    .line 1863
    goto/16 :goto_0

    .line 1864
    .line 1865
    :pswitch_49
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1866
    .line 1867
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1868
    .line 1869
    .line 1870
    move-result-object p1

    .line 1871
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1872
    .line 1873
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1874
    .line 1875
    .line 1876
    move-result p4

    .line 1877
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1878
    .line 1879
    .line 1880
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getConfigurationType(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    .line 1881
    .line 1882
    .line 1883
    move-result-object p0

    .line 1884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1885
    .line 1886
    .line 1887
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1888
    .line 1889
    .line 1890
    goto/16 :goto_0

    .line 1891
    .line 1892
    :pswitch_4a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1893
    .line 1894
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1895
    .line 1896
    .line 1897
    move-result-object p1

    .line 1898
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1899
    .line 1900
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1901
    .line 1902
    .line 1903
    move-result-object p4

    .line 1904
    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1905
    .line 1906
    .line 1907
    move-result-object p4

    .line 1908
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 1909
    .line 1910
    .line 1911
    move-result-object p4

    .line 1912
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1913
    .line 1914
    .line 1915
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addConfigurationType(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 1916
    .line 1917
    .line 1918
    move-result p0

    .line 1919
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1920
    .line 1921
    .line 1922
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1923
    .line 1924
    .line 1925
    goto/16 :goto_0

    .line 1926
    .line 1927
    :pswitch_4b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1928
    .line 1929
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1930
    .line 1931
    .line 1932
    move-result-object p1

    .line 1933
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1934
    .line 1935
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1936
    .line 1937
    .line 1938
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getConfigurationTypes(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 1939
    .line 1940
    .line 1941
    move-result-object p0

    .line 1942
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1943
    .line 1944
    .line 1945
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1946
    .line 1947
    .line 1948
    goto/16 :goto_0

    .line 1949
    .line 1950
    :pswitch_4c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1951
    .line 1952
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1953
    .line 1954
    .line 1955
    move-result-object p1

    .line 1956
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1957
    .line 1958
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1959
    .line 1960
    .line 1961
    move-result-object p4

    .line 1962
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1963
    .line 1964
    .line 1965
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getConfigurationTypeByName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    .line 1966
    .line 1967
    .line 1968
    move-result-object p0

    .line 1969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1970
    .line 1971
    .line 1972
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1973
    .line 1974
    .line 1975
    goto/16 :goto_0

    .line 1976
    .line 1977
    :pswitch_4d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1978
    .line 1979
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1980
    .line 1981
    .line 1982
    move-result-object p1

    .line 1983
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1984
    .line 1985
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1986
    .line 1987
    .line 1988
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getContainers(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 1989
    .line 1990
    .line 1991
    move-result-object p0

    .line 1992
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1993
    .line 1994
    .line 1995
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1996
    .line 1997
    .line 1998
    goto/16 :goto_0

    .line 1999
    .line 2000
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2001
    .line 2002
    .line 2003
    move-result p1

    .line 2004
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2005
    .line 2006
    .line 2007
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removeContainerInternal(I)I

    .line 2008
    .line 2009
    .line 2010
    move-result p0

    .line 2011
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2012
    .line 2013
    .line 2014
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2015
    .line 2016
    .line 2017
    goto/16 :goto_0

    .line 2018
    .line 2019
    :pswitch_4f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2020
    .line 2021
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2022
    .line 2023
    .line 2024
    move-result-object p1

    .line 2025
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2026
    .line 2027
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2028
    .line 2029
    .line 2030
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removeContainer(Lcom/samsung/android/knox/ContextInfo;)I

    .line 2031
    .line 2032
    .line 2033
    move-result p0

    .line 2034
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2035
    .line 2036
    .line 2037
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2038
    .line 2039
    .line 2040
    goto :goto_0

    .line 2041
    :pswitch_50
    sget-object p1, Lcom/samsung/android/knox/container/ContainerCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2042
    .line 2043
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2044
    .line 2045
    .line 2046
    move-result-object p1

    .line 2047
    check-cast p1, Lcom/samsung/android/knox/container/ContainerCreationParams;

    .line 2048
    .line 2049
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2050
    .line 2051
    .line 2052
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainerMarkSuccess(Lcom/samsung/android/knox/container/ContainerCreationParams;)Z

    .line 2053
    .line 2054
    .line 2055
    move-result p0

    .line 2056
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2057
    .line 2058
    .line 2059
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2060
    .line 2061
    .line 2062
    goto :goto_0

    .line 2063
    :pswitch_51
    sget-object p1, Lcom/samsung/android/knox/container/ContainerCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2064
    .line 2065
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2066
    .line 2067
    .line 2068
    move-result-object p1

    .line 2069
    check-cast p1, Lcom/samsung/android/knox/container/ContainerCreationParams;

    .line 2070
    .line 2071
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2072
    .line 2073
    .line 2074
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->cancelCreateContainer(Lcom/samsung/android/knox/container/ContainerCreationParams;)Z

    .line 2075
    .line 2076
    .line 2077
    move-result p0

    .line 2078
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2079
    .line 2080
    .line 2081
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2082
    .line 2083
    .line 2084
    goto :goto_0

    .line 2085
    :pswitch_52
    sget-object p1, Lcom/samsung/android/knox/container/ContainerCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2086
    .line 2087
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2088
    .line 2089
    .line 2090
    move-result-object p1

    .line 2091
    check-cast p1, Lcom/samsung/android/knox/container/ContainerCreationParams;

    .line 2092
    .line 2093
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2094
    .line 2095
    .line 2096
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainerInternal(Lcom/samsung/android/knox/container/ContainerCreationParams;)I

    .line 2097
    .line 2098
    .line 2099
    move-result p0

    .line 2100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2101
    .line 2102
    .line 2103
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2104
    .line 2105
    .line 2106
    goto :goto_0

    .line 2107
    :pswitch_53
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2108
    .line 2109
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2110
    .line 2111
    .line 2112
    move-result-object p1

    .line 2113
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2114
    .line 2115
    sget-object p4, Lcom/samsung/android/knox/container/CreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2116
    .line 2117
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2118
    .line 2119
    .line 2120
    move-result-object p4

    .line 2121
    check-cast p4, Lcom/samsung/android/knox/container/CreationParams;

    .line 2122
    .line 2123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2124
    .line 2125
    .line 2126
    move-result v0

    .line 2127
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2128
    .line 2129
    .line 2130
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;I)I

    .line 2131
    .line 2132
    .line 2133
    move-result p0

    .line 2134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2135
    .line 2136
    .line 2137
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2138
    .line 2139
    .line 2140
    :goto_0
    return v1

    .line 2141
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2142
    .line 2143
    .line 2144
    return v1

    .line 2145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
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
