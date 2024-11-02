.class public abstract Lcom/android/systemui/qs/customize/SecQSCustomizerBase;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public isShown:Z

.field public mActiveColumns:I

.field public mActiveRows:I

.field public mActiveShowLabel:Z

.field public final mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

.field public mActiveWeight:F

.field public mAvailableColumns:I

.field public mAvailableRows:I

.field public final mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

.field public mAvailableWeight:F

.field public final mContext:Landroid/content/Context;

.field public mCutOutHeight:I

.field public mEditResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

.field public mIsDragging:Z

.field public mIsMultiTouch:Z

.field public mMinNum:I

.field public mSummary:Landroid/widget/LinearLayout;

.field public mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mIsDragging:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mIsMultiTouch:Z

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    iput v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveRows:I

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveColumns:I

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableRows:I

    .line 17
    .line 18
    iput v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableColumns:I

    .line 19
    .line 20
    int-to-float v1, v1

    .line 21
    iput v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveWeight:F

    .line 22
    .line 23
    int-to-float v1, v3

    .line 24
    iput v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableWeight:F

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveShowLabel:Z

    .line 28
    .line 29
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const v2, 0x7f0d0377

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    const v1, 0x7f0a084d

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 61
    .line 62
    const v1, 0x7f0a084c

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 70
    .line 71
    iput-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 72
    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const v2, 0x7f0d02d8

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    .line 85
    .line 86
    iput-object p1, v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPanelTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 89
    .line 90
    .line 91
    return-void
.end method


# virtual methods
.method public final isShown()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->isShown:Z

    .line 2
    .line 3
    return p0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sub-int/2addr v1, v0

    .line 16
    if-gez v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x1050306

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mCutOutHeight:I

    .line 32
    .line 33
    if-eq v0, v1, :cond_2

    .line 34
    .line 35
    iput v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mCutOutHeight:I

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->updateResources()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mCutOutHeight:I

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mCutOutHeight:I

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->updateResources()V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 68
    .line 69
    .line 70
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mIsDragging:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mIsMultiTouch:Z

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mIsMultiTouch:Z

    .line 26
    .line 27
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mIsMultiTouch:Z

    .line 30
    .line 31
    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsMultiTouch:Z

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 34
    .line 35
    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsMultiTouch:Z

    .line 36
    .line 37
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public final onMeasure(II)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveRows:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-le v0, v2, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mEditResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 13
    .line 14
    iget-object v4, v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    const/4 v4, -0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v4, v4, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 21
    .line 22
    check-cast v4, Lcom/android/systemui/qs/PagedTileLayout;

    .line 23
    .line 24
    iget-object v5, v4, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    move v4, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v4, v4, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/android/systemui/qs/TileLayout;

    .line 41
    .line 42
    iget v4, v4, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 43
    .line 44
    :goto_0
    iget-object v0, v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQsTileColumn(Landroid/content/Context;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-gez v4, :cond_2

    .line 51
    .line 52
    move v4, v0

    .line 53
    :cond_2
    iput v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveColumns:I

    .line 54
    .line 55
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mEditResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 56
    .line 57
    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->isCurrentTopEdit:Z

    .line 58
    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableColumns:I

    .line 62
    .line 63
    iget v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveColumns:I

    .line 64
    .line 65
    if-ge v0, v3, :cond_4

    .line 66
    .line 67
    iput v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableColumns:I

    .line 68
    .line 69
    :cond_4
    const-class v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const v4, 0x7f070bc3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iget-boolean v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveShowLabel:Z

    .line 89
    .line 90
    if-eqz v5, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    const v6, 0x7f070bc5

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    goto :goto_1

    .line 104
    :cond_5
    move v5, v1

    .line 105
    :goto_1
    add-int/2addr v3, v5

    .line 106
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    const v6, 0x7f070ba3

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    div-int/lit8 v5, v5, 0x3

    .line 118
    .line 119
    add-int/2addr v5, v3

    .line 120
    iget v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveRows:I

    .line 121
    .line 122
    mul-int/2addr v5, v3

    .line 123
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 124
    .line 125
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    iget-object v7, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mContext:Landroid/content/Context;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-static {v7}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getLabelHeight(Landroid/content/Context;)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    add-int/2addr v0, v6

    .line 147
    iget v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableRows:I

    .line 148
    .line 149
    mul-int/2addr v0, v6

    .line 150
    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 151
    .line 152
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-le v5, v3, :cond_6

    .line 157
    .line 158
    move v3, v2

    .line 159
    goto :goto_2

    .line 160
    :cond_6
    move v3, v1

    .line 161
    :goto_2
    if-le v0, v6, :cond_7

    .line 162
    .line 163
    move v0, v2

    .line 164
    goto :goto_3

    .line 165
    :cond_7
    move v0, v1

    .line 166
    :goto_3
    if-nez v3, :cond_8

    .line 167
    .line 168
    if-eqz v0, :cond_d

    .line 169
    .line 170
    :cond_8
    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableRows:I

    .line 171
    .line 172
    const/4 v3, 0x2

    .line 173
    if-lt v0, v3, :cond_b

    .line 174
    .line 175
    :goto_4
    if-le v0, v2, :cond_a

    .line 176
    .line 177
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mContext:Landroid/content/Context;

    .line 186
    .line 187
    invoke-static {v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getLabelHeight(Landroid/content/Context;)I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    add-int/2addr v3, v1

    .line 192
    mul-int/2addr v3, v0

    .line 193
    if-lt v6, v3, :cond_9

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_9
    add-int/lit8 v0, v0, -0x1

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_a
    :goto_5
    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableRows:I

    .line 200
    .line 201
    int-to-float v0, v0

    .line 202
    iput v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableWeight:F

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_b
    if-ne v0, v2, :cond_d

    .line 206
    .line 207
    const v0, 0x7f0a0860

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    const/16 v3, 0x8

    .line 219
    .line 220
    if-eq v2, v3, :cond_c

    .line 221
    .line 222
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    const v0, 0x7f0a0844

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const v1, 0x7f080d82

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 247
    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_c
    const v0, 0x7f0a0850

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 258
    .line 259
    .line 260
    :cond_d
    :goto_6
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->updateResources()V

    .line 261
    .line 262
    .line 263
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 264
    .line 265
    .line 266
    return-void
.end method

.method public final updateResources()V
    .locals 3

    .line 1
    const v0, 0x7f0a0841

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 15
    .line 16
    iget v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveWeight:F

    .line 17
    .line 18
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 24
    .line 25
    iget v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveRows:I

    .line 26
    .line 27
    iget v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveColumns:I

    .line 28
    .line 29
    iput v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    .line 30
    .line 31
    iput v2, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    .line 32
    .line 33
    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveShowLabel:Z

    .line 34
    .line 35
    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mShowLabel:Z

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->updateResources()Z

    .line 38
    .line 39
    .line 40
    const v0, 0x7f0a0844

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/LinearLayout;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 54
    .line 55
    iget v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableWeight:F

    .line 56
    .line 57
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 63
    .line 64
    iget v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableRows:I

    .line 65
    .line 66
    iget p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableColumns:I

    .line 67
    .line 68
    iput v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    .line 69
    .line 70
    iput p0, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->updateResources()Z

    .line 73
    .line 74
    .line 75
    return-void
.end method
