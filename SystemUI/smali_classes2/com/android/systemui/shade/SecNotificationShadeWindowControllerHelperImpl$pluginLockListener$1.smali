.class public final Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onScreenTimeoutChanged(J)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onScreenTimeoutChanged timeOut : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "NotificationShadeWindowController"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-wide p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->lockTimeOutValue:J

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getUserActivityTimeout()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    iget-wide v2, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    .line 39
    .line 40
    cmp-long p2, v2, v0

    .line 41
    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    iput-wide v0, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    .line 45
    .line 46
    iget p2, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    if-ne p2, v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public final onViewModeChanged(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onViewModeChanged mode : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "NotificationShadeWindowController"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    if-ne p1, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->LOCKUI_BLUR:Z

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string/jumbo v2, "prepareToApplyBlurDimEffect"

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 47
    .line 48
    or-int/lit8 v1, v1, 0x2

    .line 49
    .line 50
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 51
    .line 52
    const/high16 v1, 0x3e000000    # 0.125f

    .line 53
    .line 54
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 55
    .line 56
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 57
    .line 58
    or-int/lit8 v1, v1, 0x40

    .line 59
    .line 60
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const-string/jumbo v2, "prepareToRemoveBlurDimEffect"

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget-object v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 76
    .line 77
    and-int/lit8 v1, v1, -0x3

    .line 78
    .line 79
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 83
    .line 84
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 85
    .line 86
    and-int/lit8 v1, v1, -0x41

    .line 87
    .line 88
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 89
    .line 90
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->updateBiometricRecognition(Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->updateOverlayUserTimeout(Z)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final onViewModePageChanged(Landroid/app/SemWallpaperColors;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const-wide/16 v0, 0x100

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->notificationShadeView:Landroid/view/ViewGroup;

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    or-int/lit8 p1, p1, 0x10

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    and-int/lit8 p1, p1, -0x11

    .line 34
    .line 35
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final updateBiometricRecognition(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->powerManager:Landroid/os/PowerManager;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchDlsBiometricMode(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final updateOverlayUserTimeout(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->userScreenTimeOut:Z

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
