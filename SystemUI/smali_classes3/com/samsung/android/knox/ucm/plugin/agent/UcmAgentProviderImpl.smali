.class public Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;
.super Ljava/security/Provider;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentMacSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSpiProperty;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyGeneratorSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$AbstractProviderService;
    }
.end annotation


# static fields
.field public static final CIPHER:Ljava/lang/String; = "Cipher"

.field public static final CIPHER_RSA_ECB_NOPADDING:Ljava/lang/String; = "RSA/ECB/NoPadding"

.field public static final CIPHER_RSA_ECB_PKCS1PADDING:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field public static final KEYPAIRGENERATOR:Ljava/lang/String; = "KeyPairGenerator"

.field public static final KEYPAIRGENERATOR_RSA:Ljava/lang/String; = "RSA"

.field public static final KEYSTORE:Ljava/lang/String; = "KeyStore"

.field public static final KEYSTORE_TYPE:Ljava/lang/String; = "KNOX"

.field public static KEY_EXTRA_BLOCK_MODES:Ljava/lang/String; = "extra_block_modes"

.field public static KEY_EXTRA_DIGESTS:Ljava/lang/String; = "extra_digests"

.field public static KEY_EXTRA_EC_CURVE_NAME:Ljava/lang/String; = "extra_ec_curve_name"

.field public static KEY_EXTRA_PURPOSE:Ljava/lang/String; = "extra_purpose"

.field public static KEY_EXTRA_RANDOMIZED_ENCRYPTION:Ljava/lang/String; = "extra_randomized_encryption"

.field public static KEY_EXTRA_SIGNATURE_PADDINGS:Ljava/lang/String; = "extra_signature_paddings"

.field private static final PROVIDER_DESC:Ljava/lang/String; = "Samsung Extension Keystore Provider Impl"

.field private static final PROVIDER_NAME:Ljava/lang/String; = "AgentProviderImpl"

.field private static final PROVIDER_VERSION:D = 1.0

.field public static final SECURERANDOM:Ljava/lang/String; = "SecureRandom"

.field public static final SECURERANDOM_SHA1PRNG:Ljava/lang/String; = "SHA1PRNG"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    .line 3
    const-string v2, "Samsung Extension Keystore Provider Impl"

    .line 4
    .line 5
    const-string v3, "AgentProviderImpl"

    .line 6
    .line 7
    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public putServiceImpl(Ljava/security/Provider$Service;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public removeServiceImpl(Ljava/security/Provider$Service;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/security/Provider;->removeService(Ljava/security/Provider$Service;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method
