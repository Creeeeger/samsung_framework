.class public final Lcom/android/systemui/shade/QuickSettingsController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mIsCanceled:Z

.field public final synthetic this$0:Lcom/android/systemui/shade/QuickSettingsController;

.field public final synthetic val$onFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/QuickSettingsController;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController$3;->this$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/shade/QuickSettingsController$3;->val$onFinishRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/shade/QuickSettingsController$3;->mIsCanceled:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$3;->this$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsExpandAnimating:Z

    .line 10
    .line 11
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController$3;->this$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/android/systemui/shade/QuickSettingsController;->mAnimatingHiddenFromCollapsed:Z

    .line 5
    .line 6
    iput-boolean v0, p1, Lcom/android/systemui/shade/QuickSettingsController;->mAnimating:Z

    .line 7
    .line 8
    iget-object v1, p1, Lcom/android/systemui/shade/QuickSettingsController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 9
    .line 10
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsExpandAnimating:Z

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 13
    .line 14
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController$3;->this$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 24
    .line 25
    iget-object v1, p1, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 29
    .line 30
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput-object v1, p1, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController$3;->val$onFinishRunnable:Ljava/lang/Runnable;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController$3;->this$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 43
    .line 44
    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsController$3;->mIsCanceled:Z

    .line 45
    .line 46
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/shade/QuickSettingsController;->traceQsJank(ZZ)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$3;->this$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 4
    .line 5
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingStarted()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
