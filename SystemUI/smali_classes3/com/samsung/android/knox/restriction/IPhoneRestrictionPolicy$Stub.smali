.class public abstract Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_addIncomingCallExceptionPattern:I = 0x51

.field public static final TRANSACTION_addIncomingCallRestriction:I = 0x6

.field public static final TRANSACTION_addIncomingSmsExceptionPattern:I = 0x59

.field public static final TRANSACTION_addIncomingSmsRestriction:I = 0x1b

.field public static final TRANSACTION_addNumberOfIncomingCalls:I = 0x13

.field public static final TRANSACTION_addNumberOfIncomingSms:I = 0x27

.field public static final TRANSACTION_addNumberOfOutgoingCalls:I = 0x14

.field public static final TRANSACTION_addNumberOfOutgoingSms:I = 0x28

.field public static final TRANSACTION_addOutgoingCallExceptionPattern:I = 0x50

.field public static final TRANSACTION_addOutgoingCallRestriction:I = 0x5

.field public static final TRANSACTION_addOutgoingSmsExceptionPattern:I = 0x58

.field public static final TRANSACTION_addOutgoingSmsRestriction:I = 0x1a

.field public static final TRANSACTION_allowCallerIDDisplay:I = 0x43

.field public static final TRANSACTION_allowCopyContactToSim:I = 0x4a

.field public static final TRANSACTION_allowDataNetworkFromSimSlot:I = 0x63

.field public static final TRANSACTION_allowIncomingCallFromSimSlot:I = 0x64

.field public static final TRANSACTION_allowIncomingMms:I = 0x37

.field public static final TRANSACTION_allowIncomingSms:I = 0x33

.field public static final TRANSACTION_allowIncomingSmsFromSimSlot:I = 0x66

.field public static final TRANSACTION_allowMmsFromSimSlot:I = 0x68

.field public static final TRANSACTION_allowOutgoingCallFromSimSlot:I = 0x65

.field public static final TRANSACTION_allowOutgoingMms:I = 0x38

.field public static final TRANSACTION_allowOutgoingSms:I = 0x34

.field public static final TRANSACTION_allowOutgoingSmsFromSimSlot:I = 0x67

.field public static final TRANSACTION_allowWapPush:I = 0x41

.field public static final TRANSACTION_blockMmsWithStorage:I = 0x3d

.field public static final TRANSACTION_blockSmsWithStorage:I = 0x3b

.field public static final TRANSACTION_canIncomingCall:I = 0xa

.field public static final TRANSACTION_canIncomingSms:I = 0x1f

.field public static final TRANSACTION_canOutgoingCall:I = 0x9

.field public static final TRANSACTION_canOutgoingSms:I = 0x1e

.field public static final TRANSACTION_changeSimPinCode:I = 0x46

.field public static final TRANSACTION_checkDataCallLimit:I = 0x30

.field public static final TRANSACTION_checkEnableUseOfPacketData:I = 0x2f

.field public static final TRANSACTION_clearStoredBlockedMms:I = 0x40

.field public static final TRANSACTION_clearStoredBlockedSms:I = 0x3f

.field public static final TRANSACTION_decreaseNumberOfOutgoingSms:I = 0x29

.field public static final TRANSACTION_enableLimitNumberOfCalls:I = 0xd

.field public static final TRANSACTION_enableLimitNumberOfSms:I = 0x20

.field public static final TRANSACTION_getDataCallLimitEnabled:I = 0x2b

.field public static final TRANSACTION_getDisclaimerText:I = 0x5d

.field public static final TRANSACTION_getEmergencyCallOnly:I = 0xc

.field public static final TRANSACTION_getIncomingCallExceptionPatterns:I = 0x4d

.field public static final TRANSACTION_getIncomingCallRestriction:I = 0x2

.field public static final TRANSACTION_getIncomingSmsExceptionPatterns:I = 0x55

.field public static final TRANSACTION_getIncomingSmsRestriction:I = 0x17

.field public static final TRANSACTION_getLimitOfDataCalls:I = 0x2d

.field public static final TRANSACTION_getLimitOfIncomingCalls:I = 0x10

.field public static final TRANSACTION_getLimitOfIncomingSms:I = 0x24

.field public static final TRANSACTION_getLimitOfOutgoingCalls:I = 0x12

.field public static final TRANSACTION_getLimitOfOutgoingSms:I = 0x26

.field public static final TRANSACTION_getOutgoingCallExceptionPatterns:I = 0x4c

.field public static final TRANSACTION_getOutgoingCallRestriction:I = 0x1

.field public static final TRANSACTION_getOutgoingSmsExceptionPatterns:I = 0x54

.field public static final TRANSACTION_getOutgoingSmsRestriction:I = 0x16

.field public static final TRANSACTION_getPinCode:I = 0x48

.field public static final TRANSACTION_getRCSMessage:I = 0x60

.field public static final TRANSACTION_isBlockMmsWithStorageEnabled:I = 0x3e

.field public static final TRANSACTION_isBlockSmsWithStorageEnabled:I = 0x3c

.field public static final TRANSACTION_isCallerIDDisplayAllowed:I = 0x44

.field public static final TRANSACTION_isCopyContactToSimAllowed:I = 0x4b

.field public static final TRANSACTION_isDataAllowedFromSimSlot:I = 0x69

.field public static final TRANSACTION_isIncomingCallAllowedFromSimSlot:I = 0x6a

.field public static final TRANSACTION_isIncomingMmsAllowed:I = 0x39

.field public static final TRANSACTION_isIncomingSmsAllowed:I = 0x35

.field public static final TRANSACTION_isIncomingSmsAllowedFromSimSlot:I = 0x6c

.field public static final TRANSACTION_isLimitNumberOfCallsEnabled:I = 0xe

.field public static final TRANSACTION_isLimitNumberOfSmsEnabled:I = 0x21

.field public static final TRANSACTION_isMmsAllowedFromSimSlot:I = 0x6e

.field public static final TRANSACTION_isOutgoingCallAllowedFromSimSlot:I = 0x6b

.field public static final TRANSACTION_isOutgoingMmsAllowed:I = 0x3a

.field public static final TRANSACTION_isOutgoingSmsAllowed:I = 0x36

.field public static final TRANSACTION_isOutgoingSmsAllowedFromSimSlot:I = 0x6d

.field public static final TRANSACTION_isRCSEnabled:I = 0x5f

.field public static final TRANSACTION_isRCSEnabledBySimSlot:I = 0x62

.field public static final TRANSACTION_isSimLockedByAdmin:I = 0x47

.field public static final TRANSACTION_isSubIdLockedByAdmin:I = 0x49

.field public static final TRANSACTION_isWapPushAllowed:I = 0x42

.field public static final TRANSACTION_lockUnlockCorporateSimCard:I = 0x45

.field public static final TRANSACTION_removeIncomingCallExceptionPattern:I = 0x4f

.field public static final TRANSACTION_removeIncomingCallRestriction:I = 0x4

.field public static final TRANSACTION_removeIncomingSmsExceptionPattern:I = 0x57

.field public static final TRANSACTION_removeIncomingSmsRestriction:I = 0x19

.field public static final TRANSACTION_removeOutgoingCallExceptionPattern:I = 0x4e

.field public static final TRANSACTION_removeOutgoingCallRestriction:I = 0x3

.field public static final TRANSACTION_removeOutgoingSmsExceptionPattern:I = 0x56

.field public static final TRANSACTION_removeOutgoingSmsRestriction:I = 0x18

.field public static final TRANSACTION_resetCallsCount:I = 0x15

.field public static final TRANSACTION_resetDataCallLimitCounter:I = 0x2e

.field public static final TRANSACTION_resetSmsCount:I = 0x22

.field public static final TRANSACTION_setDataCallLimitEnabled:I = 0x2a

.field public static final TRANSACTION_setDisclaimerText:I = 0x5c

.field public static final TRANSACTION_setEmergencyCallOnly:I = 0xb

.field public static final TRANSACTION_setIncomingCallExceptionPattern:I = 0x53

.field public static final TRANSACTION_setIncomingCallRestriction:I = 0x8

.field public static final TRANSACTION_setIncomingSmsExceptionPattern:I = 0x5b

.field public static final TRANSACTION_setIncomingSmsRestriction:I = 0x1d

.field public static final TRANSACTION_setLimitOfDataCalls:I = 0x2c

.field public static final TRANSACTION_setLimitOfIncomingCalls:I = 0xf

.field public static final TRANSACTION_setLimitOfIncomingSms:I = 0x23

.field public static final TRANSACTION_setLimitOfOutgoingCalls:I = 0x11

.field public static final TRANSACTION_setLimitOfOutgoingSms:I = 0x25

.field public static final TRANSACTION_setOutgoingCallExceptionPattern:I = 0x52

.field public static final TRANSACTION_setOutgoingCallRestriction:I = 0x7

.field public static final TRANSACTION_setOutgoingSmsExceptionPattern:I = 0x5a

.field public static final TRANSACTION_setOutgoingSmsRestriction:I = 0x1c

.field public static final TRANSACTION_setRCSEnabled:I = 0x5e

.field public static final TRANSACTION_setRCSEnabledBySimSlot:I = 0x61

.field public static final TRANSACTION_updateDataLimitState:I = 0x32

.field public static final TRANSACTION_updateDateAndDataCallCounters:I = 0x31


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.samsung.android.knox.restriction.IPhoneRestrictionPolicy"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;
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
    const-string v0, "com.samsung.android.knox.restriction.IPhoneRestrictionPolicy"

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
    instance-of v1, v0, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "com.samsung.android.knox.restriction.IPhoneRestrictionPolicy"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isMmsAllowedFromSimSlot(I)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

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
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isOutgoingSmsAllowedFromSimSlot(I)Z

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
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 70
    .line 71
    .line 72
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isIncomingSmsAllowedFromSimSlot(I)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 89
    .line 90
    .line 91
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isOutgoingCallAllowedFromSimSlot(I)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_0

    .line 102
    .line 103
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    .line 109
    .line 110
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isIncomingCallAllowedFromSimSlot(I)Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    .line 128
    .line 129
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :pswitch_6
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 142
    .line 143
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 148
    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 150
    .line 151
    .line 152
    move-result p4

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    .line 159
    .line 160
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowMmsFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :pswitch_7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 173
    .line 174
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 179
    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 181
    .line 182
    .line 183
    move-result p4

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    .line 190
    .line 191
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowOutgoingSmsFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :pswitch_8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 204
    .line 205
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 210
    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 212
    .line 213
    .line 214
    move-result p4

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    .line 221
    .line 222
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowIncomingSmsFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :pswitch_9
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 235
    .line 236
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 241
    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 243
    .line 244
    .line 245
    move-result p4

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    .line 252
    .line 253
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowOutgoingCallFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I

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
    goto/16 :goto_0

    .line 264
    .line 265
    :pswitch_a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 266
    .line 267
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 272
    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 274
    .line 275
    .line 276
    move-result p4

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    .line 283
    .line 284
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowIncomingCallFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I

    .line 285
    .line 286
    .line 287
    move-result p0

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :pswitch_b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 297
    .line 298
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 303
    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 305
    .line 306
    .line 307
    move-result p4

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    .line 314
    .line 315
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowDataNetworkFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I

    .line 316
    .line 317
    .line 318
    move-result p0

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_0

    .line 326
    .line 327
    :pswitch_c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 328
    .line 329
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 334
    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 336
    .line 337
    .line 338
    move-result p4

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    .line 349
    .line 350
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)Z

    .line 351
    .line 352
    .line 353
    move-result p0

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_0

    .line 361
    .line 362
    :pswitch_d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 363
    .line 364
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 369
    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 371
    .line 372
    .line 373
    move-result p4

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    .line 384
    .line 385
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)I

    .line 386
    .line 387
    .line 388
    move-result p0

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_0

    .line 396
    .line 397
    :pswitch_e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 398
    .line 399
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 404
    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 406
    .line 407
    .line 408
    move-result-wide v2

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    .line 411
    .line 412
    invoke-interface {p0, p1, v2, v3}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getRCSMessage(Lcom/samsung/android/knox/ContextInfo;J)Landroid/os/Bundle;

    .line 413
    .line 414
    .line 415
    move-result-object p0

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 420
    .line 421
    .line 422
    goto/16 :goto_0

    .line 423
    .line 424
    :pswitch_f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 425
    .line 426
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 431
    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 433
    .line 434
    .line 435
    move-result p4

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    .line 442
    .line 443
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isRCSEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    .line 444
    .line 445
    .line 446
    move-result p0

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 451
    .line 452
    .line 453
    goto/16 :goto_0

    .line 454
    .line 455
    :pswitch_10
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 456
    .line 457
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 462
    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 464
    .line 465
    .line 466
    move-result p4

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    .line 473
    .line 474
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setRCSEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)I

    .line 475
    .line 476
    .line 477
    move-result p0

    .line 478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    .line 480
    .line 481
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    .line 483
    .line 484
    goto/16 :goto_0

    .line 485
    .line 486
    :pswitch_11
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 487
    .line 488
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 493
    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    .line 496
    .line 497
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getDisclaimerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object p0

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    goto/16 :goto_0

    .line 508
    .line 509
    :pswitch_12
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 510
    .line 511
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 516
    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object p4

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    .line 523
    .line 524
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setDisclaimerText(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 525
    .line 526
    .line 527
    move-result p0

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    .line 530
    .line 531
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 532
    .line 533
    .line 534
    goto/16 :goto_0

    .line 535
    .line 536
    :pswitch_13
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 537
    .line 538
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object p1

    .line 542
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 543
    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object p4

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 549
    .line 550
    .line 551
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 552
    .line 553
    .line 554
    move-result p0

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    .line 557
    .line 558
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 559
    .line 560
    .line 561
    goto/16 :goto_0

    .line 562
    .line 563
    :pswitch_14
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 564
    .line 565
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object p1

    .line 569
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 570
    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object p4

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    .line 577
    .line 578
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 579
    .line 580
    .line 581
    move-result p0

    .line 582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    .line 584
    .line 585
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 586
    .line 587
    .line 588
    goto/16 :goto_0

    .line 589
    .line 590
    :pswitch_15
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 591
    .line 592
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object p1

    .line 596
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 597
    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object p4

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    .line 604
    .line 605
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 606
    .line 607
    .line 608
    move-result p0

    .line 609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    .line 611
    .line 612
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 613
    .line 614
    .line 615
    goto/16 :goto_0

    .line 616
    .line 617
    :pswitch_16
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 618
    .line 619
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object p1

    .line 623
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 624
    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object p4

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    .line 631
    .line 632
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 633
    .line 634
    .line 635
    move-result p0

    .line 636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    .line 638
    .line 639
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 640
    .line 641
    .line 642
    goto/16 :goto_0

    .line 643
    .line 644
    :pswitch_17
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 645
    .line 646
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object p1

    .line 650
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 651
    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 653
    .line 654
    .line 655
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 656
    .line 657
    .line 658
    move-result p0

    .line 659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    .line 661
    .line 662
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 663
    .line 664
    .line 665
    goto/16 :goto_0

    .line 666
    .line 667
    :pswitch_18
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 668
    .line 669
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object p1

    .line 673
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 674
    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 676
    .line 677
    .line 678
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 679
    .line 680
    .line 681
    move-result p0

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    .line 684
    .line 685
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 686
    .line 687
    .line 688
    goto/16 :goto_0

    .line 689
    .line 690
    :pswitch_19
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 691
    .line 692
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object p1

    .line 696
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 697
    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 699
    .line 700
    .line 701
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getIncomingSmsExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object p0

    .line 705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    .line 707
    .line 708
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    goto/16 :goto_0

    .line 712
    .line 713
    :pswitch_1a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 714
    .line 715
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object p1

    .line 719
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 720
    .line 721
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    .line 723
    .line 724
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getOutgoingSmsExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object p0

    .line 728
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    .line 730
    .line 731
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    goto/16 :goto_0

    .line 735
    .line 736
    :pswitch_1b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 737
    .line 738
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object p1

    .line 742
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 743
    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object p4

    .line 748
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    .line 750
    .line 751
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 752
    .line 753
    .line 754
    move-result p0

    .line 755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    .line 757
    .line 758
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 759
    .line 760
    .line 761
    goto/16 :goto_0

    .line 762
    .line 763
    :pswitch_1c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 764
    .line 765
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object p1

    .line 769
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 770
    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object p4

    .line 775
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    .line 777
    .line 778
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 779
    .line 780
    .line 781
    move-result p0

    .line 782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    .line 784
    .line 785
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 786
    .line 787
    .line 788
    goto/16 :goto_0

    .line 789
    .line 790
    :pswitch_1d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 791
    .line 792
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    move-result-object p1

    .line 796
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 797
    .line 798
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object p4

    .line 802
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    .line 804
    .line 805
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 806
    .line 807
    .line 808
    move-result p0

    .line 809
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    .line 811
    .line 812
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 813
    .line 814
    .line 815
    goto/16 :goto_0

    .line 816
    .line 817
    :pswitch_1e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 818
    .line 819
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object p1

    .line 823
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 824
    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object p4

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    .line 831
    .line 832
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 833
    .line 834
    .line 835
    move-result p0

    .line 836
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    .line 838
    .line 839
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 840
    .line 841
    .line 842
    goto/16 :goto_0

    .line 843
    .line 844
    :pswitch_1f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 845
    .line 846
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object p1

    .line 850
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 851
    .line 852
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 853
    .line 854
    .line 855
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 856
    .line 857
    .line 858
    move-result p0

    .line 859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    .line 861
    .line 862
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 863
    .line 864
    .line 865
    goto/16 :goto_0

    .line 866
    .line 867
    :pswitch_20
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 868
    .line 869
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    move-result-object p1

    .line 873
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 874
    .line 875
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    .line 877
    .line 878
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 879
    .line 880
    .line 881
    move-result p0

    .line 882
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    .line 884
    .line 885
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 886
    .line 887
    .line 888
    goto/16 :goto_0

    .line 889
    .line 890
    :pswitch_21
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 891
    .line 892
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object p1

    .line 896
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 897
    .line 898
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 899
    .line 900
    .line 901
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getIncomingCallExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object p0

    .line 905
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    .line 907
    .line 908
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    goto/16 :goto_0

    .line 912
    .line 913
    :pswitch_22
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 914
    .line 915
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object p1

    .line 919
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 920
    .line 921
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    .line 923
    .line 924
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getOutgoingCallExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object p0

    .line 928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    .line 930
    .line 931
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    goto/16 :goto_0

    .line 935
    .line 936
    :pswitch_23
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 937
    .line 938
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object p1

    .line 942
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 943
    .line 944
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 945
    .line 946
    .line 947
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isCopyContactToSimAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 948
    .line 949
    .line 950
    move-result p0

    .line 951
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    .line 953
    .line 954
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 955
    .line 956
    .line 957
    goto/16 :goto_0

    .line 958
    .line 959
    :pswitch_24
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 960
    .line 961
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object p1

    .line 965
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 966
    .line 967
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 968
    .line 969
    .line 970
    move-result p4

    .line 971
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 972
    .line 973
    .line 974
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowCopyContactToSim(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 975
    .line 976
    .line 977
    move-result p0

    .line 978
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    .line 980
    .line 981
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 982
    .line 983
    .line 984
    goto/16 :goto_0

    .line 985
    .line 986
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 987
    .line 988
    .line 989
    move-result p1

    .line 990
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    .line 992
    .line 993
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isSubIdLockedByAdmin(I)Z

    .line 994
    .line 995
    .line 996
    move-result p0

    .line 997
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1001
    .line 1002
    .line 1003
    goto/16 :goto_0

    .line 1004
    .line 1005
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object p1

    .line 1009
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1010
    .line 1011
    .line 1012
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getPinCode(Ljava/lang/String;)Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object p0

    .line 1016
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    goto/16 :goto_0

    .line 1023
    .line 1024
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1025
    .line 1026
    .line 1027
    move-result-object p1

    .line 1028
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    .line 1030
    .line 1031
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    .line 1032
    .line 1033
    .line 1034
    move-result p0

    .line 1035
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1039
    .line 1040
    .line 1041
    goto/16 :goto_0

    .line 1042
    .line 1043
    :pswitch_28
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1044
    .line 1045
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    move-result-object p1

    .line 1049
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1050
    .line 1051
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object p4

    .line 1055
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v2

    .line 1063
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1064
    .line 1065
    .line 1066
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->changeSimPinCode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    .line 1068
    .line 1069
    move-result p0

    .line 1070
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1074
    .line 1075
    .line 1076
    goto/16 :goto_0

    .line 1077
    .line 1078
    :pswitch_29
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1079
    .line 1080
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1081
    .line 1082
    .line 1083
    move-result-object p1

    .line 1084
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1085
    .line 1086
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object p4

    .line 1090
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v0

    .line 1094
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1095
    .line 1096
    .line 1097
    move-result v2

    .line 1098
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1099
    .line 1100
    .line 1101
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->lockUnlockCorporateSimCard(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1102
    .line 1103
    .line 1104
    move-result p0

    .line 1105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1109
    .line 1110
    .line 1111
    goto/16 :goto_0

    .line 1112
    .line 1113
    :pswitch_2a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1114
    .line 1115
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1116
    .line 1117
    .line 1118
    move-result-object p1

    .line 1119
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1120
    .line 1121
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1122
    .line 1123
    .line 1124
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isCallerIDDisplayAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1125
    .line 1126
    .line 1127
    move-result p0

    .line 1128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1132
    .line 1133
    .line 1134
    goto/16 :goto_0

    .line 1135
    .line 1136
    :pswitch_2b
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1145
    .line 1146
    .line 1147
    move-result p4

    .line 1148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1149
    .line 1150
    .line 1151
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowCallerIDDisplay(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1152
    .line 1153
    .line 1154
    move-result p0

    .line 1155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1159
    .line 1160
    .line 1161
    goto/16 :goto_0

    .line 1162
    .line 1163
    :pswitch_2c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1164
    .line 1165
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1166
    .line 1167
    .line 1168
    move-result-object p1

    .line 1169
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1170
    .line 1171
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1172
    .line 1173
    .line 1174
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isWapPushAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1175
    .line 1176
    .line 1177
    move-result p0

    .line 1178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1179
    .line 1180
    .line 1181
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1182
    .line 1183
    .line 1184
    goto/16 :goto_0

    .line 1185
    .line 1186
    :pswitch_2d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1187
    .line 1188
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1189
    .line 1190
    .line 1191
    move-result-object p1

    .line 1192
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1193
    .line 1194
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1195
    .line 1196
    .line 1197
    move-result p4

    .line 1198
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    .line 1200
    .line 1201
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowWapPush(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1202
    .line 1203
    .line 1204
    move-result p0

    .line 1205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1209
    .line 1210
    .line 1211
    goto/16 :goto_0

    .line 1212
    .line 1213
    :pswitch_2e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1214
    .line 1215
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1216
    .line 1217
    .line 1218
    move-result-object p1

    .line 1219
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1220
    .line 1221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1222
    .line 1223
    .line 1224
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->clearStoredBlockedMms(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1225
    .line 1226
    .line 1227
    move-result p0

    .line 1228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1232
    .line 1233
    .line 1234
    goto/16 :goto_0

    .line 1235
    .line 1236
    :pswitch_2f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1237
    .line 1238
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1239
    .line 1240
    .line 1241
    move-result-object p1

    .line 1242
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1243
    .line 1244
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1245
    .line 1246
    .line 1247
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->clearStoredBlockedSms(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1248
    .line 1249
    .line 1250
    move-result p0

    .line 1251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1255
    .line 1256
    .line 1257
    goto/16 :goto_0

    .line 1258
    .line 1259
    :pswitch_30
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1260
    .line 1261
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1262
    .line 1263
    .line 1264
    move-result-object p1

    .line 1265
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1266
    .line 1267
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1268
    .line 1269
    .line 1270
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1271
    .line 1272
    .line 1273
    move-result p0

    .line 1274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1278
    .line 1279
    .line 1280
    goto/16 :goto_0

    .line 1281
    .line 1282
    :pswitch_31
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1283
    .line 1284
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1285
    .line 1286
    .line 1287
    move-result-object p1

    .line 1288
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1289
    .line 1290
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1291
    .line 1292
    .line 1293
    move-result p4

    .line 1294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1295
    .line 1296
    .line 1297
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->blockMmsWithStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1298
    .line 1299
    .line 1300
    move-result p0

    .line 1301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1305
    .line 1306
    .line 1307
    goto/16 :goto_0

    .line 1308
    .line 1309
    :pswitch_32
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1310
    .line 1311
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1312
    .line 1313
    .line 1314
    move-result-object p1

    .line 1315
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1316
    .line 1317
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1318
    .line 1319
    .line 1320
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1321
    .line 1322
    .line 1323
    move-result p0

    .line 1324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1328
    .line 1329
    .line 1330
    goto/16 :goto_0

    .line 1331
    .line 1332
    :pswitch_33
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1333
    .line 1334
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1335
    .line 1336
    .line 1337
    move-result-object p1

    .line 1338
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1339
    .line 1340
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1341
    .line 1342
    .line 1343
    move-result p4

    .line 1344
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1345
    .line 1346
    .line 1347
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->blockSmsWithStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1348
    .line 1349
    .line 1350
    move-result p0

    .line 1351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1355
    .line 1356
    .line 1357
    goto/16 :goto_0

    .line 1358
    .line 1359
    :pswitch_34
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1360
    .line 1361
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1362
    .line 1363
    .line 1364
    move-result-object p1

    .line 1365
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1366
    .line 1367
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1368
    .line 1369
    .line 1370
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isOutgoingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1371
    .line 1372
    .line 1373
    move-result p0

    .line 1374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1378
    .line 1379
    .line 1380
    goto/16 :goto_0

    .line 1381
    .line 1382
    :pswitch_35
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1383
    .line 1384
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1385
    .line 1386
    .line 1387
    move-result-object p1

    .line 1388
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1389
    .line 1390
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1391
    .line 1392
    .line 1393
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isIncomingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1394
    .line 1395
    .line 1396
    move-result p0

    .line 1397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1401
    .line 1402
    .line 1403
    goto/16 :goto_0

    .line 1404
    .line 1405
    :pswitch_36
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1406
    .line 1407
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1408
    .line 1409
    .line 1410
    move-result-object p1

    .line 1411
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1412
    .line 1413
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1414
    .line 1415
    .line 1416
    move-result p4

    .line 1417
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1418
    .line 1419
    .line 1420
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowOutgoingMms(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1421
    .line 1422
    .line 1423
    move-result p0

    .line 1424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1425
    .line 1426
    .line 1427
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1428
    .line 1429
    .line 1430
    goto/16 :goto_0

    .line 1431
    .line 1432
    :pswitch_37
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1433
    .line 1434
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1435
    .line 1436
    .line 1437
    move-result-object p1

    .line 1438
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1439
    .line 1440
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1441
    .line 1442
    .line 1443
    move-result p4

    .line 1444
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1445
    .line 1446
    .line 1447
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowIncomingMms(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1448
    .line 1449
    .line 1450
    move-result p0

    .line 1451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1455
    .line 1456
    .line 1457
    goto/16 :goto_0

    .line 1458
    .line 1459
    :pswitch_38
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1460
    .line 1461
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1462
    .line 1463
    .line 1464
    move-result-object p1

    .line 1465
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1466
    .line 1467
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1468
    .line 1469
    .line 1470
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isOutgoingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1471
    .line 1472
    .line 1473
    move-result p0

    .line 1474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1478
    .line 1479
    .line 1480
    goto/16 :goto_0

    .line 1481
    .line 1482
    :pswitch_39
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1483
    .line 1484
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1485
    .line 1486
    .line 1487
    move-result-object p1

    .line 1488
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1489
    .line 1490
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1491
    .line 1492
    .line 1493
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isIncomingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1494
    .line 1495
    .line 1496
    move-result p0

    .line 1497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1498
    .line 1499
    .line 1500
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1501
    .line 1502
    .line 1503
    goto/16 :goto_0

    .line 1504
    .line 1505
    :pswitch_3a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1506
    .line 1507
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1508
    .line 1509
    .line 1510
    move-result-object p1

    .line 1511
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1512
    .line 1513
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1514
    .line 1515
    .line 1516
    move-result p4

    .line 1517
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1518
    .line 1519
    .line 1520
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowOutgoingSms(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1521
    .line 1522
    .line 1523
    move-result p0

    .line 1524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1525
    .line 1526
    .line 1527
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1528
    .line 1529
    .line 1530
    goto/16 :goto_0

    .line 1531
    .line 1532
    :pswitch_3b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1533
    .line 1534
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1535
    .line 1536
    .line 1537
    move-result-object p1

    .line 1538
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1539
    .line 1540
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1541
    .line 1542
    .line 1543
    move-result p4

    .line 1544
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1545
    .line 1546
    .line 1547
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->allowIncomingSms(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1548
    .line 1549
    .line 1550
    move-result p0

    .line 1551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1552
    .line 1553
    .line 1554
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1555
    .line 1556
    .line 1557
    goto/16 :goto_0

    .line 1558
    .line 1559
    :pswitch_3c
    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->updateDataLimitState()V

    .line 1560
    .line 1561
    .line 1562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1563
    .line 1564
    .line 1565
    goto/16 :goto_0

    .line 1566
    .line 1567
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1568
    .line 1569
    .line 1570
    move-result-wide v2

    .line 1571
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1572
    .line 1573
    .line 1574
    invoke-interface {p0, v2, v3}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V

    .line 1575
    .line 1576
    .line 1577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    .line 1579
    .line 1580
    goto/16 :goto_0

    .line 1581
    .line 1582
    :pswitch_3e
    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->checkDataCallLimit()Z

    .line 1583
    .line 1584
    .line 1585
    move-result p0

    .line 1586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1587
    .line 1588
    .line 1589
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1590
    .line 1591
    .line 1592
    goto/16 :goto_0

    .line 1593
    .line 1594
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1595
    .line 1596
    .line 1597
    move-result p1

    .line 1598
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1599
    .line 1600
    .line 1601
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    .line 1602
    .line 1603
    .line 1604
    move-result p0

    .line 1605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1606
    .line 1607
    .line 1608
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1609
    .line 1610
    .line 1611
    goto/16 :goto_0

    .line 1612
    .line 1613
    :pswitch_40
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1614
    .line 1615
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1616
    .line 1617
    .line 1618
    move-result-object p1

    .line 1619
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1620
    .line 1621
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1622
    .line 1623
    .line 1624
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->resetDataCallLimitCounter(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1625
    .line 1626
    .line 1627
    move-result p0

    .line 1628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1629
    .line 1630
    .line 1631
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1632
    .line 1633
    .line 1634
    goto/16 :goto_0

    .line 1635
    .line 1636
    :pswitch_41
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1637
    .line 1638
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1639
    .line 1640
    .line 1641
    move-result-object p1

    .line 1642
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1643
    .line 1644
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1645
    .line 1646
    .line 1647
    move-result p4

    .line 1648
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1649
    .line 1650
    .line 1651
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;I)J

    .line 1652
    .line 1653
    .line 1654
    move-result-wide p0

    .line 1655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1656
    .line 1657
    .line 1658
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1659
    .line 1660
    .line 1661
    goto/16 :goto_0

    .line 1662
    .line 1663
    :pswitch_42
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1664
    .line 1665
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1666
    .line 1667
    .line 1668
    move-result-object p1

    .line 1669
    move-object v3, p1

    .line 1670
    check-cast v3, Lcom/samsung/android/knox/ContextInfo;

    .line 1671
    .line 1672
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1673
    .line 1674
    .line 1675
    move-result-wide v4

    .line 1676
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1677
    .line 1678
    .line 1679
    move-result-wide v6

    .line 1680
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1681
    .line 1682
    .line 1683
    move-result-wide v8

    .line 1684
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1685
    .line 1686
    .line 1687
    move-object v2, p0

    .line 1688
    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;JJJ)Z

    .line 1689
    .line 1690
    .line 1691
    move-result p0

    .line 1692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1693
    .line 1694
    .line 1695
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1696
    .line 1697
    .line 1698
    goto/16 :goto_0

    .line 1699
    .line 1700
    :pswitch_43
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
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1709
    .line 1710
    .line 1711
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1712
    .line 1713
    .line 1714
    move-result p0

    .line 1715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1716
    .line 1717
    .line 1718
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1719
    .line 1720
    .line 1721
    goto/16 :goto_0

    .line 1722
    .line 1723
    :pswitch_44
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1724
    .line 1725
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1726
    .line 1727
    .line 1728
    move-result-object p1

    .line 1729
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1730
    .line 1731
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1732
    .line 1733
    .line 1734
    move-result p4

    .line 1735
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1736
    .line 1737
    .line 1738
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1739
    .line 1740
    .line 1741
    move-result p0

    .line 1742
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1743
    .line 1744
    .line 1745
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1746
    .line 1747
    .line 1748
    goto/16 :goto_0

    .line 1749
    .line 1750
    :pswitch_45
    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->decreaseNumberOfOutgoingSms()Z

    .line 1751
    .line 1752
    .line 1753
    move-result p0

    .line 1754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1755
    .line 1756
    .line 1757
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1758
    .line 1759
    .line 1760
    goto/16 :goto_0

    .line 1761
    .line 1762
    :pswitch_46
    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addNumberOfOutgoingSms()Z

    .line 1763
    .line 1764
    .line 1765
    move-result p0

    .line 1766
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1767
    .line 1768
    .line 1769
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1770
    .line 1771
    .line 1772
    goto/16 :goto_0

    .line 1773
    .line 1774
    :pswitch_47
    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addNumberOfIncomingSms()Z

    .line 1775
    .line 1776
    .line 1777
    move-result p0

    .line 1778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1779
    .line 1780
    .line 1781
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1782
    .line 1783
    .line 1784
    goto/16 :goto_0

    .line 1785
    .line 1786
    :pswitch_48
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1787
    .line 1788
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1789
    .line 1790
    .line 1791
    move-result-object p1

    .line 1792
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1793
    .line 1794
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1795
    .line 1796
    .line 1797
    move-result p4

    .line 1798
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1799
    .line 1800
    .line 1801
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    .line 1802
    .line 1803
    .line 1804
    move-result p0

    .line 1805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1806
    .line 1807
    .line 1808
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1809
    .line 1810
    .line 1811
    goto/16 :goto_0

    .line 1812
    .line 1813
    :pswitch_49
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1814
    .line 1815
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1816
    .line 1817
    .line 1818
    move-result-object p1

    .line 1819
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1820
    .line 1821
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1822
    .line 1823
    .line 1824
    move-result p4

    .line 1825
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1826
    .line 1827
    .line 1828
    move-result v0

    .line 1829
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1830
    .line 1831
    .line 1832
    move-result v2

    .line 1833
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1834
    .line 1835
    .line 1836
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;III)Z

    .line 1837
    .line 1838
    .line 1839
    move-result p0

    .line 1840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1841
    .line 1842
    .line 1843
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1844
    .line 1845
    .line 1846
    goto/16 :goto_0

    .line 1847
    .line 1848
    :pswitch_4a
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1857
    .line 1858
    .line 1859
    move-result p4

    .line 1860
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1861
    .line 1862
    .line 1863
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    .line 1864
    .line 1865
    .line 1866
    move-result p0

    .line 1867
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1868
    .line 1869
    .line 1870
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1871
    .line 1872
    .line 1873
    goto/16 :goto_0

    .line 1874
    .line 1875
    :pswitch_4b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1876
    .line 1877
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1878
    .line 1879
    .line 1880
    move-result-object p1

    .line 1881
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1882
    .line 1883
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1884
    .line 1885
    .line 1886
    move-result p4

    .line 1887
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1888
    .line 1889
    .line 1890
    move-result v0

    .line 1891
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1892
    .line 1893
    .line 1894
    move-result v2

    .line 1895
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1896
    .line 1897
    .line 1898
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;III)Z

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
    :pswitch_4c
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
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1919
    .line 1920
    .line 1921
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->resetSmsCount(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1922
    .line 1923
    .line 1924
    move-result p0

    .line 1925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1926
    .line 1927
    .line 1928
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1929
    .line 1930
    .line 1931
    goto/16 :goto_0

    .line 1932
    .line 1933
    :pswitch_4d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1934
    .line 1935
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1936
    .line 1937
    .line 1938
    move-result-object p1

    .line 1939
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1940
    .line 1941
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1942
    .line 1943
    .line 1944
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1945
    .line 1946
    .line 1947
    move-result p0

    .line 1948
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1949
    .line 1950
    .line 1951
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1952
    .line 1953
    .line 1954
    goto/16 :goto_0

    .line 1955
    .line 1956
    :pswitch_4e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1957
    .line 1958
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1959
    .line 1960
    .line 1961
    move-result-object p1

    .line 1962
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1963
    .line 1964
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1965
    .line 1966
    .line 1967
    move-result p4

    .line 1968
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1969
    .line 1970
    .line 1971
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->enableLimitNumberOfSms(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1972
    .line 1973
    .line 1974
    move-result p0

    .line 1975
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1976
    .line 1977
    .line 1978
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1979
    .line 1980
    .line 1981
    goto/16 :goto_0

    .line 1982
    .line 1983
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1984
    .line 1985
    .line 1986
    move-result-object p1

    .line 1987
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1988
    .line 1989
    .line 1990
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    .line 1991
    .line 1992
    .line 1993
    move-result p0

    .line 1994
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1995
    .line 1996
    .line 1997
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1998
    .line 1999
    .line 2000
    goto/16 :goto_0

    .line 2001
    .line 2002
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2003
    .line 2004
    .line 2005
    move-result-object p1

    .line 2006
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2007
    .line 2008
    .line 2009
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    .line 2010
    .line 2011
    .line 2012
    move-result p0

    .line 2013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2014
    .line 2015
    .line 2016
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2017
    .line 2018
    .line 2019
    goto/16 :goto_0

    .line 2020
    .line 2021
    :pswitch_51
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2022
    .line 2023
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2024
    .line 2025
    .line 2026
    move-result-object p1

    .line 2027
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2028
    .line 2029
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2030
    .line 2031
    .line 2032
    move-result-object p4

    .line 2033
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2034
    .line 2035
    .line 2036
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2037
    .line 2038
    .line 2039
    move-result p0

    .line 2040
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2041
    .line 2042
    .line 2043
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2044
    .line 2045
    .line 2046
    goto/16 :goto_0

    .line 2047
    .line 2048
    :pswitch_52
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2049
    .line 2050
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2051
    .line 2052
    .line 2053
    move-result-object p1

    .line 2054
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2055
    .line 2056
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2057
    .line 2058
    .line 2059
    move-result-object p4

    .line 2060
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2061
    .line 2062
    .line 2063
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2064
    .line 2065
    .line 2066
    move-result p0

    .line 2067
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2068
    .line 2069
    .line 2070
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2071
    .line 2072
    .line 2073
    goto/16 :goto_0

    .line 2074
    .line 2075
    :pswitch_53
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2076
    .line 2077
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2078
    .line 2079
    .line 2080
    move-result-object p1

    .line 2081
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2082
    .line 2083
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2084
    .line 2085
    .line 2086
    move-result-object p4

    .line 2087
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2088
    .line 2089
    .line 2090
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2091
    .line 2092
    .line 2093
    move-result p0

    .line 2094
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2095
    .line 2096
    .line 2097
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2098
    .line 2099
    .line 2100
    goto/16 :goto_0

    .line 2101
    .line 2102
    :pswitch_54
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2103
    .line 2104
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2105
    .line 2106
    .line 2107
    move-result-object p1

    .line 2108
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2109
    .line 2110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2111
    .line 2112
    .line 2113
    move-result-object p4

    .line 2114
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2115
    .line 2116
    .line 2117
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2118
    .line 2119
    .line 2120
    move-result p0

    .line 2121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2122
    .line 2123
    .line 2124
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2125
    .line 2126
    .line 2127
    goto/16 :goto_0

    .line 2128
    .line 2129
    :pswitch_55
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2130
    .line 2131
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2132
    .line 2133
    .line 2134
    move-result-object p1

    .line 2135
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2136
    .line 2137
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2138
    .line 2139
    .line 2140
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2141
    .line 2142
    .line 2143
    move-result p0

    .line 2144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2145
    .line 2146
    .line 2147
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2148
    .line 2149
    .line 2150
    goto/16 :goto_0

    .line 2151
    .line 2152
    :pswitch_56
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2153
    .line 2154
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2155
    .line 2156
    .line 2157
    move-result-object p1

    .line 2158
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2159
    .line 2160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2161
    .line 2162
    .line 2163
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2164
    .line 2165
    .line 2166
    move-result p0

    .line 2167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2168
    .line 2169
    .line 2170
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2171
    .line 2172
    .line 2173
    goto/16 :goto_0

    .line 2174
    .line 2175
    :pswitch_57
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2176
    .line 2177
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2178
    .line 2179
    .line 2180
    move-result-object p1

    .line 2181
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2182
    .line 2183
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2184
    .line 2185
    .line 2186
    move-result p4

    .line 2187
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2188
    .line 2189
    .line 2190
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    .line 2191
    .line 2192
    .line 2193
    move-result-object p0

    .line 2194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2195
    .line 2196
    .line 2197
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2198
    .line 2199
    .line 2200
    goto/16 :goto_0

    .line 2201
    .line 2202
    :pswitch_58
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2203
    .line 2204
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2205
    .line 2206
    .line 2207
    move-result-object p1

    .line 2208
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2209
    .line 2210
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2211
    .line 2212
    .line 2213
    move-result p4

    .line 2214
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2215
    .line 2216
    .line 2217
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    .line 2218
    .line 2219
    .line 2220
    move-result-object p0

    .line 2221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2222
    .line 2223
    .line 2224
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2225
    .line 2226
    .line 2227
    goto/16 :goto_0

    .line 2228
    .line 2229
    :pswitch_59
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2230
    .line 2231
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2232
    .line 2233
    .line 2234
    move-result-object p1

    .line 2235
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2236
    .line 2237
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2238
    .line 2239
    .line 2240
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->resetCallsCount(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2241
    .line 2242
    .line 2243
    move-result p0

    .line 2244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2245
    .line 2246
    .line 2247
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2248
    .line 2249
    .line 2250
    goto/16 :goto_0

    .line 2251
    .line 2252
    :pswitch_5a
    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addNumberOfOutgoingCalls()Z

    .line 2253
    .line 2254
    .line 2255
    move-result p0

    .line 2256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2257
    .line 2258
    .line 2259
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2260
    .line 2261
    .line 2262
    goto/16 :goto_0

    .line 2263
    .line 2264
    :pswitch_5b
    invoke-interface {p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addNumberOfIncomingCalls()Z

    .line 2265
    .line 2266
    .line 2267
    move-result p0

    .line 2268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2269
    .line 2270
    .line 2271
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2272
    .line 2273
    .line 2274
    goto/16 :goto_0

    .line 2275
    .line 2276
    :pswitch_5c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2277
    .line 2278
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2279
    .line 2280
    .line 2281
    move-result-object p1

    .line 2282
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2283
    .line 2284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2285
    .line 2286
    .line 2287
    move-result p4

    .line 2288
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2289
    .line 2290
    .line 2291
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    .line 2292
    .line 2293
    .line 2294
    move-result p0

    .line 2295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2296
    .line 2297
    .line 2298
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2299
    .line 2300
    .line 2301
    goto/16 :goto_0

    .line 2302
    .line 2303
    :pswitch_5d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2304
    .line 2305
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2306
    .line 2307
    .line 2308
    move-result-object p1

    .line 2309
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2310
    .line 2311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2312
    .line 2313
    .line 2314
    move-result p4

    .line 2315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2316
    .line 2317
    .line 2318
    move-result v0

    .line 2319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2320
    .line 2321
    .line 2322
    move-result v2

    .line 2323
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2324
    .line 2325
    .line 2326
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;III)Z

    .line 2327
    .line 2328
    .line 2329
    move-result p0

    .line 2330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2331
    .line 2332
    .line 2333
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2334
    .line 2335
    .line 2336
    goto/16 :goto_0

    .line 2337
    .line 2338
    :pswitch_5e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2339
    .line 2340
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2341
    .line 2342
    .line 2343
    move-result-object p1

    .line 2344
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2345
    .line 2346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2347
    .line 2348
    .line 2349
    move-result p4

    .line 2350
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2351
    .line 2352
    .line 2353
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    .line 2354
    .line 2355
    .line 2356
    move-result p0

    .line 2357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2358
    .line 2359
    .line 2360
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2361
    .line 2362
    .line 2363
    goto/16 :goto_0

    .line 2364
    .line 2365
    :pswitch_5f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2366
    .line 2367
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2368
    .line 2369
    .line 2370
    move-result-object p1

    .line 2371
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2372
    .line 2373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2374
    .line 2375
    .line 2376
    move-result p4

    .line 2377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2378
    .line 2379
    .line 2380
    move-result v0

    .line 2381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2382
    .line 2383
    .line 2384
    move-result v2

    .line 2385
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2386
    .line 2387
    .line 2388
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;III)Z

    .line 2389
    .line 2390
    .line 2391
    move-result p0

    .line 2392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2393
    .line 2394
    .line 2395
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2396
    .line 2397
    .line 2398
    goto/16 :goto_0

    .line 2399
    .line 2400
    :pswitch_60
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2401
    .line 2402
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2403
    .line 2404
    .line 2405
    move-result-object p1

    .line 2406
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2407
    .line 2408
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2409
    .line 2410
    .line 2411
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2412
    .line 2413
    .line 2414
    move-result p0

    .line 2415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2416
    .line 2417
    .line 2418
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2419
    .line 2420
    .line 2421
    goto/16 :goto_0

    .line 2422
    .line 2423
    :pswitch_61
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2424
    .line 2425
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2426
    .line 2427
    .line 2428
    move-result-object p1

    .line 2429
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2430
    .line 2431
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2432
    .line 2433
    .line 2434
    move-result p4

    .line 2435
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2436
    .line 2437
    .line 2438
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->enableLimitNumberOfCalls(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2439
    .line 2440
    .line 2441
    move-result p0

    .line 2442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2443
    .line 2444
    .line 2445
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2446
    .line 2447
    .line 2448
    goto/16 :goto_0

    .line 2449
    .line 2450
    :pswitch_62
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2451
    .line 2452
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2453
    .line 2454
    .line 2455
    move-result-object p1

    .line 2456
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2457
    .line 2458
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2459
    .line 2460
    .line 2461
    move-result p4

    .line 2462
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2463
    .line 2464
    .line 2465
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2466
    .line 2467
    .line 2468
    move-result p0

    .line 2469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2470
    .line 2471
    .line 2472
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2473
    .line 2474
    .line 2475
    goto/16 :goto_0

    .line 2476
    .line 2477
    :pswitch_63
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2478
    .line 2479
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2480
    .line 2481
    .line 2482
    move-result-object p1

    .line 2483
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2484
    .line 2485
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2486
    .line 2487
    .line 2488
    move-result p4

    .line 2489
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2490
    .line 2491
    .line 2492
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 2493
    .line 2494
    .line 2495
    move-result p0

    .line 2496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2497
    .line 2498
    .line 2499
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2500
    .line 2501
    .line 2502
    goto/16 :goto_0

    .line 2503
    .line 2504
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2505
    .line 2506
    .line 2507
    move-result-object p1

    .line 2508
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2509
    .line 2510
    .line 2511
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    .line 2512
    .line 2513
    .line 2514
    move-result p0

    .line 2515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2516
    .line 2517
    .line 2518
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2519
    .line 2520
    .line 2521
    goto/16 :goto_0

    .line 2522
    .line 2523
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2524
    .line 2525
    .line 2526
    move-result-object p1

    .line 2527
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2528
    .line 2529
    .line 2530
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    .line 2531
    .line 2532
    .line 2533
    move-result p0

    .line 2534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2535
    .line 2536
    .line 2537
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2538
    .line 2539
    .line 2540
    goto/16 :goto_0

    .line 2541
    .line 2542
    :pswitch_66
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2543
    .line 2544
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2545
    .line 2546
    .line 2547
    move-result-object p1

    .line 2548
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2549
    .line 2550
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2551
    .line 2552
    .line 2553
    move-result-object p4

    .line 2554
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2555
    .line 2556
    .line 2557
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2558
    .line 2559
    .line 2560
    move-result p0

    .line 2561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2562
    .line 2563
    .line 2564
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2565
    .line 2566
    .line 2567
    goto/16 :goto_0

    .line 2568
    .line 2569
    :pswitch_67
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2570
    .line 2571
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2572
    .line 2573
    .line 2574
    move-result-object p1

    .line 2575
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2576
    .line 2577
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2578
    .line 2579
    .line 2580
    move-result-object p4

    .line 2581
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2582
    .line 2583
    .line 2584
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->setOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2585
    .line 2586
    .line 2587
    move-result p0

    .line 2588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2589
    .line 2590
    .line 2591
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2592
    .line 2593
    .line 2594
    goto/16 :goto_0

    .line 2595
    .line 2596
    :pswitch_68
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2597
    .line 2598
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2599
    .line 2600
    .line 2601
    move-result-object p1

    .line 2602
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2603
    .line 2604
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2605
    .line 2606
    .line 2607
    move-result-object p4

    .line 2608
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2609
    .line 2610
    .line 2611
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2612
    .line 2613
    .line 2614
    move-result p0

    .line 2615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2616
    .line 2617
    .line 2618
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2619
    .line 2620
    .line 2621
    goto/16 :goto_0

    .line 2622
    .line 2623
    :pswitch_69
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2624
    .line 2625
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2626
    .line 2627
    .line 2628
    move-result-object p1

    .line 2629
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2630
    .line 2631
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2632
    .line 2633
    .line 2634
    move-result-object p4

    .line 2635
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2636
    .line 2637
    .line 2638
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->addOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 2639
    .line 2640
    .line 2641
    move-result p0

    .line 2642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2643
    .line 2644
    .line 2645
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2646
    .line 2647
    .line 2648
    goto :goto_0

    .line 2649
    :pswitch_6a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2650
    .line 2651
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2652
    .line 2653
    .line 2654
    move-result-object p1

    .line 2655
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2656
    .line 2657
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2658
    .line 2659
    .line 2660
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2661
    .line 2662
    .line 2663
    move-result p0

    .line 2664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2665
    .line 2666
    .line 2667
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2668
    .line 2669
    .line 2670
    goto :goto_0

    .line 2671
    :pswitch_6b
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
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2680
    .line 2681
    .line 2682
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->removeOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 2683
    .line 2684
    .line 2685
    move-result p0

    .line 2686
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2687
    .line 2688
    .line 2689
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2690
    .line 2691
    .line 2692
    goto :goto_0

    .line 2693
    :pswitch_6c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2694
    .line 2695
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2696
    .line 2697
    .line 2698
    move-result-object p1

    .line 2699
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2700
    .line 2701
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2702
    .line 2703
    .line 2704
    move-result p4

    .line 2705
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2706
    .line 2707
    .line 2708
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    .line 2709
    .line 2710
    .line 2711
    move-result-object p0

    .line 2712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2713
    .line 2714
    .line 2715
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2716
    .line 2717
    .line 2718
    goto :goto_0

    .line 2719
    :pswitch_6d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2720
    .line 2721
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 2722
    .line 2723
    .line 2724
    move-result-object p1

    .line 2725
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 2726
    .line 2727
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2728
    .line 2729
    .line 2730
    move-result p4

    .line 2731
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2732
    .line 2733
    .line 2734
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->getOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    .line 2735
    .line 2736
    .line 2737
    move-result-object p0

    .line 2738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2739
    .line 2740
    .line 2741
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2742
    .line 2743
    .line 2744
    :goto_0
    return v1

    .line 2745
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2746
    .line 2747
    .line 2748
    return v1

    .line 2749
    :pswitch_data_0
    .packed-switch 0x1
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
