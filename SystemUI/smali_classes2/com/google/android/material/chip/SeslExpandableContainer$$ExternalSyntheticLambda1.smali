.class public final synthetic Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/chip/SeslExpandableContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/chip/SeslExpandableContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mFadeAnimation:Z

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    new-instance p1, Lcom/google/android/material/chip/SeslExpandableContainer$1;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/google/android/material/chip/SeslExpandableContainer$1;-><init>(Lcom/google/android/material/chip/SeslExpandableContainer;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollingChipsContainer:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-wide/16 v0, 0x64

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    .line 44
    .line 45
    xor-int/2addr p1, v0

    .line 46
    iput-boolean p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->refreshLayout()V

    .line 49
    .line 50
    .line 51
    new-instance p1, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda2;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/chip/SeslExpandableContainer;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mOnExpansionButtonClickedListener:Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda0;->onClick()V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_1
    return-void
.end method
