.class public final Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mLastAnimatedView:Landroid/view/View;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 47
    .line 48
    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, ""

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    .line 63
    .line 64
    sget-object p1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    .line 65
    .line 66
    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/high16 p1, 0x3f800000    # 1.0f

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-wide/16 v0, 0xc8

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 46
    .line 47
    .line 48
    return-void
.end method
