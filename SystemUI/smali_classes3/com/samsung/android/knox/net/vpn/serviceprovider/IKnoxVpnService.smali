.class public interface abstract Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService$Stub;,
        Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.net.vpn.serviceprovider.IKnoxVpnService"


# virtual methods
.method public abstract createConnection(Ljava/lang/String;)I
.end method

.method public abstract getAllConnections()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCACertificate(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;
.end method

.method public abstract getConnection(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getErrorString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getState(Ljava/lang/String;)I
.end method

.method public abstract getUserCertificate(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;
.end method

.method public abstract getVpnModeOfOperation(Ljava/lang/String;)I
.end method

.method public abstract removeConnection(Ljava/lang/String;)I
.end method

.method public abstract setAutoRetryOnConnectionError(Ljava/lang/String;Z)Z
.end method

.method public abstract setCACertificate(Ljava/lang/String;[B)Z
.end method

.method public abstract setServerCertValidationUserAcceptanceCriteria(Ljava/lang/String;ZLjava/util/List;I)Z
.end method

.method public abstract setUserCertificate(Ljava/lang/String;[BLjava/lang/String;)Z
.end method

.method public abstract setVpnModeOfOperation(Ljava/lang/String;I)I
.end method

.method public abstract startConnection(Ljava/lang/String;)I
.end method

.method public abstract stopConnection(Ljava/lang/String;)I
.end method
