.class public interface abstract Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener$_Parcel;,
        Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener$Stub;,
        Lcom/samsung/android/knox/zt/service/IServiceMonitoringListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.zt.service.IServiceMonitoringListener"


# virtual methods
.method public abstract checkUrlReputation(Ljava/lang/String;)I
.end method

.method public abstract onEvent(ILandroid/os/Bundle;)V
.end method

.method public abstract onEventGeneralized(ILjava/lang/String;)V
.end method

.method public abstract onEventSimplified(ILjava/lang/String;)V
.end method

.method public abstract onUnauthorizedAccessDetected(IIIJIILjava/lang/String;Ljava/lang/String;)V
.end method
