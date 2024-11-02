.class public final synthetic Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mConfirmView:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mViewTreeObserverListener:Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    iput v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mOriginalConfirmLocationX:F

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    int-to-float v0, v0

    .line 30
    iput v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mOriginalConfirmLocationY:F

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    add-int/2addr v2, v1

    .line 53
    int-to-float v1, v2

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mConfirmIconLabelView:Landroid/view/ViewGroup;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    add-int/2addr v2, v1

    .line 78
    int-to-float v1, v2

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->getDefaultConfirmAnimatorSet(Z)Landroid/animation/AnimatorSet;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 88
    .line 89
    .line 90
    return-void
.end method
