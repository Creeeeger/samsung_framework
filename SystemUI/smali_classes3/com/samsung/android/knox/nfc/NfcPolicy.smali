.class public final Lcom/samsung/android/knox/nfc/NfcPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static TAG:Ljava/lang/String; = "NfcPolicy"


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/IMiscPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final allowNFCStateChange(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "NfcPolicy.allowNFCStateChange"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/nfc/NfcPolicy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/IMiscPolicy;->allowNFCStateChange(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/nfc/NfcPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with MiscPolicy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final getService()Lcom/samsung/android/knox/IMiscPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "misc_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 18
    .line 19
    return-object p0
.end method

.method public final isNFCStarted()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/nfc/NfcPolicy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/IMiscPolicy;->isNFCStarted()Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    sget-object v0, Lcom/samsung/android/knox/nfc/NfcPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "Failed talking with MiscPolicy"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final isNFCStateChangeAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/nfc/NfcPolicy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/samsung/android/knox/IMiscPolicy;->isNFCStateChangeAllowed()Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    sget-object v0, Lcom/samsung/android/knox/nfc/NfcPolicy;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "Failed talking with MiscPolicy"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final startNFC(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "NfcPolicy.startNFC"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/nfc/NfcPolicy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/IMiscPolicy;->startNFC(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/nfc/NfcPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with MiscPolicy"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method
