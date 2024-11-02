.class final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$SET_OCCLUDED$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/keyguard/KeyguardDisplayManager;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;Lcom/android/systemui/settings/UserTracker;Landroid/app/ActivityManager;Lcom/android/systemui/knox/KnoxStateMonitor;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/sensor/PickupController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/os/PowerManager;Ldagger/Lazy;Lcom/android/systemui/aod/AODAmbientWallpaperHelper;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/log/SamsungServiceLogger;Landroid/media/AudioManager;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/BootAnimationFinishedTrigger;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/util/CarLifeManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$SET_OCCLUDED$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$SET_OCCLUDED$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getViewMediatorProvider()Lcom/android/systemui/keyguard/ViewMediatorProvider;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->setOccludedMsg:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/Integer;

    .line 14
    .line 15
    return-object p0
.end method
