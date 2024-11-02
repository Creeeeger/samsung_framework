.class public final synthetic Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/privacy/television/TvPrivacyChipsController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/privacy/television/TvPrivacyChipsController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChipsContainer:Landroid/view/ViewGroup;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mCollapseTransition:Landroid/transition/TransitionSet;

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController;->mChips:Ljava/util/List;

    .line 14
    .line 15
    check-cast p0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_6

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;

    .line 32
    .line 33
    iget v1, v0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mState:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eq v1, v2, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v2, 0x2

    .line 40
    if-eq v1, v2, :cond_2

    .line 41
    .line 42
    iput v2, v0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mState:I

    .line 43
    .line 44
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mIcons:Ljava/util/List;

    .line 45
    .line 46
    check-cast v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroid/widget/ImageView;

    .line 63
    .line 64
    iget-object v3, v0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mConfig:Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

    .line 65
    .line 66
    iget-boolean v3, v3, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;->collapseToDot:Z

    .line 67
    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    const/16 v3, 0x8

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iget v4, v0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mCollapsedIconSize:I

    .line 81
    .line 82
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 83
    .line 84
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    iget-object v0, v0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mChipBackgroundDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    .line 91
    .line 92
    iget-boolean v1, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    .line 93
    .line 94
    if-nez v1, :cond_5

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    const/4 v1, 0x0

    .line 98
    iput-boolean v1, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    .line 99
    .line 100
    iget-object v1, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mExpand:Landroid/animation/Animator;

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 103
    .line 104
    .line 105
    iget-object v0, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapse:Landroid/animation/Animator;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_6
    :goto_2
    return-void
.end method
