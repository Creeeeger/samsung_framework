.class public final Lcom/samsung/android/knox/cmfa/CmfaManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static CMFA_PERM:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_CODE_FAIL_PERMISSION_ERROR:I = 0x3

.field public static final RESULT_CODE_FAIL_SERVICE_UNAVAILABLE:I = 0x1

.field public static final RESULT_CODE_FAIL_WRONG_ARGUMENT:I = 0x2

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CmfaManager"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/knox/cmfa/IAuthEventListener;",
            "Lcom/samsung/android/knox/cmfa/IEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->CMFA_PERM:Ljava/util/ArrayList;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->mListeners:Ljava/util/HashMap;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final check(Lcom/samsung/android/knox/cmfa/IAuthResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter check()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string p0, "Leave check() with 3"

    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x3

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 v1, 0x1

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    new-instance v0, Lcom/samsung/android/knox/cmfa/CmfaManager$1;

    .line 34
    .line 35
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/cmfa/CmfaManager$1;-><init>(Lcom/samsung/android/knox/cmfa/CmfaManager;Lcom/samsung/android/knox/cmfa/IAuthResultListener;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v2, v0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->check(Lcom/samsung/android/knox/cmfa/IResultListener;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p0, "check getService failed!"

    .line 44
    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "Exception: "

    .line 55
    .line 56
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 63
    .line 64
    const-string p1, "Leave check() with "

    .line 65
    .line 66
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return v1
.end method

.method public final checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    const-string p0, "checkPermission cxtInfo"

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->CMFA_PERM:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/samsung/android/knox/AccessController;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, " has permission: "

    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->CMFA_PERM:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, "Exception: "

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_1
    move-exception p0

    .line 53
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, "SecurityException: "

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    const-string p1, "checkPermission: false is returned."

    .line 79
    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    const/4 p0, 0x0

    .line 84
    return p0
.end method

.method public final disable()I
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter disable()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string p0, "Leave disable() with 3"

    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x3

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 v1, 0x1

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->disable()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string p0, "disable getService failed!"

    .line 39
    .line 40
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v3, "Exception: "

    .line 50
    .line 51
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v2, v0}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    const-string v0, "Leave disable() with "

    .line 60
    .line 61
    invoke-static {v0, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return v1
.end method

.method public final enable(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->enable(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public final enable(Ljava/lang/String;Z)I
    .locals 2

    .line 2
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string v1, "Enter enable()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Leave enable() with 3"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 v1, 0x1

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/cmfa/ICmfaService;->enable(Ljava/lang/String;Z)I

    move-result v1

    goto :goto_0

    :cond_1
    const-string p0, "enable getService failed!"

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 10
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    const-string p1, "Leave enable() with "

    .line 11
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public final getFactorsToSetup()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/cmfa/AuthFactorType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter getFactorsToSetup()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 14
    .line 15
    invoke-direct {v2}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const-string p0, "Leave getFactorsToSetup() with permission error!"

    .line 25
    .line 26
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->getFactorsToSetup()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string p0, "getFactorsToSetup getService failed!"

    .line 42
    .line 43
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "Exception: "

    .line 53
    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v2, v0}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "Leave getFactorsToSetup() with "

    .line 65
    .line 66
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    return-object v1
.end method

.method public final getService()Lcom/samsung/android/knox/cmfa/ICmfaService;
    .locals 0

    .line 1
    const-string p0, "cmfa"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/cmfa/ICmfaService;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getValidActions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/cmfa/AuthActionType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter getValidActions()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 14
    .line 15
    invoke-direct {v2}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const-string p0, "Leave getValidActions() with permission error!"

    .line 25
    .line 26
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->getValidActions()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string p0, "getValidActions getService failed!"

    .line 42
    .line 43
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "Exception: "

    .line 53
    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v2, v0}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "Leave getValidActions() with "

    .line 65
    .line 66
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    return-object v1
.end method

.method public final isEnabled()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter isEnabled()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string p0, "Leave isEnabled() with permission error!"

    .line 21
    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->isEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string p0, "isEnabled getService failed!"

    .line 38
    .line 39
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "Exception: "

    .line 49
    .line 50
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p0, v1, v0}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    const-string v0, "Leave isEnabled() with "

    .line 59
    .line 60
    invoke-static {v0, v2, p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return v2
.end method

.method public final isStarted()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter isStarted()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string p0, "Leave isStarted() with permission error!"

    .line 21
    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->isStarted()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string p0, "isStarted getService failed!"

    .line 38
    .line 39
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "Exception: "

    .line 49
    .line 50
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p0, v1, v0}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    const-string v0, "Leave isStarted() with "

    .line 59
    .line 60
    invoke-static {v0, v2, p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return v2
.end method

.method public final notifyTestFactorScoreChange(Ljava/lang/String;JZ)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter notifyTestFactorScoreChange()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string p0, "Leave notifyTestFactorScoreChange() with 3"

    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x3

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 v1, 0x1

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/cmfa/ICmfaService;->notifyTestFactorScoreChange(Ljava/lang/String;JZ)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string p0, "notifyTestFactorScoreChange getService failed!"

    .line 39
    .line 40
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string p3, "Exception: "

    .line 50
    .line 51
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    const-string p1, "Leave notifyTestFactorScoreChange() with "

    .line 60
    .line 61
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return v1
.end method

.method public final registerListener(Lcom/samsung/android/knox/cmfa/IAuthEventListener;)I
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter registerListener()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string p0, "Leave registerListener() with 3"

    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x3

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 v1, 0x1

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->mListeners:Ljava/util/HashMap;

    .line 34
    .line 35
    new-instance v3, Lcom/samsung/android/knox/cmfa/CmfaManager$4;

    .line 36
    .line 37
    invoke-direct {v3, p0, p1}, Lcom/samsung/android/knox/cmfa/CmfaManager$4;-><init>(Lcom/samsung/android/knox/cmfa/CmfaManager;Lcom/samsung/android/knox/cmfa/IAuthEventListener;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->mListeners:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lcom/samsung/android/knox/cmfa/IEventListener;

    .line 50
    .line 51
    invoke-interface {v2, p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->registerListener(Lcom/samsung/android/knox/cmfa/IEventListener;)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-string p0, "registerListener getService failed!"

    .line 57
    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "Exception: "

    .line 68
    .line 69
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 76
    .line 77
    const-string p1, "Leave registerListener() with "

    .line 78
    .line 79
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return v1
.end method

.method public final start(Lcom/samsung/android/knox/cmfa/IAuthResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter start()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string p0, "Leave start() with 3"

    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x3

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 v1, 0x1

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    new-instance v0, Lcom/samsung/android/knox/cmfa/CmfaManager$2;

    .line 34
    .line 35
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/cmfa/CmfaManager$2;-><init>(Lcom/samsung/android/knox/cmfa/CmfaManager;Lcom/samsung/android/knox/cmfa/IAuthResultListener;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v2, v0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->start(Lcom/samsung/android/knox/cmfa/IResultListener;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p0, "start getService failed!"

    .line 44
    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "Exception: "

    .line 55
    .line 56
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 63
    .line 64
    const-string p1, "Leave start() with "

    .line 65
    .line 66
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return v1
.end method

.method public final stop(Lcom/samsung/android/knox/cmfa/IAuthResultListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter stop()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string p0, "Leave stop() with 3"

    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x3

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 v1, 0x1

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    new-instance v0, Lcom/samsung/android/knox/cmfa/CmfaManager$3;

    .line 34
    .line 35
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/cmfa/CmfaManager$3;-><init>(Lcom/samsung/android/knox/cmfa/CmfaManager;Lcom/samsung/android/knox/cmfa/IAuthResultListener;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v2, v0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->stop(Lcom/samsung/android/knox/cmfa/IResultListener;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p0, "stop getService failed!"

    .line 44
    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "Exception: "

    .line 55
    .line 56
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 63
    .line 64
    const-string p1, "Leave stop() with "

    .line 65
    .line 66
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return v1
.end method

.method public final unregisterListener(Lcom/samsung/android/knox/cmfa/IAuthEventListener;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Enter unregisterListener()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->checkPermission(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string p0, "Leave unregisterListener() with 3"

    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x3

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 v1, 0x1

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->getService()Lcom/samsung/android/knox/cmfa/ICmfaService;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->mListeners:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/samsung/android/knox/cmfa/IEventListener;

    .line 40
    .line 41
    invoke-interface {v2, v0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->unregisterListener(Lcom/samsung/android/knox/cmfa/IEventListener;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object p0, p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->mListeners:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-string p0, "unregisterListener getService failed!"

    .line 52
    .line 53
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    sget-object p1, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, "Exception: "

    .line 63
    .line 64
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/cmfa/CmfaManager;->TAG:Ljava/lang/String;

    .line 71
    .line 72
    const-string p1, "Leave unregisterListener() with "

    .line 73
    .line 74
    invoke-static {p1, v1, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return v1
.end method
