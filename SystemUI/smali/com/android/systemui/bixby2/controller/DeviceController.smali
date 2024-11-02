.class public Lcom/android/systemui/bixby2/controller/DeviceController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final ORIENTATION_LANDSCAPE:I = 0x1

.field private static final ORIENTATION_PORTRAIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DeviceController"


# instance fields
.field private mBiometricPromptWrapperBixby:Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;

.field private final mContext:Landroid/content/Context;

.field private final mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private mSignal:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/FlashlightController;Lcom/android/systemui/statusbar/policy/RotationLockController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mBiometricPromptWrapperBixby:Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mSignal:Landroid/os/CancellationSignal;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 16
    .line 17
    return-void
.end method

.method private isNeedSecureConfirm(Landroid/content/ContentResolver;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    .line 3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const-string/jumbo v0, "power_off_lock_option"

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x0

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    move p1, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p1, v0

    .line 25
    :goto_0
    if-nez p0, :cond_1

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v1, v0

    .line 31
    :goto_1
    return v1
.end method

.method private isScreenRotationSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method private isSupportPowerOffLock()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "CscFeature_SystemUI_SupportPowerOffLock"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private setOrientationMode(Landroid/content/Context;I)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->isScreenRotationSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 10
    .line 11
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 16
    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    if-ne p1, v2, :cond_1

    .line 31
    .line 32
    move p1, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    :goto_0
    const-string v1, "already_set"

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 42
    .line 43
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_2
    if-eqz p1, :cond_3

    .line 48
    .line 49
    if-ne p2, v0, :cond_3

    .line 50
    .line 51
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 52
    .line 53
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 58
    .line 59
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 64
    .line 65
    invoke-interface {p0, p2, v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedAtAngle(IZ)V

    .line 66
    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 71
    .line 72
    const-string/jumbo p1, "success"

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_4
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 80
    .line 81
    const-string p1, "SuccessAfterSetOff"

    .line 82
    .line 83
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_5
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 88
    .line 89
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object p0
.end method


# virtual methods
.method public getFlashLightIntent()Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.android.systemui.indexsearch.OPEN_DETAIL"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-class v2, Lcom/android/systemui/indexsearch/DetailPanelLaunchActivity;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "tileSpec"

    .line 19
    .line 20
    .line 21
    const-string v2, "Flashlight"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    const/high16 v2, 0x4000000

    .line 30
    .line 31
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public getFlashLightLevel()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightLevel:I

    .line 6
    .line 7
    add-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method public hasFlashLight()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mHasFlashlight:Z

    .line 6
    .line 7
    return p0
.end method

.method public isAutoRotationEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method public isFlashLightEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public restartDevice(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string/jumbo p0, "restartDevice"

    .line 2
    .line 3
    .line 4
    const-string p1, "DeviceController"

    .line 5
    .line 6
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const-string/jumbo p0, "statusbar"

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :try_start_0
    invoke-interface {p0, v0}, Lcom/android/internal/statusbar/IStatusBarService;->rebootByBixby(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    const-string/jumbo v0, "reboot RemoteException "

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    return-void
.end method

.method public setAutoRotate(Z)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    xor-int/2addr v0, v2

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 15
    .line 16
    const-string p1, "already_set"

    .line 17
    .line 18
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 23
    .line 24
    xor-int/2addr p1, v2

    .line 25
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    .line 26
    .line 27
    .line 28
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 29
    .line 30
    const-string/jumbo p1, "success"

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v2, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object p0
.end method

.method public setFlashlight(Z)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isAvailable()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 13
    .line 14
    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :cond_0
    if-nez p1, :cond_2

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    :cond_1
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 29
    .line 30
    const-string p1, "already_set"

    .line 31
    .line 32
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 37
    .line 38
    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    .line 41
    .line 42
    .line 43
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    const-string/jumbo v0, "success"

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_3
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object p0
.end method

.method public setFlashlightWithLevel(I)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->getFlashLightLevel()I

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 5
    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isAvailable()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x2

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 16
    .line 17
    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->getFlashLightLevel()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    if-ne p1, v2, :cond_0

    .line 30
    .line 31
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 32
    .line 33
    const-string p1, "already_set"

    .line 34
    .line 35
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_0
    const/4 v1, 0x1

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 43
    .line 44
    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 50
    .line 51
    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 52
    .line 53
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlightLevel(IZ)V

    .line 54
    .line 55
    .line 56
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 57
    .line 58
    const-string/jumbo p1, "success"

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_2
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object p0
.end method

.method public setLandscapeMode(Landroid/content/Context;)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/controller/DeviceController;->setOrientationMode(Landroid/content/Context;I)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public setPortraitMode(Landroid/content/Context;)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/controller/DeviceController;->setOrientationMode(Landroid/content/Context;I)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public turnOffDevice(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "turnOffDevice"

    .line 2
    .line 3
    .line 4
    const-string v1, "DeviceController"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string/jumbo v2, "statusbar"

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mSignal:Landroid/os/CancellationSignal;

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    new-instance v3, Landroid/os/CancellationSignal;

    .line 29
    .line 30
    invoke-direct {v3}, Landroid/os/CancellationSignal;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v3, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mSignal:Landroid/os/CancellationSignal;

    .line 34
    .line 35
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mBiometricPromptWrapperBixby:Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    new-instance v3, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;

    .line 40
    .line 41
    invoke-direct {v3, p1}, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iput-object v3, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mBiometricPromptWrapperBixby:Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;

    .line 45
    .line 46
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 47
    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    .line 51
    .line 52
    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    iput-object v3, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 56
    .line 57
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 58
    .line 59
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    const-string v0, "isFMMLocked = true"

    .line 70
    .line 71
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    const v0, 0x10405c9

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    const v0, 0x10405c8

    .line 85
    .line 86
    .line 87
    :goto_0
    new-instance v1, Landroid/os/Handler;

    .line 88
    .line 89
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 94
    .line 95
    .line 96
    new-instance v2, Lcom/android/systemui/bixby2/controller/DeviceController$1;

    .line 97
    .line 98
    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/bixby2/controller/DeviceController$1;-><init>(Lcom/android/systemui/bixby2/controller/DeviceController;Landroid/content/Context;I)V

    .line 99
    .line 100
    .line 101
    const-wide/16 p0, 0x0

    .line 102
    .line 103
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_4
    const-string p1, "isFMMLocked = false"

    .line 108
    .line 109
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->isSupportPowerOffLock()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/DeviceController;->isNeedSecureConfirm(Landroid/content/ContentResolver;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_5

    .line 123
    .line 124
    const-string p1, "init BiometricPrompt"

    .line 125
    .line 126
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mBiometricPromptWrapperBixby:Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;

    .line 130
    .line 131
    const-string v0, " "

    .line 132
    .line 133
    const/4 v1, 0x1

    .line 134
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->initPrompt(Ljava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mBiometricPromptWrapperBixby:Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;

    .line 138
    .line 139
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/DeviceController;->mSignal:Landroid/os/CancellationSignal;

    .line 140
    .line 141
    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->buildAndRun(Landroid/os/CancellationSignal;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_5
    if-eqz v2, :cond_6

    .line 146
    .line 147
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->shutdownByBixby()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :catch_0
    move-exception p0

    .line 152
    const-string/jumbo p1, "shutdown RemoteException "

    .line 153
    .line 154
    .line 155
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .line 157
    .line 158
    :cond_6
    :goto_1
    return-void
.end method

.method public turnOffScreen(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    const-string/jumbo p0, "power"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/os/PowerManager;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->semGoToSleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string p1, "DeviceController"

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method
