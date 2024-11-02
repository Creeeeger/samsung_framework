.class public abstract Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_addNewAccount:I = 0x2

.field public static final TRANSACTION_addNewAccount_ex:I = 0x3

.field public static final TRANSACTION_addNewAccount_new:I = 0x34

.field public static final TRANSACTION_allowEmailSettingsChange:I = 0x24

.field public static final TRANSACTION_allowInComingAttachments:I = 0x1e

.field public static final TRANSACTION_createAccount:I = 0x1

.field public static final TRANSACTION_deleteAccount:I = 0xf

.field public static final TRANSACTION_getAccountCertificatePassword:I = 0x36

.field public static final TRANSACTION_getAccountDetails:I = 0xe

.field public static final TRANSACTION_getAccountEmailPassword:I = 0x35

.field public static final TRANSACTION_getAccountId:I = 0xd

.field public static final TRANSACTION_getAllEASAccounts:I = 0x14

.field public static final TRANSACTION_getDeviceId:I = 0x15

.field public static final TRANSACTION_getForceSMIMECertificate:I = 0x1c

.field public static final TRANSACTION_getForceSMIMECertificateForEncryption:I = 0x32

.field public static final TRANSACTION_getForceSMIMECertificateForSigning:I = 0x2f

.field public static final TRANSACTION_getIncomingAttachmentsSize:I = 0x21

.field public static final TRANSACTION_getMaxCalendarAgeFilter:I = 0x27

.field public static final TRANSACTION_getMaxEmailAgeFilter:I = 0x29

.field public static final TRANSACTION_getMaxEmailBodyTruncationSize:I = 0x2b

.field public static final TRANSACTION_getMaxEmailHTMLBodyTruncationSize:I = 0x2d

.field public static final TRANSACTION_getRequireEncryptedSMIMEMessages:I = 0x1a

.field public static final TRANSACTION_getRequireSignedSMIMEMessages:I = 0x18

.field public static final TRANSACTION_getSMIMECertificateAlias:I = 0x3a

.field public static final TRANSACTION_isEmailNotificationsEnabled:I = 0x23

.field public static final TRANSACTION_isEmailSettingsChangeAllowed:I = 0x25

.field public static final TRANSACTION_isIncomingAttachmentsAllowed:I = 0x1f

.field public static final TRANSACTION_removePendingAccount:I = 0x16

.field public static final TRANSACTION_sendAccountsChangedBroadcast:I = 0x10

.field public static final TRANSACTION_setAcceptAllCertificates:I = 0x5

.field public static final TRANSACTION_setAccountBaseParameters:I = 0x3b

.field public static final TRANSACTION_setAccountCertificatePassword:I = 0x38

.field public static final TRANSACTION_setAccountEmailPassword:I = 0x37

.field public static final TRANSACTION_setAccountName:I = 0xc

.field public static final TRANSACTION_setAlwaysVibrateOnEmailNotification:I = 0x6

.field public static final TRANSACTION_setAsDefaultAccount:I = 0xb

.field public static final TRANSACTION_setClientAuthCert:I = 0x9

.field public static final TRANSACTION_setDataSyncs:I = 0x13

.field public static final TRANSACTION_setEmailNotificationsState:I = 0x22

.field public static final TRANSACTION_setForceSMIMECertificate:I = 0x1b

.field public static final TRANSACTION_setForceSMIMECertificateAlias:I = 0x39

.field public static final TRANSACTION_setForceSMIMECertificateForEncryption:I = 0x31

.field public static final TRANSACTION_setForceSMIMECertificateForSigning:I = 0x2e

.field public static final TRANSACTION_setIncomingAttachmentsSize:I = 0x20

.field public static final TRANSACTION_setMaxCalendarAgeFilter:I = 0x26

.field public static final TRANSACTION_setMaxEmailAgeFilter:I = 0x28

.field public static final TRANSACTION_setMaxEmailBodyTruncationSize:I = 0x2a

.field public static final TRANSACTION_setMaxEmailHTMLBodyTruncationSize:I = 0x2c

.field public static final TRANSACTION_setPassword:I = 0x7

.field public static final TRANSACTION_setPastDaysToSync:I = 0xa

.field public static final TRANSACTION_setProtocolVersion:I = 0x3c

.field public static final TRANSACTION_setReleaseSMIMECertificate:I = 0x1d

.field public static final TRANSACTION_setReleaseSMIMECertificateForEncryption:I = 0x33

.field public static final TRANSACTION_setReleaseSMIMECertificateForSigning:I = 0x30

.field public static final TRANSACTION_setRequireEncryptedSMIMEMessages:I = 0x19

.field public static final TRANSACTION_setRequireSignedSMIMEMessages:I = 0x17

.field public static final TRANSACTION_setSSL:I = 0x4

.field public static final TRANSACTION_setSenderName:I = 0x3d

.field public static final TRANSACTION_setSignature:I = 0x8

.field public static final TRANSACTION_setSilentVibrateOnEmailNotification:I = 0x3e

.field public static final TRANSACTION_setSyncInterval:I = 0x3f

.field public static final TRANSACTION_setSyncPeakTimings:I = 0x11

.field public static final TRANSACTION_setSyncSchedules:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.samsung.android.knox.accounts.IExchangeAccountPolicy"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;
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
    const-string v0, "com.samsung.android.knox.accounts.IExchangeAccountPolicy"

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
    instance-of v1, v0, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string p0, "setSyncInterval"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    const-string p0, "setSilentVibrateOnEmailNotification"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    const-string p0, "setSenderName"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    const-string p0, "setProtocolVersion"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    const-string p0, "setAccountBaseParameters"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    const-string p0, "getSMIMECertificateAlias"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    const-string p0, "setForceSMIMECertificateAlias"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    const-string p0, "setAccountCertificatePassword"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    const-string p0, "setAccountEmailPassword"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    const-string p0, "getAccountCertificatePassword"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    const-string p0, "getAccountEmailPassword"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    const-string p0, "addNewAccount_new"

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_c
    const-string p0, "setReleaseSMIMECertificateForEncryption"

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_d
    const-string p0, "getForceSMIMECertificateForEncryption"

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_e
    const-string p0, "setForceSMIMECertificateForEncryption"

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_f
    const-string p0, "setReleaseSMIMECertificateForSigning"

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_10
    const-string p0, "getForceSMIMECertificateForSigning"

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_11
    const-string p0, "setForceSMIMECertificateForSigning"

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_12
    const-string p0, "getMaxEmailHTMLBodyTruncationSize"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_13
    const-string p0, "setMaxEmailHTMLBodyTruncationSize"

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_14
    const-string p0, "getMaxEmailBodyTruncationSize"

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_15
    const-string p0, "setMaxEmailBodyTruncationSize"

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_16
    const-string p0, "getMaxEmailAgeFilter"

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_17
    const-string p0, "setMaxEmailAgeFilter"

    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_18
    const-string p0, "getMaxCalendarAgeFilter"

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_19
    const-string p0, "setMaxCalendarAgeFilter"

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_1a
    const-string p0, "isEmailSettingsChangeAllowed"

    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_1b
    const-string p0, "allowEmailSettingsChange"

    .line 88
    .line 89
    return-object p0

    .line 90
    :pswitch_1c
    const-string p0, "isEmailNotificationsEnabled"

    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_1d
    const-string p0, "setEmailNotificationsState"

    .line 94
    .line 95
    return-object p0

    .line 96
    :pswitch_1e
    const-string p0, "getIncomingAttachmentsSize"

    .line 97
    .line 98
    return-object p0

    .line 99
    :pswitch_1f
    const-string p0, "setIncomingAttachmentsSize"

    .line 100
    .line 101
    return-object p0

    .line 102
    :pswitch_20
    const-string p0, "isIncomingAttachmentsAllowed"

    .line 103
    .line 104
    return-object p0

    .line 105
    :pswitch_21
    const-string p0, "allowInComingAttachments"

    .line 106
    .line 107
    return-object p0

    .line 108
    :pswitch_22
    const-string p0, "setReleaseSMIMECertificate"

    .line 109
    .line 110
    return-object p0

    .line 111
    :pswitch_23
    const-string p0, "getForceSMIMECertificate"

    .line 112
    .line 113
    return-object p0

    .line 114
    :pswitch_24
    const-string p0, "setForceSMIMECertificate"

    .line 115
    .line 116
    return-object p0

    .line 117
    :pswitch_25
    const-string p0, "getRequireEncryptedSMIMEMessages"

    .line 118
    .line 119
    return-object p0

    .line 120
    :pswitch_26
    const-string p0, "setRequireEncryptedSMIMEMessages"

    .line 121
    .line 122
    return-object p0

    .line 123
    :pswitch_27
    const-string p0, "getRequireSignedSMIMEMessages"

    .line 124
    .line 125
    return-object p0

    .line 126
    :pswitch_28
    const-string p0, "setRequireSignedSMIMEMessages"

    .line 127
    .line 128
    return-object p0

    .line 129
    :pswitch_29
    const-string p0, "removePendingAccount"

    .line 130
    .line 131
    return-object p0

    .line 132
    :pswitch_2a
    const-string p0, "getDeviceId"

    .line 133
    .line 134
    return-object p0

    .line 135
    :pswitch_2b
    const-string p0, "getAllEASAccounts"

    .line 136
    .line 137
    return-object p0

    .line 138
    :pswitch_2c
    const-string p0, "setDataSyncs"

    .line 139
    .line 140
    return-object p0

    .line 141
    :pswitch_2d
    const-string p0, "setSyncSchedules"

    .line 142
    .line 143
    return-object p0

    .line 144
    :pswitch_2e
    const-string p0, "setSyncPeakTimings"

    .line 145
    .line 146
    return-object p0

    .line 147
    :pswitch_2f
    const-string p0, "sendAccountsChangedBroadcast"

    .line 148
    .line 149
    return-object p0

    .line 150
    :pswitch_30
    const-string p0, "deleteAccount"

    .line 151
    .line 152
    return-object p0

    .line 153
    :pswitch_31
    const-string p0, "getAccountDetails"

    .line 154
    .line 155
    return-object p0

    .line 156
    :pswitch_32
    const-string p0, "getAccountId"

    .line 157
    .line 158
    return-object p0

    .line 159
    :pswitch_33
    const-string p0, "setAccountName"

    .line 160
    .line 161
    return-object p0

    .line 162
    :pswitch_34
    const-string p0, "setAsDefaultAccount"

    .line 163
    .line 164
    return-object p0

    .line 165
    :pswitch_35
    const-string p0, "setPastDaysToSync"

    .line 166
    .line 167
    return-object p0

    .line 168
    :pswitch_36
    const-string p0, "setClientAuthCert"

    .line 169
    .line 170
    return-object p0

    .line 171
    :pswitch_37
    const-string p0, "setSignature"

    .line 172
    .line 173
    return-object p0

    .line 174
    :pswitch_38
    const-string p0, "setPassword"

    .line 175
    .line 176
    return-object p0

    .line 177
    :pswitch_39
    const-string p0, "setAlwaysVibrateOnEmailNotification"

    .line 178
    .line 179
    return-object p0

    .line 180
    :pswitch_3a
    const-string p0, "setAcceptAllCertificates"

    .line 181
    .line 182
    return-object p0

    .line 183
    :pswitch_3b
    const-string p0, "setSSL"

    .line 184
    .line 185
    return-object p0

    .line 186
    :pswitch_3c
    const-string p0, "addNewAccount_ex"

    .line 187
    .line 188
    return-object p0

    .line 189
    :pswitch_3d
    const-string p0, "addNewAccount"

    .line 190
    .line 191
    return-object p0

    .line 192
    :pswitch_3e
    const-string p0, "createAccount"

    .line 193
    .line 194
    return-object p0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getMaxTransactionId()I
    .locals 0

    .line 1
    const/16 p0, 0x3e

    .line 2
    .line 3
    return p0
.end method

.method public final getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v15, p2

    .line 6
    .line 7
    move-object/from16 v14, p3

    .line 8
    .line 9
    const-string v2, "com.samsung.android.knox.accounts.IExchangeAccountPolicy"

    .line 10
    .line 11
    const/4 v13, 0x1

    .line 12
    if-lt v1, v13, :cond_0

    .line 13
    .line 14
    const v3, 0xffffff

    .line 15
    .line 16
    .line 17
    if-gt v1, v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const v3, 0x5f4e5446

    .line 23
    .line 24
    .line 25
    if-eq v1, v3, :cond_1

    .line 26
    .line 27
    packed-switch v1, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    move-object v7, v14

    .line 31
    move-object v0, v15

    .line 32
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    return v0

    .line 37
    :pswitch_0
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    .line 39
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 44
    .line 45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setSyncInterval(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :pswitch_1
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 69
    .line 70
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 75
    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 85
    .line 86
    .line 87
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setSilentVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :pswitch_2
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 100
    .line 101
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 106
    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    .line 117
    .line 118
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setSenderName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :pswitch_3
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 131
    .line 132
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 137
    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 143
    .line 144
    .line 145
    move-result-wide v3

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setProtocolVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :pswitch_4
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 162
    .line 163
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 168
    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 186
    .line 187
    .line 188
    move-result-wide v6

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    .line 191
    .line 192
    move-object/from16 v0, p0

    .line 193
    .line 194
    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setAccountBaseParameters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    .line 195
    .line 196
    .line 197
    move-result-wide v0

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :pswitch_5
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 207
    .line 208
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 213
    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 215
    .line 216
    .line 217
    move-result-wide v2

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    .line 224
    .line 225
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getSMIMECertificateAlias(Lcom/samsung/android/knox/ContextInfo;JI)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :pswitch_6
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 238
    .line 239
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 244
    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 246
    .line 247
    .line 248
    move-result-wide v2

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    .line 263
    .line 264
    move-object/from16 v0, p0

    .line 265
    .line 266
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificateAlias(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;I)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :pswitch_7
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 279
    .line 280
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 285
    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    .line 292
    .line 293
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 294
    .line 295
    .line 296
    move-result-wide v0

    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :pswitch_8
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 306
    .line 307
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 312
    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    .line 319
    .line 320
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 321
    .line 322
    .line 323
    move-result-wide v0

    .line 324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_0

    .line 331
    .line 332
    :pswitch_9
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 333
    .line 334
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 339
    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 341
    .line 342
    .line 343
    move-result-wide v2

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    .line 346
    .line 347
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :pswitch_a
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 360
    .line 361
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 366
    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 368
    .line 369
    .line 370
    move-result-wide v2

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    .line 373
    .line 374
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    goto/16 :goto_0

    .line 385
    .line 386
    :pswitch_b
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 387
    .line 388
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 393
    .line 394
    sget-object v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 395
    .line 396
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    check-cast v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;

    .line 401
    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    .line 404
    .line 405
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->addNewAccount_new(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/ExchangeAccount;)J

    .line 406
    .line 407
    .line 408
    move-result-wide v0

    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 413
    .line 414
    .line 415
    goto/16 :goto_0

    .line 416
    .line 417
    :pswitch_c
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 418
    .line 419
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 424
    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 426
    .line 427
    .line 428
    move-result-wide v2

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    .line 431
    .line 432
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setReleaseSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 440
    .line 441
    .line 442
    goto/16 :goto_0

    .line 443
    .line 444
    :pswitch_d
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 445
    .line 446
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 451
    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 453
    .line 454
    .line 455
    move-result-wide v2

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    .line 458
    .line 459
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 467
    .line 468
    .line 469
    goto/16 :goto_0

    .line 470
    .line 471
    :pswitch_e
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 472
    .line 473
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 478
    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 480
    .line 481
    .line 482
    move-result-wide v2

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v4

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    .line 493
    .line 494
    move-object/from16 v0, p0

    .line 495
    .line 496
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    .line 505
    .line 506
    goto/16 :goto_0

    .line 507
    .line 508
    :pswitch_f
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 509
    .line 510
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 515
    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 517
    .line 518
    .line 519
    move-result-wide v2

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    .line 522
    .line 523
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setReleaseSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 524
    .line 525
    .line 526
    move-result v0

    .line 527
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 531
    .line 532
    .line 533
    goto/16 :goto_0

    .line 534
    .line 535
    :pswitch_10
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 536
    .line 537
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 542
    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 544
    .line 545
    .line 546
    move-result-wide v2

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    .line 549
    .line 550
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_0

    .line 561
    .line 562
    :pswitch_11
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 563
    .line 564
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 569
    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 571
    .line 572
    .line 573
    move-result-wide v2

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v5

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 583
    .line 584
    .line 585
    move-object/from16 v0, p0

    .line 586
    .line 587
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    .line 596
    .line 597
    goto/16 :goto_0

    .line 598
    .line 599
    :pswitch_12
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 600
    .line 601
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 606
    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 608
    .line 609
    .line 610
    move-result-wide v2

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    .line 613
    .line 614
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    .line 615
    .line 616
    .line 617
    move-result v0

    .line 618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    .line 623
    .line 624
    goto/16 :goto_0

    .line 625
    .line 626
    :pswitch_13
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 627
    .line 628
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 633
    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 635
    .line 636
    .line 637
    move-result v2

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 639
    .line 640
    .line 641
    move-result-wide v3

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    .line 644
    .line 645
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    .line 646
    .line 647
    .line 648
    move-result v0

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 653
    .line 654
    .line 655
    goto/16 :goto_0

    .line 656
    .line 657
    :pswitch_14
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 658
    .line 659
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 664
    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 666
    .line 667
    .line 668
    move-result-wide v2

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    .line 671
    .line 672
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    .line 673
    .line 674
    .line 675
    move-result v0

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    .line 681
    .line 682
    goto/16 :goto_0

    .line 683
    .line 684
    :pswitch_15
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 685
    .line 686
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 691
    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 693
    .line 694
    .line 695
    move-result v2

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 697
    .line 698
    .line 699
    move-result-wide v3

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    .line 702
    .line 703
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    .line 704
    .line 705
    .line 706
    move-result v0

    .line 707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 711
    .line 712
    .line 713
    goto/16 :goto_0

    .line 714
    .line 715
    :pswitch_16
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 716
    .line 717
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 722
    .line 723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 724
    .line 725
    .line 726
    move-result-wide v2

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    .line 729
    .line 730
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    .line 731
    .line 732
    .line 733
    move-result v0

    .line 734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    .line 739
    .line 740
    goto/16 :goto_0

    .line 741
    .line 742
    :pswitch_17
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 743
    .line 744
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v1

    .line 748
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 749
    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 751
    .line 752
    .line 753
    move-result v2

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 755
    .line 756
    .line 757
    move-result-wide v3

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    .line 760
    .line 761
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    .line 762
    .line 763
    .line 764
    move-result v0

    .line 765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 769
    .line 770
    .line 771
    goto/16 :goto_0

    .line 772
    .line 773
    :pswitch_18
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 774
    .line 775
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 780
    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 782
    .line 783
    .line 784
    move-result-wide v2

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    .line 787
    .line 788
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    .line 789
    .line 790
    .line 791
    move-result v0

    .line 792
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 796
    .line 797
    .line 798
    goto/16 :goto_0

    .line 799
    .line 800
    :pswitch_19
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 801
    .line 802
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object v1

    .line 806
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 807
    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 809
    .line 810
    .line 811
    move-result v2

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 813
    .line 814
    .line 815
    move-result-wide v3

    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 817
    .line 818
    .line 819
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    .line 820
    .line 821
    .line 822
    move-result v0

    .line 823
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 827
    .line 828
    .line 829
    goto/16 :goto_0

    .line 830
    .line 831
    :pswitch_1a
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 832
    .line 833
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    move-result-object v1

    .line 837
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 838
    .line 839
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 840
    .line 841
    .line 842
    move-result-wide v2

    .line 843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    .line 845
    .line 846
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 847
    .line 848
    .line 849
    move-result v0

    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 854
    .line 855
    .line 856
    goto/16 :goto_0

    .line 857
    .line 858
    :pswitch_1b
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 859
    .line 860
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    move-result-object v1

    .line 864
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 865
    .line 866
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 867
    .line 868
    .line 869
    move-result-wide v2

    .line 870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 871
    .line 872
    .line 873
    move-result v4

    .line 874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    .line 876
    .line 877
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->allowEmailSettingsChange(Lcom/samsung/android/knox/ContextInfo;JZ)Z

    .line 878
    .line 879
    .line 880
    move-result v0

    .line 881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 885
    .line 886
    .line 887
    goto/16 :goto_0

    .line 888
    .line 889
    :pswitch_1c
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 890
    .line 891
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    move-result-object v1

    .line 895
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 896
    .line 897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 898
    .line 899
    .line 900
    move-result-wide v2

    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 902
    .line 903
    .line 904
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 905
    .line 906
    .line 907
    move-result v0

    .line 908
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 912
    .line 913
    .line 914
    goto/16 :goto_0

    .line 915
    .line 916
    :pswitch_1d
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 917
    .line 918
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    move-result-object v1

    .line 922
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 923
    .line 924
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 925
    .line 926
    .line 927
    move-result-wide v2

    .line 928
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 929
    .line 930
    .line 931
    move-result v4

    .line 932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 933
    .line 934
    .line 935
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setEmailNotificationsState(Lcom/samsung/android/knox/ContextInfo;JZ)Z

    .line 936
    .line 937
    .line 938
    move-result v0

    .line 939
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    .line 941
    .line 942
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 943
    .line 944
    .line 945
    goto/16 :goto_0

    .line 946
    .line 947
    :pswitch_1e
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 948
    .line 949
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 954
    .line 955
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 956
    .line 957
    .line 958
    move-result-wide v2

    .line 959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 960
    .line 961
    .line 962
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;J)I

    .line 963
    .line 964
    .line 965
    move-result v0

    .line 966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    .line 968
    .line 969
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 970
    .line 971
    .line 972
    goto/16 :goto_0

    .line 973
    .line 974
    :pswitch_1f
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 975
    .line 976
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    move-result-object v1

    .line 980
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 981
    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 983
    .line 984
    .line 985
    move-result v2

    .line 986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 987
    .line 988
    .line 989
    move-result-wide v3

    .line 990
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    .line 992
    .line 993
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    .line 994
    .line 995
    .line 996
    move-result v0

    .line 997
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1001
    .line 1002
    .line 1003
    goto/16 :goto_0

    .line 1004
    .line 1005
    :pswitch_20
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1006
    .line 1007
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v1

    .line 1011
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1012
    .line 1013
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1014
    .line 1015
    .line 1016
    move-result-wide v2

    .line 1017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1018
    .line 1019
    .line 1020
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->isIncomingAttachmentsAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 1021
    .line 1022
    .line 1023
    move-result v0

    .line 1024
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1028
    .line 1029
    .line 1030
    goto/16 :goto_0

    .line 1031
    .line 1032
    :pswitch_21
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1033
    .line 1034
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v1

    .line 1038
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1039
    .line 1040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1041
    .line 1042
    .line 1043
    move-result v2

    .line 1044
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1045
    .line 1046
    .line 1047
    move-result-wide v3

    .line 1048
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1049
    .line 1050
    .line 1051
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->allowInComingAttachments(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v0

    .line 1055
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1059
    .line 1060
    .line 1061
    goto/16 :goto_0

    .line 1062
    .line 1063
    :pswitch_22
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1064
    .line 1065
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v1

    .line 1069
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1070
    .line 1071
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1072
    .line 1073
    .line 1074
    move-result-wide v2

    .line 1075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1076
    .line 1077
    .line 1078
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setReleaseSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 1079
    .line 1080
    .line 1081
    move-result v0

    .line 1082
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    .line 1084
    .line 1085
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1086
    .line 1087
    .line 1088
    goto/16 :goto_0

    .line 1089
    .line 1090
    :pswitch_23
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1091
    .line 1092
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v1

    .line 1096
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1097
    .line 1098
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1099
    .line 1100
    .line 1101
    move-result-wide v2

    .line 1102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1103
    .line 1104
    .line 1105
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 1106
    .line 1107
    .line 1108
    move-result v0

    .line 1109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1113
    .line 1114
    .line 1115
    goto/16 :goto_0

    .line 1116
    .line 1117
    :pswitch_24
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1118
    .line 1119
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v1

    .line 1123
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1124
    .line 1125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1126
    .line 1127
    .line 1128
    move-result-wide v2

    .line 1129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v4

    .line 1133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v5

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1138
    .line 1139
    .line 1140
    move-object/from16 v0, p0

    .line 1141
    .line 1142
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    .line 1143
    .line 1144
    .line 1145
    move-result v0

    .line 1146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    .line 1148
    .line 1149
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1150
    .line 1151
    .line 1152
    goto/16 :goto_0

    .line 1153
    .line 1154
    :pswitch_25
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1155
    .line 1156
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v1

    .line 1160
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1161
    .line 1162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1163
    .line 1164
    .line 1165
    move-result-wide v2

    .line 1166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1167
    .line 1168
    .line 1169
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 1170
    .line 1171
    .line 1172
    move-result v0

    .line 1173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1177
    .line 1178
    .line 1179
    goto/16 :goto_0

    .line 1180
    .line 1181
    :pswitch_26
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1182
    .line 1183
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v1

    .line 1187
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1188
    .line 1189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1190
    .line 1191
    .line 1192
    move-result-wide v2

    .line 1193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1194
    .line 1195
    .line 1196
    move-result v4

    .line 1197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1198
    .line 1199
    .line 1200
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;JZ)Z

    .line 1201
    .line 1202
    .line 1203
    move-result v0

    .line 1204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1208
    .line 1209
    .line 1210
    goto/16 :goto_0

    .line 1211
    .line 1212
    :pswitch_27
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1213
    .line 1214
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v1

    .line 1218
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1219
    .line 1220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1221
    .line 1222
    .line 1223
    move-result-wide v2

    .line 1224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1225
    .line 1226
    .line 1227
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 1228
    .line 1229
    .line 1230
    move-result v0

    .line 1231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1235
    .line 1236
    .line 1237
    goto/16 :goto_0

    .line 1238
    .line 1239
    :pswitch_28
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1240
    .line 1241
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v1

    .line 1245
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1246
    .line 1247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1248
    .line 1249
    .line 1250
    move-result-wide v2

    .line 1251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1252
    .line 1253
    .line 1254
    move-result v4

    .line 1255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1256
    .line 1257
    .line 1258
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;JZ)Z

    .line 1259
    .line 1260
    .line 1261
    move-result v0

    .line 1262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1266
    .line 1267
    .line 1268
    goto/16 :goto_0

    .line 1269
    .line 1270
    :pswitch_29
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1271
    .line 1272
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v1

    .line 1276
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1277
    .line 1278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v2

    .line 1282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v3

    .line 1286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v4

    .line 1290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v5

    .line 1294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1295
    .line 1296
    .line 1297
    move-object/from16 v0, p0

    .line 1298
    .line 1299
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->removePendingAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    .line 1304
    .line 1305
    goto/16 :goto_0

    .line 1306
    .line 1307
    :pswitch_2a
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1308
    .line 1309
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v1

    .line 1313
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1314
    .line 1315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1316
    .line 1317
    .line 1318
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getDeviceId(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v0

    .line 1322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1326
    .line 1327
    .line 1328
    goto/16 :goto_0

    .line 1329
    .line 1330
    :pswitch_2b
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1331
    .line 1332
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v1

    .line 1336
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1337
    .line 1338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1339
    .line 1340
    .line 1341
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getAllEASAccounts(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/accounts/Account;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v0

    .line 1345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {v14, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1349
    .line 1350
    .line 1351
    goto/16 :goto_0

    .line 1352
    .line 1353
    :pswitch_2c
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1354
    .line 1355
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v1

    .line 1359
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1360
    .line 1361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1362
    .line 1363
    .line 1364
    move-result v2

    .line 1365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1366
    .line 1367
    .line 1368
    move-result v3

    .line 1369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1370
    .line 1371
    .line 1372
    move-result v4

    .line 1373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1374
    .line 1375
    .line 1376
    move-result v5

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1378
    .line 1379
    .line 1380
    move-result-wide v6

    .line 1381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1382
    .line 1383
    .line 1384
    move-object/from16 v0, p0

    .line 1385
    .line 1386
    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setDataSyncs(Lcom/samsung/android/knox/ContextInfo;ZZZZJ)Z

    .line 1387
    .line 1388
    .line 1389
    move-result v0

    .line 1390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1391
    .line 1392
    .line 1393
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1394
    .line 1395
    .line 1396
    goto/16 :goto_0

    .line 1397
    .line 1398
    :pswitch_2d
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1399
    .line 1400
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v1

    .line 1404
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1405
    .line 1406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1407
    .line 1408
    .line 1409
    move-result v2

    .line 1410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1411
    .line 1412
    .line 1413
    move-result v3

    .line 1414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1415
    .line 1416
    .line 1417
    move-result v4

    .line 1418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1419
    .line 1420
    .line 1421
    move-result-wide v5

    .line 1422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1423
    .line 1424
    .line 1425
    move-object/from16 v0, p0

    .line 1426
    .line 1427
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setSyncSchedules(Lcom/samsung/android/knox/ContextInfo;IIIJ)Z

    .line 1428
    .line 1429
    .line 1430
    move-result v0

    .line 1431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1432
    .line 1433
    .line 1434
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1435
    .line 1436
    .line 1437
    goto/16 :goto_0

    .line 1438
    .line 1439
    :pswitch_2e
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1440
    .line 1441
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v1

    .line 1445
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1446
    .line 1447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1448
    .line 1449
    .line 1450
    move-result v2

    .line 1451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1452
    .line 1453
    .line 1454
    move-result v3

    .line 1455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1456
    .line 1457
    .line 1458
    move-result v4

    .line 1459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1460
    .line 1461
    .line 1462
    move-result-wide v5

    .line 1463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1464
    .line 1465
    .line 1466
    move-object/from16 v0, p0

    .line 1467
    .line 1468
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setSyncPeakTimings(Lcom/samsung/android/knox/ContextInfo;IIIJ)Z

    .line 1469
    .line 1470
    .line 1471
    move-result v0

    .line 1472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1476
    .line 1477
    .line 1478
    goto/16 :goto_0

    .line 1479
    .line 1480
    :pswitch_2f
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1481
    .line 1482
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v1

    .line 1486
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1487
    .line 1488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1489
    .line 1490
    .line 1491
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->sendAccountsChangedBroadcast(Lcom/samsung/android/knox/ContextInfo;)V

    .line 1492
    .line 1493
    .line 1494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1495
    .line 1496
    .line 1497
    goto/16 :goto_0

    .line 1498
    .line 1499
    :pswitch_30
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1500
    .line 1501
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v1

    .line 1505
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1506
    .line 1507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1508
    .line 1509
    .line 1510
    move-result-wide v2

    .line 1511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1512
    .line 1513
    .line 1514
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->deleteAccount(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 1515
    .line 1516
    .line 1517
    move-result v0

    .line 1518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1519
    .line 1520
    .line 1521
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1522
    .line 1523
    .line 1524
    goto/16 :goto_0

    .line 1525
    .line 1526
    :pswitch_31
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1527
    .line 1528
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1529
    .line 1530
    .line 1531
    move-result-object v1

    .line 1532
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1533
    .line 1534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1535
    .line 1536
    .line 1537
    move-result-wide v2

    .line 1538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1539
    .line 1540
    .line 1541
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/Account;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v0

    .line 1545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1546
    .line 1547
    .line 1548
    invoke-virtual {v14, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1549
    .line 1550
    .line 1551
    goto/16 :goto_0

    .line 1552
    .line 1553
    :pswitch_32
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1554
    .line 1555
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v1

    .line 1559
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1560
    .line 1561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v2

    .line 1565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v3

    .line 1569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v4

    .line 1573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1574
    .line 1575
    .line 1576
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 1577
    .line 1578
    .line 1579
    move-result-wide v0

    .line 1580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    .line 1582
    .line 1583
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1584
    .line 1585
    .line 1586
    goto/16 :goto_0

    .line 1587
    .line 1588
    :pswitch_33
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1589
    .line 1590
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v1

    .line 1594
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1595
    .line 1596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v2

    .line 1600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1601
    .line 1602
    .line 1603
    move-result-wide v3

    .line 1604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1605
    .line 1606
    .line 1607
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setAccountName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    .line 1608
    .line 1609
    .line 1610
    move-result v0

    .line 1611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1615
    .line 1616
    .line 1617
    goto/16 :goto_0

    .line 1618
    .line 1619
    :pswitch_34
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1620
    .line 1621
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v1

    .line 1625
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1626
    .line 1627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1628
    .line 1629
    .line 1630
    move-result-wide v2

    .line 1631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1632
    .line 1633
    .line 1634
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setAsDefaultAccount(Lcom/samsung/android/knox/ContextInfo;J)Z

    .line 1635
    .line 1636
    .line 1637
    move-result v0

    .line 1638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1639
    .line 1640
    .line 1641
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1642
    .line 1643
    .line 1644
    goto/16 :goto_0

    .line 1645
    .line 1646
    :pswitch_35
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1647
    .line 1648
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v1

    .line 1652
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1653
    .line 1654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1655
    .line 1656
    .line 1657
    move-result v2

    .line 1658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1659
    .line 1660
    .line 1661
    move-result-wide v3

    .line 1662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1663
    .line 1664
    .line 1665
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setPastDaysToSync(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    .line 1666
    .line 1667
    .line 1668
    move-result v0

    .line 1669
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1670
    .line 1671
    .line 1672
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1673
    .line 1674
    .line 1675
    goto/16 :goto_0

    .line 1676
    .line 1677
    :pswitch_36
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1678
    .line 1679
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v1

    .line 1683
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1684
    .line 1685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1686
    .line 1687
    .line 1688
    move-result-object v2

    .line 1689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v3

    .line 1693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1694
    .line 1695
    .line 1696
    move-result-wide v4

    .line 1697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1698
    .line 1699
    .line 1700
    move-object/from16 v0, p0

    .line 1701
    .line 1702
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setClientAuthCert(Lcom/samsung/android/knox/ContextInfo;[BLjava/lang/String;J)V

    .line 1703
    .line 1704
    .line 1705
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1706
    .line 1707
    .line 1708
    goto/16 :goto_0

    .line 1709
    .line 1710
    :pswitch_37
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1711
    .line 1712
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v1

    .line 1716
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1717
    .line 1718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v2

    .line 1722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1723
    .line 1724
    .line 1725
    move-result-wide v3

    .line 1726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1727
    .line 1728
    .line 1729
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setSignature(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    .line 1730
    .line 1731
    .line 1732
    move-result v0

    .line 1733
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1734
    .line 1735
    .line 1736
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1737
    .line 1738
    .line 1739
    goto/16 :goto_0

    .line 1740
    .line 1741
    :pswitch_38
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1742
    .line 1743
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v1

    .line 1747
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1748
    .line 1749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v2

    .line 1753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1754
    .line 1755
    .line 1756
    move-result-wide v3

    .line 1757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1758
    .line 1759
    .line 1760
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    .line 1761
    .line 1762
    .line 1763
    move-result v0

    .line 1764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1765
    .line 1766
    .line 1767
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1768
    .line 1769
    .line 1770
    goto :goto_0

    .line 1771
    :pswitch_39
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1772
    .line 1773
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1774
    .line 1775
    .line 1776
    move-result-object v1

    .line 1777
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1778
    .line 1779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1780
    .line 1781
    .line 1782
    move-result v2

    .line 1783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1784
    .line 1785
    .line 1786
    move-result-wide v3

    .line 1787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1788
    .line 1789
    .line 1790
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setAlwaysVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    .line 1791
    .line 1792
    .line 1793
    move-result v0

    .line 1794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1795
    .line 1796
    .line 1797
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1798
    .line 1799
    .line 1800
    goto :goto_0

    .line 1801
    :pswitch_3a
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1802
    .line 1803
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v1

    .line 1807
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1808
    .line 1809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1810
    .line 1811
    .line 1812
    move-result v2

    .line 1813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1814
    .line 1815
    .line 1816
    move-result-wide v3

    .line 1817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1818
    .line 1819
    .line 1820
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    .line 1821
    .line 1822
    .line 1823
    move-result v0

    .line 1824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1825
    .line 1826
    .line 1827
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1828
    .line 1829
    .line 1830
    goto :goto_0

    .line 1831
    :pswitch_3b
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1832
    .line 1833
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v1

    .line 1837
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1838
    .line 1839
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1840
    .line 1841
    .line 1842
    move-result v2

    .line 1843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1844
    .line 1845
    .line 1846
    move-result-wide v3

    .line 1847
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1848
    .line 1849
    .line 1850
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    .line 1851
    .line 1852
    .line 1853
    move-result v0

    .line 1854
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1855
    .line 1856
    .line 1857
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1858
    .line 1859
    .line 1860
    :goto_0
    move/from16 v32, v13

    .line 1861
    .line 1862
    goto/16 :goto_1

    .line 1863
    .line 1864
    :pswitch_3c
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1865
    .line 1866
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v1

    .line 1870
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 1871
    .line 1872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v2

    .line 1876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v3

    .line 1880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v4

    .line 1884
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1885
    .line 1886
    .line 1887
    move-result-object v5

    .line 1888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1889
    .line 1890
    .line 1891
    move-result v6

    .line 1892
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1893
    .line 1894
    .line 1895
    move-result v7

    .line 1896
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1897
    .line 1898
    .line 1899
    move-result v8

    .line 1900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1901
    .line 1902
    .line 1903
    move-result-object v9

    .line 1904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1905
    .line 1906
    .line 1907
    move-result-object v10

    .line 1908
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v11

    .line 1912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1913
    .line 1914
    .line 1915
    move-result v12

    .line 1916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1917
    .line 1918
    .line 1919
    move-result v16

    .line 1920
    move/from16 v32, v13

    .line 1921
    .line 1922
    move/from16 v13, v16

    .line 1923
    .line 1924
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v16

    .line 1928
    move-object/from16 v14, v16

    .line 1929
    .line 1930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1931
    .line 1932
    .line 1933
    move-result v16

    .line 1934
    move-object v0, v15

    .line 1935
    move/from16 v15, v16

    .line 1936
    .line 1937
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1938
    .line 1939
    .line 1940
    move-result v16

    .line 1941
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1942
    .line 1943
    .line 1944
    move-result v17

    .line 1945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v18

    .line 1949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1950
    .line 1951
    .line 1952
    move-result-object v19

    .line 1953
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1954
    .line 1955
    .line 1956
    move-result v20

    .line 1957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1958
    .line 1959
    .line 1960
    move-result v21

    .line 1961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1962
    .line 1963
    .line 1964
    move-result v22

    .line 1965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1966
    .line 1967
    .line 1968
    move-result v23

    .line 1969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1970
    .line 1971
    .line 1972
    move-result v24

    .line 1973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1974
    .line 1975
    .line 1976
    move-result v25

    .line 1977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1978
    .line 1979
    .line 1980
    move-result v26

    .line 1981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1982
    .line 1983
    .line 1984
    move-result v27

    .line 1985
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1986
    .line 1987
    .line 1988
    move-result v28

    .line 1989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1990
    .line 1991
    .line 1992
    move-result v29

    .line 1993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1994
    .line 1995
    .line 1996
    move-result-object v30

    .line 1997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1998
    .line 1999
    .line 2000
    move-result-object v31

    .line 2001
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2002
    .line 2003
    .line 2004
    move-object/from16 v0, p0

    .line 2005
    .line 2006
    invoke-interface/range {v0 .. v31}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J

    .line 2007
    .line 2008
    .line 2009
    move-result-wide v0

    .line 2010
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2011
    .line 2012
    .line 2013
    move-object/from16 v15, p3

    .line 2014
    .line 2015
    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2016
    .line 2017
    .line 2018
    goto/16 :goto_1

    .line 2019
    .line 2020
    :pswitch_3d
    move/from16 v32, v13

    .line 2021
    .line 2022
    move-object v0, v15

    .line 2023
    move-object v15, v14

    .line 2024
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2025
    .line 2026
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2027
    .line 2028
    .line 2029
    move-result-object v1

    .line 2030
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 2031
    .line 2032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2033
    .line 2034
    .line 2035
    move-result-object v2

    .line 2036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2037
    .line 2038
    .line 2039
    move-result-object v3

    .line 2040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2041
    .line 2042
    .line 2043
    move-result-object v4

    .line 2044
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2045
    .line 2046
    .line 2047
    move-result-object v5

    .line 2048
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2049
    .line 2050
    .line 2051
    move-result v6

    .line 2052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2053
    .line 2054
    .line 2055
    move-result v7

    .line 2056
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2057
    .line 2058
    .line 2059
    move-result v8

    .line 2060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2061
    .line 2062
    .line 2063
    move-result-object v9

    .line 2064
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2065
    .line 2066
    .line 2067
    move-result-object v10

    .line 2068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2069
    .line 2070
    .line 2071
    move-result-object v11

    .line 2072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2073
    .line 2074
    .line 2075
    move-result v12

    .line 2076
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2077
    .line 2078
    .line 2079
    move-result v13

    .line 2080
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2081
    .line 2082
    .line 2083
    move-result-object v14

    .line 2084
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2085
    .line 2086
    .line 2087
    move-result v16

    .line 2088
    move/from16 v15, v16

    .line 2089
    .line 2090
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2091
    .line 2092
    .line 2093
    move-result v16

    .line 2094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2095
    .line 2096
    .line 2097
    move-result v17

    .line 2098
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2099
    .line 2100
    .line 2101
    move-result-object v18

    .line 2102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2103
    .line 2104
    .line 2105
    move-result-object v19

    .line 2106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2107
    .line 2108
    .line 2109
    move-object/from16 v0, p0

    .line 2110
    .line 2111
    invoke-interface/range {v0 .. v19}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    .line 2112
    .line 2113
    .line 2114
    move-result-wide v0

    .line 2115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2116
    .line 2117
    .line 2118
    move-object/from16 v7, p3

    .line 2119
    .line 2120
    invoke-virtual {v7, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2121
    .line 2122
    .line 2123
    goto :goto_1

    .line 2124
    :pswitch_3e
    move/from16 v32, v13

    .line 2125
    .line 2126
    move-object v7, v14

    .line 2127
    move-object v0, v15

    .line 2128
    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2129
    .line 2130
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2131
    .line 2132
    .line 2133
    move-result-object v1

    .line 2134
    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    .line 2135
    .line 2136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2137
    .line 2138
    .line 2139
    move-result-object v2

    .line 2140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2141
    .line 2142
    .line 2143
    move-result-object v3

    .line 2144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2145
    .line 2146
    .line 2147
    move-result-object v4

    .line 2148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2149
    .line 2150
    .line 2151
    move-result-object v5

    .line 2152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2153
    .line 2154
    .line 2155
    move-result-object v6

    .line 2156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2157
    .line 2158
    .line 2159
    move-object/from16 v0, p0

    .line 2160
    .line 2161
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->createAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 2162
    .line 2163
    .line 2164
    move-result-wide v0

    .line 2165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2166
    .line 2167
    .line 2168
    invoke-virtual {v7, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2169
    .line 2170
    .line 2171
    :goto_1
    return v32

    .line 2172
    :cond_1
    move/from16 v32, v13

    .line 2173
    .line 2174
    move-object v7, v14

    .line 2175
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2176
    .line 2177
    .line 2178
    return v32

    .line 2179
    :pswitch_data_0
    .packed-switch 0x1
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
