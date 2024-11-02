.class public final Lcom/samsung/android/knox/net/firewall/Firewall;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;,
        Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;,
        Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;,
        Lcom/samsung/android/knox/net/firewall/Firewall$Direction;,
        Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    }
.end annotation


# static fields
.field public static final ACTION_BLOCKED_DOMAIN:Ljava/lang/String; = "com.samsung.android.knox.intent.action.BLOCKED_DOMAIN"

.field public static final ADD_OPERATION:I = 0x1

.field public static final EXTRA_BLOCKED_DOMAIN_ISFOREGROUND:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

.field public static final EXTRA_BLOCKED_DOMAIN_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_PACKAGENAME"

.field public static final EXTRA_BLOCKED_DOMAIN_TIMESTAMP:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_TIMESTAMP"

.field public static final EXTRA_BLOCKED_DOMAIN_UID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_UID"

.field public static final EXTRA_BLOCKED_DOMAIN_URL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_URL"

.field public static final FIREWALL_ALLOW_RULE:I = 0x1

.field public static final FIREWALL_ALL_DOMAIN_RULES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIREWALL_ALL_PACKAGES:Ljava/lang/String; = "*"

.field public static final FIREWALL_ALL_RULES:I = 0xf

.field public static final FIREWALL_DENY_RULE:I = 0x2

.field public static final FIREWALL_REDIRECT_EXCEPTION_RULE:I = 0x8

.field public static final FIREWALL_REDIRECT_RULE:I = 0x4

.field public static final MAX_LIST_SIZE_IN_BYTES:I

.field public static final REMOVE_OPERATION:I = -0x1

.field public static TAG:Ljava/lang/String;

.field public static final mRand:Ljava/util/Random;


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/net/firewall/IFirewall;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Lcom/samsung/android/knox/net/firewall/Firewall;->MAX_LIST_SIZE_IN_BYTES:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->FIREWALL_ALL_DOMAIN_RULES:Ljava/util/List;

    .line 9
    .line 10
    const-string v0, "FirewallSDK"

    .line 11
    .line 12
    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/util/Random;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->mRand:Ljava/util/Random;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/net/firewall/Firewall;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static generateToken()I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->mRand:Ljava/util/Random;

    .line 2
    .line 3
    const v1, 0x7ffffffe

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method


# virtual methods
.method public final addDomainFilterRules(Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "Firewall.addDomainFilterRules"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "addDomainFilterRules() - rules.size = "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v2, "0"

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/net/firewall/Firewall;->evaluateAndProcessRules(Ljava/util/List;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public final addRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "Firewall.addRules"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "addRules() - FirewallRule[].length = "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    array-length v2, p1

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v2, "0"

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 44
    .line 45
    const/16 v1, 0xe

    .line 46
    .line 47
    if-lt v0, v1, :cond_1

    .line 48
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 52
    .line 53
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->addRules(Lcom/samsung/android/knox/ContextInfo;[Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 54
    .line 55
    .line 56
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-object p0

    .line 58
    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    const-string p1, "addRules() - RemoteException at addRules method."

    .line 61
    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 67
    .line 68
    const-string p1, "Firewall.addRules() : This device doesn\'t support this API."

    .line 69
    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 74
    return-object p0
.end method

.method public final clearRules(I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "Firewall.clearRules"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "clearRules(bitmask = "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ")"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 43
    .line 44
    const/16 v1, 0xe

    .line 45
    .line 46
    if-lt v0, v1, :cond_0

    .line 47
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 51
    .line 52
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->clearRules(Lcom/samsung/android/knox/ContextInfo;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 53
    .line 54
    .line 55
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-object p0

    .line 57
    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    const-string p1, "clearRules() - RemoteException at clearRules method."

    .line 60
    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string p1, "Firewall.clearRules() : This device doesn\'t support this API."

    .line 68
    .line 69
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method

.method public final enableDomainFilterOnIptables(Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "Firewall.enableDomainFilterOnIptables"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 15
    .line 16
    const/16 v1, 0x19

    .line 17
    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 23
    .line 24
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->enableDomainFilterOnIptables(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object p0

    .line 29
    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string p1, "RemoteException at enableDomainFilterOnIptables method."

    .line 32
    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public final enableDomainFilterReport(Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "enableDomainFilterReport"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    const-string v1, "Firewall.enableDomainFilterReport"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 22
    .line 23
    const/16 v1, 0x10

    .line 24
    .line 25
    if-lt v0, v1, :cond_0

    .line 26
    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 30
    .line 31
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->enableDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 32
    .line 33
    .line 34
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-object p0

    .line 36
    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    const-string p1, "enableDomainFilterReport() - RemoteException at enableDomainFilterReport method."

    .line 39
    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method

.method public final enableFirewall(Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "Firewall.enableFirewall"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "enableFirewall(enabled = "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ")"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 43
    .line 44
    const/16 v1, 0xe

    .line 45
    .line 46
    if-lt v0, v1, :cond_0

    .line 47
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 51
    .line 52
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->enableFirewall(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 53
    .line 54
    .line 55
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-object p0

    .line 57
    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    const-string p1, "enableFirewall() - RemoteException at enableFirewall method."

    .line 60
    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string p1, "Firewall.enableFirewall() : This device doesn\'t support this API."

    .line 68
    .line 69
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method

.method public final evaluateAndProcessRules(Ljava/util/List;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;I)[",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string p1, "evaluateAndProcessRules() - Error in getService()"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 17
    .line 18
    const/16 v2, 0x10

    .line 19
    .line 20
    if-lt v0, v2, :cond_f

    .line 21
    .line 22
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    const/16 v3, 0x11

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    if-ge v0, v3, :cond_3

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    new-instance v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>()V

    .line 37
    .line 38
    .line 39
    move v3, v4

    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-ge v3, v5, :cond_3

    .line 45
    .line 46
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 51
    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    iget-object v6, v5, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns1:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    iget-object v5, v5, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns2:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_2

    .line 69
    .line 70
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const/4 v0, -0x1

    .line 84
    if-ne p2, v0, :cond_4

    .line 85
    .line 86
    if-nez p1, :cond_4

    .line 87
    .line 88
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 91
    .line 92
    invoke-interface {p1, p0}, Lcom/samsung/android/knox/net/firewall/IFirewall;->clearAllDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    goto/16 :goto_3

    .line 97
    .line 98
    :cond_4
    const/4 v3, 0x1

    .line 99
    if-eqz p1, :cond_e

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_5

    .line 106
    .line 107
    goto/16 :goto_5

    .line 108
    .line 109
    :cond_5
    invoke-static {}, Lcom/samsung/android/knox/net/firewall/Firewall;->generateToken()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    new-instance v6, Ljava/util/HashMap;

    .line 114
    .line 115
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 116
    .line 117
    .line 118
    new-instance v7, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_6

    .line 132
    .line 133
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    check-cast v8, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 138
    .line 139
    invoke-virtual {p0, v8}, Lcom/samsung/android/knox/net/firewall/Firewall;->pageableRule(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)Ljava/util/Map;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_6
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    move v6, v4

    .line 156
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    if-eqz v8, :cond_8

    .line 161
    .line 162
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    check-cast v8, Ljava/util/Map$Entry;

    .line 167
    .line 168
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    check-cast v9, Ljava/lang/Integer;

    .line 173
    .line 174
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    add-int/2addr v6, v9

    .line 179
    sget v10, Lcom/samsung/android/knox/net/firewall/Firewall;->MAX_LIST_SIZE_IN_BYTES:I

    .line 180
    .line 181
    if-gt v6, v10, :cond_7

    .line 182
    .line 183
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    check-cast v8, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 188
    .line 189
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_7
    sget-object v6, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 194
    .line 195
    new-instance v10, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v11, "evaluateAndProcessRules() SDK tokenValue: "

    .line 201
    .line 202
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v11

    .line 209
    check-cast v11, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 210
    .line 211
    iget v11, v11, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mIpcToken:I

    .line 212
    .line 213
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v10

    .line 224
    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    iget-object v6, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 228
    .line 229
    iget-object v10, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 230
    .line 231
    invoke-interface {v6, v10, v7, v5}, Lcom/samsung/android/knox/net/firewall/IFirewall;->populateDomainFilterBrokenRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)V

    .line 232
    .line 233
    .line 234
    sget-object v6, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 235
    .line 236
    new-instance v10, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    const-string v11, "populateDomainFilterBrokenRules - rulePageable = "

    .line 242
    .line 243
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 257
    .line 258
    .line 259
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    check-cast v6, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 264
    .line 265
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    add-int/lit8 v9, v9, 0x0

    .line 269
    .line 270
    move v6, v9

    .line 271
    goto :goto_2

    .line 272
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    if-nez p1, :cond_9

    .line 277
    .line 278
    iget-object p1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 279
    .line 280
    iget-object v6, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 281
    .line 282
    invoke-interface {p1, v6, v7, v5}, Lcom/samsung/android/knox/net/firewall/IFirewall;->populateDomainFilterBrokenRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)V

    .line 283
    .line 284
    .line 285
    sget-object p1, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 286
    .line 287
    new-instance v6, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    const-string v8, "populateDomainFilterBrokenRules() - rulePageable = "

    .line 293
    .line 294
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    invoke-static {p1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    :cond_9
    if-ne p2, v3, :cond_a

    .line 308
    .line 309
    sget-object p1, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 310
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v3, "populateDomainFilterBrokenRules() - Add Operation = "

    .line 317
    .line 318
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    iget-object p1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 332
    .line 333
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 334
    .line 335
    invoke-interface {p1, p0, v5}, Lcom/samsung/android/knox/net/firewall/IFirewall;->addDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 336
    .line 337
    .line 338
    move-result-object p0

    .line 339
    goto :goto_3

    .line 340
    :cond_a
    if-ne p2, v0, :cond_d

    .line 341
    .line 342
    sget-object p1, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 343
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    const-string v3, "populateDomainFilterBrokenRules() - Remove Operation = "

    .line 350
    .line 351
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p2

    .line 361
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .line 363
    .line 364
    iget-object p1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 365
    .line 366
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 367
    .line 368
    invoke-interface {p1, p0, v5}, Lcom/samsung/android/knox/net/firewall/IFirewall;->removeDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    :goto_3
    if-eqz p0, :cond_c

    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    if-nez p1, :cond_c

    .line 379
    .line 380
    :goto_4
    array-length p1, p0

    .line 381
    if-ge v4, p1, :cond_c

    .line 382
    .line 383
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result p1

    .line 391
    if-eqz p1, :cond_b

    .line 392
    .line 393
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 394
    .line 395
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 396
    .line 397
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 398
    .line 399
    const-string v3, "DNS(s) not yet supported."

    .line 400
    .line 401
    invoke-direct {p1, p2, v0, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    aput-object p1, p0, v4

    .line 405
    .line 406
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 407
    .line 408
    goto :goto_4

    .line 409
    :cond_c
    return-object p0

    .line 410
    :cond_d
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 411
    .line 412
    new-instance p1, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .line 416
    .line 417
    const-string v0, "populateDomainFilterBrokenRules() - Invalid Operation = "

    .line 418
    .line 419
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .line 431
    .line 432
    return-object v1

    .line 433
    :cond_e
    :goto_5
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 434
    .line 435
    const-string p1, "evaluateAndProcessRules() - No rule specified"

    .line 436
    .line 437
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .line 439
    .line 440
    new-array p0, v3, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 441
    .line 442
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 443
    .line 444
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 445
    .line 446
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 447
    .line 448
    const-string v2, "No rule was specified."

    .line 449
    .line 450
    invoke-direct {p1, p2, v0, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    aput-object p1, p0, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .line 455
    return-object p0

    .line 456
    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 457
    .line 458
    const-string p1, "evaluateAndProcessRules() - RemoteException at evaluateAndProcessRules method"

    .line 459
    .line 460
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .line 462
    .line 463
    goto :goto_6

    .line 464
    :cond_f
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 465
    .line 466
    const-string p1, "evaluateAndProcessRules() - Not supported"

    .line 467
    .line 468
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .line 470
    .line 471
    :goto_6
    return-object v1
.end method

.method public final getDomainFilterReport(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterReport;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "getDomainFilterReport"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 15
    .line 16
    const/16 v1, 0x10

    .line 17
    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 23
    .line 24
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->getDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string p1, "getDomainFilterReport() - RemoteException at getDomainFilterReport method."

    .line 32
    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    :goto_0
    return-object p0
.end method

.method public final getDomainFilterRules(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 9
    .line 10
    const/16 v2, 0x10

    .line 11
    .line 12
    if-lt v0, v2, :cond_4

    .line 13
    .line 14
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/net/firewall/Firewall;->generateToken()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    .line 22
    .line 23
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 26
    .line 27
    invoke-interface {v1, v3, p1, v0}, Lcom/samsung/android/knox/net/firewall/IFirewall;->getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v3, 0x0

    .line 50
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 55
    .line 56
    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/knox/net/firewall/Firewall;->updateLastDomainRule(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    add-int/lit8 v4, v4, -0x1

    .line 67
    .line 68
    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    .line 80
    .line 81
    :cond_3
    :goto_1
    if-nez v1, :cond_0

    .line 82
    .line 83
    move-object v1, v2

    .line 84
    goto :goto_2

    .line 85
    :catch_0
    move-object v1, v2

    .line 86
    :catch_1
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 87
    .line 88
    const-string p1, "getDomainFilterRules() - RemoteException at getDomainFilterRules method."

    .line 89
    .line 90
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_2
    return-object v1
.end method

.method public final getRules(ILcom/samsung/android/knox/net/firewall/FirewallRule$Status;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 9
    .line 10
    const/16 v2, 0xe

    .line 11
    .line 12
    if-lt v0, v2, :cond_1

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/net/firewall/IFirewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 32
    .line 33
    invoke-interface {p2, p0, p1, v1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-object p0

    .line 38
    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string p1, "getRules() - RemoteException at getRules method."

    .line 41
    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string p1, "Firewall.getRules() : This device doesn\'t support this API."

    .line 49
    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final getService()Lcom/samsung/android/knox/net/firewall/IFirewall;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "firewall"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/net/firewall/IFirewall$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 18
    .line 19
    return-object p0
.end method

.method public final isDomainFilterOnIptablesEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "Firewall.isDomainFilterOnIptablesEnabled"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 15
    .line 16
    const/16 v1, 0x19

    .line 17
    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 23
    .line 24
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/firewall/IFirewall;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return p0

    .line 29
    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string v0, "isDomainFilterOnIptablesEnabled() - RemoteException at isDomainFilterOnIptablesEnabled method."

    .line 32
    .line 33
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final isDomainFilterReportEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "isDomainFilterReportEnabled"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    const-string v1, "Firewall.isDomainFilterReportEnabled"

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 23
    .line 24
    const/16 v1, 0x10

    .line 25
    .line 26
    if-lt v0, v1, :cond_0

    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 31
    .line 32
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/firewall/IFirewall;->isDomainFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 33
    .line 34
    .line 35
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return p0

    .line 37
    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string v0, "isDomainFilterReportEnabled() - RemoteException at isDomainFilterReportEnabled method."

    .line 40
    .line 41
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public final isFirewallEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 8
    .line 9
    const/16 v1, 0xe

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 16
    .line 17
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/firewall/IFirewall;->isFirewallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return p0

    .line 22
    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "isFirewallEnabled() - RemoteException at isFirewallEnabled method."

    .line 25
    .line 26
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "Firewall.isFirewallEnabled() : This device doesn\'t support this API."

    .line 33
    .line 34
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public final listIptablesRules()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "Firewall.listIptablesRules"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 15
    .line 16
    const/16 v1, 0xe

    .line 17
    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 23
    .line 24
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/firewall/IFirewall;->listIptablesRules(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object p0

    .line 29
    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string v0, "listIptablesRules() - RemoteException at listIptablesRules method."

    .line 32
    .line 33
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string v0, "Firewall.listIptablesRules() : This device doesn\'t support this API."

    .line 40
    .line 41
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method public final pageableRule(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)Ljava/util/Map;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ")",
            "Ljava/util/Map<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v4, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v2, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    new-instance v2, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 32
    .line 33
    iget-object v5, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 34
    .line 35
    iget-object v6, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    .line 36
    .line 37
    iget-object v7, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    .line 38
    .line 39
    iget-object v8, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns1:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v9, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns2:Ljava/lang/String;

    .line 42
    .line 43
    move-object v4, v2

    .line 44
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/net/firewall/Firewall;->generateToken()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    new-instance v10, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v11, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v4, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 70
    .line 71
    iget-object v5, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns1:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    array-length v5, v5

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    move v5, v3

    .line 84
    :goto_0
    iget-object v6, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns2:Ljava/lang/String;

    .line 85
    .line 86
    if-eqz v6, :cond_2

    .line 87
    .line 88
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 89
    .line 90
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    array-length v6, v6

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    move v6, v3

    .line 97
    :goto_1
    add-int/2addr v5, v6

    .line 98
    add-int/lit8 v5, v5, 0x8

    .line 99
    .line 100
    if-eqz v4, :cond_5

    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    if-eqz v6, :cond_3

    .line 111
    .line 112
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 113
    .line 114
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    array-length v6, v6

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    move v6, v3

    .line 121
    :goto_2
    if-eqz v4, :cond_4

    .line 122
    .line 123
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 124
    .line 125
    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    array-length v4, v4

    .line 130
    goto :goto_3

    .line 131
    :cond_4
    move v4, v3

    .line 132
    :goto_3
    add-int/2addr v5, v6

    .line 133
    add-int/2addr v5, v4

    .line 134
    :cond_5
    move v12, v5

    .line 135
    iget-object v13, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    .line 136
    .line 137
    iget-object v14, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    .line 138
    .line 139
    if-nez v14, :cond_6

    .line 140
    .line 141
    if-eqz v13, :cond_8

    .line 142
    .line 143
    :cond_6
    if-nez v14, :cond_7

    .line 144
    .line 145
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_8

    .line 150
    .line 151
    :cond_7
    if-nez v13, :cond_9

    .line 152
    .line 153
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-nez v4, :cond_9

    .line 158
    .line 159
    :cond_8
    new-instance v3, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 160
    .line 161
    iget-object v5, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 162
    .line 163
    iget-object v8, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns1:Ljava/lang/String;

    .line 164
    .line 165
    iget-object v9, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns2:Ljava/lang/String;

    .line 166
    .line 167
    move-object v4, v3

    .line 168
    move-object v6, v13

    .line 169
    move-object v7, v14

    .line 170
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iput v2, v3, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mIpcToken:I

    .line 174
    .line 175
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    return-object v1

    .line 183
    :cond_9
    const/16 v16, 0x1

    .line 184
    .line 185
    if-eqz v13, :cond_c

    .line 186
    .line 187
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v17

    .line 191
    move/from16 v18, v12

    .line 192
    .line 193
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_d

    .line 198
    .line 199
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    move-object v9, v4

    .line 204
    check-cast v9, Ljava/lang/String;

    .line 205
    .line 206
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 207
    .line 208
    invoke-virtual {v9, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    array-length v8, v4

    .line 213
    add-int v4, v18, v8

    .line 214
    .line 215
    sget v5, Lcom/samsung/android/knox/net/firewall/Firewall;->MAX_LIST_SIZE_IN_BYTES:I

    .line 216
    .line 217
    if-gt v4, v5, :cond_a

    .line 218
    .line 219
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move/from16 v18, v4

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_a
    new-instance v3, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 226
    .line 227
    iget-object v5, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 228
    .line 229
    if-eqz v14, :cond_b

    .line 230
    .line 231
    move-object v7, v11

    .line 232
    goto :goto_5

    .line 233
    :cond_b
    const/4 v7, 0x0

    .line 234
    :goto_5
    iget-object v6, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns1:Ljava/lang/String;

    .line 235
    .line 236
    iget-object v4, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns2:Ljava/lang/String;

    .line 237
    .line 238
    move-object/from16 v19, v4

    .line 239
    .line 240
    move-object v4, v3

    .line 241
    move-object/from16 v20, v6

    .line 242
    .line 243
    move-object v6, v10

    .line 244
    move/from16 v21, v8

    .line 245
    .line 246
    move-object/from16 v8, v20

    .line 247
    .line 248
    move-object v15, v9

    .line 249
    move-object/from16 v9, v19

    .line 250
    .line 251
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iput v2, v3, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mIpcToken:I

    .line 255
    .line 256
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    add-int v8, v12, v21

    .line 270
    .line 271
    move/from16 v18, v8

    .line 272
    .line 273
    move/from16 v3, v16

    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_c
    move/from16 v18, v12

    .line 277
    .line 278
    :cond_d
    if-eqz v14, :cond_10

    .line 279
    .line 280
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 281
    .line 282
    .line 283
    move-result-object v14

    .line 284
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    if-eqz v4, :cond_10

    .line 289
    .line 290
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    move-object v15, v4

    .line 295
    check-cast v15, Ljava/lang/String;

    .line 296
    .line 297
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 298
    .line 299
    invoke-virtual {v15, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    array-length v9, v4

    .line 304
    add-int v4, v18, v9

    .line 305
    .line 306
    sget v5, Lcom/samsung/android/knox/net/firewall/Firewall;->MAX_LIST_SIZE_IN_BYTES:I

    .line 307
    .line 308
    if-gt v4, v5, :cond_e

    .line 309
    .line 310
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move/from16 v18, v4

    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_e
    new-instance v3, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 317
    .line 318
    iget-object v5, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 319
    .line 320
    if-eqz v13, :cond_f

    .line 321
    .line 322
    move-object v6, v10

    .line 323
    goto :goto_7

    .line 324
    :cond_f
    const/4 v6, 0x0

    .line 325
    :goto_7
    iget-object v8, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns1:Ljava/lang/String;

    .line 326
    .line 327
    iget-object v7, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns2:Ljava/lang/String;

    .line 328
    .line 329
    move-object v4, v3

    .line 330
    move-object/from16 v17, v7

    .line 331
    .line 332
    move-object v7, v11

    .line 333
    move/from16 v19, v9

    .line 334
    .line 335
    move-object/from16 v9, v17

    .line 336
    .line 337
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iput v2, v3, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mIpcToken:I

    .line 341
    .line 342
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    add-int v9, v12, v19

    .line 359
    .line 360
    move/from16 v18, v9

    .line 361
    .line 362
    move/from16 v3, v16

    .line 363
    .line 364
    goto :goto_6

    .line 365
    :cond_10
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 366
    .line 367
    .line 368
    move-result v4

    .line 369
    if-eqz v4, :cond_11

    .line 370
    .line 371
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 372
    .line 373
    .line 374
    move-result v4

    .line 375
    if-nez v4, :cond_13

    .line 376
    .line 377
    :cond_11
    new-instance v12, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 378
    .line 379
    iget-object v5, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 380
    .line 381
    iget-object v8, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns1:Ljava/lang/String;

    .line 382
    .line 383
    iget-object v9, v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDns2:Ljava/lang/String;

    .line 384
    .line 385
    move-object v4, v12

    .line 386
    move-object v6, v10

    .line 387
    move-object v7, v11

    .line 388
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    if-eqz v3, :cond_12

    .line 392
    .line 393
    iput v2, v12, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mIpcToken:I

    .line 394
    .line 395
    :cond_12
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {v1, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    :cond_13
    return-object v1
.end method

.method public final removeDomainFilterRules(Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "Firewall.removeDomainFilterRules"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "removeDomainFilterRules() - rules.size = "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v2, "0"

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/4 v0, -0x1

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/net/firewall/Firewall;->evaluateAndProcessRules(Ljava/util/List;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public final removeRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "Firewall.removeRules"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "removeRules() - FirewallRule[].length = "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    array-length v2, p1

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v2, "0"

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/Firewall;->getService()Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 44
    .line 45
    const/16 v1, 0xe

    .line 46
    .line 47
    if-lt v0, v1, :cond_1

    .line 48
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mService:Lcom/samsung/android/knox/net/firewall/IFirewall;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/Firewall;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 52
    .line 53
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/net/firewall/IFirewall;->removeRules(Lcom/samsung/android/knox/ContextInfo;[Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 54
    .line 55
    .line 56
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-object p0

    .line 58
    :catch_0
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    const-string p1, "removeRules() - RemoteException at removeRules method."

    .line 61
    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall;->TAG:Ljava/lang/String;

    .line 67
    .line 68
    const-string p1, "Firewall.removeRules() : This device doesn\'t support this API."

    .line 69
    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 74
    return-object p0
.end method

.method public final updateLastDomainRule(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/lit8 p0, p0, -0x1

    .line 6
    .line 7
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 12
    .line 13
    iget-object p2, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget-object v0, p1, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAppIdentity:Lcom/samsung/android/knox/AppIdentity;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0

    .line 33
    :cond_0
    iget-object p2, p1, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mDenyDomains:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setDenyDomains(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object p1, p1, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_2

    .line 60
    .line 61
    iget-object p2, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->mAllowDomains:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setAllowDomains(Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    return-object p0
.end method
