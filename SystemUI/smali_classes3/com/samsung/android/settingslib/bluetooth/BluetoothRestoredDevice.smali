.class public final Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAddress:Ljava/lang/String;

.field public mAppearance:I

.field public mBondState:I

.field public mCod:I

.field public mLinkType:I

.field public mManufacturerData:[B

.field public mName:Ljava/lang/String;

.field public mTimeStamp:J

.field public mUuids:[Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mLinkType:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mAddress:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method
