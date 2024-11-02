.class public interface abstract Lcom/samsung/android/knox/keystore/ICertificatePolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;,
        Lcom/samsung/android/knox/keystore/ICertificatePolicy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.keystore.ICertificatePolicy"


# virtual methods
.method public abstract addPermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Z
.end method

.method public abstract addTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract addUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract allowUserRemoveCertificates(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract clearPermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract clearTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract clearUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract enableCertificateFailureNotification(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract enableCertificateValidationAtInstall(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract enableSignatureIdentityInformation(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract getIdentitiesFromSignatures(Lcom/samsung/android/knox/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;
.end method

.method public abstract getListPermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateControlInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateControlInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z
.end method

.method public abstract isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZI)Z
.end method

.method public abstract isCertificateFailureNotificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isCertificateTrustedUntrustedEnabledAsUser(I)Z
.end method

.method public abstract isCertificateValidationAtInstallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isCertificateValidationAtInstallEnabledAsUser(I)Z
.end method

.method public abstract isPrivateKeyApplicationPermitted(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract isPrivateKeyApplicationPermittedAsUser(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract isSignatureIdentityInformationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract isUserRemoveCertificatesAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isUserRemoveCertificatesAllowedAsUser(I)Z
.end method

.method public abstract notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
.end method

.method public abstract notifyCertificateRemovedAsUser(Ljava/lang/String;I)V
.end method

.method public abstract notifyUserKeystoreUnlocked(I)V
.end method

.method public abstract removePermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Z
.end method

.method public abstract removeTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract removeUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract validateCertificateAtInstall(Lcom/samsung/android/knox/keystore/CertificateInfo;)I
.end method

.method public abstract validateCertificateAtInstallAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;I)I
.end method

.method public abstract validateChainAtInstall(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract validateChainAtInstallAsUser(Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;I)I"
        }
    .end annotation
.end method
