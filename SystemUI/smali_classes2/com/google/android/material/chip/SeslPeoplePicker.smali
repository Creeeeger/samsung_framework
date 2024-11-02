.class public Lcom/google/android/material/chip/SeslPeoplePicker;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

.field public final mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

.field public mInitialized:Z

.field public final mIsRtl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/SeslPeoplePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/SeslPeoplePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/chip/SeslPeoplePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    sget p3, Landroidx/core/text/TextUtilsCompat;->$r8$clinit:I

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 7
    :goto_0
    iput-boolean p2, p0, Lcom/google/android/material/chip/SeslPeoplePicker;->mIsRtl:Z

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p4, 0x7f0d03cc

    invoke-virtual {p2, p4, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p4, 0x7f0a025c

    .line 9
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/google/android/material/chip/SeslChipGroup;

    iput-object p4, p0, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 10
    iput-boolean p3, p4, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    const v0, 0x7f0a0294

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/chip/SeslExpandableContainer;

    iput-object p2, p0, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 12
    iput-boolean p3, p2, Lcom/google/android/material/chip/SeslExpandableContainer;->mFadeAnimation:Z

    .line 13
    new-instance p3, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/chip/SeslPeoplePicker;)V

    .line 14
    iput-object p3, p2, Lcom/google/android/material/chip/SeslExpandableContainer;->mOnExpansionButtonClickedListener:Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda0;

    .line 15
    new-instance p2, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/chip/SeslPeoplePicker;Landroid/content/Context;)V

    .line 16
    iput-object p2, p4, Lcom/google/android/material/chip/SeslChipGroup;->mChipAddListener:Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda1;

    .line 17
    new-instance p2, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/chip/SeslPeoplePicker;Landroid/content/Context;)V

    .line 18
    iput-object p2, p4, Lcom/google/android/material/chip/SeslChipGroup;->mChipRemoveListener:Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final updateFloatWhenExpanded()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/SeslExpansionButton;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingStart()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v3, p0, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingEnd()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iget-object v4, p0, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 42
    .line 43
    iget v5, v4, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    .line 44
    .line 45
    add-int/2addr v1, v3

    .line 46
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    add-int/2addr v4, v1

    .line 55
    add-int/2addr v4, v5

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v6, 0x1

    .line 61
    move v7, v6

    .line 62
    :goto_0
    iget-object v8, p0, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 63
    .line 64
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-ge v7, v8, :cond_1

    .line 69
    .line 70
    iget-object v8, p0, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 71
    .line 72
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    check-cast v8, Lcom/google/android/material/chip/Chip;

    .line 77
    .line 78
    invoke-virtual {v8}, Landroid/widget/CheckBox;->getWidth()I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    add-int v9, v4, v8

    .line 83
    .line 84
    if-ge v9, v1, :cond_1

    .line 85
    .line 86
    add-int/2addr v8, v5

    .line 87
    add-int/2addr v4, v8

    .line 88
    add-int/lit8 v7, v7, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    sub-int/2addr v4, v5

    .line 92
    sub-int/2addr v4, v3

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    iget-object p0, p0, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 98
    .line 99
    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    sub-int/2addr v1, p0

    .line 106
    if-lt v4, v1, :cond_2

    .line 107
    .line 108
    invoke-virtual {v0, v6}, Lcom/google/android/material/chip/SeslExpansionButton;->setFloated(Z)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/SeslExpansionButton;->setFloated(Z)V

    .line 113
    .line 114
    .line 115
    :cond_3
    :goto_1
    return-void
.end method
