.class public final Lcom/samsung/android/knox/accounts/EmailPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ACTION_INTERNAL_MDM_ACCOUNT_DELETE_RESULT:Ljava/lang/String; = "edm.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

.field public static final ACTION_INTERNAL_MDM_ACCOUNT_SETUP_RESULT:Ljava/lang/String; = "edm.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

.field public static final ACTION_MDM_ACCOUNT_DELETE_RESULT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.MDM_ACCOUNT_DELETE_RESULT_INTERNAL"

.field public static final ACTION_MDM_ACCOUNT_SETUP_RESULT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.MDM_ACCOUNT_SETUP_RESULT_INTERNAL"

.field public static final ACTION_UNLOCK_CREDENTIAL_INTERNAL:Ljava/lang/String; = "com.android.credentials.UNLOCK"

.field public static final EMAIL_FAIL_BIND_PASSWORD:I = 0x3e9

.field public static TAG:Ljava/lang/String; = "EmailPolicy"


# instance fields
.field public final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final allowAccountAddition(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "EmailPolicy.allowAccountAddition"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->allowAccountAddition(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with email account policy"

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

.method public final allowEmailSettingsChange(ZJ)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "EmailPolicy.allowEmailSettingsChange"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->allowEmailSettingsChange(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

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
    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed talking with email policy"

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

.method public final allowPopImapEmail(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "EmailPolicy.allowPopImapEmail"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->allowPopImapEmail(Lcom/samsung/android/knox/ContextInfo;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "Failed talking with email account policy"

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

.method public final getAllowEmailForwarding(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->getAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

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
    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with email policy"

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

.method public final getAllowHtmlEmail(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

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
    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Failed talking with email policy"

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

.method public final getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "email_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/accounts/IEmailPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 18
    .line 19
    return-object p0
.end method

.method public final isAccountAdditionAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->isAccountAdditionAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object v0, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with email account policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isEmailNotificationsEnabled(J)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z

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
    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string p2, "Failed talking with email policy"

    .line 20
    .line 21
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isEmailSettingsChangeAllowed(J)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

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
    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string p2, "Failed talking with email policy"

    .line 20
    .line 21
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isPopImapEmailAllowed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->isPopImapEmailAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

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
    sget-object v0, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking with email account policy"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final setAllowEmailForwarding(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "EmailPolicy.setAllowEmailForwarding"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->setAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed talking with email policy"

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

.method public final setAllowHtmlEmail(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "EmailPolicy.setAllowHTMLEmail"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->setAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

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
    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed talking with email policy"

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

.method public final setEmailNotificationsState(ZJ)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "EmailPolicy.setEmailNotificationsState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->setEmailNotificationsState(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

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
    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed talking with email policy"

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
