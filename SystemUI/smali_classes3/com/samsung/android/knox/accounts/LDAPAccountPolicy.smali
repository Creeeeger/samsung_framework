.class public final Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ACTION_CREATE_LDAPACCOUNT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CREATE_LDAPACCOUNT_INTERNAL"

.field public static final ACTION_LDAP_CREATE_ACCT_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT"

.field public static final ACTION_LDAP_CREATE_ACCT_RESULT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT_INTERNAL"

.field public static final ERROR_LDAP_ALREADY_EXISTS:I = -0x1

.field public static final ERROR_LDAP_CONNECTION:I = -0x7

.field public static final ERROR_LDAP_DOES_NOT_EXIST:I = -0x2

.field public static final ERROR_LDAP_INVALID_CREDENTIALS:I = -0x3

.field public static final ERROR_LDAP_NONE:I = 0x0

.field public static final ERROR_LDAP_SERVER_BUSY:I = -0x4

.field public static final ERROR_LDAP_SERVER_DOWN:I = -0x5

.field public static final ERROR_LDAP_TIMEOUT:I = -0x6

.field public static final ERROR_LDAP_UNKNOWN:I = -0x8

.field public static final EXTRA_LDAP_ACCT_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LDAP_ACCT_ID"

.field public static final EXTRA_LDAP_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LDAP_RESULT"

.field public static final EXTRA_LDAP_USER_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LDAP_USER_ID"

.field public static TAG:Ljava/lang/String; = "LDAPAccountPolicy"


# instance fields
.field public lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

.field public final mContext:Landroid/content/Context;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final createLDAPAccount(Lcom/samsung/android/knox/accounts/LDAPAccount;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "LDAPAccountPolicy.createLDAPAccount"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;->createLDAPAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/LDAPAccount;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p0

    .line 23
    sget-object p1, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "Failed talking to LDAP Settings service "

    .line 26
    .line 27
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final deleteLDAPAccount(J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "LDAPAccountPolicy.deleteLDAPAccount"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;->deleteLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Z

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
    sget-object p1, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed talking to LDAP Settings service "

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

.method public final getAllLDAPAccounts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/LDAPAccount;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;->getAllLDAPAccounts(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

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
    sget-object v0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "Failed talking to LDAP Settings service "

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

.method public final getLDAPAccount(J)Lcom/samsung/android/knox/accounts/LDAPAccount;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "LDAPAccountPolicy.getLDAPAccount"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;->getLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/LDAPAccount;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    sget-object p1, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "Failed talking to LDAP Settings service "

    .line 27
    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ldap_account_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    .line 18
    .line 19
    return-object p0
.end method
