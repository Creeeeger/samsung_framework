.class public Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBrightnessDetailContainerView:Landroid/widget/ImageView;

.field public final mContext:Landroid/content/Context;

.field public mSlider:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

.field public mTouchDownDetailView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq v0, v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->isTouched(Landroid/view/View;FF)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mTouchDownDetailView:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mSlider:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 38
    .line 39
    iput-boolean v1, v0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDragging:Z

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mTouchDownDetailView:Z

    .line 42
    .line 43
    if-eqz v0, :cond_8

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mSlider:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 58
    .line 59
    iget-boolean v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mTouchDownDetailView:Z

    .line 60
    .line 61
    xor-int/2addr v1, v2

    .line 62
    iput-boolean v1, v0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDetailViewTouched:Z

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mSlider:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 67
    .line 68
    iget-boolean v0, v0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDragging:Z

    .line 69
    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mTouchDownDetailView:Z

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->isTouched(Landroid/view/View;FF)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    .line 107
    .line 108
    .line 109
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mTouchDownDetailView:Z

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mSlider:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 112
    .line 113
    iput-boolean v2, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDetailViewTouched:Z

    .line 114
    .line 115
    iput-boolean v2, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDragging:Z

    .line 116
    .line 117
    return v1

    .line 118
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mTouchDownDetailView:Z

    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mSlider:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 121
    .line 122
    iput-boolean v2, v0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDetailViewTouched:Z

    .line 123
    .line 124
    iput-boolean v2, v0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDragging:Z

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mSlider:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->isTouched(Landroid/view/View;FF)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_7

    .line 142
    .line 143
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->isTouched(Landroid/view/View;FF)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_7

    .line 158
    .line 159
    return v1

    .line 160
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->isTouched(Landroid/view/View;FF)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_8

    .line 175
    .line 176
    iput-boolean v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mTouchDownDetailView:Z

    .line 177
    .line 178
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mSlider:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 179
    .line 180
    iput-boolean v1, v0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDetailViewTouched:Z

    .line 181
    .line 182
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    return p0
.end method

.method public final isTouched(Landroid/view/View;FF)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne p0, v2, :cond_0

    .line 16
    .line 17
    move p0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p0, v1

    .line 20
    :goto_0
    if-eqz p0, :cond_2

    .line 21
    .line 22
    aget p0, v0, v1

    .line 23
    .line 24
    int-to-float v3, p0

    .line 25
    cmpg-float v3, p2, v3

    .line 26
    .line 27
    if-gez v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    sub-int/2addr p0, v3

    .line 34
    int-to-float p0, p0

    .line 35
    cmpl-float p0, p2, p0

    .line 36
    .line 37
    if-lez p0, :cond_1

    .line 38
    .line 39
    aget p0, v0, v2

    .line 40
    .line 41
    int-to-float p2, p0

    .line 42
    cmpg-float p2, p3, p2

    .line 43
    .line 44
    if-gez p2, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    sub-int/2addr p0, p1

    .line 51
    int-to-float p0, p0

    .line 52
    cmpl-float p0, p3, p0

    .line 53
    .line 54
    if-lez p0, :cond_1

    .line 55
    .line 56
    move v1, v2

    .line 57
    :cond_1
    return v1

    .line 58
    :cond_2
    aget p0, v0, v1

    .line 59
    .line 60
    int-to-float v3, p0

    .line 61
    cmpl-float v3, p2, v3

    .line 62
    .line 63
    if-lez v3, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    add-int/2addr v3, p0

    .line 70
    int-to-float p0, v3

    .line 71
    cmpg-float p0, p2, p0

    .line 72
    .line 73
    if-gez p0, :cond_3

    .line 74
    .line 75
    aget p0, v0, v2

    .line 76
    .line 77
    int-to-float p2, p0

    .line 78
    cmpl-float p2, p3, p2

    .line 79
    .line 80
    if-lez p2, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    add-int/2addr p1, p0

    .line 87
    int-to-float p0, p1

    .line 88
    cmpg-float p0, p3, p0

    .line 89
    .line 90
    if-gez p0, :cond_3

    .line 91
    .line 92
    move v1, v2

    .line 93
    :cond_3
    return v1
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0b0f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mSlider:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 14
    .line 15
    const v0, 0x7f0a01af

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessTouchEnhancerView;->mBrightnessDetailContainerView:Landroid/widget/ImageView;

    .line 25
    .line 26
    return-void
.end method
