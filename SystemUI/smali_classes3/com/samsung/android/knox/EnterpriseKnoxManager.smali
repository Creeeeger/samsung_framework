.class public final Lcom/samsung/android/knox/EnterpriseKnoxManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    }
.end annotation


# static fields
.field public static final DEVICE_KNOXIFIED:I = 0x1

.field public static final DEVICE_NOT_KNOXIFIED:I = 0x0

.field public static final KNOX_ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "knox_enterprise_policy"

.field public static final KNOX_VPN_V1_ENABLED:Z

.field public static final KNOX_VPN_V2_ENABLED:Z

.field public static TAG:Ljava/lang/String; = "EnterpriseKnoxManager"

.field public static gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

.field public static mParentInstance:Lcom/samsung/android/knox/EnterpriseKnoxManager;

.field public static final mSync:Ljava/lang/Object;


# instance fields
.field public mAdvancedRestrictionPolicy:Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

.field public mAdvancedRestrictionPolicyCreated:Z

.field public mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

.field public mAuditLogPolicyCreated:Z

.field public mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

.field public mCertificatePolicyCreated:Z

.field public mClientCertificateManagerPolicy:Lcom/samsung/android/knox/keystore/ClientCertificateManager;

.field public mClientCertificateManagerPolicyCreated:Z

.field public final mContext:Landroid/content/Context;

.field public final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

.field public mEnterpriseBillingPolicyCreated:Z

.field public mKnoxContainerMgrMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/container/KnoxContainerManager;",
            ">;>;"
        }
    .end annotation
.end field

.field public mKnoxEnterpriseLicenseManager:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

.field public mKnoxEnterpriseLicenseManagerCreated:Z

.field public mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

.field public mNetworkAnalyticsCreated:Z

.field public mNwFilterMgr:Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;

.field public mNwFilterMgrPolicyCreated:Z

.field public mThreatDefensePolicy:Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;

.field public mThreatDefensePolicyCreated:Z

.field public mTimaKeystorePolicy:Lcom/samsung/android/knox/keystore/TimaKeystore;

.field public mTimaKeystorePolicyCreated:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    .line 7
    .line 8
    const-string v0, "ro.config.knox"

    .line 9
    .line 10
    const-string v1, "0"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "1"

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sput-boolean v2, Lcom/samsung/android/knox/EnterpriseKnoxManager;->KNOX_VPN_V1_ENABLED:Z

    .line 23
    .line 24
    const-string v2, "v30"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    sput-boolean v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->KNOX_VPN_V2_ENABLED:Z

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicyCreated:Z

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalyticsCreated:Z

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicyCreated:Z

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManagerCreated:Z

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicyCreated:Z

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicyCreated:Z

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicyCreated:Z

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicyCreated:Z

    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mThreatDefensePolicyCreated:Z

    .line 11
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNwFilterMgrPolicyCreated:Z

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    .line 13
    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicyCreated:Z

    .line 17
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalyticsCreated:Z

    .line 18
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicyCreated:Z

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManagerCreated:Z

    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicyCreated:Z

    .line 21
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicyCreated:Z

    .line 22
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicyCreated:Z

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicyCreated:Z

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mThreatDefensePolicyCreated:Z

    .line 25
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNwFilterMgrPolicyCreated:Z

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    .line 27
    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 28
    iput-object p2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    return-object v0
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 1

    .line 2
    new-instance v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDeviceKnoxifiedState()I
    .locals 2

    .line 1
    const-string v0, "ro.config.knoxtakeover"

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "1"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public static getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    sput-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 4
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 4

    .line 11
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_1

    .line 13
    iget-object v1, v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 14
    :cond_0
    new-instance v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 15
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 2

    .line 6
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    sput-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 9
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 2

    .line 17
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 19
    iget-object v1, v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 20
    :cond_0
    new-instance v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 21
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->gEKM:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getParentInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/AccessController;->enforceWpcod()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mSync:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mParentInstance:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    iget-object v1, v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    :cond_1
    new-instance v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 23
    .line 24
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x1

    .line 31
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(IZ)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2, p0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    sput-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mParentInstance:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 38
    .line 39
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mParentInstance:Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-object p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method


# virtual methods
.method public final getAdvancedRestrictionPolicy()Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getAdvancedRestrictionPolicy(Landroid/content/Context;)Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    move-result-object p0

    return-object p0
.end method

.method public final getAdvancedRestrictionPolicy(Landroid/content/Context;)Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;
    .locals 3

    .line 1
    const-class v0, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicyCreated:Z

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicy:Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicyCreated:Z

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAdvancedRestrictionPolicy:Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getAuditLogPolicy()Lcom/samsung/android/knox/log/AuditLog;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getAuditLogPolicy(Landroid/content/Context;)Lcom/samsung/android/knox/log/AuditLog;

    move-result-object p0

    return-object p0
.end method

.method public final getAuditLogPolicy(Landroid/content/Context;)Lcom/samsung/android/knox/log/AuditLog;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    const-class v0, Lcom/samsung/android/knox/log/AuditLog;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicyCreated:Z

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v1, p1}, Lcom/samsung/android/knox/log/AuditLog;->createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/log/AuditLog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicyCreated:Z

    .line 5
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getCertificatePolicy()Lcom/samsung/android/knox/keystore/CertificatePolicy;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "getCertificatePolicy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-class v0, Lcom/samsung/android/knox/keystore/CertificatePolicy;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicyCreated:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/keystore/CertificatePolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicyCreated:Z

    .line 26
    .line 27
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    .line 29
    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p0
.end method

.method public final getClientCertificateManagerPolicy()Lcom/samsung/android/knox/keystore/ClientCertificateManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "getClientCertificateManagerPolicy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-class v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicyCreated:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicy:Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicyCreated:Z

    .line 26
    .line 27
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mClientCertificateManagerPolicy:Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    .line 29
    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEnhancedAttestationPolicy()Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "getEnhancedAttestationPolicy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/integrity/EnhancedAttestationPolicy;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getEnterpriseBillingPolicy()Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "getEnterpriseBillingPolicy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-class v0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicyCreated:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    .line 23
    .line 24
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicyCreated:Z

    .line 29
    .line 30
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    .line 32
    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0
.end method

.method public final getEnterpriseCertEnrollPolicy(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string p1, "getEnterpriseCertEnrollPolicy"

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final getGenericVpnPolicy(Ljava/lang/String;I)Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "getGenericVpnPolicy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    new-instance v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 13
    .line 14
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    .line 16
    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;-><init>(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getInstance(Landroid/content/Context;Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    sget-object p1, Lcom/samsung/android/knox/EnterpriseKnoxManager;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "Exception at getGenericVpnPolicy"

    .line 30
    .line 31
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    :goto_0
    return-object p0
.end method

.method public final declared-synchronized getKnoxContainerManager(I)Lcom/samsung/android/knox/container/KnoxContainerManager;
    .locals 2

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getKnoxContainerManager"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getKnoxContainerManager"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 3
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;
    .locals 3

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getKnoxContainerManager"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 8
    iget v0, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v1, "persona"

    .line 9
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    .line 11
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 13
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v1, v2, :cond_0

    .line 14
    iget-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/knox/container/KnoxContainerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 15
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_1
    iget v1, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-gtz v1, :cond_2

    .line 17
    monitor-exit p0

    return-object v2

    .line 18
    :cond_2
    :try_start_2
    new-instance v1, Lcom/samsung/android/knox/container/KnoxContainerManager;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/knox/container/KnoxContainerManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :try_start_3
    iget-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxContainerMgrMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Landroid/util/Pair;

    iget p2, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v2, p2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v2, v1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 22
    :goto_0
    :try_start_4
    sget-object p2, Lcom/samsung/android/knox/EnterpriseKnoxManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed at KnoxContainerManager API getKnoxContainerManager "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    .line 23
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getKnoxContainerManager(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;
    .locals 2

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getKnoxContainerManager"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getKnoxEnterpriseLicenseManager()Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getKnoxEnterpriseLicenseManager"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxEnterpriseLicenseManager(Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    move-result-object p0

    return-object p0
.end method

.method public final getKnoxEnterpriseLicenseManager(Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getKnoxEnterpriseLicenseManager"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    const-class v0, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManagerCreated:Z

    if-nez v1, :cond_1

    .line 4
    invoke-static {p1}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManager:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManagerCreated:Z

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mKnoxEnterpriseLicenseManager:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getKnoxPushService()Lcom/samsung/android/knox/kpm/KnoxPushService;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "getKnoxPushService"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kpm/KnoxPushService;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getNetworkAnalytics()Lcom/samsung/android/knox/net/nap/NetworkAnalytics;
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getNetworkAnalytics"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getNetworkAnalytics(Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    move-result-object p0

    return-object p0
.end method

.method public final getNetworkAnalytics(Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getNetworkAnalytics"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2
    const-class v0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalyticsCreated:Z

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v1, p1}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalyticsCreated:Z

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getNetworkFilterManagerPolicy()Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "getNetworkFilterManagerPolicy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-class v0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNwFilterMgrPolicyCreated:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v1, v2}, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNwFilterMgr:Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNwFilterMgrPolicyCreated:Z

    .line 27
    .line 28
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mNwFilterMgr:Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;

    .line 30
    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0
.end method

.method public final getThreatDefensePolicy()Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "getThreatDefensePolicy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-class v0, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mThreatDefensePolicyCreated:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mThreatDefensePolicy:Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mThreatDefensePolicyCreated:Z

    .line 28
    .line 29
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mThreatDefensePolicy:Lcom/samsung/android/knox/threatdefense/ThreatDefensePolicy;

    .line 31
    .line 32
    return-object p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0
.end method

.method public final getTimaKeystorePolicy()Lcom/samsung/android/knox/keystore/TimaKeystore;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "getTimaKeystorePolicy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-class v0, Lcom/samsung/android/knox/keystore/TimaKeystore;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicyCreated:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/samsung/android/knox/keystore/TimaKeystore;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/keystore/TimaKeystore;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicy:Lcom/samsung/android/knox/keystore/TimaKeystore;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicyCreated:Z

    .line 26
    .line 27
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseKnoxManager;->mTimaKeystorePolicy:Lcom/samsung/android/knox/keystore/TimaKeystore;

    .line 29
    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p0
.end method

.method public final getVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
