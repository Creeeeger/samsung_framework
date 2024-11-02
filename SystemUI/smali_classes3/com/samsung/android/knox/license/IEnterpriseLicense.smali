.class public interface abstract Lcom/samsung/android/knox/license/IEnterpriseLicense;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;,
        Lcom/samsung/android/knox/license/IEnterpriseLicense$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.license.IEnterpriseLicense"


# virtual methods
.method public abstract activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
.end method

.method public abstract activateKnoxLicenseForUMC(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract activateLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
.end method

.method public abstract activateLicenseForUMC(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deActivateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
.end method

.method public abstract deleteAllApiCallData()Z
.end method

.method public abstract deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;)Z
.end method

.method public abstract deleteApiCallDataByAdmin(Ljava/lang/String;)Z
.end method

.method public abstract deleteLicense(Ljava/lang/String;)Z
.end method

.method public abstract deleteLicenseByAdmin(Ljava/lang/String;)Z
.end method

.method public abstract getAllLicenseActivationsInfos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/license/ActivationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;
.end method

.method public abstract getApiCallData(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getApiCallDataByAdmin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstanceId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLicenseActivationInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/license/ActivationInfo;
.end method

.method public abstract getLicenseInfo(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
.end method

.method public abstract getLicenseInfoByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
.end method

.method public abstract getRightsObject(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
.end method

.method public abstract getRightsObjectByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
.end method

.method public abstract isEulaBypassAllowed(Ljava/lang/String;)Z
.end method

.method public abstract isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
.end method

.method public abstract notifyKlmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
.end method

.method public abstract processKnoxLicenseResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;IILjava/lang/String;Lcom/samsung/android/knox/license/RightsObject;I)Z
.end method

.method public abstract processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract resetLicense(Ljava/lang/String;)Z
.end method

.method public abstract resetLicenseByAdmin(Ljava/lang/String;)Z
.end method

.method public abstract updateAdminPermissions()V
.end method
