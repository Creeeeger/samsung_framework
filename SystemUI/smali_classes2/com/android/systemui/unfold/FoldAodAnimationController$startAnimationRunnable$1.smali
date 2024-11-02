.class public final Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/FoldAodAnimationController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->getShadeFoldAnimator()Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v3, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$1;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 10
    .line 11
    invoke-direct {v3, v1}, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$1;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;)V

    .line 12
    .line 13
    .line 14
    new-instance v5, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$2;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 17
    .line 18
    invoke-direct {v5, v1}, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$2;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;)V

    .line 19
    .line 20
    .line 21
    new-instance v4, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$3;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 24
    .line 25
    invoke-direct {v4, p0}, Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$3;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    invoke-virtual {v6, p0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/high16 v1, 0x3f800000    # 1.0f

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-wide/16 v1, 0x258

    .line 51
    .line 52
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    sget-object v1, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl$1;

    .line 63
    .line 64
    move-object v1, v7

    .line 65
    move-object v2, v0

    .line 66
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl$1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/view/ViewPropertyAnimator;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda21;

    .line 74
    .line 75
    const/4 v2, 0x2

    .line 76
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda21;-><init>(Ljava/lang/Object;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 84
    .line 85
    .line 86
    return-void
.end method
