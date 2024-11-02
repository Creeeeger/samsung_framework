.class public interface abstract Lcom/samsung/android/knox/zt/service/IServiceCertProvisionListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/service/IServiceCertProvisionListener$_Parcel;,
        Lcom/samsung/android/knox/zt/service/IServiceCertProvisionListener$Stub;,
        Lcom/samsung/android/knox/zt/service/IServiceCertProvisionListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.zt.service.IServiceCertProvisionListener"


# virtual methods
.method public abstract attestKey(Ljava/lang/String;[B)Z
.end method

.method public abstract getCertificateChain(Ljava/lang/String;)[Lcom/samsung/android/knox/zt/service/ParcelableCertificate;
.end method

.method public abstract getSignature(Ljava/lang/String;[B)[B
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onStatusChange(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Landroid/os/Bundle;)V
.end method

.method public abstract setCertificateChain(Ljava/lang/String;[Lcom/samsung/android/knox/zt/service/ParcelableCertificate;)Z
.end method
