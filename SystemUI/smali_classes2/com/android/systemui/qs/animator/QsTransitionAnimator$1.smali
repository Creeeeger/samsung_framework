.class public final Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isDetailVisible()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->setDetailClosing(Z)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;

    .line 25
    .line 26
    const/4 v2, 0x7

    .line 27
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda1;-><init>(ZI)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->this$0:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearDetailView()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 45
    .line 46
    check-cast p1, Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 52
    .line 53
    iget-object v1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-object v1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 58
    .line 59
    iget-boolean v2, v1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    iput-boolean v0, v1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    .line 64
    .line 65
    :cond_1
    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mLazyExpandAnimator:Ldagger/Lazy;

    .line 66
    .line 67
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mLazyExpandAnimator:Ldagger/Lazy;

    .line 76
    .line 77
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateAnimators()V

    .line 84
    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method
