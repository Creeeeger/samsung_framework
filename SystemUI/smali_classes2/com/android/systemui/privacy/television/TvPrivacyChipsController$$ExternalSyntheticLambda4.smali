.class public final synthetic Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(ILjava/util/Set;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;->f$0:Ljava/util/Set;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;->f$0:Ljava/util/Set;

    .line 8
    .line 9
    check-cast p1, Lcom/android/systemui/privacy/PrivacyItem;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    .line 12
    .line 13
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvPrivacyChipsController$$ExternalSyntheticLambda4;->f$0:Ljava/util/Set;

    .line 18
    .line 19
    check-cast p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    move v1, v0

    .line 23
    move v2, v1

    .line 24
    :goto_1
    iget-object v3, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mConfig:Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;->privacyTypes:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x1

    .line 33
    const/16 v5, 0x8

    .line 34
    .line 35
    if-ge v1, v3, :cond_3

    .line 36
    .line 37
    iget-object v3, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mConfig:Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

    .line 38
    .line 39
    iget-object v3, v3, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;->privacyTypes:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/android/systemui/privacy/PrivacyType;

    .line 46
    .line 47
    iget-object v6, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mIcons:Ljava/util/List;

    .line 48
    .line 49
    check-cast v6, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Landroid/widget/ImageView;

    .line 56
    .line 57
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_0
    move v2, v0

    .line 67
    goto :goto_3

    .line 68
    :cond_1
    :goto_2
    move v2, v4

    .line 69
    :goto_3
    if-eqz v3, :cond_2

    .line 70
    .line 71
    move v5, v0

    .line 72
    :cond_2
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iget v4, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mIconSize:I

    .line 80
    .line 81
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    .line 83
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    .line 85
    invoke-virtual {v6}, Landroid/widget/ImageView;->requestLayout()V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    if-eqz v2, :cond_8

    .line 92
    .line 93
    iget p0, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mState:I

    .line 94
    .line 95
    if-nez p0, :cond_5

    .line 96
    .line 97
    iget-object p0, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mChipBackgroundDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    .line 98
    .line 99
    iget-boolean v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_4
    iput-boolean v4, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    iput v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseProgress:F

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_5
    const/4 v1, 0x2

    .line 114
    if-ne p0, v1, :cond_7

    .line 115
    .line 116
    iget-object p0, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mChipBackgroundDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    .line 117
    .line 118
    iget-boolean v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    .line 119
    .line 120
    if-eqz v1, :cond_6

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_6
    iput-boolean v4, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    .line 124
    .line 125
    iget-object v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapse:Landroid/animation/Animator;

    .line 126
    .line 127
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 128
    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mExpand:Landroid/animation/Animator;

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 133
    .line 134
    .line 135
    :cond_7
    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    iget p0, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mState:I

    .line 139
    .line 140
    if-eq p0, v4, :cond_9

    .line 141
    .line 142
    iput v4, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mState:I

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_8
    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    iget p0, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mState:I

    .line 149
    .line 150
    if-eqz p0, :cond_9

    .line 151
    .line 152
    iput v0, p1, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mState:I

    .line 153
    .line 154
    :cond_9
    :goto_5
    return-void

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
