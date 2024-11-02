.class public final synthetic Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mViewTreeObserverListener:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    new-array v2, v1, [I

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    aget v2, v2, v0

    .line 24
    .line 25
    int-to-float v2, v2

    .line 26
    iput v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mOriginalConfirmLocationX:F

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    .line 29
    .line 30
    new-array v3, v1, [I

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    aget v3, v3, v2

    .line 37
    .line 38
    int-to-float v3, v3

    .line 39
    iput v3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mOriginalConfirmLocationY:F

    .line 40
    .line 41
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    .line 42
    .line 43
    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    .line 44
    .line 45
    new-array v5, v1, [I

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 48
    .line 49
    .line 50
    aget v4, v5, v2

    .line 51
    .line 52
    int-to-float v4, v4

    .line 53
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;

    .line 59
    .line 60
    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;->getConfirmIconLabelView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    new-array v1, v1, [I

    .line 67
    .line 68
    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 69
    .line 70
    .line 71
    aget v0, v1, v0

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mRootView:Landroid/view/ViewGroup;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    sub-int/2addr v0, v1

    .line 80
    int-to-float v0, v0

    .line 81
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setX(F)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v2}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->getDefaultConfirmAnimatorSet(Z)Landroid/animation/AnimatorSet;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 89
    .line 90
    .line 91
    return-void
.end method
