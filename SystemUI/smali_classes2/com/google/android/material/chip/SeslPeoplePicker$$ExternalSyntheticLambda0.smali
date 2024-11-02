.class public final synthetic Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/chip/SeslPeoplePicker;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/chip/SeslPeoplePicker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 10

    .line 1
    iget-object v1, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 2
    .line 3
    iget-object p0, v1, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/SeslChipGroup;->getInternalHeight(F)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    iget-object v0, v1, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v2, v1, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    add-int/2addr v2, v0

    .line 32
    iget-object v0, v1, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/2addr v0, v2

    .line 39
    iget-object v2, v1, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 40
    .line 41
    iget-boolean v2, v2, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    move v2, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v2, p0

    .line 48
    move p0, v0

    .line 49
    :goto_0
    int-to-float p0, p0

    .line 50
    int-to-float v0, v2

    .line 51
    sub-float v3, p0, v0

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const v4, 0x7f0b00f3

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const v5, 0x7f0b00ff

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const v5, 0x7f0b00fe

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    const/4 v0, 0x2

    .line 91
    new-array v0, v0, [F

    .line 92
    .line 93
    fill-array-data v0, :array_0

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    int-to-long v8, v4

    .line 101
    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 102
    .line 103
    .line 104
    const v0, 0x7f0c0022

    .line 105
    .line 106
    .line 107
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {v7, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    .line 113
    .line 114
    new-instance p0, Lcom/google/android/material/chip/SeslPeoplePicker$4;

    .line 115
    .line 116
    invoke-direct {p0, v1}, Lcom/google/android/material/chip/SeslPeoplePicker$4;-><init>(Lcom/google/android/material/chip/SeslPeoplePicker;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 120
    .line 121
    .line 122
    new-instance p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda4;

    .line 123
    .line 124
    move-object v0, p0

    .line 125
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/material/chip/SeslPeoplePicker;IFIII)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
