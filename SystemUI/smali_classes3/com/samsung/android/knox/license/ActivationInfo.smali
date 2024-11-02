.class public final Lcom/samsung/android/knox/license/ActivationInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/license/ActivationInfo$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/license/ActivationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activationDate:Ljava/util/Date;

.field public maskedLicenseKey:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public productType:Ljava/lang/String;

.field public sku:Ljava/lang/String;

.field public state:Lcom/samsung/android/knox/license/ActivationInfo$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/license/ActivationInfo$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/license/ActivationInfo$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/license/ActivationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/license/ActivationInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/license/ActivationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/samsung/android/knox/license/ActivationInfo;
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/knox/license/ActivationInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/license/ActivationInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PACKAGE_NAME"

    .line 7
    .line 8
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/samsung/android/knox/license/ActivationInfo;->packageName:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "LICENSE_STATUS"

    .line 19
    .line 20
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Lcom/samsung/android/knox/license/ActivationInfo$State;->fromInt(I)Lcom/samsung/android/knox/license/ActivationInfo$State;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, v0, Lcom/samsung/android/knox/license/ActivationInfo;->state:Lcom/samsung/android/knox/license/ActivationInfo$State;

    .line 33
    .line 34
    const-string v1, "LICENSE_KEY"

    .line 35
    .line 36
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, v0, Lcom/samsung/android/knox/license/ActivationInfo;->maskedLicenseKey:Ljava/lang/String;

    .line 45
    .line 46
    const-string v1, "SKU"

    .line 47
    .line 48
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v0, Lcom/samsung/android/knox/license/ActivationInfo;->sku:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "PRODUCT_TYPE"

    .line 59
    .line 60
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, v0, Lcom/samsung/android/knox/license/ActivationInfo;->productType:Ljava/lang/String;

    .line 69
    .line 70
    :try_start_0
    new-instance v1, Ljava/util/Date;

    .line 71
    .line 72
    const-string v2, "TIME"

    .line 73
    .line 74
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 91
    .line 92
    .line 93
    iput-object v1, v0, Lcom/samsung/android/knox/license/ActivationInfo;->activationDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    const/4 p0, 0x0

    .line 97
    iput-object p0, v0, Lcom/samsung/android/knox/license/ActivationInfo;->activationDate:Ljava/util/Date;

    .line 98
    .line 99
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getActivationDate()Ljava/util/Date;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->activationDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMaskedLicenseKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->maskedLicenseKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getProductType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->productType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->sku:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getState()Lcom/samsung/android/knox/license/ActivationInfo$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->state:Lcom/samsung/android/knox/license/ActivationInfo$State;

    .line 2
    .line 3
    return-object p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Lcom/samsung/android/knox/license/ActivationInfo$State;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/ActivationInfo$State;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->state:Lcom/samsung/android/knox/license/ActivationInfo$State;

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->maskedLicenseKey:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->sku:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->productType:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    const-wide/16 v2, -0x1

    .line 42
    .line 43
    cmp-long p1, v0, v2

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance p1, Ljava/util/Date;

    .line 50
    .line 51
    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/knox/license/ActivationInfo;->activationDate:Ljava/util/Date;

    .line 55
    .line 56
    return-void
.end method

.method public final setActivationDate(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/license/ActivationInfo;->activationDate:Ljava/util/Date;

    .line 2
    .line 3
    return-void
.end method

.method public final setMaskedLicenseKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/license/ActivationInfo;->maskedLicenseKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/license/ActivationInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setProductType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/license/ActivationInfo;->productType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSku(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/license/ActivationInfo;->sku:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setState(Lcom/samsung/android/knox/license/ActivationInfo$State;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/license/ActivationInfo;->state:Lcom/samsung/android/knox/license/ActivationInfo$State;

    .line 2
    .line 3
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/samsung/android/knox/license/ActivationInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/samsung/android/knox/license/ActivationInfo;->state:Lcom/samsung/android/knox/license/ActivationInfo$State;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/samsung/android/knox/license/ActivationInfo;->maskedLicenseKey:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/samsung/android/knox/license/ActivationInfo;->sku:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/samsung/android/knox/license/ActivationInfo;->productType:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/knox/license/ActivationInfo;->activationDate:Ljava/util/Date;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-wide/16 v0, -0x1

    .line 44
    .line 45
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
