.class public final Lcom/samsung/android/knox/ContextInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/ContextInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_CONTAINER_ID:I = 0x0

.field public static final NON_DALESS_CALLER:I = -0x1


# instance fields
.field public final mCallerUid:I

.field public final mContainerId:I

.field public final mDALessCallerUid:I

.field public final mParent:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/ContextInfo$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 6
    iput v2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    goto :goto_0

    .line 7
    :cond_0
    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 8
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 13
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 14
    iput v1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    goto :goto_0

    .line 15
    :cond_0
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 16
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 29
    iput p2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    const/4 v0, -0x1

    .line 32
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(IIZI)V

    return-void
.end method

.method public constructor <init>(IIZI)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 35
    iput p2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 36
    iput-boolean p3, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 37
    iput p4, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, -0x1

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(IZI)V

    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 21
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 22
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 25
    :goto_1
    iput-boolean p2, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 26
    iput p3, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(Landroid/os/Parcel;)V

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

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Caller uid: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " ,Container id: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " , mParent: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean p0, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-boolean p2, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
