.class public interface abstract Lcom/samsung/android/knox/IMiscPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/IMiscPolicy$Stub;,
        Lcom/samsung/android/knox/IMiscPolicy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.IMiscPolicy"


# virtual methods
.method public abstract allowNFCStateChange(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract changeLockScreenString(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
.end method

.method public abstract clearAllGlobalProxy()V
.end method

.method public abstract clearGlobalProxyEnableEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)I
.end method

.method public abstract clearGlobalProxyEnableEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)I
.end method

.method public abstract clearNotificationDialog()V
.end method

.method public abstract getAppUidBrowserList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppUidFromSocketPortNumber(I)Ljava/lang/String;
.end method

.method public abstract getCredentialsFails(Ljava/lang/String;)I
.end method

.method public abstract getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
.end method

.method public abstract getGlobalProxyEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
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

.method public abstract getGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/ProxyProperties;
.end method

.method public abstract getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;
.end method

.method public abstract getProxyForSsid(Ljava/lang/String;)Lcom/samsung/android/knox/net/ProxyProperties;
.end method

.method public abstract getSystemActiveFont(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
.end method

.method public abstract getSystemActiveFontSize(Lcom/samsung/android/knox/ContextInfo;)F
.end method

.method public abstract getSystemFontSizes(Lcom/samsung/android/knox/ContextInfo;)[F
.end method

.method public abstract getSystemFonts(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;
.end method

.method public abstract isGlobalProxyAllowed()Z
.end method

.method public abstract isNFCStarted()Z
.end method

.method public abstract isNFCStateChangeAllowed()Z
.end method

.method public abstract refreshCredentialsDialogFails()V
.end method

.method public abstract retrieveExternalProxy()Lcom/samsung/android/knox/net/ProxyProperties;
.end method

.method public abstract retrieveProxyCredentials(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract setCredentialsFails(Ljava/lang/String;I)V
.end method

.method public abstract setGlobalProxyEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract setGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I
.end method

.method public abstract setProxyCredentials(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V
.end method

.method public abstract setRingerBytes(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract setSystemActiveFont(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setSystemActiveFontSize(Lcom/samsung/android/knox/ContextInfo;F)Z
.end method

.method public abstract showCredentialsDialogNotification(Ljava/lang/String;)V
.end method

.method public abstract startNFC(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method
