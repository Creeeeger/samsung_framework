.class public final Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/apn/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mApnName:Ljava/lang/String;

.field public mAuthType:I

.field public mId:J

.field public mMcc:Ljava/lang/String;

.field public mMmsProxyAddress:Ljava/lang/String;

.field public mMmsProxyPort:I

.field public mMmsc:Ljava/lang/String;

.field public mMnc:Ljava/lang/String;

.field public mMvnoType:Ljava/lang/String;

.field public mMvnoValue:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field public mProtocol:Ljava/lang/String;

.field public mProxyAddress:Ljava/lang/String;

.field public mProxyPort:I

.field public mRoamingProtocol:Ljava/lang/String;

.field public mServer:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mUser:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mApnName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/net/apn/ApnSettings;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>(Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;I)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public final setApnName(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mApnName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setAuthType(I)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mAuthType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final setId(J)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mId:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final setMcc(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMcc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setMmsProxyAddress(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMmsProxyAddress:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setMmsProxyPort(I)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMmsProxyPort:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final setMmsc(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMmsc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setMnc(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMnc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setMvnoType(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMvnoType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setMvnoValue(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mMvnoValue:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPassword(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mPassword:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setProtocol(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mProtocol:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setProxyAddress(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mProxyAddress:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setProxyPort(I)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mProxyPort:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final setRoamingProtocol(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mRoamingProtocol:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setServer(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mServer:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setType(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setUser(Ljava/lang/String;)Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/net/apn/ApnSettings$Builder;->mUser:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
