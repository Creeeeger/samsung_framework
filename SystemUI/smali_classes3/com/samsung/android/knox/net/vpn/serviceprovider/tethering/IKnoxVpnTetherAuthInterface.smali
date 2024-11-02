.class public interface abstract Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface$Stub;,
        Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.net.vpn.serviceprovider.tethering.IKnoxVpnTetherAuthInterface"


# virtual methods
.method public abstract getAuthenticationStatus()I
.end method

.method public abstract setCACertificate([BLjava/lang/String;)I
.end method

.method public abstract setCaAlias(Ljava/lang/String;)Z
.end method

.method public abstract setCaptivePortalAlias(Ljava/lang/String;)Z
.end method

.method public abstract setCaptivePortalCertificate([BLjava/lang/String;)I
.end method

.method public abstract setClientAuthDetails(Landroid/os/Bundle;)V
.end method

.method public abstract setHtmlResponsePage(Ljava/lang/String;)V
.end method

.method public abstract setHtmlSignInPage(Ljava/lang/String;)V
.end method

.method public abstract setServerAlias(Ljava/lang/String;)Z
.end method

.method public abstract setServerCertificate([BLjava/lang/String;)I
.end method

.method public abstract startAuthenticationProcess(Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IAuthenticationStatus;)Landroid/os/Bundle;
.end method

.method public abstract stopAuthenticationProcess()I
.end method
