.class public interface abstract Lcom/samsung/android/knox/zt/service/IKnoxZtService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/service/IKnoxZtService$_Parcel;,
        Lcom/samsung/android/knox/zt/service/IKnoxZtService$Stub;,
        Lcom/samsung/android/knox/zt/service/IKnoxZtService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.zt.service.IKnoxZtService"


# virtual methods
.method public abstract getAppIdStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;[Ljava/lang/String;)I
.end method

.method public abstract getChallenge(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)[B
.end method

.method public abstract getDeviceId(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)Ljava/lang/String;
.end method

.method public abstract getDeviceIdStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I
.end method

.method public abstract getIntegrityStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I
.end method

.method public abstract getOrigin(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I
.end method

.method public abstract getRootOfTrustStatus(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I
.end method

.method public abstract getSecurityLevel(Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)I
.end method

.method public abstract loadSignals()Ljava/lang/String;
.end method

.method public abstract provisionCert(Lcom/samsung/android/knox/zt/service/ParcelableProfile;Lcom/samsung/android/knox/zt/service/IServiceCertProvisionListener;)I
.end method

.method public abstract startMonitoringDomains(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;",
            ")I"
        }
    .end annotation
.end method

.method public abstract startMonitoringFiles(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;",
            ")I"
        }
    .end annotation
.end method

.method public abstract startTracing(ILandroid/os/Bundle;Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I
.end method

.method public abstract stopMonitoringDomains()I
.end method

.method public abstract stopMonitoringFiles()I
.end method

.method public abstract stopTracing(ILcom/samsung/android/knox/zt/service/IServiceMonitoringListener;)I
.end method
