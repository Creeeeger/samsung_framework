.class public Lcom/google/android/material/chip/SeslExpandableContainer;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mChipGroupInitialized:Z

.field public mExpanded:Z

.field public final mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

.field public final mExpansionButtonContainerId:I

.field public mFadeAnimation:Z

.field public mFloatChangeAllowed:Z

.field public final mIsRtl:Z

.field public mOnExpansionButtonClickedListener:Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda0;

.field public final mPaddingAllowed:Z

.field public final mPaddingView:Landroid/view/View;

.field public final mScrollView:Landroid/widget/HorizontalScrollView;

.field public mScrollViewPos:I

.field public final mScrollingChipsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/SeslExpandableContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/SeslExpandableContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/chip/SeslExpandableContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    const/4 p3, 0x1

    .line 6
    iput-boolean p3, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingAllowed:Z

    .line 7
    iput p2, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollViewPos:I

    .line 8
    iput-boolean p3, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mFloatChangeAllowed:Z

    .line 9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    sget v0, Landroidx/core/text/TextUtilsCompat;->$r8$clinit:I

    .line 10
    invoke-static {p4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p4

    if-ne p4, p3, :cond_0

    move p4, p3

    goto :goto_0

    :cond_0
    move p4, p2

    .line 11
    :goto_0
    iput-boolean p4, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mIsRtl:Z

    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d03c2

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0a05

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 15
    new-instance v2, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/chip/SeslExpandableContainer;)V

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    const v1, 0x7f0a0a06

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollingChipsContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0a04

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingView:Landroid/view/View;

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 19
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButtonContainerId:I

    .line 20
    new-instance v1, Lcom/google/android/material/chip/SeslExpansionButton;

    invoke-direct {v1, p1}, Lcom/google/android/material/chip/SeslExpansionButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 21
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07034d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 23
    invoke-virtual {v2, p2, v3, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f081002

    .line 25
    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f081003

    .line 26
    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    iput-boolean p3, v1, Lcom/google/android/material/chip/SeslExpansionButton;->mAutoDisappear:Z

    .line 28
    iput-boolean p2, v1, Lcom/google/android/material/chip/SeslExpansionButton;->mExpanded:Z

    .line 29
    invoke-virtual {v1}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 30
    invoke-virtual {v1, p3}, Lcom/google/android/material/chip/SeslExpansionButton;->setFloated(Z)V

    const/16 p2, 0x8

    .line 31
    invoke-virtual {v1, p2}, Lcom/google/android/material/chip/SeslExpansionButton;->setVisibility(I)V

    .line 32
    new-instance p2, Landroid/widget/RelativeLayout;

    invoke-direct {p2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 34
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    if-eqz p4, :cond_1

    const/4 p1, 0x3

    .line 36
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x5

    .line 37
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 38
    :goto_1
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 39
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getScrollContentsWidth()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    move v0, v1

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollingChipsContainer:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_3

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollingChipsContainer:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    instance-of v3, v2, Lcom/google/android/material/chip/SeslChipGroup;

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    check-cast v2, Lcom/google/android/material/chip/SeslChipGroup;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/google/android/material/chip/SeslChipGroup;->getTotalWidth()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    :goto_1
    add-int/2addr v2, v0

    .line 45
    move v0, v2

    .line 46
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->refreshLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final refreshLayout()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpanded:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollingChipsContainer:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_a

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 20
    .line 21
    iput-boolean v2, v0, Lcom/google/android/material/chip/SeslExpansionButton;->mAutoDisappear:Z

    .line 22
    .line 23
    iget-object v0, v0, Lcom/google/android/material/chip/SeslExpansionButton;->mTimer:Lcom/google/android/material/chip/SeslExpansionButton$1;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollViewPos:I

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollingChipsContainer:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    new-array v3, v0, [Landroid/view/View;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollingChipsContainer:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    iget-boolean v5, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mIsRtl:Z

    .line 47
    .line 48
    move v6, v2

    .line 49
    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-ge v6, v7, :cond_0

    .line 54
    .line 55
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    aput-object v7, v3, v6

    .line 60
    .line 61
    add-int/lit8 v6, v6, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    if-eqz v5, :cond_1

    .line 65
    .line 66
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    move v4, v2

    .line 74
    move v5, v4

    .line 75
    :goto_1
    if-ge v4, v0, :cond_3

    .line 76
    .line 77
    aget-object v6, v3, v4

    .line 78
    .line 79
    iget-boolean v7, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingAllowed:Z

    .line 80
    .line 81
    if-eqz v7, :cond_2

    .line 82
    .line 83
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    iget-object v8, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingView:Landroid/view/View;

    .line 88
    .line 89
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-ne v7, v8, :cond_2

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    iget-object v7, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollingChipsContainer:Landroid/widget/LinearLayout;

    .line 97
    .line 98
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v7, v1, 0x1

    .line 102
    .line 103
    invoke-virtual {p0, v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    add-int/2addr v5, v1

    .line 111
    move v1, v7

    .line 112
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 116
    .line 117
    const/16 v1, 0x8

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_a

    .line 129
    .line 130
    if-lez v5, :cond_a

    .line 131
    .line 132
    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 133
    .line 134
    invoke-virtual {p0, v2}, Lcom/google/android/material/chip/SeslExpansionButton;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_5

    .line 138
    .line 139
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    const/4 v3, 0x2

    .line 144
    if-le v0, v3, :cond_a

    .line 145
    .line 146
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 147
    .line 148
    iput-boolean v1, v0, Lcom/google/android/material/chip/SeslExpansionButton;->mAutoDisappear:Z

    .line 149
    .line 150
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    new-array v3, v0, [Landroid/view/View;

    .line 160
    .line 161
    iget-boolean v4, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mIsRtl:Z

    .line 162
    .line 163
    move v5, v2

    .line 164
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    if-ge v5, v6, :cond_5

    .line 169
    .line 170
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    aput-object v6, v3, v5

    .line 175
    .line 176
    add-int/lit8 v5, v5, 0x1

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_5
    if-eqz v4, :cond_6

    .line 180
    .line 181
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 186
    .line 187
    .line 188
    :cond_6
    move v4, v2

    .line 189
    move v5, v4

    .line 190
    :goto_4
    if-ge v4, v0, :cond_9

    .line 191
    .line 192
    aget-object v6, v3, v4

    .line 193
    .line 194
    iget-boolean v7, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mChipGroupInitialized:Z

    .line 195
    .line 196
    if-nez v7, :cond_7

    .line 197
    .line 198
    instance-of v7, v6, Lcom/google/android/material/chip/SeslChipGroup;

    .line 199
    .line 200
    if-eqz v7, :cond_7

    .line 201
    .line 202
    move-object v7, v6

    .line 203
    check-cast v7, Lcom/google/android/material/chip/SeslChipGroup;

    .line 204
    .line 205
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 206
    .line 207
    .line 208
    move-result v8

    .line 209
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingStart()I

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingEnd()I

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    add-int/2addr v10, v9

    .line 218
    sub-int/2addr v8, v10

    .line 219
    iput v8, v7, Lcom/google/android/material/chip/SeslChipGroup;->mChipMaxWidth:I

    .line 220
    .line 221
    iput-boolean v1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mChipGroupInitialized:Z

    .line 222
    .line 223
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    iget-object v8, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 228
    .line 229
    invoke-virtual {v8}, Landroid/widget/HorizontalScrollView;->getId()I

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    if-eq v7, v8, :cond_8

    .line 234
    .line 235
    iget v8, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButtonContainerId:I

    .line 236
    .line 237
    if-eq v7, v8, :cond_8

    .line 238
    .line 239
    iget-object v8, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingView:Landroid/view/View;

    .line 240
    .line 241
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-eq v7, v8, :cond_8

    .line 246
    .line 247
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 248
    .line 249
    .line 250
    iget-object v7, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollingChipsContainer:Landroid/widget/LinearLayout;

    .line 251
    .line 252
    add-int/lit8 v8, v5, 0x1

    .line 253
    .line 254
    invoke-virtual {v7, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 255
    .line 256
    .line 257
    move v5, v8

    .line 258
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 262
    .line 263
    iget v1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollViewPos:I

    .line 264
    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->updateScrollExpansionButton()V

    .line 269
    .line 270
    .line 271
    :cond_a
    :goto_5
    return-void
.end method

.method public final updateScrollExpansionButton()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->getScrollContentsWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, 0xa

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingView:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-boolean v3, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingAllowed:Z

    .line 18
    .line 19
    const/4 v4, 0x4

    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v3, :cond_4

    .line 22
    .line 23
    iget-object v3, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingView:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    sub-int v2, v0, v2

    .line 32
    .line 33
    if-gt v2, v1, :cond_1

    .line 34
    .line 35
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingView:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/16 v3, 0x8

    .line 42
    .line 43
    if-ne v2, v3, :cond_3

    .line 44
    .line 45
    if-le v0, v1, :cond_3

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 56
    .line 57
    invoke-virtual {v0, v5}, Lcom/google/android/material/chip/SeslExpansionButton;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 61
    .line 62
    new-instance v1, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda1;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/chip/SeslExpandableContainer;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_7

    .line 78
    .line 79
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 80
    .line 81
    invoke-virtual {v0, v4}, Lcom/google/android/material/chip/SeslExpansionButton;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    if-le v0, v1, :cond_6

    .line 86
    .line 87
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 96
    .line 97
    invoke-virtual {v0, v5}, Lcom/google/android/material/chip/SeslExpansionButton;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 101
    .line 102
    new-instance v1, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda1;

    .line 103
    .line 104
    invoke-direct {v1, p0}, Lcom/google/android/material/chip/SeslExpandableContainer$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/chip/SeslExpandableContainer;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_7

    .line 118
    .line 119
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 120
    .line 121
    invoke-virtual {v0, v4}, Lcom/google/android/material/chip/SeslExpansionButton;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :cond_7
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mFloatChangeAllowed:Z

    .line 125
    .line 126
    if-eqz v0, :cond_d

    .line 127
    .line 128
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_d

    .line 135
    .line 136
    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingAllowed:Z

    .line 137
    .line 138
    const/4 v1, 0x1

    .line 139
    if-eqz v0, :cond_c

    .line 140
    .line 141
    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mIsRtl:Z

    .line 142
    .line 143
    if-eqz v0, :cond_8

    .line 144
    .line 145
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iget-object v2, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mPaddingView:Landroid/view/View;

    .line 152
    .line 153
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    div-int/lit8 v2, v2, 0x2

    .line 158
    .line 159
    if-gt v0, v2, :cond_9

    .line 160
    .line 161
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mIsRtl:Z

    .line 162
    .line 163
    if-nez v0, :cond_a

    .line 164
    .line 165
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->getScrollContentsWidth()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    sub-int/2addr v2, v3

    .line 180
    if-ge v0, v2, :cond_a

    .line 181
    .line 182
    :cond_9
    move v0, v1

    .line 183
    goto :goto_1

    .line 184
    :cond_a
    move v0, v5

    .line 185
    :goto_1
    if-eqz v0, :cond_b

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_b
    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 189
    .line 190
    invoke-virtual {p0, v5}, Lcom/google/android/material/chip/SeslExpansionButton;->setFloated(Z)V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_c
    :goto_2
    iget-object p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->mExpansionButton:Lcom/google/android/material/chip/SeslExpansionButton;

    .line 195
    .line 196
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/SeslExpansionButton;->setFloated(Z)V

    .line 197
    .line 198
    .line 199
    :cond_d
    :goto_3
    return-void
.end method
