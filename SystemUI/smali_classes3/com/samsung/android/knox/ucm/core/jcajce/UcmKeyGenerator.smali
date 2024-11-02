.class public final Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAlgorithm:Ljava/lang/String;

.field public mAlias:Ljava/lang/String;

.field public mIsRandomizedEncryptionRequired:Z

.field public mKeySize:I

.field public mPurposes:I

.field public mSource:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;

    .line 2
    .line 3
    const-string v0, "UcmKeyGenerator"

    .line 4
    .line 5
    sput-object v0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mSource:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mAlgorithm:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mSource:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mAlias:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->delete(Ljava/lang/String;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    new-instance v2, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    .line 43
    sget-object v3, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_RANDOMIZED_ENCRYPTION:Ljava/lang/String;

    .line 44
    .line 45
    iget-boolean v4, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mIsRandomizedEncryptionRequired:Z

    .line 46
    .line 47
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    sget-object v3, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_PURPOSE:Ljava/lang/String;

    .line 51
    .line 52
    iget v4, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mPurposes:I

    .line 53
    .line 54
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mAlgorithm:Ljava/lang/String;

    .line 58
    .line 59
    iget v4, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mKeySize:I

    .line 60
    .line 61
    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->generateKey(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    const-string v3, "booleanresponse"

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mAlgorithm:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSecretKey(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 85
    return-object p0
.end method

.method public final engineInit(ILjava/security/SecureRandom;)V
    .locals 0

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineInit(Ljava/security/SecureRandom;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    instance-of p2, p1, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz p2, :cond_0

    .line 4
    check-cast p1, Landroid/security/keystore/KeyGenParameterSpec;

    .line 5
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mKeySize:I

    .line 6
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mPurposes:I

    .line 7
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mAlias:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyGenerator;->mIsRandomizedEncryptionRequired:Z

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "params must be of type android.security.keystore.KeyGenParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
