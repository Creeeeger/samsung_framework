.class public final Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile$Builder;
    }
.end annotation


# static fields
.field public static final CA_DEFAULT:Ljava/lang/String; = "default"

.field public static final CA_LOOPBACK:Ljava/lang/String; = "loopback"

.field public static final CLIENT_ID_TYPE_IMEI:I = 0x0

.field public static final CLIENT_ID_TYPE_SAK_UID:I = 0x1

.field public static final KEY_OWNER_APP:I = 0x1

.field public static final KEY_OWNER_SYSTEM:I = 0x0

.field public static final KEY_PURPOSE_ENCRYPT:I = 0x1

.field public static final KEY_PURPOSE_SIGN:I = 0x4

.field public static final KEY_TYPE_EC:Ljava/lang/String; = "EC"

.field public static final KEY_TYPE_RSA:Ljava/lang/String; = "RSA"

.field public static final PROTOCOL_ACME:Ljava/lang/String; = "acme"

.field public static final PROTOCOL_SCEP:Ljava/lang/String; = "scep"

.field public static final PROVIDER_ANDROID:Ljava/lang/String; = "AndroidKeyStore"

.field public static final PROVIDER_UCM:Ljava/lang/String; = "UcmKeystore"

.field public static final SAN_DNS_NAME:Ljava/lang/String; = "dNSName"

.field public static final SAN_IP_ADDRESS:Ljava/lang/String; = "iPAddress"

.field public static final SAN_RFC822_NAME:Ljava/lang/String; = "rfc822Name"

.field public static final SAN_URI:Ljava/lang/String; = "uniformResourceIdentifier"

.field public static final TYPE_PROVISION:Ljava/lang/String; = "provision"

.field public static final TYPE_RENEW:Ljava/lang/String; = "renew"

.field public static final TYPE_REVOKE:Ljava/lang/String; = "revoke"


# instance fields
.field public final mChallengePassword:Ljava/lang/String;

.field public final mClientIdentifierType:I

.field public final mClientIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeyAlias:Ljava/lang/String;

.field public final mKeyExtendedPurposes:Ljava/util/List;
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

.field public final mServerHost:Ljava/lang/String;

.field public final mServerPath:Ljava/lang/String;

.field public final mServerPort:Ljava/lang/String;

.field public final mSubject:Landroid/os/Bundle;

.field public final mSubjectAltName:Landroid/os/Bundle;

.field public final mSystemKeyPurposes:I

.field public final mSystemKeySize:I

.field public final mSystemKeyType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;II)V
    .locals 12
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

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p11

    move/from16 v8, p14

    move-object/from16 v9, p16

    move/from16 v10, p17

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedRootCAs()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 4
    iput-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mRootCA:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedProtocols()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 6
    iput-object v2, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mProtocol:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedProvisionTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 8
    iput-object v3, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mProvisionType:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedKeyProviders()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->convertKeyProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 10
    iput-object v4, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyProvider:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedKeyOwners()Ljava/util/List;

    move-result-object v1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 12
    iput v5, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyOwner:I

    move-object/from16 v1, p6

    .line 13
    iput-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyAlias:Ljava/lang/String;

    .line 14
    invoke-virtual/range {p7 .. p7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\'s value must be passed as type String or StringArrayList"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->validateStringOrStringArrayList(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "subject "

    .line 17
    invoke-static {v1, v2, v3}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    iput-object v6, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSubject:Landroid/os/Bundle;

    move-object/from16 v1, p8

    .line 20
    iput-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerHost:Ljava/lang/String;

    move-object/from16 v1, p9

    .line 21
    iput-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerPort:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 22
    iput-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerPath:Ljava/lang/String;

    .line 23
    invoke-virtual/range {p11 .. p11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedSubjectAltName()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 25
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->validateStringOrStringArrayList(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 26
    :cond_2
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "subject alternative name "

    .line 27
    invoke-static {v1, v2, v3}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_3
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "invalid subject alternative name property : "

    .line 30
    invoke-static {v1, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_4
    iput-object v7, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSubjectAltName:Landroid/os/Bundle;

    move-object/from16 v1, p12

    .line 33
    iput-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyExtendedPurposes:Ljava/util/List;

    move-object/from16 v1, p13

    .line 34
    iput-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mChallengePassword:Ljava/lang/String;

    const/4 v1, -0x1

    if-eq v8, v1, :cond_6

    .line 35
    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedClientIdentifierTypes()Ljava/util/List;

    move-result-object v1

    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 36
    :cond_5
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "invalid client identifier type : "

    .line 37
    invoke-static {v1, v8}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_6
    :goto_2
    iput v8, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mClientIdentifierType:I

    move-object/from16 v1, p15

    .line 40
    iput-object v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mClientIdentifiers:Ljava/util/List;

    const-string v1, ""

    .line 41
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 42
    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedSystemKeyTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    .line 43
    :cond_7
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "invalid system key type : "

    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_8
    :goto_3
    iput-object v9, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeyType:Ljava/lang/String;

    if-eqz v10, :cond_a

    .line 45
    invoke-static {}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->getSupportedSystemKeyPurposes()Ljava/util/List;

    move-result-object v1

    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    .line 46
    :cond_9
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "invalid system key purposes : "

    .line 47
    invoke-static {v1, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_a
    :goto_4
    iput v10, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeyPurposes:I

    move/from16 v1, p18

    .line 50
    iput v1, v0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeySize:I

    return-void

    .line 51
    :cond_b
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "invalid key owner : "

    .line 52
    invoke-static {v1, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_c
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "invalid key provider : "

    .line 55
    invoke-static {v1, v4}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_d
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "invalid provision type : "

    .line 58
    invoke-static {v1, p3}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_e
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v1, "invalid protocol : "

    .line 61
    invoke-static {v1, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_f
    new-instance v0, Lcom/samsung/android/knox/zt/KnoxZtException;

    const-string v2, "invalid root ca : "

    .line 64
    invoke-static {v2, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/zt/KnoxZtException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p18}, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;II)V

    return-void
.end method

.method public static getSupportedClientIdentifierTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getSupportedKeyOwners()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static getSupportedKeyProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "AndroidKeyStore"

    .line 2
    .line 3
    const-string v1, "UcmKeystore"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public static getSupportedProtocols()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "acme"

    .line 2
    .line 3
    const-string v1, "scep"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public static getSupportedProvisionTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "renew"

    .line 2
    .line 3
    const-string v1, "revoke"

    .line 4
    .line 5
    const-string v2, "provision"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static getSupportedRootCAs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "default"

    .line 2
    .line 3
    const-string v1, "loopback"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public static getSupportedSubjectAltName()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "rfc822Name"

    .line 2
    .line 3
    const-string v1, "uniformResourceIdentifier"

    .line 4
    .line 5
    const-string v2, "dNSName"

    .line 6
    .line 7
    const-string v3, "iPAddress"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public static getSupportedSystemKeyPurposes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x5

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public static getSupportedSystemKeyTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "RSA"

    .line 2
    .line 3
    const-string v1, "EC"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method


# virtual methods
.method public final convertKeyProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string p0, "AndroidKeyStore"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, "^([a-zA-Z_]\\w*)+([.][a-zA-Z_]\\w*)+:(.)*$"

    .line 11
    .line 12
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    const-string p0, "UcmKeystore"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    const-string p0, ""

    .line 22
    .line 23
    return-object p0
.end method

.method public final getChallengePassword()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mChallengePassword:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getClientIdentifierType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mClientIdentifierType:I

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
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mClientIdentifiers:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKeyAlias()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyAlias:Ljava/lang/String;

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
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyExtendedPurposes:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKeyOwner()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyOwner:I

    .line 2
    .line 3
    return p0
.end method

.method public final getKeyProvider()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mKeyProvider:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mProtocol:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getProvisionType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mProvisionType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRootCA()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mRootCA:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getServerHost()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerHost:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getServerPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getServerPort()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mServerPort:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubject()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSubject:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubjectAltName()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSubjectAltName:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSystemKeyPurposes()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeyPurposes:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSystemKeySize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeySize:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSystemKeyType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;->mSystemKeyType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final validateStringOrStringArrayList(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    instance-of v0, p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    check-cast p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v1

    .line 32
    :cond_2
    return p0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    return p0
.end method
