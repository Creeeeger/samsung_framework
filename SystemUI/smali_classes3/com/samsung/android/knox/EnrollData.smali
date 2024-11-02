.class public final Lcom/samsung/android/knox/EnrollData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/EnrollData;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "EnrollData"


# instance fields
.field public comment:Ljava/lang/String;

.field public constrainedState:I

.field public downloadUrl:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public policyBitMask:I

.field public signature:[B

.field public targetPkgName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/EnrollData$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/EnrollData$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/EnrollData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    .line 4
    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    .line 5
    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    .line 6
    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    .line 12
    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    .line 13
    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/EnrollData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getConstrainedState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    .line 2
    .line 3
    return p0
.end method

.method public final getDownloadUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPolicyBitMask()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSignature()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTargetPkgName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    new-array v0, v0, [B

    .line 38
    .line 39
    iput-object v0, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    .line 49
    .line 50
    return-void
.end method

.method public final setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I[BLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    .line 12
    .line 13
    iput-object p7, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    .line 27
    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    array-length p2, p2

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
