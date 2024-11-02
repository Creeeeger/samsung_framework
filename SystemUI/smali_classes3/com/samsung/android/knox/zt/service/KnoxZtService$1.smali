.class public final Lcom/samsung/android/knox/zt/service/KnoxZtService$1;
.super Lcom/samsung/android/knox/zt/service/IServiceCertProvisionListener$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/zt/service/KnoxZtService;->provisionCert(Lcom/samsung/android/knox/zt/devicetrust/cert/CertProvisionProfile;Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

.field public final synthetic val$listener:Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/zt/service/KnoxZtService;Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;->val$listener:Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/knox/zt/service/IServiceCertProvisionListener$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final attestKey(Ljava/lang/String;[B)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mKeyAttestationHelper:Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->attestKey(Ljava/lang/String;[BZ)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final getCertificateChain(Ljava/lang/String;)[Lcom/samsung/android/knox/zt/service/ParcelableCertificate;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mKeyAttestationHelper:Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getParcelableCertificates([Ljava/security/cert/Certificate;)[Lcom/samsung/android/knox/zt/service/ParcelableCertificate;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final getSignature(Ljava/lang/String;[B)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mKeyAttestationHelper:Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->sign(Ljava/lang/String;[B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;->val$listener:Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;->onError(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onStatusChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;->val$listener:Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;->onStatusChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSuccess(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;->val$listener:Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/devicetrust/cert/ICertProvisionListener;->onSuccess(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setCertificateChain(Ljava/lang/String;[Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService$1;->this$0:Lcom/samsung/android/knox/zt/service/KnoxZtService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/knox/zt/service/KnoxZtService;->mKeyAttestationHelper:Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/zt/service/KnoxZtService;->getCertificates([Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)[Ljava/security/cert/Certificate;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->setCertificateChain(Ljava/lang/String;[Ljava/security/cert/Certificate;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
