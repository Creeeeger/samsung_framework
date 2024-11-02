.class public interface abstract Lcom/samsung/android/knox/seams/ISEAMS;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/seams/ISEAMS$Stub;,
        Lcom/samsung/android/knox/seams/ISEAMS$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.seams.ISEAMS"


# virtual methods
.method public abstract activateDomain(Z)I
.end method

.method public abstract addAppToContainer(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public abstract changeAppDomain(Ljava/lang/String;Z)I
.end method

.method public abstract createSEContainer()I
.end method

.method public abstract deActivateDomain()I
.end method

.method public abstract getAMSLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
.end method

.method public abstract getAMSLogLevel(Lcom/samsung/android/knox/ContextInfo;)I
.end method

.method public abstract getAMSMode(Lcom/samsung/android/knox/ContextInfo;)I
.end method

.method public abstract getAVCLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
.end method

.method public abstract getActivationStatus()I
.end method

.method public abstract getDataType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getDomain(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getPackageNamesFromSEContainer(II)[Ljava/lang/String;
.end method

.method public abstract getSEAMSLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
.end method

.method public abstract getSEContainerIDs()[I
.end method

.method public abstract getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
.end method

.method public abstract getSELinuxMode(Lcom/samsung/android/knox/ContextInfo;)I
.end method

.method public abstract getSepolicyVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
.end method

.method public abstract getSignatureFromCertificate([B)Ljava/lang/String;
.end method

.method public abstract getSignatureFromPackage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasKnoxContainers()I
.end method

.method public abstract hasSEContainers()I
.end method

.method public abstract isAuthorized(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract isSEAndroidLogDumpStateInclude(Lcom/samsung/android/knox/ContextInfo;)I
.end method

.method public abstract isSEPolicyAutoUpdateEnabled(Lcom/samsung/android/knox/ContextInfo;)I
.end method

.method public abstract loadContainerSetting(Ljava/lang/String;)I
.end method

.method public abstract relabelAppDir(Ljava/lang/String;)I
.end method

.method public abstract relabelData(Lcom/samsung/android/knox/ContextInfo;)I
.end method

.method public abstract removeAppFromContainer(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public abstract removeSEContainer(I)I
.end method

.method public abstract setAMSLogLevel(Lcom/samsung/android/knox/ContextInfo;I)I
.end method

.method public abstract setSEAndroidLogDumpStateInclude(Lcom/samsung/android/knox/ContextInfo;Z)I
.end method
