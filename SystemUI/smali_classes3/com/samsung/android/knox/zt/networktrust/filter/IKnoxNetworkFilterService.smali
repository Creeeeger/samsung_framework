.class public interface abstract Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService$Stub;,
        Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.zt.networktrust.filter.IKnoxNetworkFilterService"


# virtual methods
.method public abstract getAllProfiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConfig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInstanceValidation()I
.end method

.method public abstract getKnoxNwFilterHttpProxyPort(ILjava/lang/String;)I
.end method

.method public abstract getPkgNameForTcpV4Port(I)Ljava/lang/String;
.end method

.method public abstract getPkgNameForTcpV6Port(I)Ljava/lang/String;
.end method

.method public abstract getProfileStatus(Ljava/lang/String;)I
.end method

.method public abstract getRegisteredListeners(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRegisteredPackageList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
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

.method public abstract getTcpV4PortInfo(I)Ljava/lang/String;
.end method

.method public abstract getTcpV6PortInfo(I)Ljava/lang/String;
.end method

.method public abstract getUdpV6PortInfo(I)Ljava/lang/String;
.end method

.method public abstract pause(Ljava/lang/String;)I
.end method

.method public abstract registerApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method public abstract registerListeners(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setConfig(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract start(Ljava/lang/String;)I
.end method

.method public abstract stop(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract unregisterApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
.end method
