.class public interface abstract Lcom/samsung/android/knox/location/ILocationPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/location/ILocationPolicy$Stub;,
        Lcom/samsung/android/knox/location/ILocationPolicy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.location.ILocationPolicy"


# virtual methods
.method public abstract getAllLocationProviders(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIndividualLocationProvider(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
.end method

.method public abstract isGPSOn(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isLocationProviderBlocked(Ljava/lang/String;)Z
.end method

.method public abstract isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z
.end method

.method public abstract setGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract setIndividualLocationProvider(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
.end method

.method public abstract startGPS(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method
