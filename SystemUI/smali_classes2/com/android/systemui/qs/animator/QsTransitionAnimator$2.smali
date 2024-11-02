.class public final Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;
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
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

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
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelExpanded:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/View;

    .line 25
    .line 26
    const/high16 v2, 0x3f800000    # 1.0f

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/SecQSDetail$5;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/systemui/qs/SecQSDetail$5;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 37
    .line 38
    iget-object v0, p1, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p1, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQSPanelController;->setGridContentVisibility(Z)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iput-boolean v1, p1, Lcom/android/systemui/qs/SecQSDetail;->mAnimatingOpen:Z

    .line 48
    .line 49
    invoke-static {p1}, Lcom/android/systemui/qs/SecQSDetail;->-$$Nest$mcheckPendingAnimations(Lcom/android/systemui/qs/SecQSDetail;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->setDetailOpening(Z)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->setDetailShowing(Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->setDetailClosing(Z)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailStateCallback:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$1;->setDetailShowing(Z)V

    .line 78
    .line 79
    .line 80
    :goto_1
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
