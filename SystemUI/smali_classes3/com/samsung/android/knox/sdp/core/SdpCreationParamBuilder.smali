.class public Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mFlags:I

.field private mPrivilegedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mAlias:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->validateFlags(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mFlags:I

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mPrivilegedApps:Ljava/util/ArrayList;

    .line 22
    .line 23
    return-void
.end method

.method private validateFlags(I)I
    .locals 0

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-le p1, p0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    return p1

    .line 8
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method


# virtual methods
.method public addPrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mPrivilegedApps:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getParam()Lcom/samsung/android/knox/sdp/core/SdpCreationParam;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mAlias:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mAlias:Ljava/lang/String;

    .line 10
    .line 11
    iget v2, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mFlags:I

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mPrivilegedApps:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/knox/sdp/core/SdpCreationParam;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public setMdfpp()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mFlags:I

    .line 6
    .line 7
    return-void
.end method

.method public setMinor()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mFlags:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/samsung/android/knox/sdp/core/SdpCreationParamBuilder;->mFlags:I

    .line 6
    .line 7
    return-void
.end method
