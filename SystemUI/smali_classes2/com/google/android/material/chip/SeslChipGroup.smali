.class public Lcom/google/android/material/chip/SeslChipGroup;
.super Lcom/google/android/material/chip/ChipGroup;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static sChipInitialWidth:I


# instance fields
.field public mChipAddListener:Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda1;

.field public mChipMaxWidth:I

.field public mChipRemoveListener:Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda1;

.field public final mDynamicChipTextTruncation:Z

.field public mEmptyContainerHeight:I

.field public final mLayoutTransition:Landroid/animation/LayoutTransition;

.field public mRowCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/SeslChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0400e5

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/SeslChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/chip/SeslChipGroup;->mDynamicChipTextTruncation:Z

    .line 5
    new-instance p2, Landroid/animation/LayoutTransition;

    invoke-direct {p2}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/SeslChipGroup;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 p3, 0x0

    .line 6
    iput p3, p0, Lcom/google/android/material/chip/SeslChipGroup;->mEmptyContainerHeight:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070193

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/google/android/material/chip/SeslChipGroup;->sChipInitialWidth:I

    .line 8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget v1, Landroidx/core/text/TextUtilsCompat;->$r8$clinit:I

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    const/4 v0, 0x2

    .line 11
    invoke-virtual {p2, v0}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    const/4 v1, 0x3

    .line 12
    invoke-virtual {p2, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    const/4 v2, 0x4

    .line 13
    invoke-virtual {p2, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 14
    invoke-virtual {p2, p3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 15
    invoke-virtual {p2, p1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    const-wide/16 v3, 0x0

    .line 16
    invoke-virtual {p2, v0, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 17
    invoke-virtual {p2, v1, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 18
    invoke-virtual {p2, v2, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 19
    invoke-virtual {p2, p3, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 20
    invoke-virtual {p2, p1, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00f3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    new-array v6, v0, [F

    .line 22
    fill-array-data v6, :array_0

    invoke-static {v6}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->ofFloat([F)Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;

    move-result-object v6

    int-to-long v7, v5

    .line 23
    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 24
    invoke-virtual {v6, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 25
    new-instance v3, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda0;

    invoke-direct {v3, p3}, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v6, v3}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 26
    new-instance v3, Lcom/google/android/material/chip/SeslChipGroup$3;

    invoke-direct {v3, p0}, Lcom/google/android/material/chip/SeslChipGroup$3;-><init>(Lcom/google/android/material/chip/SeslChipGroup;)V

    .line 27
    invoke-virtual {v6, v3}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 28
    invoke-virtual {p2, v0, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    new-array v3, v0, [F

    .line 29
    fill-array-data v3, :array_1

    invoke-static {v3}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->ofFloat([F)Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;

    move-result-object v3

    .line 30
    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 31
    new-instance v4, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 32
    new-instance v4, Lcom/google/android/material/chip/SeslChipGroup$3;

    invoke-direct {v4, p0}, Lcom/google/android/material/chip/SeslChipGroup$3;-><init>(Lcom/google/android/material/chip/SeslChipGroup;)V

    .line 33
    invoke-virtual {v3, v4}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 34
    invoke-virtual {p2, v1, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0022

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 36
    invoke-virtual {p2, v1, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 37
    invoke-virtual {p2, v0, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 38
    invoke-virtual {p2, v2, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 39
    invoke-virtual {p2, p3, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 40
    invoke-virtual {p2, p1, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 41
    new-instance p1, Lcom/google/android/material/chip/SeslChipGroup$2;

    invoke-direct {p1, p0}, Lcom/google/android/material/chip/SeslChipGroup$2;-><init>(Lcom/google/android/material/chip/SeslChipGroup;)V

    .line 42
    invoke-virtual {p2, p1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 43
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public final addRemoveAnim()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/SeslChipGroup;->getInternalHeight(F)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eq v0, v1, :cond_3

    .line 16
    .line 17
    iget-boolean v3, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v3, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 33
    :goto_1
    if-eqz v3, :cond_3

    .line 34
    .line 35
    sub-int/2addr v1, v0

    .line 36
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    int-to-float v2, v2

    .line 41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const v4, 0x7f070190

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    cmpg-float v2, v2, v3

    .line 57
    .line 58
    if-gez v2, :cond_2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/4 v2, 0x2

    .line 62
    new-array v2, v2, [F

    .line 63
    .line 64
    fill-array-data v2, :array_0

    .line 65
    .line 66
    .line 67
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const v4, 0x7f0b00f3

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    int-to-long v3, v3

    .line 87
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const v4, 0x7f0c0022

    .line 95
    .line 96
    .line 97
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 102
    .line 103
    .line 104
    new-instance v3, Lcom/google/android/material/chip/SeslChipGroup$1;

    .line 105
    .line 106
    invoke-direct {v3, p0}, Lcom/google/android/material/chip/SeslChipGroup$1;-><init>(Lcom/google/android/material/chip/SeslChipGroup;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 110
    .line 111
    .line 112
    new-instance v3, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda2;

    .line 113
    .line 114
    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/chip/SeslChipGroup;II)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const/4 v1, -0x2

    .line 129
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 130
    .line 131
    iput v2, p0, Lcom/google/android/material/chip/SeslChipGroup;->mEmptyContainerHeight:I

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    .line 135
    .line 136
    :goto_2
    return-void

    .line 137
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/google/android/material/chip/SeslChip;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/google/android/material/chip/SeslChip;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v0, p1

    .line 10
    :goto_0
    invoke-super {p0, v0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->addRemoveAnim()V

    .line 14
    .line 15
    .line 16
    instance-of p2, p1, Lcom/google/android/material/chip/Chip;

    .line 17
    .line 18
    if-eqz p2, :cond_7

    .line 19
    .line 20
    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 21
    .line 22
    iget-boolean p2, p0, Lcom/google/android/material/chip/SeslChipGroup;->mDynamicChipTextTruncation:Z

    .line 23
    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    iget p2, p0, Lcom/google/android/material/chip/SeslChipGroup;->mChipMaxWidth:I

    .line 27
    .line 28
    if-lez p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setMaxWidth(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object p0, p0, Lcom/google/android/material/chip/SeslChipGroup;->mChipAddListener:Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda1;

    .line 39
    .line 40
    if-eqz p0, :cond_7

    .line 41
    .line 42
    iget-object p1, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 43
    .line 44
    iget-boolean p2, p1, Lcom/google/android/material/chip/SeslPeoplePicker;->mInitialized:Z

    .line 45
    .line 46
    iget-object p0, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    .line 47
    .line 48
    const/4 p3, 0x1

    .line 49
    const/4 v0, 0x0

    .line 50
    if-nez p2, :cond_4

    .line 51
    .line 52
    iput-boolean p3, p1, Lcom/google/android/material/chip/SeslPeoplePicker;->mInitialized:Z

    .line 53
    .line 54
    iget-object p2, p1, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 55
    .line 56
    iget-object p2, p2, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const v3, 0x7f07034d

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    float-to-int v2, v2

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const v4, 0x7f07034c

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    float-to-int v3, v3

    .line 88
    iget-boolean v4, p1, Lcom/google/android/material/chip/SeslPeoplePicker;->mIsRtl:Z

    .line 89
    .line 90
    if-eqz v4, :cond_3

    .line 91
    .line 92
    invoke-virtual {v1, v3, v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {v1, v0, v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 97
    .line 98
    .line 99
    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    iget-object p2, p1, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 103
    .line 104
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-ne p2, p3, :cond_5

    .line 109
    .line 110
    const/4 p2, 0x2

    .line 111
    new-array p2, p2, [F

    .line 112
    .line 113
    fill-array-data p2, :array_0

    .line 114
    .line 115
    .line 116
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const v2, 0x7f0b00f3

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    int-to-long v1, v1

    .line 132
    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 133
    .line 134
    .line 135
    const v1, 0x7f0c0022

    .line 136
    .line 137
    .line 138
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 143
    .line 144
    .line 145
    new-instance v1, Lcom/google/android/material/chip/SeslPeoplePicker$2;

    .line 146
    .line 147
    invoke-direct {v1, p1}, Lcom/google/android/material/chip/SeslPeoplePicker$2;-><init>(Lcom/google/android/material/chip/SeslPeoplePicker;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p1, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 154
    .line 155
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    int-to-float v1, v1

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    const v2, 0x7f070190

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    add-float/2addr p0, v1

    .line 172
    iget-object v1, p1, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 173
    .line 174
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    int-to-float v1, v1

    .line 179
    add-float/2addr p0, v1

    .line 180
    new-instance v1, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda3;

    .line 181
    .line 182
    invoke-direct {v1, p1, p0, p3}, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/chip/SeslPeoplePicker;FI)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 189
    .line 190
    .line 191
    :cond_5
    iget-object p0, p1, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 192
    .line 193
    iget-boolean p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    .line 194
    .line 195
    if-eqz p0, :cond_6

    .line 196
    .line 197
    iget-object p0, p1, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 198
    .line 199
    new-instance p2, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda2;

    .line 200
    .line 201
    invoke-direct {p2, p1, v0}, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/chip/SeslPeoplePicker;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_6
    new-instance p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda2;

    .line 209
    .line 210
    invoke-direct {p0, p1, p3}, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/chip/SeslPeoplePicker;I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 214
    .line 215
    .line 216
    :cond_7
    :goto_2
    return-void

    .line 217
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getInternalHeight(F)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget v4, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    .line 18
    .line 19
    add-int v5, v2, v3

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    add-int/2addr v6, v5

    .line 30
    add-int/2addr v6, v4

    .line 31
    const/4 v5, 0x1

    .line 32
    move v7, v6

    .line 33
    move v6, v5

    .line 34
    :goto_0
    if-ge v5, v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    check-cast v8, Lcom/google/android/material/chip/Chip;

    .line 41
    .line 42
    iget-object v8, v8, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 43
    .line 44
    invoke-virtual {v8}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    add-int v9, v7, v8

    .line 49
    .line 50
    int-to-float v9, v9

    .line 51
    cmpg-float v9, v9, p1

    .line 52
    .line 53
    add-int/2addr v8, v4

    .line 54
    if-gez v9, :cond_1

    .line 55
    .line 56
    add-int/2addr v8, v7

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    add-int/2addr v8, v2

    .line 59
    add-int/2addr v8, v3

    .line 60
    add-int/lit8 v6, v6, 0x1

    .line 61
    .line 62
    :goto_1
    move v7, v8

    .line 63
    add-int/lit8 v5, v5, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget p1, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/2addr v0, p1

    .line 77
    mul-int/2addr v0, v6

    .line 78
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    add-int/2addr v1, v0

    .line 83
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    add-int/2addr p0, v1

    .line 88
    sub-int/2addr p0, p1

    .line 89
    return p0
.end method

.method public final getRowCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/chip/SeslChipGroup;->mRowCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTotalWidth()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_2

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    instance-of v4, v3, Lcom/google/android/material/chip/SeslChip;

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    check-cast v3, Lcom/google/android/material/chip/SeslChip;

    .line 28
    .line 29
    iget-object v3, v3, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    :goto_1
    add-int/2addr v1, v3

    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v2, 0x1

    .line 45
    if-le v0, v2, :cond_2

    .line 46
    .line 47
    iget p0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    .line 48
    .line 49
    add-int/lit8 v0, v0, -0x2

    .line 50
    .line 51
    mul-int/2addr v0, p0

    .line 52
    add-int/2addr v1, v0

    .line 53
    :cond_2
    return v1
.end method

.method public final onLayout(ZIIII)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iput v2, v0, Lcom/google/android/material/chip/SeslChipGroup;->mRowCount:I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    iput v1, v0, Lcom/google/android/material/chip/SeslChipGroup;->mRowCount:I

    .line 15
    .line 16
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 17
    .line 18
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ne v3, v1, :cond_1

    .line 23
    .line 24
    move v3, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v3, v2

    .line 27
    :goto_0
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    :goto_1
    if-eqz v3, :cond_3

    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    iget v7, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 54
    .line 55
    iget v8, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 56
    .line 57
    sub-int v9, p4, p2

    .line 58
    .line 59
    sub-int v5, v9, v5

    .line 60
    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    move v9, v5

    .line 65
    :goto_3
    move v11, v2

    .line 66
    move v12, v4

    .line 67
    move v10, v6

    .line 68
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 69
    .line 70
    .line 71
    move-result v13

    .line 72
    if-ge v11, v13, :cond_9

    .line 73
    .line 74
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v13

    .line 78
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    const/16 v15, 0x8

    .line 83
    .line 84
    const v2, 0x7f0a0900

    .line 85
    .line 86
    .line 87
    if-ne v14, v15, :cond_5

    .line 88
    .line 89
    const/4 v14, -0x1

    .line 90
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v14

    .line 94
    invoke-virtual {v13, v2, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto :goto_8

    .line 98
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 99
    .line 100
    .line 101
    move-result-object v14

    .line 102
    instance-of v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 103
    .line 104
    if-eqz v15, :cond_6

    .line 105
    .line 106
    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 107
    .line 108
    invoke-virtual {v14}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    invoke-virtual {v14}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 113
    .line 114
    .line 115
    move-result v14

    .line 116
    goto :goto_5

    .line 117
    :cond_6
    const/4 v14, 0x0

    .line 118
    const/4 v15, 0x0

    .line 119
    :goto_5
    add-int v16, v12, v15

    .line 120
    .line 121
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 122
    .line 123
    .line 124
    move-result v17

    .line 125
    add-int v2, v17, v16

    .line 126
    .line 127
    iget-boolean v1, v0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 128
    .line 129
    if-nez v1, :cond_7

    .line 130
    .line 131
    if-le v2, v5, :cond_7

    .line 132
    .line 133
    add-int v10, v6, v7

    .line 134
    .line 135
    iget v1, v0, Lcom/google/android/material/chip/SeslChipGroup;->mRowCount:I

    .line 136
    .line 137
    const/4 v2, 0x1

    .line 138
    add-int/2addr v1, v2

    .line 139
    iput v1, v0, Lcom/google/android/material/chip/SeslChipGroup;->mRowCount:I

    .line 140
    .line 141
    move v12, v4

    .line 142
    goto :goto_6

    .line 143
    :cond_7
    const/4 v2, 0x1

    .line 144
    :goto_6
    iget v1, v0, Lcom/google/android/material/chip/SeslChipGroup;->mRowCount:I

    .line 145
    .line 146
    sub-int/2addr v1, v2

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    const v6, 0x7f0a0900

    .line 152
    .line 153
    .line 154
    invoke-virtual {v13, v6, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    add-int v1, v12, v15

    .line 158
    .line 159
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    add-int/2addr v6, v1

    .line 164
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 165
    .line 166
    .line 167
    move-result v16

    .line 168
    add-int v2, v16, v10

    .line 169
    .line 170
    if-eqz v3, :cond_8

    .line 171
    .line 172
    sub-int v1, v9, v6

    .line 173
    .line 174
    sub-int v6, v9, v12

    .line 175
    .line 176
    sub-int/2addr v6, v15

    .line 177
    invoke-virtual {v13, v1, v10, v6, v2}, Landroid/view/View;->layout(IIII)V

    .line 178
    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_8
    invoke-virtual {v13, v1, v10, v6, v2}, Landroid/view/View;->layout(IIII)V

    .line 182
    .line 183
    .line 184
    :goto_7
    add-int/2addr v15, v14

    .line 185
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    add-int/2addr v1, v15

    .line 190
    add-int/2addr v1, v8

    .line 191
    add-int/2addr v12, v1

    .line 192
    move v6, v2

    .line 193
    :goto_8
    add-int/lit8 v11, v11, 0x1

    .line 194
    .line 195
    const/4 v1, 0x1

    .line 196
    const/4 v2, 0x0

    .line 197
    goto/16 :goto_4

    .line 198
    .line 199
    :cond_9
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-gtz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget p2, p0, Lcom/google/android/material/chip/SeslChipGroup;->mEmptyContainerHeight:I

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final postRemoveView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/SeslChipGroup;->mChipRemoveListener:Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/chip/SeslChipGroup;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final removeAllViews()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->setStaticHeight()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->addRemoveAnim()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->postRemoveView()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final removeAllViewsInLayout()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->setStaticHeight()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->addRemoveAnim()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->postRemoveView()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->setStaticHeight()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->addRemoveAnim()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->postRemoveView()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final removeViewAt(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->setStaticHeight()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->addRemoveAnim()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->postRemoveView()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final removeViewInLayout(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->setStaticHeight()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->addRemoveAnim()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->postRemoveView()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final removeViews(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->setStaticHeight()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->addRemoveAnim()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->postRemoveView()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final removeViewsInLayout(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->setStaticHeight()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->addRemoveAnim()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->postRemoveView()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setStaticHeight()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/google/android/material/chip/SeslChipGroup;->mEmptyContainerHeight:I

    .line 6
    .line 7
    return-void
.end method
