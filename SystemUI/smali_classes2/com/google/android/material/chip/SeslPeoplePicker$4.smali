.class public final Lcom/google/android/material/chip/SeslPeoplePicker$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/chip/SeslPeoplePicker;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/SeslPeoplePicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/SeslPeoplePicker$4;->this$0:Lcom/google/android/material/chip/SeslPeoplePicker;

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
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/material/chip/SeslPeoplePicker$4;->this$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, -0x2

    .line 10
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/material/chip/SeslPeoplePicker$4;->this$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/material/chip/SeslPeoplePicker$4;->this$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 24
    .line 25
    iget-object v0, p1, Lcom/google/android/material/chip/SeslExpansionButton;->mTimer:Lcom/google/android/material/chip/SeslExpansionButton$1;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lcom/google/android/material/chip/SeslExpansionButton;->mTimer:Lcom/google/android/material/chip/SeslExpansionButton$1;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/google/android/material/chip/SeslPeoplePicker$4;->this$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 36
    .line 37
    iget-object v0, p1, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 38
    .line 39
    new-instance v1, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda2;

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    invoke-direct {v1, p1, v2}, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/chip/SeslPeoplePicker;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/google/android/material/chip/SeslPeoplePicker$4;->this$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/google/android/material/chip/SeslChipGroup;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/chip/SeslPeoplePicker$4;->this$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/material/chip/SeslPeoplePicker$4;->this$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    .line 16
    .line 17
    xor-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    iput-boolean p0, p1, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
