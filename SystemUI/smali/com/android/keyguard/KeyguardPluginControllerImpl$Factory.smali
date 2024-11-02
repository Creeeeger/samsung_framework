.class public final Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDesktopManager:Lcom/android/systemui/util/DesktopManager;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field public final mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/internal/util/LatencyTracker;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 17
    .line 18
    return-void
.end method
