.class public final Lcom/google/android/material/chip/SeslExpandableContainer$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/chip/SeslExpandableContainer;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/SeslExpandableContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer$1;->this$0:Lcom/google/android/material/chip/SeslExpandableContainer;

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
    iget-object p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer$1;->this$0:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p1, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollingChipsContainer:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer$1;->this$0:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 24
    .line 25
    iget-boolean p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    .line 26
    .line 27
    xor-int/2addr p1, v1

    .line 28
    iput-boolean p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->refreshLayout()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    .line 36
    .line 37
    iput-boolean v0, p1, Lcom/google/android/material/chip/SeslExpansionButton;->mExpanded:Z

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mOnExpansionButtonClickedListener:Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda0;->onClick()V

    .line 47
    .line 48
    .line 49
    :cond_1
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
