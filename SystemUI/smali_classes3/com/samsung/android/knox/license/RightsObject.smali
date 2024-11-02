.class public Lcom/samsung/android/knox/license/RightsObject;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/license/RightsObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private expiryDate:J

.field private instanceId:Ljava/lang/String;

.field private issueDate:J

.field private licenseType:Ljava/lang/String;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverUrl:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private uploadFrequencyTime:J

.field private uploadTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/license/RightsObject$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/license/RightsObject$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/license/RightsObject;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/license/RightsObject;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/license/RightsObject;-><init>(Landroid/os/Parcel;)V

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

.method public final getExpiryDate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->expiryDate:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getInstanceId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/license/RightsObject;->instanceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getIssueDate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->issueDate:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getLicenseType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/license/RightsObject;->licenseType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPermissions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/license/RightsObject;->permissions:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getServerUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/license/RightsObject;->serverUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getState()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/license/RightsObject;->state:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUploadFrequencyTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadFrequencyTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getUploadTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->instanceId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->state:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->issueDate:J

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->expiryDate:J

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->licenseType:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->permissions:Ljava/util/List;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iput-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadFrequencyTime:J

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    iput-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadTime:J

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/samsung/android/knox/license/RightsObject;->serverUrl:Ljava/lang/String;

    .line 54
    .line 55
    return-void
.end method

.method public final setExpiryDate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/knox/license/RightsObject;->expiryDate:J

    .line 2
    .line 3
    return-void
.end method

.method public final setInstanceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/license/RightsObject;->instanceId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setIssueDate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/knox/license/RightsObject;->issueDate:J

    .line 2
    .line 3
    return-void
.end method

.method public final setLicenseType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/license/RightsObject;->licenseType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPermissions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/license/RightsObject;->permissions:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setServerUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/license/RightsObject;->serverUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setState(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/license/RightsObject;->state:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUploadFrequencyTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadFrequencyTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setUploadTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/samsung/android/knox/license/RightsObject;->instanceId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/samsung/android/knox/license/RightsObject;->state:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->issueDate:J

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->expiryDate:J

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/samsung/android/knox/license/RightsObject;->licenseType:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/samsung/android/knox/license/RightsObject;->permissions:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadFrequencyTime:J

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    .line 35
    .line 36
    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadTime:J

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/knox/license/RightsObject;->serverUrl:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
