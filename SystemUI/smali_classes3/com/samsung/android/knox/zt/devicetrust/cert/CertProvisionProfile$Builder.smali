.class public final Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


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

.field public final mKeyAlias:Ljava/lang/String;

.field public mKeyExtendedPurposes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeyOwner:I

.field public final mKeyProvider:Ljava/lang/String;

.field public final mProtocol:Ljava/lang/String;

.field public final mProvisionType:Ljava/lang/String;

.field public final mRootCA:Ljava/lang/String;

.field public mServerHost:Ljava/lang/String;

.field public mServerPath:Ljava/lang/String;

.field public mServerPort:Ljava/lang/String;

.field public final mSubject:Landroid/os/Bundle;

.field public mSubjectAltName:Landroid/os/Bundle;

.field public mSystemKeyPurposes:I

.field public mSystemKeySize:I

.field public mSystemKeyType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mRootCA:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mProtocol:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mProvisionType:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mKeyProvider:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mKeyOwner:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mKeyAlias:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mSubject:Landroid/os/Bundle;

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mServerHost:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mServerPort:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mServerPath:Ljava/lang/String;

    .line 25
    .line 26
    new-instance p2, Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mSubjectAltName:Landroid/os/Bundle;

    .line 32
    .line 33
    new-instance p2, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mKeyExtendedPurposes:Ljava/util/List;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mChallengePassword:Ljava/lang/String;

    .line 41
    .line 42
    const/4 p2, -0x1

    .line 43
    iput p2, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mClientIdentifierType:I

    .line 44
    .line 45
    new-instance p3, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p3, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mClientIdentifiers:Ljava/util/List;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mSystemKeyType:Ljava/lang/String;

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    iput p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mSystemKeyPurposes:I

    .line 56
    .line 57
    iput p2, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mSystemKeySize:I

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v21, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;

    .line 4
    .line 5
    move-object/from16 v1, v21

    .line 6
    .line 7
    iget-object v2, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mRootCA:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mProtocol:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mProvisionType:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v5, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mKeyProvider:Ljava/lang/String;

    .line 14
    .line 15
    iget v6, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mKeyOwner:I

    .line 16
    .line 17
    iget-object v7, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mKeyAlias:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v8, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mSubject:Landroid/os/Bundle;

    .line 20
    .line 21
    iget-object v9, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mServerHost:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v10, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mServerPort:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v11, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mServerPath:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v12, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mSubjectAltName:Landroid/os/Bundle;

    .line 28
    .line 29
    iget-object v13, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mKeyExtendedPurposes:Ljava/util/List;

    .line 30
    .line 31
    iget-object v14, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mChallengePassword:Ljava/lang/String;

    .line 32
    .line 33
    iget v15, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mClientIdentifierType:I

    .line 34
    .line 35
    move-object/from16 v22, v1

    .line 36
    .line 37
    iget-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mClientIdentifiers:Ljava/util/List;

    .line 38
    .line 39
    move-object/from16 v16, v1

    .line 40
    .line 41
    iget-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mSystemKeyType:Ljava/lang/String;

    .line 42
    .line 43
    move-object/from16 v17, v1

    .line 44
    .line 45
    iget v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mSystemKeyPurposes:I

    .line 46
    .line 47
    move/from16 v18, v1

    .line 48
    .line 49
    iget v0, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mSystemKeySize:I

    .line 50
    .line 51
    move/from16 v19, v0

    .line 52
    .line 53
    const/16 v20, 0x0

    .line 54
    .line 55
    move-object/from16 v1, v22

    .line 56
    .line 57
    invoke-direct/range {v1 .. v20}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;III)V

    .line 58
    .line 59
    .line 60
    return-object v21
.end method

.method public final setChallengePassword(Ljava/lang/String;)Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mChallengePassword:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setClientIdentifierType(I)Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mClientIdentifierType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final varargs setClientIdentifiers([Ljava/lang/String;)Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    new-array p1, p1, [Ljava/lang/String;

    .line 5
    .line 6
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mClientIdentifiers:Ljava/util/List;

    .line 11
    .line 12
    return-object p0
.end method

.method public final varargs setKeyExtendedPurposes([Ljava/lang/String;)Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    new-array p1, p1, [Ljava/lang/String;

    .line 5
    .line 6
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mKeyExtendedPurposes:Ljava/util/List;

    .line 11
    .line 12
    return-object p0
.end method

.method public final setServerHost(Ljava/lang/String;)Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mServerHost:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setServerPath(Ljava/lang/String;)Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mServerPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setServerPort(Ljava/lang/String;)Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mServerPort:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setSubjectAltName(Landroid/os/Bundle;)Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mSubjectAltName:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setSystemKeyPurposes(I)Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mSystemKeyPurposes:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final setSystemKeySize(I)Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mSystemKeySize:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final setSystemKeyType(Ljava/lang/String;)Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;->mSystemKeyType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
