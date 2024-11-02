.class public final Lcom/samsung/android/knox/container/EnterpriseContainerObject;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/knox/container/EnterpriseContainerConstants;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public admin:I

.field public containerType:I

.field public email:Ljava/lang/String;

.field public id:I

.field public lockType:I

.field public name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/container/EnterpriseContainerObject$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/container/EnterpriseContainerObject$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    .line 3
    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    .line 7
    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    .line 10
    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    .line 14
    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

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

.method public final getContainerAdmin()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    .line 2
    .line 3
    return p0
.end method

.method public final getContainerEmail()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContainerId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    .line 2
    .line 3
    return p0
.end method

.method public final getContainerLockType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    .line 2
    .line 3
    return p0
.end method

.method public final getContainerName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContainerType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    .line 2
    .line 3
    return p0
.end method

.method public final setContainerAdmin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    .line 2
    .line 3
    return-void
.end method

.method public final setContainerEmail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setContainerId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public final setContainerLockType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setContainerName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setContainerType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    .line 2
    .line 3
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_1
    iget p2, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    iget p0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
