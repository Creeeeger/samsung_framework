.class public final Lcom/samsung/android/knox/keystore/TUIProperty;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/keystore/TUIProperty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public loginExpirationPeriod:I

.field public loginRetry:I

.field public pin:[B

.field public secretImage:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/keystore/TUIProperty$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/TUIProperty$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/keystore/TUIProperty;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    const/16 v0, 0x78

    .line 4
    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    .line 6
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    const/16 v0, 0x78

    .line 9
    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    .line 11
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    .line 12
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/keystore/TUIProperty;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/TUIProperty;-><init>(Landroid/os/Parcel;)V

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

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    .line 24
    .line 25
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
