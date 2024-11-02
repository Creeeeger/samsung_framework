.class public final Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final mAnimationCreator:Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;

.field public mAppearingIconAnimSet:Landroid/animation/AnimatorSet;

.field public mChildAnimatable:Z

.field public mDetailedCardScale:F

.field public mDisappearingDetailScaleAnim:Landroid/animation/ValueAnimator;

.field public mIconContainer:Landroid/view/View;

.field public mIsNeedDelay:Z

.field public final mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

.field public mNeedAnimForRemoval:Z

.field public mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public misTransformAnimating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNeedAnimForRemoval:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 8
    .line 9
    invoke-interface {p3, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    new-instance p1, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;-><init>(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAnimationCreator:Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->resetTransformAnimation()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsDetail:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsDetail:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->resetTransformAnimation()V

    .line 5
    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final resetTransformAnimation()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mDisappearingDetailScaleAnim:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-direct {v2, v4}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    invoke-direct {v2, v4}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAppearingIconAnimSet:Landroid/animation/AnimatorSet;

    .line 44
    .line 45
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    invoke-direct {v2, v4}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 56
    .line 57
    .line 58
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->misTransformAnimating:Z

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 61
    .line 62
    const/high16 v2, 0x3f800000    # 1.0f

    .line 63
    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 72
    .line 73
    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIconContainer:Landroid/view/View;

    .line 75
    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mIconContainer:Landroid/view/View;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLock:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;

    .line 92
    .line 93
    const/16 v4, 0x64

    .line 94
    .line 95
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;

    .line 99
    .line 100
    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    .line 101
    .line 102
    invoke-virtual {v2, v4, p0, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 107
    .line 108
    .line 109
    monitor-exit v1

    .line 110
    return-void

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    throw p0
.end method
