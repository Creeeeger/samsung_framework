.class public abstract Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_addRequiredPasswordPattern:I = 0x57

.field public static final TRANSACTION_clearResetPasswordToken:I = 0x52

.field public static final TRANSACTION_deleteAllRestrictions:I = 0x4

.field public static final TRANSACTION_enforcePwdChange:I = 0x10

.field public static final TRANSACTION_excludeExternalStorageForFailedPasswordsWipe:I = 0x25

.field public static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x47

.field public static final TRANSACTION_getCurrentFailedPasswordAttemptsInternal:I = 0x48

.field public static final TRANSACTION_getForbiddenStrings:I = 0x17

.field public static final TRANSACTION_getKeyguardDisabledFeatures:I = 0x4f

.field public static final TRANSACTION_getKeyguardDisabledFeaturesInternal:I = 0x55

.field public static final TRANSACTION_getMaximumCharacterOccurences:I = 0x19

.field public static final TRANSACTION_getMaximumCharacterSequenceLength:I = 0x1f

.field public static final TRANSACTION_getMaximumFailedPasswordsForDisable:I = 0x13

.field public static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x4a

.field public static final TRANSACTION_getMaximumNumericSequenceLength:I = 0x15

.field public static final TRANSACTION_getMaximumTimeToLock:I = 0x4d

.field public static final TRANSACTION_getMinimumCharacterChangeLength:I = 0x21

.field public static final TRANSACTION_getPasswordChangeTimeout:I = 0xd

.field public static final TRANSACTION_getPasswordExpiration:I = 0x45

.field public static final TRANSACTION_getPasswordExpirationTimeout:I = 0x44

.field public static final TRANSACTION_getPasswordHistoryLength:I = 0x42

.field public static final TRANSACTION_getPasswordLockDelay:I = 0x2

.field public static final TRANSACTION_getPasswordMinimumLength:I = 0x34

.field public static final TRANSACTION_getPasswordMinimumLetters:I = 0x3a

.field public static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x38

.field public static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x3e

.field public static final TRANSACTION_getPasswordMinimumNumeric:I = 0x3c

.field public static final TRANSACTION_getPasswordMinimumSymbols:I = 0x40

.field public static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x36

.field public static final TRANSACTION_getPasswordQuality:I = 0x32

.field public static final TRANSACTION_getRequiredPwdPatternRestrictions:I = 0x5

.field public static final TRANSACTION_getSupportedBiometricAuthentications:I = 0x2c

.field public static final TRANSACTION_hasForbiddenCharacterSequence:I = 0x7

.field public static final TRANSACTION_hasForbiddenData:I = 0x9

.field public static final TRANSACTION_hasForbiddenNumericSequence:I = 0x6

.field public static final TRANSACTION_hasForbiddenStringDistance:I = 0x8

.field public static final TRANSACTION_hasMaxRepeatedCharacters:I = 0xa

.field public static final TRANSACTION_isActivePasswordSufficient:I = 0x46

.field public static final TRANSACTION_isBiometricAuthenticationEnabled:I = 0x28

.field public static final TRANSACTION_isBiometricAuthenticationEnabledAsUser:I = 0x29

.field public static final TRANSACTION_isChangeRequested:I = 0xe

.field public static final TRANSACTION_isChangeRequestedAsUser:I = 0xf

.field public static final TRANSACTION_isChangeRequestedForInner:I = 0x1c

.field public static final TRANSACTION_isClearLockAllowed:I = 0x58

.field public static final TRANSACTION_isExternalStorageForFailedPasswordsWipeExcluded:I = 0x26

.field public static final TRANSACTION_isMDMDisabledFP:I = 0x2a

.field public static final TRANSACTION_isMultifactorAuthenticationEnabled:I = 0x30

.field public static final TRANSACTION_isPasswordPatternMatched:I = 0xb

.field public static final TRANSACTION_isPasswordTableExist:I = 0x2b

.field public static final TRANSACTION_isPasswordVisibilityEnabled:I = 0x23

.field public static final TRANSACTION_isPasswordVisibilityEnabledAsUser:I = 0x24

.field public static final TRANSACTION_isResetPasswordTokenActive:I = 0x53

.field public static final TRANSACTION_isScreenLockPatternVisibilityEnabled:I = 0x1b

.field public static final TRANSACTION_lock:I = 0x2d

.field public static final TRANSACTION_reboot:I = 0x56

.field public static final TRANSACTION_resetPassword:I = 0x4b

.field public static final TRANSACTION_resetPasswordWithToken:I = 0x50

.field public static final TRANSACTION_setBiometricAuthenticationEnabled:I = 0x27

.field public static final TRANSACTION_setForbiddenStrings:I = 0x16

.field public static final TRANSACTION_setKeyguardDisabledFeatures:I = 0x4e

.field public static final TRANSACTION_setKeyguardDisabledFeaturesInternal:I = 0x54

.field public static final TRANSACTION_setMaximumCharacterOccurrences:I = 0x18

.field public static final TRANSACTION_setMaximumCharacterSequenceLength:I = 0x1e

.field public static final TRANSACTION_setMaximumFailedPasswordsForDisable:I = 0x12

.field public static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x49

.field public static final TRANSACTION_setMaximumNumericSequenceLength:I = 0x14

.field public static final TRANSACTION_setMaximumTimeToLock:I = 0x4c

.field public static final TRANSACTION_setMinimumCharacterChangeLength:I = 0x20

.field public static final TRANSACTION_setMultifactorAuthenticationEnabled:I = 0x2f

.field public static final TRANSACTION_setPasswordChangeTimeout:I = 0xc

.field public static final TRANSACTION_setPasswordExpirationTimeout:I = 0x43

.field public static final TRANSACTION_setPasswordHistoryLength:I = 0x41

.field public static final TRANSACTION_setPasswordLockDelay:I = 0x1

.field public static final TRANSACTION_setPasswordMinimumLength:I = 0x33

.field public static final TRANSACTION_setPasswordMinimumLetters:I = 0x39

.field public static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x37

.field public static final TRANSACTION_setPasswordMinimumNonLetter:I = 0x3d

.field public static final TRANSACTION_setPasswordMinimumNumeric:I = 0x3b

.field public static final TRANSACTION_setPasswordMinimumSymbols:I = 0x3f

.field public static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x35

.field public static final TRANSACTION_setPasswordQuality:I = 0x31

.field public static final TRANSACTION_setPasswordVisibilityEnabled:I = 0x22

.field public static final TRANSACTION_setPwdChangeRequested:I = 0x11

.field public static final TRANSACTION_setPwdChangeRequestedForInner:I = 0x1d

.field public static final TRANSACTION_setRequiredPasswordPattern:I = 0x3

.field public static final TRANSACTION_setResetPasswordToken:I = 0x51

.field public static final TRANSACTION_setScreenLockPatternVisibilityEnabled:I = 0x1a

.field public static final TRANSACTION_setTrustAgentConfiguration:I = 0x59

.field public static final TRANSACTION_unlock:I = 0x2e


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.samsung.android.knox.devicesecurity.IPasswordPolicy"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
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
    const-string v0, "com.samsung.android.knox.devicesecurity.IPasswordPolicy"

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
    instance-of v1, v0, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8

    .line 1
    const-string v0, "com.samsung.android.knox.devicesecurity.IPasswordPolicy"

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
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    .line 37
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    check-cast p4, Landroid/content/ComponentName;

    .line 42
    .line 43
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/content/ComponentName;

    .line 50
    .line 51
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 52
    .line 53
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/os/PersistableBundle;

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 60
    .line 61
    .line 62
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setTrustAgentConfiguration(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :pswitch_1
    invoke-interface {p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isClearLockAllowed()Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :pswitch_2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p4

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 95
    .line 96
    .line 97
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->addRequiredPasswordPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :pswitch_3
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 110
    .line 111
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 116
    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p4

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    .line 123
    .line 124
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->reboot(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

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
    :pswitch_4
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 133
    .line 134
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Landroid/content/ComponentName;

    .line 139
    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 141
    .line 142
    .line 143
    move-result p4

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    .line 146
    .line 147
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getKeyguardDisabledFeaturesInternal(Landroid/content/ComponentName;I)I

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
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 160
    .line 161
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Landroid/content/ComponentName;

    .line 166
    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 168
    .line 169
    .line 170
    move-result p4

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    .line 177
    .line 178
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setKeyguardDisabledFeaturesInternal(Landroid/content/ComponentName;II)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :pswitch_6
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 187
    .line 188
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 193
    .line 194
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 195
    .line 196
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p4

    .line 200
    check-cast p4, Landroid/content/ComponentName;

    .line 201
    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    .line 204
    .line 205
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isResetPasswordTokenActive(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    .line 206
    .line 207
    .line 208
    move-result p0

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :pswitch_7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 218
    .line 219
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 224
    .line 225
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 226
    .line 227
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p4

    .line 231
    check-cast p4, Landroid/content/ComponentName;

    .line 232
    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    .line 235
    .line 236
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->clearResetPasswordToken(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    .line 237
    .line 238
    .line 239
    move-result p0

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :pswitch_8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 249
    .line 250
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 255
    .line 256
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 257
    .line 258
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object p4

    .line 262
    check-cast p4, Landroid/content/ComponentName;

    .line 263
    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    .line 270
    .line 271
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setResetPasswordToken(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;[B)Z

    .line 272
    .line 273
    .line 274
    move-result p0

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :pswitch_9
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 284
    .line 285
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    move-object v3, p1

    .line 290
    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    .line 291
    .line 292
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 293
    .line 294
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    move-object v4, p1

    .line 299
    check-cast v4, Landroid/content/ComponentName;

    .line 300
    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 310
    .line 311
    .line 312
    move-result v7

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    .line 315
    .line 316
    move-object v2, p0

    .line 317
    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->resetPasswordWithToken(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Ljava/lang/String;[BI)Z

    .line 318
    .line 319
    .line 320
    move-result p0

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :pswitch_a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 330
    .line 331
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 336
    .line 337
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 338
    .line 339
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object p4

    .line 343
    check-cast p4, Landroid/content/ComponentName;

    .line 344
    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    .line 347
    .line 348
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getKeyguardDisabledFeatures(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    .line 349
    .line 350
    .line 351
    move-result p0

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    .line 357
    .line 358
    goto/16 :goto_0

    .line 359
    .line 360
    :pswitch_b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 361
    .line 362
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 367
    .line 368
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 369
    .line 370
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object p4

    .line 374
    check-cast p4, Landroid/content/ComponentName;

    .line 375
    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    .line 382
    .line 383
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setKeyguardDisabledFeatures(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    .line 388
    .line 389
    goto/16 :goto_0

    .line 390
    .line 391
    :pswitch_c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 392
    .line 393
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 398
    .line 399
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 400
    .line 401
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object p4

    .line 405
    check-cast p4, Landroid/content/ComponentName;

    .line 406
    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    .line 409
    .line 410
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumTimeToLock(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)J

    .line 411
    .line 412
    .line 413
    move-result-wide p0

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 418
    .line 419
    .line 420
    goto/16 :goto_0

    .line 421
    .line 422
    :pswitch_d
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
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 431
    .line 432
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object p4

    .line 436
    check-cast p4, Landroid/content/ComponentName;

    .line 437
    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 439
    .line 440
    .line 441
    move-result-wide v2

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    .line 444
    .line 445
    invoke-interface {p0, p1, p4, v2, v3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumTimeToLock(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;J)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_0

    .line 452
    .line 453
    :pswitch_e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 454
    .line 455
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 460
    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object p4

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    .line 471
    .line 472
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->resetPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Z

    .line 473
    .line 474
    .line 475
    move-result p0

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    .line 478
    .line 479
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_0

    .line 483
    .line 484
    :pswitch_f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 485
    .line 486
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 491
    .line 492
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 493
    .line 494
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object p4

    .line 498
    check-cast p4, Landroid/content/ComponentName;

    .line 499
    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    .line 502
    .line 503
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    .line 504
    .line 505
    .line 506
    move-result p0

    .line 507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    .line 509
    .line 510
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    .line 512
    .line 513
    goto/16 :goto_0

    .line 514
    .line 515
    :pswitch_10
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 516
    .line 517
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object p1

    .line 521
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 522
    .line 523
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 524
    .line 525
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object p4

    .line 529
    check-cast p4, Landroid/content/ComponentName;

    .line 530
    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    .line 537
    .line 538
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    .line 543
    .line 544
    goto/16 :goto_0

    .line 545
    .line 546
    :pswitch_11
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 547
    .line 548
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object p1

    .line 552
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 553
    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    .line 556
    .line 557
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getCurrentFailedPasswordAttemptsInternal(Lcom/samsung/android/knox/ContextInfo;)I

    .line 558
    .line 559
    .line 560
    move-result p0

    .line 561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    .line 563
    .line 564
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    .line 566
    .line 567
    goto/16 :goto_0

    .line 568
    .line 569
    :pswitch_12
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 570
    .line 571
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object p1

    .line 575
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 576
    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    .line 579
    .line 580
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getCurrentFailedPasswordAttempts(Lcom/samsung/android/knox/ContextInfo;)I

    .line 581
    .line 582
    .line 583
    move-result p0

    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    .line 586
    .line 587
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    .line 589
    .line 590
    goto/16 :goto_0

    .line 591
    .line 592
    :pswitch_13
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 593
    .line 594
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object p1

    .line 598
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 599
    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    .line 602
    .line 603
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isActivePasswordSufficient(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 604
    .line 605
    .line 606
    move-result p0

    .line 607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    .line 609
    .line 610
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 611
    .line 612
    .line 613
    goto/16 :goto_0

    .line 614
    .line 615
    :pswitch_14
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 616
    .line 617
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object p1

    .line 621
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 622
    .line 623
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 624
    .line 625
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object p4

    .line 629
    check-cast p4, Landroid/content/ComponentName;

    .line 630
    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    .line 633
    .line 634
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordExpiration(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)J

    .line 635
    .line 636
    .line 637
    move-result-wide p0

    .line 638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    .line 640
    .line 641
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 642
    .line 643
    .line 644
    goto/16 :goto_0

    .line 645
    .line 646
    :pswitch_15
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 647
    .line 648
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object p1

    .line 652
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 653
    .line 654
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 655
    .line 656
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object p4

    .line 660
    check-cast p4, Landroid/content/ComponentName;

    .line 661
    .line 662
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 663
    .line 664
    .line 665
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordExpirationTimeout(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)J

    .line 666
    .line 667
    .line 668
    move-result-wide p0

    .line 669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    .line 671
    .line 672
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 673
    .line 674
    .line 675
    goto/16 :goto_0

    .line 676
    .line 677
    :pswitch_16
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 678
    .line 679
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object p1

    .line 683
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 684
    .line 685
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 686
    .line 687
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object p4

    .line 691
    check-cast p4, Landroid/content/ComponentName;

    .line 692
    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 694
    .line 695
    .line 696
    move-result-wide v2

    .line 697
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    .line 699
    .line 700
    invoke-interface {p0, p1, p4, v2, v3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordExpirationTimeout(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;J)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    .line 705
    .line 706
    goto/16 :goto_0

    .line 707
    .line 708
    :pswitch_17
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 709
    .line 710
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object p1

    .line 714
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 715
    .line 716
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 717
    .line 718
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object p4

    .line 722
    check-cast p4, Landroid/content/ComponentName;

    .line 723
    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    .line 726
    .line 727
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordHistoryLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    .line 728
    .line 729
    .line 730
    move-result p0

    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    .line 733
    .line 734
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    .line 736
    .line 737
    goto/16 :goto_0

    .line 738
    .line 739
    :pswitch_18
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 740
    .line 741
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object p1

    .line 745
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 746
    .line 747
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 748
    .line 749
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object p4

    .line 753
    check-cast p4, Landroid/content/ComponentName;

    .line 754
    .line 755
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 756
    .line 757
    .line 758
    move-result v0

    .line 759
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    .line 761
    .line 762
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordHistoryLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    .line 767
    .line 768
    goto/16 :goto_0

    .line 769
    .line 770
    :pswitch_19
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 771
    .line 772
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object p1

    .line 776
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 777
    .line 778
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 779
    .line 780
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    move-result-object p4

    .line 784
    check-cast p4, Landroid/content/ComponentName;

    .line 785
    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    .line 788
    .line 789
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordMinimumSymbols(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    .line 790
    .line 791
    .line 792
    move-result p0

    .line 793
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    .line 795
    .line 796
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    .line 798
    .line 799
    goto/16 :goto_0

    .line 800
    .line 801
    :pswitch_1a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 802
    .line 803
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object p1

    .line 807
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 808
    .line 809
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 810
    .line 811
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object p4

    .line 815
    check-cast p4, Landroid/content/ComponentName;

    .line 816
    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 818
    .line 819
    .line 820
    move-result v0

    .line 821
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    .line 823
    .line 824
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumSymbols(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    .line 829
    .line 830
    goto/16 :goto_0

    .line 831
    .line 832
    :pswitch_1b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 833
    .line 834
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object p1

    .line 838
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 839
    .line 840
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 841
    .line 842
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object p4

    .line 846
    check-cast p4, Landroid/content/ComponentName;

    .line 847
    .line 848
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 849
    .line 850
    .line 851
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordMinimumNonLetter(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    .line 852
    .line 853
    .line 854
    move-result p0

    .line 855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    .line 857
    .line 858
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    .line 860
    .line 861
    goto/16 :goto_0

    .line 862
    .line 863
    :pswitch_1c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 864
    .line 865
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object p1

    .line 869
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 870
    .line 871
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 872
    .line 873
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    move-result-object p4

    .line 877
    check-cast p4, Landroid/content/ComponentName;

    .line 878
    .line 879
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 880
    .line 881
    .line 882
    move-result v0

    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    .line 885
    .line 886
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumNonLetter(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    .line 891
    .line 892
    goto/16 :goto_0

    .line 893
    .line 894
    :pswitch_1d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 895
    .line 896
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object p1

    .line 900
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 901
    .line 902
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 903
    .line 904
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    move-result-object p4

    .line 908
    check-cast p4, Landroid/content/ComponentName;

    .line 909
    .line 910
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    .line 912
    .line 913
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordMinimumNumeric(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    .line 914
    .line 915
    .line 916
    move-result p0

    .line 917
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    .line 919
    .line 920
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    .line 922
    .line 923
    goto/16 :goto_0

    .line 924
    .line 925
    :pswitch_1e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 926
    .line 927
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    move-result-object p1

    .line 931
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 932
    .line 933
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 934
    .line 935
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 936
    .line 937
    .line 938
    move-result-object p4

    .line 939
    check-cast p4, Landroid/content/ComponentName;

    .line 940
    .line 941
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 942
    .line 943
    .line 944
    move-result v0

    .line 945
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 946
    .line 947
    .line 948
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumNumeric(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    .line 953
    .line 954
    goto/16 :goto_0

    .line 955
    .line 956
    :pswitch_1f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 957
    .line 958
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    move-result-object p1

    .line 962
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 963
    .line 964
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 965
    .line 966
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    move-result-object p4

    .line 970
    check-cast p4, Landroid/content/ComponentName;

    .line 971
    .line 972
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    .line 974
    .line 975
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordMinimumLetters(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    .line 976
    .line 977
    .line 978
    move-result p0

    .line 979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    .line 981
    .line 982
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 983
    .line 984
    .line 985
    goto/16 :goto_0

    .line 986
    .line 987
    :pswitch_20
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 988
    .line 989
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 990
    .line 991
    .line 992
    move-result-object p1

    .line 993
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 994
    .line 995
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 996
    .line 997
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-result-object p4

    .line 1001
    check-cast p4, Landroid/content/ComponentName;

    .line 1002
    .line 1003
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1004
    .line 1005
    .line 1006
    move-result v0

    .line 1007
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1008
    .line 1009
    .line 1010
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumLetters(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    .line 1015
    .line 1016
    goto/16 :goto_0

    .line 1017
    .line 1018
    :pswitch_21
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1019
    .line 1020
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object p1

    .line 1024
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1025
    .line 1026
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1027
    .line 1028
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    move-result-object p4

    .line 1032
    check-cast p4, Landroid/content/ComponentName;

    .line 1033
    .line 1034
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1035
    .line 1036
    .line 1037
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordMinimumLowerCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    .line 1038
    .line 1039
    .line 1040
    move-result p0

    .line 1041
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    .line 1046
    .line 1047
    goto/16 :goto_0

    .line 1048
    .line 1049
    :pswitch_22
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1050
    .line 1051
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    move-result-object p1

    .line 1055
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1056
    .line 1057
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1058
    .line 1059
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1060
    .line 1061
    .line 1062
    move-result-object p4

    .line 1063
    check-cast p4, Landroid/content/ComponentName;

    .line 1064
    .line 1065
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1066
    .line 1067
    .line 1068
    move-result v0

    .line 1069
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1070
    .line 1071
    .line 1072
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumLowerCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    .line 1077
    .line 1078
    goto/16 :goto_0

    .line 1079
    .line 1080
    :pswitch_23
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1081
    .line 1082
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    move-result-object p1

    .line 1086
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1087
    .line 1088
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1089
    .line 1090
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1091
    .line 1092
    .line 1093
    move-result-object p4

    .line 1094
    check-cast p4, Landroid/content/ComponentName;

    .line 1095
    .line 1096
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1097
    .line 1098
    .line 1099
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordMinimumUpperCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    .line 1100
    .line 1101
    .line 1102
    move-result p0

    .line 1103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1107
    .line 1108
    .line 1109
    goto/16 :goto_0

    .line 1110
    .line 1111
    :pswitch_24
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1112
    .line 1113
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1114
    .line 1115
    .line 1116
    move-result-object p1

    .line 1117
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1118
    .line 1119
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1120
    .line 1121
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1122
    .line 1123
    .line 1124
    move-result-object p4

    .line 1125
    check-cast p4, Landroid/content/ComponentName;

    .line 1126
    .line 1127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1128
    .line 1129
    .line 1130
    move-result v0

    .line 1131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1132
    .line 1133
    .line 1134
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumUpperCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    .line 1139
    .line 1140
    goto/16 :goto_0

    .line 1141
    .line 1142
    :pswitch_25
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1143
    .line 1144
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1145
    .line 1146
    .line 1147
    move-result-object p1

    .line 1148
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1149
    .line 1150
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1151
    .line 1152
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1153
    .line 1154
    .line 1155
    move-result-object p4

    .line 1156
    check-cast p4, Landroid/content/ComponentName;

    .line 1157
    .line 1158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1159
    .line 1160
    .line 1161
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordMinimumLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    .line 1162
    .line 1163
    .line 1164
    move-result p0

    .line 1165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1169
    .line 1170
    .line 1171
    goto/16 :goto_0

    .line 1172
    .line 1173
    :pswitch_26
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1174
    .line 1175
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    move-result-object p1

    .line 1179
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1180
    .line 1181
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1182
    .line 1183
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    move-result-object p4

    .line 1187
    check-cast p4, Landroid/content/ComponentName;

    .line 1188
    .line 1189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1190
    .line 1191
    .line 1192
    move-result v0

    .line 1193
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1194
    .line 1195
    .line 1196
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1200
    .line 1201
    .line 1202
    goto/16 :goto_0

    .line 1203
    .line 1204
    :pswitch_27
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
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1213
    .line 1214
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1215
    .line 1216
    .line 1217
    move-result-object p4

    .line 1218
    check-cast p4, Landroid/content/ComponentName;

    .line 1219
    .line 1220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1221
    .line 1222
    .line 1223
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordQuality(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    .line 1224
    .line 1225
    .line 1226
    move-result p0

    .line 1227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    .line 1232
    .line 1233
    goto/16 :goto_0

    .line 1234
    .line 1235
    :pswitch_28
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1236
    .line 1237
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1238
    .line 1239
    .line 1240
    move-result-object p1

    .line 1241
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1242
    .line 1243
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1244
    .line 1245
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1246
    .line 1247
    .line 1248
    move-result-object p4

    .line 1249
    check-cast p4, Landroid/content/ComponentName;

    .line 1250
    .line 1251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1252
    .line 1253
    .line 1254
    move-result v0

    .line 1255
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1256
    .line 1257
    .line 1258
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordQuality(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V

    .line 1259
    .line 1260
    .line 1261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    .line 1263
    .line 1264
    goto/16 :goto_0

    .line 1265
    .line 1266
    :pswitch_29
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1267
    .line 1268
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1269
    .line 1270
    .line 1271
    move-result-object p1

    .line 1272
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1273
    .line 1274
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1275
    .line 1276
    .line 1277
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1278
    .line 1279
    .line 1280
    move-result p0

    .line 1281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1285
    .line 1286
    .line 1287
    goto/16 :goto_0

    .line 1288
    .line 1289
    :pswitch_2a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1290
    .line 1291
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1292
    .line 1293
    .line 1294
    move-result-object p1

    .line 1295
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1296
    .line 1297
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1298
    .line 1299
    .line 1300
    move-result p4

    .line 1301
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1302
    .line 1303
    .line 1304
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1305
    .line 1306
    .line 1307
    move-result p0

    .line 1308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1312
    .line 1313
    .line 1314
    goto/16 :goto_0

    .line 1315
    .line 1316
    :pswitch_2b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1317
    .line 1318
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1319
    .line 1320
    .line 1321
    move-result-object p1

    .line 1322
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1323
    .line 1324
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1325
    .line 1326
    .line 1327
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->unlock(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1328
    .line 1329
    .line 1330
    move-result p0

    .line 1331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1335
    .line 1336
    .line 1337
    goto/16 :goto_0

    .line 1338
    .line 1339
    :pswitch_2c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1340
    .line 1341
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1342
    .line 1343
    .line 1344
    move-result-object p1

    .line 1345
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1346
    .line 1347
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1348
    .line 1349
    .line 1350
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->lock(Lcom/samsung/android/knox/ContextInfo;)Z

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
    :pswitch_2d
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
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getSupportedBiometricAuthentications(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/Map;

    .line 1374
    .line 1375
    .line 1376
    move-result-object p0

    .line 1377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1381
    .line 1382
    .line 1383
    goto/16 :goto_0

    .line 1384
    .line 1385
    :pswitch_2e
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
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1394
    .line 1395
    .line 1396
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isPasswordTableExist(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1397
    .line 1398
    .line 1399
    move-result p0

    .line 1400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1401
    .line 1402
    .line 1403
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1404
    .line 1405
    .line 1406
    goto/16 :goto_0

    .line 1407
    .line 1408
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1409
    .line 1410
    .line 1411
    move-result p1

    .line 1412
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1413
    .line 1414
    .line 1415
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isMDMDisabledFP(I)Z

    .line 1416
    .line 1417
    .line 1418
    move-result p0

    .line 1419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1420
    .line 1421
    .line 1422
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1423
    .line 1424
    .line 1425
    goto/16 :goto_0

    .line 1426
    .line 1427
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1428
    .line 1429
    .line 1430
    move-result p1

    .line 1431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1432
    .line 1433
    .line 1434
    move-result p4

    .line 1435
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1436
    .line 1437
    .line 1438
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    .line 1439
    .line 1440
    .line 1441
    move-result p0

    .line 1442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1446
    .line 1447
    .line 1448
    goto/16 :goto_0

    .line 1449
    .line 1450
    :pswitch_31
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1451
    .line 1452
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1453
    .line 1454
    .line 1455
    move-result-object p1

    .line 1456
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1457
    .line 1458
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1459
    .line 1460
    .line 1461
    move-result p4

    .line 1462
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1463
    .line 1464
    .line 1465
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 1466
    .line 1467
    .line 1468
    move-result p0

    .line 1469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1470
    .line 1471
    .line 1472
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1473
    .line 1474
    .line 1475
    goto/16 :goto_0

    .line 1476
    .line 1477
    :pswitch_32
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1478
    .line 1479
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1480
    .line 1481
    .line 1482
    move-result-object p1

    .line 1483
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1484
    .line 1485
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1486
    .line 1487
    .line 1488
    move-result p4

    .line 1489
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1490
    .line 1491
    .line 1492
    move-result v0

    .line 1493
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1494
    .line 1495
    .line 1496
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    .line 1497
    .line 1498
    .line 1499
    move-result p0

    .line 1500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1504
    .line 1505
    .line 1506
    goto/16 :goto_0

    .line 1507
    .line 1508
    :pswitch_33
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1509
    .line 1510
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1511
    .line 1512
    .line 1513
    move-result-object p1

    .line 1514
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1515
    .line 1516
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1517
    .line 1518
    .line 1519
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1520
    .line 1521
    .line 1522
    move-result p0

    .line 1523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1524
    .line 1525
    .line 1526
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1527
    .line 1528
    .line 1529
    goto/16 :goto_0

    .line 1530
    .line 1531
    :pswitch_34
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1532
    .line 1533
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1534
    .line 1535
    .line 1536
    move-result-object p1

    .line 1537
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1538
    .line 1539
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1540
    .line 1541
    .line 1542
    move-result p4

    .line 1543
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1544
    .line 1545
    .line 1546
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->excludeExternalStorageForFailedPasswordsWipe(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1547
    .line 1548
    .line 1549
    move-result p0

    .line 1550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1554
    .line 1555
    .line 1556
    goto/16 :goto_0

    .line 1557
    .line 1558
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1559
    .line 1560
    .line 1561
    move-result p1

    .line 1562
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1563
    .line 1564
    .line 1565
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    .line 1566
    .line 1567
    .line 1568
    move-result p0

    .line 1569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1570
    .line 1571
    .line 1572
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1573
    .line 1574
    .line 1575
    goto/16 :goto_0

    .line 1576
    .line 1577
    :pswitch_36
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1578
    .line 1579
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1580
    .line 1581
    .line 1582
    move-result-object p1

    .line 1583
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1584
    .line 1585
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1586
    .line 1587
    .line 1588
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1589
    .line 1590
    .line 1591
    move-result p0

    .line 1592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1593
    .line 1594
    .line 1595
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1596
    .line 1597
    .line 1598
    goto/16 :goto_0

    .line 1599
    .line 1600
    :pswitch_37
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1601
    .line 1602
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1603
    .line 1604
    .line 1605
    move-result-object p1

    .line 1606
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1607
    .line 1608
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1609
    .line 1610
    .line 1611
    move-result p4

    .line 1612
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1613
    .line 1614
    .line 1615
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1616
    .line 1617
    .line 1618
    move-result p0

    .line 1619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1620
    .line 1621
    .line 1622
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1623
    .line 1624
    .line 1625
    goto/16 :goto_0

    .line 1626
    .line 1627
    :pswitch_38
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1628
    .line 1629
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1630
    .line 1631
    .line 1632
    move-result-object p1

    .line 1633
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1634
    .line 1635
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1636
    .line 1637
    .line 1638
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    .line 1639
    .line 1640
    .line 1641
    move-result p0

    .line 1642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1643
    .line 1644
    .line 1645
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1646
    .line 1647
    .line 1648
    goto/16 :goto_0

    .line 1649
    .line 1650
    :pswitch_39
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1651
    .line 1652
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1653
    .line 1654
    .line 1655
    move-result-object p1

    .line 1656
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1657
    .line 1658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1659
    .line 1660
    .line 1661
    move-result p4

    .line 1662
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1663
    .line 1664
    .line 1665
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 1666
    .line 1667
    .line 1668
    move-result p0

    .line 1669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1670
    .line 1671
    .line 1672
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1673
    .line 1674
    .line 1675
    goto/16 :goto_0

    .line 1676
    .line 1677
    :pswitch_3a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1678
    .line 1679
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1680
    .line 1681
    .line 1682
    move-result-object p1

    .line 1683
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1684
    .line 1685
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1686
    .line 1687
    .line 1688
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    .line 1689
    .line 1690
    .line 1691
    move-result p0

    .line 1692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1693
    .line 1694
    .line 1695
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1696
    .line 1697
    .line 1698
    goto/16 :goto_0

    .line 1699
    .line 1700
    :pswitch_3b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1701
    .line 1702
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1703
    .line 1704
    .line 1705
    move-result-object p1

    .line 1706
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1707
    .line 1708
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1709
    .line 1710
    .line 1711
    move-result p4

    .line 1712
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1713
    .line 1714
    .line 1715
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 1716
    .line 1717
    .line 1718
    move-result p0

    .line 1719
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1720
    .line 1721
    .line 1722
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1723
    .line 1724
    .line 1725
    goto/16 :goto_0

    .line 1726
    .line 1727
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1728
    .line 1729
    .line 1730
    move-result p1

    .line 1731
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1732
    .line 1733
    .line 1734
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPwdChangeRequestedForInner(I)Z

    .line 1735
    .line 1736
    .line 1737
    move-result p0

    .line 1738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1739
    .line 1740
    .line 1741
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1742
    .line 1743
    .line 1744
    goto/16 :goto_0

    .line 1745
    .line 1746
    :pswitch_3d
    invoke-interface {p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequestedForInner()I

    .line 1747
    .line 1748
    .line 1749
    move-result p0

    .line 1750
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1751
    .line 1752
    .line 1753
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1754
    .line 1755
    .line 1756
    goto/16 :goto_0

    .line 1757
    .line 1758
    :pswitch_3e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1759
    .line 1760
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1761
    .line 1762
    .line 1763
    move-result-object p1

    .line 1764
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1765
    .line 1766
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1767
    .line 1768
    .line 1769
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isScreenLockPatternVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1770
    .line 1771
    .line 1772
    move-result p0

    .line 1773
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1774
    .line 1775
    .line 1776
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1777
    .line 1778
    .line 1779
    goto/16 :goto_0

    .line 1780
    .line 1781
    :pswitch_3f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1782
    .line 1783
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1784
    .line 1785
    .line 1786
    move-result-object p1

    .line 1787
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1788
    .line 1789
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1790
    .line 1791
    .line 1792
    move-result p4

    .line 1793
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1794
    .line 1795
    .line 1796
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setScreenLockPatternVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1797
    .line 1798
    .line 1799
    move-result p0

    .line 1800
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1801
    .line 1802
    .line 1803
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1804
    .line 1805
    .line 1806
    goto/16 :goto_0

    .line 1807
    .line 1808
    :pswitch_40
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1809
    .line 1810
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1811
    .line 1812
    .line 1813
    move-result-object p1

    .line 1814
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1815
    .line 1816
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1817
    .line 1818
    .line 1819
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    .line 1820
    .line 1821
    .line 1822
    move-result p0

    .line 1823
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1824
    .line 1825
    .line 1826
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1827
    .line 1828
    .line 1829
    goto/16 :goto_0

    .line 1830
    .line 1831
    :pswitch_41
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1832
    .line 1833
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1834
    .line 1835
    .line 1836
    move-result-object p1

    .line 1837
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1838
    .line 1839
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1840
    .line 1841
    .line 1842
    move-result p4

    .line 1843
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1844
    .line 1845
    .line 1846
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumCharacterOccurrences(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 1847
    .line 1848
    .line 1849
    move-result p0

    .line 1850
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1851
    .line 1852
    .line 1853
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1854
    .line 1855
    .line 1856
    goto/16 :goto_0

    .line 1857
    .line 1858
    :pswitch_42
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1859
    .line 1860
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1861
    .line 1862
    .line 1863
    move-result-object p1

    .line 1864
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1865
    .line 1866
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1867
    .line 1868
    .line 1869
    move-result p4

    .line 1870
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1871
    .line 1872
    .line 1873
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    .line 1874
    .line 1875
    .line 1876
    move-result-object p0

    .line 1877
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1878
    .line 1879
    .line 1880
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1881
    .line 1882
    .line 1883
    goto/16 :goto_0

    .line 1884
    .line 1885
    :pswitch_43
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1886
    .line 1887
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1888
    .line 1889
    .line 1890
    move-result-object p1

    .line 1891
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1892
    .line 1893
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1894
    .line 1895
    .line 1896
    move-result-object p4

    .line 1897
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1898
    .line 1899
    .line 1900
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 1901
    .line 1902
    .line 1903
    move-result p0

    .line 1904
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1905
    .line 1906
    .line 1907
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1908
    .line 1909
    .line 1910
    goto/16 :goto_0

    .line 1911
    .line 1912
    :pswitch_44
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1913
    .line 1914
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1915
    .line 1916
    .line 1917
    move-result-object p1

    .line 1918
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1919
    .line 1920
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1921
    .line 1922
    .line 1923
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    .line 1924
    .line 1925
    .line 1926
    move-result p0

    .line 1927
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1928
    .line 1929
    .line 1930
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1931
    .line 1932
    .line 1933
    goto/16 :goto_0

    .line 1934
    .line 1935
    :pswitch_45
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1936
    .line 1937
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1938
    .line 1939
    .line 1940
    move-result-object p1

    .line 1941
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1942
    .line 1943
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1944
    .line 1945
    .line 1946
    move-result p4

    .line 1947
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1948
    .line 1949
    .line 1950
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 1951
    .line 1952
    .line 1953
    move-result p0

    .line 1954
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1955
    .line 1956
    .line 1957
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1958
    .line 1959
    .line 1960
    goto/16 :goto_0

    .line 1961
    .line 1962
    :pswitch_46
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1963
    .line 1964
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1965
    .line 1966
    .line 1967
    move-result-object p1

    .line 1968
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1969
    .line 1970
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1971
    .line 1972
    .line 1973
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    .line 1974
    .line 1975
    .line 1976
    move-result p0

    .line 1977
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1978
    .line 1979
    .line 1980
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1981
    .line 1982
    .line 1983
    goto/16 :goto_0

    .line 1984
    .line 1985
    :pswitch_47
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1986
    .line 1987
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1988
    .line 1989
    .line 1990
    move-result-object p1

    .line 1991
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1992
    .line 1993
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1994
    .line 1995
    .line 1996
    move-result p4

    .line 1997
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1998
    .line 1999
    .line 2000
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 2001
    .line 2002
    .line 2003
    move-result p0

    .line 2004
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2005
    .line 2006
    .line 2007
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2008
    .line 2009
    .line 2010
    goto/16 :goto_0

    .line 2011
    .line 2012
    :pswitch_48
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2013
    .line 2014
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2015
    .line 2016
    .line 2017
    move-result-object p1

    .line 2018
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2019
    .line 2020
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2021
    .line 2022
    .line 2023
    move-result p4

    .line 2024
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2025
    .line 2026
    .line 2027
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPwdChangeRequested(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 2028
    .line 2029
    .line 2030
    move-result p0

    .line 2031
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2032
    .line 2033
    .line 2034
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2035
    .line 2036
    .line 2037
    goto/16 :goto_0

    .line 2038
    .line 2039
    :pswitch_49
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2040
    .line 2041
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2042
    .line 2043
    .line 2044
    move-result-object p1

    .line 2045
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2046
    .line 2047
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2048
    .line 2049
    .line 2050
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->enforcePwdChange(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2051
    .line 2052
    .line 2053
    move-result p0

    .line 2054
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2055
    .line 2056
    .line 2057
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2058
    .line 2059
    .line 2060
    goto/16 :goto_0

    .line 2061
    .line 2062
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2063
    .line 2064
    .line 2065
    move-result p1

    .line 2066
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2067
    .line 2068
    .line 2069
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequestedAsUser(I)I

    .line 2070
    .line 2071
    .line 2072
    move-result p0

    .line 2073
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2074
    .line 2075
    .line 2076
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2077
    .line 2078
    .line 2079
    goto/16 :goto_0

    .line 2080
    .line 2081
    :pswitch_4b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2082
    .line 2083
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2084
    .line 2085
    .line 2086
    move-result-object p1

    .line 2087
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2088
    .line 2089
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2090
    .line 2091
    .line 2092
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequested(Lcom/samsung/android/knox/ContextInfo;)I

    .line 2093
    .line 2094
    .line 2095
    move-result p0

    .line 2096
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2097
    .line 2098
    .line 2099
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2100
    .line 2101
    .line 2102
    goto/16 :goto_0

    .line 2103
    .line 2104
    :pswitch_4c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2105
    .line 2106
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2107
    .line 2108
    .line 2109
    move-result-object p1

    .line 2110
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2111
    .line 2112
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2113
    .line 2114
    .line 2115
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordChangeTimeout(Lcom/samsung/android/knox/ContextInfo;)I

    .line 2116
    .line 2117
    .line 2118
    move-result p0

    .line 2119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2120
    .line 2121
    .line 2122
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2123
    .line 2124
    .line 2125
    goto/16 :goto_0

    .line 2126
    .line 2127
    :pswitch_4d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2128
    .line 2129
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2130
    .line 2131
    .line 2132
    move-result-object p1

    .line 2133
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2134
    .line 2135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2136
    .line 2137
    .line 2138
    move-result p4

    .line 2139
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2140
    .line 2141
    .line 2142
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordChangeTimeout(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 2143
    .line 2144
    .line 2145
    move-result p0

    .line 2146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2147
    .line 2148
    .line 2149
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2150
    .line 2151
    .line 2152
    goto/16 :goto_0

    .line 2153
    .line 2154
    :pswitch_4e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2155
    .line 2156
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2157
    .line 2158
    .line 2159
    move-result-object p1

    .line 2160
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2161
    .line 2162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2163
    .line 2164
    .line 2165
    move-result-object p4

    .line 2166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2167
    .line 2168
    .line 2169
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isPasswordPatternMatched(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2170
    .line 2171
    .line 2172
    move-result p0

    .line 2173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2174
    .line 2175
    .line 2176
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2177
    .line 2178
    .line 2179
    goto/16 :goto_0

    .line 2180
    .line 2181
    :pswitch_4f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2182
    .line 2183
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2184
    .line 2185
    .line 2186
    move-result-object p1

    .line 2187
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2188
    .line 2189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2190
    .line 2191
    .line 2192
    move-result-object p4

    .line 2193
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2194
    .line 2195
    .line 2196
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasMaxRepeatedCharacters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2197
    .line 2198
    .line 2199
    move-result p0

    .line 2200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2201
    .line 2202
    .line 2203
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2204
    .line 2205
    .line 2206
    goto/16 :goto_0

    .line 2207
    .line 2208
    :pswitch_50
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2209
    .line 2210
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2211
    .line 2212
    .line 2213
    move-result-object p1

    .line 2214
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2215
    .line 2216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2217
    .line 2218
    .line 2219
    move-result-object p4

    .line 2220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2221
    .line 2222
    .line 2223
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasForbiddenData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2224
    .line 2225
    .line 2226
    move-result p0

    .line 2227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2228
    .line 2229
    .line 2230
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2231
    .line 2232
    .line 2233
    goto/16 :goto_0

    .line 2234
    .line 2235
    :pswitch_51
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2236
    .line 2237
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2238
    .line 2239
    .line 2240
    move-result-object p1

    .line 2241
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2242
    .line 2243
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2244
    .line 2245
    .line 2246
    move-result-object p4

    .line 2247
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2248
    .line 2249
    .line 2250
    move-result-object v0

    .line 2251
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2252
    .line 2253
    .line 2254
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasForbiddenStringDistance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2255
    .line 2256
    .line 2257
    move-result p0

    .line 2258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2259
    .line 2260
    .line 2261
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2262
    .line 2263
    .line 2264
    goto/16 :goto_0

    .line 2265
    .line 2266
    :pswitch_52
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2267
    .line 2268
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2269
    .line 2270
    .line 2271
    move-result-object p1

    .line 2272
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2273
    .line 2274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2275
    .line 2276
    .line 2277
    move-result-object p4

    .line 2278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2279
    .line 2280
    .line 2281
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasForbiddenCharacterSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2282
    .line 2283
    .line 2284
    move-result p0

    .line 2285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2286
    .line 2287
    .line 2288
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2289
    .line 2290
    .line 2291
    goto/16 :goto_0

    .line 2292
    .line 2293
    :pswitch_53
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2294
    .line 2295
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2296
    .line 2297
    .line 2298
    move-result-object p1

    .line 2299
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2300
    .line 2301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2302
    .line 2303
    .line 2304
    move-result-object p4

    .line 2305
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2306
    .line 2307
    .line 2308
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasForbiddenNumericSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2309
    .line 2310
    .line 2311
    move-result p0

    .line 2312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2313
    .line 2314
    .line 2315
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2316
    .line 2317
    .line 2318
    goto/16 :goto_0

    .line 2319
    .line 2320
    :pswitch_54
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2321
    .line 2322
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2323
    .line 2324
    .line 2325
    move-result-object p1

    .line 2326
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2327
    .line 2328
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2329
    .line 2330
    .line 2331
    move-result p4

    .line 2332
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2333
    .line 2334
    .line 2335
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    .line 2336
    .line 2337
    .line 2338
    move-result-object p0

    .line 2339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2340
    .line 2341
    .line 2342
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2343
    .line 2344
    .line 2345
    goto :goto_0

    .line 2346
    :pswitch_55
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2347
    .line 2348
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2349
    .line 2350
    .line 2351
    move-result-object p1

    .line 2352
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2353
    .line 2354
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2355
    .line 2356
    .line 2357
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->deleteAllRestrictions(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2358
    .line 2359
    .line 2360
    move-result p0

    .line 2361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2362
    .line 2363
    .line 2364
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2365
    .line 2366
    .line 2367
    goto :goto_0

    .line 2368
    :pswitch_56
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2369
    .line 2370
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2371
    .line 2372
    .line 2373
    move-result-object p1

    .line 2374
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2375
    .line 2376
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2377
    .line 2378
    .line 2379
    move-result-object p4

    .line 2380
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2381
    .line 2382
    .line 2383
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setRequiredPasswordPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2384
    .line 2385
    .line 2386
    move-result p0

    .line 2387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2388
    .line 2389
    .line 2390
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2391
    .line 2392
    .line 2393
    goto :goto_0

    .line 2394
    :pswitch_57
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
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;)I

    .line 2406
    .line 2407
    .line 2408
    move-result p0

    .line 2409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2410
    .line 2411
    .line 2412
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2413
    .line 2414
    .line 2415
    goto :goto_0

    .line 2416
    :pswitch_58
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2417
    .line 2418
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2419
    .line 2420
    .line 2421
    move-result-object p1

    .line 2422
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2423
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
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 2432
    .line 2433
    .line 2434
    move-result p0

    .line 2435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2436
    .line 2437
    .line 2438
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2439
    .line 2440
    .line 2441
    :goto_0
    return v1

    .line 2442
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2443
    .line 2444
    .line 2445
    return v1

    .line 2446
    nop

    .line 2447
    :pswitch_data_0
    .packed-switch 0x1
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
