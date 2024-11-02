.class public final Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
.super Lcom/google/android/material/navigation/NavigationBarMenuView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public activeItemMaxWidth:I

.field public final activeItemMinWidth:I

.field public final inactiveItemMaxWidth:I

.field public final inactiveItemMinWidth:I

.field public itemHorizontalTranslationEnabled:Z

.field public mHasIcon:Z

.field public mWidthPercent:F

.field public tempChildWidths:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 5
    .line 6
    const/4 v0, -0x2

    .line 7
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x11

    .line 11
    .line 12
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Landroid/util/TypedValue;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 24
    .line 25
    .line 26
    const v1, 0x7f070f78

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->mWidthPercent:F

    .line 38
    .line 39
    const v0, 0x7f070f6c

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    .line 47
    .line 48
    const v0, 0x7f070f6d

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 66
    .line 67
    int-to-float v0, v0

    .line 68
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->mWidthPercent:F

    .line 69
    .line 70
    mul-float/2addr v0, v1

    .line 71
    float-to-int v0, v0

    .line 72
    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 73
    .line 74
    const v0, 0x7f070f61

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 82
    .line 83
    const v0, 0x7f070f67

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 87
    .line 88
    .line 89
    const/4 p1, 0x5

    .line 90
    new-array p1, p1, [I

    .line 91
    .line 92
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 93
    .line 94
    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mUseItemPool:Z

    .line 96
    .line 97
    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sub-int/2addr p4, p2

    .line 6
    sub-int/2addr p5, p3

    .line 7
    iget-boolean p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->mHasIcon:Z

    .line 8
    .line 9
    const/4 p3, 0x0

    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget p2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    .line 13
    .line 14
    const/4 v0, 0x5

    .line 15
    if-ne p2, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f070f68

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const v0, 0x7f070f69

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move p2, p3

    .line 42
    :goto_0
    move v0, p3

    .line 43
    move v1, v0

    .line 44
    :goto_1
    if-ge v0, p1, :cond_4

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/16 v4, 0x8

    .line 55
    .line 56
    if-ne v3, v4, :cond_2

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_2
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 60
    .line 61
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const/4 v4, 0x1

    .line 66
    if-ne v3, v4, :cond_3

    .line 67
    .line 68
    sub-int v3, p4, v1

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    sub-int v4, v3, v4

    .line 75
    .line 76
    add-int/2addr v4, p2

    .line 77
    sub-int/2addr v3, p2

    .line 78
    invoke-virtual {v2, v4, p3, v3, p5}, Landroid/view/View;->layout(IIII)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    add-int v3, v1, p2

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    add-int/2addr v4, v1

    .line 89
    sub-int/2addr v4, p2

    .line 90
    invoke-virtual {v2, v3, p3, v4, p5}, Landroid/view/View;->layout(IIII)V

    .line 91
    .line 92
    .line 93
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    add-int/2addr v1, v2

    .line 98
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 102
    .line 103
    if-eqz p1, :cond_6

    .line 104
    .line 105
    array-length p2, p1

    .line 106
    :goto_4
    if-ge p3, p2, :cond_6

    .line 107
    .line 108
    aget-object p4, p1, p3

    .line 109
    .line 110
    if-nez p4, :cond_5

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_5
    invoke-virtual {p0, p4}, Lcom/google/android/material/navigation/NavigationBarMenuView;->updateBadge(Lcom/google/android/material/navigation/NavigationBarItemView;)V

    .line 114
    .line 115
    .line 116
    add-int/lit8 p3, p3, 0x1

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_6
    :goto_5
    return-void
.end method

.method public final onMeasure(II)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 15
    .line 16
    div-float/2addr v1, v0

    .line 17
    const v0, 0x44138000    # 590.0f

    .line 18
    .line 19
    .line 20
    cmpg-float v0, v1, v0

    .line 21
    .line 22
    if-gez v0, :cond_0

    .line 23
    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    .line 26
    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->mWidthPercent:F

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/high16 v0, 0x3f400000    # 0.75f

    .line 30
    .line 31
    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->mWidthPercent:F

    .line 32
    .line 33
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 42
    .line 43
    int-to-float v0, v0

    .line 44
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->mWidthPercent:F

    .line 45
    .line 46
    mul-float/2addr v0, v1

    .line 47
    float-to-int v0, v0

    .line 48
    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 49
    .line 50
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    int-to-float p1, p1

    .line 55
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->mWidthPercent:F

    .line 56
    .line 57
    mul-float/2addr p1, v0

    .line 58
    float-to-int p1, p1

    .line 59
    const/4 v0, 0x0

    .line 60
    move v1, v0

    .line 61
    move v2, v1

    .line 62
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-ge v1, v3, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_1

    .line 77
    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    new-array v3, v1, [I

    .line 88
    .line 89
    iput-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 90
    .line 91
    iget v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewType:I

    .line 92
    .line 93
    const/4 v4, 0x3

    .line 94
    const/4 v5, 0x1

    .line 95
    if-eq v3, v4, :cond_3

    .line 96
    .line 97
    move v3, v5

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    move v3, v0

    .line 100
    :goto_2
    iput-boolean v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->mHasIcon:Z

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iget-boolean v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->mHasIcon:Z

    .line 107
    .line 108
    if-eqz v4, :cond_4

    .line 109
    .line 110
    const v4, 0x7f070f67

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    const v4, 0x7f070f75

    .line 115
    .line 116
    .line 117
    :goto_3
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 118
    .line 119
    .line 120
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    const/high16 v4, 0x40000000    # 2.0f

    .line 125
    .line 126
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    iget v7, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 131
    .line 132
    if-nez v7, :cond_5

    .line 133
    .line 134
    move v7, v5

    .line 135
    goto :goto_4

    .line 136
    :cond_5
    move v7, v0

    .line 137
    :goto_4
    const/16 v8, 0x8

    .line 138
    .line 139
    if-eqz v7, :cond_c

    .line 140
    .line 141
    iget-boolean v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    .line 142
    .line 143
    if-eqz v7, :cond_c

    .line 144
    .line 145
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 146
    .line 147
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iget v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 152
    .line 153
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    if-eq v9, v8, :cond_6

    .line 158
    .line 159
    iget v9, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 160
    .line 161
    const/high16 v10, -0x80000000

    .line 162
    .line 163
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    invoke-virtual {v2, v9, v6}, Landroid/view/View;->measure(II)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eq v2, v8, :cond_7

    .line 183
    .line 184
    move v2, v5

    .line 185
    goto :goto_5

    .line 186
    :cond_7
    move v2, v0

    .line 187
    :goto_5
    sub-int v2, v1, v2

    .line 188
    .line 189
    iget v9, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    .line 190
    .line 191
    mul-int/2addr v9, v2

    .line 192
    sub-int v9, p1, v9

    .line 193
    .line 194
    iget v10, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 195
    .line 196
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    sub-int/2addr p1, v7

    .line 205
    if-nez v2, :cond_8

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_8
    move v5, v2

    .line 209
    :goto_6
    div-int v5, p1, v5

    .line 210
    .line 211
    iget v9, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    .line 212
    .line 213
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    mul-int/2addr v2, v5

    .line 218
    sub-int/2addr p1, v2

    .line 219
    move v2, v0

    .line 220
    :goto_7
    if-ge v2, v1, :cond_11

    .line 221
    .line 222
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    if-eq v9, v8, :cond_a

    .line 231
    .line 232
    iget-object v9, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 233
    .line 234
    iget v10, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 235
    .line 236
    if-ne v2, v10, :cond_9

    .line 237
    .line 238
    move v10, v7

    .line 239
    goto :goto_8

    .line 240
    :cond_9
    move v10, v5

    .line 241
    :goto_8
    aput v10, v9, v2

    .line 242
    .line 243
    if-lez p1, :cond_b

    .line 244
    .line 245
    add-int/lit8 v10, v10, 0x1

    .line 246
    .line 247
    aput v10, v9, v2

    .line 248
    .line 249
    add-int/lit8 p1, p1, -0x1

    .line 250
    .line 251
    goto :goto_9

    .line 252
    :cond_a
    iget-object v9, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 253
    .line 254
    aput v0, v9, v2

    .line 255
    .line 256
    :cond_b
    :goto_9
    add-int/lit8 v2, v2, 0x1

    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_c
    if-nez v2, :cond_d

    .line 260
    .line 261
    goto :goto_a

    .line 262
    :cond_d
    move v5, v2

    .line 263
    :goto_a
    div-int v5, p1, v5

    .line 264
    .line 265
    const/4 v7, 0x2

    .line 266
    if-ne v2, v7, :cond_e

    .line 267
    .line 268
    goto :goto_b

    .line 269
    :cond_e
    iget v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 270
    .line 271
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    :goto_b
    mul-int/2addr v2, v5

    .line 276
    sub-int/2addr p1, v2

    .line 277
    move v2, v0

    .line 278
    :goto_c
    if-ge v2, v1, :cond_11

    .line 279
    .line 280
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 285
    .line 286
    .line 287
    move-result v7

    .line 288
    if-eq v7, v8, :cond_f

    .line 289
    .line 290
    iget-object v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 291
    .line 292
    aput v5, v7, v2

    .line 293
    .line 294
    if-lez p1, :cond_10

    .line 295
    .line 296
    add-int/lit8 v9, v5, 0x1

    .line 297
    .line 298
    aput v9, v7, v2

    .line 299
    .line 300
    add-int/lit8 p1, p1, -0x1

    .line 301
    .line 302
    goto :goto_d

    .line 303
    :cond_f
    iget-object v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 304
    .line 305
    aput v0, v7, v2

    .line 306
    .line 307
    :cond_10
    :goto_d
    add-int/lit8 v2, v2, 0x1

    .line 308
    .line 309
    goto :goto_c

    .line 310
    :cond_11
    move p1, v0

    .line 311
    move v2, p1

    .line 312
    :goto_e
    if-ge p1, v1, :cond_14

    .line 313
    .line 314
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    if-eqz v5, :cond_13

    .line 319
    .line 320
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 321
    .line 322
    .line 323
    move-result v7

    .line 324
    if-ne v7, v8, :cond_12

    .line 325
    .line 326
    goto :goto_f

    .line 327
    :cond_12
    iget-object v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:[I

    .line 328
    .line 329
    aget v7, v7, p1

    .line 330
    .line 331
    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    invoke-virtual {v5, v7, v6}, Landroid/view/View;->measure(II)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 343
    .line 344
    .line 345
    move-result v9

    .line 346
    iput v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 347
    .line 348
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    add-int/2addr v2, v5

    .line 353
    :cond_13
    :goto_f
    add-int/lit8 p1, p1, 0x1

    .line 354
    .line 355
    goto :goto_e

    .line 356
    :cond_14
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    invoke-static {v2, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 361
    .line 362
    .line 363
    move-result p1

    .line 364
    invoke-static {v3, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 365
    .line 366
    .line 367
    move-result p2

    .line 368
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 369
    .line 370
    .line 371
    return-void
.end method
