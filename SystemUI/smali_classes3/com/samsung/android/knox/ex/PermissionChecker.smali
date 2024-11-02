.class public final Lcom/samsung/android/knox/ex/PermissionChecker;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final TAG:Ljava/lang/String; = "PermissionChecker"

.field public static mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;IILjava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p3, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    :cond_1
    return v0
.end method

.method public static enforceKnoxAccessPermission(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "PermissionChecker"

    .line 4
    invoke-static {}, Lcom/samsung/android/knox/ex/PermissionChecker;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 5
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/ex/PermissionChecker;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforceKnoxV2VerifyCaller(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/knox/ex/PermissionChecker;->checkPermission(Landroid/content/Context;IILjava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 7
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    if-eqz p3, :cond_1

    .line 8
    invoke-static {p0}, Lcom/samsung/android/knox/ex/PermissionChecker;->isOrganizationOwnedDeviceWithManagedProfile(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "This API is works only with managedProfile(WPC)"

    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/knox/ex/PermissionChecker;->hasDeviceOwner(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "This API is works only with managed device(DO)"

    .line 12
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-nez v1, :cond_5

    .line 14
    invoke-static {p0, p1, p2, p4}, Lcom/samsung/android/knox/ex/PermissionChecker;->checkPermission(Landroid/content/Context;IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Application doesn\'t have this permission:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p0

    const-string p1, "Failed talking with enterprise policy service"

    .line 18
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    throw p0

    :cond_5
    :goto_1
    return-void
.end method

.method public static enforceKnoxAccessPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/ex/PermissionChecker;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/ex/PermissionChecker;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforceKnoxV2Permission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PermissionChecker"

    const-string v0, "Failed talking with enterprise policy service"

    .line 3
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 1

    .line 1
    const-string v0, "device_policy"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 8
    .line 9
    return-object p0
.end method

.method public static getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/ex/PermissionChecker;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "enterprise_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/samsung/android/knox/ex/PermissionChecker;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/ex/PermissionChecker;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 18
    .line 19
    return-object v0
.end method

.method public static getUserManager(Landroid/content/Context;)Landroid/os/UserManager;
    .locals 1

    .line 1
    const-string v0, "user"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/UserManager;

    .line 8
    .line 9
    return-object p0
.end method

.method public static hasDelegatedPermission(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/ex/PermissionChecker;->getService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/ex/PermissionChecker;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 8
    .line 9
    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->hasDelegatedPermission(Ljava/lang/String;ILjava/lang/String;)Z

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
    const-string p1, "PermissionChecker"

    .line 16
    .line 17
    const-string p2, "Failed talking with enterprise policy service"

    .line 18
    .line 19
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static hasDeviceOwner(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knox/ex/PermissionChecker;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public static isManagedProfile(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knox/ex/PermissionChecker;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/os/UserManager;->isManagedProfile()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static isOrganizationOwnedDeviceWithManagedProfile(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knox/ex/PermissionChecker;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
