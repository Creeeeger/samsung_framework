.class public final Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

.field public final mBouncerColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field public final mCoverHostLazy:Ldagger/Lazy;

.field public final mDozeParametersLazy:Ldagger/Lazy;

.field public mIsDLSOverlayView:Z

.field public mIsFingerprintOptionEnabled:Z

.field public mIsFoldOpened:Z

.field public mIsReduceTransparency:Z

.field public final mKeyguardFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStateControllerLazy:Ldagger/Lazy;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

.field public final mPluginAODManagerLazy:Ldagger/Lazy;

.field public mPreviousState:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public mProvider:Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;

.field public mQsExpandedOnNightMode:Z

.field public final mResources:Landroid/content/res/Resources;

.field public mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

.field public mScrimBouncerAlpha:F

.field public mScrimBouncerColor:I

.field public mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

.field public mState:Lcom/android/systemui/statusbar/phone/ScrimState;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ScrimController"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->DEBUG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/aod/AODAmbientWallpaperHelper;Lcom/android/systemui/keyguard/KeyguardFoldController;Landroid/content/res/Resources;Ldagger/Lazy;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/aod/AODAmbientWallpaperHelper;",
            "Lcom/android/systemui/keyguard/KeyguardFoldController;",
            "Landroid/content/res/Resources;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mPreviousState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsFoldOpened:Z

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mDozeParametersLazy:Ldagger/Lazy;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardStateControllerLazy:Ldagger/Lazy;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mPluginAODManagerLazy:Ldagger/Lazy;

    .line 18
    .line 19
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mCoverHostLazy:Ldagger/Lazy;

    .line 20
    .line 21
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 22
    .line 23
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 24
    .line 25
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 26
    .line 27
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mAodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 28
    .line 29
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mResources:Landroid/content/res/Resources;

    .line 30
    .line 31
    const p1, 0x7f06053f

    .line 32
    .line 33
    .line 34
    invoke-virtual {p8, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    .line 39
    .line 40
    new-instance p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 41
    .line 42
    invoke-direct {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mBouncerColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 46
    .line 47
    iget p2, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 50
    .line 51
    .line 52
    iget p2, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 55
    .line 56
    .line 57
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 58
    .line 59
    if-eqz p1, :cond_0

    .line 60
    .line 61
    new-instance p1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;)V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x2

    .line 67
    check-cast p7, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 68
    .line 69
    invoke-virtual {p7, p1, p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;I)Z

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public final gatherState()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v2, "Notification Scrim"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const-string v2, "Front Scrim"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    const-string v1, "Behind Scrim"

    .line 29
    .line 30
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    sget-object v1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const-string v1, "ScrimController"

    .line 44
    .line 45
    invoke-static {v1, p0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addHeaderLine(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$$ExternalSyntheticLambda1;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method public final getWhiteWallpaperState(Ljava/lang/Boolean;)Z
    .locals 3

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    xor-int/2addr p1, p0

    .line 9
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    const/4 v0, 0x0

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    const-wide/16 v1, 0x200

    .line 27
    .line 28
    invoke-virtual {p1, v1, v2}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-ne p1, p0, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move p0, v0

    .line 40
    :goto_1
    return p0
.end method

.method public final needUpdateScrimColor()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mPrimaryBouncerShowing:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mProvider:Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mKeyguardOccludedSupplier:Ljava/util/function/Supplier;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 30
    .line 31
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 32
    .line 33
    if-eq p0, v0, :cond_0

    .line 34
    .line 35
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 36
    .line 37
    if-ne p0, v0, :cond_1

    .line 38
    .line 39
    :cond_0
    const/4 p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    :goto_0
    return p0
.end method

.method public final onKeyguardDismissAmountChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setQsExpandedOnNightMode(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mQsExpandedOnNightMode:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "setQsExpandedOnNightMode("

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mQsExpandedOnNightMode:Z

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " -> "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ")"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "ScrimController"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mQsExpandedOnNightMode:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mProvider:Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mUpdateScrimsRunnable:Ljava/lang/Runnable;

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->setScrimAlphaForKeyguard(Z)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public final setScrimAlphaForKeyguard(Z)V
    .locals 5

    .line 1
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsReduceTransparency:Z

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->getWhiteWallpaperState(Ljava/lang/Boolean;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string p1, "background"

    .line 31
    .line 32
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsReduceTransparency:Z

    .line 37
    .line 38
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_CAPTURED_BLUR:Z

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    const/4 v2, 0x0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    move v0, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move v0, v2

    .line 53
    :goto_1
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_BLUR:Z

    .line 54
    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsReduceTransparency:Z

    .line 60
    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    move v3, v1

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    move v3, v2

    .line 66
    :goto_2
    if-eqz v0, :cond_7

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 69
    .line 70
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_7

    .line 75
    .line 76
    sget v0, Lcom/android/systemui/util/DeviceType;->supportOpticalFingerprint:I

    .line 77
    .line 78
    const/4 v4, -0x1

    .line 79
    if-ne v0, v4, :cond_5

    .line 80
    .line 81
    sput v1, Lcom/android/systemui/util/DeviceType;->supportOpticalFingerprint:I

    .line 82
    .line 83
    :cond_5
    sget v0, Lcom/android/systemui/util/DeviceType;->supportOpticalFingerprint:I

    .line 84
    .line 85
    if-ne v0, v1, :cond_6

    .line 86
    .line 87
    move v0, v1

    .line 88
    goto :goto_3

    .line 89
    :cond_6
    move v0, v2

    .line 90
    :goto_3
    if-eqz v0, :cond_7

    .line 91
    .line 92
    move v2, v1

    .line 93
    :cond_7
    if-eqz v3, :cond_a

    .line 94
    .line 95
    if-nez v2, :cond_a

    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mProvider:Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mKeyguardOccludedSupplier:Ljava/util/function/Supplier;

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Ljava/lang/Boolean;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_a

    .line 112
    .line 113
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mQsExpandedOnNightMode:Z

    .line 114
    .line 115
    if-nez v0, :cond_a

    .line 116
    .line 117
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsDLSOverlayView:Z

    .line 118
    .line 119
    if-eqz v0, :cond_8

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_8
    if-eqz p1, :cond_9

    .line 123
    .line 124
    const v0, 0x3e4ccccd    # 0.2f

    .line 125
    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_9
    const v0, 0x3e99999a    # 0.3f

    .line 129
    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_a
    :goto_4
    const/high16 v0, 0x3f400000    # 0.75f

    .line 133
    .line 134
    :goto_5
    if-eqz p1, :cond_b

    .line 135
    .line 136
    const v2, 0x7f060540

    .line 137
    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_b
    const v2, 0x7f06053f

    .line 141
    .line 142
    .line 143
    :goto_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mResources:Landroid/content/res/Resources;

    .line 144
    .line 145
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    iput v2, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    .line 150
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string/jumbo v3, "setScrimAlphaForKeyguard isWhiteWallpaper() = "

    .line 154
    .line 155
    .line 156
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string p1, " bouncerScrimAlpha = "

    .line 163
    .line 164
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string p1, " mScrimBouncerColor = #"

    .line 171
    .line 172
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    .line 176
    .line 177
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string p1, " callers = "

    .line 185
    .line 186
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerAlpha:F

    .line 201
    .line 202
    cmpl-float v1, v1, v0

    .line 203
    .line 204
    if-eqz v1, :cond_c

    .line 205
    .line 206
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerAlpha:F

    .line 207
    .line 208
    const-string v1, "ScrimController"

    .line 209
    .line 210
    invoke-static {v1, p1}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_c
    sget-object p1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 214
    .line 215
    iput v0, p1, Lcom/android/systemui/statusbar/phone/ScrimState;->mDefaultScrimAlpha:F

    .line 216
    .line 217
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mBouncerColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 218
    .line 219
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    .line 220
    .line 221
    invoke-virtual {p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 222
    .line 223
    .line 224
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    .line 225
    .line 226
    invoke-virtual {p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 230
    .line 231
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 232
    .line 233
    if-eq p1, v0, :cond_d

    .line 234
    .line 235
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 236
    .line 237
    if-eq p1, v0, :cond_d

    .line 238
    .line 239
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mProvider:Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;

    .line 240
    .line 241
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mUpdateScrimsRunnable:Ljava/lang/Runnable;

    .line 242
    .line 243
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 244
    .line 245
    .line 246
    :cond_d
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->setScrimAlphaForKeyguard(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
