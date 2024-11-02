.class public final Lcom/samsung/android/knox/browser/BrowserPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static TAG:Ljava/lang/String; = "BrowserPolicy"


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "browser_policy"

    .line 5
    .line 6
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/samsung/android/knox/browser/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final addWebBookmarkBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "BrowserPolicy.addWebBookmarkBitmap"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->addWebBookmarkBitmap(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

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
    sget-object p1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed addWebBookmarkBitmap"

    .line 27
    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final addWebBookmarkByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "BrowserPolicy.addWebBookmarkByteBuffer"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->addWebBookmarkByteBuffer(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;[B)Z

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
    sget-object p1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed addWebBookmarkByteBuffer"

    .line 27
    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final clearHttpProxy()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "BrowserPolicy.clearHttpProxy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->clearHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object v0, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "Failed talking with application policy"

    .line 27
    .line 28
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final deleteWebBookmark(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "BrowserPolicy.deleteWebBookmark"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->deleteWebBookmark(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;)Z

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
    sget-object p1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed deleteWebBookmark"

    .line 27
    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final getAutoFillSetting()Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getBrowserSettingStatus(I)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final getBrowserSettingStatus(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with application policy"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final getCookiesSetting()Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getBrowserSettingStatus(I)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final getForceFraudWarningSetting()Z
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getBrowserSettingStatus(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getHttpProxy()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->getHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with application policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getJavaScriptSetting()Z
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getBrowserSettingStatus(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getPopupsSetting()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getBrowserSettingStatus(I)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "browser_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/browser/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 18
    .line 19
    return-object p0
.end method

.method public final setAutoFillSetting(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "BrowserPolicy.setAutoFillSetting"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->setBrowserSettingStatus(ZI)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final setBrowserSettingStatus(ZI)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->setBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string p2, "Failed talking with application policy"

    .line 20
    .line 21
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final setCookiesSetting(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "BrowserPolicy.setCookiesSetting"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->setBrowserSettingStatus(ZI)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final setForceFraudWarningSetting(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "BrowserPolicy.setForceFraudWarningSetting"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->setBrowserSettingStatus(ZI)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final setHttpProxy(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "BrowserPolicy.setHttpProxy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->setHttpProxy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

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
    sget-object p1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with application policy"

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

.method public final setJavaScriptSetting(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "BrowserPolicy.setJavaScriptSetting"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x10

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->setBrowserSettingStatus(ZI)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final setPopupsSetting(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "BrowserPolicy.setPopupsSetting"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->setBrowserSettingStatus(ZI)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
