.class public final Lcom/android/systemui/statusbar/KshView;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mA11yManager:Landroid/view/accessibility/AccessibilityManager;

.field public mContext:Landroid/content/Context;

.field public final mForceScroll:Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;

.field public final mHandler:Landroid/os/Handler;

.field public mHardKeyScrolled:Z

.field public final mHorizontalScrollListener:Lcom/android/systemui/statusbar/KshView$1;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mKeyboardShortcutsDialog:Landroid/app/Dialog;

.field public mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

.field public mLastPosition:I

.field public mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public mMaxColumn:I

.field public mMoveSelectorX:F

.field public mNeedForceScroll:Z

.field public mPosition:I

.field public final mPresenter:Lcom/android/systemui/statusbar/KshPresenter;

.field public final mResources:Landroid/content/res/Resources;

.field public mRightScrolled:Z

.field public final mSelectorMoveRange:F

.field public mSelectorView:Landroid/view/View;

.field public mTabKeyIn:Z

.field public mViewHeight:I

.field public mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/KshPresenter;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mForceScroll:Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    new-instance v0, Lcom/android/systemui/statusbar/KshView$1;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KshView$1;-><init>(Lcom/android/systemui/statusbar/KshView;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mHorizontalScrollListener:Lcom/android/systemui/statusbar/KshView$1;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/android/systemui/statusbar/KshView;->mPresenter:Lcom/android/systemui/statusbar/KshPresenter;

    .line 33
    .line 34
    const-string p2, "layout_inflater"

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/view/LayoutInflater;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mResources:Landroid/content/res/Resources;

    .line 51
    .line 52
    const p2, 0x7f070581

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, p0, Lcom/android/systemui/statusbar/KshView;->mSelectorMoveRange:F

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    const-string p2, "accessibility"

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public getKshViewAdapter()Lcom/android/systemui/statusbar/KshViewAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLabel(ILjava/util/List;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x2

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const p1, 0x7f130a31

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const p1, 0x7f130a30

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Landroid/view/KeyboardShortcutGroup;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/KeyboardShortcutGroup;->getLabel()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public final isRTL()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView;->mResources:Landroid/content/res/Resources;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final moveSelector(I)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/KshView;->mLastPosition:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sub-int/2addr v0, p1

    .line 7
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    .line 12
    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KshViewAdapter;->getItemCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget v2, p0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    .line 23
    .line 24
    sub-int/2addr v1, v2

    .line 25
    if-le p1, v1, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    move v1, p1

    .line 29
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/KshView;->mLastPosition:I

    .line 30
    .line 31
    if-ne v1, v3, :cond_3

    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    sub-int/2addr v0, v2

    .line 35
    const/4 v2, 0x1

    .line 36
    add-int/2addr v0, v2

    .line 37
    const/4 v4, 0x0

    .line 38
    if-le v1, v3, :cond_4

    .line 39
    .line 40
    move v1, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_4
    move v1, v4

    .line 43
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KshView;->isRTL()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    .line 52
    .line 53
    xor-int/2addr v1, v2

    .line 54
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    .line 55
    .line 56
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    .line 57
    .line 58
    iget v3, p0, Lcom/android/systemui/statusbar/KshView;->mSelectorMoveRange:F

    .line 59
    .line 60
    if-eqz v1, :cond_6

    .line 61
    .line 62
    iget v1, p0, Lcom/android/systemui/statusbar/KshView;->mMoveSelectorX:F

    .line 63
    .line 64
    int-to-float v0, v0

    .line 65
    mul-float/2addr v3, v0

    .line 66
    add-float/2addr v3, v1

    .line 67
    iput v3, p0, Lcom/android/systemui/statusbar/KshView;->mMoveSelectorX:F

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/KshView;->mMoveSelectorX:F

    .line 71
    .line 72
    int-to-float v0, v0

    .line 73
    mul-float/2addr v3, v0

    .line 74
    sub-float/2addr v1, v3

    .line 75
    iput v1, p0, Lcom/android/systemui/statusbar/KshView;->mMoveSelectorX:F

    .line 76
    .line 77
    :goto_2
    iput p1, p0, Lcom/android/systemui/statusbar/KshView;->mLastPosition:I

    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshView;->mSelectorView:Landroid/view/View;

    .line 80
    .line 81
    new-array v0, v2, [F

    .line 82
    .line 83
    iget p0, p0, Lcom/android/systemui/statusbar/KshView;->mMoveSelectorX:F

    .line 84
    .line 85
    aput p0, v0, v4

    .line 86
    .line 87
    const-string/jumbo p0, "translationX"

    .line 88
    .line 89
    .line 90
    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-wide/16 v0, 0xfa

    .line 95
    .line 96
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final showKshDialog(Ljava/util/List;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, v0, Lcom/android/systemui/statusbar/KshView;->mInflater:Landroid/view/LayoutInflater;

    .line 13
    .line 14
    const v4, 0x7f0d0305

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    new-instance v6, Landroid/util/TypedValue;

    .line 23
    .line 24
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v7, v0, Lcom/android/systemui/statusbar/KshView;->mResources:Landroid/content/res/Resources;

    .line 28
    .line 29
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 34
    .line 35
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 40
    .line 41
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    .line 46
    .line 47
    const/high16 v11, 0x44160000    # 600.0f

    .line 48
    .line 49
    mul-float/2addr v10, v11

    .line 50
    float-to-int v10, v10

    .line 51
    const v11, 0x7f070573

    .line 52
    .line 53
    .line 54
    const/4 v12, 0x1

    .line 55
    invoke-virtual {v7, v11, v6, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 56
    .line 57
    .line 58
    int-to-float v8, v8

    .line 59
    invoke-virtual {v6, v8, v8}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    float-to-int v8, v8

    .line 64
    iput v8, v0, Lcom/android/systemui/statusbar/KshView;->mViewWidth:I

    .line 65
    .line 66
    const v8, 0x7f070572

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7, v8, v6, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 70
    .line 71
    .line 72
    int-to-float v8, v9

    .line 73
    invoke-virtual {v6, v8, v8}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    float-to-int v6, v6

    .line 78
    iput v6, v0, Lcom/android/systemui/statusbar/KshView;->mViewHeight:I

    .line 79
    .line 80
    const/4 v8, -0x1

    .line 81
    if-lt v6, v9, :cond_0

    .line 82
    .line 83
    iput v8, v0, Lcom/android/systemui/statusbar/KshView;->mViewHeight:I

    .line 84
    .line 85
    :cond_0
    iget v6, v0, Lcom/android/systemui/statusbar/KshView;->mViewHeight:I

    .line 86
    .line 87
    if-le v6, v10, :cond_1

    .line 88
    .line 89
    iput v10, v0, Lcom/android/systemui/statusbar/KshView;->mViewHeight:I

    .line 90
    .line 91
    :cond_1
    const v6, 0x7f0a056c

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    check-cast v6, Landroid/widget/LinearLayout;

    .line 99
    .line 100
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 101
    .line 102
    iget v10, v0, Lcom/android/systemui/statusbar/KshView;->mViewWidth:I

    .line 103
    .line 104
    iget v11, v0, Lcom/android/systemui/statusbar/KshView;->mViewHeight:I

    .line 105
    .line 106
    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    const v9, 0x7f0b0054

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    iput v9, v0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    .line 120
    .line 121
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    iget v10, v0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    .line 126
    .line 127
    if-ge v9, v10, :cond_2

    .line 128
    .line 129
    iput v9, v0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    .line 130
    .line 131
    :cond_2
    const v10, 0x7f0a0568

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    .line 139
    .line 140
    iput-object v10, v0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 141
    .line 142
    new-instance v10, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 143
    .line 144
    iget-object v11, v0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    const/4 v13, 0x0

    .line 147
    invoke-direct {v10, v11, v13, v13}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 148
    .line 149
    .line 150
    iput-object v10, v0, Lcom/android/systemui/statusbar/KshView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 151
    .line 152
    iget-object v11, v0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 153
    .line 154
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 155
    .line 156
    .line 157
    new-instance v10, Lcom/android/systemui/statusbar/KshViewAdapter;

    .line 158
    .line 159
    iget-object v11, v0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    invoke-direct {v10, v11}, Lcom/android/systemui/statusbar/KshViewAdapter;-><init>(Landroid/content/Context;)V

    .line 162
    .line 163
    .line 164
    iput-object v10, v0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    .line 165
    .line 166
    iget v11, v0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    .line 167
    .line 168
    iput v11, v10, Lcom/android/systemui/statusbar/KshViewAdapter;->mMaxColumn:I

    .line 169
    .line 170
    iget-object v11, v0, Lcom/android/systemui/statusbar/KshView;->mPresenter:Lcom/android/systemui/statusbar/KshPresenter;

    .line 171
    .line 172
    iget-object v11, v11, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 173
    .line 174
    iput-object v1, v10, Lcom/android/systemui/statusbar/KshViewAdapter;->mData:Ljava/util/List;

    .line 175
    .line 176
    iput-object v11, v10, Lcom/android/systemui/statusbar/KshViewAdapter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 177
    .line 178
    iget-object v11, v0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 179
    .line 180
    invoke-virtual {v11, v10}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 181
    .line 182
    .line 183
    const/4 v10, 0x0

    .line 184
    iput v10, v0, Lcom/android/systemui/statusbar/KshView;->mMoveSelectorX:F

    .line 185
    .line 186
    iput v13, v0, Lcom/android/systemui/statusbar/KshView;->mLastPosition:I

    .line 187
    .line 188
    iput v13, v0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    .line 189
    .line 190
    const v10, 0x7f0a04c7

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    check-cast v10, Landroid/widget/FrameLayout;

    .line 198
    .line 199
    iget v11, v0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    .line 200
    .line 201
    iget-object v14, v0, Lcom/android/systemui/statusbar/KshView;->mHorizontalScrollListener:Lcom/android/systemui/statusbar/KshView$1;

    .line 202
    .line 203
    if-le v9, v11, :cond_4

    .line 204
    .line 205
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    const v11, 0x7f0a056f

    .line 210
    .line 211
    .line 212
    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v11

    .line 216
    check-cast v11, Landroid/widget/LinearLayout;

    .line 217
    .line 218
    move v15, v13

    .line 219
    :goto_0
    if-ge v15, v9, :cond_3

    .line 220
    .line 221
    const v12, 0x7f0d0306

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v12, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    check-cast v12, Landroid/widget/TextView;

    .line 229
    .line 230
    invoke-virtual {v0, v15, v1}, Lcom/android/systemui/statusbar/KshView;->getLabel(ILjava/util/List;)Ljava/lang/CharSequence;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    new-instance v8, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v5, ", "

    .line 253
    .line 254
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget-object v5, v0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    .line 258
    .line 259
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    const v13, 0x7f130775

    .line 264
    .line 265
    .line 266
    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 278
    .line 279
    .line 280
    new-instance v5, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda3;

    .line 281
    .line 282
    invoke-direct {v5, v0, v1}, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/KshView;Ljava/util/List;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v11, v12, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 289
    .line 290
    .line 291
    add-int/lit8 v15, v15, 0x1

    .line 292
    .line 293
    const/4 v5, 0x0

    .line 294
    const/4 v8, -0x1

    .line 295
    const/4 v12, 0x1

    .line 296
    const/4 v13, 0x0

    .line 297
    goto :goto_0

    .line 298
    :cond_3
    move v5, v13

    .line 299
    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    .line 301
    .line 302
    const v1, 0x7f0a0571

    .line 303
    .line 304
    .line 305
    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    iput-object v1, v0, Lcom/android/systemui/statusbar/KshView;->mSelectorView:Landroid/view/View;

    .line 310
    .line 311
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 312
    .line 313
    iget v5, v0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    .line 314
    .line 315
    const v8, 0x7f070582

    .line 316
    .line 317
    .line 318
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 319
    .line 320
    .line 321
    move-result v8

    .line 322
    mul-int/2addr v8, v5

    .line 323
    const/4 v5, -0x1

    .line 324
    invoke-direct {v3, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    .line 329
    .line 330
    iget-object v1, v0, Lcom/android/systemui/statusbar/KshView;->mSelectorView:Landroid/view/View;

    .line 331
    .line 332
    const/4 v3, 0x0

    .line 333
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 334
    .line 335
    .line 336
    const v1, 0x7f070580

    .line 337
    .line 338
    .line 339
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    invoke-virtual {v6, v3, v3, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 344
    .line 345
    .line 346
    iget-object v1, v0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 347
    .line 348
    invoke-virtual {v1, v14}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 349
    .line 350
    .line 351
    goto :goto_1

    .line 352
    :cond_4
    move v3, v13

    .line 353
    const/16 v1, 0x8

    .line 354
    .line 355
    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 356
    .line 357
    .line 358
    const v1, 0x7f07057f

    .line 359
    .line 360
    .line 361
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    invoke-virtual {v6, v3, v3, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 366
    .line 367
    .line 368
    iget-object v1, v0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 369
    .line 370
    invoke-virtual {v1, v14}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 371
    .line 372
    .line 373
    :goto_1
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    iput-object v1, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 381
    .line 382
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    const/16 v2, 0x7d8

    .line 387
    .line 388
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 389
    .line 390
    .line 391
    iget-object v2, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 392
    .line 393
    const/4 v3, 0x1

    .line 394
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 395
    .line 396
    .line 397
    iget-object v2, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 398
    .line 399
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    iget-object v3, v0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    .line 407
    .line 408
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    const v4, 0x7f080b5c

    .line 413
    .line 414
    .line 415
    invoke-virtual {v7, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    const-string v3, "KeyboardShortcutsDialog"

    .line 427
    .line 428
    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 429
    .line 430
    .line 431
    iget v3, v0, Lcom/android/systemui/statusbar/KshView;->mViewWidth:I

    .line 432
    .line 433
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 434
    .line 435
    iget v3, v0, Lcom/android/systemui/statusbar/KshView;->mViewHeight:I

    .line 436
    .line 437
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 438
    .line 439
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 440
    .line 441
    .line 442
    iget-object v1, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    .line 443
    .line 444
    new-instance v2, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda2;

    .line 445
    .line 446
    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KshView;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 450
    .line 451
    .line 452
    return-void
.end method
