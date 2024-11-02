.class public interface abstract Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService$Stub;,
        Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.net.nap.serviceprovider.INetworkAnalyticsService"


# virtual methods
.method public abstract onActivateProfile(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract onDataAvailable(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDeactivateProfile(Ljava/lang/String;I)I
.end method
