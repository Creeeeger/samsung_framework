.class public final Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_BAD_REQUEST:I = 0x190

.field public static final ERROR_BIND_FAIL:I = -0x2

.field public static final ERROR_CB_EMPTY:I = -0x9

.field public static final ERROR_CONFLICT:I = 0x199

.field public static final ERROR_DEVICE_NOT_SUPPORTED:I = -0x7

.field public static final ERROR_FORBIDDEN:I = 0x193

.field public static final ERROR_FW:I = -0x5

.field public static final ERROR_INTERNAL:I = -0x6

.field public static final ERROR_INTERNAL_SERVER:I = 0x1f4

.field public static final ERROR_NETWORK:I = -0x8

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_FOUND:I = 0x194

.field public static final ERROR_PERMISSION:I = -0x3

.field public static final ERROR_REQUEST_NOT_FINISHED:I = -0x4

.field public static final ERROR_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final ERROR_UNAUTHORIZED:I = 0x191

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final NOT_REGISTERED:I = 0x2

.field public static final REGISTERED:I = 0x1

.field public static final TAG:Ljava/lang/String; = "KnoxPushServiceResult"


# instance fields
.field public deviceId:Ljava/lang/String;

.field public errorCode:I

.field public reason:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->readFromParcel(Landroid/os/Parcel;)V

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

.method public final getDeviceId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->deviceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getError()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->errorCode:I

    .line 2
    .line 3
    return p0
.end method

.method public final getReason()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->reason:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->errorCode:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->reason:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->deviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->deviceId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setErrorCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->errorCode:I

    .line 2
    .line 3
    return-void
.end method

.method public final setReason(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->reason:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p2, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->errorCode:I

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->reason:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;->deviceId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
