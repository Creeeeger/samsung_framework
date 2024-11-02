.class public interface abstract Lcom/samsung/android/knox/ISecurityPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ISecurityPolicy$Stub;,
        Lcom/samsung/android/knox/ISecurityPolicy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.ISecurityPolicy"


# virtual methods
.method public abstract addPackagesToCertificateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract deleteCertificateFromKeystore(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateInfo;I)Z
.end method

.method public abstract deleteCertificateFromUserKeystore(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateInfo;I)Z
.end method

.method public abstract enableRebootBanner(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract enableRebootBannerWithText(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z
.end method

.method public abstract formatSelective(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getCertificatesFromKeystore(Lcom/samsung/android/knox/ContextInfo;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCertificatesFromUserKeystore(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCredentialStorageStatus(Lcom/samsung/android/knox/ContextInfo;)I
.end method

.method public abstract getDeviceLastAccessDate(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
.end method

.method public abstract getPackagesFromCertificateWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRebootBannerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
.end method

.method public abstract getRequireDeviceEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z
.end method

.method public abstract getRequireStorageCardEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z
.end method

.method public abstract getSystemCertificates(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract installCertificateToKeystore(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;IZ)I
.end method

.method public abstract installCertificateToUserKeystore(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract installCertificateWithType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[B)V
.end method

.method public abstract installCertificatesFromSdCard(Lcom/samsung/android/knox/ContextInfo;)V
.end method

.method public abstract isDodBannerVisible(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isDodBannerVisibleAsUser(I)Z
.end method

.method public abstract isExternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isInternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isRebootBannerEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract onKeyguardLaunched()V
.end method

.method public abstract removeAccountsByType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
.end method

.method public abstract removeAccountsWithoutAdminPrivilege(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
.end method

.method public abstract removePackagesFromCertificateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract resetCredentialStorage(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract setDeviceLastAccessDate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
.end method

.method public abstract setDodBannerVisibleStatus(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract setExternalStorageEncryption(Lcom/samsung/android/knox/ContextInfo;Z)V
.end method

.method public abstract setInternalStorageEncryption(Lcom/samsung/android/knox/ContextInfo;Z)V
.end method

.method public abstract setRequireDeviceEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)V
.end method

.method public abstract setRequireStorageCardEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)V
.end method

.method public abstract wipeDevice(Lcom/samsung/android/knox/ContextInfo;I)Z
.end method
