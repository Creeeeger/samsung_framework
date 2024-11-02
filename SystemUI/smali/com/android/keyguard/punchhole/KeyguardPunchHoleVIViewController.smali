.class public final Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$5;

.field public final mDisplayLifeCycleObserver:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$4;

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mEditModeListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$7;

.field public final mHandler:Landroid/os/Handler;

.field public mIsBouncerVI:Z

.field public mIsLockStarEnabled:Z

.field public final mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mLastDensityDpi:I

.field public mLastLayoutDirection:I

.field public final mLockStarCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$6;

.field public mPlayModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

.field public final mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field public final mPunchHoleCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;

.field public final mRotationConsumer:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda2;

.field public final mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSettingsListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda1;

.field public mStopModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWakefulnessObserver:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$3;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsBouncerVI:Z

    .line 6
    .line 7
    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLastLayoutDirection:I

    .line 8
    .line 9
    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLastDensityDpi:I

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsLockStarEnabled:Z

    .line 12
    .line 13
    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPunchHoleCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$1;

    .line 19
    .line 20
    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$2;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$2;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 26
    .line 27
    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$3;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$3;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mWakefulnessObserver:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$3;

    .line 33
    .line 34
    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda1;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mSettingsListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda1;

    .line 40
    .line 41
    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$4;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$4;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mDisplayLifeCycleObserver:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$4;

    .line 47
    .line 48
    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda2;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mRotationConsumer:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda2;

    .line 54
    .line 55
    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$5;

    .line 56
    .line 57
    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$5;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mConfigurationListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$5;

    .line 61
    .line 62
    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$6;

    .line 63
    .line 64
    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$6;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mLockStarCallback:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$6;

    .line 68
    .line 69
    new-instance p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$7;

    .line 70
    .line 71
    invoke-direct {p1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$7;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mEditModeListener:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$7;

    .line 75
    .line 76
    iput-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mHandler:Landroid/os/Handler;

    .line 77
    .line 78
    iput-object p3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 79
    .line 80
    iput-object p4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 81
    .line 82
    iput-object p5, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 83
    .line 84
    iput-object p6, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 85
    .line 86
    iput-object p7, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 87
    .line 88
    iput-object p8, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 89
    .line 90
    iput-object p9, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 91
    .line 92
    iput-object p10, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public final acceptModifier(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 4
    .line 5
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsLockStarEnabled:Z

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-eqz v1, :cond_5

    .line 24
    .line 25
    const-string/jumbo v1, "punchHoleVIPlay"

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPlayModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 33
    .line 34
    const-string/jumbo v1, "punchHoleVIStop"

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mStopModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 44
    .line 45
    check-cast v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    .line 48
    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPlayModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 52
    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v0, "bouncer"

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const-string v0, ""

    .line 75
    .line 76
    :goto_1
    const-string p1, ",whitebg:"

    .line 77
    .line 78
    invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 83
    .line 84
    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 87
    .line 88
    iget-boolean v0, v0, Lcom/android/keyguard/punchhole/VIDirector;->mIsBouncer:Z

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    const-string v0, "background"

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    const-string/jumbo v0, "statusbar"

    .line 96
    .line 97
    .line 98
    :goto_2
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPlayModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 113
    .line 114
    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_4
    if-eqz v0, :cond_5

    .line 119
    .line 120
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    :goto_3
    return-void
.end method

.method public final onInit()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsBouncerVI:Z

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 13
    .line 14
    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 17
    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iget-object v3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v5, v3, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-interface {v5}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    move v5, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v5, v2

    .line 41
    :goto_0
    iput-boolean v5, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsLockStarEnabled:Z

    .line 42
    .line 43
    :cond_1
    iput-boolean v4, v0, Lcom/android/keyguard/punchhole/VIDirector;->mIsBouncer:Z

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iget-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsLockStarEnabled:Z

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v0, v3, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    move v2, v4

    .line 61
    :cond_3
    move v0, v2

    .line 62
    :goto_1
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 65
    .line 66
    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    .line 69
    .line 70
    const-string v1, "bouncer"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v4}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->acceptModifier(Z)V

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->setPunchHoleVI()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final playAnimation(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsLockStarEnabled:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v0, v1

    .line 24
    :goto_0
    const/4 v2, 0x4

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->acceptModifier(Z)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 31
    .line 32
    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v1, v2

    .line 40
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 45
    .line 46
    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    move v1, v2

    .line 54
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_5
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 68
    .line 69
    .line 70
    :goto_3
    return-void
.end method

.method public final setPunchHoleVI()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string/jumbo v1, "setFaceRecognitionVI()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_PUNCH_HOLE_FACE_VI:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string/jumbo v0, "setFaceRecognitionVI() return - face recognition vi is not supported by product feature"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v1, "setFaceRecognitionVI() return - mVIDirector is null ("

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object v1, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    sget-object v1, Lcom/android/keyguard/punchhole/VIDirectorFactory;->vendorName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ")"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_1
    iget v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    if-ne v0, v1, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string/jumbo v3, "setAnimation() "

    .line 76
    .line 77
    .line 78
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget v3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    .line 82
    .line 83
    const-string v4, " -> 1"

    .line 84
    .line 85
    invoke-static {v2, v3, v4, v0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iput v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    .line 89
    .line 90
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 91
    .line 92
    iget-boolean v2, v0, Lcom/android/keyguard/punchhole/VIDirector;->mIsBouncer:Z

    .line 93
    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    const-string v2, "background"

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    const-string/jumbo v2, "statusbar"

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    const-string v3, "getFaceRecognitionVIFileName() - file name = "

    .line 107
    .line 108
    const-string v4, "KeyguardPunchHoleVIView_VIDirector"

    .line 109
    .line 110
    if-eqz v2, :cond_4

    .line 111
    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v3, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v3, "_whitebg.json"

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    iget-object v0, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v2, v0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    goto :goto_2

    .line 146
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v3, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v3, ".json"

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    iget-object v0, v0, Lcom/android/keyguard/punchhole/VIDirector;->mVIFileName:Ljava/lang/String;

    .line 174
    .line 175
    invoke-static {v2, v0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_5

    .line 184
    .line 185
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 186
    .line 187
    const-string/jumbo v1, "prepareVI() - return, no VI file : "

    .line 188
    .line 189
    .line 190
    invoke-static {v1, v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mAppliedVIFileName:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_6

    .line 201
    .line 202
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 203
    .line 204
    const-string/jumbo v1, "prepareVI() - return, already applied : "

    .line 205
    .line 206
    .line 207
    invoke-static {v1, v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_6
    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mAppliedVIFileName:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-static {v2, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    new-instance v3, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda0;

    .line 222
    .line 223
    invoke-direct {v3, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 227
    .line 228
    .line 229
    new-instance v3, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda1;

    .line 230
    .line 231
    invoke-direct {v3, p0, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 235
    .line 236
    .line 237
    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    .line 239
    .line 240
    invoke-virtual {p0, v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setPrepareState(I)V

    .line 241
    .line 242
    .line 243
    :goto_3
    return-void
.end method

.method public final startVI()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 10
    .line 11
    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string/jumbo v0, "startVI() - return, face recognition is stopped"

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 23
    .line 24
    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 30
    .line 31
    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string/jumbo v0, "startVI() - return, WakefulnessLifecycle is not WAKEFULNESS_AWAKE"

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 47
    .line 48
    move-object v2, v0

    .line 49
    check-cast v2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 50
    .line 51
    iget-boolean v2, v2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsConfigUpdateNecessary:Z

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 56
    .line 57
    iget-object p0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    const-string/jumbo v0, "startVI() - return, Fold open - necessary to update VI position"

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 73
    .line 74
    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    const-string/jumbo v0, "startVI() - return, smart view"

    .line 79
    .line 80
    .line 81
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 94
    .line 95
    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 98
    .line 99
    const-string/jumbo v0, "startVI() - return, one hand mode running"

    .line 100
    .line 101
    .line 102
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 107
    .line 108
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->getVIRunning()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 117
    .line 118
    check-cast p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 121
    .line 122
    const-string/jumbo v0, "startVI() - return, edit mode VI running"

    .line 123
    .line 124
    .line 125
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 130
    .line 131
    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 132
    .line 133
    iget v2, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    .line 134
    .line 135
    const/4 v3, 0x1

    .line 136
    const/4 v4, 0x3

    .line 137
    const/4 v5, 0x0

    .line 138
    if-eq v2, v4, :cond_7

    .line 139
    .line 140
    if-ne v2, v3, :cond_6

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setPrepareState(I)V

    .line 143
    .line 144
    .line 145
    :cond_6
    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 146
    .line 147
    const-string/jumbo v1, "startVI() - return, not prepared"

    .line 148
    .line 149
    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_7
    iget-boolean v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    .line 155
    .line 156
    if-eqz v1, :cond_8

    .line 157
    .line 158
    iget-object v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 159
    .line 160
    if-eqz v1, :cond_8

    .line 161
    .line 162
    iget v2, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-ne v2, v1, :cond_8

    .line 169
    .line 170
    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 171
    .line 172
    const-string/jumbo v1, "startVI() - return, animation is already playing"

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_8
    iget-object v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 180
    .line 181
    const-string/jumbo v2, "startVI()"

    .line 182
    .line 183
    .line 184
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    iput-boolean v3, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    .line 188
    .line 189
    move v5, v3

    .line 190
    :goto_0
    if-eqz v5, :cond_9

    .line 191
    .line 192
    invoke-virtual {p0, v3}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->playAnimation(Z)V

    .line 193
    .line 194
    .line 195
    :cond_9
    return-void
.end method

.method public final stopVI()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 4
    .line 5
    iget v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string/jumbo v1, "stopVI() - return, not prepared"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :goto_0
    move v0, v3

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-boolean v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string/jumbo v1, "stopVI() - return, animation is not playing"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v1, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string/jumbo v2, "stopVI()"

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iput-boolean v3, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    :goto_1
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, v3}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->playAnimation(Z)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string/jumbo p2, "updateStyle setPunchHoleVI"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->setPunchHoleVI()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
