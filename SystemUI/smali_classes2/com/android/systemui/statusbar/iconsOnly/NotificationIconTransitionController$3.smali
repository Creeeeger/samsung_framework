.class public final Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public isCanceled:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$3;->isCanceled:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$3;->isCanceled:Z

    .line 3
    .line 4
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->misTransformAnimating:Z

    .line 5
    .line 6
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNeedAnimForRemoval:Z

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 9
    .line 10
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsDetail:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsDetail:Z

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mAppearingIconAnimSet:Landroid/animation/AnimatorSet;

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    .line 25
    .line 26
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$3;->isCanceled:Z

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$3;->this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->mNotificationStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateVisibility()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method
