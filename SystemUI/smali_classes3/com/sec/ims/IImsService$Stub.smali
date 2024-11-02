.class public abstract Lcom/sec/ims/IImsService$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/sec/ims/IImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IImsService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_changeAudioPath:I = 0x5e

.field static final TRANSACTION_changeAudioPathForSlot:I = 0x5f

.field static final TRANSACTION_deregisterAdhocProfile:I = 0x24

.field static final TRANSACTION_deregisterAdhocProfileByPhoneId:I = 0x25

.field static final TRANSACTION_deregisterProfile:I = 0x28

.field static final TRANSACTION_deregisterProfileByPhoneId:I = 0x29

.field static final TRANSACTION_dump:I = 0x76

.field static final TRANSACTION_enableRcs:I = 0x54

.field static final TRANSACTION_enableRcsByPhoneId:I = 0x55

.field static final TRANSACTION_enableService:I = 0x50

.field static final TRANSACTION_enableServiceByPhoneId:I = 0x51

.field static final TRANSACTION_enableVoLte:I = 0x52

.field static final TRANSACTION_enableVoLteByPhoneId:I = 0x53

.field static final TRANSACTION_finishDmConfig:I = 0x68

.field static final TRANSACTION_forcedUpdateRegistration:I = 0x2d

.field static final TRANSACTION_forcedUpdateRegistrationByPhoneId:I = 0x2e

.field static final TRANSACTION_getAvailableNetworkType:I = 0xc

.field static final TRANSACTION_getCallCount:I = 0x56

.field static final TRANSACTION_getCmcCallInfo:I = 0x62

.field static final TRANSACTION_getConfigValues:I = 0x65

.field static final TRANSACTION_getCurrentProfile:I = 0x1f

.field static final TRANSACTION_getCurrentProfileForSlot:I = 0x20

.field static final TRANSACTION_getEpsFbCallCount:I = 0x57

.field static final TRANSACTION_getGlobalSettingsValueToBoolean:I = 0x75

.field static final TRANSACTION_getGlobalSettingsValueToInteger:I = 0x74

.field static final TRANSACTION_getGlobalSettingsValueToString:I = 0x73

.field static final TRANSACTION_getLastDialogEvent:I = 0x3e

.field static final TRANSACTION_getMasterStringValue:I = 0x40

.field static final TRANSACTION_getMasterValue:I = 0x3f

.field static final TRANSACTION_getNetworkType:I = 0xb

.field static final TRANSACTION_getNrSaCallCount:I = 0x58

.field static final TRANSACTION_getPhoneCount:I = 0x3

.field static final TRANSACTION_getRcsProfileType:I = 0x21

.field static final TRANSACTION_getRegistrationInfo:I = 0x1c

.field static final TRANSACTION_getRegistrationInfoByPhoneId:I = 0x1d

.field static final TRANSACTION_getRegistrationInfoByServiceType:I = 0x1e

.field static final TRANSACTION_getRttMode:I = 0x6c

.field static final TRANSACTION_getVideocallType:I = 0x61

.field static final TRANSACTION_hasCrossSimImsService:I = 0x7e

.field static final TRANSACTION_hasVoLteSim:I = 0x4e

.field static final TRANSACTION_hasVoLteSimByPhoneId:I = 0x4f

.field static final TRANSACTION_isCmcEmergencyCallSupported:I = 0x79

.field static final TRANSACTION_isCmcEmergencyNumber:I = 0x7a

.field static final TRANSACTION_isCmcPotentialEmergencyNumber:I = 0x7b

.field static final TRANSACTION_isCrossSimCallingRegistered:I = 0x7d

.field static final TRANSACTION_isCrossSimCallingSupported:I = 0x80

.field static final TRANSACTION_isCrossSimCallingSupportedByPhoneId:I = 0x7f

.field static final TRANSACTION_isCrossSimPermanentBlocked:I = 0x82

.field static final TRANSACTION_isForbidden:I = 0x59

.field static final TRANSACTION_isForbiddenByPhoneId:I = 0x5a

.field static final TRANSACTION_isImsEnabled:I = 0x43

.field static final TRANSACTION_isImsEnabledByPhoneId:I = 0x44

.field static final TRANSACTION_isQSSSuccessAuthAndLogin:I = 0x32

.field static final TRANSACTION_isRcsEnabled:I = 0x4a

.field static final TRANSACTION_isRegistered:I = 0x1b

.field static final TRANSACTION_isRttCall:I = 0x69

.field static final TRANSACTION_isServiceAvailable:I = 0x4c

.field static final TRANSACTION_isServiceEnabled:I = 0x4b

.field static final TRANSACTION_isServiceEnabledByPhoneId:I = 0x4d

.field static final TRANSACTION_isSupportVoWiFiDisable5GSA:I = 0x7c

.field static final TRANSACTION_isVoLteEnabled:I = 0x45

.field static final TRANSACTION_isVoLteEnabledByPhoneId:I = 0x46

.field static final TRANSACTION_isVolteEnabledFromNetwork:I = 0x47

.field static final TRANSACTION_isVolteSupportECT:I = 0x48

.field static final TRANSACTION_isVolteSupportEctByPhoneId:I = 0x49

.field static final TRANSACTION_registerAdhocProfile:I = 0x22

.field static final TRANSACTION_registerAdhocProfileByPhoneId:I = 0x23

.field static final TRANSACTION_registerAutoConfigurationListener:I = 0x15

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_registerCmcRegistrationListenerForSlot:I = 0x77

.field static final TRANSACTION_registerCmsRegistrationListenerByPhoneId:I = 0x19

.field static final TRANSACTION_registerDialogEventListener:I = 0x3a

.field static final TRANSACTION_registerDialogEventListenerByToken:I = 0x3c

.field static final TRANSACTION_registerDmValueListener:I = 0x63

.field static final TRANSACTION_registerEpdgListener:I = 0x34

.field static final TRANSACTION_registerImSessionListener:I = 0xd

.field static final TRANSACTION_registerImSessionListenerByPhoneId:I = 0xe

.field static final TRANSACTION_registerImsOngoingFtListener:I = 0x11

.field static final TRANSACTION_registerImsOngoingFtListenerByPhoneId:I = 0x12

.field static final TRANSACTION_registerImsRegistrationListener:I = 0x36

.field static final TRANSACTION_registerImsRegistrationListenerForSlot:I = 0x38

.field static final TRANSACTION_registerProfile:I = 0x26

.field static final TRANSACTION_registerProfileByPhoneId:I = 0x27

.field static final TRANSACTION_registerRttEventListener:I = 0x70

.field static final TRANSACTION_registerSimMobilityStatusListenerByPhoneId:I = 0x17

.field static final TRANSACTION_sendDeregister:I = 0x2f

.field static final TRANSACTION_sendIidToken:I = 0xa

.field static final TRANSACTION_sendMsisdnNumber:I = 0x9

.field static final TRANSACTION_sendRttMessage:I = 0x6d

.field static final TRANSACTION_sendRttSessionModifyRequest:I = 0x6f

.field static final TRANSACTION_sendRttSessionModifyResponse:I = 0x6e

.field static final TRANSACTION_sendTryRegister:I = 0x2a

.field static final TRANSACTION_sendTryRegisterByPhoneId:I = 0x2c

.field static final TRANSACTION_sendTryRegisterCms:I = 0x2b

.field static final TRANSACTION_sendVerificationCode:I = 0x8

.field static final TRANSACTION_setActiveImpu:I = 0x6

.field static final TRANSACTION_setActiveMsisdn:I = 0x7

.field static final TRANSACTION_setAutomaticMode:I = 0x6a

.field static final TRANSACTION_setCrossSimPermanentBlocked:I = 0x81

.field static final TRANSACTION_setEmergencyPdnInfo:I = 0x33

.field static final TRANSACTION_setIsimLoaded:I = 0x4

.field static final TRANSACTION_setNrInterworkingMode:I = 0x83

.field static final TRANSACTION_setProvisionedStringValue:I = 0x42

.field static final TRANSACTION_setProvisionedValue:I = 0x41

.field static final TRANSACTION_setRttMode:I = 0x6b

.field static final TRANSACTION_setSimRefreshed:I = 0x5

.field static final TRANSACTION_setVideocallType:I = 0x60

.field static final TRANSACTION_startDmConfig:I = 0x67

.field static final TRANSACTION_startLocalRingBackTone:I = 0x5c

.field static final TRANSACTION_stopLocalRingBackTone:I = 0x5d

.field static final TRANSACTION_suspendRegister:I = 0x30

.field static final TRANSACTION_transferCall:I = 0x5b

.field static final TRANSACTION_triggerAutoConfigurationForApp:I = 0x72

.field static final TRANSACTION_unRegisterEpdgListener:I = 0x35

.field static final TRANSACTION_unregisterAutoConfigurationListener:I = 0x16

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_unregisterCmcRegistrationListenerForSlot:I = 0x78

.field static final TRANSACTION_unregisterCmsRegistrationListenerByPhoneId:I = 0x1a

.field static final TRANSACTION_unregisterDialogEventListener:I = 0x3b

.field static final TRANSACTION_unregisterDialogEventListenerByToken:I = 0x3d

.field static final TRANSACTION_unregisterDmValueListener:I = 0x64

.field static final TRANSACTION_unregisterImSessionListener:I = 0xf

.field static final TRANSACTION_unregisterImSessionListenerByPhoneId:I = 0x10

.field static final TRANSACTION_unregisterImsOngoingFtListener:I = 0x13

.field static final TRANSACTION_unregisterImsOngoingFtListenerByPhoneId:I = 0x14

.field static final TRANSACTION_unregisterImsRegistrationListener:I = 0x37

.field static final TRANSACTION_unregisterImsRegistrationListenerForSlot:I = 0x39

.field static final TRANSACTION_unregisterRttEventListener:I = 0x71

.field static final TRANSACTION_unregisterSimMobilityStatusListenerByPhoneId:I = 0x18

.field static final TRANSACTION_updateConfigValues:I = 0x66

.field static final TRANSACTION_updateRegistration:I = 0x31


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.sec.ims.IImsService"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsService;
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
    const-string v0, "com.sec.ims.IImsService"

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
    instance-of v1, v0, Lcom/sec/ims/IImsService;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/sec/ims/IImsService;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/sec/ims/IImsService$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/sec/ims/IImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "com.sec.ims.IImsService"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 32
    .line 33
    .line 34
    move-result p4

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->setNrInterworkingMode(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 51
    .line 52
    .line 53
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isCrossSimPermanentBlocked(I)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 70
    .line 71
    .line 72
    move-result p4

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 74
    .line 75
    .line 76
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->setCrossSimPermanentBlocked(IZ)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :pswitch_3
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->isCrossSimCallingSupported()Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    .line 102
    .line 103
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isCrossSimCallingSupportedByPhoneId(I)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    .line 121
    .line 122
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->hasCrossSimImsService(I)Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    .line 140
    .line 141
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isCrossSimCallingRegistered(I)Z

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    .line 159
    .line 160
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isSupportVoWiFiDisable5GSA(I)Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 177
    .line 178
    .line 179
    move-result p4

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    .line 182
    .line 183
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->isCmcPotentialEmergencyNumber(Ljava/lang/String;I)Z

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 200
    .line 201
    .line 202
    move-result p4

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    .line 205
    .line 206
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->isCmcEmergencyNumber(Ljava/lang/String;I)Z

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    .line 224
    .line 225
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isCmcEmergencyCallSupported(I)Z

    .line 226
    .line 227
    .line 228
    move-result p0

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 242
    .line 243
    .line 244
    move-result p4

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    .line 247
    .line 248
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterCmcRegistrationListenerForSlot(Ljava/lang/String;I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-static {p1}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 265
    .line 266
    .line 267
    move-result p4

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    .line 270
    .line 271
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :pswitch_d
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->dump()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 296
    .line 297
    .line 298
    move-result p4

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    .line 305
    .line 306
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->getGlobalSettingsValueToBoolean(Ljava/lang/String;IZ)Z

    .line 307
    .line 308
    .line 309
    move-result p0

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 323
    .line 324
    .line 325
    move-result p4

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    .line 332
    .line 333
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->getGlobalSettingsValueToInteger(Ljava/lang/String;II)I

    .line 334
    .line 335
    .line 336
    move-result p0

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    .line 342
    .line 343
    goto/16 :goto_0

    .line 344
    .line 345
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 350
    .line 351
    .line 352
    move-result p4

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    .line 359
    .line 360
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->getGlobalSettingsValueToString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_0

    .line 371
    .line 372
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 373
    .line 374
    .line 375
    move-result p1

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    .line 378
    .line 379
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->triggerAutoConfigurationForApp(I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_0

    .line 386
    .line 387
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 388
    .line 389
    .line 390
    move-result p1

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p4

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    .line 397
    .line 398
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterRttEventListener(ILjava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_0

    .line 405
    .line 406
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 407
    .line 408
    .line 409
    move-result p1

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 411
    .line 412
    .line 413
    move-result-object p4

    .line 414
    invoke-static {p4}, Lcom/sec/ims/IRttEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IRttEventListener;

    .line 415
    .line 416
    .line 417
    move-result-object p4

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    .line 420
    .line 421
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p0

    .line 425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_0

    .line 432
    .line 433
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 434
    .line 435
    .line 436
    move-result p1

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 438
    .line 439
    .line 440
    move-result p4

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    .line 443
    .line 444
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->sendRttSessionModifyRequest(IZ)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    .line 449
    .line 450
    goto/16 :goto_0

    .line 451
    .line 452
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 453
    .line 454
    .line 455
    move-result p1

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 457
    .line 458
    .line 459
    move-result p4

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    .line 462
    .line 463
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->sendRttSessionModifyResponse(IZ)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    .line 468
    .line 469
    goto/16 :goto_0

    .line 470
    .line 471
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    .line 477
    .line 478
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->sendRttMessage(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    .line 483
    .line 484
    goto/16 :goto_0

    .line 485
    .line 486
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 487
    .line 488
    .line 489
    move-result p1

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    .line 492
    .line 493
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getRttMode(I)I

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
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 506
    .line 507
    .line 508
    move-result p1

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 510
    .line 511
    .line 512
    move-result p4

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    .line 515
    .line 516
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->setRttMode(II)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    .line 521
    .line 522
    goto/16 :goto_0

    .line 523
    .line 524
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 525
    .line 526
    .line 527
    move-result p1

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 529
    .line 530
    .line 531
    move-result p4

    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    .line 534
    .line 535
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->setAutomaticMode(IZ)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    .line 540
    .line 541
    goto/16 :goto_0

    .line 542
    .line 543
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 544
    .line 545
    .line 546
    move-result p1

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    .line 549
    .line 550
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isRttCall(I)Z

    .line 551
    .line 552
    .line 553
    move-result p0

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    .line 556
    .line 557
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_0

    .line 561
    .line 562
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 563
    .line 564
    .line 565
    move-result p1

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 567
    .line 568
    .line 569
    move-result p4

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    .line 572
    .line 573
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->finishDmConfig(II)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_0

    .line 580
    .line 581
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 582
    .line 583
    .line 584
    move-result p1

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    .line 587
    .line 588
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->startDmConfig(I)I

    .line 589
    .line 590
    .line 591
    move-result p0

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    .line 594
    .line 595
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    .line 597
    .line 598
    goto/16 :goto_0

    .line 599
    .line 600
    :pswitch_1d
    sget-object p1, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 601
    .line 602
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object p1

    .line 606
    check-cast p1, Landroid/content/ContentValues;

    .line 607
    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 609
    .line 610
    .line 611
    move-result p4

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 613
    .line 614
    .line 615
    move-result v0

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    .line 618
    .line 619
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->updateConfigValues(Landroid/content/ContentValues;II)Z

    .line 620
    .line 621
    .line 622
    move-result p0

    .line 623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    .line 625
    .line 626
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 627
    .line 628
    .line 629
    goto/16 :goto_0

    .line 630
    .line 631
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object p1

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 636
    .line 637
    .line 638
    move-result p4

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    .line 641
    .line 642
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    .line 643
    .line 644
    .line 645
    move-result-object p0

    .line 646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    .line 648
    .line 649
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 650
    .line 651
    .line 652
    goto/16 :goto_0

    .line 653
    .line 654
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 655
    .line 656
    .line 657
    move-result-object p1

    .line 658
    invoke-static {p1}, Lcom/sec/ims/IImsDmConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsDmConfigListener;

    .line 659
    .line 660
    .line 661
    move-result-object p1

    .line 662
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 663
    .line 664
    .line 665
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->unregisterDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    .line 670
    .line 671
    goto/16 :goto_0

    .line 672
    .line 673
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 674
    .line 675
    .line 676
    move-result-object p1

    .line 677
    invoke-static {p1}, Lcom/sec/ims/IImsDmConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsDmConfigListener;

    .line 678
    .line 679
    .line 680
    move-result-object p1

    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    .line 683
    .line 684
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->registerDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V

    .line 685
    .line 686
    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    .line 689
    .line 690
    goto/16 :goto_0

    .line 691
    .line 692
    :pswitch_21
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;

    .line 693
    .line 694
    .line 695
    move-result-object p0

    .line 696
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    .line 698
    .line 699
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 700
    .line 701
    .line 702
    goto/16 :goto_0

    .line 703
    .line 704
    :pswitch_22
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->getVideocallType()I

    .line 705
    .line 706
    .line 707
    move-result p0

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    .line 710
    .line 711
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    .line 713
    .line 714
    goto/16 :goto_0

    .line 715
    .line 716
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 717
    .line 718
    .line 719
    move-result p1

    .line 720
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    .line 722
    .line 723
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->setVideocallType(I)Z

    .line 724
    .line 725
    .line 726
    move-result p0

    .line 727
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    .line 729
    .line 730
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 731
    .line 732
    .line 733
    goto/16 :goto_0

    .line 734
    .line 735
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 736
    .line 737
    .line 738
    move-result p1

    .line 739
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 740
    .line 741
    .line 742
    move-result p4

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    .line 745
    .line 746
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->changeAudioPathForSlot(II)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    .line 751
    .line 752
    goto/16 :goto_0

    .line 753
    .line 754
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 755
    .line 756
    .line 757
    move-result p1

    .line 758
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    .line 760
    .line 761
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->changeAudioPath(I)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    .line 766
    .line 767
    goto/16 :goto_0

    .line 768
    .line 769
    :pswitch_26
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->stopLocalRingBackTone()I

    .line 770
    .line 771
    .line 772
    move-result p0

    .line 773
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    .line 775
    .line 776
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    .line 778
    .line 779
    goto/16 :goto_0

    .line 780
    .line 781
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 782
    .line 783
    .line 784
    move-result p1

    .line 785
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 786
    .line 787
    .line 788
    move-result p4

    .line 789
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 790
    .line 791
    .line 792
    move-result v0

    .line 793
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    .line 795
    .line 796
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->startLocalRingBackTone(III)I

    .line 797
    .line 798
    .line 799
    move-result p0

    .line 800
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    .line 802
    .line 803
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    .line 805
    .line 806
    goto/16 :goto_0

    .line 807
    .line 808
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object p1

    .line 812
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object p4

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 817
    .line 818
    .line 819
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->transferCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    .line 824
    .line 825
    goto/16 :goto_0

    .line 826
    .line 827
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 828
    .line 829
    .line 830
    move-result p1

    .line 831
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    .line 833
    .line 834
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isForbiddenByPhoneId(I)Z

    .line 835
    .line 836
    .line 837
    move-result p0

    .line 838
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    .line 840
    .line 841
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 842
    .line 843
    .line 844
    goto/16 :goto_0

    .line 845
    .line 846
    :pswitch_2a
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->isForbidden()Z

    .line 847
    .line 848
    .line 849
    move-result p0

    .line 850
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    .line 852
    .line 853
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 854
    .line 855
    .line 856
    goto/16 :goto_0

    .line 857
    .line 858
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 859
    .line 860
    .line 861
    move-result p1

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 863
    .line 864
    .line 865
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getNrSaCallCount(I)I

    .line 866
    .line 867
    .line 868
    move-result p0

    .line 869
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    .line 871
    .line 872
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 873
    .line 874
    .line 875
    goto/16 :goto_0

    .line 876
    .line 877
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 878
    .line 879
    .line 880
    move-result p1

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    .line 883
    .line 884
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getEpsFbCallCount(I)I

    .line 885
    .line 886
    .line 887
    move-result p0

    .line 888
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    .line 890
    .line 891
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    .line 893
    .line 894
    goto/16 :goto_0

    .line 895
    .line 896
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 897
    .line 898
    .line 899
    move-result p1

    .line 900
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 901
    .line 902
    .line 903
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getCallCount(I)[I

    .line 904
    .line 905
    .line 906
    move-result-object p0

    .line 907
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    .line 909
    .line 910
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 911
    .line 912
    .line 913
    goto/16 :goto_0

    .line 914
    .line 915
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 916
    .line 917
    .line 918
    move-result p1

    .line 919
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 920
    .line 921
    .line 922
    move-result p4

    .line 923
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    .line 925
    .line 926
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->enableRcsByPhoneId(ZI)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    .line 931
    .line 932
    goto/16 :goto_0

    .line 933
    .line 934
    :pswitch_2f
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
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->enableRcs(Z)V

    .line 942
    .line 943
    .line 944
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    .line 946
    .line 947
    goto/16 :goto_0

    .line 948
    .line 949
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 950
    .line 951
    .line 952
    move-result p1

    .line 953
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 954
    .line 955
    .line 956
    move-result p4

    .line 957
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 958
    .line 959
    .line 960
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->enableVoLteByPhoneId(ZI)V

    .line 961
    .line 962
    .line 963
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    .line 965
    .line 966
    goto/16 :goto_0

    .line 967
    .line 968
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 969
    .line 970
    .line 971
    move-result p1

    .line 972
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    .line 974
    .line 975
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->enableVoLte(Z)V

    .line 976
    .line 977
    .line 978
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    .line 980
    .line 981
    goto/16 :goto_0

    .line 982
    .line 983
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object p1

    .line 987
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 988
    .line 989
    .line 990
    move-result p4

    .line 991
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 992
    .line 993
    .line 994
    move-result v0

    .line 995
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 996
    .line 997
    .line 998
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->enableServiceByPhoneId(Ljava/lang/String;ZI)V

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    .line 1003
    .line 1004
    goto/16 :goto_0

    .line 1005
    .line 1006
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object p1

    .line 1010
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1011
    .line 1012
    .line 1013
    move-result p4

    .line 1014
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1015
    .line 1016
    .line 1017
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->enableService(Ljava/lang/String;Z)V

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    .line 1022
    .line 1023
    goto/16 :goto_0

    .line 1024
    .line 1025
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1026
    .line 1027
    .line 1028
    move-result p1

    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1030
    .line 1031
    .line 1032
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->hasVoLteSimByPhoneId(I)Z

    .line 1033
    .line 1034
    .line 1035
    move-result p0

    .line 1036
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1040
    .line 1041
    .line 1042
    goto/16 :goto_0

    .line 1043
    .line 1044
    :pswitch_35
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->hasVoLteSim()Z

    .line 1045
    .line 1046
    .line 1047
    move-result p0

    .line 1048
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1052
    .line 1053
    .line 1054
    goto/16 :goto_0

    .line 1055
    .line 1056
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1057
    .line 1058
    .line 1059
    move-result-object p1

    .line 1060
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1061
    .line 1062
    .line 1063
    move-result p4

    .line 1064
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1065
    .line 1066
    .line 1067
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    .line 1068
    .line 1069
    .line 1070
    move-result p0

    .line 1071
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1075
    .line 1076
    .line 1077
    goto/16 :goto_0

    .line 1078
    .line 1079
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1080
    .line 1081
    .line 1082
    move-result-object p1

    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1084
    .line 1085
    .line 1086
    move-result p4

    .line 1087
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1088
    .line 1089
    .line 1090
    move-result v0

    .line 1091
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1092
    .line 1093
    .line 1094
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->isServiceAvailable(Ljava/lang/String;II)Z

    .line 1095
    .line 1096
    .line 1097
    move-result p0

    .line 1098
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1102
    .line 1103
    .line 1104
    goto/16 :goto_0

    .line 1105
    .line 1106
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1107
    .line 1108
    .line 1109
    move-result-object p1

    .line 1110
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1111
    .line 1112
    .line 1113
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isServiceEnabled(Ljava/lang/String;)Z

    .line 1114
    .line 1115
    .line 1116
    move-result p0

    .line 1117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1121
    .line 1122
    .line 1123
    goto/16 :goto_0

    .line 1124
    .line 1125
    :pswitch_39
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->isRcsEnabled()Z

    .line 1126
    .line 1127
    .line 1128
    move-result p0

    .line 1129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1133
    .line 1134
    .line 1135
    goto/16 :goto_0

    .line 1136
    .line 1137
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1138
    .line 1139
    .line 1140
    move-result p1

    .line 1141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1142
    .line 1143
    .line 1144
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isVolteSupportEctByPhoneId(I)Z

    .line 1145
    .line 1146
    .line 1147
    move-result p0

    .line 1148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1152
    .line 1153
    .line 1154
    goto/16 :goto_0

    .line 1155
    .line 1156
    :pswitch_3b
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->isVolteSupportECT()Z

    .line 1157
    .line 1158
    .line 1159
    move-result p0

    .line 1160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1164
    .line 1165
    .line 1166
    goto/16 :goto_0

    .line 1167
    .line 1168
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1169
    .line 1170
    .line 1171
    move-result p1

    .line 1172
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1173
    .line 1174
    .line 1175
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isVolteEnabledFromNetwork(I)Z

    .line 1176
    .line 1177
    .line 1178
    move-result p0

    .line 1179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1183
    .line 1184
    .line 1185
    goto/16 :goto_0

    .line 1186
    .line 1187
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1188
    .line 1189
    .line 1190
    move-result p1

    .line 1191
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1192
    .line 1193
    .line 1194
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isVoLteEnabledByPhoneId(I)Z

    .line 1195
    .line 1196
    .line 1197
    move-result p0

    .line 1198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1202
    .line 1203
    .line 1204
    goto/16 :goto_0

    .line 1205
    .line 1206
    :pswitch_3e
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->isVoLteEnabled()Z

    .line 1207
    .line 1208
    .line 1209
    move-result p0

    .line 1210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1214
    .line 1215
    .line 1216
    goto/16 :goto_0

    .line 1217
    .line 1218
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1219
    .line 1220
    .line 1221
    move-result p1

    .line 1222
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1223
    .line 1224
    .line 1225
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isImsEnabledByPhoneId(I)Z

    .line 1226
    .line 1227
    .line 1228
    move-result p0

    .line 1229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1233
    .line 1234
    .line 1235
    goto/16 :goto_0

    .line 1236
    .line 1237
    :pswitch_40
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->isImsEnabled()Z

    .line 1238
    .line 1239
    .line 1240
    move-result p0

    .line 1241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1245
    .line 1246
    .line 1247
    goto/16 :goto_0

    .line 1248
    .line 1249
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1250
    .line 1251
    .line 1252
    move-result p1

    .line 1253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1254
    .line 1255
    .line 1256
    move-result-object p4

    .line 1257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1258
    .line 1259
    .line 1260
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->setProvisionedStringValue(ILjava/lang/String;)V

    .line 1261
    .line 1262
    .line 1263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    .line 1265
    .line 1266
    goto/16 :goto_0

    .line 1267
    .line 1268
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1269
    .line 1270
    .line 1271
    move-result p1

    .line 1272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1273
    .line 1274
    .line 1275
    move-result p4

    .line 1276
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1277
    .line 1278
    .line 1279
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->setProvisionedValue(II)V

    .line 1280
    .line 1281
    .line 1282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    .line 1284
    .line 1285
    goto/16 :goto_0

    .line 1286
    .line 1287
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1288
    .line 1289
    .line 1290
    move-result p1

    .line 1291
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1292
    .line 1293
    .line 1294
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getMasterStringValue(I)Ljava/lang/String;

    .line 1295
    .line 1296
    .line 1297
    move-result-object p0

    .line 1298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1302
    .line 1303
    .line 1304
    goto/16 :goto_0

    .line 1305
    .line 1306
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1307
    .line 1308
    .line 1309
    move-result p1

    .line 1310
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1311
    .line 1312
    .line 1313
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getMasterValue(I)I

    .line 1314
    .line 1315
    .line 1316
    move-result p0

    .line 1317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    .line 1319
    .line 1320
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1321
    .line 1322
    .line 1323
    goto/16 :goto_0

    .line 1324
    .line 1325
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1326
    .line 1327
    .line 1328
    move-result p1

    .line 1329
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1330
    .line 1331
    .line 1332
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;

    .line 1333
    .line 1334
    .line 1335
    move-result-object p0

    .line 1336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1340
    .line 1341
    .line 1342
    goto/16 :goto_0

    .line 1343
    .line 1344
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1345
    .line 1346
    .line 1347
    move-result p1

    .line 1348
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1349
    .line 1350
    .line 1351
    move-result-object p4

    .line 1352
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1353
    .line 1354
    .line 1355
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterDialogEventListenerByToken(ILjava/lang/String;)V

    .line 1356
    .line 1357
    .line 1358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1359
    .line 1360
    .line 1361
    goto/16 :goto_0

    .line 1362
    .line 1363
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1364
    .line 1365
    .line 1366
    move-result p1

    .line 1367
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1368
    .line 1369
    .line 1370
    move-result-object p4

    .line 1371
    invoke-static {p4}, Lcom/sec/ims/IDialogEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogEventListener;

    .line 1372
    .line 1373
    .line 1374
    move-result-object p4

    .line 1375
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1376
    .line 1377
    .line 1378
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerDialogEventListenerByToken(ILcom/sec/ims/IDialogEventListener;)Ljava/lang/String;

    .line 1379
    .line 1380
    .line 1381
    move-result-object p0

    .line 1382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1386
    .line 1387
    .line 1388
    goto/16 :goto_0

    .line 1389
    .line 1390
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1391
    .line 1392
    .line 1393
    move-result p1

    .line 1394
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1395
    .line 1396
    .line 1397
    move-result-object p4

    .line 1398
    invoke-static {p4}, Lcom/sec/ims/IDialogEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogEventListener;

    .line 1399
    .line 1400
    .line 1401
    move-result-object p4

    .line 1402
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1403
    .line 1404
    .line 1405
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    .line 1410
    .line 1411
    goto/16 :goto_0

    .line 1412
    .line 1413
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1414
    .line 1415
    .line 1416
    move-result p1

    .line 1417
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1418
    .line 1419
    .line 1420
    move-result-object p4

    .line 1421
    invoke-static {p4}, Lcom/sec/ims/IDialogEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IDialogEventListener;

    .line 1422
    .line 1423
    .line 1424
    move-result-object p4

    .line 1425
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1426
    .line 1427
    .line 1428
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    .line 1429
    .line 1430
    .line 1431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1432
    .line 1433
    .line 1434
    goto/16 :goto_0

    .line 1435
    .line 1436
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1437
    .line 1438
    .line 1439
    move-result-object p1

    .line 1440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1441
    .line 1442
    .line 1443
    move-result p4

    .line 1444
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1445
    .line 1446
    .line 1447
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterImsRegistrationListenerForSlot(Ljava/lang/String;I)V

    .line 1448
    .line 1449
    .line 1450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    .line 1452
    .line 1453
    goto/16 :goto_0

    .line 1454
    .line 1455
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1456
    .line 1457
    .line 1458
    move-result-object p1

    .line 1459
    invoke-static {p1}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    .line 1460
    .line 1461
    .line 1462
    move-result-object p1

    .line 1463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1464
    .line 1465
    .line 1466
    move-result p4

    .line 1467
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1468
    .line 1469
    .line 1470
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    .line 1471
    .line 1472
    .line 1473
    move-result-object p0

    .line 1474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1478
    .line 1479
    .line 1480
    goto/16 :goto_0

    .line 1481
    .line 1482
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1483
    .line 1484
    .line 1485
    move-result-object p1

    .line 1486
    invoke-static {p1}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    .line 1487
    .line 1488
    .line 1489
    move-result-object p1

    .line 1490
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1491
    .line 1492
    .line 1493
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 1494
    .line 1495
    .line 1496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1497
    .line 1498
    .line 1499
    goto/16 :goto_0

    .line 1500
    .line 1501
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1502
    .line 1503
    .line 1504
    move-result-object p1

    .line 1505
    invoke-static {p1}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    .line 1506
    .line 1507
    .line 1508
    move-result-object p1

    .line 1509
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1510
    .line 1511
    .line 1512
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 1513
    .line 1514
    .line 1515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1516
    .line 1517
    .line 1518
    goto/16 :goto_0

    .line 1519
    .line 1520
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1521
    .line 1522
    .line 1523
    move-result-object p1

    .line 1524
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1525
    .line 1526
    .line 1527
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->unRegisterEpdgListener(Ljava/lang/String;)V

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1531
    .line 1532
    .line 1533
    goto/16 :goto_0

    .line 1534
    .line 1535
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1536
    .line 1537
    .line 1538
    move-result-object p1

    .line 1539
    invoke-static {p1}, Lcom/sec/ims/IEpdgListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IEpdgListener;

    .line 1540
    .line 1541
    .line 1542
    move-result-object p1

    .line 1543
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1544
    .line 1545
    .line 1546
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->registerEpdgListener(Lcom/sec/ims/IEpdgListener;)Ljava/lang/String;

    .line 1547
    .line 1548
    .line 1549
    move-result-object p0

    .line 1550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1554
    .line 1555
    .line 1556
    goto/16 :goto_0

    .line 1557
    .line 1558
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1559
    .line 1560
    .line 1561
    move-result-object p1

    .line 1562
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1563
    .line 1564
    .line 1565
    move-result-object p4

    .line 1566
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v0

    .line 1570
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1571
    .line 1572
    .line 1573
    move-result v2

    .line 1574
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1575
    .line 1576
    .line 1577
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/sec/ims/IImsService;->setEmergencyPdnInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    .line 1578
    .line 1579
    .line 1580
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    .line 1582
    .line 1583
    goto/16 :goto_0

    .line 1584
    .line 1585
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1586
    .line 1587
    .line 1588
    move-result p1

    .line 1589
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1590
    .line 1591
    .line 1592
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isQSSSuccessAuthAndLogin(I)Z

    .line 1593
    .line 1594
    .line 1595
    move-result p0

    .line 1596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1597
    .line 1598
    .line 1599
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1600
    .line 1601
    .line 1602
    goto/16 :goto_0

    .line 1603
    .line 1604
    :pswitch_52
    sget-object p1, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1605
    .line 1606
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1607
    .line 1608
    .line 1609
    move-result-object p1

    .line 1610
    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    .line 1611
    .line 1612
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1613
    .line 1614
    .line 1615
    move-result p4

    .line 1616
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1617
    .line 1618
    .line 1619
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->updateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    .line 1620
    .line 1621
    .line 1622
    move-result p0

    .line 1623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1624
    .line 1625
    .line 1626
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1627
    .line 1628
    .line 1629
    goto/16 :goto_0

    .line 1630
    .line 1631
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1632
    .line 1633
    .line 1634
    move-result p1

    .line 1635
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1636
    .line 1637
    .line 1638
    move-result p4

    .line 1639
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1640
    .line 1641
    .line 1642
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->suspendRegister(ZI)V

    .line 1643
    .line 1644
    .line 1645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1646
    .line 1647
    .line 1648
    goto/16 :goto_0

    .line 1649
    .line 1650
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1651
    .line 1652
    .line 1653
    move-result p1

    .line 1654
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1655
    .line 1656
    .line 1657
    move-result p4

    .line 1658
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1659
    .line 1660
    .line 1661
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->sendDeregister(II)V

    .line 1662
    .line 1663
    .line 1664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1665
    .line 1666
    .line 1667
    goto/16 :goto_0

    .line 1668
    .line 1669
    :pswitch_55
    sget-object p1, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1670
    .line 1671
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1672
    .line 1673
    .line 1674
    move-result-object p1

    .line 1675
    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    .line 1676
    .line 1677
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1678
    .line 1679
    .line 1680
    move-result p4

    .line 1681
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1682
    .line 1683
    .line 1684
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->forcedUpdateRegistrationByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)V

    .line 1685
    .line 1686
    .line 1687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1688
    .line 1689
    .line 1690
    goto/16 :goto_0

    .line 1691
    .line 1692
    :pswitch_56
    sget-object p1, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1693
    .line 1694
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1695
    .line 1696
    .line 1697
    move-result-object p1

    .line 1698
    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    .line 1699
    .line 1700
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1701
    .line 1702
    .line 1703
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;)V

    .line 1704
    .line 1705
    .line 1706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1707
    .line 1708
    .line 1709
    goto/16 :goto_0

    .line 1710
    .line 1711
    :pswitch_57
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
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->sendTryRegisterByPhoneId(I)V

    .line 1719
    .line 1720
    .line 1721
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    .line 1723
    .line 1724
    goto/16 :goto_0

    .line 1725
    .line 1726
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1727
    .line 1728
    .line 1729
    move-result p1

    .line 1730
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1731
    .line 1732
    .line 1733
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->sendTryRegisterCms(I)V

    .line 1734
    .line 1735
    .line 1736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1737
    .line 1738
    .line 1739
    goto/16 :goto_0

    .line 1740
    .line 1741
    :pswitch_59
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->sendTryRegister()V

    .line 1742
    .line 1743
    .line 1744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1745
    .line 1746
    .line 1747
    goto/16 :goto_0

    .line 1748
    .line 1749
    :pswitch_5a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1750
    .line 1751
    .line 1752
    move-result-object p1

    .line 1753
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1754
    .line 1755
    .line 1756
    move-result-object p1

    .line 1757
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 1758
    .line 1759
    .line 1760
    move-result-object p1

    .line 1761
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1762
    .line 1763
    .line 1764
    move-result p4

    .line 1765
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1766
    .line 1767
    .line 1768
    move-result v0

    .line 1769
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1770
    .line 1771
    .line 1772
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->deregisterProfileByPhoneId(Ljava/util/List;ZI)V

    .line 1773
    .line 1774
    .line 1775
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1776
    .line 1777
    .line 1778
    goto/16 :goto_0

    .line 1779
    .line 1780
    :pswitch_5b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1781
    .line 1782
    .line 1783
    move-result-object p1

    .line 1784
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1785
    .line 1786
    .line 1787
    move-result-object p1

    .line 1788
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 1789
    .line 1790
    .line 1791
    move-result-object p1

    .line 1792
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1793
    .line 1794
    .line 1795
    move-result p4

    .line 1796
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1797
    .line 1798
    .line 1799
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->deregisterProfile(Ljava/util/List;Z)V

    .line 1800
    .line 1801
    .line 1802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1803
    .line 1804
    .line 1805
    goto/16 :goto_0

    .line 1806
    .line 1807
    :pswitch_5c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1808
    .line 1809
    .line 1810
    move-result-object p1

    .line 1811
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1812
    .line 1813
    .line 1814
    move-result-object p1

    .line 1815
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 1816
    .line 1817
    .line 1818
    move-result-object p1

    .line 1819
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1820
    .line 1821
    .line 1822
    move-result p4

    .line 1823
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1824
    .line 1825
    .line 1826
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerProfileByPhoneId(Ljava/util/List;I)V

    .line 1827
    .line 1828
    .line 1829
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1830
    .line 1831
    .line 1832
    goto/16 :goto_0

    .line 1833
    .line 1834
    :pswitch_5d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1835
    .line 1836
    .line 1837
    move-result-object p1

    .line 1838
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1839
    .line 1840
    .line 1841
    move-result-object p1

    .line 1842
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 1843
    .line 1844
    .line 1845
    move-result-object p1

    .line 1846
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1847
    .line 1848
    .line 1849
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->registerProfile(Ljava/util/List;)V

    .line 1850
    .line 1851
    .line 1852
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1853
    .line 1854
    .line 1855
    goto/16 :goto_0

    .line 1856
    .line 1857
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1858
    .line 1859
    .line 1860
    move-result p1

    .line 1861
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1862
    .line 1863
    .line 1864
    move-result p4

    .line 1865
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1866
    .line 1867
    .line 1868
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->deregisterAdhocProfileByPhoneId(II)V

    .line 1869
    .line 1870
    .line 1871
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1872
    .line 1873
    .line 1874
    goto/16 :goto_0

    .line 1875
    .line 1876
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1877
    .line 1878
    .line 1879
    move-result p1

    .line 1880
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1881
    .line 1882
    .line 1883
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->deregisterAdhocProfile(I)V

    .line 1884
    .line 1885
    .line 1886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1887
    .line 1888
    .line 1889
    goto/16 :goto_0

    .line 1890
    .line 1891
    :pswitch_60
    sget-object p1, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1892
    .line 1893
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1894
    .line 1895
    .line 1896
    move-result-object p1

    .line 1897
    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    .line 1898
    .line 1899
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1900
    .line 1901
    .line 1902
    move-result p4

    .line 1903
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1904
    .line 1905
    .line 1906
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerAdhocProfileByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)I

    .line 1907
    .line 1908
    .line 1909
    move-result p0

    .line 1910
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1911
    .line 1912
    .line 1913
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1914
    .line 1915
    .line 1916
    goto/16 :goto_0

    .line 1917
    .line 1918
    :pswitch_61
    sget-object p1, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1919
    .line 1920
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1921
    .line 1922
    .line 1923
    move-result-object p1

    .line 1924
    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    .line 1925
    .line 1926
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1927
    .line 1928
    .line 1929
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->registerAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)I

    .line 1930
    .line 1931
    .line 1932
    move-result p0

    .line 1933
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1934
    .line 1935
    .line 1936
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1937
    .line 1938
    .line 1939
    goto/16 :goto_0

    .line 1940
    .line 1941
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1942
    .line 1943
    .line 1944
    move-result p1

    .line 1945
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1946
    .line 1947
    .line 1948
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getRcsProfileType(I)Ljava/lang/String;

    .line 1949
    .line 1950
    .line 1951
    move-result-object p0

    .line 1952
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1953
    .line 1954
    .line 1955
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1956
    .line 1957
    .line 1958
    goto/16 :goto_0

    .line 1959
    .line 1960
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1961
    .line 1962
    .line 1963
    move-result p1

    .line 1964
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1965
    .line 1966
    .line 1967
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    .line 1968
    .line 1969
    .line 1970
    move-result-object p0

    .line 1971
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1972
    .line 1973
    .line 1974
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1975
    .line 1976
    .line 1977
    goto/16 :goto_0

    .line 1978
    .line 1979
    :pswitch_64
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->getCurrentProfile()[Lcom/sec/ims/settings/ImsProfile;

    .line 1980
    .line 1981
    .line 1982
    move-result-object p0

    .line 1983
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1984
    .line 1985
    .line 1986
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1987
    .line 1988
    .line 1989
    goto/16 :goto_0

    .line 1990
    .line 1991
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1992
    .line 1993
    .line 1994
    move-result-object p1

    .line 1995
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1996
    .line 1997
    .line 1998
    move-result p4

    .line 1999
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2000
    .line 2001
    .line 2002
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;

    .line 2003
    .line 2004
    .line 2005
    move-result-object p0

    .line 2006
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2007
    .line 2008
    .line 2009
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2010
    .line 2011
    .line 2012
    goto/16 :goto_0

    .line 2013
    .line 2014
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2015
    .line 2016
    .line 2017
    move-result p1

    .line 2018
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2019
    .line 2020
    .line 2021
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    .line 2022
    .line 2023
    .line 2024
    move-result-object p0

    .line 2025
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2026
    .line 2027
    .line 2028
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2029
    .line 2030
    .line 2031
    goto/16 :goto_0

    .line 2032
    .line 2033
    :pswitch_67
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    .line 2034
    .line 2035
    .line 2036
    move-result-object p0

    .line 2037
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2038
    .line 2039
    .line 2040
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2041
    .line 2042
    .line 2043
    goto/16 :goto_0

    .line 2044
    .line 2045
    :pswitch_68
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->isRegistered()Z

    .line 2046
    .line 2047
    .line 2048
    move-result p0

    .line 2049
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2050
    .line 2051
    .line 2052
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2053
    .line 2054
    .line 2055
    goto/16 :goto_0

    .line 2056
    .line 2057
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2058
    .line 2059
    .line 2060
    move-result-object p1

    .line 2061
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2062
    .line 2063
    .line 2064
    move-result p4

    .line 2065
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2066
    .line 2067
    .line 2068
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterCmsRegistrationListenerByPhoneId(Ljava/lang/String;I)V

    .line 2069
    .line 2070
    .line 2071
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2072
    .line 2073
    .line 2074
    goto/16 :goto_0

    .line 2075
    .line 2076
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2077
    .line 2078
    .line 2079
    move-result-object p1

    .line 2080
    invoke-static {p1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ICentralMsgStoreService;

    .line 2081
    .line 2082
    .line 2083
    move-result-object p1

    .line 2084
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2085
    .line 2086
    .line 2087
    move-result p4

    .line 2088
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2089
    .line 2090
    .line 2091
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerCmsRegistrationListenerByPhoneId(Lcom/sec/ims/ICentralMsgStoreService;I)Ljava/lang/String;

    .line 2092
    .line 2093
    .line 2094
    move-result-object p0

    .line 2095
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2096
    .line 2097
    .line 2098
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2099
    .line 2100
    .line 2101
    goto/16 :goto_0

    .line 2102
    .line 2103
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2104
    .line 2105
    .line 2106
    move-result-object p1

    .line 2107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2108
    .line 2109
    .line 2110
    move-result p4

    .line 2111
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2112
    .line 2113
    .line 2114
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterSimMobilityStatusListenerByPhoneId(Ljava/lang/String;I)V

    .line 2115
    .line 2116
    .line 2117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2118
    .line 2119
    .line 2120
    goto/16 :goto_0

    .line 2121
    .line 2122
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2123
    .line 2124
    .line 2125
    move-result-object p1

    .line 2126
    invoke-static {p1}, Lcom/sec/ims/ISimMobilityStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ISimMobilityStatusListener;

    .line 2127
    .line 2128
    .line 2129
    move-result-object p1

    .line 2130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2131
    .line 2132
    .line 2133
    move-result p4

    .line 2134
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2135
    .line 2136
    .line 2137
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)Ljava/lang/String;

    .line 2138
    .line 2139
    .line 2140
    move-result-object p0

    .line 2141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2142
    .line 2143
    .line 2144
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2145
    .line 2146
    .line 2147
    goto/16 :goto_0

    .line 2148
    .line 2149
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2150
    .line 2151
    .line 2152
    move-result-object p1

    .line 2153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2154
    .line 2155
    .line 2156
    move-result p4

    .line 2157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2158
    .line 2159
    .line 2160
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterAutoConfigurationListener(Ljava/lang/String;I)V

    .line 2161
    .line 2162
    .line 2163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2164
    .line 2165
    .line 2166
    goto/16 :goto_0

    .line 2167
    .line 2168
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2169
    .line 2170
    .line 2171
    move-result-object p1

    .line 2172
    invoke-static {p1}, Lcom/sec/ims/IAutoConfigurationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IAutoConfigurationListener;

    .line 2173
    .line 2174
    .line 2175
    move-result-object p1

    .line 2176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2177
    .line 2178
    .line 2179
    move-result p4

    .line 2180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2181
    .line 2182
    .line 2183
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)Ljava/lang/String;

    .line 2184
    .line 2185
    .line 2186
    move-result-object p0

    .line 2187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2188
    .line 2189
    .line 2190
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2191
    .line 2192
    .line 2193
    goto/16 :goto_0

    .line 2194
    .line 2195
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2196
    .line 2197
    .line 2198
    move-result-object p1

    .line 2199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2200
    .line 2201
    .line 2202
    move-result p4

    .line 2203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2204
    .line 2205
    .line 2206
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterImsOngoingFtListenerByPhoneId(Ljava/lang/String;I)V

    .line 2207
    .line 2208
    .line 2209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2210
    .line 2211
    .line 2212
    goto/16 :goto_0

    .line 2213
    .line 2214
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2215
    .line 2216
    .line 2217
    move-result-object p1

    .line 2218
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2219
    .line 2220
    .line 2221
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->unregisterImsOngoingFtListener(Ljava/lang/String;)V

    .line 2222
    .line 2223
    .line 2224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2225
    .line 2226
    .line 2227
    goto/16 :goto_0

    .line 2228
    .line 2229
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2230
    .line 2231
    .line 2232
    move-result-object p1

    .line 2233
    invoke-static {p1}, Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    .line 2234
    .line 2235
    .line 2236
    move-result-object p1

    .line 2237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2238
    .line 2239
    .line 2240
    move-result p4

    .line 2241
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2242
    .line 2243
    .line 2244
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)Ljava/lang/String;

    .line 2245
    .line 2246
    .line 2247
    move-result-object p0

    .line 2248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2249
    .line 2250
    .line 2251
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2252
    .line 2253
    .line 2254
    goto/16 :goto_0

    .line 2255
    .line 2256
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2257
    .line 2258
    .line 2259
    move-result-object p1

    .line 2260
    invoke-static {p1}, Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    .line 2261
    .line 2262
    .line 2263
    move-result-object p1

    .line 2264
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2265
    .line 2266
    .line 2267
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)Ljava/lang/String;

    .line 2268
    .line 2269
    .line 2270
    move-result-object p0

    .line 2271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2272
    .line 2273
    .line 2274
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2275
    .line 2276
    .line 2277
    goto/16 :goto_0

    .line 2278
    .line 2279
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2280
    .line 2281
    .line 2282
    move-result-object p1

    .line 2283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2284
    .line 2285
    .line 2286
    move-result p4

    .line 2287
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2288
    .line 2289
    .line 2290
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->unregisterImSessionListenerByPhoneId(Ljava/lang/String;I)V

    .line 2291
    .line 2292
    .line 2293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2294
    .line 2295
    .line 2296
    goto/16 :goto_0

    .line 2297
    .line 2298
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2299
    .line 2300
    .line 2301
    move-result-object p1

    .line 2302
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2303
    .line 2304
    .line 2305
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->unregisterImSessionListener(Ljava/lang/String;)V

    .line 2306
    .line 2307
    .line 2308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2309
    .line 2310
    .line 2311
    goto/16 :goto_0

    .line 2312
    .line 2313
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2314
    .line 2315
    .line 2316
    move-result-object p1

    .line 2317
    invoke-static {p1}, Lcom/sec/ims/im/IImSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/im/IImSessionListener;

    .line 2318
    .line 2319
    .line 2320
    move-result-object p1

    .line 2321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2322
    .line 2323
    .line 2324
    move-result p4

    .line 2325
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2326
    .line 2327
    .line 2328
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)Ljava/lang/String;

    .line 2329
    .line 2330
    .line 2331
    move-result-object p0

    .line 2332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2333
    .line 2334
    .line 2335
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2336
    .line 2337
    .line 2338
    goto/16 :goto_0

    .line 2339
    .line 2340
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2341
    .line 2342
    .line 2343
    move-result-object p1

    .line 2344
    invoke-static {p1}, Lcom/sec/ims/im/IImSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/im/IImSessionListener;

    .line 2345
    .line 2346
    .line 2347
    move-result-object p1

    .line 2348
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2349
    .line 2350
    .line 2351
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)Ljava/lang/String;

    .line 2352
    .line 2353
    .line 2354
    move-result-object p0

    .line 2355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2356
    .line 2357
    .line 2358
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2359
    .line 2360
    .line 2361
    goto/16 :goto_0

    .line 2362
    .line 2363
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2364
    .line 2365
    .line 2366
    move-result-object p1

    .line 2367
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2368
    .line 2369
    .line 2370
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;

    .line 2371
    .line 2372
    .line 2373
    move-result-object p0

    .line 2374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2375
    .line 2376
    .line 2377
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2378
    .line 2379
    .line 2380
    goto/16 :goto_0

    .line 2381
    .line 2382
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2383
    .line 2384
    .line 2385
    move-result p1

    .line 2386
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2387
    .line 2388
    .line 2389
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->getNetworkType(I)I

    .line 2390
    .line 2391
    .line 2392
    move-result p0

    .line 2393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2394
    .line 2395
    .line 2396
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2397
    .line 2398
    .line 2399
    goto/16 :goto_0

    .line 2400
    .line 2401
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2402
    .line 2403
    .line 2404
    move-result-object p1

    .line 2405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2406
    .line 2407
    .line 2408
    move-result p4

    .line 2409
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2410
    .line 2411
    .line 2412
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->sendIidToken(Ljava/lang/String;I)V

    .line 2413
    .line 2414
    .line 2415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2416
    .line 2417
    .line 2418
    goto/16 :goto_0

    .line 2419
    .line 2420
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2421
    .line 2422
    .line 2423
    move-result-object p1

    .line 2424
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2425
    .line 2426
    .line 2427
    move-result p4

    .line 2428
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2429
    .line 2430
    .line 2431
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->sendMsisdnNumber(Ljava/lang/String;I)V

    .line 2432
    .line 2433
    .line 2434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2435
    .line 2436
    .line 2437
    goto/16 :goto_0

    .line 2438
    .line 2439
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2440
    .line 2441
    .line 2442
    move-result-object p1

    .line 2443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2444
    .line 2445
    .line 2446
    move-result p4

    .line 2447
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2448
    .line 2449
    .line 2450
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->sendVerificationCode(Ljava/lang/String;I)V

    .line 2451
    .line 2452
    .line 2453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2454
    .line 2455
    .line 2456
    goto/16 :goto_0

    .line 2457
    .line 2458
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2459
    .line 2460
    .line 2461
    move-result p1

    .line 2462
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2463
    .line 2464
    .line 2465
    move-result-object p4

    .line 2466
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2467
    .line 2468
    .line 2469
    move-result-object v0

    .line 2470
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2471
    .line 2472
    .line 2473
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->setActiveMsisdn(ILjava/lang/String;Ljava/lang/String;)I

    .line 2474
    .line 2475
    .line 2476
    move-result p0

    .line 2477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2478
    .line 2479
    .line 2480
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2481
    .line 2482
    .line 2483
    goto :goto_0

    .line 2484
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2485
    .line 2486
    .line 2487
    move-result p1

    .line 2488
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2489
    .line 2490
    .line 2491
    move-result-object p4

    .line 2492
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2493
    .line 2494
    .line 2495
    move-result-object v0

    .line 2496
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2497
    .line 2498
    .line 2499
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/IImsService;->setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I

    .line 2500
    .line 2501
    .line 2502
    move-result p0

    .line 2503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2504
    .line 2505
    .line 2506
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2507
    .line 2508
    .line 2509
    goto :goto_0

    .line 2510
    :pswitch_7e
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->setSimRefreshed()V

    .line 2511
    .line 2512
    .line 2513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2514
    .line 2515
    .line 2516
    goto :goto_0

    .line 2517
    :pswitch_7f
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->setIsimLoaded()V

    .line 2518
    .line 2519
    .line 2520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2521
    .line 2522
    .line 2523
    goto :goto_0

    .line 2524
    :pswitch_80
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->getPhoneCount()I

    .line 2525
    .line 2526
    .line 2527
    move-result p0

    .line 2528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2529
    .line 2530
    .line 2531
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2532
    .line 2533
    .line 2534
    goto :goto_0

    .line 2535
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2536
    .line 2537
    .line 2538
    move-result-object p1

    .line 2539
    invoke-static {p1}, Lcom/sec/ims/ImsEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ImsEventListener;

    .line 2540
    .line 2541
    .line 2542
    move-result-object p1

    .line 2543
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2544
    .line 2545
    .line 2546
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->unregisterCallback(Lcom/sec/ims/ImsEventListener;)V

    .line 2547
    .line 2548
    .line 2549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2550
    .line 2551
    .line 2552
    goto :goto_0

    .line 2553
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2554
    .line 2555
    .line 2556
    move-result-object p1

    .line 2557
    invoke-static {p1}, Lcom/sec/ims/ImsEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ImsEventListener;

    .line 2558
    .line 2559
    .line 2560
    move-result-object p1

    .line 2561
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2562
    .line 2563
    .line 2564
    move-result-object p4

    .line 2565
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2566
    .line 2567
    .line 2568
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/IImsService;->registerCallback(Lcom/sec/ims/ImsEventListener;Ljava/lang/String;)V

    .line 2569
    .line 2570
    .line 2571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2572
    .line 2573
    .line 2574
    :goto_0
    return v1

    .line 2575
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2576
    .line 2577
    .line 2578
    return v1

    .line 2579
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
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
