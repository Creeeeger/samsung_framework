.class public final synthetic Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/chip/SeslChipGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/chip/SeslChipGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/chip/SeslChipGroup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/chip/SeslChipGroup;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/chip/SeslChipGroup;->mChipRemoveListener:Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 8
    .line 9
    iget-boolean v2, v1, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda2;

    .line 15
    .line 16
    invoke-direct {v2, v0, v3}, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/chip/SeslPeoplePicker;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v1, v0, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    iget-object v1, v0, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 33
    .line 34
    const/16 v2, 0x8

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/google/android/material/chip/SeslExpansionButton;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    new-array v1, v3, [F

    .line 40
    .line 41
    fill-array-data v1, :array_0

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object p0, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const v3, 0x7f0b00f3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    int-to-long v2, v2

    .line 62
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 63
    .line 64
    .line 65
    const v2, 0x7f0c0022

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 73
    .line 74
    .line 75
    new-instance p0, Lcom/google/android/material/chip/SeslPeoplePicker$3;

    .line 76
    .line 77
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/SeslPeoplePicker$3;-><init>(Lcom/google/android/material/chip/SeslPeoplePicker;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    .line 82
    .line 83
    iget-object p0, v0, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    int-to-float p0, p0

    .line 90
    new-instance v2, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda3;

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    invoke-direct {v2, v0, p0, v3}, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/chip/SeslPeoplePicker;FI)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 100
    .line 101
    .line 102
    :cond_1
    return-void

    .line 103
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
