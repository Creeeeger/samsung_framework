.class public final Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mHandler:Landroid/os/Handler;

.field public final mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field public final mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$Factory;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 21
    .line 22
    return-void
.end method
