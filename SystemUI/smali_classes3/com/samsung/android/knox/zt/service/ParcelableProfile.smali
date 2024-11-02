.class public final Lcom/samsung/android/knox/zt/service/ParcelableProfile;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/zt/service/ParcelableProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mChallengePassword:Ljava/lang/String;

.field public mClientIdentifierType:I

.field public mClientIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mKeyAlias:Ljava/lang/String;

.field public mKeyExtendedPurposes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mKeyOwner:I

.field public mKeyProvider:Ljava/lang/String;

.field public mProtocol:Ljava/lang/String;

.field public mProvisionType:Ljava/lang/String;

.field public mRootCA:Ljava/lang/String;

.field public mServerHost:Ljava/lang/String;

.field public mServerPath:Ljava/lang/String;

.field public mServerPort:Ljava/lang/String;

.field public mSubject:Landroid/os/Bundle;

.field public mSubjectAltName:Landroid/os/Bundle;

.field public mSystemKeyPurposes:I

.field public mSystemKeySize:I

.field public mSystemKeyType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/zt/service/ParcelableProfile$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyExtendedPurposes:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifiers:Ljava/util/List;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mRootCA:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProtocol:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProvisionType:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyProvider:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyOwner:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyAlias:Ljava/lang/String;

    .line 31
    const-class v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubject:Landroid/os/Bundle;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerHost:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPort:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPath:Ljava/lang/String;

    .line 35
    const-class v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubjectAltName:Landroid/os/Bundle;

    .line 36
    iget-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyExtendedPurposes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mChallengePassword:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifierType:I

    .line 39
    iget-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifiers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyType:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyPurposes:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeySize:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyExtendedPurposes:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifiers:Ljava/util/List;

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mRootCA:Ljava/lang/String;

    move-object v1, p2

    .line 5
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProtocol:Ljava/lang/String;

    move-object v1, p3

    .line 6
    invoke-virtual {p0, p3}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProvisionType:Ljava/lang/String;

    move-object v1, p4

    .line 7
    invoke-virtual {p0, p4}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyProvider:Ljava/lang/String;

    move v1, p5

    .line 8
    iput v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyOwner:I

    move-object v1, p6

    .line 9
    invoke-virtual {p0, p6}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyAlias:Ljava/lang/String;

    move-object v1, p7

    .line 10
    invoke-virtual {p0, p7}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubject:Landroid/os/Bundle;

    move-object v1, p8

    .line 11
    invoke-virtual {p0, p8}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerHost:Ljava/lang/String;

    move-object v1, p9

    .line 12
    invoke-virtual {p0, p9}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPort:Ljava/lang/String;

    move-object v1, p10

    .line 13
    invoke-virtual {p0, p10}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPath:Ljava/lang/String;

    move-object v1, p11

    .line 14
    invoke-virtual {p0, p11}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubjectAltName:Landroid/os/Bundle;

    move-object v1, p12

    .line 15
    invoke-virtual {p0, p12}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyExtendedPurposes:Ljava/util/List;

    move-object v1, p13

    .line 16
    invoke-virtual {p0, p13}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mChallengePassword:Ljava/lang/String;

    move/from16 v1, p14

    .line 17
    iput v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifierType:I

    move-object/from16 v1, p15

    .line 18
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifiers:Ljava/util/List;

    move-object/from16 v1, p16

    .line 19
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyType:Ljava/lang/String;

    move/from16 v1, p17

    .line 20
    iput v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyPurposes:I

    move/from16 v1, p18

    .line 21
    iput v1, v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeySize:I

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

.method public final getChallengePassword()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mChallengePassword:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getClientIdentifierType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifierType:I

    .line 2
    .line 3
    return p0
.end method

.method public final getClientIdentifiers()Ljava/util/List;
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
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifiers:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKeyAlias()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyAlias:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKeyExtendedPurposes()Ljava/util/List;
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
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyExtendedPurposes:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKeyOwner()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyOwner:I

    .line 2
    .line 3
    return p0
.end method

.method public final getKeyProvider()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyProvider:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProtocol:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getProvisionType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProvisionType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRootCA()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mRootCA:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getServerHost()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerHost:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getServerPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getServerPort()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPort:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubject()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubject:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubjectAltName()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubjectAltName:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSystemKeyPurposes()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyPurposes:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSystemKeySize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeySize:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSystemKeyType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final nonEmptyOf(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    return-object p1
.end method

.method public final nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public final nonEmptyOf(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mRootCA:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProtocol:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProvisionType:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyProvider:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyOwner:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyAlias:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubject:Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerHost:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPort:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPath:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubjectAltName:Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyExtendedPurposes:Ljava/util/List;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mChallengePassword:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifierType:I

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifiers:Ljava/util/List;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyType:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyPurposes:I

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    .line 85
    .line 86
    iget p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeySize:I

    .line 87
    .line 88
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
