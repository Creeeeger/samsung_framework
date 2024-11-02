.class public final Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/knox/zt/service/IKeyAttestationHelper;


# static fields
.field public static final TAG:Ljava/lang/String; = "KeyAttestationHelper"


# instance fields
.field public final mAttestationUtils:Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->mAttestationUtils:Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final attestKey(Ljava/lang/String;[BZ)Z
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;-><init>(Ljava/lang/String;[B)V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;->setVerifiableIntegrity(Z)Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;->setPackageName(Ljava/lang/String;)Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p3}, Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;->setDeviceAttestation(Z)Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    iget-object p3, p0, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->mAttestationUtils:Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;->build()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p3, v0}, Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;->attestDevice(Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->mAttestationUtils:Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;->build()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p3, v0}, Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;->attestKey(Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->mAttestationUtils:Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;

    .line 49
    .line 50
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;->storeCertificateChain(Ljava/lang/String;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    return p2

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    new-instance p1, Ljava/lang/RuntimeException;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method public final getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 1

    .line 1
    :try_start_0
    const-string p0, "AndroidKeyStore"

    .line 2
    .line 3
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/lang/RuntimeException;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public final setCertificateChain(Ljava/lang/String;[Ljava/security/cert/Certificate;)Z
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p2

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget-object v3, p2, v2

    .line 11
    .line 12
    new-instance v4, Ljava/io/StringWriter;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v5, "CERTIFICATE"

    .line 22
    .line 23
    invoke-virtual {p0, v3, v5, v4}, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->writeToPem([BLjava/lang/String;Ljava/io/Writer;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->mAttestationUtils:Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;

    .line 43
    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;->storeCertificateChain(Ljava/lang/String;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    new-instance p1, Ljava/lang/RuntimeException;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public final sign(Ljava/lang/String;[B)[B
    .locals 1

    .line 1
    :try_start_0
    const-string p0, "AndroidKeyStore"

    .line 2
    .line 3
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/security/PrivateKey;

    .line 16
    .line 17
    instance-of p1, p0, Ljava/security/interfaces/ECKey;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const-string p1, "SHA256withECDSA"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string p1, "SHA256withRSA"

    .line 25
    .line 26
    :goto_0
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/security/Signature;->update([B)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/security/Signature;->sign()[B

    .line 37
    .line 38
    .line 39
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    return-object p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    new-instance p1, Ljava/lang/RuntimeException;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public final writeToPem([BLjava/lang/String;Ljava/io/Writer;)V
    .locals 2

    .line 1
    const-string p0, "\n"

    .line 2
    .line 3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/16 v0, 0x40

    .line 10
    .line 11
    invoke-static {v0, p0}, Ljava/util/Base64;->getMimeEncoder(I[B)Ljava/util/Base64$Encoder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "-----BEGIN "

    .line 16
    .line 17
    invoke-virtual {p3, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "-----\n"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/util/Base64$Encoder;->encode([B)[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sget-object p1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 37
    .line 38
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 42
    .line 43
    .line 44
    const-string p0, "\n-----END "

    .line 45
    .line 46
    invoke-virtual {p3, p0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 55
    .line 56
    .line 57
    return-void
.end method
