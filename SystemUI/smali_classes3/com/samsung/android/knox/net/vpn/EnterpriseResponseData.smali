.class public final Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final APINOTSUPPORTED:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = -0x1

.field public static final EXCEPTIONFAILURE:I = 0x3

.field public static final FAILURE:I = 0x1

.field public static final INSTALL_FAILURE:I = 0x6

.field public static final INVALID_ADMIN:I = 0x8

.field public static final INVALID_CONTAINER_ID:I = 0xb

.field public static final INVALID_PARAMETER:I = 0x9

.field public static final INVALID_VENDOR:I = 0x7

.field public static final INVALID_VPN_STATE:I = 0xc

.field public static final NOERROR:I = 0x0

.field public static final NULLPACKAGE:I = 0x4

.field public static final NULLPROFILE:I = 0x2

.field public static final RECREATE_CONNECTION_FAILURE:I = 0x2

.field public static final SERVICE_NOT_STARTED:I = 0xa

.field public static final SUCCESS:I = 0x0

.field public static final SYSTEM_UID_FAILURE:I = 0x5


# instance fields
.field public mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mFailureState:I

.field public mStatus:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mStatus:I

    .line 4
    iput v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mStatus:I

    .line 7
    iput v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>(Landroid/os/Parcel;)V

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

.method public final getData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFailureState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 2
    .line 3
    return p0
.end method

.method public final getStatus()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mStatus:I

    .line 2
    .line 3
    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mStatus:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 19
    .line 20
    return-void
.end method

.method public final setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final setStatus(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mStatus:I

    .line 2
    .line 3
    iput p2, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 4
    .line 5
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mStatus:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
