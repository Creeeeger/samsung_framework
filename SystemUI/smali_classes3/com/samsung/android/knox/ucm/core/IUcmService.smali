.class public interface abstract Lcom/samsung/android/knox/ucm/core/IUcmService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;,
        Lcom/samsung/android/knox/ucm/core/IUcmService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.ucm.core.IUcmService"


# virtual methods
.method public abstract APDUCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract changePin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;
.end method

.method public abstract configureKeyguardSettings(ILjava/lang/String;)Z
.end method

.method public abstract configureODESettings(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)I
.end method

.method public abstract containsAlias(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract createSecureChannel(ILandroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ApduMessage;
.end method

.method public abstract decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
.end method

.method public abstract delegateDeleteFile(Ljava/lang/String;)Z
.end method

.method public abstract delegateGetTaProfile()Landroid/os/Bundle;
.end method

.method public abstract delegateLoadTa(Z)Landroid/os/Bundle;
.end method

.method public abstract delegateProcessTACommand(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract delegateReadFile(Ljava/lang/String;)[B
.end method

.method public abstract delegateSaveFile(Ljava/lang/String;[B)Z
.end method

.method public abstract delegateUnloadTa()Landroid/os/Bundle;
.end method

.method public abstract delegateWrapSessionKey([B)Landroid/os/Bundle;
.end method

.method public abstract delete(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract deleteCertificate(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract destroySecureChannel()I
.end method

.method public abstract encrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
.end method

.method public abstract generateDek(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
.end method

.method public abstract generateKey(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract generateKeyPairInternal(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract generateKeyguardPassword(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract generateSecureRandom(Ljava/lang/String;I[B)Landroid/os/Bundle;
.end method

.method public abstract generateWrappedDek(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
.end method

.method public abstract getAdminConfigureBundleFromCs(IILjava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getCertificateChain(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
.end method

.method public abstract getCredentialStorageProperty(ILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
.end method

.method public abstract getDek(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
.end method

.method public abstract getDekForVold(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
.end method

.method public abstract getDekForVoldInternalKey(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
.end method

.method public abstract getDetailErrorMessage(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getInfo(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getKeyType(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getKeyguardPinCurrentRetryCount(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getKeyguardPinMaximumLength(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getKeyguardPinMaximumRetryCount(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getKeyguardPinMinimumLength(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getKeyguardStorageForCurrentUser(I)Ljava/lang/String;
.end method

.method public abstract getODEConfigurationForVold(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
.end method

.method public abstract getODESettingsConfiguration()Landroid/os/Bundle;
.end method

.method public abstract getOdeKey(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
.end method

.method public abstract getStatus(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract grantKeyChainAccess(Ljava/lang/String;I)Z
.end method

.method public abstract importKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract initKeyguardPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract installCertificate(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract installCertificateIfSupported(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract isKeyChainGranted(Ljava/lang/String;I)Z
.end method

.method public abstract isUserCertificatesExistInUCS()Z
.end method

.method public abstract listAllProviders()[Landroid/os/Bundle;
.end method

.method public abstract listProviders()[Landroid/os/Bundle;
.end method

.method public abstract mac(Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
.end method

.method public abstract notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract notifyPluginResult(Landroid/os/Bundle;)V
.end method

.method public abstract notifyVoldComplete(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
.end method

.method public abstract processMessage(I[B)Lcom/samsung/android/knox/ucm/core/ApduMessage;
.end method

.method public abstract registerSystemUICallback(Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;)V
.end method

.method public abstract removeEnforcedLockTypeNotification(I)V
.end method

.method public abstract resetNonMdmCertificates()V
.end method

.method public abstract resetUid(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract resetUser(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract saw(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract sawInternal(Ljava/lang/String;II)Landroid/os/Bundle;
.end method

.method public abstract setAdminConfigureBundleForCs(IILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
.end method

.method public abstract setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract setCredentialStorageProperty(ILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
.end method

.method public abstract setKeyguardPinMaximumLength(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract setKeyguardPinMaximumRetryCount(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract setKeyguardPinMinimumLength(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract setState(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract showEnforcedLockTypeNotification(ILjava/lang/String;)V
.end method

.method public abstract sign(Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
.end method

.method public abstract unwrapDek(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
.end method

.method public abstract updateAgentList()V
.end method

.method public abstract verifyPin(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method
