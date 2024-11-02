.class public final Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;
.super Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$ActivityLaunchRemoteAnimationRunner;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$ActivityLaunchRemoteAnimationRunner;-><init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 2

    .line 1
    const-string v0, "SafeUIKeyguardViewMediator"

    .line 2
    .line 3
    const-string v1, "Occlude animation cancelled by WM."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 11
    .line 12
    const/16 v0, 0x40

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$ActivityLaunchRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 5
    .line 6
    iget-object p2, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->-$$Nest$mcreateInteractionJankMonitorConf(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string p3, "OCCLUDE"

    .line 13
    .line 14
    invoke-virtual {p1, p3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p2, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    .line 19
    .line 20
    .line 21
    const-string p1, "SafeUIKeyguardViewMediator"

    .line 22
    .line 23
    const-string p2, "OccludeAnimator#onAnimationStart. Set occluded = true."

    .line 24
    .line 25
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    const/4 p2, 0x0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->setOccluded(ZZ)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
