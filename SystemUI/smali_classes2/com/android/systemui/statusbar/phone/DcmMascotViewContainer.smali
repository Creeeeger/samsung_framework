.class public final Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DCM_SCREEN_LOCK_SERVICE_ACTION:Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final MASCOT_ACTION:[Ljava/lang/String;


# instance fields
.field public final DCM_LAUNCHER:[Ljava/lang/String;

.field public final activityStart:Lcom/android/systemui/plugins/ActivityStarter;

.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final blockingQueue:Ljava/util/concurrent/BlockingDeque;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiver:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;

.field public cancelUpdateRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

.field public injector:Lcom/android/systemui/shade/NotificationPanelViewController$8;

.field public isBootCompleted:Z

.field public isMascotAppRunning:Z

.field public isWaitingForBootComplete:Z

.field public final lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public mascotBottomMarin:I

.field public mascotHeight:I

.field public mascotTopMarin:I

.field public final pm:Landroid/content/pm/PackageManager;

.field public remoteViews:Landroid/widget/RemoteViews;

.field public sIsDcmLauncher:Z

.field public sUseCachedIsDcmLauncher:Z

.field public final sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final serviceConnection:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;

.field public final statusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final updateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final updateRunnable:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateRunnable$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    :cond_1
    :goto_0
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DEBUG:Z

    .line 23
    .line 24
    const-class v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DCM_SCREEN_LOCK_SERVICE_ACTION:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "LOCK_CLICK_MASCOT"

    .line 33
    .line 34
    const-string v2, "ACTION_UNLOCK"

    .line 35
    .line 36
    const-string v3, "LOCK_CLICK_POPUP"

    .line 37
    .line 38
    filled-new-array {v1, v0, v3, v2, v3}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->MASCOT_ACTION:[Ljava/lang/String;

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/pm/PackageManager;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->statusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 17
    .line 18
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->pm:Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->activityStart:Lcom/android/systemui/plugins/ActivityStarter;

    .line 21
    .line 22
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    invoke-direct {p1, p2}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->blockingQueue:Ljava/util/concurrent/BlockingDeque;

    .line 29
    .line 30
    new-instance p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->serviceConnection:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;

    .line 36
    .line 37
    new-instance p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateRunnable$1;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateRunnable$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateRunnable:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateRunnable$1;

    .line 43
    .line 44
    new-instance p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->broadcastReceiver:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;

    .line 50
    .line 51
    new-instance p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateMonitorCallback$1;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateMonitorCallback$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 57
    .line 58
    const-string p1, "com.nttdocomo.android.dhome"

    .line 59
    .line 60
    const-string p2, "com.nttdocomo.android.homezozo"

    .line 61
    .line 62
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DCM_LAUNCHER:[Ljava/lang/String;

    .line 67
    .line 68
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "DcmMascotViewContainer"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public final isMascotEnabled()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->remoteViews:Landroid/widget/RemoteViews;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 7
    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 9
    .line 10
    iget v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 20
    .line 21
    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 22
    .line 23
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iget v3, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsPrivateNotificationsInPublic(I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 37
    .line 38
    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 39
    .line 40
    iget v3, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 49
    .line 50
    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 51
    .line 52
    iget v3, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsPrivateNotificationsInPublic(I)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move v0, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    move v0, v2

    .line 64
    :goto_1
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotAppRunning:Z

    .line 67
    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    move v1, v2

    .line 71
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v0, "isMascotEnabled "

    .line 74
    .line 75
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return v1
.end method

.method public final setMascotRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->remoteViews:Landroid/widget/RemoteViews;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->injector:Lcom/android/systemui/shade/NotificationPanelViewController$8;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController$8;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 11
    .line 12
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    iget p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockViewMode:I

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    if-ne p1, v1, :cond_1

    .line 27
    .line 28
    move p1, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move p1, v0

    .line 31
    :goto_0
    if-eqz p1, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move v1, v0

    .line 35
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 36
    .line 37
    return-void

    .line 38
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->cancelUpdateRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 39
    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 43
    .line 44
    .line 45
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateRunnable:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$updateRunnable$1;

    .line 48
    .line 49
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 50
    .line 51
    check-cast p1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 52
    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->cancelUpdateRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 60
    .line 61
    return-void
.end method

.method public final setMascotViewVisible(I)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_5

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sUseCachedIsDcmLauncher:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sIsDcmLauncher:Z

    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_1
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sUseCachedIsDcmLauncher:Z

    .line 27
    .line 28
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sIsDcmLauncher:Z

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v3, Landroid/content/Intent;

    .line 35
    .line 36
    const-string v4, "android.intent.action.MAIN"

    .line 37
    .line 38
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v4, "android.intent.category.HOME"

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const/high16 v4, 0x10000

    .line 48
    .line 49
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_4

    .line 68
    .line 69
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DCM_LAUNCHER:[Ljava/lang/String;

    .line 70
    .line 71
    array-length v4, v3

    .line 72
    :goto_1
    if-ge v2, v4, :cond_4

    .line 73
    .line 74
    aget-object v5, v3, v2

    .line 75
    .line 76
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sIsDcmLauncher:Z

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sIsDcmLauncher:Z

    .line 89
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v3, "isDcmLauncher "

    .line 93
    .line 94
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, " / "

    .line 101
    .line 102
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v1, "DcmMascotViewContainer"

    .line 113
    .line 114
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sIsDcmLauncher:Z

    .line 118
    .line 119
    :cond_5
    :goto_3
    if-nez v2, :cond_7

    .line 120
    .line 121
    :cond_6
    const/16 p1, 0x8

    .line 122
    .line 123
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string/jumbo v1, "setMascotViewVisible() "

    .line 126
    .line 127
    .line 128
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final updatePosition(II)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isMascotEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotHeight:I

    .line 14
    .line 15
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotTopMarin:I

    .line 16
    .line 17
    if-lez p2, :cond_0

    .line 18
    .line 19
    add-int/2addr v1, p2

    .line 20
    :cond_0
    iget p2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotBottomMarin:I

    .line 21
    .line 22
    int-to-float p1, p1

    .line 23
    int-to-float v2, v1

    .line 24
    add-float/2addr p1, v2

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setY(F)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/16 p1, 0x8

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    move p2, v0

    .line 36
    move v1, p2

    .line 37
    :goto_0
    add-int/2addr v0, v1

    .line 38
    add-int/2addr v0, p2

    .line 39
    return v0
.end method

.method public final updateRes()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0707e6

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotHeight:I

    .line 17
    .line 18
    const v1, 0x7f0707e7

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotTopMarin:I

    .line 26
    .line 27
    const v1, 0x7f0707e5

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotBottomMarin:I

    .line 35
    .line 36
    return-void
.end method
