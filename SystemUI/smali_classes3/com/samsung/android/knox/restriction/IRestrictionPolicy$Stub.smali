.class public abstract Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/knox/restriction/IRestrictionPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_addNewAdminActivationAppWhiteList:I = 0x78

.field public static final TRANSACTION_allowActivationLock:I = 0x99

.field public static final TRANSACTION_allowAirplaneMode:I = 0x61

.field public static final TRANSACTION_allowAudioRecord:I = 0x3b

.field public static final TRANSACTION_allowBackgroundProcessLimit:I = 0x43

.field public static final TRANSACTION_allowClipboardShare:I = 0x49

.field public static final TRANSACTION_allowDataSaving:I = 0x87

.field public static final TRANSACTION_allowDeveloperMode:I = 0x5f

.field public static final TRANSACTION_allowFaceRecognitionEvenCameraBlocked:I = 0x8e

.field public static final TRANSACTION_allowFactoryReset:I = 0x1f

.field public static final TRANSACTION_allowFastEncryption:I = 0x6c

.field public static final TRANSACTION_allowFirmwareAutoUpdate:I = 0x66

.field public static final TRANSACTION_allowFirmwareRecovery:I = 0x5c

.field public static final TRANSACTION_allowGoogleAccountsAutoSync:I = 0x63

.field public static final TRANSACTION_allowGoogleCrashReport:I = 0x32

.field public static final TRANSACTION_allowIntelligenceOnlineProcessing:I = 0x94

.field public static final TRANSACTION_allowKillingActivitiesOnLeave:I = 0x45

.field public static final TRANSACTION_allowLocalContactStorage:I = 0x90

.field public static final TRANSACTION_allowLockScreenView:I = 0x58

.field public static final TRANSACTION_allowOTAUpgrade:I = 0x2e

.field public static final TRANSACTION_allowPowerOff:I = 0x39

.field public static final TRANSACTION_allowPowerSavingMode:I = 0x89

.field public static final TRANSACTION_allowSDCardMove:I = 0x6a

.field public static final TRANSACTION_allowSDCardWrite:I = 0x30

.field public static final TRANSACTION_allowSVoice:I = 0x4c

.field public static final TRANSACTION_allowSafeMode:I = 0x56

.field public static final TRANSACTION_allowScreenPinning:I = 0x7f

.field public static final TRANSACTION_allowSettingsChanges:I = 0x27

.field public static final TRANSACTION_allowShareList:I = 0x51

.field public static final TRANSACTION_allowSmartClipMode:I = 0x7c

.field public static final TRANSACTION_allowStatusBarExpansion:I = 0x37

.field public static final TRANSACTION_allowStopSystemApp:I = 0x3f

.field public static final TRANSACTION_allowUsbHostStorage:I = 0x4f

.field public static final TRANSACTION_allowUserMobileDataLimit:I = 0x47

.field public static final TRANSACTION_allowVideoRecord:I = 0x3d

.field public static final TRANSACTION_allowVpn:I = 0x2c

.field public static final TRANSACTION_allowWallpaperChange:I = 0x35

.field public static final TRANSACTION_allowWifiDirect:I = 0x41

.field public static final TRANSACTION_checkAdminActivationEnabled:I = 0xa4

.field public static final TRANSACTION_checkIfRestrictionWasSetByKC:I = 0x96

.field public static final TRANSACTION_checkPackageSource:I = 0xa3

.field public static final TRANSACTION_clearNewAdminActivationAppWhiteList:I = 0x77

.field public static final TRANSACTION_disableConstrainedState:I = 0xa8

.field public static final TRANSACTION_enableConstrainedState:I = 0xa7

.field public static final TRANSACTION_enableODETrustedBootVerification:I = 0x71

.field public static final TRANSACTION_enableWearablePolicy:I = 0x80

.field public static final TRANSACTION_getAllowedFOTAInfo:I = 0x84

.field public static final TRANSACTION_getAllowedFOTAVersion:I = 0x83

.field public static final TRANSACTION_getCCModeState:I = 0x7d

.field public static final TRANSACTION_getConstrainedState:I = 0xa9

.field public static final TRANSACTION_getKcActionDisabledText:I = 0x97

.field public static final TRANSACTION_getNewAdminActivationAppWhiteList:I = 0x79

.field public static final TRANSACTION_getUsbExceptionList:I = 0x8c

.field public static final TRANSACTION_isActivationLockAllowed:I = 0x9a

.field public static final TRANSACTION_isAirplaneModeAllowed:I = 0x62

.field public static final TRANSACTION_isAudioRecordAllowed:I = 0x3c

.field public static final TRANSACTION_isBackgroundDataEnabled:I = 0x24

.field public static final TRANSACTION_isBackgroundProcessLimitAllowed:I = 0x44

.field public static final TRANSACTION_isBackupAllowed:I = 0x1b

.field public static final TRANSACTION_isBluetoothTetheringEnabled:I = 0x9

.field public static final TRANSACTION_isCCModeEnabled:I = 0xa2

.field public static final TRANSACTION_isCCModeSupported:I = 0x70

.field public static final TRANSACTION_isCameraEnabled:I = 0x2

.field public static final TRANSACTION_isCellularDataAllowed:I = 0x26

.field public static final TRANSACTION_isClipboardAllowed:I = 0x1d

.field public static final TRANSACTION_isClipboardAllowedAsUser:I = 0x1e

.field public static final TRANSACTION_isClipboardShareAllowed:I = 0x4a

.field public static final TRANSACTION_isClipboardShareAllowedAsUser:I = 0x4b

.field public static final TRANSACTION_isDataSavingAllowed:I = 0x88

.field public static final TRANSACTION_isDeveloperModeAllowed:I = 0x60

.field public static final TRANSACTION_isFaceRecognitionAllowedEvenCameraBlocked:I = 0x8f

.field public static final TRANSACTION_isFactoryResetAllowed:I = 0x20

.field public static final TRANSACTION_isFastEncryptionAllowed:I = 0x6d

.field public static final TRANSACTION_isFirmwareAutoUpdateAllowed:I = 0x67

.field public static final TRANSACTION_isFirmwareRecoveryAllowed:I = 0x5d

.field public static final TRANSACTION_isGoogleAccountsAutoSyncAllowed:I = 0x64

.field public static final TRANSACTION_isGoogleAccountsAutoSyncAllowedAsUser:I = 0x65

.field public static final TRANSACTION_isGoogleCrashReportAllowed:I = 0x33

.field public static final TRANSACTION_isGoogleCrashReportAllowedAsUser:I = 0x34

.field public static final TRANSACTION_isHeadphoneEnabled:I = 0x69

.field public static final TRANSACTION_isHomeKeyEnabled:I = 0x22

.field public static final TRANSACTION_isIntelligenceOnlineProcessingAllowed:I = 0x95

.field public static final TRANSACTION_isIrisCameraEnabled:I = 0x85

.field public static final TRANSACTION_isKillingActivitiesOnLeaveAllowed:I = 0x46

.field public static final TRANSACTION_isKnoxDelegationEnabled:I = 0x93

.field public static final TRANSACTION_isLocalContactStorageAllowed:I = 0x91

.field public static final TRANSACTION_isLockScreenEnabled:I = 0x5b

.field public static final TRANSACTION_isLockScreenViewAllowed:I = 0x59

.field public static final TRANSACTION_isMicrophoneEnabled:I = 0x4

.field public static final TRANSACTION_isMicrophoneEnabledAsUser:I = 0x5

.field public static final TRANSACTION_isMockLocationEnabled:I = 0x19

.field public static final TRANSACTION_isNewAdminActivationEnabled:I = 0x76

.field public static final TRANSACTION_isNewAdminInstallationEnabled:I = 0x74

.field public static final TRANSACTION_isNewAdminInstallationEnabledAsUser:I = 0xa5

.field public static final TRANSACTION_isNonMarketAppAllowed:I = 0x2b

.field public static final TRANSACTION_isNonTrustedAppInstallBlocked:I = 0x9b

.field public static final TRANSACTION_isNonTrustedAppInstallBlockedAsUser:I = 0x9c

.field public static final TRANSACTION_isODETrustedBootVerificationEnabled:I = 0x72

.field public static final TRANSACTION_isOTAUpgradeAllowed:I = 0x2f

.field public static final TRANSACTION_isPowerOffAllowed:I = 0x3a

.field public static final TRANSACTION_isPowerSavingModeAllowed:I = 0x8a

.field public static final TRANSACTION_isSDCardMoveAllowed:I = 0x6b

.field public static final TRANSACTION_isSDCardWriteAllowed:I = 0x31

.field public static final TRANSACTION_isSVoiceAllowed:I = 0x4d

.field public static final TRANSACTION_isSVoiceAllowedAsUser:I = 0x4e

.field public static final TRANSACTION_isSafeModeAllowed:I = 0x57

.field public static final TRANSACTION_isScreenCaptureEnabled:I = 0x15

.field public static final TRANSACTION_isScreenCaptureEnabledEx:I = 0x16

.field public static final TRANSACTION_isScreenCaptureEnabledInternal:I = 0x17

.field public static final TRANSACTION_isScreenPinningAllowed:I = 0x7e

.field public static final TRANSACTION_isSdCardEnabled:I = 0x7

.field public static final TRANSACTION_isSettingsChangesAllowed:I = 0x28

.field public static final TRANSACTION_isSettingsChangesAllowedAsUser:I = 0x29

.field public static final TRANSACTION_isShareListAllowed:I = 0x52

.field public static final TRANSACTION_isShareListAllowedAsUser:I = 0x53

.field public static final TRANSACTION_isSmartClipModeAllowed:I = 0x7a

.field public static final TRANSACTION_isSmartClipModeAllowedInternal:I = 0x7b

.field public static final TRANSACTION_isStatusBarExpansionAllowed:I = 0x38

.field public static final TRANSACTION_isStatusBarExpansionAllowedAsUser:I = 0x5e

.field public static final TRANSACTION_isStopSystemAppAllowed:I = 0x40

.field public static final TRANSACTION_isTetheringEnabled:I = 0xf

.field public static final TRANSACTION_isUsbDebuggingEnabled:I = 0x11

.field public static final TRANSACTION_isUsbHostStorageAllowed:I = 0x50

.field public static final TRANSACTION_isUsbKiesAvailable:I = 0x9e

.field public static final TRANSACTION_isUsbMassStorageEnabled:I = 0x9d

.field public static final TRANSACTION_isUsbMediaPlayerAvailable:I = 0x13

.field public static final TRANSACTION_isUsbTetheringEnabled:I = 0xb

.field public static final TRANSACTION_isUseSecureKeypadEnabled:I = 0x55

.field public static final TRANSACTION_isUserMobileDataLimitAllowed:I = 0x48

.field public static final TRANSACTION_isVideoRecordAllowed:I = 0x3e

.field public static final TRANSACTION_isVpnAllowed:I = 0x2d

.field public static final TRANSACTION_isWallpaperChangeAllowed:I = 0x36

.field public static final TRANSACTION_isWearablePolicyEnabled:I = 0x81

.field public static final TRANSACTION_isWifiDirectAllowed:I = 0x42

.field public static final TRANSACTION_isWifiTetheringEnabled:I = 0xd

.field public static final TRANSACTION_preventNewAdminActivation:I = 0x75

.field public static final TRANSACTION_preventNewAdminInstallation:I = 0x73

.field public static final TRANSACTION_setAllowNonMarketApps:I = 0x2a

.field public static final TRANSACTION_setAllowedFOTAVersion:I = 0x82

.field public static final TRANSACTION_setBackgroundData:I = 0x23

.field public static final TRANSACTION_setBackup:I = 0x1a

.field public static final TRANSACTION_setBluetoothTethering:I = 0x8

.field public static final TRANSACTION_setCCMode:I = 0x6e

.field public static final TRANSACTION_setCCModeOnlyForCallerSystem:I = 0x6f

.field public static final TRANSACTION_setCamera:I = 0x1

.field public static final TRANSACTION_setCellularData:I = 0x25

.field public static final TRANSACTION_setClipboardEnabled:I = 0x1c

.field public static final TRANSACTION_setHeadphoneState:I = 0x68

.field public static final TRANSACTION_setHomeKeyState:I = 0x21

.field public static final TRANSACTION_setIrisCameraState:I = 0x86

.field public static final TRANSACTION_setKnoxDelegationEnabled:I = 0x92

.field public static final TRANSACTION_setLockScreenState:I = 0x5a

.field public static final TRANSACTION_setMicrophoneState:I = 0x3

.field public static final TRANSACTION_setMockLocation:I = 0x18

.field public static final TRANSACTION_setNonTrustedAppInstallBlock:I = 0x9f

.field public static final TRANSACTION_setScreenCapture:I = 0x14

.field public static final TRANSACTION_setSdCardState:I = 0x6

.field public static final TRANSACTION_setTethering:I = 0xe

.field public static final TRANSACTION_setUsbDebuggingEnabled:I = 0x10

.field public static final TRANSACTION_setUsbExceptionList:I = 0x8b

.field public static final TRANSACTION_setUsbKiesAvailability:I = 0xa0

.field public static final TRANSACTION_setUsbMassStorage:I = 0xa1

.field public static final TRANSACTION_setUsbMediaPlayerAvailability:I = 0x12

.field public static final TRANSACTION_setUsbTethering:I = 0xa

.field public static final TRANSACTION_setUseSecureKeypad:I = 0x54

.field public static final TRANSACTION_setWifiTethering:I = 0xc

.field public static final TRANSACTION_showRestrictionToast:I = 0xa6

.field public static final TRANSACTION_systemReady:I = 0x8d

.field public static final TRANSACTION_updateUserRestrictionsByKC:I = 0x98


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
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
    const-string v0, "com.samsung.android.knox.restriction.IRestrictionPolicy"

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
    instance-of v1, v0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9

    .line 1
    const-string v0, "com.samsung.android.knox.restriction.IRestrictionPolicy"

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
    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getConstrainedState()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :pswitch_1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 48
    .line 49
    .line 50
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :pswitch_2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    move-object v3, p1

    .line 69
    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 92
    .line 93
    .line 94
    move-object v2, p0

    .line 95
    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    .line 113
    .line 114
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->showRestrictionToast(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 127
    .line 128
    .line 129
    move-result p4

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    .line 132
    .line 133
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNewAdminInstallationEnabledAsUser(IZ)Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p4

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    .line 155
    .line 156
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->checkAdminActivationEnabled(ILjava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p4

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    .line 178
    .line 179
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :pswitch_7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 192
    .line 193
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 198
    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 200
    .line 201
    .line 202
    move-result p4

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    .line 205
    .line 206
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isCCModeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    :pswitch_8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 219
    .line 220
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 225
    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 227
    .line 228
    .line 229
    move-result p4

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    .line 232
    .line 233
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbMassStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :pswitch_9
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 246
    .line 247
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 252
    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 254
    .line 255
    .line 256
    move-result p4

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    .line 259
    .line 260
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbKiesAvailability(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 261
    .line 262
    .line 263
    move-result p0

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :pswitch_a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 273
    .line 274
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 279
    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 281
    .line 282
    .line 283
    move-result p4

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    .line 286
    .line 287
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setNonTrustedAppInstallBlock(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 288
    .line 289
    .line 290
    move-result p0

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :pswitch_b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 300
    .line 301
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 306
    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 308
    .line 309
    .line 310
    move-result p4

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    .line 313
    .line 314
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbKiesAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 315
    .line 316
    .line 317
    move-result p0

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_0

    .line 325
    .line 326
    :pswitch_c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 327
    .line 328
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 333
    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 335
    .line 336
    .line 337
    move-result p4

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    .line 340
    .line 341
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbMassStorageEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 342
    .line 343
    .line 344
    move-result p0

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    .line 359
    .line 360
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNonTrustedAppInstallBlockedAsUser(I)Z

    .line 361
    .line 362
    .line 363
    move-result p0

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_0

    .line 371
    .line 372
    :pswitch_e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 373
    .line 374
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 379
    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    .line 382
    .line 383
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNonTrustedAppInstallBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 384
    .line 385
    .line 386
    move-result p0

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_0

    .line 394
    .line 395
    :pswitch_f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 396
    .line 397
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 402
    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 404
    .line 405
    .line 406
    move-result p4

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    .line 409
    .line 410
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isActivationLockAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 411
    .line 412
    .line 413
    move-result p0

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 418
    .line 419
    .line 420
    goto/16 :goto_0

    .line 421
    .line 422
    :pswitch_10
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 423
    .line 424
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 429
    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 431
    .line 432
    .line 433
    move-result p4

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    .line 436
    .line 437
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowActivationLock(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 438
    .line 439
    .line 440
    move-result p0

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 445
    .line 446
    .line 447
    goto/16 :goto_0

    .line 448
    .line 449
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 454
    .line 455
    .line 456
    move-result p4

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    .line 459
    .line 460
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->updateUserRestrictionsByKC(Ljava/lang/String;Z)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    .line 465
    .line 466
    goto/16 :goto_0

    .line 467
    .line 468
    :pswitch_12
    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getKcActionDisabledText()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object p0

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    .line 474
    .line 475
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    goto/16 :goto_0

    .line 479
    .line 480
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    .line 486
    .line 487
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->checkIfRestrictionWasSetByKC(Ljava/lang/String;)Z

    .line 488
    .line 489
    .line 490
    move-result p0

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 495
    .line 496
    .line 497
    goto/16 :goto_0

    .line 498
    .line 499
    :pswitch_14
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 500
    .line 501
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 506
    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    .line 509
    .line 510
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isIntelligenceOnlineProcessingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 511
    .line 512
    .line 513
    move-result p0

    .line 514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    .line 516
    .line 517
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 518
    .line 519
    .line 520
    goto/16 :goto_0

    .line 521
    .line 522
    :pswitch_15
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 523
    .line 524
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 529
    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 531
    .line 532
    .line 533
    move-result p4

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    .line 536
    .line 537
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowIntelligenceOnlineProcessing(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 538
    .line 539
    .line 540
    move-result p0

    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    .line 543
    .line 544
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 545
    .line 546
    .line 547
    goto/16 :goto_0

    .line 548
    .line 549
    :pswitch_16
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 550
    .line 551
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 556
    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    .line 559
    .line 560
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 561
    .line 562
    .line 563
    move-result p0

    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    .line 566
    .line 567
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 568
    .line 569
    .line 570
    goto/16 :goto_0

    .line 571
    .line 572
    :pswitch_17
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 573
    .line 574
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object p1

    .line 578
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 579
    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 581
    .line 582
    .line 583
    move-result p4

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    .line 586
    .line 587
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setKnoxDelegationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 588
    .line 589
    .line 590
    move-result p0

    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    .line 593
    .line 594
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 595
    .line 596
    .line 597
    goto/16 :goto_0

    .line 598
    .line 599
    :pswitch_18
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 600
    .line 601
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object p1

    .line 605
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 606
    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    .line 609
    .line 610
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isLocalContactStorageAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 611
    .line 612
    .line 613
    move-result p0

    .line 614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    .line 616
    .line 617
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 618
    .line 619
    .line 620
    goto/16 :goto_0

    .line 621
    .line 622
    :pswitch_19
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 623
    .line 624
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object p1

    .line 628
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 629
    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 631
    .line 632
    .line 633
    move-result p4

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 635
    .line 636
    .line 637
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowLocalContactStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 638
    .line 639
    .line 640
    move-result p0

    .line 641
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    .line 643
    .line 644
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 645
    .line 646
    .line 647
    goto/16 :goto_0

    .line 648
    .line 649
    :pswitch_1a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 650
    .line 651
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object p1

    .line 655
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 656
    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    .line 659
    .line 660
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFaceRecognitionAllowedEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 661
    .line 662
    .line 663
    move-result p0

    .line 664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    .line 666
    .line 667
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 668
    .line 669
    .line 670
    goto/16 :goto_0

    .line 671
    .line 672
    :pswitch_1b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 673
    .line 674
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object p1

    .line 678
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 679
    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 681
    .line 682
    .line 683
    move-result p4

    .line 684
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 685
    .line 686
    .line 687
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFaceRecognitionEvenCameraBlocked(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 688
    .line 689
    .line 690
    move-result p0

    .line 691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    .line 693
    .line 694
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 695
    .line 696
    .line 697
    goto/16 :goto_0

    .line 698
    .line 699
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 700
    .line 701
    .line 702
    move-result p1

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    .line 705
    .line 706
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->systemReady(I)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    .line 711
    .line 712
    goto/16 :goto_0

    .line 713
    .line 714
    :pswitch_1d
    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getUsbExceptionList()I

    .line 715
    .line 716
    .line 717
    move-result p0

    .line 718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    .line 720
    .line 721
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    .line 723
    .line 724
    goto/16 :goto_0

    .line 725
    .line 726
    :pswitch_1e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 727
    .line 728
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object p1

    .line 732
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 733
    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 735
    .line 736
    .line 737
    move-result p4

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    .line 740
    .line 741
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbExceptionList(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 742
    .line 743
    .line 744
    move-result p0

    .line 745
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    .line 747
    .line 748
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 749
    .line 750
    .line 751
    goto/16 :goto_0

    .line 752
    .line 753
    :pswitch_1f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 754
    .line 755
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object p1

    .line 759
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 760
    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    .line 763
    .line 764
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isPowerSavingModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 765
    .line 766
    .line 767
    move-result p0

    .line 768
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    .line 770
    .line 771
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 772
    .line 773
    .line 774
    goto/16 :goto_0

    .line 775
    .line 776
    :pswitch_20
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 777
    .line 778
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    move-result-object p1

    .line 782
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 783
    .line 784
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 785
    .line 786
    .line 787
    move-result p4

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 789
    .line 790
    .line 791
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowPowerSavingMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 792
    .line 793
    .line 794
    move-result p0

    .line 795
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    .line 797
    .line 798
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 799
    .line 800
    .line 801
    goto/16 :goto_0

    .line 802
    .line 803
    :pswitch_21
    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isDataSavingAllowed()Z

    .line 804
    .line 805
    .line 806
    move-result p0

    .line 807
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    .line 809
    .line 810
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 811
    .line 812
    .line 813
    goto/16 :goto_0

    .line 814
    .line 815
    :pswitch_22
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 816
    .line 817
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object p1

    .line 821
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 822
    .line 823
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 824
    .line 825
    .line 826
    move-result p4

    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 828
    .line 829
    .line 830
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowDataSaving(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 831
    .line 832
    .line 833
    move-result p0

    .line 834
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    .line 836
    .line 837
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 838
    .line 839
    .line 840
    goto/16 :goto_0

    .line 841
    .line 842
    :pswitch_23
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 843
    .line 844
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-result-object p1

    .line 848
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 849
    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 851
    .line 852
    .line 853
    move-result p4

    .line 854
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    .line 856
    .line 857
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setIrisCameraState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 858
    .line 859
    .line 860
    move-result p0

    .line 861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    .line 863
    .line 864
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 865
    .line 866
    .line 867
    goto/16 :goto_0

    .line 868
    .line 869
    :pswitch_24
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 870
    .line 871
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    move-result-object p1

    .line 875
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 876
    .line 877
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 878
    .line 879
    .line 880
    move-result p4

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    .line 883
    .line 884
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    :pswitch_25
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 897
    .line 898
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object p1

    .line 902
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 903
    .line 904
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 905
    .line 906
    .line 907
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 908
    .line 909
    .line 910
    move-result-object p0

    .line 911
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    .line 913
    .line 914
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 915
    .line 916
    .line 917
    goto/16 :goto_0

    .line 918
    .line 919
    :pswitch_26
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 920
    .line 921
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object p1

    .line 925
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 926
    .line 927
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 928
    .line 929
    .line 930
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getAllowedFOTAVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object p0

    .line 934
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    .line 936
    .line 937
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    goto/16 :goto_0

    .line 941
    .line 942
    :pswitch_27
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 943
    .line 944
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    move-result-object p1

    .line 948
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 949
    .line 950
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object p4

    .line 954
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 955
    .line 956
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    check-cast v0, Landroid/os/Bundle;

    .line 961
    .line 962
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 963
    .line 964
    .line 965
    move-result v2

    .line 966
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 967
    .line 968
    .line 969
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setAllowedFOTAVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/Bundle;Z)Z

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
    :pswitch_28
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 990
    .line 991
    .line 992
    move-result p4

    .line 993
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 994
    .line 995
    .line 996
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isWearablePolicyEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 997
    .line 998
    .line 999
    move-result p0

    .line 1000
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1004
    .line 1005
    .line 1006
    goto/16 :goto_0

    .line 1007
    .line 1008
    :pswitch_29
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1009
    .line 1010
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    move-result-object p1

    .line 1014
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1015
    .line 1016
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1017
    .line 1018
    .line 1019
    move-result p4

    .line 1020
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1021
    .line 1022
    .line 1023
    move-result v0

    .line 1024
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1025
    .line 1026
    .line 1027
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->enableWearablePolicy(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    .line 1028
    .line 1029
    .line 1030
    move-result p0

    .line 1031
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1035
    .line 1036
    .line 1037
    goto/16 :goto_0

    .line 1038
    .line 1039
    :pswitch_2a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1040
    .line 1041
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object p1

    .line 1045
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1046
    .line 1047
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1048
    .line 1049
    .line 1050
    move-result p4

    .line 1051
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1052
    .line 1053
    .line 1054
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowScreenPinning(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1055
    .line 1056
    .line 1057
    move-result p0

    .line 1058
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1062
    .line 1063
    .line 1064
    goto/16 :goto_0

    .line 1065
    .line 1066
    :pswitch_2b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1067
    .line 1068
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object p1

    .line 1072
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1073
    .line 1074
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1075
    .line 1076
    .line 1077
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenPinningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1078
    .line 1079
    .line 1080
    move-result p0

    .line 1081
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1085
    .line 1086
    .line 1087
    goto/16 :goto_0

    .line 1088
    .line 1089
    :pswitch_2c
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
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getCCModeState(Lcom/samsung/android/knox/ContextInfo;)I

    .line 1101
    .line 1102
    .line 1103
    move-result p0

    .line 1104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1108
    .line 1109
    .line 1110
    goto/16 :goto_0

    .line 1111
    .line 1112
    :pswitch_2d
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
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1140
    .line 1141
    .line 1142
    move-result p1

    .line 1143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1144
    .line 1145
    .line 1146
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    .line 1147
    .line 1148
    .line 1149
    move-result p0

    .line 1150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1154
    .line 1155
    .line 1156
    goto/16 :goto_0

    .line 1157
    .line 1158
    :pswitch_2f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1159
    .line 1160
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1161
    .line 1162
    .line 1163
    move-result-object p1

    .line 1164
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1165
    .line 1166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1167
    .line 1168
    .line 1169
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSmartClipModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1170
    .line 1171
    .line 1172
    move-result p0

    .line 1173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1177
    .line 1178
    .line 1179
    goto/16 :goto_0

    .line 1180
    .line 1181
    :pswitch_30
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1182
    .line 1183
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    move-result-object p1

    .line 1187
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1188
    .line 1189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1190
    .line 1191
    .line 1192
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 1193
    .line 1194
    .line 1195
    move-result-object p0

    .line 1196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1200
    .line 1201
    .line 1202
    goto/16 :goto_0

    .line 1203
    .line 1204
    :pswitch_31
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1205
    .line 1206
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1207
    .line 1208
    .line 1209
    move-result-object p1

    .line 1210
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1211
    .line 1212
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1213
    .line 1214
    .line 1215
    move-result-object p4

    .line 1216
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1217
    .line 1218
    .line 1219
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->addNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 1220
    .line 1221
    .line 1222
    move-result p0

    .line 1223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1227
    .line 1228
    .line 1229
    goto/16 :goto_0

    .line 1230
    .line 1231
    :pswitch_32
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1232
    .line 1233
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    move-result-object p1

    .line 1237
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1238
    .line 1239
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1240
    .line 1241
    .line 1242
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->clearNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1243
    .line 1244
    .line 1245
    move-result p0

    .line 1246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1250
    .line 1251
    .line 1252
    goto/16 :goto_0

    .line 1253
    .line 1254
    :pswitch_33
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1255
    .line 1256
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1257
    .line 1258
    .line 1259
    move-result-object p1

    .line 1260
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1261
    .line 1262
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1263
    .line 1264
    .line 1265
    move-result p4

    .line 1266
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1267
    .line 1268
    .line 1269
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNewAdminActivationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1270
    .line 1271
    .line 1272
    move-result p0

    .line 1273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1277
    .line 1278
    .line 1279
    goto/16 :goto_0

    .line 1280
    .line 1281
    :pswitch_34
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1282
    .line 1283
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1284
    .line 1285
    .line 1286
    move-result-object p1

    .line 1287
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1288
    .line 1289
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1290
    .line 1291
    .line 1292
    move-result p4

    .line 1293
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1294
    .line 1295
    .line 1296
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->preventNewAdminActivation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1297
    .line 1298
    .line 1299
    move-result p0

    .line 1300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1304
    .line 1305
    .line 1306
    goto/16 :goto_0

    .line 1307
    .line 1308
    :pswitch_35
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1309
    .line 1310
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1311
    .line 1312
    .line 1313
    move-result-object p1

    .line 1314
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1315
    .line 1316
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1317
    .line 1318
    .line 1319
    move-result p4

    .line 1320
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1321
    .line 1322
    .line 1323
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNewAdminInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1324
    .line 1325
    .line 1326
    move-result p0

    .line 1327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1331
    .line 1332
    .line 1333
    goto/16 :goto_0

    .line 1334
    .line 1335
    :pswitch_36
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1336
    .line 1337
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1338
    .line 1339
    .line 1340
    move-result-object p1

    .line 1341
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1342
    .line 1343
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1344
    .line 1345
    .line 1346
    move-result p4

    .line 1347
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1348
    .line 1349
    .line 1350
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->preventNewAdminInstallation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1351
    .line 1352
    .line 1353
    move-result p0

    .line 1354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1355
    .line 1356
    .line 1357
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1358
    .line 1359
    .line 1360
    goto/16 :goto_0

    .line 1361
    .line 1362
    :pswitch_37
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1363
    .line 1364
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1365
    .line 1366
    .line 1367
    move-result-object p1

    .line 1368
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1369
    .line 1370
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1371
    .line 1372
    .line 1373
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isODETrustedBootVerificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1374
    .line 1375
    .line 1376
    move-result p0

    .line 1377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1381
    .line 1382
    .line 1383
    goto/16 :goto_0

    .line 1384
    .line 1385
    :pswitch_38
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1386
    .line 1387
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1388
    .line 1389
    .line 1390
    move-result-object p1

    .line 1391
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1392
    .line 1393
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1394
    .line 1395
    .line 1396
    move-result p4

    .line 1397
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1398
    .line 1399
    .line 1400
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->enableODETrustedBootVerification(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1401
    .line 1402
    .line 1403
    move-result p0

    .line 1404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1405
    .line 1406
    .line 1407
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1408
    .line 1409
    .line 1410
    goto/16 :goto_0

    .line 1411
    .line 1412
    :pswitch_39
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1413
    .line 1414
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1415
    .line 1416
    .line 1417
    move-result-object p1

    .line 1418
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1419
    .line 1420
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1421
    .line 1422
    .line 1423
    move-result p4

    .line 1424
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1425
    .line 1426
    .line 1427
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isCCModeSupported(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1428
    .line 1429
    .line 1430
    move-result p0

    .line 1431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1432
    .line 1433
    .line 1434
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1435
    .line 1436
    .line 1437
    goto/16 :goto_0

    .line 1438
    .line 1439
    :pswitch_3a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1440
    .line 1441
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1442
    .line 1443
    .line 1444
    move-result-object p1

    .line 1445
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1446
    .line 1447
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1448
    .line 1449
    .line 1450
    move-result p4

    .line 1451
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1452
    .line 1453
    .line 1454
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setCCModeOnlyForCallerSystem(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1455
    .line 1456
    .line 1457
    move-result p0

    .line 1458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1459
    .line 1460
    .line 1461
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1462
    .line 1463
    .line 1464
    goto/16 :goto_0

    .line 1465
    .line 1466
    :pswitch_3b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1467
    .line 1468
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1469
    .line 1470
    .line 1471
    move-result-object p1

    .line 1472
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1473
    .line 1474
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1475
    .line 1476
    .line 1477
    move-result p4

    .line 1478
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1479
    .line 1480
    .line 1481
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setCCMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1482
    .line 1483
    .line 1484
    move-result p0

    .line 1485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1486
    .line 1487
    .line 1488
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1489
    .line 1490
    .line 1491
    goto/16 :goto_0

    .line 1492
    .line 1493
    :pswitch_3c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1494
    .line 1495
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1496
    .line 1497
    .line 1498
    move-result-object p1

    .line 1499
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1500
    .line 1501
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1502
    .line 1503
    .line 1504
    move-result p4

    .line 1505
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1506
    .line 1507
    .line 1508
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFastEncryptionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    :pswitch_3d
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1529
    .line 1530
    .line 1531
    move-result p4

    .line 1532
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1533
    .line 1534
    .line 1535
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFastEncryption(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1536
    .line 1537
    .line 1538
    move-result p0

    .line 1539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1540
    .line 1541
    .line 1542
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1543
    .line 1544
    .line 1545
    goto/16 :goto_0

    .line 1546
    .line 1547
    :pswitch_3e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1548
    .line 1549
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1550
    .line 1551
    .line 1552
    move-result-object p1

    .line 1553
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1554
    .line 1555
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1556
    .line 1557
    .line 1558
    move-result p4

    .line 1559
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1560
    .line 1561
    .line 1562
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSDCardMoveAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1563
    .line 1564
    .line 1565
    move-result p0

    .line 1566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1567
    .line 1568
    .line 1569
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1570
    .line 1571
    .line 1572
    goto/16 :goto_0

    .line 1573
    .line 1574
    :pswitch_3f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1575
    .line 1576
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1577
    .line 1578
    .line 1579
    move-result-object p1

    .line 1580
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1581
    .line 1582
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1583
    .line 1584
    .line 1585
    move-result p4

    .line 1586
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1587
    .line 1588
    .line 1589
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSDCardMove(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1590
    .line 1591
    .line 1592
    move-result p0

    .line 1593
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1594
    .line 1595
    .line 1596
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1597
    .line 1598
    .line 1599
    goto/16 :goto_0

    .line 1600
    .line 1601
    :pswitch_40
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1602
    .line 1603
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1604
    .line 1605
    .line 1606
    move-result-object p1

    .line 1607
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1608
    .line 1609
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1610
    .line 1611
    .line 1612
    move-result p4

    .line 1613
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1614
    .line 1615
    .line 1616
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1617
    .line 1618
    .line 1619
    move-result p0

    .line 1620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1621
    .line 1622
    .line 1623
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1624
    .line 1625
    .line 1626
    goto/16 :goto_0

    .line 1627
    .line 1628
    :pswitch_41
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1629
    .line 1630
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1631
    .line 1632
    .line 1633
    move-result-object p1

    .line 1634
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1635
    .line 1636
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1637
    .line 1638
    .line 1639
    move-result p4

    .line 1640
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1641
    .line 1642
    .line 1643
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHeadphoneState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1644
    .line 1645
    .line 1646
    move-result p0

    .line 1647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1648
    .line 1649
    .line 1650
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1651
    .line 1652
    .line 1653
    goto/16 :goto_0

    .line 1654
    .line 1655
    :pswitch_42
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1656
    .line 1657
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1658
    .line 1659
    .line 1660
    move-result-object p1

    .line 1661
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1662
    .line 1663
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1664
    .line 1665
    .line 1666
    move-result p4

    .line 1667
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1668
    .line 1669
    .line 1670
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1671
    .line 1672
    .line 1673
    move-result p0

    .line 1674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1675
    .line 1676
    .line 1677
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1678
    .line 1679
    .line 1680
    goto/16 :goto_0

    .line 1681
    .line 1682
    :pswitch_43
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1683
    .line 1684
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1685
    .line 1686
    .line 1687
    move-result-object p1

    .line 1688
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1689
    .line 1690
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1691
    .line 1692
    .line 1693
    move-result p4

    .line 1694
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1695
    .line 1696
    .line 1697
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFirmwareAutoUpdate(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1698
    .line 1699
    .line 1700
    move-result p0

    .line 1701
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1702
    .line 1703
    .line 1704
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1705
    .line 1706
    .line 1707
    goto/16 :goto_0

    .line 1708
    .line 1709
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1710
    .line 1711
    .line 1712
    move-result p1

    .line 1713
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1714
    .line 1715
    .line 1716
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    .line 1717
    .line 1718
    .line 1719
    move-result p0

    .line 1720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1721
    .line 1722
    .line 1723
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1724
    .line 1725
    .line 1726
    goto/16 :goto_0

    .line 1727
    .line 1728
    :pswitch_45
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1729
    .line 1730
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1731
    .line 1732
    .line 1733
    move-result-object p1

    .line 1734
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1735
    .line 1736
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1737
    .line 1738
    .line 1739
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1740
    .line 1741
    .line 1742
    move-result p0

    .line 1743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1744
    .line 1745
    .line 1746
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1747
    .line 1748
    .line 1749
    goto/16 :goto_0

    .line 1750
    .line 1751
    :pswitch_46
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1752
    .line 1753
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1754
    .line 1755
    .line 1756
    move-result-object p1

    .line 1757
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1758
    .line 1759
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1760
    .line 1761
    .line 1762
    move-result p4

    .line 1763
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1764
    .line 1765
    .line 1766
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowGoogleAccountsAutoSync(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1767
    .line 1768
    .line 1769
    move-result p0

    .line 1770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1771
    .line 1772
    .line 1773
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1774
    .line 1775
    .line 1776
    goto/16 :goto_0

    .line 1777
    .line 1778
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1779
    .line 1780
    .line 1781
    move-result p1

    .line 1782
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1783
    .line 1784
    .line 1785
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    .line 1786
    .line 1787
    .line 1788
    move-result p0

    .line 1789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1790
    .line 1791
    .line 1792
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1793
    .line 1794
    .line 1795
    goto/16 :goto_0

    .line 1796
    .line 1797
    :pswitch_48
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1798
    .line 1799
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1800
    .line 1801
    .line 1802
    move-result-object p1

    .line 1803
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1804
    .line 1805
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1806
    .line 1807
    .line 1808
    move-result p4

    .line 1809
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1810
    .line 1811
    .line 1812
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowAirplaneMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1813
    .line 1814
    .line 1815
    move-result p0

    .line 1816
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1817
    .line 1818
    .line 1819
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1820
    .line 1821
    .line 1822
    goto/16 :goto_0

    .line 1823
    .line 1824
    :pswitch_49
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1825
    .line 1826
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1827
    .line 1828
    .line 1829
    move-result-object p1

    .line 1830
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1831
    .line 1832
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1833
    .line 1834
    .line 1835
    move-result p4

    .line 1836
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1837
    .line 1838
    .line 1839
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1840
    .line 1841
    .line 1842
    move-result p0

    .line 1843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1844
    .line 1845
    .line 1846
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1847
    .line 1848
    .line 1849
    goto/16 :goto_0

    .line 1850
    .line 1851
    :pswitch_4a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1852
    .line 1853
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1854
    .line 1855
    .line 1856
    move-result-object p1

    .line 1857
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1858
    .line 1859
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1860
    .line 1861
    .line 1862
    move-result p4

    .line 1863
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1864
    .line 1865
    .line 1866
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowDeveloperMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1867
    .line 1868
    .line 1869
    move-result p0

    .line 1870
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1871
    .line 1872
    .line 1873
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1874
    .line 1875
    .line 1876
    goto/16 :goto_0

    .line 1877
    .line 1878
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1879
    .line 1880
    .line 1881
    move-result p1

    .line 1882
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1883
    .line 1884
    .line 1885
    move-result p4

    .line 1886
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1887
    .line 1888
    .line 1889
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    .line 1890
    .line 1891
    .line 1892
    move-result p0

    .line 1893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1894
    .line 1895
    .line 1896
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1897
    .line 1898
    .line 1899
    goto/16 :goto_0

    .line 1900
    .line 1901
    :pswitch_4c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1902
    .line 1903
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1904
    .line 1905
    .line 1906
    move-result-object p1

    .line 1907
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1908
    .line 1909
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1910
    .line 1911
    .line 1912
    move-result p4

    .line 1913
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1914
    .line 1915
    .line 1916
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1917
    .line 1918
    .line 1919
    move-result p0

    .line 1920
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1921
    .line 1922
    .line 1923
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1924
    .line 1925
    .line 1926
    goto/16 :goto_0

    .line 1927
    .line 1928
    :pswitch_4d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1929
    .line 1930
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1931
    .line 1932
    .line 1933
    move-result-object p1

    .line 1934
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1935
    .line 1936
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1937
    .line 1938
    .line 1939
    move-result p4

    .line 1940
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1941
    .line 1942
    .line 1943
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFirmwareRecovery(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1944
    .line 1945
    .line 1946
    move-result p0

    .line 1947
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1948
    .line 1949
    .line 1950
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1951
    .line 1952
    .line 1953
    goto/16 :goto_0

    .line 1954
    .line 1955
    :pswitch_4e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1956
    .line 1957
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1958
    .line 1959
    .line 1960
    move-result-object p1

    .line 1961
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1962
    .line 1963
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1964
    .line 1965
    .line 1966
    move-result p4

    .line 1967
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1968
    .line 1969
    .line 1970
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isLockScreenEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1971
    .line 1972
    .line 1973
    move-result p0

    .line 1974
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1975
    .line 1976
    .line 1977
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1978
    .line 1979
    .line 1980
    goto/16 :goto_0

    .line 1981
    .line 1982
    :pswitch_4f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1983
    .line 1984
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1985
    .line 1986
    .line 1987
    move-result-object p1

    .line 1988
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1989
    .line 1990
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1991
    .line 1992
    .line 1993
    move-result p4

    .line 1994
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1995
    .line 1996
    .line 1997
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setLockScreenState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1998
    .line 1999
    .line 2000
    move-result p0

    .line 2001
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2002
    .line 2003
    .line 2004
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2005
    .line 2006
    .line 2007
    goto/16 :goto_0

    .line 2008
    .line 2009
    :pswitch_50
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2010
    .line 2011
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2012
    .line 2013
    .line 2014
    move-result-object p1

    .line 2015
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2016
    .line 2017
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2018
    .line 2019
    .line 2020
    move-result p4

    .line 2021
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2022
    .line 2023
    .line 2024
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 2025
    .line 2026
    .line 2027
    move-result p0

    .line 2028
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2029
    .line 2030
    .line 2031
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2032
    .line 2033
    .line 2034
    goto/16 :goto_0

    .line 2035
    .line 2036
    :pswitch_51
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2037
    .line 2038
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2039
    .line 2040
    .line 2041
    move-result-object p1

    .line 2042
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2043
    .line 2044
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2045
    .line 2046
    .line 2047
    move-result p4

    .line 2048
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2049
    .line 2050
    .line 2051
    move-result v0

    .line 2052
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2053
    .line 2054
    .line 2055
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowLockScreenView(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    .line 2056
    .line 2057
    .line 2058
    move-result p0

    .line 2059
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2060
    .line 2061
    .line 2062
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2063
    .line 2064
    .line 2065
    goto/16 :goto_0

    .line 2066
    .line 2067
    :pswitch_52
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2068
    .line 2069
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2070
    .line 2071
    .line 2072
    move-result-object p1

    .line 2073
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2074
    .line 2075
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2076
    .line 2077
    .line 2078
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2079
    .line 2080
    .line 2081
    move-result p0

    .line 2082
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2083
    .line 2084
    .line 2085
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2086
    .line 2087
    .line 2088
    goto/16 :goto_0

    .line 2089
    .line 2090
    :pswitch_53
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2091
    .line 2092
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2093
    .line 2094
    .line 2095
    move-result-object p1

    .line 2096
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2097
    .line 2098
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2099
    .line 2100
    .line 2101
    move-result p4

    .line 2102
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2103
    .line 2104
    .line 2105
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSafeMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2106
    .line 2107
    .line 2108
    move-result p0

    .line 2109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2110
    .line 2111
    .line 2112
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2113
    .line 2114
    .line 2115
    goto/16 :goto_0

    .line 2116
    .line 2117
    :pswitch_54
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2118
    .line 2119
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2120
    .line 2121
    .line 2122
    move-result-object p1

    .line 2123
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2124
    .line 2125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2126
    .line 2127
    .line 2128
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2129
    .line 2130
    .line 2131
    move-result p0

    .line 2132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2133
    .line 2134
    .line 2135
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2136
    .line 2137
    .line 2138
    goto/16 :goto_0

    .line 2139
    .line 2140
    :pswitch_55
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2141
    .line 2142
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2143
    .line 2144
    .line 2145
    move-result-object p1

    .line 2146
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2147
    .line 2148
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2149
    .line 2150
    .line 2151
    move-result p4

    .line 2152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2153
    .line 2154
    .line 2155
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUseSecureKeypad(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2156
    .line 2157
    .line 2158
    move-result p0

    .line 2159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2160
    .line 2161
    .line 2162
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2163
    .line 2164
    .line 2165
    goto/16 :goto_0

    .line 2166
    .line 2167
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2168
    .line 2169
    .line 2170
    move-result p1

    .line 2171
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2172
    .line 2173
    .line 2174
    move-result p4

    .line 2175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2176
    .line 2177
    .line 2178
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isShareListAllowedAsUser(IZ)Z

    .line 2179
    .line 2180
    .line 2181
    move-result p0

    .line 2182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2183
    .line 2184
    .line 2185
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2186
    .line 2187
    .line 2188
    goto/16 :goto_0

    .line 2189
    .line 2190
    :pswitch_57
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2191
    .line 2192
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2193
    .line 2194
    .line 2195
    move-result-object p1

    .line 2196
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2197
    .line 2198
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2199
    .line 2200
    .line 2201
    move-result p4

    .line 2202
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2203
    .line 2204
    .line 2205
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2206
    .line 2207
    .line 2208
    move-result p0

    .line 2209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2210
    .line 2211
    .line 2212
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2213
    .line 2214
    .line 2215
    goto/16 :goto_0

    .line 2216
    .line 2217
    :pswitch_58
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2218
    .line 2219
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2220
    .line 2221
    .line 2222
    move-result-object p1

    .line 2223
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2224
    .line 2225
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2226
    .line 2227
    .line 2228
    move-result p4

    .line 2229
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2230
    .line 2231
    .line 2232
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowShareList(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2233
    .line 2234
    .line 2235
    move-result p0

    .line 2236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2237
    .line 2238
    .line 2239
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2240
    .line 2241
    .line 2242
    goto/16 :goto_0

    .line 2243
    .line 2244
    :pswitch_59
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2245
    .line 2246
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2247
    .line 2248
    .line 2249
    move-result-object p1

    .line 2250
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2251
    .line 2252
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2253
    .line 2254
    .line 2255
    move-result p4

    .line 2256
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2257
    .line 2258
    .line 2259
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2260
    .line 2261
    .line 2262
    move-result p0

    .line 2263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2264
    .line 2265
    .line 2266
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2267
    .line 2268
    .line 2269
    goto/16 :goto_0

    .line 2270
    .line 2271
    :pswitch_5a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2272
    .line 2273
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2274
    .line 2275
    .line 2276
    move-result-object p1

    .line 2277
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2278
    .line 2279
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2280
    .line 2281
    .line 2282
    move-result p4

    .line 2283
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2284
    .line 2285
    .line 2286
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowUsbHostStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2287
    .line 2288
    .line 2289
    move-result p0

    .line 2290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2291
    .line 2292
    .line 2293
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2294
    .line 2295
    .line 2296
    goto/16 :goto_0

    .line 2297
    .line 2298
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2299
    .line 2300
    .line 2301
    move-result p1

    .line 2302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2303
    .line 2304
    .line 2305
    move-result p4

    .line 2306
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2307
    .line 2308
    .line 2309
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    .line 2310
    .line 2311
    .line 2312
    move-result p0

    .line 2313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2314
    .line 2315
    .line 2316
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2317
    .line 2318
    .line 2319
    goto/16 :goto_0

    .line 2320
    .line 2321
    :pswitch_5c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2322
    .line 2323
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2324
    .line 2325
    .line 2326
    move-result-object p1

    .line 2327
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2328
    .line 2329
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2330
    .line 2331
    .line 2332
    move-result p4

    .line 2333
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2334
    .line 2335
    .line 2336
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2337
    .line 2338
    .line 2339
    move-result p0

    .line 2340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2341
    .line 2342
    .line 2343
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2344
    .line 2345
    .line 2346
    goto/16 :goto_0

    .line 2347
    .line 2348
    :pswitch_5d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2349
    .line 2350
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2351
    .line 2352
    .line 2353
    move-result-object p1

    .line 2354
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2355
    .line 2356
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2357
    .line 2358
    .line 2359
    move-result p4

    .line 2360
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2361
    .line 2362
    .line 2363
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSVoice(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2364
    .line 2365
    .line 2366
    move-result p0

    .line 2367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2368
    .line 2369
    .line 2370
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2371
    .line 2372
    .line 2373
    goto/16 :goto_0

    .line 2374
    .line 2375
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2376
    .line 2377
    .line 2378
    move-result p1

    .line 2379
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2380
    .line 2381
    .line 2382
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    .line 2383
    .line 2384
    .line 2385
    move-result p0

    .line 2386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2387
    .line 2388
    .line 2389
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2390
    .line 2391
    .line 2392
    goto/16 :goto_0

    .line 2393
    .line 2394
    :pswitch_5f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2395
    .line 2396
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2397
    .line 2398
    .line 2399
    move-result-object p1

    .line 2400
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2401
    .line 2402
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2403
    .line 2404
    .line 2405
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2406
    .line 2407
    .line 2408
    move-result p0

    .line 2409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2410
    .line 2411
    .line 2412
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2413
    .line 2414
    .line 2415
    goto/16 :goto_0

    .line 2416
    .line 2417
    :pswitch_60
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2418
    .line 2419
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2420
    .line 2421
    .line 2422
    move-result-object p1

    .line 2423
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2424
    .line 2425
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2426
    .line 2427
    .line 2428
    move-result p4

    .line 2429
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2430
    .line 2431
    .line 2432
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowClipboardShare(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2433
    .line 2434
    .line 2435
    move-result p0

    .line 2436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2437
    .line 2438
    .line 2439
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2440
    .line 2441
    .line 2442
    goto/16 :goto_0

    .line 2443
    .line 2444
    :pswitch_61
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2445
    .line 2446
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2447
    .line 2448
    .line 2449
    move-result-object p1

    .line 2450
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2451
    .line 2452
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2453
    .line 2454
    .line 2455
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUserMobileDataLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2456
    .line 2457
    .line 2458
    move-result p0

    .line 2459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2460
    .line 2461
    .line 2462
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2463
    .line 2464
    .line 2465
    goto/16 :goto_0

    .line 2466
    .line 2467
    :pswitch_62
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2468
    .line 2469
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2470
    .line 2471
    .line 2472
    move-result-object p1

    .line 2473
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2474
    .line 2475
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2476
    .line 2477
    .line 2478
    move-result p4

    .line 2479
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2480
    .line 2481
    .line 2482
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowUserMobileDataLimit(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2483
    .line 2484
    .line 2485
    move-result p0

    .line 2486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2487
    .line 2488
    .line 2489
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2490
    .line 2491
    .line 2492
    goto/16 :goto_0

    .line 2493
    .line 2494
    :pswitch_63
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2495
    .line 2496
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2497
    .line 2498
    .line 2499
    move-result-object p1

    .line 2500
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2501
    .line 2502
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2503
    .line 2504
    .line 2505
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2506
    .line 2507
    .line 2508
    move-result p0

    .line 2509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2510
    .line 2511
    .line 2512
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2513
    .line 2514
    .line 2515
    goto/16 :goto_0

    .line 2516
    .line 2517
    :pswitch_64
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2518
    .line 2519
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2520
    .line 2521
    .line 2522
    move-result-object p1

    .line 2523
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2524
    .line 2525
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2526
    .line 2527
    .line 2528
    move-result p4

    .line 2529
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2530
    .line 2531
    .line 2532
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowKillingActivitiesOnLeave(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2533
    .line 2534
    .line 2535
    move-result p0

    .line 2536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2537
    .line 2538
    .line 2539
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2540
    .line 2541
    .line 2542
    goto/16 :goto_0

    .line 2543
    .line 2544
    :pswitch_65
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2545
    .line 2546
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2547
    .line 2548
    .line 2549
    move-result-object p1

    .line 2550
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2551
    .line 2552
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2553
    .line 2554
    .line 2555
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isBackgroundProcessLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2556
    .line 2557
    .line 2558
    move-result p0

    .line 2559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2560
    .line 2561
    .line 2562
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2563
    .line 2564
    .line 2565
    goto/16 :goto_0

    .line 2566
    .line 2567
    :pswitch_66
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2568
    .line 2569
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2570
    .line 2571
    .line 2572
    move-result-object p1

    .line 2573
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2574
    .line 2575
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2576
    .line 2577
    .line 2578
    move-result p4

    .line 2579
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2580
    .line 2581
    .line 2582
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowBackgroundProcessLimit(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2583
    .line 2584
    .line 2585
    move-result p0

    .line 2586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2587
    .line 2588
    .line 2589
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2590
    .line 2591
    .line 2592
    goto/16 :goto_0

    .line 2593
    .line 2594
    :pswitch_67
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2595
    .line 2596
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2597
    .line 2598
    .line 2599
    move-result-object p1

    .line 2600
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2601
    .line 2602
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2603
    .line 2604
    .line 2605
    move-result p4

    .line 2606
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2607
    .line 2608
    .line 2609
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2610
    .line 2611
    .line 2612
    move-result p0

    .line 2613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2614
    .line 2615
    .line 2616
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2617
    .line 2618
    .line 2619
    goto/16 :goto_0

    .line 2620
    .line 2621
    :pswitch_68
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2622
    .line 2623
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2624
    .line 2625
    .line 2626
    move-result-object p1

    .line 2627
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2628
    .line 2629
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2630
    .line 2631
    .line 2632
    move-result p4

    .line 2633
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2634
    .line 2635
    .line 2636
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowWifiDirect(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2637
    .line 2638
    .line 2639
    move-result p0

    .line 2640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2641
    .line 2642
    .line 2643
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2644
    .line 2645
    .line 2646
    goto/16 :goto_0

    .line 2647
    .line 2648
    :pswitch_69
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2649
    .line 2650
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2651
    .line 2652
    .line 2653
    move-result-object p1

    .line 2654
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2655
    .line 2656
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2657
    .line 2658
    .line 2659
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isStopSystemAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2660
    .line 2661
    .line 2662
    move-result p0

    .line 2663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2664
    .line 2665
    .line 2666
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2667
    .line 2668
    .line 2669
    goto/16 :goto_0

    .line 2670
    .line 2671
    :pswitch_6a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2672
    .line 2673
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2674
    .line 2675
    .line 2676
    move-result-object p1

    .line 2677
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2678
    .line 2679
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2680
    .line 2681
    .line 2682
    move-result p4

    .line 2683
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2684
    .line 2685
    .line 2686
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStopSystemApp(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2687
    .line 2688
    .line 2689
    move-result p0

    .line 2690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2691
    .line 2692
    .line 2693
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2694
    .line 2695
    .line 2696
    goto/16 :goto_0

    .line 2697
    .line 2698
    :pswitch_6b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2699
    .line 2700
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2701
    .line 2702
    .line 2703
    move-result-object p1

    .line 2704
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2705
    .line 2706
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2707
    .line 2708
    .line 2709
    move-result p4

    .line 2710
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2711
    .line 2712
    .line 2713
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2714
    .line 2715
    .line 2716
    move-result p0

    .line 2717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2718
    .line 2719
    .line 2720
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2721
    .line 2722
    .line 2723
    goto/16 :goto_0

    .line 2724
    .line 2725
    :pswitch_6c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2726
    .line 2727
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2728
    .line 2729
    .line 2730
    move-result-object p1

    .line 2731
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2732
    .line 2733
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2734
    .line 2735
    .line 2736
    move-result p4

    .line 2737
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2738
    .line 2739
    .line 2740
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowVideoRecord(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2741
    .line 2742
    .line 2743
    move-result p0

    .line 2744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2745
    .line 2746
    .line 2747
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2748
    .line 2749
    .line 2750
    goto/16 :goto_0

    .line 2751
    .line 2752
    :pswitch_6d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2753
    .line 2754
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2755
    .line 2756
    .line 2757
    move-result-object p1

    .line 2758
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2759
    .line 2760
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2761
    .line 2762
    .line 2763
    move-result p4

    .line 2764
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2765
    .line 2766
    .line 2767
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2768
    .line 2769
    .line 2770
    move-result p0

    .line 2771
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2772
    .line 2773
    .line 2774
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2775
    .line 2776
    .line 2777
    goto/16 :goto_0

    .line 2778
    .line 2779
    :pswitch_6e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2780
    .line 2781
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2782
    .line 2783
    .line 2784
    move-result-object p1

    .line 2785
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2786
    .line 2787
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2788
    .line 2789
    .line 2790
    move-result p4

    .line 2791
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2792
    .line 2793
    .line 2794
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowAudioRecord(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2795
    .line 2796
    .line 2797
    move-result p0

    .line 2798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2799
    .line 2800
    .line 2801
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2802
    .line 2803
    .line 2804
    goto/16 :goto_0

    .line 2805
    .line 2806
    :pswitch_6f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2807
    .line 2808
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2809
    .line 2810
    .line 2811
    move-result-object p1

    .line 2812
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2813
    .line 2814
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2815
    .line 2816
    .line 2817
    move-result p4

    .line 2818
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2819
    .line 2820
    .line 2821
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2822
    .line 2823
    .line 2824
    move-result p0

    .line 2825
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2826
    .line 2827
    .line 2828
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2829
    .line 2830
    .line 2831
    goto/16 :goto_0

    .line 2832
    .line 2833
    :pswitch_70
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2834
    .line 2835
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2836
    .line 2837
    .line 2838
    move-result-object p1

    .line 2839
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2840
    .line 2841
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2842
    .line 2843
    .line 2844
    move-result p4

    .line 2845
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2846
    .line 2847
    .line 2848
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowPowerOff(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2849
    .line 2850
    .line 2851
    move-result p0

    .line 2852
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2853
    .line 2854
    .line 2855
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2856
    .line 2857
    .line 2858
    goto/16 :goto_0

    .line 2859
    .line 2860
    :pswitch_71
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2861
    .line 2862
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2863
    .line 2864
    .line 2865
    move-result-object p1

    .line 2866
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2867
    .line 2868
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2869
    .line 2870
    .line 2871
    move-result p4

    .line 2872
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2873
    .line 2874
    .line 2875
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isStatusBarExpansionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2876
    .line 2877
    .line 2878
    move-result p0

    .line 2879
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2880
    .line 2881
    .line 2882
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2883
    .line 2884
    .line 2885
    goto/16 :goto_0

    .line 2886
    .line 2887
    :pswitch_72
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2888
    .line 2889
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2890
    .line 2891
    .line 2892
    move-result-object p1

    .line 2893
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2894
    .line 2895
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2896
    .line 2897
    .line 2898
    move-result p4

    .line 2899
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2900
    .line 2901
    .line 2902
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2903
    .line 2904
    .line 2905
    move-result p0

    .line 2906
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2907
    .line 2908
    .line 2909
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2910
    .line 2911
    .line 2912
    goto/16 :goto_0

    .line 2913
    .line 2914
    :pswitch_73
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2915
    .line 2916
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2917
    .line 2918
    .line 2919
    move-result-object p1

    .line 2920
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2921
    .line 2922
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2923
    .line 2924
    .line 2925
    move-result p4

    .line 2926
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2927
    .line 2928
    .line 2929
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2930
    .line 2931
    .line 2932
    move-result p0

    .line 2933
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2934
    .line 2935
    .line 2936
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2937
    .line 2938
    .line 2939
    goto/16 :goto_0

    .line 2940
    .line 2941
    :pswitch_74
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2942
    .line 2943
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2944
    .line 2945
    .line 2946
    move-result-object p1

    .line 2947
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2948
    .line 2949
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2950
    .line 2951
    .line 2952
    move-result p4

    .line 2953
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2954
    .line 2955
    .line 2956
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowWallpaperChange(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2957
    .line 2958
    .line 2959
    move-result p0

    .line 2960
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2961
    .line 2962
    .line 2963
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2964
    .line 2965
    .line 2966
    goto/16 :goto_0

    .line 2967
    .line 2968
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2969
    .line 2970
    .line 2971
    move-result p1

    .line 2972
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2973
    .line 2974
    .line 2975
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleCrashReportAllowedAsUser(I)Z

    .line 2976
    .line 2977
    .line 2978
    move-result p0

    .line 2979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2980
    .line 2981
    .line 2982
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2983
    .line 2984
    .line 2985
    goto/16 :goto_0

    .line 2986
    .line 2987
    :pswitch_76
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2988
    .line 2989
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2990
    .line 2991
    .line 2992
    move-result-object p1

    .line 2993
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2994
    .line 2995
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2996
    .line 2997
    .line 2998
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleCrashReportAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2999
    .line 3000
    .line 3001
    move-result p0

    .line 3002
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3003
    .line 3004
    .line 3005
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3006
    .line 3007
    .line 3008
    goto/16 :goto_0

    .line 3009
    .line 3010
    :pswitch_77
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3011
    .line 3012
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3013
    .line 3014
    .line 3015
    move-result-object p1

    .line 3016
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3017
    .line 3018
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3019
    .line 3020
    .line 3021
    move-result p4

    .line 3022
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3023
    .line 3024
    .line 3025
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowGoogleCrashReport(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3026
    .line 3027
    .line 3028
    move-result p0

    .line 3029
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3030
    .line 3031
    .line 3032
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3033
    .line 3034
    .line 3035
    goto/16 :goto_0

    .line 3036
    .line 3037
    :pswitch_78
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3038
    .line 3039
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3040
    .line 3041
    .line 3042
    move-result-object p1

    .line 3043
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3044
    .line 3045
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3046
    .line 3047
    .line 3048
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3049
    .line 3050
    .line 3051
    move-result p0

    .line 3052
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3053
    .line 3054
    .line 3055
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3056
    .line 3057
    .line 3058
    goto/16 :goto_0

    .line 3059
    .line 3060
    :pswitch_79
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3061
    .line 3062
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3063
    .line 3064
    .line 3065
    move-result-object p1

    .line 3066
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3067
    .line 3068
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3069
    .line 3070
    .line 3071
    move-result p4

    .line 3072
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3073
    .line 3074
    .line 3075
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSDCardWrite(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3076
    .line 3077
    .line 3078
    move-result p0

    .line 3079
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3080
    .line 3081
    .line 3082
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3083
    .line 3084
    .line 3085
    goto/16 :goto_0

    .line 3086
    .line 3087
    :pswitch_7a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3088
    .line 3089
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3090
    .line 3091
    .line 3092
    move-result-object p1

    .line 3093
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3094
    .line 3095
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3096
    .line 3097
    .line 3098
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3099
    .line 3100
    .line 3101
    move-result p0

    .line 3102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3103
    .line 3104
    .line 3105
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3106
    .line 3107
    .line 3108
    goto/16 :goto_0

    .line 3109
    .line 3110
    :pswitch_7b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3111
    .line 3112
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3113
    .line 3114
    .line 3115
    move-result-object p1

    .line 3116
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3117
    .line 3118
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3119
    .line 3120
    .line 3121
    move-result p4

    .line 3122
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3123
    .line 3124
    .line 3125
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowOTAUpgrade(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3126
    .line 3127
    .line 3128
    move-result p0

    .line 3129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3130
    .line 3131
    .line 3132
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3133
    .line 3134
    .line 3135
    goto/16 :goto_0

    .line 3136
    .line 3137
    :pswitch_7c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3138
    .line 3139
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3140
    .line 3141
    .line 3142
    move-result-object p1

    .line 3143
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3144
    .line 3145
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3146
    .line 3147
    .line 3148
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isVpnAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3149
    .line 3150
    .line 3151
    move-result p0

    .line 3152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3153
    .line 3154
    .line 3155
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3156
    .line 3157
    .line 3158
    goto/16 :goto_0

    .line 3159
    .line 3160
    :pswitch_7d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3161
    .line 3162
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3163
    .line 3164
    .line 3165
    move-result-object p1

    .line 3166
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3167
    .line 3168
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3169
    .line 3170
    .line 3171
    move-result p4

    .line 3172
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3173
    .line 3174
    .line 3175
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowVpn(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3176
    .line 3177
    .line 3178
    move-result p0

    .line 3179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3180
    .line 3181
    .line 3182
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3183
    .line 3184
    .line 3185
    goto/16 :goto_0

    .line 3186
    .line 3187
    :pswitch_7e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3188
    .line 3189
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3190
    .line 3191
    .line 3192
    move-result-object p1

    .line 3193
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3194
    .line 3195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3196
    .line 3197
    .line 3198
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3199
    .line 3200
    .line 3201
    move-result p0

    .line 3202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3203
    .line 3204
    .line 3205
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3206
    .line 3207
    .line 3208
    goto/16 :goto_0

    .line 3209
    .line 3210
    :pswitch_7f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3211
    .line 3212
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3213
    .line 3214
    .line 3215
    move-result-object p1

    .line 3216
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3217
    .line 3218
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3219
    .line 3220
    .line 3221
    move-result p4

    .line 3222
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3223
    .line 3224
    .line 3225
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setAllowNonMarketApps(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3226
    .line 3227
    .line 3228
    move-result p0

    .line 3229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3230
    .line 3231
    .line 3232
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3233
    .line 3234
    .line 3235
    goto/16 :goto_0

    .line 3236
    .line 3237
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3238
    .line 3239
    .line 3240
    move-result p1

    .line 3241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3242
    .line 3243
    .line 3244
    move-result p4

    .line 3245
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3246
    .line 3247
    .line 3248
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    .line 3249
    .line 3250
    .line 3251
    move-result p0

    .line 3252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3253
    .line 3254
    .line 3255
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3256
    .line 3257
    .line 3258
    goto/16 :goto_0

    .line 3259
    .line 3260
    :pswitch_81
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3261
    .line 3262
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3263
    .line 3264
    .line 3265
    move-result-object p1

    .line 3266
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3267
    .line 3268
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3269
    .line 3270
    .line 3271
    move-result p4

    .line 3272
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3273
    .line 3274
    .line 3275
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3276
    .line 3277
    .line 3278
    move-result p0

    .line 3279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3280
    .line 3281
    .line 3282
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3283
    .line 3284
    .line 3285
    goto/16 :goto_0

    .line 3286
    .line 3287
    :pswitch_82
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3288
    .line 3289
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3290
    .line 3291
    .line 3292
    move-result-object p1

    .line 3293
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3294
    .line 3295
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3296
    .line 3297
    .line 3298
    move-result p4

    .line 3299
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3300
    .line 3301
    .line 3302
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3303
    .line 3304
    .line 3305
    move-result p0

    .line 3306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3307
    .line 3308
    .line 3309
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3310
    .line 3311
    .line 3312
    goto/16 :goto_0

    .line 3313
    .line 3314
    :pswitch_83
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3315
    .line 3316
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3317
    .line 3318
    .line 3319
    move-result-object p1

    .line 3320
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3321
    .line 3322
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3323
    .line 3324
    .line 3325
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3326
    .line 3327
    .line 3328
    move-result p0

    .line 3329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3330
    .line 3331
    .line 3332
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3333
    .line 3334
    .line 3335
    goto/16 :goto_0

    .line 3336
    .line 3337
    :pswitch_84
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3338
    .line 3339
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3340
    .line 3341
    .line 3342
    move-result-object p1

    .line 3343
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3344
    .line 3345
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3346
    .line 3347
    .line 3348
    move-result p4

    .line 3349
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3350
    .line 3351
    .line 3352
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setCellularData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3353
    .line 3354
    .line 3355
    move-result p0

    .line 3356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3357
    .line 3358
    .line 3359
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3360
    .line 3361
    .line 3362
    goto/16 :goto_0

    .line 3363
    .line 3364
    :pswitch_85
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3365
    .line 3366
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3367
    .line 3368
    .line 3369
    move-result-object p1

    .line 3370
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3371
    .line 3372
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3373
    .line 3374
    .line 3375
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3376
    .line 3377
    .line 3378
    move-result p0

    .line 3379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3380
    .line 3381
    .line 3382
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3383
    .line 3384
    .line 3385
    goto/16 :goto_0

    .line 3386
    .line 3387
    :pswitch_86
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3388
    .line 3389
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3390
    .line 3391
    .line 3392
    move-result-object p1

    .line 3393
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3394
    .line 3395
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3396
    .line 3397
    .line 3398
    move-result p4

    .line 3399
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3400
    .line 3401
    .line 3402
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setBackgroundData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3403
    .line 3404
    .line 3405
    move-result p0

    .line 3406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3407
    .line 3408
    .line 3409
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3410
    .line 3411
    .line 3412
    goto/16 :goto_0

    .line 3413
    .line 3414
    :pswitch_87
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3415
    .line 3416
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3417
    .line 3418
    .line 3419
    move-result-object p1

    .line 3420
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3421
    .line 3422
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3423
    .line 3424
    .line 3425
    move-result p4

    .line 3426
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3427
    .line 3428
    .line 3429
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3430
    .line 3431
    .line 3432
    move-result p0

    .line 3433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3434
    .line 3435
    .line 3436
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3437
    .line 3438
    .line 3439
    goto/16 :goto_0

    .line 3440
    .line 3441
    :pswitch_88
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3442
    .line 3443
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3444
    .line 3445
    .line 3446
    move-result-object p1

    .line 3447
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3448
    .line 3449
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3450
    .line 3451
    .line 3452
    move-result p4

    .line 3453
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3454
    .line 3455
    .line 3456
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3457
    .line 3458
    .line 3459
    move-result p0

    .line 3460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3461
    .line 3462
    .line 3463
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3464
    .line 3465
    .line 3466
    goto/16 :goto_0

    .line 3467
    .line 3468
    :pswitch_89
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3469
    .line 3470
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3471
    .line 3472
    .line 3473
    move-result-object p1

    .line 3474
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3475
    .line 3476
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3477
    .line 3478
    .line 3479
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3480
    .line 3481
    .line 3482
    move-result p0

    .line 3483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3484
    .line 3485
    .line 3486
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3487
    .line 3488
    .line 3489
    goto/16 :goto_0

    .line 3490
    .line 3491
    :pswitch_8a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3492
    .line 3493
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3494
    .line 3495
    .line 3496
    move-result-object p1

    .line 3497
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3498
    .line 3499
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3500
    .line 3501
    .line 3502
    move-result p4

    .line 3503
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3504
    .line 3505
    .line 3506
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowFactoryReset(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3507
    .line 3508
    .line 3509
    move-result p0

    .line 3510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3511
    .line 3512
    .line 3513
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3514
    .line 3515
    .line 3516
    goto/16 :goto_0

    .line 3517
    .line 3518
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3519
    .line 3520
    .line 3521
    move-result p1

    .line 3522
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3523
    .line 3524
    .line 3525
    move-result p4

    .line 3526
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3527
    .line 3528
    .line 3529
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    .line 3530
    .line 3531
    .line 3532
    move-result p0

    .line 3533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3534
    .line 3535
    .line 3536
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3537
    .line 3538
    .line 3539
    goto/16 :goto_0

    .line 3540
    .line 3541
    :pswitch_8c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3542
    .line 3543
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3544
    .line 3545
    .line 3546
    move-result-object p1

    .line 3547
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3548
    .line 3549
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3550
    .line 3551
    .line 3552
    move-result p4

    .line 3553
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3554
    .line 3555
    .line 3556
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3557
    .line 3558
    .line 3559
    move-result p0

    .line 3560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3561
    .line 3562
    .line 3563
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3564
    .line 3565
    .line 3566
    goto/16 :goto_0

    .line 3567
    .line 3568
    :pswitch_8d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3569
    .line 3570
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3571
    .line 3572
    .line 3573
    move-result-object p1

    .line 3574
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3575
    .line 3576
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3577
    .line 3578
    .line 3579
    move-result p4

    .line 3580
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3581
    .line 3582
    .line 3583
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setClipboardEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3584
    .line 3585
    .line 3586
    move-result p0

    .line 3587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3588
    .line 3589
    .line 3590
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3591
    .line 3592
    .line 3593
    goto/16 :goto_0

    .line 3594
    .line 3595
    :pswitch_8e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3596
    .line 3597
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3598
    .line 3599
    .line 3600
    move-result-object p1

    .line 3601
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3602
    .line 3603
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3604
    .line 3605
    .line 3606
    move-result p4

    .line 3607
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3608
    .line 3609
    .line 3610
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3611
    .line 3612
    .line 3613
    move-result p0

    .line 3614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3615
    .line 3616
    .line 3617
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3618
    .line 3619
    .line 3620
    goto/16 :goto_0

    .line 3621
    .line 3622
    :pswitch_8f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3623
    .line 3624
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3625
    .line 3626
    .line 3627
    move-result-object p1

    .line 3628
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3629
    .line 3630
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3631
    .line 3632
    .line 3633
    move-result p4

    .line 3634
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3635
    .line 3636
    .line 3637
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setBackup(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3638
    .line 3639
    .line 3640
    move-result p0

    .line 3641
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3642
    .line 3643
    .line 3644
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3645
    .line 3646
    .line 3647
    goto/16 :goto_0

    .line 3648
    .line 3649
    :pswitch_90
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3650
    .line 3651
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3652
    .line 3653
    .line 3654
    move-result-object p1

    .line 3655
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3656
    .line 3657
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3658
    .line 3659
    .line 3660
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3661
    .line 3662
    .line 3663
    move-result p0

    .line 3664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3665
    .line 3666
    .line 3667
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3668
    .line 3669
    .line 3670
    goto/16 :goto_0

    .line 3671
    .line 3672
    :pswitch_91
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3673
    .line 3674
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3675
    .line 3676
    .line 3677
    move-result-object p1

    .line 3678
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3679
    .line 3680
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3681
    .line 3682
    .line 3683
    move-result p4

    .line 3684
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3685
    .line 3686
    .line 3687
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setMockLocation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3688
    .line 3689
    .line 3690
    move-result p0

    .line 3691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3692
    .line 3693
    .line 3694
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3695
    .line 3696
    .line 3697
    goto/16 :goto_0

    .line 3698
    .line 3699
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3700
    .line 3701
    .line 3702
    move-result p1

    .line 3703
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3704
    .line 3705
    .line 3706
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    .line 3707
    .line 3708
    .line 3709
    move-result p0

    .line 3710
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3711
    .line 3712
    .line 3713
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3714
    .line 3715
    .line 3716
    goto/16 :goto_0

    .line 3717
    .line 3718
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3719
    .line 3720
    .line 3721
    move-result p1

    .line 3722
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3723
    .line 3724
    .line 3725
    move-result p4

    .line 3726
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3727
    .line 3728
    .line 3729
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z

    .line 3730
    .line 3731
    .line 3732
    move-result p0

    .line 3733
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3734
    .line 3735
    .line 3736
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3737
    .line 3738
    .line 3739
    goto/16 :goto_0

    .line 3740
    .line 3741
    :pswitch_94
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3742
    .line 3743
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3744
    .line 3745
    .line 3746
    move-result-object p1

    .line 3747
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3748
    .line 3749
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3750
    .line 3751
    .line 3752
    move-result p4

    .line 3753
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3754
    .line 3755
    .line 3756
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3757
    .line 3758
    .line 3759
    move-result p0

    .line 3760
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3761
    .line 3762
    .line 3763
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3764
    .line 3765
    .line 3766
    goto/16 :goto_0

    .line 3767
    .line 3768
    :pswitch_95
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3769
    .line 3770
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3771
    .line 3772
    .line 3773
    move-result-object p1

    .line 3774
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3775
    .line 3776
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3777
    .line 3778
    .line 3779
    move-result p4

    .line 3780
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3781
    .line 3782
    .line 3783
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setScreenCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3784
    .line 3785
    .line 3786
    move-result p0

    .line 3787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3788
    .line 3789
    .line 3790
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3791
    .line 3792
    .line 3793
    goto/16 :goto_0

    .line 3794
    .line 3795
    :pswitch_96
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3796
    .line 3797
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3798
    .line 3799
    .line 3800
    move-result-object p1

    .line 3801
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3802
    .line 3803
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3804
    .line 3805
    .line 3806
    move-result p4

    .line 3807
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3808
    .line 3809
    .line 3810
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3811
    .line 3812
    .line 3813
    move-result p0

    .line 3814
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3815
    .line 3816
    .line 3817
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3818
    .line 3819
    .line 3820
    goto/16 :goto_0

    .line 3821
    .line 3822
    :pswitch_97
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3823
    .line 3824
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3825
    .line 3826
    .line 3827
    move-result-object p1

    .line 3828
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3829
    .line 3830
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3831
    .line 3832
    .line 3833
    move-result p4

    .line 3834
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3835
    .line 3836
    .line 3837
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbMediaPlayerAvailability(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3838
    .line 3839
    .line 3840
    move-result p0

    .line 3841
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3842
    .line 3843
    .line 3844
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3845
    .line 3846
    .line 3847
    goto/16 :goto_0

    .line 3848
    .line 3849
    :pswitch_98
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3850
    .line 3851
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3852
    .line 3853
    .line 3854
    move-result-object p1

    .line 3855
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3856
    .line 3857
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3858
    .line 3859
    .line 3860
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3861
    .line 3862
    .line 3863
    move-result p0

    .line 3864
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3865
    .line 3866
    .line 3867
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3868
    .line 3869
    .line 3870
    goto/16 :goto_0

    .line 3871
    .line 3872
    :pswitch_99
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3873
    .line 3874
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3875
    .line 3876
    .line 3877
    move-result-object p1

    .line 3878
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3879
    .line 3880
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3881
    .line 3882
    .line 3883
    move-result p4

    .line 3884
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3885
    .line 3886
    .line 3887
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3888
    .line 3889
    .line 3890
    move-result p0

    .line 3891
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3892
    .line 3893
    .line 3894
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3895
    .line 3896
    .line 3897
    goto/16 :goto_0

    .line 3898
    .line 3899
    :pswitch_9a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3900
    .line 3901
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3902
    .line 3903
    .line 3904
    move-result-object p1

    .line 3905
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3906
    .line 3907
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3908
    .line 3909
    .line 3910
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3911
    .line 3912
    .line 3913
    move-result p0

    .line 3914
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3915
    .line 3916
    .line 3917
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3918
    .line 3919
    .line 3920
    goto/16 :goto_0

    .line 3921
    .line 3922
    :pswitch_9b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3923
    .line 3924
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3925
    .line 3926
    .line 3927
    move-result-object p1

    .line 3928
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3929
    .line 3930
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3931
    .line 3932
    .line 3933
    move-result p4

    .line 3934
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3935
    .line 3936
    .line 3937
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3938
    .line 3939
    .line 3940
    move-result p0

    .line 3941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3942
    .line 3943
    .line 3944
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3945
    .line 3946
    .line 3947
    goto/16 :goto_0

    .line 3948
    .line 3949
    :pswitch_9c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3950
    .line 3951
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3952
    .line 3953
    .line 3954
    move-result-object p1

    .line 3955
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3956
    .line 3957
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3958
    .line 3959
    .line 3960
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 3961
    .line 3962
    .line 3963
    move-result p0

    .line 3964
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3965
    .line 3966
    .line 3967
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3968
    .line 3969
    .line 3970
    goto/16 :goto_0

    .line 3971
    .line 3972
    :pswitch_9d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3973
    .line 3974
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 3975
    .line 3976
    .line 3977
    move-result-object p1

    .line 3978
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 3979
    .line 3980
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 3981
    .line 3982
    .line 3983
    move-result p4

    .line 3984
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3985
    .line 3986
    .line 3987
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setWifiTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3988
    .line 3989
    .line 3990
    move-result p0

    .line 3991
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3992
    .line 3993
    .line 3994
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3995
    .line 3996
    .line 3997
    goto/16 :goto_0

    .line 3998
    .line 3999
    :pswitch_9e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4000
    .line 4001
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4002
    .line 4003
    .line 4004
    move-result-object p1

    .line 4005
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4006
    .line 4007
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4008
    .line 4009
    .line 4010
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 4011
    .line 4012
    .line 4013
    move-result p0

    .line 4014
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4015
    .line 4016
    .line 4017
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4018
    .line 4019
    .line 4020
    goto/16 :goto_0

    .line 4021
    .line 4022
    :pswitch_9f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4023
    .line 4024
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4025
    .line 4026
    .line 4027
    move-result-object p1

    .line 4028
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4029
    .line 4030
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4031
    .line 4032
    .line 4033
    move-result p4

    .line 4034
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4035
    .line 4036
    .line 4037
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUsbTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 4038
    .line 4039
    .line 4040
    move-result p0

    .line 4041
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4042
    .line 4043
    .line 4044
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4045
    .line 4046
    .line 4047
    goto/16 :goto_0

    .line 4048
    .line 4049
    :pswitch_a0
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4050
    .line 4051
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4052
    .line 4053
    .line 4054
    move-result-object p1

    .line 4055
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4056
    .line 4057
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4058
    .line 4059
    .line 4060
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 4061
    .line 4062
    .line 4063
    move-result p0

    .line 4064
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4065
    .line 4066
    .line 4067
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4068
    .line 4069
    .line 4070
    goto/16 :goto_0

    .line 4071
    .line 4072
    :pswitch_a1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4073
    .line 4074
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4075
    .line 4076
    .line 4077
    move-result-object p1

    .line 4078
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4079
    .line 4080
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4081
    .line 4082
    .line 4083
    move-result p4

    .line 4084
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4085
    .line 4086
    .line 4087
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setBluetoothTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 4088
    .line 4089
    .line 4090
    move-result p0

    .line 4091
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4092
    .line 4093
    .line 4094
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4095
    .line 4096
    .line 4097
    goto/16 :goto_0

    .line 4098
    .line 4099
    :pswitch_a2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4100
    .line 4101
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4102
    .line 4103
    .line 4104
    move-result-object p1

    .line 4105
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4106
    .line 4107
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4108
    .line 4109
    .line 4110
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 4111
    .line 4112
    .line 4113
    move-result p0

    .line 4114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4115
    .line 4116
    .line 4117
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4118
    .line 4119
    .line 4120
    goto/16 :goto_0

    .line 4121
    .line 4122
    :pswitch_a3
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4123
    .line 4124
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4125
    .line 4126
    .line 4127
    move-result-object p1

    .line 4128
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4129
    .line 4130
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4131
    .line 4132
    .line 4133
    move-result p4

    .line 4134
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4135
    .line 4136
    .line 4137
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setSdCardState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 4138
    .line 4139
    .line 4140
    move-result p0

    .line 4141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4142
    .line 4143
    .line 4144
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4145
    .line 4146
    .line 4147
    goto/16 :goto_0

    .line 4148
    .line 4149
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4150
    .line 4151
    .line 4152
    move-result p1

    .line 4153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4154
    .line 4155
    .line 4156
    move-result p4

    .line 4157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4158
    .line 4159
    .line 4160
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    .line 4161
    .line 4162
    .line 4163
    move-result p0

    .line 4164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4165
    .line 4166
    .line 4167
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4168
    .line 4169
    .line 4170
    goto :goto_0

    .line 4171
    :pswitch_a5
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4172
    .line 4173
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4174
    .line 4175
    .line 4176
    move-result-object p1

    .line 4177
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4178
    .line 4179
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4180
    .line 4181
    .line 4182
    move-result p4

    .line 4183
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4184
    .line 4185
    .line 4186
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 4187
    .line 4188
    .line 4189
    move-result p0

    .line 4190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4191
    .line 4192
    .line 4193
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4194
    .line 4195
    .line 4196
    goto :goto_0

    .line 4197
    :pswitch_a6
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4198
    .line 4199
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4200
    .line 4201
    .line 4202
    move-result-object p1

    .line 4203
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4204
    .line 4205
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4206
    .line 4207
    .line 4208
    move-result p4

    .line 4209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4210
    .line 4211
    .line 4212
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setMicrophoneState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 4213
    .line 4214
    .line 4215
    move-result p0

    .line 4216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4217
    .line 4218
    .line 4219
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4220
    .line 4221
    .line 4222
    goto :goto_0

    .line 4223
    :pswitch_a7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4224
    .line 4225
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4226
    .line 4227
    .line 4228
    move-result-object p1

    .line 4229
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4230
    .line 4231
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4232
    .line 4233
    .line 4234
    move-result p4

    .line 4235
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4236
    .line 4237
    .line 4238
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 4239
    .line 4240
    .line 4241
    move-result p0

    .line 4242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4243
    .line 4244
    .line 4245
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4246
    .line 4247
    .line 4248
    goto :goto_0

    .line 4249
    :pswitch_a8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4250
    .line 4251
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 4252
    .line 4253
    .line 4254
    move-result-object p1

    .line 4255
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 4256
    .line 4257
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 4258
    .line 4259
    .line 4260
    move-result p4

    .line 4261
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4262
    .line 4263
    .line 4264
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setCamera(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 4265
    .line 4266
    .line 4267
    move-result p0

    .line 4268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4269
    .line 4270
    .line 4271
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4272
    .line 4273
    .line 4274
    :goto_0
    return v1

    .line 4275
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4276
    .line 4277
    .line 4278
    return v1

    .line 4279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
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
