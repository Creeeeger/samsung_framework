.class public abstract Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_activateBluetoothDeviceRestriction:I = 0x24

.field public static final TRANSACTION_activateBluetoothUUIDRestriction:I = 0x1b

.field public static final TRANSACTION_addBluetoothDevicesToBlackList:I = 0x1c

.field public static final TRANSACTION_addBluetoothDevicesToWhiteList:I = 0x20

.field public static final TRANSACTION_addBluetoothUUIDsToBlackList:I = 0x13

.field public static final TRANSACTION_addBluetoothUUIDsToWhiteList:I = 0x17

.field public static final TRANSACTION_allowBLE:I = 0x34

.field public static final TRANSACTION_allowBluetooth:I = 0x4

.field public static final TRANSACTION_allowCallerIDDisplay:I = 0x32

.field public static final TRANSACTION_allowOutgoingCalls:I = 0x9

.field public static final TRANSACTION_bluetoothLog:I = 0x31

.field public static final TRANSACTION_clearBluetoothDevicesFromBlackList:I = 0x1e

.field public static final TRANSACTION_clearBluetoothDevicesFromWhiteList:I = 0x22

.field public static final TRANSACTION_clearBluetoothUUIDsFromBlackList:I = 0x15

.field public static final TRANSACTION_clearBluetoothUUIDsFromWhiteList:I = 0x19

.field public static final TRANSACTION_getAllBluetoothDevicesBlackLists:I = 0x1f

.field public static final TRANSACTION_getAllBluetoothDevicesWhiteLists:I = 0x23

.field public static final TRANSACTION_getAllBluetoothUUIDsBlackLists:I = 0x16

.field public static final TRANSACTION_getAllBluetoothUUIDsWhiteLists:I = 0x1a

.field public static final TRANSACTION_getAllowBluetoothDataTransfer:I = 0x2

.field public static final TRANSACTION_getBluetoothLog:I = 0x30

.field public static final TRANSACTION_getEffectiveBluetoothDevicesBlackLists:I = 0x2b

.field public static final TRANSACTION_getEffectiveBluetoothDevicesWhiteLists:I = 0x2c

.field public static final TRANSACTION_getEffectiveBluetoothUUIDsBlackLists:I = 0x29

.field public static final TRANSACTION_getEffectiveBluetoothUUIDsWhiteLists:I = 0x2a

.field public static final TRANSACTION_isBLEAllowed:I = 0x35

.field public static final TRANSACTION_isBluetoothDeviceAllowed:I = 0x28

.field public static final TRANSACTION_isBluetoothDeviceRestrictionActive:I = 0x26

.field public static final TRANSACTION_isBluetoothEnabled:I = 0x5

.field public static final TRANSACTION_isBluetoothEnabledWithMsg:I = 0x6

.field public static final TRANSACTION_isBluetoothLogEnabled:I = 0x2f

.field public static final TRANSACTION_isBluetoothUUIDAllowed:I = 0x27

.field public static final TRANSACTION_isBluetoothUUIDRestrictionActive:I = 0x25

.field public static final TRANSACTION_isCallerIDDisplayAllowed:I = 0x33

.field public static final TRANSACTION_isDesktopConnectivityEnabled:I = 0x12

.field public static final TRANSACTION_isDiscoverableEnabled:I = 0x10

.field public static final TRANSACTION_isLimitedDiscoverableEnabled:I = 0xc

.field public static final TRANSACTION_isOutgoingCallsAllowed:I = 0xa

.field public static final TRANSACTION_isPairingEnabled:I = 0x8

.field public static final TRANSACTION_isProfileEnabled:I = 0xe

.field public static final TRANSACTION_isProfileEnabledInternal:I = 0x2e

.field public static final TRANSACTION_removeBluetoothDevicesFromBlackList:I = 0x1d

.field public static final TRANSACTION_removeBluetoothDevicesFromWhiteList:I = 0x21

.field public static final TRANSACTION_removeBluetoothUUIDsFromBlackList:I = 0x14

.field public static final TRANSACTION_removeBluetoothUUIDsFromWhiteList:I = 0x18

.field public static final TRANSACTION_setAllowBluetoothDataTransfer:I = 0x1

.field public static final TRANSACTION_setBluetooth:I = 0x3

.field public static final TRANSACTION_setBluetoothLogEnabled:I = 0x2d

.field public static final TRANSACTION_setDesktopConnectivityState:I = 0x11

.field public static final TRANSACTION_setDiscoverableState:I = 0xf

.field public static final TRANSACTION_setLimitedDiscoverableState:I = 0xb

.field public static final TRANSACTION_setPairingState:I = 0x7

.field public static final TRANSACTION_setProfileState:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.samsung.android.knox.bluetooth.IBluetoothPolicy"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;
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
    const-string v0, "com.samsung.android.knox.bluetooth.IBluetoothPolicy"

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
    instance-of v1, v0, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string p0, "isBLEAllowed"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    const-string p0, "allowBLE"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    const-string p0, "isCallerIDDisplayAllowed"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    const-string p0, "allowCallerIDDisplay"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    const-string p0, "bluetoothLog"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    const-string p0, "getBluetoothLog"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    const-string p0, "isBluetoothLogEnabled"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    const-string p0, "isProfileEnabledInternal"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    const-string p0, "setBluetoothLogEnabled"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    const-string p0, "getEffectiveBluetoothDevicesWhiteLists"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    const-string p0, "getEffectiveBluetoothDevicesBlackLists"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    const-string p0, "getEffectiveBluetoothUUIDsWhiteLists"

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_c
    const-string p0, "getEffectiveBluetoothUUIDsBlackLists"

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_d
    const-string p0, "isBluetoothDeviceAllowed"

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_e
    const-string p0, "isBluetoothUUIDAllowed"

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_f
    const-string p0, "isBluetoothDeviceRestrictionActive"

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_10
    const-string p0, "isBluetoothUUIDRestrictionActive"

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_11
    const-string p0, "activateBluetoothDeviceRestriction"

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_12
    const-string p0, "getAllBluetoothDevicesWhiteLists"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_13
    const-string p0, "clearBluetoothDevicesFromWhiteList"

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_14
    const-string p0, "removeBluetoothDevicesFromWhiteList"

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_15
    const-string p0, "addBluetoothDevicesToWhiteList"

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_16
    const-string p0, "getAllBluetoothDevicesBlackLists"

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_17
    const-string p0, "clearBluetoothDevicesFromBlackList"

    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_18
    const-string p0, "removeBluetoothDevicesFromBlackList"

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_19
    const-string p0, "addBluetoothDevicesToBlackList"

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_1a
    const-string p0, "activateBluetoothUUIDRestriction"

    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_1b
    const-string p0, "getAllBluetoothUUIDsWhiteLists"

    .line 88
    .line 89
    return-object p0

    .line 90
    :pswitch_1c
    const-string p0, "clearBluetoothUUIDsFromWhiteList"

    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_1d
    const-string p0, "removeBluetoothUUIDsFromWhiteList"

    .line 94
    .line 95
    return-object p0

    .line 96
    :pswitch_1e
    const-string p0, "addBluetoothUUIDsToWhiteList"

    .line 97
    .line 98
    return-object p0

    .line 99
    :pswitch_1f
    const-string p0, "getAllBluetoothUUIDsBlackLists"

    .line 100
    .line 101
    return-object p0

    .line 102
    :pswitch_20
    const-string p0, "clearBluetoothUUIDsFromBlackList"

    .line 103
    .line 104
    return-object p0

    .line 105
    :pswitch_21
    const-string p0, "removeBluetoothUUIDsFromBlackList"

    .line 106
    .line 107
    return-object p0

    .line 108
    :pswitch_22
    const-string p0, "addBluetoothUUIDsToBlackList"

    .line 109
    .line 110
    return-object p0

    .line 111
    :pswitch_23
    const-string p0, "isDesktopConnectivityEnabled"

    .line 112
    .line 113
    return-object p0

    .line 114
    :pswitch_24
    const-string p0, "setDesktopConnectivityState"

    .line 115
    .line 116
    return-object p0

    .line 117
    :pswitch_25
    const-string p0, "isDiscoverableEnabled"

    .line 118
    .line 119
    return-object p0

    .line 120
    :pswitch_26
    const-string p0, "setDiscoverableState"

    .line 121
    .line 122
    return-object p0

    .line 123
    :pswitch_27
    const-string p0, "isProfileEnabled"

    .line 124
    .line 125
    return-object p0

    .line 126
    :pswitch_28
    const-string p0, "setProfileState"

    .line 127
    .line 128
    return-object p0

    .line 129
    :pswitch_29
    const-string p0, "isLimitedDiscoverableEnabled"

    .line 130
    .line 131
    return-object p0

    .line 132
    :pswitch_2a
    const-string p0, "setLimitedDiscoverableState"

    .line 133
    .line 134
    return-object p0

    .line 135
    :pswitch_2b
    const-string p0, "isOutgoingCallsAllowed"

    .line 136
    .line 137
    return-object p0

    .line 138
    :pswitch_2c
    const-string p0, "allowOutgoingCalls"

    .line 139
    .line 140
    return-object p0

    .line 141
    :pswitch_2d
    const-string p0, "isPairingEnabled"

    .line 142
    .line 143
    return-object p0

    .line 144
    :pswitch_2e
    const-string p0, "setPairingState"

    .line 145
    .line 146
    return-object p0

    .line 147
    :pswitch_2f
    const-string p0, "isBluetoothEnabledWithMsg"

    .line 148
    .line 149
    return-object p0

    .line 150
    :pswitch_30
    const-string p0, "isBluetoothEnabled"

    .line 151
    .line 152
    return-object p0

    .line 153
    :pswitch_31
    const-string p0, "allowBluetooth"

    .line 154
    .line 155
    return-object p0

    .line 156
    :pswitch_32
    const-string p0, "setBluetooth"

    .line 157
    .line 158
    return-object p0

    .line 159
    :pswitch_33
    const-string p0, "getAllowBluetoothDataTransfer"

    .line 160
    .line 161
    return-object p0

    .line 162
    :pswitch_34
    const-string p0, "setAllowBluetoothDataTransfer"

    .line 163
    .line 164
    return-object p0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
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
    const/16 p0, 0x34

    .line 2
    .line 3
    return p0
.end method

.method public final getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "com.samsung.android.knox.bluetooth.IBluetoothPolicy"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBLEAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

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
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->allowBLE(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 86
    .line 87
    .line 88
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isCallerIDDisplayAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :pswitch_3
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 107
    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 109
    .line 110
    .line 111
    move-result p4

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    .line 114
    .line 115
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->allowCallerIDDisplay(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_0

    .line 126
    .line 127
    :pswitch_4
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 128
    .line 129
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 134
    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p4

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    .line 145
    .line 146
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->bluetoothLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :pswitch_5
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 159
    .line 160
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 165
    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    .line 168
    .line 169
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getBluetoothLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :pswitch_6
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 182
    .line 183
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 188
    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    .line 191
    .line 192
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 209
    .line 210
    .line 211
    move-result p4

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    .line 214
    .line 215
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isProfileEnabledInternal(IZ)Z

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :pswitch_8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 228
    .line 229
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 234
    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 236
    .line 237
    .line 238
    move-result p4

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    .line 241
    .line 242
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :pswitch_9
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 255
    .line 256
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 261
    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    .line 264
    .line 265
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getEffectiveBluetoothDevicesWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :pswitch_a
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
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getEffectiveBluetoothDevicesBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 296
    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :pswitch_b
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
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getEffectiveBluetoothUUIDsWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_0

    .line 322
    .line 323
    :pswitch_c
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
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getEffectiveBluetoothUUIDsBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 342
    .line 343
    .line 344
    goto/16 :goto_0

    .line 345
    .line 346
    :pswitch_d
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p4

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    .line 360
    .line 361
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothDeviceAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

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
    :pswitch_e
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object p4

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    .line 387
    .line 388
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothUUIDAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 389
    .line 390
    .line 391
    move-result p0

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_0

    .line 399
    .line 400
    :pswitch_f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 401
    .line 402
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 407
    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    .line 410
    .line 411
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothDeviceRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 412
    .line 413
    .line 414
    move-result p0

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_0

    .line 422
    .line 423
    :pswitch_10
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
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    .line 433
    .line 434
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothUUIDRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 435
    .line 436
    .line 437
    move-result p0

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 442
    .line 443
    .line 444
    goto/16 :goto_0

    .line 445
    .line 446
    :pswitch_11
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 447
    .line 448
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 453
    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 455
    .line 456
    .line 457
    move-result p4

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    .line 460
    .line 461
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->activateBluetoothDeviceRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 462
    .line 463
    .line 464
    move-result p0

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 469
    .line 470
    .line 471
    goto/16 :goto_0

    .line 472
    .line 473
    :pswitch_12
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 474
    .line 475
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 480
    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    .line 483
    .line 484
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getAllBluetoothDevicesWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 485
    .line 486
    .line 487
    move-result-object p0

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    .line 490
    .line 491
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 492
    .line 493
    .line 494
    goto/16 :goto_0

    .line 495
    .line 496
    :pswitch_13
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 497
    .line 498
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 503
    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    .line 506
    .line 507
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->clearBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 508
    .line 509
    .line 510
    move-result p0

    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    .line 513
    .line 514
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 515
    .line 516
    .line 517
    goto/16 :goto_0

    .line 518
    .line 519
    :pswitch_14
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 520
    .line 521
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 526
    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 528
    .line 529
    .line 530
    move-result-object p4

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    .line 533
    .line 534
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->removeBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 535
    .line 536
    .line 537
    move-result p0

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    .line 540
    .line 541
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 542
    .line 543
    .line 544
    goto/16 :goto_0

    .line 545
    .line 546
    :pswitch_15
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
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 555
    .line 556
    .line 557
    move-result-object p4

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    .line 560
    .line 561
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->addBluetoothDevicesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 562
    .line 563
    .line 564
    move-result p0

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    .line 567
    .line 568
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 569
    .line 570
    .line 571
    goto/16 :goto_0

    .line 572
    .line 573
    :pswitch_16
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 574
    .line 575
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object p1

    .line 579
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 580
    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    .line 583
    .line 584
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getAllBluetoothDevicesBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 585
    .line 586
    .line 587
    move-result-object p0

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    .line 590
    .line 591
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 592
    .line 593
    .line 594
    goto/16 :goto_0

    .line 595
    .line 596
    :pswitch_17
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 597
    .line 598
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object p1

    .line 602
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 603
    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    .line 606
    .line 607
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->clearBluetoothDevicesFromBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 608
    .line 609
    .line 610
    move-result p0

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    .line 613
    .line 614
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 615
    .line 616
    .line 617
    goto/16 :goto_0

    .line 618
    .line 619
    :pswitch_18
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 620
    .line 621
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object p1

    .line 625
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 626
    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 628
    .line 629
    .line 630
    move-result-object p4

    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    .line 633
    .line 634
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->removeBluetoothDevicesFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 635
    .line 636
    .line 637
    move-result p0

    .line 638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    .line 640
    .line 641
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 642
    .line 643
    .line 644
    goto/16 :goto_0

    .line 645
    .line 646
    :pswitch_19
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
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 655
    .line 656
    .line 657
    move-result-object p4

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 659
    .line 660
    .line 661
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->addBluetoothDevicesToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 662
    .line 663
    .line 664
    move-result p0

    .line 665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    .line 667
    .line 668
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 669
    .line 670
    .line 671
    goto/16 :goto_0

    .line 672
    .line 673
    :pswitch_1a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 674
    .line 675
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object p1

    .line 679
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 680
    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 682
    .line 683
    .line 684
    move-result p4

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    .line 687
    .line 688
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->activateBluetoothUUIDRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 689
    .line 690
    .line 691
    move-result p0

    .line 692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    .line 694
    .line 695
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 696
    .line 697
    .line 698
    goto/16 :goto_0

    .line 699
    .line 700
    :pswitch_1b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 701
    .line 702
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object p1

    .line 706
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 707
    .line 708
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 709
    .line 710
    .line 711
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getAllBluetoothUUIDsWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 712
    .line 713
    .line 714
    move-result-object p0

    .line 715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    .line 717
    .line 718
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 719
    .line 720
    .line 721
    goto/16 :goto_0

    .line 722
    .line 723
    :pswitch_1c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 724
    .line 725
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object p1

    .line 729
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 730
    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 732
    .line 733
    .line 734
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->clearBluetoothUUIDsFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 735
    .line 736
    .line 737
    move-result p0

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    .line 740
    .line 741
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 742
    .line 743
    .line 744
    goto/16 :goto_0

    .line 745
    .line 746
    :pswitch_1d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 747
    .line 748
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object p1

    .line 752
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 753
    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 755
    .line 756
    .line 757
    move-result-object p4

    .line 758
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    .line 760
    .line 761
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->removeBluetoothUUIDsFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 762
    .line 763
    .line 764
    move-result p0

    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    .line 767
    .line 768
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 769
    .line 770
    .line 771
    goto/16 :goto_0

    .line 772
    .line 773
    :pswitch_1e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 774
    .line 775
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object p1

    .line 779
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 780
    .line 781
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 782
    .line 783
    .line 784
    move-result-object p4

    .line 785
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    .line 787
    .line 788
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->addBluetoothUUIDsToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 789
    .line 790
    .line 791
    move-result p0

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    .line 794
    .line 795
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 796
    .line 797
    .line 798
    goto/16 :goto_0

    .line 799
    .line 800
    :pswitch_1f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 801
    .line 802
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object p1

    .line 806
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 807
    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 809
    .line 810
    .line 811
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getAllBluetoothUUIDsBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 812
    .line 813
    .line 814
    move-result-object p0

    .line 815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    .line 817
    .line 818
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 819
    .line 820
    .line 821
    goto/16 :goto_0

    .line 822
    .line 823
    :pswitch_20
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 824
    .line 825
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-result-object p1

    .line 829
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 830
    .line 831
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    .line 833
    .line 834
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->clearBluetoothUUIDsFromBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

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
    :pswitch_21
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 847
    .line 848
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object p1

    .line 852
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 853
    .line 854
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 855
    .line 856
    .line 857
    move-result-object p4

    .line 858
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 859
    .line 860
    .line 861
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->removeBluetoothUUIDsFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 862
    .line 863
    .line 864
    move-result p0

    .line 865
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    .line 867
    .line 868
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 869
    .line 870
    .line 871
    goto/16 :goto_0

    .line 872
    .line 873
    :pswitch_22
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 874
    .line 875
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object p1

    .line 879
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 880
    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 882
    .line 883
    .line 884
    move-result-object p4

    .line 885
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 886
    .line 887
    .line 888
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->addBluetoothUUIDsToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 889
    .line 890
    .line 891
    move-result p0

    .line 892
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    .line 894
    .line 895
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 896
    .line 897
    .line 898
    goto/16 :goto_0

    .line 899
    .line 900
    :pswitch_23
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 901
    .line 902
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object p1

    .line 906
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 907
    .line 908
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 909
    .line 910
    .line 911
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isDesktopConnectivityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 932
    .line 933
    .line 934
    move-result p4

    .line 935
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 936
    .line 937
    .line 938
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setDesktopConnectivityState(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 959
    .line 960
    .line 961
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 962
    .line 963
    .line 964
    move-result p0

    .line 965
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    .line 967
    .line 968
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 969
    .line 970
    .line 971
    goto/16 :goto_0

    .line 972
    .line 973
    :pswitch_26
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 974
    .line 975
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    move-result-object p1

    .line 979
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 980
    .line 981
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 982
    .line 983
    .line 984
    move-result p4

    .line 985
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 986
    .line 987
    .line 988
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setDiscoverableState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 989
    .line 990
    .line 991
    move-result p0

    .line 992
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    .line 994
    .line 995
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 996
    .line 997
    .line 998
    goto/16 :goto_0

    .line 999
    .line 1000
    :pswitch_27
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1001
    .line 1002
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1003
    .line 1004
    .line 1005
    move-result-object p1

    .line 1006
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1007
    .line 1008
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1009
    .line 1010
    .line 1011
    move-result p4

    .line 1012
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    .line 1014
    .line 1015
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isProfileEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 1016
    .line 1017
    .line 1018
    move-result p0

    .line 1019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1036
    .line 1037
    .line 1038
    move-result p4

    .line 1039
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1040
    .line 1041
    .line 1042
    move-result v0

    .line 1043
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1044
    .line 1045
    .line 1046
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setProfileState(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    .line 1047
    .line 1048
    .line 1049
    move-result p0

    .line 1050
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1054
    .line 1055
    .line 1056
    goto/16 :goto_0

    .line 1057
    .line 1058
    :pswitch_29
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1059
    .line 1060
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1061
    .line 1062
    .line 1063
    move-result-object p1

    .line 1064
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1065
    .line 1066
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1067
    .line 1068
    .line 1069
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isLimitedDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1082
    .line 1083
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    move-result-object p1

    .line 1087
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1088
    .line 1089
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1090
    .line 1091
    .line 1092
    move-result p4

    .line 1093
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1094
    .line 1095
    .line 1096
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setLimitedDiscoverableState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1097
    .line 1098
    .line 1099
    move-result p0

    .line 1100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1104
    .line 1105
    .line 1106
    goto/16 :goto_0

    .line 1107
    .line 1108
    :pswitch_2b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1109
    .line 1110
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1111
    .line 1112
    .line 1113
    move-result-object p1

    .line 1114
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1115
    .line 1116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    .line 1118
    .line 1119
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isOutgoingCallsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1120
    .line 1121
    .line 1122
    move-result p0

    .line 1123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1127
    .line 1128
    .line 1129
    goto/16 :goto_0

    .line 1130
    .line 1131
    :pswitch_2c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1132
    .line 1133
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    move-result-object p1

    .line 1137
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1138
    .line 1139
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1140
    .line 1141
    .line 1142
    move-result p4

    .line 1143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1144
    .line 1145
    .line 1146
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->allowOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    :pswitch_2d
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
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isPairingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

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
    :pswitch_2e
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1190
    .line 1191
    .line 1192
    move-result p4

    .line 1193
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1194
    .line 1195
    .line 1196
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setPairingState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1197
    .line 1198
    .line 1199
    move-result p0

    .line 1200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    .line 1202
    .line 1203
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1204
    .line 1205
    .line 1206
    goto/16 :goto_0

    .line 1207
    .line 1208
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1209
    .line 1210
    .line 1211
    move-result p1

    .line 1212
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1213
    .line 1214
    .line 1215
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothEnabledWithMsg(Z)Z

    .line 1216
    .line 1217
    .line 1218
    move-result p0

    .line 1219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1223
    .line 1224
    .line 1225
    goto/16 :goto_0

    .line 1226
    .line 1227
    :pswitch_30
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1228
    .line 1229
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1230
    .line 1231
    .line 1232
    move-result-object p1

    .line 1233
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1234
    .line 1235
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1236
    .line 1237
    .line 1238
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1239
    .line 1240
    .line 1241
    move-result p0

    .line 1242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    .line 1244
    .line 1245
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1246
    .line 1247
    .line 1248
    goto :goto_0

    .line 1249
    :pswitch_31
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1250
    .line 1251
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1252
    .line 1253
    .line 1254
    move-result-object p1

    .line 1255
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1256
    .line 1257
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1258
    .line 1259
    .line 1260
    move-result p4

    .line 1261
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1262
    .line 1263
    .line 1264
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->allowBluetooth(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1265
    .line 1266
    .line 1267
    move-result p0

    .line 1268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1272
    .line 1273
    .line 1274
    goto :goto_0

    .line 1275
    :pswitch_32
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1276
    .line 1277
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1278
    .line 1279
    .line 1280
    move-result-object p1

    .line 1281
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1282
    .line 1283
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1284
    .line 1285
    .line 1286
    move-result p4

    .line 1287
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1288
    .line 1289
    .line 1290
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setBluetooth(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1291
    .line 1292
    .line 1293
    move-result p0

    .line 1294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1298
    .line 1299
    .line 1300
    goto :goto_0

    .line 1301
    :pswitch_33
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1302
    .line 1303
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1304
    .line 1305
    .line 1306
    move-result-object p1

    .line 1307
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1308
    .line 1309
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1310
    .line 1311
    .line 1312
    move-result p4

    .line 1313
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1314
    .line 1315
    .line 1316
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getAllowBluetoothDataTransfer(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    goto :goto_0

    .line 1327
    :pswitch_34
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1328
    .line 1329
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1330
    .line 1331
    .line 1332
    move-result-object p1

    .line 1333
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1334
    .line 1335
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1336
    .line 1337
    .line 1338
    move-result p4

    .line 1339
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1340
    .line 1341
    .line 1342
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setAllowBluetoothDataTransfer(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1343
    .line 1344
    .line 1345
    move-result p0

    .line 1346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1347
    .line 1348
    .line 1349
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1350
    .line 1351
    .line 1352
    :goto_0
    return v1

    .line 1353
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1354
    .line 1355
    .line 1356
    return v1

    .line 1357
    :pswitch_data_0
    .packed-switch 0x1
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
