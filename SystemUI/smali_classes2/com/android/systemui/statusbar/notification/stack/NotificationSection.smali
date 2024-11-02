.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSection;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBottomAnimator:Landroid/animation/ObjectAnimator;

.field public final mBounds:Landroid/graphics/Rect;

.field public final mBucket:I

.field public final mCurrentBounds:Landroid/graphics/Rect;

.field public final mEndAnimationRect:Landroid/graphics/Rect;

.field public mFirstVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public mLastVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public final mOwningView:Landroid/view/View;

.field public final mStartAnimationRect:Landroid/graphics/Rect;

.field public mTopAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mCurrentBounds:Landroid/graphics/Rect;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mStartAnimationRect:Landroid/graphics/Rect;

    .line 25
    .line 26
    new-instance v0, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mEndAnimationRect:Landroid/graphics/Rect;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mTopAnimator:Landroid/animation/ObjectAnimator;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mOwningView:Landroid/view/View;

    .line 39
    .line 40
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBucket:I

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final updateBounds(IIZ)I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mFirstVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mEndAnimationRect:Landroid/graphics/Rect;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mCurrentBounds:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getFinalTranslationY(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    float-to-double v6, v6

    .line 18
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide v6

    .line 22
    double-to-int v6, v6

    .line 23
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mTopAnimator:Landroid/animation/ObjectAnimator;

    .line 24
    .line 25
    if-nez v7, :cond_0

    .line 26
    .line 27
    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 28
    .line 29
    if-eq v8, v6, :cond_1

    .line 30
    .line 31
    :cond_0
    if-eqz v7, :cond_2

    .line 32
    .line 33
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    if-ne v7, v6, :cond_2

    .line 36
    .line 37
    :cond_1
    move v7, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move v7, v3

    .line 40
    :goto_0
    if-eqz v7, :cond_3

    .line 41
    .line 42
    move v7, v6

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    float-to-double v7, v7

    .line 49
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 50
    .line 51
    .line 52
    move-result-wide v7

    .line 53
    double-to-int v7, v7

    .line 54
    :goto_1
    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_5

    .line 63
    .line 64
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->getFinalActualHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    add-int/2addr v8, v6

    .line 69
    invoke-static {p1, v8}, Ljava/lang/Math;->max(II)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p3, :cond_5

    .line 74
    .line 75
    iget p3, v5, Landroid/graphics/Rect;->left:I

    .line 76
    .line 77
    int-to-float p3, p3

    .line 78
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    const/4 v8, 0x0

    .line 83
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    add-float/2addr v6, p3

    .line 88
    float-to-int p3, v6

    .line 89
    iput p3, v5, Landroid/graphics/Rect;->left:I

    .line 90
    .line 91
    iget p3, v5, Landroid/graphics/Rect;->right:I

    .line 92
    .line 93
    int-to-float p3, p3

    .line 94
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    add-float/2addr v0, p3

    .line 103
    float-to-int p3, v0

    .line 104
    iput p3, v5, Landroid/graphics/Rect;->right:I

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    move v7, p1

    .line 108
    :cond_5
    :goto_2
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mLastVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 109
    .line 110
    if-eqz p3, :cond_a

    .line 111
    .line 112
    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getFinalTranslationY(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->getFinalActualHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    int-to-float v6, v6

    .line 121
    add-float/2addr v0, v6

    .line 122
    iget v6, p3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    .line 123
    .line 124
    int-to-float v6, v6

    .line 125
    sub-float/2addr v0, v6

    .line 126
    float-to-double v8, v0

    .line 127
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    .line 128
    .line 129
    .line 130
    move-result-wide v8

    .line 131
    double-to-int v0, v8

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    .line 133
    .line 134
    if-nez p0, :cond_6

    .line 135
    .line 136
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 137
    .line 138
    if-eq v4, v0, :cond_8

    .line 139
    .line 140
    :cond_6
    if-eqz p0, :cond_7

    .line 141
    .line 142
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 143
    .line 144
    if-ne p0, v0, :cond_7

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_7
    move v1, v3

    .line 148
    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_9
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    iget v0, p3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    .line 156
    .line 157
    int-to-float v0, v0

    .line 158
    add-float/2addr p0, v0

    .line 159
    iget v0, p3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    .line 160
    .line 161
    int-to-float v0, v0

    .line 162
    sub-float/2addr p0, v0

    .line 163
    float-to-int v0, p0

    .line 164
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    iget p3, p3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    .line 169
    .line 170
    int-to-float p3, p3

    .line 171
    add-float/2addr p0, p3

    .line 172
    int-to-float p2, p2

    .line 173
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    float-to-int p2, p0

    .line 178
    :goto_4
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    :cond_a
    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    iput v7, v5, Landroid/graphics/Rect;->top:I

    .line 191
    .line 192
    iput p0, v5, Landroid/graphics/Rect;->bottom:I

    .line 193
    .line 194
    return p0
.end method
