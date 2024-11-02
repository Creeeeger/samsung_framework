.class final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$refreshRateToken$2;
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


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$refreshRateToken$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$refreshRateToken$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$refreshRateToken$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$refreshRateToken$2;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$refreshRateToken$2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Landroid/os/Binder;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
