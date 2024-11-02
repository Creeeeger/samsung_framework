.class public final Lcom/android/systemui/privacy/television/PrivacyItemsChip;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mChipBackgroundDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

.field public final mCollapsedIconSize:I

.field public final mConfig:Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

.field public final mIconMarginHorizontal:I

.field public final mIconSize:I

.field public final mIcons:Ljava/util/List;

.field public mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mIcons:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mState:I

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mConfig:Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;

    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const v2, 0x7f070b2b

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iput v2, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mIconSize:I

    .line 33
    .line 34
    const v2, 0x7f070b23

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iput v2, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mCollapsedIconSize:I

    .line 42
    .line 43
    const v2, 0x7f070b2a

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iput v1, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mIconMarginHorizontal:I

    .line 51
    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const v2, 0x7f0d04ea

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    const v1, 0x7f0a04b6

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Landroid/widget/LinearLayout;

    .line 70
    .line 71
    new-instance v2, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    .line 72
    .line 73
    iget v3, p2, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;->colorRes:I

    .line 74
    .line 75
    iget-boolean v4, p2, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;->collapseToDot:Z

    .line 76
    .line 77
    invoke-direct {v2, p1, v3, v4}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;-><init>(Landroid/content/Context;IZ)V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mChipBackgroundDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    .line 81
    .line 82
    new-instance v3, Lcom/android/systemui/privacy/television/PrivacyItemsChip$1;

    .line 83
    .line 84
    invoke-direct {v3, p0}, Lcom/android/systemui/privacy/television/PrivacyItemsChip$1;-><init>(Lcom/android/systemui/privacy/television/PrivacyItemsChip;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 91
    .line 92
    .line 93
    iget-object p2, p2, Lcom/android/systemui/privacy/television/PrivacyItemsChip$ChipConfig;->privacyTypes:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_0

    .line 104
    .line 105
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lcom/android/systemui/privacy/PrivacyType;

    .line 110
    .line 111
    new-instance v3, Landroid/widget/ImageView;

    .line 112
    .line 113
    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, p1}, Lcom/android/systemui/privacy/PrivacyType;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    const v5, 0x7f0604b6

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    .line 136
    .line 137
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 138
    .line 139
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 140
    .line 141
    .line 142
    iget-object v2, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mIcons:Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    iget v2, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mIconSize:I

    .line 148
    .line 149
    invoke-virtual {v1, v3, v2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 157
    .line 158
    iget v4, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mIconMarginHorizontal:I

    .line 159
    .line 160
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 161
    .line 162
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 163
    .line 164
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyItemsChip;->mChipBackgroundDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRectF:Landroid/graphics/RectF;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->getForegroundBounds(Landroid/graphics/RectF;)V

    .line 6
    .line 7
    .line 8
    iget v1, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mExpandedChipRadius:F

    .line 9
    .line 10
    iget-boolean v2, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseToDot:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget v2, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapsedChipRadius:F

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget v2, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRadius:I

    .line 18
    .line 19
    int-to-float v2, v2

    .line 20
    :goto_0
    iget v3, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseProgress:F

    .line 21
    .line 22
    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mPath:Landroid/graphics/Path;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mPath:Landroid/graphics/Path;

    .line 32
    .line 33
    iget-object v3, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRectF:Landroid/graphics/RectF;

    .line 34
    .line 35
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 36
    .line 37
    invoke-virtual {v2, v3, v1, v1, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mPath:Landroid/graphics/Path;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 43
    .line 44
    .line 45
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
