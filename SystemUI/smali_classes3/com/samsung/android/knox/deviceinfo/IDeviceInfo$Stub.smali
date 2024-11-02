.class public abstract Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;
.super Landroid/os/Binder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_clearCallingLog:I = 0x19

.field public static final TRANSACTION_clearMMSLog:I = 0x1e

.field public static final TRANSACTION_clearSMSLog:I = 0x13

.field public static final TRANSACTION_dataUsageTimerActivation:I = 0x20

.field public static final TRANSACTION_enableCallingCapture:I = 0x14

.field public static final TRANSACTION_enableMMSCapture:I = 0x1a

.field public static final TRANSACTION_enableSMSCapture:I = 0xe

.field public static final TRANSACTION_getAvailableCapacityExternal:I = 0x4

.field public static final TRANSACTION_getAvailableCapacityInternal:I = 0x6

.field public static final TRANSACTION_getAvailableRamMemory:I = 0x35

.field public static final TRANSACTION_getBytesReceivedNetwork:I = 0x29

.field public static final TRANSACTION_getBytesReceivedWiFi:I = 0x27

.field public static final TRANSACTION_getBytesSentNetwork:I = 0x28

.field public static final TRANSACTION_getBytesSentWiFi:I = 0x26

.field public static final TRANSACTION_getCellTowerCID:I = 0x31

.field public static final TRANSACTION_getCellTowerLAC:I = 0x32

.field public static final TRANSACTION_getCellTowerPSC:I = 0x33

.field public static final TRANSACTION_getCellTowerRSSI:I = 0x34

.field public static final TRANSACTION_getDataCallLog:I = 0x30

.field public static final TRANSACTION_getDataCallLoggingEnabled:I = 0x2e

.field public static final TRANSACTION_getDataCallStatisticsEnabled:I = 0x25

.field public static final TRANSACTION_getDataUsageTimer:I = 0x2c

.field public static final TRANSACTION_getDeviceMaker:I = 0x36

.field public static final TRANSACTION_getDeviceName:I = 0x37

.field public static final TRANSACTION_getDeviceOS:I = 0x8

.field public static final TRANSACTION_getDeviceOSVersion:I = 0x9

.field public static final TRANSACTION_getDevicePlatform:I = 0x38

.field public static final TRANSACTION_getDeviceProcessorSpeed:I = 0x3a

.field public static final TRANSACTION_getDeviceProcessorType:I = 0x39

.field public static final TRANSACTION_getDroppedCallsCount:I = 0xa

.field public static final TRANSACTION_getInboundMMSCaptured:I = 0x1d

.field public static final TRANSACTION_getInboundSMSCaptured:I = 0x11

.field public static final TRANSACTION_getIncomingCallingCaptured:I = 0x17

.field public static final TRANSACTION_getKnoxServiceId:I = 0x43

.field public static final TRANSACTION_getKnoxServicePackageList:I = 0x44

.field public static final TRANSACTION_getMissedCallsCount:I = 0xb

.field public static final TRANSACTION_getModelName:I = 0x3b

.field public static final TRANSACTION_getModelNumber:I = 0x3c

.field public static final TRANSACTION_getModemFirmware:I = 0x3d

.field public static final TRANSACTION_getOutboundMMSCaptured:I = 0x1c

.field public static final TRANSACTION_getOutboundSMSCaptured:I = 0x10

.field public static final TRANSACTION_getOutgoingCallingCaptured:I = 0x16

.field public static final TRANSACTION_getPlatformSDK:I = 0x3e

.field public static final TRANSACTION_getPlatformVersion:I = 0x40

.field public static final TRANSACTION_getPlatformVersionName:I = 0x3f

.field public static final TRANSACTION_getSalesCode:I = 0x21

.field public static final TRANSACTION_getSerialNumber:I = 0x7

.field public static final TRANSACTION_getSuccessCallsCount:I = 0xc

.field public static final TRANSACTION_getTotalCapacityExternal:I = 0x3

.field public static final TRANSACTION_getTotalCapacityInternal:I = 0x5

.field public static final TRANSACTION_getTotalRamMemory:I = 0x41

.field public static final TRANSACTION_getWifiStatisticEnabled:I = 0x23

.field public static final TRANSACTION_isCallingCaptureEnabled:I = 0x15

.field public static final TRANSACTION_isDeviceLocked:I = 0x2

.field public static final TRANSACTION_isDeviceSecure:I = 0x1

.field public static final TRANSACTION_isMMSCaptureEnabled:I = 0x1b

.field public static final TRANSACTION_isSMSCaptureEnabled:I = 0xf

.field public static final TRANSACTION_resetCallsCount:I = 0xd

.field public static final TRANSACTION_resetDataCallLogging:I = 0x2f

.field public static final TRANSACTION_resetDataUsage:I = 0x2a

.field public static final TRANSACTION_setDataCallLoggingEnabled:I = 0x2d

.field public static final TRANSACTION_setDataCallStatisticsEnabled:I = 0x24

.field public static final TRANSACTION_setDataUsageTimer:I = 0x2b

.field public static final TRANSACTION_setKnoxServiceId:I = 0x42

.field public static final TRANSACTION_setWifiStatisticEnabled:I = 0x22

.field public static final TRANSACTION_storeCalling:I = 0x18

.field public static final TRANSACTION_storeMMS:I = 0x1f

.field public static final TRANSACTION_storeSMS:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.samsung.android.knox.deviceinfo.IDeviceInfo"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;
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
    const-string v0, "com.samsung.android.knox.deviceinfo.IDeviceInfo"

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
    instance-of v1, v0, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string p0, "getKnoxServicePackageList"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    const-string p0, "getKnoxServiceId"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    const-string p0, "setKnoxServiceId"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    const-string p0, "getTotalRamMemory"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    const-string p0, "getPlatformVersion"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    const-string p0, "getPlatformVersionName"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    const-string p0, "getPlatformSDK"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    const-string p0, "getModemFirmware"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    const-string p0, "getModelNumber"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    const-string p0, "getModelName"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    const-string p0, "getDeviceProcessorSpeed"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    const-string p0, "getDeviceProcessorType"

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_c
    const-string p0, "getDevicePlatform"

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_d
    const-string p0, "getDeviceName"

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_e
    const-string p0, "getDeviceMaker"

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_f
    const-string p0, "getAvailableRamMemory"

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_10
    const-string p0, "getCellTowerRSSI"

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_11
    const-string p0, "getCellTowerPSC"

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_12
    const-string p0, "getCellTowerLAC"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_13
    const-string p0, "getCellTowerCID"

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_14
    const-string p0, "getDataCallLog"

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_15
    const-string p0, "resetDataCallLogging"

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_16
    const-string p0, "getDataCallLoggingEnabled"

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_17
    const-string p0, "setDataCallLoggingEnabled"

    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_18
    const-string p0, "getDataUsageTimer"

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_19
    const-string p0, "setDataUsageTimer"

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_1a
    const-string p0, "resetDataUsage"

    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_1b
    const-string p0, "getBytesReceivedNetwork"

    .line 88
    .line 89
    return-object p0

    .line 90
    :pswitch_1c
    const-string p0, "getBytesSentNetwork"

    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_1d
    const-string p0, "getBytesReceivedWiFi"

    .line 94
    .line 95
    return-object p0

    .line 96
    :pswitch_1e
    const-string p0, "getBytesSentWiFi"

    .line 97
    .line 98
    return-object p0

    .line 99
    :pswitch_1f
    const-string p0, "getDataCallStatisticsEnabled"

    .line 100
    .line 101
    return-object p0

    .line 102
    :pswitch_20
    const-string p0, "setDataCallStatisticsEnabled"

    .line 103
    .line 104
    return-object p0

    .line 105
    :pswitch_21
    const-string p0, "getWifiStatisticEnabled"

    .line 106
    .line 107
    return-object p0

    .line 108
    :pswitch_22
    const-string p0, "setWifiStatisticEnabled"

    .line 109
    .line 110
    return-object p0

    .line 111
    :pswitch_23
    const-string p0, "getSalesCode"

    .line 112
    .line 113
    return-object p0

    .line 114
    :pswitch_24
    const-string p0, "dataUsageTimerActivation"

    .line 115
    .line 116
    return-object p0

    .line 117
    :pswitch_25
    const-string p0, "storeMMS"

    .line 118
    .line 119
    return-object p0

    .line 120
    :pswitch_26
    const-string p0, "clearMMSLog"

    .line 121
    .line 122
    return-object p0

    .line 123
    :pswitch_27
    const-string p0, "getInboundMMSCaptured"

    .line 124
    .line 125
    return-object p0

    .line 126
    :pswitch_28
    const-string p0, "getOutboundMMSCaptured"

    .line 127
    .line 128
    return-object p0

    .line 129
    :pswitch_29
    const-string p0, "isMMSCaptureEnabled"

    .line 130
    .line 131
    return-object p0

    .line 132
    :pswitch_2a
    const-string p0, "enableMMSCapture"

    .line 133
    .line 134
    return-object p0

    .line 135
    :pswitch_2b
    const-string p0, "clearCallingLog"

    .line 136
    .line 137
    return-object p0

    .line 138
    :pswitch_2c
    const-string p0, "storeCalling"

    .line 139
    .line 140
    return-object p0

    .line 141
    :pswitch_2d
    const-string p0, "getIncomingCallingCaptured"

    .line 142
    .line 143
    return-object p0

    .line 144
    :pswitch_2e
    const-string p0, "getOutgoingCallingCaptured"

    .line 145
    .line 146
    return-object p0

    .line 147
    :pswitch_2f
    const-string p0, "isCallingCaptureEnabled"

    .line 148
    .line 149
    return-object p0

    .line 150
    :pswitch_30
    const-string p0, "enableCallingCapture"

    .line 151
    .line 152
    return-object p0

    .line 153
    :pswitch_31
    const-string p0, "clearSMSLog"

    .line 154
    .line 155
    return-object p0

    .line 156
    :pswitch_32
    const-string p0, "storeSMS"

    .line 157
    .line 158
    return-object p0

    .line 159
    :pswitch_33
    const-string p0, "getInboundSMSCaptured"

    .line 160
    .line 161
    return-object p0

    .line 162
    :pswitch_34
    const-string p0, "getOutboundSMSCaptured"

    .line 163
    .line 164
    return-object p0

    .line 165
    :pswitch_35
    const-string p0, "isSMSCaptureEnabled"

    .line 166
    .line 167
    return-object p0

    .line 168
    :pswitch_36
    const-string p0, "enableSMSCapture"

    .line 169
    .line 170
    return-object p0

    .line 171
    :pswitch_37
    const-string p0, "resetCallsCount"

    .line 172
    .line 173
    return-object p0

    .line 174
    :pswitch_38
    const-string p0, "getSuccessCallsCount"

    .line 175
    .line 176
    return-object p0

    .line 177
    :pswitch_39
    const-string p0, "getMissedCallsCount"

    .line 178
    .line 179
    return-object p0

    .line 180
    :pswitch_3a
    const-string p0, "getDroppedCallsCount"

    .line 181
    .line 182
    return-object p0

    .line 183
    :pswitch_3b
    const-string p0, "getDeviceOSVersion"

    .line 184
    .line 185
    return-object p0

    .line 186
    :pswitch_3c
    const-string p0, "getDeviceOS"

    .line 187
    .line 188
    return-object p0

    .line 189
    :pswitch_3d
    const-string p0, "getSerialNumber"

    .line 190
    .line 191
    return-object p0

    .line 192
    :pswitch_3e
    const-string p0, "getAvailableCapacityInternal"

    .line 193
    .line 194
    return-object p0

    .line 195
    :pswitch_3f
    const-string p0, "getTotalCapacityInternal"

    .line 196
    .line 197
    return-object p0

    .line 198
    :pswitch_40
    const-string p0, "getAvailableCapacityExternal"

    .line 199
    .line 200
    return-object p0

    .line 201
    :pswitch_41
    const-string p0, "getTotalCapacityExternal"

    .line 202
    .line 203
    return-object p0

    .line 204
    :pswitch_42
    const-string p0, "isDeviceLocked"

    .line 205
    .line 206
    return-object p0

    .line 207
    :pswitch_43
    const-string p0, "isDeviceSecure"

    .line 208
    .line 209
    return-object p0

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getMaxTransactionId()I
    .locals 0

    .line 1
    const/16 p0, 0x43

    .line 2
    .line 3
    return p0
.end method

.method public final getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    .line 1
    const-string v0, "com.samsung.android.knox.deviceinfo.IDeviceInfo"

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
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getKnoxServicePackageList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 59
    .line 60
    .line 61
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getKnoxServiceId(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :pswitch_2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object p4

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 90
    .line 91
    .line 92
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->setKnoxServiceId(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :pswitch_3
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 105
    .line 106
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 111
    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    .line 114
    .line 115
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getTotalRamMemory(Lcom/samsung/android/knox/ContextInfo;)J

    .line 116
    .line 117
    .line 118
    move-result-wide p0

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    .line 137
    .line 138
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getPlatformVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :pswitch_5
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 151
    .line 152
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 157
    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    .line 160
    .line 161
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getPlatformVersionName(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :pswitch_6
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 174
    .line 175
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 180
    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    .line 183
    .line 184
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getPlatformSDK(Lcom/samsung/android/knox/ContextInfo;)I

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
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 197
    .line 198
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 203
    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    .line 206
    .line 207
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getModemFirmware(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :pswitch_8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 220
    .line 221
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 226
    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    .line 229
    .line 230
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getModelNumber(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :pswitch_9
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 243
    .line 244
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 249
    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    .line 252
    .line 253
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getModelName(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    .line 275
    .line 276
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getDeviceProcessorSpeed(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :pswitch_b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 289
    .line 290
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 295
    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    .line 298
    .line 299
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getDeviceProcessorType(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_0

    .line 310
    .line 311
    :pswitch_c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 312
    .line 313
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 318
    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    .line 321
    .line 322
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getDevicePlatform(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p0

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_0

    .line 333
    .line 334
    :pswitch_d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 335
    .line 336
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 341
    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    .line 344
    .line 345
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getDeviceName(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p0

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    goto/16 :goto_0

    .line 356
    .line 357
    :pswitch_e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 358
    .line 359
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 364
    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    .line 367
    .line 368
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getDeviceMaker(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    goto/16 :goto_0

    .line 379
    .line 380
    :pswitch_f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 381
    .line 382
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 387
    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    .line 390
    .line 391
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getAvailableRamMemory(Lcom/samsung/android/knox/ContextInfo;)J

    .line 392
    .line 393
    .line 394
    move-result-wide p0

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 399
    .line 400
    .line 401
    goto/16 :goto_0

    .line 402
    .line 403
    :pswitch_10
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 404
    .line 405
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 410
    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    .line 413
    .line 414
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getCellTowerRSSI(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    goto/16 :goto_0

    .line 425
    .line 426
    :pswitch_11
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 427
    .line 428
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 433
    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    .line 436
    .line 437
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getCellTowerPSC(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object p0

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    goto/16 :goto_0

    .line 448
    .line 449
    :pswitch_12
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 450
    .line 451
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 456
    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    .line 459
    .line 460
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getCellTowerLAC(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object p0

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    .line 466
    .line 467
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    goto/16 :goto_0

    .line 471
    .line 472
    :pswitch_13
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 473
    .line 474
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 479
    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    .line 482
    .line 483
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getCellTowerCID(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object p0

    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    .line 489
    .line 490
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    goto/16 :goto_0

    .line 494
    .line 495
    :pswitch_14
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 496
    .line 497
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 502
    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object p4

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    .line 509
    .line 510
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getDataCallLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    .line 511
    .line 512
    .line 513
    move-result-object p0

    .line 514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    .line 516
    .line 517
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object p4

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    .line 536
    .line 537
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->resetDataCallLogging(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

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
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getDataCallLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

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
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->setDataCallLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getDataUsageTimer(Lcom/samsung/android/knox/ContextInfo;)I

    .line 611
    .line 612
    .line 613
    move-result p0

    .line 614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    .line 616
    .line 617
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 631
    .line 632
    .line 633
    move-result p4

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 635
    .line 636
    .line 637
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->setDataUsageTimer(Lcom/samsung/android/knox/ContextInfo;I)Z

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
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->resetDataUsage(Lcom/samsung/android/knox/ContextInfo;)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    .line 665
    .line 666
    goto/16 :goto_0

    .line 667
    .line 668
    :pswitch_1b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 669
    .line 670
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object p1

    .line 674
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 675
    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    .line 678
    .line 679
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getBytesReceivedNetwork(Lcom/samsung/android/knox/ContextInfo;)J

    .line 680
    .line 681
    .line 682
    move-result-wide p0

    .line 683
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    .line 685
    .line 686
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 687
    .line 688
    .line 689
    goto/16 :goto_0

    .line 690
    .line 691
    :pswitch_1c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 692
    .line 693
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object p1

    .line 697
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 698
    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    .line 701
    .line 702
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getBytesSentNetwork(Lcom/samsung/android/knox/ContextInfo;)J

    .line 703
    .line 704
    .line 705
    move-result-wide p0

    .line 706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    .line 708
    .line 709
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 710
    .line 711
    .line 712
    goto/16 :goto_0

    .line 713
    .line 714
    :pswitch_1d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 715
    .line 716
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object p1

    .line 720
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 721
    .line 722
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    .line 724
    .line 725
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getBytesReceivedWiFi(Lcom/samsung/android/knox/ContextInfo;)J

    .line 726
    .line 727
    .line 728
    move-result-wide p0

    .line 729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    .line 731
    .line 732
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 733
    .line 734
    .line 735
    goto/16 :goto_0

    .line 736
    .line 737
    :pswitch_1e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 738
    .line 739
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object p1

    .line 743
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 744
    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    .line 747
    .line 748
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getBytesSentWiFi(Lcom/samsung/android/knox/ContextInfo;)J

    .line 749
    .line 750
    .line 751
    move-result-wide p0

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    .line 754
    .line 755
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 756
    .line 757
    .line 758
    goto/16 :goto_0

    .line 759
    .line 760
    :pswitch_1f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 761
    .line 762
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object p1

    .line 766
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 767
    .line 768
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    .line 770
    .line 771
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getDataCallStatisticsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

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
    :pswitch_20
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 784
    .line 785
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object p1

    .line 789
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 790
    .line 791
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 792
    .line 793
    .line 794
    move-result p4

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 796
    .line 797
    .line 798
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->setDataCallStatisticsEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 799
    .line 800
    .line 801
    move-result p0

    .line 802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    .line 804
    .line 805
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 806
    .line 807
    .line 808
    goto/16 :goto_0

    .line 809
    .line 810
    :pswitch_21
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 811
    .line 812
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object p1

    .line 816
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 817
    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 819
    .line 820
    .line 821
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getWifiStatisticEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 822
    .line 823
    .line 824
    move-result p0

    .line 825
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    .line 827
    .line 828
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 829
    .line 830
    .line 831
    goto/16 :goto_0

    .line 832
    .line 833
    :pswitch_22
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 834
    .line 835
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object p1

    .line 839
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 840
    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 842
    .line 843
    .line 844
    move-result p4

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    .line 847
    .line 848
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->setWifiStatisticEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 849
    .line 850
    .line 851
    move-result p0

    .line 852
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    .line 854
    .line 855
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 856
    .line 857
    .line 858
    goto/16 :goto_0

    .line 859
    .line 860
    :pswitch_23
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 861
    .line 862
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object p1

    .line 866
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 867
    .line 868
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 869
    .line 870
    .line 871
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getSalesCode(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object p0

    .line 875
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    .line 877
    .line 878
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    goto/16 :goto_0

    .line 882
    .line 883
    :pswitch_24
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 884
    .line 885
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object p1

    .line 889
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 890
    .line 891
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 892
    .line 893
    .line 894
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    .line 899
    .line 900
    goto/16 :goto_0

    .line 901
    .line 902
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object p1

    .line 906
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object p4

    .line 910
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 915
    .line 916
    .line 917
    move-result v2

    .line 918
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 919
    .line 920
    .line 921
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 922
    .line 923
    .line 924
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 925
    .line 926
    .line 927
    goto/16 :goto_0

    .line 928
    .line 929
    :pswitch_26
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 930
    .line 931
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    move-result-object p1

    .line 935
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 936
    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 938
    .line 939
    .line 940
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->clearMMSLog(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 941
    .line 942
    .line 943
    move-result p0

    .line 944
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    .line 946
    .line 947
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 948
    .line 949
    .line 950
    goto/16 :goto_0

    .line 951
    .line 952
    :pswitch_27
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 953
    .line 954
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object p1

    .line 958
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 959
    .line 960
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 961
    .line 962
    .line 963
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getInboundMMSCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 964
    .line 965
    .line 966
    move-result-object p0

    .line 967
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    .line 969
    .line 970
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 971
    .line 972
    .line 973
    goto/16 :goto_0

    .line 974
    .line 975
    :pswitch_28
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 976
    .line 977
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object p1

    .line 981
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 982
    .line 983
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 984
    .line 985
    .line 986
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getOutboundMMSCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 987
    .line 988
    .line 989
    move-result-object p0

    .line 990
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    .line 992
    .line 993
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 994
    .line 995
    .line 996
    goto/16 :goto_0

    .line 997
    .line 998
    :pswitch_29
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 999
    .line 1000
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    move-result-object p1

    .line 1004
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1005
    .line 1006
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1007
    .line 1008
    .line 1009
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->isMMSCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1010
    .line 1011
    .line 1012
    move-result p0

    .line 1013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1017
    .line 1018
    .line 1019
    goto/16 :goto_0

    .line 1020
    .line 1021
    :pswitch_2a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1022
    .line 1023
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-result-object p1

    .line 1027
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1028
    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1030
    .line 1031
    .line 1032
    move-result p4

    .line 1033
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1034
    .line 1035
    .line 1036
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->enableMMSCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1037
    .line 1038
    .line 1039
    move-result p0

    .line 1040
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1044
    .line 1045
    .line 1046
    goto/16 :goto_0

    .line 1047
    .line 1048
    :pswitch_2b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1049
    .line 1050
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1051
    .line 1052
    .line 1053
    move-result-object p1

    .line 1054
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1055
    .line 1056
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1057
    .line 1058
    .line 1059
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->clearCallingLog(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1060
    .line 1061
    .line 1062
    move-result p0

    .line 1063
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1067
    .line 1068
    .line 1069
    goto/16 :goto_0

    .line 1070
    .line 1071
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v3

    .line 1075
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v4

    .line 1079
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v5

    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v6

    .line 1087
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1088
    .line 1089
    .line 1090
    move-result v7

    .line 1091
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1092
    .line 1093
    .line 1094
    move-object v2, p0

    .line 1095
    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    .line 1100
    .line 1101
    goto/16 :goto_0

    .line 1102
    .line 1103
    :pswitch_2d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1104
    .line 1105
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1106
    .line 1107
    .line 1108
    move-result-object p1

    .line 1109
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1110
    .line 1111
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1112
    .line 1113
    .line 1114
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getIncomingCallingCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 1115
    .line 1116
    .line 1117
    move-result-object p0

    .line 1118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1122
    .line 1123
    .line 1124
    goto/16 :goto_0

    .line 1125
    .line 1126
    :pswitch_2e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1127
    .line 1128
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1129
    .line 1130
    .line 1131
    move-result-object p1

    .line 1132
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1133
    .line 1134
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1135
    .line 1136
    .line 1137
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getOutgoingCallingCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 1138
    .line 1139
    .line 1140
    move-result-object p0

    .line 1141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1145
    .line 1146
    .line 1147
    goto/16 :goto_0

    .line 1148
    .line 1149
    :pswitch_2f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1150
    .line 1151
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1152
    .line 1153
    .line 1154
    move-result-object p1

    .line 1155
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1156
    .line 1157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1158
    .line 1159
    .line 1160
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->isCallingCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1161
    .line 1162
    .line 1163
    move-result p0

    .line 1164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1168
    .line 1169
    .line 1170
    goto/16 :goto_0

    .line 1171
    .line 1172
    :pswitch_30
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1173
    .line 1174
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1175
    .line 1176
    .line 1177
    move-result-object p1

    .line 1178
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1179
    .line 1180
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1181
    .line 1182
    .line 1183
    move-result p4

    .line 1184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1185
    .line 1186
    .line 1187
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->enableCallingCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1188
    .line 1189
    .line 1190
    move-result p0

    .line 1191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1195
    .line 1196
    .line 1197
    goto/16 :goto_0

    .line 1198
    .line 1199
    :pswitch_31
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1200
    .line 1201
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1202
    .line 1203
    .line 1204
    move-result-object p1

    .line 1205
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1206
    .line 1207
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1208
    .line 1209
    .line 1210
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->clearSMSLog(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1211
    .line 1212
    .line 1213
    move-result p0

    .line 1214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1218
    .line 1219
    .line 1220
    goto/16 :goto_0

    .line 1221
    .line 1222
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1223
    .line 1224
    .line 1225
    move-result-object p1

    .line 1226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1227
    .line 1228
    .line 1229
    move-result-object p4

    .line 1230
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v0

    .line 1234
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1235
    .line 1236
    .line 1237
    move-result v2

    .line 1238
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1239
    .line 1240
    .line 1241
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1245
    .line 1246
    .line 1247
    goto/16 :goto_0

    .line 1248
    .line 1249
    :pswitch_33
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
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1258
    .line 1259
    .line 1260
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getInboundSMSCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 1261
    .line 1262
    .line 1263
    move-result-object p0

    .line 1264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1268
    .line 1269
    .line 1270
    goto/16 :goto_0

    .line 1271
    .line 1272
    :pswitch_34
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1273
    .line 1274
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1275
    .line 1276
    .line 1277
    move-result-object p1

    .line 1278
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1279
    .line 1280
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1281
    .line 1282
    .line 1283
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getOutboundSMSCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 1284
    .line 1285
    .line 1286
    move-result-object p0

    .line 1287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1291
    .line 1292
    .line 1293
    goto/16 :goto_0

    .line 1294
    .line 1295
    :pswitch_35
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1296
    .line 1297
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1298
    .line 1299
    .line 1300
    move-result-object p1

    .line 1301
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1302
    .line 1303
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1304
    .line 1305
    .line 1306
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->isSMSCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1307
    .line 1308
    .line 1309
    move-result p0

    .line 1310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1314
    .line 1315
    .line 1316
    goto/16 :goto_0

    .line 1317
    .line 1318
    :pswitch_36
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1319
    .line 1320
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1321
    .line 1322
    .line 1323
    move-result-object p1

    .line 1324
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1325
    .line 1326
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1327
    .line 1328
    .line 1329
    move-result p4

    .line 1330
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1331
    .line 1332
    .line 1333
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->enableSMSCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1334
    .line 1335
    .line 1336
    move-result p0

    .line 1337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1341
    .line 1342
    .line 1343
    goto/16 :goto_0

    .line 1344
    .line 1345
    :pswitch_37
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1346
    .line 1347
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1348
    .line 1349
    .line 1350
    move-result-object p1

    .line 1351
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1352
    .line 1353
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1354
    .line 1355
    .line 1356
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->resetCallsCount(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1357
    .line 1358
    .line 1359
    move-result p0

    .line 1360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1361
    .line 1362
    .line 1363
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1364
    .line 1365
    .line 1366
    goto/16 :goto_0

    .line 1367
    .line 1368
    :pswitch_38
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1369
    .line 1370
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1371
    .line 1372
    .line 1373
    move-result-object p1

    .line 1374
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1375
    .line 1376
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1377
    .line 1378
    .line 1379
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getSuccessCallsCount(Lcom/samsung/android/knox/ContextInfo;)I

    .line 1380
    .line 1381
    .line 1382
    move-result p0

    .line 1383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1384
    .line 1385
    .line 1386
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1387
    .line 1388
    .line 1389
    goto/16 :goto_0

    .line 1390
    .line 1391
    :pswitch_39
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1392
    .line 1393
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1394
    .line 1395
    .line 1396
    move-result-object p1

    .line 1397
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1398
    .line 1399
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1400
    .line 1401
    .line 1402
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getMissedCallsCount(Lcom/samsung/android/knox/ContextInfo;)I

    .line 1403
    .line 1404
    .line 1405
    move-result p0

    .line 1406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1407
    .line 1408
    .line 1409
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1410
    .line 1411
    .line 1412
    goto/16 :goto_0

    .line 1413
    .line 1414
    :pswitch_3a
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1415
    .line 1416
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1417
    .line 1418
    .line 1419
    move-result-object p1

    .line 1420
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1421
    .line 1422
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1423
    .line 1424
    .line 1425
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getDroppedCallsCount(Lcom/samsung/android/knox/ContextInfo;)I

    .line 1426
    .line 1427
    .line 1428
    move-result p0

    .line 1429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1433
    .line 1434
    .line 1435
    goto/16 :goto_0

    .line 1436
    .line 1437
    :pswitch_3b
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1438
    .line 1439
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1440
    .line 1441
    .line 1442
    move-result-object p1

    .line 1443
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1444
    .line 1445
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1446
    .line 1447
    .line 1448
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getDeviceOSVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 1449
    .line 1450
    .line 1451
    move-result-object p0

    .line 1452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    .line 1454
    .line 1455
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1456
    .line 1457
    .line 1458
    goto/16 :goto_0

    .line 1459
    .line 1460
    :pswitch_3c
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1461
    .line 1462
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1463
    .line 1464
    .line 1465
    move-result-object p1

    .line 1466
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1467
    .line 1468
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1469
    .line 1470
    .line 1471
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getDeviceOS(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 1472
    .line 1473
    .line 1474
    move-result-object p0

    .line 1475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1479
    .line 1480
    .line 1481
    goto/16 :goto_0

    .line 1482
    .line 1483
    :pswitch_3d
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1484
    .line 1485
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1486
    .line 1487
    .line 1488
    move-result-object p1

    .line 1489
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1490
    .line 1491
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1492
    .line 1493
    .line 1494
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getSerialNumber(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 1495
    .line 1496
    .line 1497
    move-result-object p0

    .line 1498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1499
    .line 1500
    .line 1501
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1502
    .line 1503
    .line 1504
    goto/16 :goto_0

    .line 1505
    .line 1506
    :pswitch_3e
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1507
    .line 1508
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1509
    .line 1510
    .line 1511
    move-result-object p1

    .line 1512
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1513
    .line 1514
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1515
    .line 1516
    .line 1517
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getAvailableCapacityInternal(Lcom/samsung/android/knox/ContextInfo;)J

    .line 1518
    .line 1519
    .line 1520
    move-result-wide p0

    .line 1521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1522
    .line 1523
    .line 1524
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1525
    .line 1526
    .line 1527
    goto :goto_0

    .line 1528
    :pswitch_3f
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1529
    .line 1530
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1531
    .line 1532
    .line 1533
    move-result-object p1

    .line 1534
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1535
    .line 1536
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1537
    .line 1538
    .line 1539
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getTotalCapacityInternal(Lcom/samsung/android/knox/ContextInfo;)J

    .line 1540
    .line 1541
    .line 1542
    move-result-wide p0

    .line 1543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1544
    .line 1545
    .line 1546
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1547
    .line 1548
    .line 1549
    goto :goto_0

    .line 1550
    :pswitch_40
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1551
    .line 1552
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1553
    .line 1554
    .line 1555
    move-result-object p1

    .line 1556
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1557
    .line 1558
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1559
    .line 1560
    .line 1561
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getAvailableCapacityExternal(Lcom/samsung/android/knox/ContextInfo;)J

    .line 1562
    .line 1563
    .line 1564
    move-result-wide p0

    .line 1565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1566
    .line 1567
    .line 1568
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1569
    .line 1570
    .line 1571
    goto :goto_0

    .line 1572
    :pswitch_41
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1573
    .line 1574
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1575
    .line 1576
    .line 1577
    move-result-object p1

    .line 1578
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1579
    .line 1580
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1581
    .line 1582
    .line 1583
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->getTotalCapacityExternal(Lcom/samsung/android/knox/ContextInfo;)J

    .line 1584
    .line 1585
    .line 1586
    move-result-wide p0

    .line 1587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1588
    .line 1589
    .line 1590
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1591
    .line 1592
    .line 1593
    goto :goto_0

    .line 1594
    :pswitch_42
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1595
    .line 1596
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1597
    .line 1598
    .line 1599
    move-result-object p1

    .line 1600
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1601
    .line 1602
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1603
    .line 1604
    .line 1605
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->isDeviceLocked(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1606
    .line 1607
    .line 1608
    move-result p0

    .line 1609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1610
    .line 1611
    .line 1612
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1613
    .line 1614
    .line 1615
    goto :goto_0

    .line 1616
    :pswitch_43
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1617
    .line 1618
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1619
    .line 1620
    .line 1621
    move-result-object p1

    .line 1622
    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    .line 1623
    .line 1624
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1625
    .line 1626
    .line 1627
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;->isDeviceSecure(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1628
    .line 1629
    .line 1630
    move-result p0

    .line 1631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1632
    .line 1633
    .line 1634
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1635
    .line 1636
    .line 1637
    :goto_0
    return v1

    .line 1638
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1639
    .line 1640
    .line 1641
    return v1

    .line 1642
    nop

    .line 1643
    :pswitch_data_0
    .packed-switch 0x1
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
