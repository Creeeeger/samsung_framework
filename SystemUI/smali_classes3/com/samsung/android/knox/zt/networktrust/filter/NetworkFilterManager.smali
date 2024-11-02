.class public final Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ACTION_NOTIFY_NETWORK_FILTER_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NOTIFY_NETWORK_FILTER_STATUS"

.field public static final ERROR_INTERNAL:I = -0x8

.field public static final ERROR_INVALID_CALLER:I = -0x7

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NULL_PARAMETER:I = -0xa

.field public static final ERROR_PACKAGE_ALREADY_REGISTERED:I = -0x9

.field public static final ERROR_PACKAGE_NOT_INSTALLED:I = -0x6

.field public static final ERROR_PACKAGE_NOT_REGISTERED:I = -0x2

.field public static final ERROR_PACKAGE_SIGNATURE_MISMATCH:I = -0x3

.field public static final ERROR_PROFILE_LIMIT_REACHED:I = -0x4

.field public static final ERROR_PROFILE_NOT_FOUND:I = -0x5

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final EXTRA_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.STATUS"

.field public static final STATUS_PROFILE_PAUSED:I = 0x2

.field public static final STATUS_PROFILE_RUNNING:I = 0x1

.field public static final STATUS_PROFILE_STOPPED:I = 0x3

.field public static final TAG:Ljava/lang/String; = "knoxNwFilter-NetworkFilterManager"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final getRegisteredPackageList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "NetworkFilterManager.getRegisteredPackageList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->getRegisteredPackageList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    const-string p0, "knoxNwFilter-NetworkFilterManager"

    .line 24
    .line 25
    const-string v0, "Failed to getRegisteredPackageList"

    .line 26
    .line 27
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "knox_nwFilterMgr_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 18
    .line 19
    return-object p0
.end method

.method public final registerNetworkFilter(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 4

    .line 1
    const-string v0, "knoxNwFilter-NetworkFilterManager"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 4
    .line 5
    const-string v2, "NetworkFilterManager.registerNetworkFilter"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 20
    .line 21
    invoke-interface {v1, v3, p1, p2, p3}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->registerApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 22
    .line 23
    .line 24
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    const-string p1, "Failed to registerNetworkFilter"

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    if-nez v2, :cond_0

    .line 32
    .line 33
    new-instance p1, Landroid/content/Intent;

    .line 34
    .line 35
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    const-string p3, "com.android.vpndialogs"

    .line 47
    .line 48
    const-string v1, "com.android.vpndialogs.KnoxVpnPPDialog"

    .line 49
    .line 50
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const/high16 p3, 0x50800000

    .line 54
    .line 55
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    iget-object p3, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    if-eqz p3, :cond_0

    .line 61
    .line 62
    const-string p3, "startActivityAsUser  KnoxVpnPPDialog userId = "

    .line 63
    .line 64
    invoke-static {p3, p2, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    new-instance p3, Landroid/os/UserHandle;

    .line 70
    .line 71
    invoke-direct {p3, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    return v2
.end method

.method public final unregisterNetworkFilter(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "NetworkFilterManager.unregisterNetworkFilter"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->getService()Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mNwFilterMgrService:Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/zt/networktrust/filter/NetworkFilterManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->unregisterApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    const-string p0, "knoxNwFilter-NetworkFilterManager"

    .line 24
    .line 25
    const-string p1, "Failed to unregisterNetworkFilter"

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    return p0
.end method
