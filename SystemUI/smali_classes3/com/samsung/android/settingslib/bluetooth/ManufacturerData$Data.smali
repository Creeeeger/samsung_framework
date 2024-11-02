.class public final Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBluetoothType:B

.field public final mContactCrc:[B

.field public final mContactHash:[B

.field public mDeviceCategory:B

.field public final mDeviceCategoryPrefix:Ljava/lang/String;

.field public mDeviceIconIndex:B

.field public final mDeviceId:[B

.field public mIsDeviceCategoryInitialized:Z

.field public mTxPower:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mIsDeviceCategoryInitialized:Z

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    new-array v2, v1, [B

    .line 14
    .line 15
    iput-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    .line 16
    .line 17
    new-array v3, v1, [B

    .line 18
    .line 19
    iput-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    .line 20
    .line 21
    iput p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    .line 22
    .line 23
    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    .line 24
    .line 25
    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    .line 26
    .line 27
    const-string v4, ""

    .line 28
    .line 29
    iput-object v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategoryPrefix:Ljava/lang/String;

    .line 30
    .line 31
    aput-byte p1, v0, p1

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    aput-byte p1, v0, v4

    .line 35
    .line 36
    aput-byte p1, v0, v1

    .line 37
    .line 38
    aput-byte p1, v2, p1

    .line 39
    .line 40
    aput-byte p1, v2, v4

    .line 41
    .line 42
    aput-byte p1, v3, p1

    .line 43
    .line 44
    aput-byte p1, v3, v4

    .line 45
    .line 46
    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    .line 47
    .line 48
    return-void
.end method
